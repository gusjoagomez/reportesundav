<?php

namespace App\Form;

use App\Entity\SyncBasesTables;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class SyncBasesTablesType extends AbstractType
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

            ->add('fbase',null,['label'=>'Base fuente','required' => true])
            ->add('fschema',null,['label'=>'Esquema fuente','required' => true])
            ->add('ftable',null,['label'=>'Tabla fuente','required' => true])
            ->add('tbase',null,['label'=>'Base destino','required' => true])
            ->add('tschema',null,['label'=>'Esquem destino','required' => true])
            ->add('ttable',null,['label'=>'Tabla destino','required' => true])
            //->add('id_syncbase',null,['label'=>'Id_syncbase','required' => true])
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
            'data_class' => SyncBasesTables::class,
        ]);
    }
}
