<?php

namespace ContainerIZz3idg;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator_Yz9bQEHService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private '.service_locator.yz9bQEH' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return $container->privates['.service_locator.yz9bQEH'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService ??= $container->getService(...), [
            'entityManager' => ['services', 'doctrine.orm.default_entity_manager', 'getDoctrine_Orm_DefaultEntityManagerService', false],
            'item' => ['privates', '.errored..service_locator.yz9bQEH.App\\Entity\\Test', NULL, 'Cannot autowire service ".service_locator.yz9bQEH": it needs an instance of "App\\Entity\\Test" but this type has been excluded in "config/services.yaml".'],
        ], [
            'entityManager' => '?',
            'item' => 'App\\Entity\\Test',
        ]);
    }
}
