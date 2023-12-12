<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SecMenu;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SecMenuType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class SecMenuController extends AbstractController
{
    /**
     * @Route("/secmenu", name="secmenu_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SecMenu::class)->findAll();
                
        return $this->render('secmenu/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/secmenu/list", name="secmenu_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.id,  c.parentId,  c.active,  c.typeId,  c.action,  c.divider,  c.name,  c.link,  c.orderlist1,  c.orderlist,  c.module,  c.nametree,  c.icon,  c.availablesel";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SecMenu::class)
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
     * @Route("/secmenu/new", name="secmenu_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SecMenu();
        $form = $this->createForm(SecMenuType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro SecMenu');

            return $this->redirectToRoute('secmenu_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('secmenu/form.html.twig', [
            'titleform'=>'Nuevo Registro SecMenu',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/secmenu/{id}/edit", name="secmenu_edit")
     */    
    public function edit(Request $request,SecMenu $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecMenuType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('secmenu/form.html.twig', [
            'titleform'=>'Editar Registro SecMenu',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/secmenu/{id}/delete", name="secmenu_delete")
     */    
    public function delete(Request $request,SecMenu $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecMenuType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro SecMenu');
            return $this->redirectToRoute('secmenu_index');
        }
        return $this->renderForm('secmenu/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
