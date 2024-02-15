<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\CatFields;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\CatFieldsType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\CatTable;
use Doctrine\DBAL\Connection;
use App\Controller\Utilgenerator;


class CatFieldsController extends AbstractController
{
    /**
     * @Route("/catfields/{id}/index", name="catfields_index")
     */
    public function index(CatTable $table,ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatFields::class)->findAll();
                
        return $this->render('catfields/index.html.twig', [
            'list' => $list,
            'table' => $table
        ]);
    }
    

    /**
     * @Route("/catfields/{id}/list", name="catfields_list")
     */
    public function list(CatTable $table, ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.id,  c.schemaname,  c.fieldname,  c.esnull,  c.ftable,  c.fkey,  c.labelhelp,  c.orderlist,  c.inlist,  c.tablename,  c.pk,  c.incrud,  c.typename,  c.label";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatFields::class)
               ->createQueryBuilder('c')
               ->select($fields)
               ->where('c.table = :table')
               ->setParameter('table',$table)
               ->getQuery()
               ->getResult(\Doctrine\ORM\Query::HYDRATE_ARRAY)
            ;
        $data = array("draw"=> 1, "recordsTotal"=>count($list), "recordsFiltered"=> count($list) );
        $data["data"] = $list;
        
        return new Response(json_encode($data));
    }
    
    
    /**
     * @Route("/catfields/{id}/new", name="catfields_new")
     */
    public function new(CatTable $table, Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new CatFields();
        $form = $this->createForm(CatFieldsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro CatFields');

            return $this->redirectToRoute('catfields_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('catfields/form.html.twig', [
            'titleform'=>'Nuevo Registro CatFields',
            'form' => $form,
            'table' => $table,
        ]);
    }
    
    
    /**
     * @Route("/catfields/{id}/edit", name="catfields_edit")
     */    
    public function edit(Request $request,CatFields $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatFieldsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('catfields/form.html.twig', [
            'titleform'=>'Editar Registro CatFields',
            'form' => $form,
            'table' => $item->getTable()
        ]);
    }


    /**
     * @Route("/catfields/{id}/delete", name="catfields_delete")
     */    
    public function delete(Request $request,CatFields $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatFieldsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro CatFields');
            return $this->redirectToRoute('catfields_index');
        }
        return $this->renderForm('catfields/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
            'table' => $item->getTable()
        ]);
    }

    /**
     * @Route("/catfields/{id}/update", name="catfields_update")
     */    
    public function update(Request $request,Connection $app, CatTable $table, EntityManagerInterface $entityManager): Response
    {
        $conn = Utilgenerator::getCustomConn($table->getBase());
        if($conn){
            $infoDB = $this->getInfoTable($entityManager, $app, $conn,$table);
        }
        return $this->redirectToRoute('catfields_index',['id'=>$table->getId()]);
    }


    /**
     * @Route("/catfields/{id}/relupdate", name="catfields_relupdate")
     */
    /*
    public function relupdate(Request $request,Connection $app, CatTable $table, EntityManagerInterface $entityManager): Response
    {
        $conn = Utilgenerator::getCustomConn($table->getBase());
        $schemaname = $table->getSchemaname();
        $tablename = $table->getTablename();

        $listaRel = Utilgenerator::getInfoFK($conn, $schemaname, $tablename);
        echo "<pre>";print_r($listaRel); echo "</pre>";die();

        return $this->redirectToRoute('catfields_index',['id'=>$table->getId()]);
    }
    */


    function getInfoTable(EntityManagerInterface $entityManager, Connection $app, Connection $conn, CatTable $table)
    {
        $relations = array();
        $infodb=array();

        $repFields = $entityManager->getRepository(CatFields::class);

        $schemaname = $table->getSchemaname();
        $tablename = $table->getTablename();
        $tblname = $schemaname.'.'.$tablename;

        $fks = Utilgenerator::getInfoFK($conn,  $schemaname, $tablename);
        foreach ($fks as $key => $value) {
            if(isset($fks['has'])){
                foreach ($fks['has'] as $kh=>$vh){
                    $fieldinfo[$kh]['fk']=$vh; 
                }
            }
        }

        //Trae los campos de la tabla
        $fields = Utilgenerator::getFields($conn, $tblname);
        
        foreach ($fields as $k=>$field) 
        {
            $existe = $repFields->findOneBy(['schemaname' => $schemaname, 'tablename' => $tablename, 'fieldname' => $field['name'] ]);
            if ($existe==null){
                $fld = new CatFields();
                $fld->setTable($table);
                $fld->setSchemaname($schemaname);
                $fld->setTablename($tablename);
                $fld->setFieldname($field['name']);
            }else{
                $fld = $existe;
            }

            $Ftable = "";
            $Fkey = "";
            if (isset($fieldinfo[$field['name']])){
                $Ftable = $fieldinfo[$field['name']]['fk']['t'];
                $Fkey = $fieldinfo[$field['name']]['fk']['c'];
            }
            $fld->setTypename($field['type']);
            $fld->setEsnull($field['null']);
            $fld->setPk($field['pri']);
            $fld->setFtable($Ftable);
            $fld->setFkey($Fkey);
            $fld->setLabel($field['column']);
            $fld->setLabelhelp($field['column']);
            $fld->setOrderlist($field['orderlist']);
            $fld->setInlist('1');
            $fld->setIncrud('1');

            $entityManager->persist($fld);
            $entityManager->flush();     
        }    

        return $infodb;
    }


    
}



            /*
            $dat = explode('.',$table);
            $schema=$dat[0];
            if($schema=='mapuche'){
                $fields = Utilgenerator::getFields($conn, $table);
                //---- Get InfoFK ----

                $dd = explode('.',$table);
                $schema = $dd[0];
                $infodb[$table]['fields']=$fields;
                if(isset($fks['oneToMany']))
                {
                    $infodb[$table]['relations']=$fks['oneToMany'];
                }
            } 
            */               
