<?php

namespace ContainerAilBCvo;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getForm_RegistryService extends App_KernelDevDebugContainer
{
    /**
     * Gets the private 'form.registry' shared service.
     *
     * @return \Symfony\Component\Form\FormRegistry
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/form/FormRegistryInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/form/FormRegistry.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/form/FormExtensionInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/form/Extension/DependencyInjection/DependencyInjectionExtension.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/form/ResolvedFormTypeFactoryInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/form/Extension/DataCollector/Proxy/ResolvedTypeFactoryDataCollectorProxy.php';
        include_once \dirname(__DIR__, 4).'/vendor/symfony/form/ResolvedFormTypeFactory.php';

        return $container->privates['form.registry'] = new \Symfony\Component\Form\FormRegistry([new \Symfony\Component\Form\Extension\DependencyInjection\DependencyInjectionExtension(new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($container->getService ??= $container->getService(...), [
            'App\\Form\\CatBasesType' => ['privates', 'App\\Form\\CatBasesType', 'getCatBasesTypeService', true],
            'App\\Form\\CatEntityFieldsType' => ['privates', 'App\\Form\\CatEntityFieldsType', 'getCatEntityFieldsTypeService', true],
            'App\\Form\\CatEntityRelsType' => ['privates', 'App\\Form\\CatEntityRelsType', 'getCatEntityRelsTypeService', true],
            'App\\Form\\CatEntityType' => ['privates', 'App\\Form\\CatEntityType', 'getCatEntityTypeService', true],
            'App\\Form\\CatFieldsType' => ['privates', 'App\\Form\\CatFieldsType', 'getCatFieldsTypeService', true],
            'App\\Form\\CatRelsType' => ['privates', 'App\\Form\\CatRelsType', 'getCatRelsTypeService', true],
            'App\\Form\\CatTableType' => ['privates', 'App\\Form\\CatTableType', 'getCatTableTypeService', true],
            'App\\Form\\SecAuditType' => ['privates', 'App\\Form\\SecAuditType', 'getSecAuditTypeService', true],
            'App\\Form\\SecMenuType' => ['privates', 'App\\Form\\SecMenuType', 'getSecMenuTypeService', true],
            'App\\Form\\SecRoleType' => ['privates', 'App\\Form\\SecRoleType', 'getSecRoleTypeService', true],
            'App\\Form\\SecRolemenuType' => ['privates', 'App\\Form\\SecRolemenuType', 'getSecRolemenuTypeService', true],
            'App\\Form\\SecUserType' => ['privates', 'App\\Form\\SecUserType', 'getSecUserTypeService', true],
            'App\\Form\\SyncBasesTablesType' => ['privates', 'App\\Form\\SyncBasesTablesType', 'getSyncBasesTablesTypeService', true],
            'App\\Form\\SyncBasesType' => ['privates', 'App\\Form\\SyncBasesType', 'getSyncBasesTypeService', true],
            'App\\Form\\SysTypeType' => ['privates', 'App\\Form\\SysTypeType', 'getSysTypeType2Service', true],
            'App\\Form\\SysTypetypeType' => ['privates', 'App\\Form\\SysTypetypeType', 'getSysTypetypeTypeService', true],
            'App\\Form\\SysZoneType' => ['privates', 'App\\Form\\SysZoneType', 'getSysZoneTypeService', true],
            'App\\Form\\TestType' => ['privates', 'App\\Form\\TestType', 'getTestTypeService', true],
            'Symfony\\Bridge\\Doctrine\\Form\\Type\\EntityType' => ['privates', 'form.type.entity', 'getForm_Type_EntityService', true],
            'Symfony\\Component\\Form\\Extension\\Core\\Type\\ChoiceType' => ['privates', 'form.type.choice', 'getForm_Type_ChoiceService', true],
            'Symfony\\Component\\Form\\Extension\\Core\\Type\\ColorType' => ['privates', 'form.type.color', 'getForm_Type_ColorService', true],
            'Symfony\\Component\\Form\\Extension\\Core\\Type\\FileType' => ['privates', 'form.type.file', 'getForm_Type_FileService', true],
            'Symfony\\Component\\Form\\Extension\\Core\\Type\\FormType' => ['privates', 'form.type.form', 'getForm_Type_FormService', true],
        ], [
            'App\\Form\\CatBasesType' => '?',
            'App\\Form\\CatEntityFieldsType' => '?',
            'App\\Form\\CatEntityRelsType' => '?',
            'App\\Form\\CatEntityType' => '?',
            'App\\Form\\CatFieldsType' => '?',
            'App\\Form\\CatRelsType' => '?',
            'App\\Form\\CatTableType' => '?',
            'App\\Form\\SecAuditType' => '?',
            'App\\Form\\SecMenuType' => '?',
            'App\\Form\\SecRoleType' => '?',
            'App\\Form\\SecRolemenuType' => '?',
            'App\\Form\\SecUserType' => '?',
            'App\\Form\\SyncBasesTablesType' => '?',
            'App\\Form\\SyncBasesType' => '?',
            'App\\Form\\SysTypeType' => '?',
            'App\\Form\\SysTypetypeType' => '?',
            'App\\Form\\SysZoneType' => '?',
            'App\\Form\\TestType' => '?',
            'Symfony\\Bridge\\Doctrine\\Form\\Type\\EntityType' => '?',
            'Symfony\\Component\\Form\\Extension\\Core\\Type\\ChoiceType' => '?',
            'Symfony\\Component\\Form\\Extension\\Core\\Type\\ColorType' => '?',
            'Symfony\\Component\\Form\\Extension\\Core\\Type\\FileType' => '?',
            'Symfony\\Component\\Form\\Extension\\Core\\Type\\FormType' => '?',
        ]), ['Symfony\\Component\\Form\\Extension\\Core\\Type\\FormType' => new RewindableGenerator(function () use ($container) {
            yield 0 => ($container->privates['form.type_extension.form.transformation_failure_handling'] ?? $container->load('getForm_TypeExtension_Form_TransformationFailureHandlingService'));
            yield 1 => ($container->privates['form.type_extension.form.http_foundation'] ?? $container->load('getForm_TypeExtension_Form_HttpFoundationService'));
            yield 2 => ($container->privates['form.type_extension.form.validator'] ?? $container->load('getForm_TypeExtension_Form_ValidatorService'));
            yield 3 => ($container->privates['form.type_extension.upload.validator'] ?? $container->load('getForm_TypeExtension_Upload_ValidatorService'));
            yield 4 => ($container->privates['form.type_extension.csrf'] ?? $container->load('getForm_TypeExtension_CsrfService'));
            yield 5 => ($container->privates['form.type_extension.form.data_collector'] ?? $container->load('getForm_TypeExtension_Form_DataCollectorService'));
            yield 6 => ($container->privates['form.type_extension.form.password_hasher'] ?? $container->load('getForm_TypeExtension_Form_PasswordHasherService'));
        }, 7), 'Symfony\\Component\\Form\\Extension\\Core\\Type\\RepeatedType' => new RewindableGenerator(function () use ($container) {
            yield 0 => ($container->privates['form.type_extension.repeated.validator'] ??= new \Symfony\Component\Form\Extension\Validator\Type\RepeatedTypeValidatorExtension());
        }, 1), 'Symfony\\Component\\Form\\Extension\\Core\\Type\\SubmitType' => new RewindableGenerator(function () use ($container) {
            yield 0 => ($container->privates['form.type_extension.submit.validator'] ??= new \Symfony\Component\Form\Extension\Validator\Type\SubmitTypeValidatorExtension());
        }, 1), 'Symfony\\Component\\Form\\Extension\\Core\\Type\\PasswordType' => new RewindableGenerator(function () use ($container) {
            yield 0 => ($container->privates['form.type_extension.password.password_hasher'] ?? $container->load('getForm_TypeExtension_Password_PasswordHasherService'));
        }, 1)], new RewindableGenerator(function () use ($container) {
            yield 0 => ($container->privates['form.type_guesser.validator'] ?? $container->load('getForm_TypeGuesser_ValidatorService'));
            yield 1 => ($container->privates['form.type_guesser.doctrine'] ?? $container->load('getForm_TypeGuesser_DoctrineService'));
        }, 2))], new \Symfony\Component\Form\Extension\DataCollector\Proxy\ResolvedTypeFactoryDataCollectorProxy(new \Symfony\Component\Form\ResolvedFormTypeFactory(), ($container->privates['data_collector.form'] ?? self::getDataCollector_FormService($container))));
    }
}
