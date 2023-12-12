<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SecRole;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SecRoleType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class SecRoleController extends AbstractController
{
    /**
     * @Route("/secrole", name="secrole_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SecRole::class)->findAll();
                
        return $this->render('secrole/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/secrole/list", name="secrole_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.id,  c.orderlist, c.name,  c.active";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SecRole::class)
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
     * @Route("/secrole/new", name="secrole_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SecRole();
        $form = $this->createForm(SecRoleType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro SecRole');

            return $this->redirectToRoute('secrole_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('secrole/form.html.twig', [
            'titleform'=>'Nuevo Rol',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/secrole/{id}/edit", name="secrole_edit")
     */    
    public function edit(Request $request,SecRole $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecRoleType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('secrole/form.html.twig', [
            'titleform'=>'Editar Rol',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/secrole/{id}/delete", name="secrole_delete")
     */    
    public function delete(Request $request,SecRole $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecRoleType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro SecRole');
            return $this->redirectToRoute('secrole_index');
        }
        return $this->renderForm('secrole/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
