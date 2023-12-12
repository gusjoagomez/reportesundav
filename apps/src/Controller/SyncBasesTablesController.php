<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SyncBasesTables;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SyncBasesTablesType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\SyncBases;

class SyncBasesTablesController extends AbstractController
{
    /**
     * @Route("/syncbasestables", name="syncbasestables_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SyncBasesTables::class)->findAll();
                
        return $this->render('syncbasestables/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/syncbasestables/{id}/list", name="syncbasestables_list")
     */
    public function list(SyncBases $syncbase,ManagerRegistry $doctrine): Response
    {
        $fields=" c.id,  c.fschema,  c.tbase,  c.tschema,  c.ttable,  c.active,   c.fbase,  c.ftable";
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SyncBasesTables::class)
               ->createQueryBuilder('c')
               ->select($fields)
               ->where('c.idSyncbase = :syncbase')
               ->setParameter('syncbase',$syncbase)
               ->getQuery()
               ->getResult(\Doctrine\ORM\Query::HYDRATE_ARRAY)
            ;
        $data = array("draw"=> 1, "recordsTotal"=>count($list), "recordsFiltered"=> count($list) );
        $data["data"] = $list;
        
        return new Response(json_encode($data));
    }
    
    
    /**
     * @Route("/syncbasestables/{id}/new", name="syncbasestables_new")
     */
    public function new(SyncBases $syncbase,Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SyncBasesTables();
        $form = $this->createForm(SyncBasesTablesType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            $item->setIdSyncbase($syncbase);
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro SyncBasesTables');

            return $this->redirectToRoute('syncbases_edit', ['id'=>$syncbase->getId()], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('syncbasestables/form.html.twig', [
            'titleform'=>'Nuevo elemento a sincronizar',
            'form' => $form,
            'regsync' => $syncbase
        ]);
    }
    
    
    /**
     * @Route("/syncbasestables/{id}/edit", name="syncbasestables_edit")
     */    
    public function edit(Request $request,SyncBasesTables $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SyncBasesTablesType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('syncbasestables/form.html.twig', [
            'titleform'=>'Editar elemento a sincronizar',
            'form' => $form,
            'regsync' => $item->getIdSyncbase(),
        ]);
    }


    /**
     * @Route("/syncbasestables/{id}/delete", name="syncbasestables_delete")
     */    
    public function delete(Request $request,SyncBasesTables $item, EntityManagerInterface $entityManager): Response
    {
        
        $IdReditect = $item->getIdSyncbase()->getId();
        $form = $this->createForm(SyncBasesTablesType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro ');
            return $this->redirectToRoute('syncbases_edit', ['id'=>$IdReditect]);
        }
        return $this->renderForm('syncbasestables/form.html.twig', [
            'titleform'=>'Borrar registro a sincronizar',
            'borrado' => 1,
            'form' => $form,
            'regsync' => $item->getIdSyncbase(),
        ]);
    }

    
}
