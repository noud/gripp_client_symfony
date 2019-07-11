<?php

namespace App\Gripp\Form\Type;

use App\Gripp\Form\Data\TaakfaseData;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class TaakfaseType extends AbstractType
{
    /**
     * {@inheritdoc}
     *
     * @see \Symfony\Component\Form\AbstractType::buildForm()
     */
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'label' => 'taakfase.field.name',
            ])
            ->add('color', TextType::class, [
                'label' => 'taakfase.field.color',
            ])
            ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => TaakfaseData::class,
            'translation_domain' => 'gripp',
        ]);
    }
}
