<?php

namespace ContainerIZz3idg;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator_UDO16kiService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private '.service_locator.UDO16ki' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return $container->privates['.service_locator.UDO16ki'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService ??= $container->getService(...), [
            'doctrine' => ['services', 'doctrine', 'getDoctrineService', false],
            'table' => ['privates', '.errored..service_locator.UDO16ki.App\\Entity\\CatTable', NULL, 'Cannot autowire service ".service_locator.UDO16ki": it needs an instance of "App\\Entity\\CatTable" but this type has been excluded in "config/services.yaml".'],
        ], [
            'doctrine' => '?',
            'table' => 'App\\Entity\\CatTable',
        ]);
    }
}