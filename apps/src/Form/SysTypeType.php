<?php

namespace App\Form;

use App\Entity\SysType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class SysTypeType extends AbstractType
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
            ->add('parent_id',null,['label'=>'Parent_id','required' => true])
            ->add('type',null,['label'=>'Type','required' => true])
            ->add('name',null,['label'=>'Name','required' => true])
            ->add('orderlist',null,['label'=>'Orderlist','required' => true])
            ->add('active',null,['label'=>'Active','required' => true])
            ->add('codetree',null,['label'=>'Codetree','required' => true])
            ->add('nametree',null,['label'=>'Nametree','required' => true])
            ->add('leveltree',null,['label'=>'Leveltree','required' => true])
            ->add('property',null,['label'=>'Property','required' => true])
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
            'data_class' => SysType::class,
        ]);
    }
}
