<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SecCompany;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SecCompanyType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class SecCompanyController extends AbstractController
{
    /**
     * @Route("/seccompany", name="seccompany_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SecCompany::class)->findAll();
                
        return $this->render('seccompany/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/seccompany/list", name="seccompany_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        $fields=" c.id,  c.description,  c.logo,  c.ladOid,  c.ladBillingemailaddress,  c.ladActive,  c.updatedAt,  c.deletedAt,  c.cuit,  c.active,  c.ladName,  c.ladExtradata,  c.createdAt,  c.name,  c.shortdescription,  c.telephone,  c.expiredate,  c.ladAuth0connectionname,  c.createdBy,  c.updatedBy,  c.deletedBy,  c.comments";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SecCompany::class)
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
     * @Route("/seccompany/new", name="seccompany_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SecCompany();
        $form = $this->createForm(SecCompanyType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro SecCompany');

            return $this->redirectToRoute('seccompany_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('seccompany/form.html.twig', [
            'titleform'=>'Nueva Empresa',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/seccompany/{id}/edit", name="seccompany_edit")
     */    
    public function edit(Request $request,SecCompany $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecCompanyType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('seccompany/form.html.twig', [
            'titleform'=>'Editar Empresa',
            'form' => $form,
            'company' => $item,
        ]);
    }


    /**
     * @Route("/seccompany/{id}/delete", name="seccompany_delete")
     */    
    public function delete(Request $request,SecCompany $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecCompanyType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro Empresa');
            return $this->redirectToRoute('seccompany_index');
        }
        return $this->renderForm('seccompany/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
