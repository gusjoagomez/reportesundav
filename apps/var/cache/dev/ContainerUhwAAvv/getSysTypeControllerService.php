<?php

namespace ContainerUhwAAvv;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSysTypeControllerService extends App_KernelDevDebugContainer
{
    /**
     * Gets the public 'App\Controller\SysTypeController' shared autowired service.
     *
     * @return \App\Controller\SysTypeController
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/framework-bundle/Controller/AbstractController.php';
        include_once \dirname(__DIR__, 4).'/src/Controller/SysTypeController.php';

        $container->services['App\\Controller\\SysTypeController'] = $instance = new \App\Controller\SysTypeController();

        $instance->setContainer(($container->privates['.service_locator.O2p6Lk7'] ?? $container->load('get_ServiceLocator_O2p6Lk7Service'))->withContext('App\\Controller\\SysTypeController', $container));

        return $instance;
    }
}
