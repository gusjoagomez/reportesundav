<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SecRolemenu;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SecRolemenuType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class SecRolemenuController extends AbstractController
{
    /**
     * @Route("/secrolemenu", name="secrolemenu_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SecRolemenu::class)->findAll();
                
        return $this->render('secrolemenu/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/secrolemenu/list", name="secrolemenu_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.roleId,  c.menuId";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SecRolemenu::class)
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
     * @Route("/secrolemenu/new", name="secrolemenu_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SecRolemenu();
        $form = $this->createForm(SecRolemenuType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro SecRolemenu');

            return $this->redirectToRoute('secrolemenu_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('secrolemenu/form.html.twig', [
            'titleform'=>'Nuevo Registro SecRolemenu',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/secrolemenu/{id}/edit", name="secrolemenu_edit")
     */    
    public function edit(Request $request,SecRolemenu $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecRolemenuType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('secrolemenu/form.html.twig', [
            'titleform'=>'Editar Registro SecRolemenu',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/secrolemenu/{id}/delete", name="secrolemenu_delete")
     */    
    public function delete(Request $request,SecRolemenu $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecRolemenuType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro SecRolemenu');
            return $this->redirectToRoute('secrolemenu_index');
        }
        return $this->renderForm('secrolemenu/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
