<?php

namespace ContainerLLu5WKm;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSecRolemenuControllerService extends App_KernelDevDebugContainer
{
    /**
     * Gets the public 'App\Controller\SecRolemenuController' shared autowired service.
     *
     * @return \App\Controller\SecRolemenuController
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/framework-bundle/Controller/AbstractController.php';
        include_once \dirname(__DIR__, 4).'/src/Controller/SecRolemenuController.php';

        $container->services['App\\Controller\\SecRolemenuController'] = $instance = new \App\Controller\SecRolemenuController();

        $instance->setContainer(($container->privates['.service_locator.O2p6Lk7'] ?? $container->load('get_ServiceLocator_O2p6Lk7Service'))->withContext('App\\Controller\\SecRolemenuController', $container));

        return $instance;
    }
}
