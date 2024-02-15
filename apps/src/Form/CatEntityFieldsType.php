<?php

namespace App\Form;

use App\Entity\CatEntityFields;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class CatEntityFieldsType extends AbstractType
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
            ->add('ftable',null,['label'=>'Ftable','required' => true])
            ->add('orderlist',null,['label'=>'Orderlist','required' => true])
            ->add('fieldname',null,['label'=>'Fieldname','required' => true])
            ->add('entity_id',null,['label'=>'Entity_id','required' => true])
            ->add('typename',null,['label'=>'Typename','required' => true])
            ->add('esnull',null,['label'=>'Esnull','required' => true])
            ->add('pk',null,['label'=>'Pk','required' => true])
            ->add('fkey',null,['label'=>'Fkey','required' => true])
            ->add('label',null,['label'=>'Label','required' => true])
            ->add('labelhelp',null,['label'=>'Labelhelp','required' => true])
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
            'data_class' => CatEntityFields::class,
        ]);
    }
}
