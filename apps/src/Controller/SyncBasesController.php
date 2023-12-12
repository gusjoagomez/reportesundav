<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SyncBases;
use App\Entity\SyncBasesTables;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SyncBasesType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;


class SyncBasesController extends AbstractController
{
    private $DIR_CONFIG_SYNC = __DIR__ . '/../../../bash/migrationschema/';

    /**
     * @Route("/syncbases", name="syncbases_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SyncBases::class)->findAll();
                
        return $this->render('syncbases/index.html.twig', ['list' => $list,]);
    }
    

    /**
     * @Route("/syncbases/list", name="syncbases_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        $fields="c.id, c.description,  c.active, c.fhost, c.thost";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SyncBases::class)
               ->createQueryBuilder('c')
               ->select($fields)
               ->getQuery()
               ->getResult(\Doctrine\ORM\Query::HYDRATE_ARRAY)
            ;
        $data = array("draw"=> 1, "recordsTotal"=>count($list), "recordsFiltered"=> count($list) );
        $data["data"] = $list;
        
        return new Response(json_encode($data));
    }
    
    
    /**
     * @Route("/syncbases/new", name="syncbases_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SyncBases();
        $form = $this->createForm(SyncBasesType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro');

            return $this->redirectToRoute('syncbases_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('syncbases/form.html.twig', [
            'titleform'=>'Nuevo Registro',
            'form' => $form,
            'archivoGenerado' => '',
        ]);
    }
    

    /**
     * @Route("/syncbases/{id}/edit", name="syncbases_edit")
     */    
    public function edit(Request $request,SyncBases $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SyncBasesType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            
            // Si pone NO activo, borra archivo
            if(!$item->isActive()){
                $this->borrarArchivoGenerado($item->getId());
            }
            
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        $archivoGenerado = $this->buscarArchivoGenerado($item->getId());

        return $this->renderForm('syncbases/form.html.twig', [
            'titleform'=>'Editar Registro',
            'form' => $form,
            'regsync' => $item,
            'archivoGenerado' => $archivoGenerado,
        ]);
    }


    /**
     * @Route("/syncbases/{id}/delete", name="syncbases_delete")
     */    
    public function delete(Request $request,SyncBases $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SyncBasesType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();

            $this->borrarArchivoGenerado($item->getId());

            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro');
            return $this->redirectToRoute('syncbases_index');
        }
        $archivoGenerado = $this->buscarArchivoGenerado($item->getId());

        return $this->renderForm('syncbases/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
            'regsync' => $item,
            'archivoGenerado' => $archivoGenerado,
        ]);
    }


    /**
     * @Route("/syncbases/{id}/genfile", name="syncbases_genfile")
     */
    public function genfile(Request $request,SyncBases $syncbase, EntityManagerInterface $entityManager): Response
    {

        $fields="c.fschema, c.tbase, c.tschema, c.ttable, c.active, c.fbase, c.ftable";
        $list = $entityManager->getRepository(SyncBasesTables::class)
               ->createQueryBuilder('c')
               ->select($fields)
               ->where('c.idSyncbase = :syncbase')
               ->setParameter('syncbase',$syncbase)
               ->getQuery()
               ->getResult(\Doctrine\ORM\Query::HYDRATE_ARRAY)
            ;

        $filename = $this->DIR_CONFIG_SYNC.$syncbase->getId()."_".str_replace(" ","",strtolower($syncbase->getDescription())).".mig";
        $content = $syncbase->getFuser().":".$syncbase->getFpasswd().":".$syncbase->getFhost().":".$syncbase->getFport()." ".
                   $syncbase->getTuser().":".$syncbase->getTpasswd().":".$syncbase->getThost().":".$syncbase->getTport()."\n";

        foreach($list as $table){
            $content .= $table['fbase'].".".$table['fschema'].".".$table['ftable']." ".
                        $table['tbase'].".".$table['tschema'].".".$table['ttable']."\n";
        }

        file_put_contents($filename,$content);

        $request->getSession()->getFlashBag()->add('message', 'Se Generó archivo para sincronizacion de tablas.');

        return $this->redirectToRoute('syncbases_edit', ['id'=>$syncbase->getId()], Response::HTTP_SEE_OTHER);

    }


    /**
     * @Route("/syncbases/listfiles", name="syncbases_listfiles")
     */
    public function listfiles(Request $request, EntityManagerInterface $entityManager): Response
    {
        $list = array();
        $files = scandir($this->DIR_CONFIG_SYNC);
        foreach( $files as $k=>$file) {
            if ( ($file!=".") && ($file!="..") ){
                $list[]= array("archivo"=>$file);
            }
        }
        
        $data = array("draw"=> 1, "recordsTotal"=>count($list), "recordsFiltered"=> count($list) );
        $data["data"] = array_values($list); ;
        
        return new Response(json_encode($data));
    }

    private function buscarArchivoGenerado($id){
        $filename="";
        $listaArchivos = glob($this->DIR_CONFIG_SYNC."{$id}_*.*");
        if (isset($listaArchivos[0])){
            $filename=basename($listaArchivos[0]);
        }
        return $filename;
    }
    
    private function borrarArchivoGenerado($id){
        $listaArchivos = glob($this->DIR_CONFIG_SYNC."{$id}_*.*");
        if (isset($listaArchivos[0])){
            unlink($listaArchivos[0]);
        }
    }


    
}
