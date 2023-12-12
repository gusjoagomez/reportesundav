<?php

namespace App\Form;

use App\Entity\SecMenu;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class SecMenuType extends AbstractType
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
            ->add('active',null,['label'=>'Active','required' => true])
            ->add('type_id',null,['label'=>'Type_id','required' => true])
            ->add('action',null,['label'=>'Action','required' => true])
            ->add('divider',null,['label'=>'Divider','required' => true])
            ->add('name',null,['label'=>'Name','required' => true])
            ->add('link',null,['label'=>'Link','required' => true])
            ->add('orderlist1',null,['label'=>'Orderlist1','required' => true])
            ->add('orderlist',null,['label'=>'Orderlist','required' => true])
            ->add('module',null,['label'=>'Module','required' => true])
            ->add('nametree',null,['label'=>'Nametree','required' => true])
            ->add('icon',null,['label'=>'Icon','required' => true])
            ->add('availablesel',null,['label'=>'Availablesel','required' => true])
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
            'data_class' => SecMenu::class,
        ]);
    }
}
