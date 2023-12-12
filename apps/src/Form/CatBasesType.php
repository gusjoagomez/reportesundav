<?php

namespace App\Form;

use App\Entity\CatBases;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
//use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class CatBasesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nameconn',null,['label'=>'Nombre Conexion','required' => true])
            ->add('hostdb',null,['label'=>'Host','required' => true])
            ->add('portdb',null,['label'=>'Port','required' => true])
            ->add('basedb',null,['label'=>'Base','required' => true])
            ->add('userdb',null,['label'=>'User','required' => true])
            ->add('passdb',null,['label'=>'Password','required' => true])
            ->add('schemas',null,['label'=>'Schemas','required' => true])
            ->add('active',  ChoiceType::class, [
                  'choices' => array('Si' =>1,  'No'=>0),
                  'label'=>'Activo','required' => true
            ])
            ->add('btnsubmit', SubmitType::class, [
                'label' => "Aplicar",
                'attr' => [
                    'class' => "btn-primary",
                ],
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => CatBases::class,
        ]);
    }
}
