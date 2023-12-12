<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Test;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\TestType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;



//use App\Entity\SecCompany;

class TestController extends AbstractController
{
    /**
     * @Route("/test", name="test_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        //$list = $entityManager->getRepository(Test::class)->findAll();
        $list = [];
        return $this->render('test/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/test/list", name="test_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.id,  c.surnametxt,  c.updatedAt,  c.deletedBy,  c.nametxt,  c.createdAt,  c.updatedBy,  c.deletedAt,  c.active,  c.createdBy";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(Test::class)
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
     * @Route("/test/new", name="test_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new Test();
        $form = $this->createForm(TestType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            dump($item);
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro Test');

            return $this->redirectToRoute('test_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('test/form.html.twig', [
            'titleform'=>'Nuevo Registro Test',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/test/{id}/edit", name="test_edit")
     */    
    public function edit(Request $request,Test $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(TestType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('test/form.html.twig', [
            'titleform'=>'Editar Registro Test',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/test/{id}/delete", name="test_delete")
     */    
    public function delete(Request $request,Test $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(TestType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro Test');
            return $this->redirectToRoute('test_index');
        }
        return $this->renderForm('test/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
