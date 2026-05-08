<?php

namespace App\Entity;

use App\Repository\SuppInterRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: SuppInterRepository::class)]
#[ORM\Table(
    uniqueConstraints: [
        new ORM\UniqueConstraint(
            name: 'index_support_inter',
            columns: ['support_id', 'inter_id']
        )
    ]
)]
class SuppInter
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(nullable: true)]
    private ?int $ordre = null;

    #[ORM\ManyToOne(inversedBy: 'suppInters')]
    #[ORM\JoinColumn(name: 'support_id', referencedColumnName: 'id', nullable: false, onDelete: 'CASCADE')]
    private ?SupportClient $supportClient = null;

    #[ORM\ManyToOne(inversedBy: 'suppInters')]
    #[ORM\JoinColumn(name: 'inter_id', referencedColumnName: 'id', nullable: false, onDelete: 'CASCADE')]
    private ?Intervention $intervention = null;

    /**
     * @var Collection<int, SuppInterActions>
     */
    #[ORM\OneToMany(targetEntity: SuppInterActions::class, mappedBy: 'suppInter', cascade: ['persist', 'remove'], orphanRemoval: true)]
    private Collection $suppInterActions;

    public function __construct()
    {
        $this->suppInterActions = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getOrdre(): ?int
    {
        return $this->ordre;
    }

    public function setOrdre(?int $ordre): static
    {
        $this->ordre = $ordre;
        return $this;
    }

    public function getSupportClient(): ?SupportClient
    {
        return $this->supportClient;
    }

    public function setSupportClient(?SupportClient $supportClient): static
    {
        $this->supportClient = $supportClient;
        return $this;
    }

    public function getIntervention(): ?Intervention
    {
        return $this->intervention;
    }

    public function setIntervention(?Intervention $intervention): static
    {
        $this->intervention = $intervention;
        return $this;
    }

    /**
     * @return Collection<int, SuppInterActions>
     */
    public function getSuppInterActions(): Collection
    {
        return $this->suppInterActions;
    }

    public function addSuppInterAction(SuppInterActions $sia): static
    {
        if (!$this->suppInterActions->contains($sia)) {
            $this->suppInterActions->add($sia);
            $sia->setSuppInter($this);
        }
        return $this;
    }

    public function removeSuppInterAction(SuppInterActions $sia): static
    {
        $this->suppInterActions->removeElement($sia);
        return $this;
    }

    /**
     * Retourne les Actions liées (via SuppInterActions), triées par ordre.
     * @return Collection<int, Actions>
     */
    public function getActions(): Collection
    {
        $sorted = $this->suppInterActions->toArray();
        usort($sorted, fn(SuppInterActions $a, SuppInterActions $b) => ($a->getOrdre() ?? 0) <=> ($b->getOrdre() ?? 0));
        return new ArrayCollection(array_map(fn(SuppInterActions $sia) => $sia->getAction(), $sorted));
    }

    public function addAction(Actions $action, ?int $ordre = null, ?string $frequence = null): static
    {
        foreach ($this->suppInterActions as $sia) {
            if ($sia->getAction() === $action) {
                return $this;
            }
        }
        $sia = new SuppInterActions();
        $sia->setSuppInter($this);
        $sia->setAction($action);
        $sia->setOrdre($ordre);
        $sia->setFrequence($frequence);
        $this->suppInterActions->add($sia);
        return $this;
    }

    public function removeAction(Actions $action): static
    {
        foreach ($this->suppInterActions as $sia) {
            if ($sia->getAction() === $action) {
                $this->suppInterActions->removeElement($sia);
                break;
            }
        }
        return $this;
    }
}
