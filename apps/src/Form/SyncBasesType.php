<?php

namespace App\Form;

use App\Entity\SyncBases;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class SyncBasesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
//            ->add('role', EntityType::class, [
//                'class' => SecRole::class,'mapped' => true,'label' => "Rol",
//                'required' => true,
//                'attr' => ['class' => "form-control"]
//             ])

//            ->add('type', EntityType::class, [
//                'mapped' => true,
//                'label' => "Tipo",
//                'required' => true,
//                'attr' => ['class' => "form-control"],
//                'class' => SysType::class,
//                'query_builder' => function (SysTypeRepository $er) use ($options) {
//                    return $er->TraerPorTipo("TIPLUG");
//                }
//             ])
            ->add('description',null,['label'=>'Description','required' => true])
            ->add('fhost',null,['label'=>'Host fuente','required' => true])
            ->add('fuser',null,['label'=>'Usuario','required' => true])
            ->add('fpasswd',null,['label'=>'Password','required' => true])
            ->add('fport',null,['label'=>'Port','required' => true])

            ->add('thost',null,['label'=>'Host destino','required' => true])
            ->add('tuser',null,['label'=>'Usuario','required' => true])
            ->add('tpasswd',null,['label'=>'Password','required' => true])
            ->add('tport',null,['label'=>'Port','required' => true])
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
            'data_class' => SyncBases::class,
        ]);
    }
}
