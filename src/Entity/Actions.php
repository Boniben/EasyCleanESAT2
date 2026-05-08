<?php

namespace App\Entity;

use App\Repository\ActionsRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ActionsRepository::class)]
class Actions
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne(inversedBy: 'actions')]
    private ?MeoProduit $meo_produit = null;

    /**
     * @var Collection<int, Necessaire>
     */
    #[ORM\ManyToMany(targetEntity: Necessaire::class, inversedBy: 'actions')]
    private Collection $necessaire;

    #[ORM\Column(type: 'boolean', options: ['default' => true])]
    private ?bool $actif = true;

    #[ORM\Column(type: 'datetime', nullable: true)]
    private ?\DateTimeInterface $dateDesactivation = null;

    /**
     * @var Collection<int, SuppInterActions>
     */
    #[ORM\OneToMany(targetEntity: SuppInterActions::class, mappedBy: 'action', cascade: ['remove'], orphanRemoval: true)]
    private Collection $suppInterActions;

    public function __construct()
    {
        $this->necessaire = new ArrayCollection();
        $this->suppInterActions = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getMeoProduit(): ?MeoProduit
    {
        return $this->meo_produit;
    }

    public function setMeoProduit(?MeoProduit $meo_produit): static
    {
        $this->meo_produit = $meo_produit;

        return $this;
    }

    /**
     * @return Collection<int, Necessaire>
     */
    public function getNecessaire(): Collection
    {
        return $this->necessaire;
    }

    public function addNecessaire(Necessaire $necessaire): static
    {
        if (!$this->necessaire->contains($necessaire)) {
            $this->necessaire->add($necessaire);
        }

        return $this;
    }

    public function removeNecessaire(Necessaire $necessaire): static
    {
        $this->necessaire->removeElement($necessaire);

        return $this;
    }

    public function isActif(): ?bool
    {
        return $this->actif;
    }

    public function setActif(bool $actif): static
    {
        $this->actif = $actif;

        return $this;
    }

    public function getDateDesactivation(): ?\DateTimeInterface
    {
        return $this->dateDesactivation;
    }

    public function setDateDesactivation(?\DateTimeInterface $dateDesactivation): static
    {
        $this->dateDesactivation = $dateDesactivation;
        return $this;
    }

    /**
     * @return Collection<int, SuppInterActions>
     */
    public function getSuppInterActions(): Collection
    {
        return $this->suppInterActions;
    }

    /**
     * Retourne le libellé lisible de l'action : nom de la nécessaire de
     * type "tâche" (typeNecessaire id = 4). Fallback : "Action #id".
     */
    public function getLabel(): string
    {
        foreach ($this->necessaire as $nec) {
            if ($nec->getTypeNecessaire()?->getId() === 4) {
                return (string) $nec->getNom();
            }
        }
        return 'Action #' . $this->id;
    }
}
