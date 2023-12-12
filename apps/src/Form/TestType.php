<?php

namespace App\Form;

use App\Entity\Test;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class TestType extends AbstractType
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
            //->add('code',null,['label'=>'Code','required' => true])
            ->add('surnametxt',null,['label'=>'Surnametxt','required' => true])
            ->add('nametxt',null,['label'=>'Nametxt','required' => true])
            ->add('active',null,['label'=>'Active','required' => true])
            // ->add('created_by',null,['label'=>'Created_by','required' => true])
            // ->add('created_at',null,['label'=>'Created_at','required' => true])
            // ->add('updated_by',null,['label'=>'Updated_by','required' => true])
            // ->add('updated_at',null,['label'=>'Updated_at','required' => true])            
            // ->add('deleted_by',null,['label'=>'Deleted_by','required' => true])
            // ->add('deleted_at',null,['label'=>'Deleted_at','required' => true])
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
            'data_class' => Test::class,
        ]);
    }
}
