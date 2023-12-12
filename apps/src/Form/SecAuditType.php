<?php

namespace App\Form;

use App\Entity\SecAudit;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class SecAuditType extends AbstractType
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
            ->add('objecttype',null,['label'=>'Objecttype','required' => true])
            ->add('description',null,['label'=>'Description','required' => true])
            ->add('eventdate',null,['label'=>'Eventdate','required' => true])
            ->add('company_id',null,['label'=>'Company_id','required' => true])
            ->add('user_id',null,['label'=>'User_id','required' => true])
            ->add('code',null,['label'=>'Code','required' => true])
            ->add('objectid',null,['label'=>'Objectid','required' => true])
            ->add('crud',null,['label'=>'Crud','required' => true])
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
            'data_class' => SecAudit::class,
        ]);
    }
}
