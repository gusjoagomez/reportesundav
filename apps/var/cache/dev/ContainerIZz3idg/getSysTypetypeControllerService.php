<?php

namespace ContainerIZz3idg;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSysTypetypeControllerService extends App_KernelDevDebugContainer
{
    /**
     * Gets the public 'App\Controller\SysTypetypeController' shared autowired service.
     *
     * @return \App\Controller\SysTypetypeController
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/framework-bundle/Controller/AbstractController.php';
        include_once \dirname(__DIR__, 4).'/src/Controller/SysTypetypeController.php';

        $container->services['App\\Controller\\SysTypetypeController'] = $instance = new \App\Controller\SysTypetypeController();

        $instance->setContainer(($container->privates['.service_locator.O2p6Lk7'] ?? $container->load('get_ServiceLocator_O2p6Lk7Service'))->withContext('App\\Controller\\SysTypetypeController', $container));

        return $instance;
    }
}
