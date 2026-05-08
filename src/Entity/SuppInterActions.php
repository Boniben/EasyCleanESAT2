<?php

namespace App\Entity;

use App\Repository\SuppInterActionsRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: SuppInterActionsRepository::class)]
#[ORM\Table(name: 'supp_inter_actions')]
#[ORM\UniqueConstraint(name: 'uniq_supp_inter_action', columns: ['supp_inter_id', 'actions_id'])]
class SuppInterActions
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne(inversedBy: 'suppInterActions')]
    #[ORM\JoinColumn(name: 'supp_inter_id', referencedColumnName: 'id', nullable: false, onDelete: 'CASCADE')]
    private ?SuppInter $suppInter = null;

    #[ORM\ManyToOne(inversedBy: 'suppInterActions')]
    #[ORM\JoinColumn(name: 'actions_id', referencedColumnName: 'id', nullable: false, onDelete: 'CASCADE')]
    private ?Actions $action = null;

    #[ORM\Column(nullable: true)]
    private ?int $ordre = null;

    #[ORM\Column(type: 'string', length: 255, nullable: true)]
    private ?string $frequence = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getSuppInter(): ?SuppInter
    {
        return $this->suppInter;
    }

    public function setSuppInter(?SuppInter $suppInter): static
    {
        $this->suppInter = $suppInter;
        return $this;
    }

    public function getAction(): ?Actions
    {
        return $this->action;
    }

    public function setAction(?Actions $action): static
    {
        $this->action = $action;
        return $this;
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

    public function getFrequence(): ?string
    {
        return $this->frequence;
    }

    public function setFrequence(?string $frequence): static
    {
        $this->frequence = $frequence;
        return $this;
    }
}
