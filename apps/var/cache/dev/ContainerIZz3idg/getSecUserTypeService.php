<?php

namespace ContainerIZz3idg;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSecUserTypeService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private 'App\Form\SecUserType' shared autowired service.
     *
     * @return \App\Form\SecUserType
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/form/FormTypeInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/form/AbstractType.php';
        include_once \dirname(__DIR__, 4).'/src/Form/SecUserType.php';

        return $container->privates['App\\Form\\SecUserType'] = new \App\Form\SecUserType();
    }
}