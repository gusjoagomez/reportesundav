<?php

namespace ContainerLLu5WKm;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSecRoleControllerService extends App_KernelDevDebugContainer
{
    /**
     * Gets the public 'App\Controller\SecRoleController' shared autowired service.
     *
     * @return \App\Controller\SecRoleController
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/framework-bundle/Controller/AbstractController.php';
        include_once \dirname(__DIR__, 4).'/src/Controller/SecRoleController.php';

        $container->services['App\\Controller\\SecRoleController'] = $instance = new \App\Controller\SecRoleController();

        $instance->setContainer(($container->privates['.service_locator.O2p6Lk7'] ?? $container->load('get_ServiceLocator_O2p6Lk7Service'))->withContext('App\\Controller\\SecRoleController', $container));

        return $instance;
    }
}