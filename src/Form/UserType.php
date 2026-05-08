<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $isEdit = $options['is_edit'];

        $builder
            ->add('email', EmailType::class, [
                'label' => 'Adresse email',
                'attr'  => ['placeholder' => 'exemple@esat.fr'],
            ])
            ->add('roles', ChoiceType::class, [
                'label'    => 'Rôle',
                'choices'  => [
                    'Utilisateur (lecture)'   => 'ROLE_USER',
                    'Administrateur (toutes permissions)' => 'ROLE_ADMIN',
                ],
                'expanded' => true,
                'multiple' => true,
                'help'     => 'Coche au moins un rôle. ROLE_ADMIN donne toutes les permissions.',
            ])
            ->add('plainPassword', RepeatedType::class, [
                'type'            => PasswordType::class,
                'mapped'          => false,
                'required'        => !$isEdit,
                'invalid_message' => 'Les deux mots de passe ne correspondent pas.',
                'first_options'   => [
                    'label' => $isEdit ? 'Nouveau mot de passe (laisser vide pour conserver)' : 'Mot de passe',
                    'attr'  => ['autocomplete' => 'new-password'],
                ],
                'second_options' => [
                    'label' => $isEdit ? 'Confirmer le nouveau mot de passe' : 'Confirmer le mot de passe',
                    'attr'  => ['autocomplete' => 'new-password'],
                ],
                'constraints' => $isEdit ? [] : [
                    new NotBlank(['message' => 'Le mot de passe est obligatoire à la création.']),
                    new Length(['min' => 6, 'minMessage' => 'Au moins 6 caractères.', 'max' => 4096]),
                ],
            ]);

        // Transformer les rôles : on stocke array sans ROLE_USER (auto-ajouté par l'entité)
        $builder->get('roles')->addModelTransformer(new \Symfony\Component\Form\CallbackTransformer(
            // entity -> form (filtrer ROLE_USER qui est auto-ajouté)
            fn($rolesAsArray) => array_filter($rolesAsArray ?? [], fn($r) => $r !== 'ROLE_USER'),
            // form -> entity
            fn($rolesAsArray) => $rolesAsArray
        ));
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
            'is_edit'    => false,
        ]);
        $resolver->setAllowedTypes('is_edit', 'bool');
    }
}
