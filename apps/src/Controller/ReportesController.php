<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Reportes;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\Reportesdet;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use App\Controller\Datagrid;

//use App\Entity\SecCompany;

class ReportesController extends AbstractController
{    
    private $DIR_TMP_REPORTES;
    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->DIR_TMP_REPORTES = __DIR__.'/../../public/';
        $this->entityManager = $entityManager;
        //parent::__construct();
    }

    /**
     * @Route("/reportes", name="reportes_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(Reportes::class)->findAll();
                
        return $this->render('reportes/index.html.twig', [
            'list' => $list,
        ]);
    }


    /**
     * @Route("/reportes/list", name="reportes_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.active,  c.description,  c.id,  c.name,  c.orderlist,  c.params,  c.txtquery";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(Reportes::class)
               ->createQueryBuilder('c')
               ->select($fields)
               ->where("c.active=1")
               ->getQuery()
               ->getResult(\Doctrine\ORM\Query::HYDRATE_ARRAY)
            ;
        $data = array("draw"=> 1, "recordsTotal"=>count($list), "recordsFiltered"=> count($list) );
        $data["data"] = $list;
        
        return new Response(json_encode($data));
    }
    

    /**
     * @Route("/reportes/{id}/view", name="reportes_view")
     */
    public function view(Request $request,Reportes $reporteEntity, EntityManagerInterface $entityManager)
    {
        $userId=-1;
        //$user = $request->getSession()->get('user');
        
        
        
        $mensaje="";
        
        $fieldsAux = $this->container->get('serializer')->serialize($reporteEntity, 'json');   
        $reporte = json_decode($fieldsAux,true);

        
        $ret = $this->getFormFiltro($reporte);
        $form = $ret['form'];
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) 
        {

            $datosform = $_POST['form'];
            unset($datosform['_token']);

            $datareturn = $this->generateReport($reporte['id'],$reporte['txtquery'], $datosform );

            $this->view['filename']=$datareturn['filename'];

            //--- inserta detalle ---
            $detallerep = new Reportesdet();
            $detallerep->setCreatedby($userId);
            $detallerep->setCampos(json_encode($datareturn['campos']));
            $detallerep->setReporte($reporteEntity);
            $detallerep->setParams(json_encode($datosform));
            $detallerep->setFilename($datareturn['filename']);
            $detallerep->setSqltxt($datareturn['sql']);
            
            
             
            $entityManager->persist($detallerep);
            $entityManager->flush(); 

            $IDdetalle = $detallerep->getId();

            //---- GRILLA si hay campos----
            if ( (is_array($datareturn['campos'])) && (isset($datareturn['campos'])) )
            {
                
               $g = new Datagrid($this->entityManager,'g1', 100);
               $g->setQuery( $datareturn['sql']);
               $columns=array();
               foreach ($datareturn['campos'] as $k=>$v){
                  $columns[]=array('label'=>$v,'field'=>$v,'sort'=>false); 
               }
               $g->setColumns($columns);
               $this->view['grilla'] = $g->getDataRender();
            }             
            $mensaje="Cantidad de Registros del Reporte: ".$datareturn['canrecs'];

            $this->view['detalleid'] = $IDdetalle;
        }

        
        $this->view['mensaje'] = $mensaje;
        $this->view['entity'] = $reporte;
        $this->view['form'] = $form;
        $this->view['js'] = $ret['js'];
        $this->view['btnlabel'] = 'Ver reporte';
        $this->view['btnclass'] = '';

        return $this->renderForm('reportes/filtroform.twig', $this->view);
    }

    
    /**
     * @Route("/reportes/{id}/detalle", name="reportes_detalle")
     */
    function reportesdetallegrilla(Request $request, Reportesdet $detalle,  EntityManagerInterface $entityManager)
    {
       
        $id = $detalle->getId();

        $reporte = $detalle->getReporte();
                
        $campos = json_decode($detalle->getCampos());
        
        //--- arma la grilla ----
        $g = new Datagrid($entityManager,'gdetallerep', 100);
        $g->setQuery( $detalle->getSqltxt() );
        $columnas=array();
        foreach ($campos as $key => $value) {
            $columnas[]=array('label'=>$value,'field'=>$value,'sort'=>false);
        }
        $g->setColumns($columnas);
        $g->setActions( array() );
        //--- Fin armado la grilla ----


        $view['entity'] = $reporte;
        $view['grilla'] = $g->getDataRender();
        $view['reporte'] = $reporte;
        $view['detalle'] = $detalle;
        
        return $this->render('reportes/detalle_index.twig', $view);
    }

    
    function generateReport($ID,$sql,$data)
    {   
        foreach ($data as $k=>$v){
            $sql = str_replace(":{$k}", $v, $sql);
        }
        $cabecera="";
        $fecha = date('Y-m-d');
        $file = "reporteNro{$ID}_{$fecha}.csv";
        $fileDescarga = $this->DIR_TMP_REPORTES."rep/".$file;
        
        $records = $this->GetSQL($sql);
	$output = fopen($fileDescarga, "w");
        $flag = false; 
        $canrecs=0;
        foreach ($records as $row)
        {
            if(!$flag) {
                fputcsv($output, array_keys($row), ';', '"');
                $cabecera = array_keys($row);
                $flag = true;
            }

            foreach($row as $k=>$v)
            {
                $str = str_replace("\n", '', trim($v) );
                $str = str_replace("\r", '', $str);
                $row[$k]=$str;
            }
            fputcsv($output, $row, ';');
            $canrecs++;
        }

//	foreach ($records as $row) 
//        {
//            if(!$flag) { 
//                fputcsv($output, array_keys($row), '|', '"');
//                $flag = true; 
//            } 
//            fputcsv($output, $row, '|');
//        }

        fclose($output);
        return array('filename'=>$file, 'canrecs'=>$canrecs, 'campos'=>$cabecera, 'sql'=>$sql);
    }
    
    

    function getFormFiltro($reporte)
    {
        $inputs = '';
        $params =  $reporte['params'];

        $inputs = json_decode($params,true);

        //$inputsArr = json_decode($params,true);
        //        if(isset($inputsArr[0])){
        //          $inputs = $inputsArr[0];
        //        }

        $formbuilder = $this->createFormBuilder($reporte);
        $js='';

        foreach ($inputs as $v) 
        {
            $ret = $this->processParams($v);
            $opt = $ret['input'];
            $js .= $ret['js'];
            
            $tipo = $this->getTypeForm($opt['type']);
            $formbuilder->add($opt['name'],$tipo,$opt['extra']);
        }
        $form = $formbuilder->getForm();
        return array('form'=>$form,'js'=>$js);
    }


    function getTypeForm($t){

        switch ($t) {
            case 'text':
                return TextType::class;
            case 'number':
                return NumberType::class;
            case 'email':
                return EmailType::class;
            case 'choice':
                return ChoiceType::class;
                
                
        }
        
        return TextType::class;
    }
    

    function processParams($v)
    {        
        $js='';
        $ret['name']=$v['name'];
        
        if($v['type']=='datepicker')
        {
            $v['type']='text';
            $js='$( "#form_'.$v['name'].'" ).datepicker( {dateFormat: "yy-mm-dd"});'."\n";
        }
        $ret['type']=$v['type'];
        
        $ret['extra'] = $v; 
        unset($ret['extra']['name']);
        unset($ret['extra']['type']);
        
        if(isset($ret['extra']['choicetype']))
        {
            $ct = $ret['extra']['choicetype'];
            unset($ret['extra']['choicetype']);

            $cs = $ret['extra']['choicesource'];
            unset($ret['extra']['choicesource']);

            if($ct=='array'){
                $ret['extra']['choices'] = json_decode($cs);
            }
            if($ct=='sql'){
                $list = $this->GetSQL($cs);
                $listkv=array();
                foreach ($list as $vc){
                   $listkv[$vc['name']] = $vc['id'];
                }
                $ret['extra']['choices']=$listkv;
            }
        }

        return array('input'=>$ret,'js'=>$js);
    }
    

    
    
    public function GetSQL($sql): array
    {
        $conn = $this->entityManager->getConnection();
        $stmt = $conn->prepare($sql);
        $resultSet = $stmt->executeQuery([]);

        return $resultSet->fetchAllAssociative();
    }
    


}
