<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\CatRels;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\CatRelsType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class CatRelsController extends AbstractController
{
    /**
     * @Route("/catrels", name="catrels_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatRels::class)->findAll();
                
        return $this->render('catrels/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/catrels/list", name="catrels_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.name,  c.reltype,  c.tableId,  c.table2Id,  c.fieldsrel,  c.id";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(CatRels::class)
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
     * @Route("/catrels/new", name="catrels_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new CatRels();
        $form = $this->createForm(CatRelsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro CatRels');

            return $this->redirectToRoute('catrels_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('catrels/form.html.twig', [
            'titleform'=>'Nuevo Registro CatRels',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/catrels/{id}/edit", name="catrels_edit")
     */    
    public function edit(Request $request,CatRels $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatRelsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('catrels/form.html.twig', [
            'titleform'=>'Editar Registro CatRels',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/catrels/{id}/delete", name="catrels_delete")
     */    
    public function delete(Request $request,CatRels $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CatRelsType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro CatRels');
            return $this->redirectToRoute('catrels_index');
        }
        return $this->renderForm('catrels/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
