<?php

namespace ContainerAilBCvo;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_ServiceLocator_Wurkt0lService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private '.service_locator.wurkt0l' shared service.
     *
     * @return \Symfony\Component\DependencyInjection\ServiceLocator
     */
    public static function do($container, $lazyLoad = true)
    {
        return $container->privates['.service_locator.wurkt0l'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService ??= $container->getService(...), [
            'entityManager' => ['services', 'doctrine.orm.default_entity_manager', 'getDoctrine_Orm_DefaultEntityManagerService', false],
            'item' => ['privates', '.errored..service_locator.wurkt0l.App\\Entity\\CatTable', NULL, 'Cannot autowire service ".service_locator.wurkt0l": it needs an instance of "App\\Entity\\CatTable" but this type has been excluded in "config/services.yaml".'],
        ], [
            'entityManager' => '?',
            'item' => 'App\\Entity\\CatTable',
        ]);
    }
}
