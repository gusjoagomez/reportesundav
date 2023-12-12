<?php

namespace ContainerUhwAAvv;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator_9xWSXzMService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private '.service_locator.9xWSXzM' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return $container->privates['.service_locator.9xWSXzM'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService ??= $container->getService(...), [
            'app' => ['services', 'doctrine.dbal.default_connection', 'getDoctrine_Dbal_DefaultConnectionService', false],
            'conn' => ['services', 'doctrine.dbal.default_connection', 'getDoctrine_Dbal_DefaultConnectionService', false],
            'entityManager' => ['services', 'doctrine.orm.default_entity_manager', 'getDoctrine_Orm_DefaultEntityManagerService', false],
            'table' => ['privates', '.errored..service_locator.9xWSXzM.App\\Entity\\CatTable', NULL, 'Cannot autowire service ".service_locator.9xWSXzM": it needs an instance of "App\\Entity\\CatTable" but this type has been excluded in "config/services.yaml".'],
        ], [
            'app' => '?',
            'conn' => '?',
            'entityManager' => '?',
            'table' => 'App\\Entity\\CatTable',
        ]);
    }
}
