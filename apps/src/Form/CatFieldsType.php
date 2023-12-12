<?php

namespace App\Form;

use App\Entity\CatFields;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class CatFieldsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('schemaname',null,['label'=>'Schemaname','required' => true])
            ->add('fieldname',null,['label'=>'Fieldname','required' => true])
            ->add('esnull',null,['label'=>'Esnull','required' => true])
            ->add('ftable',null,['label'=>'Ftable','required' => true])
            ->add('fkey',null,['label'=>'Fkey','required' => true])
            ->add('labelhelp',null,['label'=>'Labelhelp','required' => true])
            ->add('orderlist',null,['label'=>'Orderlist','required' => true])
            ->add('inlist',null,['label'=>'Inlist','required' => true])
            ->add('tablename',null,['label'=>'Tablename','required' => true])
            ->add('pk',null,['label'=>'Pk','required' => true])
            ->add('incrud',null,['label'=>'Incrud','required' => true])
            ->add('typename',null,['label'=>'Typename','required' => true])
            ->add('label',null,['label'=>'Label','required' => true])
            //->add('btnsubmit', SubmitType::class, ['label' => "Aplicar",'attr' => ['class' => "btn-primary",],])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => CatFields::class,
        ]);
    }
}
