<?php

namespace App\Form;

use App\Entity\SysZone;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class SysZoneType extends AbstractType
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
            ->add('codant',null,['label'=>'Codant','required' => true])
            ->add('codprov',null,['label'=>'Codprov','required' => true])
            ->add('coddepto',null,['label'=>'Coddepto','required' => true])
            ->add('codmun',null,['label'=>'Codmun','required' => true])
            ->add('active',null,['label'=>'Active','required' => true])
            ->add('parent',null,['label'=>'Parent','required' => true])
            ->add('orderlist',null,['label'=>'Orderlist','required' => true])
            ->add('level',null,['label'=>'Level','required' => true])
            ->add('nuevo',null,['label'=>'Nuevo','required' => true])
            ->add('descrip',null,['label'=>'Descrip','required' => true])
            ->add('georef',null,['label'=>'Georef','required' => true])
            ->add('idsim',null,['label'=>'Idsim','required' => true])
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
            'data_class' => SysZone::class,
        ]);
    }
}
