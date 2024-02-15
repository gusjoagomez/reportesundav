<?php

namespace ContainerAilBCvo;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSyncBasesTablesTypeService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private 'App\Form\SyncBasesTablesType' shared autowired service.
     *
     * @return \App\Form\SyncBasesTablesType
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/form/FormTypeInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/form/AbstractType.php';
        include_once \dirname(__DIR__, 4).'/src/Form/SyncBasesTablesType.php';

        return $container->privates['App\\Form\\SyncBasesTablesType'] = new \App\Form\SyncBasesTablesType();
    }
}
