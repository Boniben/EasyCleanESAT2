-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 10 avr. 2026 à 07:37
-- Version du serveur : 11.8.3-MariaDB-0+deb13u1 from Debian
-- Version de PHP : 8.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `easycleanesat`
--

-- --------------------------------------------------------

--
-- Structure de la table `intervention`
--

CREATE TABLE `intervention` (
  `id` int(11) NOT NULL,
  `num_version` int(11) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_modificaion` date DEFAULT NULL,
  `nb_travailleur` int(11) NOT NULL,
  `duree_heure` int(11) NOT NULL,
  `duree_minute` int(11) NOT NULL,
  `redacteur_id` int(11) DEFAULT NULL,
  `zones_client_id` int(11) NOT NULL,
  `contrat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `intervention`
--

INSERT INTO `intervention` (`id`, `num_version`, `date_creation`, `date_modificaion`, `nb_travailleur`, `duree_heure`, `duree_minute`, `redacteur_id`, `zones_client_id`, `contrat_id`) VALUES
(1, 1, '2026-03-21', NULL, 2, 1, 15, 1, 4, 8),
(2, 2, '2000-05-20', '2026-04-09', 5, 2, 30, 1, 10, 19),
(3, 1, '2026-04-06', NULL, 4, 0, 15, NULL, 11, 19);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D11814AB764D0490` (`redacteur_id`),
  ADD KEY `IDX_D11814ABF810C6CC` (`zones_client_id`),
  ADD KEY `IDX_D11814AB1823061F` (`contrat_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `intervention`
--
ALTER TABLE `intervention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD CONSTRAINT `FK_D11814AB1823061F` FOREIGN KEY (`contrat_id`) REFERENCES `contrat` (`id`),
  ADD CONSTRAINT `FK_D11814AB764D0490` FOREIGN KEY (`redacteur_id`) REFERENCES `redacteur` (`id`),
  ADD CONSTRAINT `FK_D11814ABF810C6CC` FOREIGN KEY (`zones_client_id`) REFERENCES `zones_client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
