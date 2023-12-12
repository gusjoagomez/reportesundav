<?php

namespace ContainerUhwAAvv;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator_VfOyokNService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private '.service_locator.vfOyokN' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return $container->privates['.service_locator.vfOyokN'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService ??= $container->getService(...), [
            'base' => ['privates', '.errored..service_locator.vfOyokN.App\\Entity\\CatBases', NULL, 'Cannot autowire service ".service_locator.vfOyokN": it needs an instance of "App\\Entity\\CatBases" but this type has been excluded in "config/services.yaml".'],
            'doctrine' => ['services', 'doctrine', 'getDoctrineService', false],
        ], [
            'base' => 'App\\Entity\\CatBases',
            'doctrine' => '?',
        ]);
    }
}
