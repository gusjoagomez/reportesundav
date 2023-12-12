<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SysTypetype;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SysTypetypeType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class SysTypetypeController extends AbstractController
{
    /**
     * @Route("/systypetype", name="systypetype_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SysTypetype::class)->findAll();
                
        return $this->render('systypetype/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/systypetype/list", name="systypetype_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.object,  c.name,  c.orderlist,  c.property,  c.active,  c.common";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SysTypetype::class)
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
     * @Route("/systypetype/new", name="systypetype_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SysTypetype();
        $form = $this->createForm(SysTypetypeType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro SysTypetype');

            return $this->redirectToRoute('systypetype_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('systypetype/form.html.twig', [
            'titleform'=>'Nuevo Registro SysTypetype',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/systypetype/{id}/edit", name="systypetype_edit")
     */    
    public function edit(Request $request,SysTypetype $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SysTypetypeType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('systypetype/form.html.twig', [
            'titleform'=>'Editar Registro SysTypetype',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/systypetype/{id}/delete", name="systypetype_delete")
     */    
    public function delete(Request $request,SysTypetype $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SysTypetypeType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro SysTypetype');
            return $this->redirectToRoute('systypetype_index');
        }
        return $this->renderForm('systypetype/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
