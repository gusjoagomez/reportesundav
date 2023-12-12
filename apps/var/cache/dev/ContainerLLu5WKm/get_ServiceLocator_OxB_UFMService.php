<?php

namespace ContainerLLu5WKm;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator_OxB_UFMService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private '.service_locator.oxB.UFM' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return $container->privates['.service_locator.oxB.UFM'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService ??= $container->getService(...), [
            'base' => ['privates', '.errored..service_locator.oxB.UFM.App\\Entity\\CatBases', NULL, 'Cannot autowire service ".service_locator.oxB.UFM": it needs an instance of "App\\Entity\\CatBases" but this type has been excluded in "config/services.yaml".'],
        ], [
            'base' => 'App\\Entity\\CatBases',
        ]);
    }
}
