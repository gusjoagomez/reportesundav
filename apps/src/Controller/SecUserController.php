<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SecUser;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SecUserType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use \App\Entity\SecCompany;

class SecUserController extends AbstractController
{
    /**
     * @Route("/secuser", name="secuser_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {                
        return $this->render('secuser/index.html.twig', [
        ]);
    }
    

    /**
     * @Route("/secuser/list", name="secuser_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$companyId = $request->get('companyId');
        
        $fields="c.id, c.name,  c.lastname,   c.email,  c.username, c.active";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SecUser::class)
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
     * @Route("/secuser/new", name="secuser_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SecUser();
        $form = $this->createForm(SecUserType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            
            ///Setea cualquier password - Luego deberá modificarla
            $noPasswd =  substr(str_shuffle('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'),1,20);
            $item->setPassword($noPasswd);
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro SecUser');

            return $this->redirectToRoute('secuser_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('secuser/form.html.twig', [
            'titleform'=>'Nuevo Registro',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/secuser/{id}/edit", name="secuser_edit")
     */    
    public function edit(Request $request,SecUser $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecUserType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('secuser/form.html.twig', [
            'titleform'=>'Editar Registro',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/secuser/{id}/delete", name="secuser_delete")
     */    
    public function delete(Request $request,SecUser $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecUserType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro SecUser');
            return $this->redirectToRoute('secuser_index', []);
        }
        return $this->renderForm('secuser/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
