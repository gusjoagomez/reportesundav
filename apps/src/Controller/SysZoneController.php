<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SysZone;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SysZoneType;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
//use App\Entity\SecCompany;

class SysZoneController extends AbstractController
{
    /**
     * @Route("/syszone", name="syszone_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SysZone::class)->findAll();
                
        return $this->render('syszone/index.html.twig', [
            'list' => $list,
        ]);
    }
    

    /**
     * @Route("/syszone/list", name="syszone_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        //$fields="c.id, c.name";
        $fields=" c.id,  c.codant,  c.codprov,  c.coddepto,  c.codmun,  c.active,  c.parent,  c.orderlist,  c.level,  c.nuevo,  c.descrip,  c.georef,  c.idsim";

        $entityManager = $doctrine->getManager();
        $list = $entityManager->getRepository(SysZone::class)
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
     * @Route("/syszone/new", name="syszone_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SysZone();
        $form = $this->createForm(SysZoneType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            //$company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            //$item->setCompany($company);
            //$item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el registro SysZone');

            return $this->redirectToRoute('syszone_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('syszone/form.html.twig', [
            'titleform'=>'Nuevo Registro SysZone',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/syszone/{id}/edit", name="syszone_edit")
     */    
    public function edit(Request $request,SysZone $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SysZoneType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el registro');
        }

        return $this->renderForm('syszone/form.html.twig', [
            'titleform'=>'Editar Registro SysZone',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/syszone/{id}/delete", name="syszone_delete")
     */    
    public function delete(Request $request,SysZone $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SysZoneType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado registro SysZone');
            return $this->redirectToRoute('syszone_index');
        }
        return $this->renderForm('syszone/form.html.twig', [
            'titleform'=>'Borrar registro',
            'borrado' => 1,
            'form' => $form,
        ]);
    }

    
}
