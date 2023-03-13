<?php

namespace App\Form;

use App\Entity\PropertySearch;
use App\Entity\State;
use App\Repository\StateRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType as TypeIntegerType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;


class PropertySearchType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('minSurface', TypeIntegerType::class,[
            'required' => false,
            'label' => false,
            'attr' => [
                'placeholder'=>'Minimal surface'
            ]
        ])
        ->add('maxPrice', TypeIntegerType::class,[
                'required' => false,
                'label' => false,
                'attr'=>[
                    'placeholder'=>'Maximal Budget'
            ]
        ])

        ->add('state', EntityType::class,[
            'class'=>State::class,
            'required' => false,
            'choice_label'=>'name',
            'label' => false,
            'placeholder'=>'State'
        
        ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => PropertySearch::class,
            'method'=> 'get',
            'csrf_protection'=>false
        ]);
    }

    public function getBlockPrefix()
    {
        return '';
    }
}
