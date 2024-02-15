<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\CatEntityRels;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\CatEntityRelsType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class CatEntityRelsController extends AbstractController
{
    /**
     * @Route("/catentityrels", name="catentityrels_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatEntityRels::class)->findAll();
                
        return $this->render('catentityrels/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/catentityrels/list", name="catentityrels_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.id,  c.name,  c.reltype,  c.entityId,  c.entity2Id,  c.fieldsrel,  c.relsql";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatEntityRels::class)
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
     * @Route("/catentityrels/new", name="catentityrels_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new CatEntityRels();
        $form = $this->createForm(CatEntityRelsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro CatEntityRels');

            return $this->redirectToRoute('catentityrels_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('catentityrels/form.html.twig', [
            'titleform'=>'Nuevo Registro CatEntityRels',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/catentityrels/{id}/edit", name="catentityrels_edit")
     */    
    public function edit(Request $request,CatEntityRels $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatEntityRelsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('catentityrels/form.html.twig', [
            'titleform'=>'Editar Registro CatEntityRels',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/catentityrels/{id}/delete", name="catentityrels_delete")
     */    
    public function delete(Request $request,CatEntityRels $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatEntityRelsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro CatEntityRels');
            return $this->redirectToRoute('catentityrels_index');
        }
        return $this->renderForm('catentityrels/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
