<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\CatEntity;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\CatEntityType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class CatEntityController extends AbstractController
{
    /**
     * @Route("/catentity", name="catentity_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatEntity::class)->findAll();
                
        return $this->render('catentity/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/catentity/list", name="catentity_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.id,  c.name,  c.description,  c.viewcode,  c.active,  c.objectdbrel";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatEntity::class)
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
     * @Route("/catentity/new", name="catentity_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new CatEntity();
        $form = $this->createForm(CatEntityType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro Emtidad');

            return $this->redirectToRoute('catentity_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('catentity/form.html.twig', [
            'titleform'=>'Nuevo Registro Entidad',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/catentity/{id}/edit", name="catentity_edit")
     */    
    public function edit(Request $request,CatEntity $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatEntityType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('catentity/form.html.twig', [
            'titleform'=>'Editar Registro Entidad',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/catentity/{id}/delete", name="catentity_delete")
     */    
    public function delete(Request $request,CatEntity $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatEntityType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro Entidad');
            return $this->redirectToRoute('catentity_index');
        }
        return $this->renderForm('catentity/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
