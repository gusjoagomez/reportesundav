<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SecAudit;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SecAuditType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class SecAuditController extends AbstractController
{
    /**
     * @Route("/secaudit", name="secaudit_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SecAudit::class)->findAll();
                
        return $this->render('secaudit/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/secaudit/list", name="secaudit_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.id,  c.objecttype,  c.description,  c.eventdate,  c.companyId,  c.userId,  c.code,  c.objectid,  c.crud";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SecAudit::class)
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
     * @Route("/secaudit/new", name="secaudit_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SecAudit();
        $form = $this->createForm(SecAuditType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro SecAudit');

            return $this->redirectToRoute('secaudit_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('secaudit/form.html.twig', [
            'titleform'=>'Nuevo Registro SecAudit',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/secaudit/{id}/edit", name="secaudit_edit")
     */    
    public function edit(Request $request,SecAudit $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecAuditType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('secaudit/form.html.twig', [
            'titleform'=>'Editar Registro SecAudit',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/secaudit/{id}/delete", name="secaudit_delete")
     */    
    public function delete(Request $request,SecAudit $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecAuditType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro SecAudit');
            return $this->redirectToRoute('secaudit_index');
        }
        return $this->renderForm('secaudit/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
