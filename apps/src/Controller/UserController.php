<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SecUser;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\SecUserType;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\SecCompany;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Security\Core\User\UserInterface;

class UserController extends AbstractController
{
    /**
     * @Route("/user", name="user_index")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $entityManager = $doctrine->getManager();
        $listaUsuarios = $entityManager->getRepository(SecUser::class)->findAll();
                
        return $this->render('user/index.html.twig', [
            'list' => $listaUsuarios,
        ]);
    }
    

    /**
     * @Route("/user/list", name="user_list")
     */
    public function list(ManagerRegistry $doctrine): Response
    {
        $fields="c.id, c.code, c.name, c.lastname, c.email, c.username";
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
     * @Route("/user/new", name="user_new")
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $item = new SecUser();
        $form = $this->createForm(SecUserType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {            
            $dd = $form->getData();
            $company =$entityManager->getRepository(SecCompany::class)->findOneBy(['id'=>1]);
            $item->setPassword(base64_encode(date("Y-m-d H:i:s")));
            $item->setCompany($company);
            $entityManager->persist($item);
            $entityManager->flush(); 
            $request->getSession()->getFlashBag()->add('message', 'Se ha creado el usuario');

            return $this->redirectToRoute('user_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('user/form.html.twig', [
            'titleform'=>'Nuevo usuario',
            'form' => $form,
        ]);
    }
    
    
    /**
     * @Route("/user/{id}/edit", name="user_edit")
     */    
    public function edit(Request $request,SecUser $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecUserType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha Modificado el usuario');
        }

        return $this->renderForm('user/form.html.twig', [
            'titleform'=>'Editar usuario',
            'form' => $form,
        ]);
    }


    /**
     * @Route("/user/{id}/delete", name="user_delete")
     */    
    public function delete(Request $request,SecUser $item, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecUserType::class, $item);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->remove($item);
            $entityManager->flush();
            $request->getSession()->getFlashBag()->add('message', 'Se ha borrado el usuario');
            return $this->redirectToRoute('user_index');
        }
        return $this->renderForm('user/form.html.twig', [
            'titleform'=>'Borrar usuario',
            'borrado' => 1,
            'form' => $form,
        ]);
    }


    /**
     * CAMBIO DE PASSWORD DEL USUARIO LOGUEADO
     * @Route("/user/chpass", name="user_chpass")
     */    
    public function chpass(Request $request,EntityManagerInterface $entityManager,UserPasswordEncoderInterface $passwordEncoder, UserInterface $user): Response
    {        
        $entity =$entityManager->getRepository(SecUser::class)->findOneBy(['id'=>$user->getID()]);
        
        $form = $this->getFormChangePassword();
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) 
        {
            $datos = $form->getData();
            if ($datos['password']==$datos['passwordr'])
            {
                $nuevaPass = $datos['password'];                
                $encodedPassword =$passwordEncoder->encodePassword( $user,$nuevaPass );

                $entity->setPassword($encodedPassword);
                $entityManager->persist($entity );
                $entityManager->flush();
                $request->getSession()->getFlashBag()->add('message', 'La password ha sido modificada');

            }else{
                $request->getSession()->getFlashBag()->add('messageerr', 'Los valores de password ingresados NO coinciden');
            }
        }        
        
        return $this->renderForm('user/chpass.html.twig', [
            'form' => $form,
            'entity'=>$entity,
            ]);
    }


    /**
     * CAMBIO DE PASSWORD DE OTROS USUARIOS
     * @Route("/user/{id}/chopass", name="user_chopass")
     */    
    public function chopass(Request $request,SecUser $user, EntityManagerInterface $entityManager,UserPasswordEncoderInterface $passwordEncoder): Response
    {        
        $entity = $entityManager->getRepository(SecUser::class)->findOneBy(['id'=>$user->getID()]);
        
        $form = $this->getFormChangePassword();
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) 
        {
            $datos = $form->getData();
            if ($datos['password']==$datos['passwordr'])
            {
                $nuevaPass = $datos['password'];                
                $encodedPassword =$passwordEncoder->encodePassword( $user,$nuevaPass );

                $entity->setPassword($encodedPassword);
                $entityManager->persist($entity );
                $entityManager->flush();
                $request->getSession()->getFlashBag()->add('message', 'La password ha sido modificada');

            }else{
                $request->getSession()->getFlashBag()->add('messageerr', 'Los valores de password ingresados NO coinciden');
            }
        }        
        
        return $this->renderForm('user/chopass.html.twig', [
            'form' => $form,
            'entity'=>$entity,
            ]);
    }


    function getFormChangePassword()
    {
        
       $form = $this->createFormBuilder()
            ->add('password',PasswordType::class,
                    ['required' => true,
                     'label'=>'Password',
                     'constraints' => array(new Assert\NotBlank(), new Assert\Length(array('min' => 5)))
                ])
            ->add('passwordr',PasswordType::class,
                    ['required' => true,
                     'label'=>'Re-escriba Password',
                     'constraints' => array(new Assert\NotBlank(), new Assert\Length(array('min' => 5)))
                ])
            ->getForm(); 
        return $form;
    }

    
}
