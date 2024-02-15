<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\CatEntityFields;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\CatEntityFieldsType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class CatEntityFieldsController extends AbstractController
{
    /**
     * @Route("/catentityfields", name="catentityfields_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatEntityFields::class)->findAll();
                
        return $this->render('catentityfields/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/catentityfields/list", name="catentityfields_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.id,  c.ftable,  c.orderlist,  c.fieldname,  c.entityId,  c.typename,  c.esnull,  c.pk,  c.fkey,  c.label,  c.labelhelp";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatEntityFields::class)
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
     * @Route("/catentityfields/new", name="catentityfields_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new CatEntityFields();
        $form = $this->createForm(CatEntityFieldsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro CatEntityFields');

            return $this->redirectToRoute('catentityfields_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('catentityfields/form.html.twig', [
            'titleform'=>'Nuevo Registro CatEntityFields',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/catentityfields/{id}/edit", name="catentityfields_edit")
     */    
    public function edit(Request $request,CatEntityFields $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatEntityFieldsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('catentityfields/form.html.twig', [
            'titleform'=>'Editar Registro CatEntityFields',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/catentityfields/{id}/delete", name="catentityfields_delete")
     */    
    public function delete(Request $request,CatEntityFields $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatEntityFieldsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro CatEntityFields');
            return $this->redirectToRoute('catentityfields_index');
        }
        return $this->renderForm('catentityfields/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
