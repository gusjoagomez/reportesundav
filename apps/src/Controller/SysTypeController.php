<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SysType;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SysTypeType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class SysTypeController extends AbstractController
{
    /**
     * @Route("/systype", name="systype_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SysType::class)->findAll();
                
        return $this->render('systype/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/systype/list", name="systype_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.id,  c.parentId,  c.type,  c.name,  c.orderlist,  c.active,  c.codetree,  c.nametree,  c.leveltree,  c.property";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SysType::class)
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
     * @Route("/systype/new", name="systype_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SysType();
        $form = $this->createForm(SysTypeType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro SysType');

            return $this->redirectToRoute('systype_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('systype/form.html.twig', [
            'titleform'=>'Nuevo Registro SysType',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/systype/{id}/edit", name="systype_edit")
     */    
    public function edit(Request $request,SysType $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SysTypeType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('systype/form.html.twig', [
            'titleform'=>'Editar Registro SysType',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/systype/{id}/delete", name="systype_delete")
     */    
    public function delete(Request $request,SysType $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SysTypeType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro SysType');
            return $this->redirectToRoute('systype_index');
        }
        return $this->renderForm('systype/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
