-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 11 mai 2026 à 09:16
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
CREATE DATABASE IF NOT EXISTS `easycleanesat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `easycleanesat`;

-- --------------------------------------------------------

--
-- Structure de la table `actions`
--

CREATE TABLE `actions` (
  `id` int(11) NOT NULL,
  `meo_produit_id` int(11) DEFAULT NULL,
  `actif` tinyint(4) NOT NULL DEFAULT 1,
  `date_desactivation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actions`
--

INSERT INTO `actions` (`id`, `meo_produit_id`, `actif`, `date_desactivation`) VALUES
(11, 1, 1, NULL),
(12, 1, 1, NULL),
(13, 1, 1, NULL),
(14, 6, 1, NULL),
(15, 6, 1, NULL),
(16, 1, 1, NULL),
(17, 1, 1, NULL),
(18, 21, 1, NULL),
(19, 21, 1, NULL),
(20, 21, 1, NULL),
(21, 21, 1, NULL),
(22, 15, 1, NULL),
(23, 15, 1, NULL),
(24, 15, 1, NULL),
(25, 16, 1, NULL),
(26, 16, 1, NULL),
(27, 16, 1, NULL),
(28, 14, 1, NULL),
(29, 18, 1, NULL),
(30, 4, 1, NULL),
(31, 3, 1, NULL),
(32, 3, 1, NULL),
(33, 3, 1, NULL),
(34, 14, 1, NULL),
(35, 13, 1, NULL),
(36, 1, 1, NULL),
(37, 1, 1, NULL),
(38, 1, 1, NULL),
(39, 1, 1, NULL),
(40, 1, 1, NULL),
(41, 1, 1, NULL),
(42, 1, 1, NULL),
(43, 1, 1, NULL),
(44, 1, 1, NULL),
(45, 1, 1, NULL),
(46, 1, 1, NULL),
(47, 1, 1, NULL),
(48, 18, 1, NULL),
(49, 20, 1, NULL),
(50, 20, 1, NULL),
(51, 7, 1, NULL),
(52, 29, 1, NULL),
(53, 29, 1, NULL),
(54, 28, 1, NULL),
(55, 4, 1, NULL),
(56, 3, 1, NULL),
(57, 4, 1, NULL),
(58, 3, 1, NULL),
(59, 13, 1, NULL),
(60, 5, 1, NULL),
(61, 32, 1, NULL),
(62, 2, 1, NULL),
(63, 7, 1, NULL),
(64, 20, 1, NULL),
(65, 7, 1, NULL),
(66, 8, 1, NULL),
(67, 8, 1, NULL),
(68, 10, 1, NULL),
(69, 10, 1, NULL),
(70, 10, 1, NULL),
(71, 11, 1, NULL),
(72, 11, 1, NULL),
(73, 9, 1, NULL),
(74, 10, 1, NULL),
(75, 11, 1, NULL),
(76, 29, 1, NULL),
(77, 29, 1, NULL),
(78, 9, 1, NULL),
(79, 28, 1, NULL),
(80, 24, 1, NULL),
(81, 24, 1, NULL),
(82, 24, 1, NULL),
(83, 9, 1, NULL),
(84, 26, 1, NULL),
(85, 13, 1, NULL),
(86, 17, 1, NULL),
(87, 17, 1, NULL),
(88, 27, 1, NULL),
(89, 1, 1, NULL),
(90, 1, 1, NULL),
(91, 2, 1, NULL),
(92, 1, 1, NULL),
(93, 1, 1, NULL),
(94, 1, 1, NULL),
(95, 1, 1, NULL),
(96, 1, 1, NULL),
(97, 1, 1, NULL),
(98, 24, 1, NULL),
(99, 25, 1, NULL),
(100, 1, 1, NULL),
(101, 1, 1, NULL),
(102, 1, 1, NULL),
(103, 1, 1, NULL),
(104, 1, 1, NULL),
(105, 1, 1, NULL),
(106, 20, 1, NULL),
(107, 20, 1, NULL),
(108, 20, 1, NULL),
(109, 20, 1, NULL),
(110, 1, 1, NULL),
(111, 1, 1, NULL),
(112, 1, 1, NULL),
(113, 1, 1, NULL),
(114, 1, 1, NULL),
(115, 27, 1, NULL),
(116, 5, 1, NULL),
(117, 1, 1, NULL),
(118, 1, 1, NULL),
(119, 1, 1, NULL),
(120, 1, 1, NULL),
(121, 1, 1, NULL),
(122, 1, 1, NULL),
(123, 1, 1, NULL),
(124, 1, 1, NULL),
(125, 1, 1, NULL),
(126, 1, 1, NULL),
(127, 1, 1, NULL),
(128, 1, 1, NULL),
(129, 1, 1, NULL),
(130, 1, 1, NULL),
(131, 2, 1, NULL),
(132, 1, 1, NULL),
(133, 8, 1, NULL),
(134, 1, 1, NULL),
(135, 1, 1, NULL),
(136, 1, 1, NULL),
(137, 9, 1, NULL),
(138, 1, 1, NULL),
(139, 16, 1, NULL),
(140, 15, 1, NULL),
(141, 1, 1, NULL),
(142, 1, 1, NULL),
(143, 1, 1, NULL),
(144, 14, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `actions_necessaire`
--

CREATE TABLE `actions_necessaire` (
  `actions_id` int(11) NOT NULL,
  `necessaire_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actions_necessaire`
--

INSERT INTO `actions_necessaire` (`actions_id`, `necessaire_id`) VALUES
(11, 4),
(11, 39),
(11, 56),
(11, 93),
(11, 126),
(11, 151),
(12, 5),
(12, 43),
(12, 70),
(12, 93),
(12, 126),
(12, 151),
(13, 5),
(13, 43),
(13, 70),
(13, 93),
(13, 127),
(13, 151),
(14, 6),
(14, 46),
(14, 86),
(14, 99),
(14, 126),
(14, 151),
(15, 6),
(15, 46),
(15, 56),
(15, 95),
(15, 126),
(15, 151),
(16, 7),
(16, 36),
(16, 75),
(16, 93),
(16, 126),
(16, 152),
(17, 7),
(17, 36),
(17, 87),
(17, 93),
(17, 126),
(17, 152),
(18, 8),
(18, 53),
(18, 85),
(18, 101),
(18, 128),
(18, 151),
(19, 8),
(19, 53),
(19, 61),
(19, 93),
(19, 129),
(19, 151),
(20, 8),
(20, 53),
(20, 62),
(20, 93),
(20, 129),
(20, 151),
(21, 8),
(21, 53),
(21, 63),
(21, 93),
(21, 129),
(21, 151),
(22, 9),
(22, 53),
(22, 66),
(22, 102),
(22, 136),
(22, 151),
(23, 9),
(23, 53),
(23, 65),
(23, 104),
(23, 131),
(23, 151),
(24, 9),
(24, 53),
(24, 72),
(24, 105),
(24, 138),
(24, 151),
(25, 9),
(25, 53),
(25, 61),
(25, 93),
(25, 130),
(25, 151),
(26, 9),
(26, 53),
(26, 62),
(26, 93),
(26, 130),
(26, 151),
(27, 9),
(27, 53),
(27, 63),
(27, 93),
(27, 130),
(27, 151),
(28, 9),
(28, 54),
(28, 56),
(28, 95),
(28, 126),
(28, 151),
(29, 10),
(29, 40),
(29, 56),
(29, 106),
(29, 126),
(29, 151),
(30, 10),
(30, 47),
(30, 67),
(30, 93),
(30, 132),
(30, 151),
(31, 10),
(31, 47),
(31, 67),
(31, 93),
(31, 136),
(31, 151),
(32, 10),
(32, 49),
(32, 56),
(32, 94),
(32, 136),
(32, 151),
(33, 10),
(33, 49),
(33, 56),
(33, 94),
(33, 136),
(33, 151),
(34, 10),
(34, 49),
(34, 56),
(34, 94),
(34, 126),
(34, 151),
(35, 10),
(35, 55),
(35, 56),
(35, 107),
(35, 126),
(35, 151),
(36, 11),
(36, 37),
(36, 76),
(36, 109),
(36, 126),
(36, 151),
(37, 11),
(37, 37),
(37, 76),
(37, 109),
(37, 134),
(37, 151),
(38, 11),
(38, 52),
(38, 59),
(38, 93),
(38, 126),
(38, 151),
(39, 11),
(39, 52),
(39, 72),
(39, 110),
(39, 126),
(39, 151),
(40, 11),
(40, 52),
(40, 73),
(40, 118),
(40, 126),
(40, 151),
(41, 11),
(41, 52),
(41, 69),
(41, 93),
(41, 135),
(41, 151),
(42, 11),
(42, 52),
(42, 68),
(42, 111),
(42, 135),
(42, 151),
(43, 11),
(43, 52),
(43, 57),
(43, 93),
(43, 126),
(43, 153),
(44, 11),
(44, 54),
(44, 57),
(44, 93),
(44, 133),
(44, 153),
(45, 11),
(45, 54),
(45, 56),
(45, 113),
(45, 126),
(45, 151),
(46, 12),
(46, 52),
(46, 71),
(46, 93),
(46, 126),
(46, 154),
(47, 12),
(47, 54),
(47, 56),
(47, 113),
(47, 126),
(47, 151),
(48, 13),
(48, 40),
(48, 56),
(48, 106),
(48, 126),
(48, 151),
(49, 13),
(49, 49),
(49, 56),
(49, 94),
(49, 126),
(49, 151),
(50, 13),
(50, 50),
(50, 56),
(50, 97),
(50, 126),
(50, 151),
(51, 14),
(51, 50),
(51, 56),
(51, 97),
(51, 126),
(51, 151),
(52, 14),
(52, 52),
(52, 65),
(52, 104),
(52, 131),
(52, 151),
(53, 14),
(53, 52),
(53, 72),
(53, 105),
(53, 138),
(53, 151),
(54, 14),
(54, 54),
(54, 56),
(54, 115),
(54, 126),
(54, 151),
(55, 15),
(55, 47),
(55, 67),
(55, 93),
(55, 132),
(55, 151),
(56, 15),
(56, 47),
(56, 67),
(56, 93),
(56, 136),
(56, 151),
(57, 15),
(57, 49),
(57, 56),
(57, 94),
(57, 132),
(57, 151),
(58, 15),
(58, 49),
(58, 56),
(58, 94),
(58, 136),
(58, 151),
(59, 15),
(59, 55),
(59, 56),
(59, 107),
(59, 126),
(59, 151),
(60, 16),
(60, 41),
(60, 56),
(60, 93),
(60, 126),
(60, 151),
(61, 16),
(61, 41),
(61, 56),
(61, 93),
(61, 126),
(61, 151),
(62, 17),
(62, 36),
(62, 56),
(62, 93),
(62, 126),
(62, 151),
(63, 18),
(63, 50),
(63, 56),
(63, 93),
(63, 126),
(63, 151),
(64, 18),
(64, 50),
(64, 56),
(64, 97),
(64, 126),
(64, 151),
(65, 19),
(65, 50),
(65, 56),
(65, 97),
(65, 126),
(65, 151),
(66, 19),
(66, 51),
(66, 79),
(66, 117),
(66, 127),
(66, 174),
(67, 19),
(67, 51),
(67, 82),
(67, 98),
(67, 137),
(67, 151),
(68, 19),
(68, 52),
(68, 66),
(68, 102),
(68, 136),
(68, 151),
(69, 19),
(69, 52),
(69, 65),
(69, 104),
(69, 131),
(69, 151),
(70, 19),
(70, 52),
(70, 72),
(70, 105),
(70, 138),
(70, 151),
(71, 19),
(71, 52),
(71, 61),
(71, 93),
(71, 130),
(71, 151),
(72, 19),
(72, 52),
(72, 62),
(72, 93),
(72, 130),
(72, 151),
(73, 19),
(73, 54),
(73, 56),
(73, 113),
(73, 126),
(73, 151),
(74, 19),
(74, 54),
(74, 66),
(74, 102),
(74, 136),
(74, 151),
(75, 19),
(75, 52),
(75, 63),
(75, 93),
(75, 130),
(75, 151),
(76, 14),
(76, 52),
(76, 66),
(76, 102),
(76, 131),
(76, 151),
(77, 14),
(77, 52),
(77, 72),
(77, 105),
(77, 138),
(77, 151),
(78, 19),
(78, 54),
(78, 56),
(78, 95),
(78, 126),
(78, 151),
(79, 14),
(79, 54),
(79, 56),
(79, 96),
(79, 126),
(79, 151),
(80, 25),
(80, 54),
(80, 84),
(80, 93),
(80, 142),
(80, 151),
(81, 25),
(81, 54),
(81, 84),
(81, 93),
(81, 143),
(81, 151),
(82, 25),
(82, 53),
(82, 56),
(82, 120),
(82, 126),
(82, 151),
(83, 20),
(83, 49),
(83, 56),
(83, 95),
(83, 126),
(83, 151),
(84, 20),
(84, 55),
(84, 81),
(84, 93),
(84, 126),
(84, 151),
(85, 20),
(85, 55),
(85, 56),
(85, 107),
(85, 126),
(85, 151),
(86, 21),
(86, 45),
(86, 80),
(86, 93),
(86, 126),
(86, 151),
(87, 21),
(87, 45),
(87, 56),
(87, 93),
(87, 126),
(87, 151),
(88, 22),
(88, 41),
(88, 56),
(88, 93),
(88, 126),
(88, 151),
(89, 23),
(89, 46),
(89, 86),
(89, 99),
(89, 128),
(89, 151),
(90, 23),
(90, 48),
(90, 86),
(90, 99),
(90, 128),
(90, 151),
(91, 25),
(91, 36),
(91, 56),
(91, 93),
(91, 126),
(91, 151),
(92, 24),
(92, 42),
(92, 56),
(92, 93),
(92, 126),
(92, 156),
(93, 24),
(93, 42),
(93, 56),
(93, 93),
(93, 126),
(93, 157),
(94, 24),
(94, 42),
(94, 56),
(94, 93),
(94, 126),
(94, 158),
(95, 24),
(95, 42),
(95, 56),
(95, 93),
(95, 126),
(95, 159),
(96, 24),
(96, 42),
(96, 56),
(96, 116),
(96, 126),
(96, 151),
(97, 24),
(97, 42),
(97, 56),
(97, 93),
(97, 145),
(97, 151),
(98, 25),
(98, 48),
(98, 86),
(98, 100),
(98, 128),
(98, 151),
(99, 25),
(99, 48),
(99, 63),
(99, 100),
(99, 128),
(99, 151),
(100, 26),
(100, 53),
(100, 89),
(100, 93),
(100, 126),
(100, 151),
(101, 27),
(101, 47),
(101, 58),
(101, 93),
(101, 126),
(101, 151),
(102, 28),
(102, 52),
(102, 88),
(102, 93),
(102, 139),
(102, 177),
(103, 28),
(103, 45),
(103, 77),
(103, 121),
(103, 126),
(103, 151),
(104, 29),
(104, 52),
(104, 78),
(104, 93),
(104, 126),
(104, 173),
(105, 29),
(105, 52),
(105, 78),
(105, 93),
(105, 127),
(105, 173),
(106, 29),
(106, 49),
(106, 56),
(106, 94),
(106, 126),
(106, 151),
(107, 29),
(107, 50),
(107, 56),
(107, 97),
(107, 126),
(107, 151),
(108, 29),
(108, 53),
(108, 56),
(108, 120),
(108, 126),
(108, 151),
(109, 29),
(109, 50),
(109, 56),
(109, 108),
(109, 126),
(109, 151),
(110, 30),
(110, 38),
(110, 56),
(110, 93),
(110, 126),
(110, 160),
(111, 30),
(111, 38),
(111, 56),
(111, 93),
(111, 140),
(111, 161),
(112, 30),
(112, 38),
(112, 56),
(112, 93),
(112, 140),
(112, 162),
(113, 30),
(113, 38),
(113, 56),
(113, 93),
(113, 126),
(113, 163),
(114, 30),
(114, 38),
(114, 56),
(114, 93),
(114, 126),
(114, 164),
(115, 30),
(115, 38),
(115, 56),
(115, 93),
(115, 141),
(115, 151),
(116, 30),
(116, 38),
(116, 56),
(116, 93),
(116, 141),
(116, 151),
(117, 31),
(117, 54),
(117, 56),
(117, 95),
(117, 126),
(117, 151),
(118, 31),
(118, 50),
(118, 56),
(118, 97),
(118, 126),
(118, 151),
(119, 31),
(119, 54),
(119, 56),
(119, 96),
(119, 126),
(119, 151),
(120, 32),
(120, 49),
(120, 56),
(120, 94),
(120, 126),
(120, 151),
(121, 33),
(121, 45),
(121, 90),
(121, 93),
(121, 126),
(121, 151),
(122, 33),
(122, 45),
(122, 74),
(122, 93),
(122, 126),
(122, 151),
(123, 33),
(123, 51),
(123, 56),
(123, 112),
(123, 126),
(123, 151),
(124, 33),
(124, 54),
(124, 56),
(124, 113),
(124, 126),
(124, 151),
(125, 33),
(125, 50),
(125, 56),
(125, 114),
(125, 126),
(125, 151),
(126, 35),
(126, 49),
(126, 56),
(126, 124),
(126, 126),
(126, 151),
(127, 33),
(127, 52),
(127, 65),
(127, 104),
(127, 126),
(127, 151),
(128, 33),
(128, 52),
(128, 72),
(128, 105),
(128, 126),
(128, 151),
(129, 33),
(129, 52),
(129, 66),
(129, 102),
(129, 126),
(129, 151),
(130, 34),
(130, 44),
(130, 56),
(130, 93),
(130, 126),
(130, 177),
(131, 7),
(131, 36),
(131, 56),
(131, 93),
(131, 126),
(131, 151),
(132, 24),
(132, 42),
(132, 56),
(132, 122),
(132, 126),
(132, 151),
(133, 19),
(133, 51),
(133, 56),
(133, 98),
(133, 126),
(133, 151),
(134, 24),
(134, 42),
(134, 56),
(134, 93),
(134, 126),
(134, 176),
(135, 24),
(135, 42),
(135, 56),
(135, 123),
(135, 126),
(135, 151),
(136, 11),
(136, 52),
(136, 57),
(136, 93),
(136, 148),
(136, 153),
(137, 20),
(137, 55),
(137, 56),
(137, 95),
(137, 126),
(137, 151),
(138, 32),
(138, 55),
(138, 56),
(138, 113),
(138, 126),
(138, 151),
(139, 9),
(139, 53),
(139, 85),
(139, 101),
(139, 128),
(139, 151),
(140, 9),
(140, 53),
(140, 92),
(140, 125),
(140, 126),
(140, 151),
(141, 31),
(141, 53),
(141, 65),
(141, 104),
(141, 136),
(141, 151),
(142, 33),
(142, 53),
(142, 59),
(142, 93),
(142, 126),
(142, 151),
(143, 30),
(143, 38),
(143, 56),
(143, 93),
(143, 126),
(143, 151),
(144, 29),
(144, 48),
(144, 56),
(144, 120),
(144, 126),
(144, 151);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `picto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `picto`) VALUES
(1, 'TGS', '1.png'),
(2, 'SCF', '2.png'),
(4, 'Origen Messei', '4.png'),
(5, 'JM Moteur', '5.png'),
(6, 'Metha domfront', '6.png'),
(7, 'MAS la ferte-macé', '7.png'),
(8, 'Imprimerie Beauregard', '8.png'),
(9, 'Herry', '9.png'),
(10, 'Garage Joubin', '10.png'),
(11, 'CDC Juvigny sous Andaine', '11.png'),
(12, 'Lactalis', '12.png'),
(13, 'Origen Domfront', '13.png'),
(14, 'ESAT Domfront', '14.png'),
(15, 'DISTRICO La Maison.fr', '15.png'),
(16, 'SAVS Domfront', '16.png'),
(17, 'Intermarché domfront', '17.png');

