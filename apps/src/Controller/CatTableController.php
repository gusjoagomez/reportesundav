<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\CatTable;
use App\Entity\CatBases;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\CatTableType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\DBAL\DriverManager;
use Doctrine\DBAL\Connection;
use App\Controller\Utilgenerator;
//use App\Entity\SecCompany;

class CatTableController extends AbstractController
{
    /**
     * @Route("/cattable/{id}/index", name="cattable_index")
     */
    public function index(CatBases $base,ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatTable::class)->findAll();
                
        return $this->render('cattable/index.html.twig', [
            'list' => $list,
            'base' => $base,
        ]);
    }
    

    /**
     * @Route("/cattable/{id}/list", name="cattable_list")
     */
    public function list(CatBases $base,ManagerRegistry $doctrine): Response
    {
        $fields=" c.id,  c.schemaname,  c.tablename";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatTable::class)
               ->createQueryBuilder('c')
               ->select($fields)
               ->where( "c.base = :bb")
               ->setParameter('bb',$base)
               ->getQuery()
               ->getResult(\Doctrine\ORM\Query::HYDRATE_ARRAY)
            ;
        $data = array("draw"=> 1, "recordsTotal"=>count($list), "recordsFiltered"=> count($list) );
        $data["data"] = $list;
        
        return new Response(json_encode($data));
    }
    
    
    /**
     * @Route("/cattable/new", name="cattable_new")
     */
    public function new(CatBases $base,Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new CatTable();
        $form = $this->createForm(CatTableType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro CatTable');

            return $this->redirectToRoute('cattable_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('cattable/form.html.twig', [
            'titleform'=>'Nueva Tabla',
            'form' => $form,
            'base' => $base,
        ]);
    }
    
    
    /**
     * @Route("/cattable/{id}/edit", name="cattable_edit")
     */    
    public function edit(Request $request,CatTable $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatTableType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('cattable/form.html.twig', [
            'titleform'=>'Editar Tabla',
            'form' => $form,
            'base' => $item->getBase(),
        ]);
    }


    /**
     * @Route("/cattable/{id}/delete", name="cattable_delete")
     */    
    public function delete(Request $request,CatTable $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatTableType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro Table');
            return $this->redirectToRoute('cattable_index');
        }
        return $this->renderForm('cattable/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }




    /**
     * @Route("/cattable/{id}/update", name="cattable_update")
     */    
    public function update(Request $request,Connection $app, CatBases $base, EntityManagerInterface $entityManager): Response
    {
        $conn = Utilgenerator::getCustomConn($base);
        if($conn){
            $infoDB = $this->getInfodb($entityManager, $app, $conn,$base);
            //echo "<pre>";print_r($infoDB );echo "</pre>";die();
        }
        return $this->redirectToRoute('cattable_index',['id'=>$base->getId()]);
    }


    function getInfodb(EntityManagerInterface $entityManager, Connection $app, Connection $conn, CatBases $base)
    {
        $relations = array();
        $infodb=array();

        $repTable = $entityManager->getRepository(CatTable::class);

        $schemasBase = $this->getSchemas($base);
        foreach($schemasBase as $schema)
        {
            $tables = Utilgenerator::getTables($conn,trim($schema)); 
            foreach ($tables as $k=>$table) 
            {
                $st = explode('.',$table);
                $schemaname = $st[0];
                $tablename = $st[1];
    
                $tbl = $repTable->findOneBy(['schemaname' => $schemaname, 'tablename' => $tablename ]);
                if ($tbl==null){
    
                    $tbl = new CatTable();
                    $tbl->setBase($base);
                    $tbl->setSchemaname($schemaname);
                    $tbl->setTablename($tablename);
    
                    $entityManager->persist($tbl);
                    $entityManager->flush();
                }

                $fk = Utilgenerator::getInfoFK($conn, $schemaname, $tablename);
                echo "<pre>"; print_r($fk); echo "</pre>";
            }
        }
        die();
        return $infodb;
    }

    public function getSchemas(CatBases $base){
        $list = explode(',',$base->getSchemas());
        return $list;
    }

    
}
