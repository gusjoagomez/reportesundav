<?php

namespace ContainerLLu5WKm;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator_B17wuYWService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private '.service_locator.b17wuYW' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return $container->privates['.service_locator.b17wuYW'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService ??= $container->getService(...), [
            'app' => ['services', 'doctrine.dbal.default_connection', 'getDoctrine_Dbal_DefaultConnectionService', false],
            'base' => ['privates', '.errored..service_locator.b17wuYW.App\\Entity\\CatBases', NULL, 'Cannot autowire service ".service_locator.b17wuYW": it needs an instance of "App\\Entity\\CatBases" but this type has been excluded in "config/services.yaml".'],
            'entityManager' => ['services', 'doctrine.orm.default_entity_manager', 'getDoctrine_Orm_DefaultEntityManagerService', false],
        ], [
            'app' => '?',
            'base' => 'App\\Entity\\CatBases',
            'entityManager' => '?',
        ]);
    }
}
