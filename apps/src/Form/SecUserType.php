<?php

namespace App\Form;

use App\Entity\SecUser;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Doctrine\ORM\QueryBuilder;
use App\Entity\SysType;
use Doctrine\ORM\EntityRepository;
use App\Entity\SecCompany;
use App\Entity\SecRole;


class SecUserType extends AbstractType
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
            ->add('role', EntityType::class, [
                'label'=>'Rol',
                'mapped' => true,
                'class' => SecRole::class,
                'choice_label' => 'name',
                'query_builder' => function (EntityRepository $er): QueryBuilder {
                    return $er->createQueryBuilder('u')
                            ->where("u.active = 1")
                            ->orderBy('u.name', 'ASC');
                },  
            ])

                        
            ->add('name',null,['label'=>'Nombre','required' => true])
            ->add('lastname',null,['label'=>'Apellido','required' => true])
//            ->add('doc_number',null,['label'=>'Nro.Documento','required' => true])
//            ->add('cuitcuil',null,['label'=>'CUIT/CUIL','required' => true])
            ->add('username',null,['label'=>'USERNAME','required' => true])
            ->add('email',null,['label'=>'E-mail','required' => true])
            ->add('language', EntityType::class, [
                'label'=>'Lenguaje',
                'mapped' => true,
                'class' => SysType::class,
                'choice_label' => 'name',
                'query_builder' => function (EntityRepository $er): QueryBuilder {
                    return $er->createQueryBuilder('u')
                            ->where("u.type = 'LANG'")
                            ->orderBy('u.name', 'ASC');
                },  
            ])
            ->add('active',  ChoiceType::class, [
                'choices' => array('Si' =>1,  'No'=>0),
                'label'=>'Activo','required' => true
                ])

            ->add('btnsubmit', SubmitType::class, [
                'label' => "Aplicar",
                'attr' => ['class' => "btn-primary",],
            ])
        ;

//            ->add('codeinternal',null,['label'=>'Codeinternal','required' => true])
//            ->add('timezone',null,['label'=>'Timezone','required' => true])

    }

    
    
    
    
    
    
    
    
    
    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => SecUser::class,
        ]);
    }
}
