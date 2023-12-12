<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\HttpFoundation\RedirectResponse;
use App\Repository\SecUserRepository;

class LoginController extends AbstractController
{
    /**
     * @Route("/login", name="app_login")
     */
    public function index(AuthenticationUtils $authenticationUtils, SecUserRepository $userRepository, Request $request): Response
    {
            //         if ($this->getUser()) {
            //             return $this->redirectToRoute('user_index');
            //         }
        //print_r($_POST); die();
        // recupera el error de login si lo hubiera
        $error = $authenticationUtils->getLastAuthenticationError();

        // ultimo nombre de usuario ingresado por el usuario
        $lastUsername = $authenticationUtils->getLastUsername();
        $username = $authenticationUtils->getLastUsername();
        
        $user = $userRepository->findOneBy(['username'=>$username]);
        
        $session = $request->getSession();
        $session->set('user', $user);

        return $this->render('security/login.html.twig', ['last_username' => $lastUsername, 'error' => $error]);
    }


    /**
     * @Route("/logout", name="app_logout")
     */
    public function logout(): RedirectResponse
    {
        return $this->redirectToRoute('app_login');
    }


    /**
     * @Route("/", name="app_root")
     */
    public function root(): RedirectResponse
    {
        return $this->redirectToRoute('app_login');
    }
    
    /**
     * @Route("/welcome", name="app_welcome")
     */
    public function welcome(AuthenticationUtils $authenticationUtils, SecUserRepository $userRepository, Request $request): Response
    {
//        // recupera el error de login si lo hubiera
//        $error = $authenticationUtils->getLastAuthenticationError();
//        // ultimo nombre de usuario ingresado por el usuario
//        $username = $authenticationUtils->getLastUsername();
//        
//        $user = $userRepository->findOneBy(['username'=>$username]);
//        
//        $session = $request->getSession();
//        $session->set('user', $user);
//
//        echo "<br><br><br>User:";
//        print_r($user);
//
//        $user = $session->get('user');        
//        echo "<br><br><br>User:";
//        print_r($user);
        
        return $this->render('security/welcome.html.twig');
    }
    
}
