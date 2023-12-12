<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\SecUserRepository;
use Symfony\Component\Security\Core\User\UserInterface;


class MenuController extends AbstractController
{
    /**
     * @Route("/menu", name="menu_index")
     */       
    public function index(SecUserRepository $userRepository, Request $request, UserInterface $user)
    {  
        $roleId = 1;
        if($user===NULL) {
            echo "<a href='/login'>Sesion finalizada - Click para volver a conectarse</a><br>";
            die("Session cerrada");
        }
        
        $isLogued = true;
        $items = array();

        $menues = $userRepository->GetOptionMenu($roleId);
        
        foreach ($menues as $menu){
            $items[$menu['parent_id'] == null? 0: $menu['parent_id']][] = array(
                  'id' => $menu['id'],
                  'nombre' => $menu["name"],
                  'activo' => $menu['active'],
                  'icon' => $menu['icon'],
                  'divider' => $menu['divider'],
                  'orden' => $menu['orderlist'] == null? 0: $menu['orderlist'],
                  'link' => $menu['link'],
                  'route' => $menu['action'], 
                  'parentId' => $menu['parent_id'] == null? 0: $menu['parent_id']
                );            
        }        
        $aux = array();
        foreach ($items as $id => $item)
        {                        
            $aux[$id] = $this->orderMultiDimensionalArray($item, 'orden');
        }

        $isLogued = true;

        $view['alertcount'] = 0; // alertas
        $view['items'] = $aux;
        $view['isLogued'] = $isLogued;
        $view['user'] = $user;
        

        return $this->render('menu/index.html.twig', $view );
    }


    function orderMultiDimensionalArray ($toOrderArray, $field, $inverse = false) {  
        $position = array();
        $newRow = array();
        foreach ($toOrderArray as $key => $row) {  
                $position[$key]  = $row[$field];  
                $newRow[$key] = $row;  
        }
        if ($inverse){
            arsort($position);
        }else{
            asort($position);
        }
        $returnArray = array();  
        foreach ($position as $key => $pos) {       
            $returnArray[] = $newRow[$key];  
        }  
        return $returnArray;  
    }

}