-- --------------------------------------------------------

--
-- Structure de la table `contenant`
--

CREATE TABLE `contenant` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `volume_eau` double DEFAULT NULL,
  `picto` varchar(50) DEFAULT NULL,
  `unite_volume_id` int(11) DEFAULT NULL,
  `actif` tinyint(4) NOT NULL DEFAULT 1,
  `date_desactivation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contenant`
--

INSERT INTO `contenant` (`id`, `nom`, `volume_eau`, `picto`, `unite_volume_id`, `actif`, `date_desactivation`) VALUES
(1, 'Prêt à l\'emploi', NULL, '1.png', 1, 1, NULL),
(2, 'distributeur', NULL, NULL, NULL, 1, NULL),
(3, 'pulverisateur', 600, NULL, 1, 1, NULL),
(4, 'sceau', 8, NULL, 2, 1, NULL),
(5, 'machine', 12, NULL, 2, 1, NULL),
(6, 'machine', 1, '6.png', 3, 1, NULL),
(7, 'machine', 0, '7.png', 3, 1, NULL),
(8, 'sceau', 4, NULL, 2, 1, NULL),
(9, 'machine', NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

CREATE TABLE `contrat` (
  `id` int(11) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `sites_client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contrat`
--

INSERT INTO `contrat` (`id`, `numero`, `sites_client_id`) VALUES
(3, 'EDL-016-2025-07.11.2024', 3),
(4, 'EDL-011-2025-07.11.2024', 4),
(5, 'EDL-003-2025-07.11.2024', 7),
(6, 'EDL-007-2025-07.11.2024', 8),
(7, 'EDL-002-2025-15.01.2025', 9),
(8, 'EDL-006-2025-07.11.2024', 12),
(9, 'EDL-010-2025-07.11.2024', 13),
(10, 'EDL-019-2025-03.01.2025', 14),
(11, 'EDL-004-2025-07.11.2024', 15),
(12, 'EDL-012-2025-07.11.2024', 16),
(19, '11', 18),
(20, '111', 18);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20260219155654', '2026-02-19 16:57:03', 644),
('DoctrineMigrations\\Version20260222152651', '2026-02-22 16:27:08', 235),
('DoctrineMigrations\\Version20260303124423', '2026-03-03 13:44:38', 329),
('DoctrineMigrations\\Version20260303125732', '2026-03-03 13:57:52', 437),
('DoctrineMigrations\\Version20260305110428', '2026-03-05 12:04:34', 1451),
('DoctrineMigrations\\Version20260327080905', '2026-03-27 09:09:07', 2038),
('DoctrineMigrations\\Version20260327125505', '2026-03-27 13:55:07', 1099),
('DoctrineMigrations\\Version20260411070452', '2026-04-11 09:05:02', 496),
('DoctrineMigrations\\Version20260411073750', '2026-04-11 09:38:40', 252),
('DoctrineMigrations\\Version20260503093626', '2026-05-03 11:36:37', 392),
('DoctrineMigrations\\Version20260503095404', '2026-05-03 11:54:22', 868);

-- --------------------------------------------------------

--
-- Structure de la table `element_securite`
--

CREATE TABLE `element_securite` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `picto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `element_securite`
--

INSERT INTO `element_securite` (`id`, `nom`, `picto`) VALUES
(1, 'CON.05', NULL),
(2, 'CON.06', NULL),
(3, 'CON.07', NULL),
(4, 'CON.08', NULL),
(5, 'REU.23', NULL),
(6, 'ACC.19', NULL),
(7, 'REU.29', NULL),
(8, 'REU.30', NULL),
(9, 'CON.01', NULL),
(10, 'CON.25', NULL),
(11, '0', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `element_securite_intervention`
--

CREATE TABLE `element_securite_intervention` (
  `element_securite_id` int(11) NOT NULL,
  `intervention_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `element_securite_intervention`
--

INSERT INTO `element_securite_intervention` (`element_securite_id`, `intervention_id`) VALUES
(1, 6),
(1, 9),
(1, 10),
(4, 2),
(4, 6),
(5, 6),
(6, 9),
(6, 10),
(7, 6),
(8, 6),
(9, 7);

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
(2, 3, '2000-05-20', '2026-04-14', 3, 0, 30, 1, 10, 19),
(3, 1, '2026-04-06', NULL, 4, 0, 15, NULL, 11, 19),
(4, 1, '2026-04-10', NULL, 4, 0, 20, 1, 12, 19),
(5, 1, '2026-04-11', NULL, 5, 0, 10, 1, 12, 20),
(6, 13, '2026-04-11', '2026-04-18', 4, 2, 10, 1, 10, 20),
(7, 1, '2026-04-14', NULL, 1, 0, 15, 1, 11, 20),
(8, 1, '2026-04-18', NULL, 4, 1, 15, 1, 13, 19),
(9, 3, '2026-04-18', '2026-04-18', 1, 0, 30, 1, 13, 20),
(10, 1, '2026-04-18', NULL, 2, 0, 30, 1, 14, 8);

-- --------------------------------------------------------

--
-- Structure de la table `jour_de_la_semaine`
--

CREATE TABLE `jour_de_la_semaine` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jour_de_la_semaine`
--

INSERT INTO `jour_de_la_semaine` (`id`, `nom`) VALUES
(1, 'Lundi'),
(2, 'Mardi'),
(3, 'Mercredi'),
(4, 'Jeudi'),
(5, 'Vendredi');

-- --------------------------------------------------------

--
-- Structure de la table `meo_produit`
--

CREATE TABLE `meo_produit` (
  `id` int(11) NOT NULL,
  `volume_produit` double DEFAULT NULL,
  `produit_id` int(11) DEFAULT NULL,
  `contenant_id` int(11) DEFAULT NULL,
  `unite_volume_id` int(11) DEFAULT NULL,
  `moyen_dosage_id` int(11) DEFAULT NULL,
  `temps_contact_id` int(11) DEFAULT NULL,
  `actif` tinyint(4) NOT NULL DEFAULT 1,
  `date_desactivation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `meo_produit`
--

INSERT INTO `meo_produit` (`id`, `volume_produit`, `produit_id`, `contenant_id`, `unite_volume_id`, `moyen_dosage_id`, `temps_contact_id`, `actif`, `date_desactivation`) VALUES
(1, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL),
(2, 60, 2, 1, 1, 1, 1, 1, NULL),
(3, 60, 3, 3, 1, 2, 4, 1, NULL),
(4, 1, 3, 6, 3, 4, 4, 1, NULL),
(5, NULL, 4, 2, NULL, 1, 1, 1, NULL),
(6, NULL, 5, 1, NULL, 1, 1, 1, NULL),
(7, 30, 6, 3, 1, 2, 4, 1, NULL),
(8, NULL, 7, 3, NULL, 1, 1, 1, NULL),
(9, 3, 8, 3, 1, 2, 1, 1, NULL),
(10, 20, 8, 4, 1, 3, 1, 1, NULL),
(11, 40, 8, 5, 1, 3, 1, 1, NULL),
(12, 20, 8, 8, 1, 3, 1, 1, NULL),
(13, NULL, 9, 2, NULL, 1, 4, 1, NULL),
(14, 3, 10, 3, 1, 2, 1, 1, NULL),
(15, 40, 10, 4, 1, 3, 1, 1, NULL),
(16, 40, 10, 5, 1, 3, 1, 1, NULL),
(17, 80, 11, 5, 1, 1, 1, 1, NULL),
(18, NULL, 12, 3, NULL, 1, 1, 1, NULL),
(19, 1, 12, 7, 3, 4, 1, 1, NULL),
(20, NULL, 14, 1, NULL, 1, 1, 1, NULL),
(21, 48, 15, 3, 1, 2, 5, 1, NULL),
(22, 100, 15, 4, 1, 3, 5, 1, NULL),
(23, 240, 15, 5, 1, 3, 5, 1, NULL),
(24, 15, 16, 3, 1, 2, 1, 1, NULL),
(25, 20, 16, 5, 1, 3, 1, 1, NULL),
(26, 1, 17, 6, 3, 4, 1, 1, NULL),
(27, NULL, 18, 2, NULL, 1, 1, 1, NULL),
(28, 3, 19, 3, 1, 2, 4, 1, NULL),
(29, 40, 19, 4, 1, 3, 4, 1, NULL),
(30, 40, 19, 5, 1, 3, 4, 1, NULL),
(31, NULL, 20, 1, NULL, 1, 2, 1, NULL),
(32, NULL, 21, 2, NULL, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `moyen_dosage`
--

CREATE TABLE `moyen_dosage` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `picto` varchar(50) DEFAULT NULL,
  `actif` tinyint(4) NOT NULL DEFAULT 1,
  `date_desactivation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `moyen_dosage`
--

INSERT INTO `moyen_dosage` (`id`, `nom`, `code`, `picto`, `actif`, `date_desactivation`) VALUES
(1, 'Pres à l\'emploi', 'PE', NULL, 1, NULL),
(2, 'Dosage Manuel', 'DM', '2.png', 1, NULL),
(3, 'Dosage Pompe', 'DP', '3.png', 1, NULL),
(4, 'Dosage automatique', 'DA', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `necessaire`
--

CREATE TABLE `necessaire` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `code` varchar(50) NOT NULL,
  `type_necessaire_id` int(11) NOT NULL,
  `actif` tinyint(4) NOT NULL DEFAULT 1,
  `date_desactivation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `necessaire`
--

INSERT INTO `necessaire` (`id`, `nom`, `code`, `type_necessaire_id`, `actif`, `date_desactivation`) VALUES
(4, 'AERER', 'T.01', 4, 1, NULL),
(5, 'ARAIGNER', 'T.02', 4, 1, NULL),
(6, 'CIRER', 'T.03', 4, 1, NULL),
(7, 'DEBOUCHER', 'T.04', 4, 1, NULL),
(8, 'DECAPER', 'T.05', 4, 1, NULL),
(9, 'DEGRAISSER', 'T.06', 4, 1, NULL),
(10, 'DEGRAISSER ENVIRONNEMENT ALIMENTAIRE', 'T.07', 4, 1, NULL),
(11, 'DEPOUSSIERER A SEC', 'T.08', 4, 1, NULL),
(12, 'DEPOUSSIERER HUMIDEMENT', 'T.09', 4, 1, NULL),
(13, 'DESINCRUSTER', 'T.10', 4, 1, NULL),
(14, 'DESINFECTER', 'T.11', 4, 1, NULL),
(15, 'DESINFECTER ENVIRONNEMENT ALIMENTAIRE', 'T.12', 4, 1, NULL),
(16, 'DESINFECTER PEAU', 'T.13', 4, 1, NULL),
(17, 'DESODORISER', 'T.14', 4, 1, NULL),
(18, 'DETARTRER', 'T.15', 4, 1, NULL),
(19, 'LAVER', 'T.16', 4, 1, NULL),
(20, 'LAVER ENVIRONNEMENT ALIMENTAIRE', 'T.17', 4, 1, NULL),
(21, 'LAVER REUTILISABLE', 'T.18', 4, 1, NULL),
(22, 'LAVER PEAU', 'T.19', 4, 1, NULL),
(23, 'LUSTRER', 'T.20', 4, 1, NULL),
(24, 'SECURISER', 'T.21', 4, 1, NULL),
(25, 'PROTEGER', 'T.22', 4, 1, NULL),
(26, 'RACLER', 'T.23', 4, 1, NULL),
(27, 'RACLER ENVIRONNEMENT ALIMENTAIRE', 'T.24', 4, 1, NULL),
(28, 'RAMASSER', 'T.25', 4, 1, NULL),
(29, 'Recurer', 'T.26', 4, 1, NULL),
(30, 'REMPLIR', 'T.27', 4, 1, NULL),
(31, 'RINCER', 'T.28', 4, 1, NULL),
(32, 'RINCER ENVIRONNEMENT ALIMENTAIRE', 'T.29', 4, 1, NULL),
(33, 'SECHER', 'T.30', 4, 1, NULL),
(34, 'VIDER', 'T.31', 4, 1, NULL),
(35, 'SECHER ENVIRONNEMENT ALIMENTAIRE', 'T.32', 4, 1, NULL),
(36, 'Canalisation', 'SUP.01', 5, 1, NULL),
(37, 'Dessus de mobilier', 'SUP.02', 5, 1, NULL),
(38, 'Réservoir, dévidoir', 'SUP.03', 5, 1, NULL),
(39, 'Ouvrant d’une menuiserie', 'SUP.04', 5, 1, NULL),
(40, 'Electroménager', 'SUP.05', 5, 1, NULL),
(41, 'Mains', 'SUP.06', 5, 1, NULL),
(42, 'Individu', 'SUP.07', 5, 1, NULL),
(43, 'Plafond', 'SUP.08', 5, 1, NULL),
(44, 'Poubelle', 'SUP.09', 5, 1, NULL),
(45, 'Reutilisable', 'SUP.10', 5, 1, NULL),
(46, 'Sol bois', 'SUP.11', 5, 1, NULL),
(47, 'Sol carrelé', 'SUP.12', 5, 1, NULL),
(48, 'Sol Thermoplastique', 'SUP.13', 5, 1, NULL),
(49, 'Surface alimentaire', 'SUP.14', 5, 1, NULL),
(50, 'Surface sanitaire', 'SUP.15', 5, 1, NULL),
(51, 'Surface Vitrée', 'SUP.16', 5, 1, NULL),
(52, 'tous types de sols', 'SUP.17', 5, 1, NULL),
(53, 'tous types de sols hors bois', 'SUP.18', 5, 1, NULL),
(54, 'tous types de surfaces', 'SUP.19', 5, 1, NULL),
(55, 'Vaisselle', 'SUP.20', 5, 1, NULL),
(56, 'MAIN', 'MAT.00', 1, 1, NULL),
(57, 'ASPIRATEUR', 'MAT.01', 1, 1, NULL),
(58, 'RACLETTE POLYPRO MOUSSE EVAZOTE BLANCHE', 'MAT.02', 1, 1, NULL),
(59, 'ASPIRATEUR EAU / POUSSIERE', 'MAT.03', 1, 1, NULL),
(60, 'AUTOLAVEUSE COLUMBUS', 'MAT.04', 1, 1, NULL),
(61, 'AUTOLAVEUSE ICA CT15', 'MAT.05', 1, 1, NULL),
(62, 'AUTOLAVEUSE ICA CT45', 'MAT.06', 1, 1, NULL),
(63, 'AUTOLAVEUSE ICA CT80', 'MAT.07', 1, 1, NULL),
(64, 'BALAI DE LAVAGE A PLAT FIXE', 'MAT.08', 1, 1, NULL),
(65, 'BALAI DE LAVAGE A PLAT PLIABLE', 'MAT.09', 1, 1, NULL),
(66, 'BALAI BROSSE FIBRE CHIENDENT', 'MAT.10', 1, 1, NULL),
(67, 'BALAI BROSSE FIBRE POLYESTER BLANCHE', 'MAT.11', 1, 1, NULL),
(68, 'BALAI CISEAU', 'MAT.12', 1, 1, NULL),
(69, 'BALAI COCO', 'MAT.13', 1, 1, NULL),
(70, 'TETE DE LOUP', 'MAT.14', 1, 1, NULL),
(71, 'BALAI TRAPEZE POUR GAZE IMPREGNEE', 'MAT.15', 1, 1, NULL),
(72, 'BALAI TRAPEZE DELTA FIXE VELCRO vert 40 cm', 'MAT.16', 1, 1, NULL),
(73, 'BALAI TRAPEZE DELTA FIXE VELCRO vert 80 cm', 'MAT.17', 1, 1, NULL),
(74, 'ETENDOIR A LINGE', 'MAT.18', 1, 1, NULL),
(75, 'DEBOUCHEUR A AIR', 'MAT.19', 1, 1, NULL),
(76, 'DELTAFLEX', 'MAT.20', 1, 1, NULL),
(77, 'Caisse de reutilisable', 'MAT.21', 1, 1, NULL),
(78, 'GRATTOIR A LAME', 'MAT.22', 1, 1, NULL),
(79, 'Kit lavage manuel', 'MAT.23', 1, 1, NULL),
(80, 'LAVE-LINGE', 'MAT.24', 1, 1, NULL),
(81, 'LAVE-VAISSELLE A CAPOT', 'MAT.25', 1, 1, NULL),
(82, 'LAVE-VITRE A BATTERIE', 'MAT.26', 1, 1, NULL),
(83, 'CHARIOT PRE-IMPREGNATION', 'MAT.27', 1, 1, NULL),
(84, 'MINI MONOBROSSE A BATTERIE', 'MAT.28', 1, 1, NULL),
(85, 'MONOBROSSE BASSE VITESSE', 'MAT.29', 1, 1, NULL),
(86, 'MONOBROSSE HAUTE VITESSE', 'MAT.30', 1, 1, NULL),
(87, 'VENTOUSE', 'MAT.31', 1, 1, NULL),
(88, 'PINCE RAMASSE DECHETS', 'MAT.32', 1, 1, NULL),
(89, 'RACLETTE A BARRETTE LAME CAOUTCHOUC', 'MAT.33', 1, 1, NULL),
(90, 'SECHE-LINGE A CONDENSATION', 'MAT.34', 1, 1, NULL),
(91, 'BALAI CAOUTCHOUC', 'MAT.35', 1, 1, NULL),
(92, 'PORTE PAD', 'MAT.36', 1, 1, NULL),
(93, 'pas de reutilisable', 'REU.00', 2, 1, NULL),
(94, 'Lavette microperforée non tissée blanche', 'REU.01', 2, 1, NULL),
(95, 'Lavette microperforée non tissée verte', 'REU.02', 2, 1, NULL),
(96, 'Lavette microperforée non tissée jaune', 'REU.03', 2, 1, NULL),
(97, 'Lavette microperforée non tissée rouge', 'REU.04', 2, 1, NULL),
(98, 'Chiffonnette tissée microfibre bleue', 'REU.05', 2, 1, NULL),
(99, 'Disque blanc de lustrage', 'REU.06', 2, 1, NULL),
(100, 'Disque rouge de nettoyage, méthode spray', 'REU.07', 2, 1, NULL),
(101, 'Disque vert de nettoyage, décapage léger', 'REU.08', 2, 1, NULL),
(102, 'Serpillière', 'REU.09', 2, 1, NULL),
(103, 'Bandeau de lavage à frange', 'REU.10', 2, 1, NULL),
(104, 'Bandeau de lavage', 'REU.11', 2, 1, NULL),
(105, 'Bandeau de lavage DELTA', 'REU.12', 2, 1, NULL),
(106, 'Poignée tampon noir', 'REU.13', 2, 1, NULL),
(107, 'Poignée à récurer Hipro-pourpre', 'REU.14', 2, 1, NULL),
(108, 'Tampon à récurer', 'REU.15', 2, 1, NULL),
(109, 'Microfibre DELTAFLEX', 'REU.16', 2, 1, NULL),
(110, 'Bandeau de dépoussiérage 40 cm', 'REU.17', 2, 1, NULL),
(111, 'Franges pour balai ciseau', 'REU.18', 2, 1, NULL),
(112, 'Chiffonnette microfilaments spéciale vitre bleue', 'REU.19', 2, 1, NULL),
(113, 'Chiffonnette tissée microfibre verte', 'REU.20', 2, 1, NULL),
(114, 'Chiffonnette tissée microfibre rouge', 'REU.21', 2, 1, NULL),
(115, 'Chiffonnette tissée microfibre jaune', 'REU.22', 2, 1, NULL),
(116, 'Gilet haute-visibilité', 'REU.23', 2, 1, NULL),
(117, 'Mouilleur microfibre', 'REU.24', 2, 1, NULL),
(118, 'Bandeau de dépoussiérage 80 cm', 'REU.25', 2, 1, NULL),
(119, 'Patin', 'REU.26', 2, 1, NULL),
(120, 'Disque Pad rouge', 'REU.27', 2, 1, NULL),
(121, 'Filet à linge', 'REU.28', 2, 1, NULL),
(122, 'Lunette de protection', 'REU.29', 2, 1, NULL),
(123, 'Masque à cartouche', 'REU.30', 2, 1, NULL),
(124, 'Chiffonnette tissée microfibre grise', 'REU.31', 2, 1, NULL),
(125, 'Pad', 'REU.32', 2, 1, NULL),
(126, 'pas d\'accessoire', 'ACC.00', 3, 1, NULL),
(127, 'Manche télescopique', 'ACC.01', 3, 1, NULL),
(128, 'Porte-disque', 'ACC.02', 3, 1, NULL),
(129, 'Brosse à réccurer', 'ACC.03', 3, 1, NULL),
(130, 'Brosse de lavage', 'ACC.04', 3, 1, NULL),
(131, 'Chariot de lavage double seau', 'ACC.05', 3, 1, NULL),
(132, 'Station de lavage', 'ACC.06', 3, 1, NULL),
(133, 'Accessoires aspirateur', 'ACC.07', 3, 1, NULL),
(134, 'Manche DELTAFLEX', 'ACC.08', 3, 1, NULL),
(135, 'Pelle / Balayette', 'ACC.09', 3, 1, NULL),
(136, 'Seau', 'ACC.10', 3, 1, NULL),
(137, 'Perche télescopique lave-vitre', 'ACC.11', 3, 1, NULL),
(138, 'seau préimprégnation', 'ACC.12', 3, 1, NULL),
(139, 'chariot de voirie', 'ACC.13', 3, 1, NULL),
(140, 'clé distributeur', 'ACC.14', 3, 1, NULL),
(141, 'clé distributeur savon', 'ACC.15', 3, 1, NULL),
(142, 'minibrosse cylindrique', 'ACC.16', 3, 1, NULL),
(143, 'minibrosse standard', 'ACC.17', 3, 1, NULL),
(144, 'arrosoir', 'ACC.18', 3, 1, NULL),
(145, 'panneau de signalisation sol glissant', 'ACC.19', 3, 1, NULL),
(146, 'pelle aéroport', 'ACC.20', 3, 1, NULL),
(147, 'rampe de chargement, déchargement', 'ACC.21', 3, 1, NULL),
(148, 'rallonge électrique', 'ACC.22', 3, 1, NULL),
(149, 'brush mop', 'ACC.23', 3, 1, NULL),
(150, 'Tuyau d\'eau', 'ACC.24', 3, 1, NULL),
(151, 'pas de consommable', 'CON.00', 6, 1, NULL),
(152, 'gants MAPA', 'CON.01', 6, 1, NULL),
(153, 'Sac aspirateur', 'CON.02', 6, 1, NULL),
(154, 'Gaze imprégnée', 'CON.03', 6, 1, NULL),
(155, 'essuie-tout', 'CON.04', 6, 1, NULL),
(156, 'gant jetable', 'CON.05', 6, 1, NULL),
(157, 'charlotte jetable', 'CON.06', 6, 1, NULL),
(158, 'sur-chaussures jetables', 'CON.07', 6, 1, NULL),
(159, 'tablier jetable', 'CON.08', 6, 1, NULL),
(160, 'sachet serviette hygiénique', 'CON.09', 6, 1, NULL),
(161, 'essuie-main papier', 'CON.10', 6, 1, NULL),
(162, 'papier hygiénique jumbo', 'CON.11', 6, 1, NULL),
(163, 'papier hygiénique TORK Premium', 'CON.12', 6, 1, NULL),
(164, 'serviette enchevêtrée', 'CON.13', 6, 1, NULL),
(165, 'sac poubelle jaune', 'CON.14', 6, 1, NULL),
(166, 'sac poubelle bleu', 'CON.15', 6, 1, NULL),
(167, 'sac poubelle blanc 20 L', 'CON.16', 6, 1, NULL),
(168, 'sac poubelle transparent 110 L', 'CON.17', 6, 1, NULL),
(169, 'sac poubelle noir 50 L', 'CON.18', 6, 1, NULL),
(170, 'sac poubelle noir 100 L', 'CON.19', 6, 1, NULL),
(171, 'sac poubelle noir 110 L', 'CON.20', 6, 1, NULL),
(172, 'sac poubelle noir 130 L', 'CON.21', 6, 1, NULL),
(173, 'lame de grattoir', 'CON.22', 6, 1, NULL),
(174, 'lame caoutchouc pour raclette', 'CON.23', 6, 1, NULL),
(175, 'sac poubelle blanc 30 L', 'CON.24', 6, 1, NULL),
(176, 'Masque à usage unique', 'CON.25', 6, 1, NULL),
(177, 'sac poubelle', 'CON.26', 6, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `plage`
--

CREATE TABLE `plage` (
  `id` int(11) NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `intervention_id` int(11) DEFAULT NULL,
  `jour_de_la_semaine_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plage`
--

INSERT INTO `plage` (`id`, `heure_debut`, `heure_fin`, `intervention_id`, `jour_de_la_semaine_id`) VALUES
(1, '09:00:00', '10:00:00', 1, 1),
(2, '10:00:00', '11:15:00', 1, 5),
(3, '08:00:00', '10:00:00', 4, 3),
(4, '08:59:00', '11:00:00', 5, 1),
(5, '14:00:00', '20:00:00', 5, 4),
(26, '08:00:00', '08:15:00', 7, 1),
(27, '08:00:00', '10:00:00', 2, 1),
(28, '20:00:00', '21:00:00', 6, 1),
(29, '15:00:00', '17:00:00', 6, 4),
(30, '09:00:00', '11:00:00', 8, 2),
(31, '15:00:00', '17:00:00', 8, 3),
(38, '08:00:00', '10:00:00', 9, 1),
(39, '07:00:00', '10:00:00', 9, 2),
(40, '05:00:00', '10:00:00', 9, 4),
(41, '08:00:00', '11:00:00', 10, 1),
(42, '08:00:00', '10:00:00', 10, 5);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `couleur` varchar(20) DEFAULT NULL,
  `code` varchar(10) NOT NULL,
  `actif` tinyint(4) NOT NULL,
  `date_desactivation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `couleur`, `code`, `actif`, `date_desactivation`) VALUES
(1, 'Pas de produit', NULL, 'P.00', 1, NULL),
(2, 'ECOWAY Coloway L Biotraitement préventif des canalisations', NULL, 'P.01', 1, NULL),
(3, 'GREEN-CARE Apesin C300 F', NULL, 'P.02', 1, NULL),
(4, 'CHRYSTEYNS Chriox Hand Wash', NULL, 'P.03', 1, NULL),
(5, 'IVERSEY Taski Jontec Lenio F5b', NULL, 'P.04', 1, NULL),
(6, 'ENZYPIN Actipur détartrant désinfectant sanitaires', 'rouge', 'P.05', 1, NULL),
(7, 'ENZYPIN Détergent surfaces vitrées', 'bleu', 'P.06', 1, NULL),
(8, 'ENZYPIN détergent tous sols et multi-surfaces', 'vert', 'P.07', 1, NULL),
(9, 'FOOD-LINE lavage manuel bactéricide', NULL, 'P.08', 1, NULL),
(10, 'GREEN-LINE Dégraissant multi-usages', NULL, 'P.09', 1, NULL),
(11, 'GREEN-LINE Lessive liquide linge', NULL, 'P.10', 1, NULL),
(12, 'GREEN-CARE Grease power', NULL, 'P.11', 1, NULL),
(13, 'GREEN-LINE Rinçage vaisselle toutes eaux', NULL, 'P.12', 1, NULL),
(14, 'GREEN-CARE Cream lemon', NULL, 'P.13', 1, NULL),
(15, 'GREEN-CARE Linax stripper', NULL, 'P.14', 1, NULL),
(16, 'GREEN-LINE Tawip vioclean', NULL, 'P.15', 1, NULL),
(17, 'GREEN-LINE Lavage vaisselle eau dure', NULL, 'P.16', 1, NULL),
(18, 'GREEN-LINE savon mains & corps', NULL, 'P.17', 1, NULL),
(19, 'LE VRAI PROFESSIONNEL Bactopin plus', 'jaune', 'P.18', 1, NULL),
(20, 'PURELL Lingettes anti-microbiennes plus', NULL, 'P.19', 1, NULL),
(21, 'ZEP Instant hand sanizer blue', NULL, 'P.20', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `redacteur`
--

CREATE TABLE `redacteur` (
  `id` int(11) NOT NULL,
  `initial` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `redacteur`
--

INSERT INTO `redacteur` (`id`, `initial`) VALUES
(1, 'BB'),
(2, 'CL'),
(3, 'SB'),
(4, 'NT'),
(5, 'VP'),
(6, 'FA');

-- --------------------------------------------------------

--
-- Structure de la table `sites_client`
--

CREATE TABLE `sites_client` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `client_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sites_client`
--

INSERT INTO `sites_client` (`id`, `nom`, `client_id`) VALUES
(3, 'TGS', 1),
(4, 'Origen Messei', 4),
(5, 'JM Moteur', 5),
(6, 'MAS communs et couloirs', 7),
(7, 'Imprimerie Atelier et administratif', 8),
(8, 'Locaux administratif et communs', 10),
(9, 'Salle d\'activitées et de loisir CDC', 11),
(10, 'Garage poid lourd', 12),
(11, 'Algéco', 12),
(12, 'Administratif', 12),
(13, 'Origen Domfront', 13),
(14, 'Batiment administratif et atelier', 14),
(15, 'Magasin', 15),
(16, 'SAVS Domfront', 16),
(18, 'Henry site Domfront', 9);

-- --------------------------------------------------------

--
-- Structure de la table `support_client`
--

CREATE TABLE `support_client` (
  `id` int(11) NOT NULL,
  `zones_client_id` int(11) DEFAULT NULL,
  `type_support_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `support_client`
--

INSERT INTO `support_client` (`id`, `zones_client_id`, `type_support_id`) VALUES
(1, 2, 11),
(2, 2, 35),
(3, 3, 10),
(8, 10, 18),
(9, 10, 19),
(11, 10, 34),
(14, 10, 2),
(15, 10, 5),
(16, 10, 24),
(17, 10, 10),
(18, 11, 15),
(19, 11, 16),
(20, 11, 17),
(21, 11, 24),
(22, 11, 28),
(23, 11, 11),
(24, 11, 20),
(25, 11, 5),
(26, 11, 31),
(27, 10, 35),
(28, 10, 15),
(29, 10, 25),
(30, 10, 27),
(31, 10, 17),
(32, 10, 9),
(33, 12, 38),
(34, 12, 19),
(35, 12, 3),
(36, 12, 34),
(37, 12, 8),
(38, 12, 30),
(39, 12, 37),
(40, 12, 5),
(41, 12, 4),
(42, 12, 10),
(43, 10, 33),
(45, 13, 26),
(46, 13, 38),
(47, 13, 7),
(48, 13, 19),
(49, 13, 10),
(50, 13, 17),
(51, 14, 17),
(52, 14, 27),
(53, 14, 2),
(54, 14, 1),
(55, 14, 18),
(56, 14, 19),
(57, 14, 38),
(58, 14, 9),
(59, 14, 10),
(60, 3, 39),
(61, 13, 32),
(62, 35, 1),
(63, 35, 5),
(64, 36, 28),
(65, 36, 31),
(66, 36, 29),
(67, 37, 1),
(68, 37, 32),
(69, 38, 10),
(70, 39, 3),
(71, 39, 10),
(72, 40, 28),
(73, 40, 31),
(74, 41, 10),
(75, 41, 5),
(76, 42, 1),
(77, 42, 2),
(78, 43, 10),
(79, 43, 3),
(80, 44, 28),
(81, 44, 31),
(82, 45, 30),
(83, 45, 32),
(84, 46, 28),
(85, 46, 31),
(86, 46, 29),
(87, 47, 2),
(88, 47, 32),
(89, 48, 30),
(90, 48, 32),
(91, 49, 32),
(92, 49, 3),
(93, 50, 10),
(94, 50, 3),
(95, 51, 10),
(96, 51, 7),
(97, 52, 32),
(98, 52, 2),
(99, 53, 28),
(100, 53, 31),
(101, 54, 28),
(102, 54, 29),
(103, 55, 30),
(104, 55, 32),
(105, 55, 34);

-- --------------------------------------------------------

--
-- Structure de la table `supp_inter`
--

CREATE TABLE `supp_inter` (
  `id` int(11) NOT NULL,
  `ordre` int(11) DEFAULT NULL,
  `support_id` int(11) NOT NULL,
  `inter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `supp_inter`
--

INSERT INTO `supp_inter` (`id`, `ordre`, `support_id`, `inter_id`) VALUES
(7, 1, 19, 3),
(8, 2, 26, 3),
(9, 3, 18, 3),
(10, 4, 21, 3),
(11, 1, 33, 4),
(12, 2, 42, 4),
(13, 3, 40, 4),
(96, 1, 20, 7),
(97, 2, 26, 7),
(98, 1, 14, 2),
(99, 2, 9, 2),
(100, 3, 8, 2),
(101, 1, 43, 6),
(102, 2, 31, 6),
(103, 3, 14, 6),
(104, 4, 17, 6),
(105, 5, 8, 6),
(106, 6, 30, 6),
(107, 7, 32, 6),
(108, 8, 9, 6),
(121, 1, 50, 9),
(122, 2, 47, 9),
(124, 4, 48, 9),
(125, 5, 46, 9),
(126, 6, 45, 9),
(127, 7, 49, 9),
(128, 1, 51, 10),
(129, 2, 54, 10),
(130, 3, 53, 10);

-- --------------------------------------------------------

--
-- Structure de la table `supp_inter_actions`
--

CREATE TABLE `supp_inter_actions` (
  `supp_inter_id` int(11) NOT NULL,
  `actions_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `ordre` int(11) DEFAULT NULL,
  `frequence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `supp_inter_actions`
--

INSERT INTO `supp_inter_actions` (`supp_inter_id`, `actions_id`, `id`, `ordre`, `frequence`) VALUES
(122, 36, 139, 2, NULL),
(122, 45, 140, 3, NULL),
(124, 45, 142, 3, NULL),
(125, 130, 143, 4, NULL),
(125, 54, 144, 5, NULL),
(126, 43, 145, 6, NULL),
(127, 43, 146, 6, NULL),
(127, 68, 147, 7, NULL),
(129, 45, 149, 2, NULL),
(129, 73, 150, 3, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `temps_contact`
--

CREATE TABLE `temps_contact` (
  `id` int(11) NOT NULL,
  `temps_contact` int(11) NOT NULL,
  `picto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `temps_contact`
--

INSERT INTO `temps_contact` (`id`, `temps_contact`, `picto`) VALUES
(1, 0, NULL),
(2, 1, NULL),
(3, 2, NULL),
(4, 5, NULL),
(5, 10, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `type_necessaire`
--

CREATE TABLE `type_necessaire` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `obligatoire` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_necessaire`
--

INSERT INTO `type_necessaire` (`id`, `nom`, `obligatoire`) VALUES
(1, 'Matériel', 0),
(2, 'Réutilisable', 0),
(3, 'Accessoire', 0),
(4, 'Tache', 1),
(5, 'Support', 1),
(6, 'Consommable', 0);

-- --------------------------------------------------------

--
-- Structure de la table `type_support`
--

CREATE TABLE `type_support` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `picto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_support`
--

INSERT INTO `type_support` (`id`, `nom`, `description`, `picto`) VALUES
(1, 'bureau', NULL, '1.png'),
(2, 'chaise tissu', NULL, '2.png'),
(3, 'chaise non-tissu', NULL, '3.png'),
(4, 'fenêtre hauteur', NULL, '4.png'),
(5, 'fenêtre', NULL, '5.png'),
(6, 'vitrine', NULL, '6.png'),
(7, 'radiateur', NULL, '7.png'),
(8, 'électroménager', NULL, '8.png'),
(9, 'numérique', NULL, '9.png'),
(10, 'sol', NULL, '10.png'),
(11, 'sol carrelé', NULL, '11.png'),
(12, 'sol bois', NULL, '12.png'),
(13, 'sol thermoplastique', NULL, '13.png'),
(14, 'sol béton', NULL, '14.png'),
(15, 'mur', NULL, '15.png'),
(16, 'étagère', NULL, '16.png'),
(17, 'plafond', NULL, '17.png'),
(18, 'armoire haute', NULL, '18.png'),
(19, 'armoire basse', NULL, '19.png'),
(20, 'urinoire', NULL, '20.png'),
(21, 'douche', NULL, '21.png'),
(22, 'faïence', NULL, '22.png'),
(23, 'rideau', NULL, '23.png'),
(24, 'plinthe', NULL, '24.png'),
(25, 'point contact', NULL, '25.png'),
(26, 'tapis', NULL, '26.png'),
(27, 'plante', NULL, '27.png'),
(28, 'toilette', NULL, '28.png'),
(29, 'miroir', NULL, '29.png'),
(30, 'évier', NULL, '30.png'),
(31, 'lavabo', NULL, '31.png'),
(32, 'table', NULL, '32.png'),
(33, 'fontaine', NULL, '33.png'),
(34, 'distributeur', NULL, '34.png'),
(35, 'dévidoir', NULL, '35.png'),
(36, 'vaisselle', NULL, '36.png'),
(37, 'extincteur', NULL, '37.png'),
(38, 'poubelle', NULL, '38.png'),
(39, 'baignoire', NULL, '39.png');

-- --------------------------------------------------------

--
-- Structure de la table `type_zone`
--

CREATE TABLE `type_zone` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `picto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_zone`
--

INSERT INTO `type_zone` (`id`, `nom`, `description`, `picto`) VALUES
(1, 'Salle d’eau', 'douche, bain, salle de bain, sanitaire, eau', '1.png'),
(2, 'Douche', 'douche, sanitaire', '2.png'),
(3, 'Vestiaire', 'casier, sanitaire, vestiaire, douche', '3.png'),
(4, 'Salle de soins', 'infirmerie, medical, soin', '4.png'),
(5, 'Cuisine', 'refectoire, self, kitchenette, alimentaire, cuisine', '5.png'),
(6, 'Réfectoire', 'self, repas, alimentaire, refectoire', '6.png'),
(7, 'Rampe de self', 'self, alimentaire, rampe', '7.png'),
(8, 'Salle de pause', 'refectoire, self, café, alimentaire, salle de pause', '8.png'),
(9, 'Couloir', 'commun, patio, couloir', '9.png'),
(10, 'Escalier', 'escalier, cage, commun', '10.png'),
(11, 'Palier', 'palier, seuil, commun', '11.png'),
(12, 'Cage d’ascenseur', 'ascenseur, cage, commun', '12.png'),
(13, 'Salle d’attente', 'attente, commun', '13.png'),
(14, 'Hall d\'entrée', 'entrée, accueil', '14.png'),
(15, 'Terrasse', 'pergola, terrasse, exterieur, commun', '15.png'),
(16, 'Veranda', 'veranda, pergola, terrasse, exterieur, commun', '16.png'),
(17, 'Bibliothèque', 'livre, bibliothèque, commun, lecture', '17.png'),
(18, 'Bureau', 'bureau, travail', '18.png'),
(19, 'Salle de réunion', 'réunion, salle, travail, presentation', '19.png'),
(20, 'Salle informatique', 'informatique, ordinateur, travail', '20.png'),
(21, 'Salle de classe', 'cours, classe, salle', '21.png'),
(22, 'Salle de sport', 'salle, musculation, sport', '22.png'),
(23, 'Atelier', 'atelier, industriel, grange, production', '23.png'),
(24, 'Atelier de stockage', 'depot, stockage, reserve, production, rangement', '24.png'),
(25, 'Quai', 'quai, logistique, camion, arrivage', '25.png'),
(26, 'Local technique', 'maintenance, technique, rangement', NULL),
(27, 'Local archive', 'archive, rangement', NULL),
(28, 'Sanitaire', 'wc, sanitaire, toilette', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `unite_volume`
--

CREATE TABLE `unite_volume` (
  `id` int(11) NOT NULL,
  `nom` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `unite_volume`
--

INSERT INTO `unite_volume` (`id`, `nom`) VALUES
(1, 'ml'),
(2, 'L'),
(3, '%');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'margueray.marius@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$rT.EU3L1vZwQL90HdA4PLeG0peetLrD/xXihfbIDggigYFGZijiIK'),
(2, 'tribouillard.max@gmail.com', '[]', '$2y$13$wUioJSL.dlgQdYOrudDWQu4ehqK/WGabJ92hplfgYT..6d6rHmw.C'),
(3, 'admin@esat.fr', '[\"ROLE_ADMIN\"]', '$2y$13$vyNS3Z3/jVB2dkuMmd4sfuM84U1WLCjc5mx5yuXR07mLEt3U3cbGC'),
(6, 'estel@esat.fr', '[\"ROLE_ADMIN\"]', '$2y$13$5hdk5z85.QjJSuSjAK3Hlecgdd.trcIqiUtAmeAkjKwRO8TP533sG'),
(8, 'admin@easycleanesat.fr', '[\"ROLE_ADMIN\"]', '$2y$13$BUlth4N/PmoCmis1t2k97.X8.e0aOxpkje02VwYdwmbbxQuDFcZfa'),
(9, 'Jury@caen.info', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$2y$13$b.hp1uZiufshd9U./.sy7eMsKAIkR6KvB2.hW0u59anm2Co2E2DN.');

-- --------------------------------------------------------

--
-- Structure de la table `vigilance`
--

CREATE TABLE `vigilance` (
  `id` int(11) NOT NULL,
  `definition` varchar(255) DEFAULT NULL,
  `picto` varchar(50) DEFAULT NULL,
  `actif` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vigilance`
--

INSERT INTO `vigilance` (`id`, `definition`, `picto`, `actif`) VALUES
(1, 'Prévenir avant l\'intervention', NULL, 1),
(2, 'Attendre le départ du personnel', NULL, 1),
(3, 'Attention environnement fragile', NULL, 1),
(4, 'Attention environnement dangereux, risque de chute', NULL, 1),
(5, 'Vérifier qu\'il n\'y a pas d\'indicateur \"Ne pas déranger\" sur la porte.', NULL, 1),
(6, 'Badge nominatif obligatoire', NULL, 1),
(7, 'Attention risque de co-activités, engins, manutention…', NULL, 1),
(8, 'Besoin d\'un code d\'accès', NULL, 1),
(9, 'Environnement alimentaire, technique à adapter: Produit spécifique et un rinçage.', NULL, 1),
(10, 'Devoir de confidentialité', NULL, 1),
(11, 'Frapper avant d\'entrer', NULL, 1),
(12, 'Ne pas faire l\'électroménager', NULL, 1),
(13, 'Lavage des mains obligatoire', NULL, 1),
(14, 'Ne pas faire la vaiselle', NULL, 1),
(15, 'Ne pas toucher aux ordinateurs en fonctionnement', NULL, 1),
(16, 'Pas de point d\'eau', NULL, 1),
(17, 'Pas de prise électrique', NULL, 1),
(18, 'Ne pas toucher aux dechets médicaux, infectieux (poubelle DASRI)', NULL, 1),
(19, 'Présence de personne vulnérable : Ne pas laisser trainer les produits', NULL, 1),
(20, 'Informer l\'acceuil de notre présence', NULL, 1),
(21, 'Signer le registre visiteurs', NULL, 1),
(22, 'Tri selectrif demandé', NULL, 1),
(23, 'Ne pas oublier les clefs d\'accès client', NULL, 1),
(24, 'Vigilance zone infectieuse', NULL, 1),
(25, 'Zone calme , discrétion demandé', NULL, 1),
(26, 'Déplacer puis ranger le mobilier', NULL, 1),
(27, 'Ne pas toucher aux boitier d\'alarme', NULL, 1),
(28, 'Ne pas toucher au défibrilateur automatique', NULL, 1),
(29, 'Ne pas toucher au bouton incendie', NULL, 1),
(30, 'Ne pas faire tous les sanitaires en même temps', NULL, 1),
(31, 'Faire attention de ne pas mettre de produit sur les denrées alimentaires', NULL, 1),
(32, 'Utiliser des boitiers de porte automatique pour les vitres (voir fiche de sécurité)', NULL, 1),
(33, 'Fournitures rechargeable et sacs fournies par le client', NULL, 1),
(34, 'Sacs poubelles à la charge du client', NULL, 1),
(35, 'Attention ne pas toucher', NULL, 1),
(36, 'Risque de chute', NULL, 1),
(37, 'Ne pas toucher au bureau', NULL, 1),
(38, 'Ne pas faire l\'atelier', NULL, 1),
(39, 'Faire un balayage humide selon le temps', NULL, 1),
(40, 'Attention au passage de la clientèle', NULL, 1),
(41, 'Ne pas vider les poubelles', NULL, 1),
(42, 'Si passage de la monobrosse voir la fiche d\'intervention \"accueil bureau couloir\"', NULL, 1),
(43, 'Ne pas toucher aux instruments de musique', NULL, 1),
(44, 'Tri sélectif ne pas vider les poubelles', NULL, 1),
(45, 'Risque dû aux véhicules', NULL, 1),
(46, 'Ne pas oublier de faire signer le bon de livraisonNe pas oublier de faire signer le bon de livraison', NULL, 1),
(47, 'Si passage de l\'autolaveuse voir la fiche d\'intervention \"Couloir autolaveuse\"', NULL, 1),
(48, 'Gilet jaune obligatoire', NULL, 1),
(49, 'Dérouler en toute sécurité', NULL, 1),
(50, 'Ne pas toucher au panneau d\'affichage', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vigilance_intervention`
--

CREATE TABLE `vigilance_intervention` (
  `id` int(11) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `vigilance_id` int(11) DEFAULT NULL,
  `intervention_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vigilance_intervention`
--

INSERT INTO `vigilance_intervention` (`id`, `detail`, `vigilance_id`, `intervention_id`) VALUES
(10, 'attention si refus ne pas faire la piece', 11, 7),
(11, 'car j\'ai casser le tuyai', 16, 2),
(12, NULL, 13, 6),
(14, NULL, 6, 9),
(15, NULL, 11, 10),
(16, 'Sinon c\'est pas bien !!! ', 5, 10);

-- --------------------------------------------------------

--
-- Structure de la table `zones_client`
--

CREATE TABLE `zones_client` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `sites_client_id` int(11) DEFAULT NULL,
  `type_zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `zones_client`
--

INSERT INTO `zones_client` (`id`, `nom`, `sites_client_id`, `type_zone_id`) VALUES
(2, 'bureau RDC 4', 3, 18),
(3, 'Sanitaire', 3, 2),
(4, 'Salle Chauffeur', 12, NULL),
(9, 'bloc de réunion', 11, 19),
(10, 'Hall d\'accueil', 18, 14),
(11, 'Sanitaire administratif', 18, 28),
(12, 'Salle Chauffeur', 18, 8),
(13, 'Couloir', 18, 9),
(14, 'Bureau administratif 1', 12, 18),
(15, 'Sanitaire atelier', 4, 28),
(16, 'Bureau direction', 4, 18),
(17, 'Cuisine collective', 5, 5),
(18, 'Couloir principal', 5, 9),
(19, 'Vestiaire personnel', 6, 3),
(20, 'Hall entree', 6, 14),
(21, 'Salle de pause', 7, 8),
(22, 'Sanitaire RDC', 7, 28),
(23, 'Bureau accueil', 8, 18),
(24, 'Couloir etage 1', 8, 9),
(25, 'Refectoire', 9, 6),
(26, 'Terrasse', 9, 15),
(27, 'Sanitaire vestiaires', 10, 28),
(28, 'Bureau administratif', 12, 18),
(29, 'Salle de reunion', 12, 19),
(30, 'Cuisine', 13, 5),
(31, 'Hall principal', 14, 14),
(32, 'Escalier central', 14, 10),
(33, 'Magasin surface vente', 15, 13),
(34, 'Sanitaire client', 15, 28),
(35, 'Bureau accueil', 16, 18),
(36, 'Sanitaire RDC', 16, 28),
(37, 'Salle de reunion', 16, 19),
(38, 'Couloir principal', 16, 9),
(39, 'Vestiaire', 11, 3),
(40, 'Sanitaire', 11, 28),
(41, 'Hall entree', 13, 14),
(42, 'Bureau direction', 13, 18),
(43, 'Vestiaire mecaniciens', 10, 3),
(44, 'Sanitaire atelier', 10, 28),
(45, 'Cuisine collective', 4, 5),
(46, 'Sanitaire public', 9, 28),
(47, 'Salle de pause', 6, 8),
(48, 'Cuisine', 6, 5),
(49, 'Refectoire', 14, 6),
(50, 'Vestiaire personnel', 14, 3),
(51, 'Couloir RDC', 3, 9),
(52, 'Salle de pause', 8, 8),
(53, 'Sanitaire', 5, 28),
(54, 'Sanitaire client', 15, 28),
(55, 'Cuisine', 7, 5),
(56, 'Bureau', 3, 18);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_548F1EFA47E23EE` (`meo_produit_id`);

--
-- Index pour la table `actions_necessaire`
--
ALTER TABLE `actions_necessaire`
  ADD PRIMARY KEY (`actions_id`,`necessaire_id`),
  ADD KEY `IDX_6F91B89BB15F4BF6` (`actions_id`),
  ADD KEY `IDX_6F91B89B4A496C65` (`necessaire_id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contenant`
--
ALTER TABLE `contenant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AE3E49A1B292AAF` (`unite_volume_id`);

--
-- Index pour la table `contrat`
--
ALTER TABLE `contrat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_60349993F8F85AE9` (`sites_client_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `element_securite`
--
ALTER TABLE `element_securite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `element_securite_intervention`
--
ALTER TABLE `element_securite_intervention`
  ADD PRIMARY KEY (`element_securite_id`,`intervention_id`),
  ADD KEY `IDX_BD1F4757DDD7F29E` (`element_securite_id`),
  ADD KEY `IDX_BD1F47578EAE3863` (`intervention_id`);

--
-- Index pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D11814AB764D0490` (`redacteur_id`),
  ADD KEY `IDX_D11814ABF810C6CC` (`zones_client_id`),
  ADD KEY `IDX_D11814AB1823061F` (`contrat_id`);

--
-- Index pour la table `jour_de_la_semaine`
--
ALTER TABLE `jour_de_la_semaine`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `meo_produit`
--
ALTER TABLE `meo_produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7C1C39A1F347EFB` (`produit_id`),
  ADD KEY `IDX_7C1C39A15E211B2E` (`contenant_id`),
  ADD KEY `IDX_7C1C39A1B292AAF` (`unite_volume_id`),
  ADD KEY `IDX_7C1C39A1DC01C6E0` (`moyen_dosage_id`),
  ADD KEY `IDX_7C1C39A1AB3FFB8F` (`temps_contact_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0E3BD61CE16BA31DBBF396750` (`queue_name`,`available_at`,`delivered_at`,`id`);

--
-- Index pour la table `moyen_dosage`
--
ALTER TABLE `moyen_dosage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `necessaire`
--
ALTER TABLE `necessaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6A33575E3AA4DB50` (`type_necessaire_id`);

--
-- Index pour la table `plage`
--
ALTER TABLE `plage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_107196C98EAE3863` (`intervention_id`),
  ADD KEY `IDX_107196C966E7924B` (`jour_de_la_semaine_id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `redacteur`
--
ALTER TABLE `redacteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites_client`
--
ALTER TABLE `sites_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6B0A760419EB6921` (`client_id`);

--
-- Index pour la table `support_client`
--
ALTER TABLE `support_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4FBEE4A5F810C6CC` (`zones_client_id`),
  ADD KEY `IDX_4FBEE4A51E166220` (`type_support_id`);

--
-- Index pour la table `supp_inter`
--
ALTER TABLE `supp_inter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4382F19C315B405` (`support_id`),
  ADD KEY `IDX_4382F19CE858909E` (`inter_id`);

--
-- Index pour la table `supp_inter_actions`
--
ALTER TABLE `supp_inter_actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_supp_inter_action` (`supp_inter_id`,`actions_id`),
  ADD KEY `IDX_870D170B9C59B617` (`supp_inter_id`),
  ADD KEY `IDX_870D170BB15F4BF6` (`actions_id`);

--
-- Index pour la table `temps_contact`
--
ALTER TABLE `temps_contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_necessaire`
--
ALTER TABLE `type_necessaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_support`
--
ALTER TABLE `type_support`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_zone`
--
ALTER TABLE `type_zone`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `unite_volume`
--
ALTER TABLE `unite_volume`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- Index pour la table `vigilance`
--
ALTER TABLE `vigilance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vigilance_intervention`
--
ALTER TABLE `vigilance_intervention`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5AC80BEE8BD1E831` (`vigilance_id`),
  ADD KEY `IDX_5AC80BEE8EAE3863` (`intervention_id`);

--
-- Index pour la table `zones_client`
--
ALTER TABLE `zones_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2E9A97F7F8F85AE9` (`sites_client_id`),
  ADD KEY `IDX_2E9A97F7B70D505E` (`type_zone_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `contenant`
--
ALTER TABLE `contenant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `contrat`
--
ALTER TABLE `contrat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `element_securite`
--
ALTER TABLE `element_securite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `intervention`
--
ALTER TABLE `intervention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `jour_de_la_semaine`
--
ALTER TABLE `jour_de_la_semaine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `meo_produit`
--
ALTER TABLE `meo_produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `moyen_dosage`
--
ALTER TABLE `moyen_dosage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `necessaire`
--
ALTER TABLE `necessaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT pour la table `plage`
--
ALTER TABLE `plage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `redacteur`
--
ALTER TABLE `redacteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `sites_client`
--
ALTER TABLE `sites_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `support_client`
--
ALTER TABLE `support_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `supp_inter`
--
ALTER TABLE `supp_inter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `supp_inter_actions`
--
ALTER TABLE `supp_inter_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT pour la table `temps_contact`
--
ALTER TABLE `temps_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `type_necessaire`
--
ALTER TABLE `type_necessaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `type_support`
--
ALTER TABLE `type_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `type_zone`
--
ALTER TABLE `type_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `unite_volume`
--
ALTER TABLE `unite_volume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `vigilance`
--
ALTER TABLE `vigilance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `vigilance_intervention`
--
ALTER TABLE `vigilance_intervention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `zones_client`
--
ALTER TABLE `zones_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `FK_548F1EFA47E23EE` FOREIGN KEY (`meo_produit_id`) REFERENCES `meo_produit` (`id`);

--
-- Contraintes pour la table `actions_necessaire`
--
ALTER TABLE `actions_necessaire`
  ADD CONSTRAINT `FK_6F91B89B4A496C65` FOREIGN KEY (`necessaire_id`) REFERENCES `necessaire` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6F91B89BB15F4BF6` FOREIGN KEY (`actions_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `contenant`
--
ALTER TABLE `contenant`
  ADD CONSTRAINT `FK_AE3E49A1B292AAF` FOREIGN KEY (`unite_volume_id`) REFERENCES `unite_volume` (`id`);

--
-- Contraintes pour la table `contrat`
--
ALTER TABLE `contrat`
  ADD CONSTRAINT `FK_60349993F8F85AE9` FOREIGN KEY (`sites_client_id`) REFERENCES `sites_client` (`id`);

--
-- Contraintes pour la table `element_securite_intervention`
--
ALTER TABLE `element_securite_intervention`
  ADD CONSTRAINT `FK_BD1F47578EAE3863` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BD1F4757DDD7F29E` FOREIGN KEY (`element_securite_id`) REFERENCES `element_securite` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD CONSTRAINT `FK_D11814AB1823061F` FOREIGN KEY (`contrat_id`) REFERENCES `contrat` (`id`),
  ADD CONSTRAINT `FK_D11814AB764D0490` FOREIGN KEY (`redacteur_id`) REFERENCES `redacteur` (`id`),
  ADD CONSTRAINT `FK_D11814ABF810C6CC` FOREIGN KEY (`zones_client_id`) REFERENCES `zones_client` (`id`);

--
-- Contraintes pour la table `meo_produit`
--
ALTER TABLE `meo_produit`
  ADD CONSTRAINT `FK_7C1C39A15E211B2E` FOREIGN KEY (`contenant_id`) REFERENCES `contenant` (`id`),
  ADD CONSTRAINT `FK_7C1C39A1AB3FFB8F` FOREIGN KEY (`temps_contact_id`) REFERENCES `temps_contact` (`id`),
  ADD CONSTRAINT `FK_7C1C39A1B292AAF` FOREIGN KEY (`unite_volume_id`) REFERENCES `unite_volume` (`id`),
  ADD CONSTRAINT `FK_7C1C39A1DC01C6E0` FOREIGN KEY (`moyen_dosage_id`) REFERENCES `moyen_dosage` (`id`),
  ADD CONSTRAINT `FK_7C1C39A1F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `necessaire`
--
ALTER TABLE `necessaire`
  ADD CONSTRAINT `FK_6A33575E3AA4DB50` FOREIGN KEY (`type_necessaire_id`) REFERENCES `type_necessaire` (`id`);

--
-- Contraintes pour la table `plage`
--
ALTER TABLE `plage`
  ADD CONSTRAINT `FK_107196C966E7924B` FOREIGN KEY (`jour_de_la_semaine_id`) REFERENCES `jour_de_la_semaine` (`id`),
  ADD CONSTRAINT `FK_107196C98EAE3863` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`id`);

--
-- Contraintes pour la table `sites_client`
--
ALTER TABLE `sites_client`
  ADD CONSTRAINT `FK_6B0A760419EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `support_client`
--
ALTER TABLE `support_client`
  ADD CONSTRAINT `FK_4FBEE4A51E166220` FOREIGN KEY (`type_support_id`) REFERENCES `type_support` (`id`),
  ADD CONSTRAINT `FK_4FBEE4A5F810C6CC` FOREIGN KEY (`zones_client_id`) REFERENCES `zones_client` (`id`);

--
-- Contraintes pour la table `supp_inter`
--
ALTER TABLE `supp_inter`
  ADD CONSTRAINT `FK_4382F19C315B405` FOREIGN KEY (`support_id`) REFERENCES `support_client` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4382F19CE858909E` FOREIGN KEY (`inter_id`) REFERENCES `intervention` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `supp_inter_actions`
--
ALTER TABLE `supp_inter_actions`
  ADD CONSTRAINT `FK_870D170B9C59B617` FOREIGN KEY (`supp_inter_id`) REFERENCES `supp_inter` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_870D170BB15F4BF6` FOREIGN KEY (`actions_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `vigilance_intervention`
--
ALTER TABLE `vigilance_intervention`
  ADD CONSTRAINT `FK_5AC80BEE8BD1E831` FOREIGN KEY (`vigilance_id`) REFERENCES `vigilance` (`id`),
  ADD CONSTRAINT `FK_5AC80BEE8EAE3863` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`id`);

--
-- Contraintes pour la table `zones_client`
--
ALTER TABLE `zones_client`
  ADD CONSTRAINT `FK_2E9A97F7B70D505E` FOREIGN KEY (`type_zone_id`) REFERENCES `type_zone` (`id`),
  ADD CONSTRAINT `FK_2E9A97F7F8F85AE9` FOREIGN KEY (`sites_client_id`) REFERENCES `sites_client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
