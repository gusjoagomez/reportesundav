<?php

namespace App\Form;

use App\Entity\SecRole;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Doctrine\ORM\QueryBuilder;
use Doctrine\ORM\EntityRepository;
use App\Entity\SecCompany;
use App\Entity\SysType;



class SecRoleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('company', EntityType::class, [
                'label'=>'Organizacion',
                'mapped' => true,
                'class' => SecCompany::class,
                'choice_label' => 'name',
                'query_builder' => function (EntityRepository $er): QueryBuilder {
                    return $er->createQueryBuilder('u')
                            ->where("u.active = 1")
                            ->orderBy('u.name', 'ASC');
                },  
            ])
           ->add('name',null,['label'=>'Name','required' => true])
           ->add('orderlist',null,['label'=>'Orderlist','required' => true])
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
            'data_class' => SecRole::class,
        ]);
    }
}
