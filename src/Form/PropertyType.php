<?php

namespace App\Form;

use App\Entity\Property;
use App\Entity\State;
use App\Repository\StateRepository;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Doctrine\ORM\Mapping\Entity;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;


class PropertyType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('title')
            ->add('description')
            ->add('surface',IntegerType::class,[
                'attr' => [
                    'min' => 0
                ],
            ])
            ->add('rooms',IntegerType::class,[
                'attr' => [
                    'min' => 0 
                ],
            ])
            ->add('bedrooms',IntegerType::class,[
                'attr' => [
                    'min' => 0   
                ],
            ])
            ->add('floor',IntegerType::class,[
                'attr' => [
                    'min' => 0
                    
                ],
            ])
            ->add('price',IntegerType::class,[
                'attr' => [
                    'min' => 0
                    
                ],
            ])
            ->add('heat', ChoiceType::class,['choices' => $this->getChoices()])
            ->add('city')
            ->add('address')
            ->add('postal_code')
            ->add('sold')
            ->add('state',EntityType::class,[
                'label' =>'State',
                'class'=>State::class,
                'query_builder'=>function(StateRepository $er)
                {
                    return $er->createQueryBuilder('sta')
                        ->orderBy('sta.id','ASC');
                },
                'choice_label' => 'name',
                'required'=>true,
            
            ])
            ->add('imageFile',FileType::class,[
                'required'=>false,
            ])

        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Property::class,
            
        ]);
    }

    // Cette fonction permet d'avoir le choix parmis les types de chauffage
    private function getChoices()
    {
        $choices = Property::HEAT;
        $output = [];
        foreach($choices as $k => $v)
        {
            $output[$v] = $k;
        }
        return $output;
    }
}
