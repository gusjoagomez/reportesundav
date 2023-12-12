<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\CatBases;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\CatBasesType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class CatBasesController extends AbstractController
{
    /**
     * @Route("/catbases", name="catbases_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatBases::class)->findAll();
                
        return $this->render('catbases/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/catbases/list", name="catbases_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.basedb,  c.userdb,  c.passdb,  c.active,  c.id,  c.nameconn,  c.hostdb,  c.portdb";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatBases::class)
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
     * @Route("/catbases/new", name="catbases_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new CatBases();
        $form = $this->createForm(CatBasesType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro CatBases');

            return $this->redirectToRoute('catbases_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('catbases/form.html.twig', [
            'titleform'=>'Nuevo Registro Base Datos',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/catbases/{id}/edit", name="catbases_edit")
     */    
    public function edit(Request $request,CatBases $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatBasesType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('catbases/form.html.twig', [
            'titleform'=>'Editar Registro Base Datos',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/catbases/{id}/delete", name="catbases_delete")
     */    
    public function delete(Request $request,CatBases $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatBasesType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro CatBases');
            return $this->redirectToRoute('catbases_index');
        }
        return $this->renderForm('catbases/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
