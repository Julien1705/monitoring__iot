-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 17 mars 2022 à 18:02
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `monitoring`
--

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

DROP TABLE IF EXISTS `historique`;
CREATE TABLE IF NOT EXISTS `historique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_module` int(11) NOT NULL,
  `name_module` varchar(255) NOT NULL,
  `measured_value` int(11) NOT NULL,
  `temperature` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id`, `id_module`, `name_module`, `measured_value`, `temperature`, `date`) VALUES
(1, 1, 'capteur de mesure de la qualité de l\'air', 23, 23, '2022-03-17 18:58:12'),
(2, 2, 'capteur de température', 12, 31, '2022-03-17 18:58:12'),
(3, 9, 'Capteur stéréoscopique 3D', 23, 35, '2022-03-17 18:58:12'),
(4, 1, 'capteur de mesure de la qualité de l\'air', 24, 24, '2022-03-17 18:58:13'),
(5, 2, 'capteur de température', 10, 30, '2022-03-17 18:58:13'),
(6, 9, 'Capteur stéréoscopique 3D', 25, 36, '2022-03-17 18:58:13'),
(7, 1, 'capteur de mesure de la qualité de l\'air', 25, 25, '2022-03-17 18:58:14'),
(8, 2, 'capteur de température', 8, 31, '2022-03-17 18:58:14'),
(9, 9, 'Capteur stéréoscopique 3D', 28, 35, '2022-03-17 18:58:14'),
(10, 1, 'capteur de mesure de la qualité de l\'air', 23, 26, '2022-03-17 18:58:15'),
(11, 2, 'capteur de température', 7, 32, '2022-03-17 18:58:15'),
(12, 9, 'Capteur stéréoscopique 3D', 29, 36, '2022-03-17 18:58:15'),
(13, 1, 'capteur de mesure de la qualité de l\'air', 21, 27, '2022-03-17 18:58:16'),
(14, 2, 'capteur de température', 4, 31, '2022-03-17 18:58:16'),
(15, 9, 'Capteur stéréoscopique 3D', 28, 35, '2022-03-17 18:58:16'),
(16, 1, 'capteur de mesure de la qualité de l\'air', 24, 28, '2022-03-17 18:58:17'),
(17, 2, 'capteur de température', 7, 32, '2022-03-17 18:58:17'),
(18, 9, 'Capteur stéréoscopique 3D', 25, 36, '2022-03-17 18:58:17'),
(19, 1, 'capteur de mesure de la qualité de l\'air', 21, 29, '2022-03-17 18:58:18'),
(20, 2, 'capteur de température', 8, 31, '2022-03-17 18:58:18'),
(21, 9, 'Capteur stéréoscopique 3D', 24, 37, '2022-03-17 18:58:18'),
(22, 1, 'capteur de mesure de la qualité de l\'air', 23, 30, '2022-03-17 18:58:19'),
(23, 2, 'capteur de température', 10, 32, '2022-03-17 18:58:19'),
(24, 9, 'Capteur stéréoscopique 3D', 22, 36, '2022-03-17 18:58:19'),
(25, 1, 'capteur de mesure de la qualité de l\'air', 24, 31, '2022-03-17 18:58:20'),
(26, 2, 'capteur de température', 11, 33, '2022-03-17 18:58:20'),
(27, 9, 'Capteur stéréoscopique 3D', 19, 37, '2022-03-17 18:58:20'),
(28, 1, 'capteur de mesure de la qualité de l\'air', 25, 32, '2022-03-17 18:58:21'),
(29, 2, 'capteur de température', 12, 34, '2022-03-17 18:58:21'),
(30, 9, 'Capteur stéréoscopique 3D', 18, 38, '2022-03-17 18:58:21'),
(31, 1, 'capteur de mesure de la qualité de l\'air', 28, 33, '2022-03-17 18:58:22'),
(32, 2, 'capteur de température', 13, 33, '2022-03-17 18:58:22'),
(33, 9, 'Capteur stéréoscopique 3D', 21, 37, '2022-03-17 18:58:22'),
(34, 1, 'capteur de mesure de la qualité de l\'air', 25, 32, '2022-03-17 18:59:39'),
(35, 2, 'capteur de température', 12, 32, '2022-03-17 18:59:39'),
(36, 9, 'Capteur stéréoscopique 3D', 20, 38, '2022-03-17 18:59:39'),
(37, 1, 'capteur de mesure de la qualité de l\'air', 24, 33, '2022-03-17 18:59:40'),
(38, 2, 'capteur de température', 10, 31, '2022-03-17 18:59:40'),
(39, 9, 'Capteur stéréoscopique 3D', 17, 37, '2022-03-17 18:59:40'),
(40, 1, 'capteur de mesure de la qualité de l\'air', 27, 34, '2022-03-17 18:59:41'),
(41, 2, 'capteur de température', 11, 32, '2022-03-17 18:59:41'),
(42, 9, 'Capteur stéréoscopique 3D', 16, 38, '2022-03-17 18:59:41'),
(43, 1, 'capteur de mesure de la qualité de l\'air', 25, 35, '2022-03-17 18:59:42'),
(44, 2, 'capteur de température', 10, 33, '2022-03-17 18:59:42'),
(45, 9, 'Capteur stéréoscopique 3D', 13, 39, '2022-03-17 18:59:42'),
(46, 1, 'capteur de mesure de la qualité de l\'air', 22, 36, '2022-03-17 18:59:43'),
(47, 2, 'capteur de température', 11, 34, '2022-03-17 18:59:43'),
(48, 9, 'Capteur stéréoscopique 3D', 11, 40, '2022-03-17 18:59:43'),
(49, 1, 'capteur de mesure de la qualité de l\'air', 25, 37, '2022-03-17 18:59:44'),
(50, 2, 'capteur de température', 9, 33, '2022-03-17 18:59:44'),
(51, 9, 'Capteur stéréoscopique 3D', 14, 41, '2022-03-17 18:59:44'),
(52, 1, 'capteur de mesure de la qualité de l\'air', 24, 38, '2022-03-17 18:59:45'),
(53, 2, 'capteur de température', 6, 34, '2022-03-17 18:59:45'),
(54, 9, 'Capteur stéréoscopique 3D', 13, 42, '2022-03-17 18:59:45'),
(55, 1, 'capteur de mesure de la qualité de l\'air', 21, 39, '2022-03-17 18:59:46'),
(56, 2, 'capteur de température', 9, 35, '2022-03-17 18:59:46'),
(57, 9, 'Capteur stéréoscopique 3D', 12, 43, '2022-03-17 18:59:46'),
(58, 1, 'capteur de mesure de la qualité de l\'air', 18, 40, '2022-03-17 18:59:47'),
(59, 2, 'capteur de température', 6, 36, '2022-03-17 18:59:47'),
(60, 9, 'Capteur stéréoscopique 3D', 9, 42, '2022-03-17 18:59:47'),
(61, 1, 'capteur de mesure de la qualité de l\'air', 19, 39, '2022-03-17 18:59:48'),
(62, 2, 'capteur de température', 3, 37, '2022-03-17 18:59:48'),
(63, 9, 'Capteur stéréoscopique 3D', 6, 43, '2022-03-17 18:59:48'),
(64, 1, 'capteur de mesure de la qualité de l\'air', 22, 40, '2022-03-17 18:59:49'),
(65, 2, 'capteur de température', 4, 38, '2022-03-17 18:59:49'),
(66, 9, 'Capteur stéréoscopique 3D', 9, 42, '2022-03-17 18:59:49'),
(67, 1, 'capteur de mesure de la qualité de l\'air', 24, 39, '2022-03-17 18:59:50'),
(68, 2, 'capteur de température', 7, 37, '2022-03-17 18:59:50'),
(69, 9, 'Capteur stéréoscopique 3D', 6, 43, '2022-03-17 18:59:50'),
(70, 1, 'capteur de mesure de la qualité de l\'air', 25, 38, '2022-03-17 18:59:51'),
(71, 2, 'capteur de température', 5, 38, '2022-03-17 18:59:51'),
(72, 9, 'Capteur stéréoscopique 3D', 4, 44, '2022-03-17 18:59:51'),
(73, 1, 'capteur de mesure de la qualité de l\'air', 24, 39, '2022-03-17 18:59:52'),
(74, 2, 'capteur de température', 7, 39, '2022-03-17 18:59:52'),
(75, 9, 'Capteur stéréoscopique 3D', 1, 43, '2022-03-17 18:59:52'),
(76, 1, 'capteur de mesure de la qualité de l\'air', 21, 40, '2022-03-17 18:59:53'),
(77, 2, 'capteur de température', 9, 40, '2022-03-17 18:59:53'),
(78, 9, 'Capteur stéréoscopique 3D', 3, 44, '2022-03-17 18:59:53'),
(79, 1, 'capteur de mesure de la qualité de l\'air', 18, 41, '2022-03-17 18:59:54'),
(80, 2, 'capteur de température', 10, 39, '2022-03-17 18:59:54'),
(81, 9, 'Capteur stéréoscopique 3D', 1, 45, '2022-03-17 18:59:54'),
(82, 1, 'capteur de mesure de la qualité de l\'air', 20, 42, '2022-03-17 18:59:55'),
(83, 2, 'capteur de température', 7, 38, '2022-03-17 18:59:55'),
(84, 9, 'Capteur stéréoscopique 3D', 2, 46, '2022-03-17 18:59:55'),
(85, 1, 'capteur de mesure de la qualité de l\'air', 18, 43, '2022-03-17 18:59:56'),
(86, 2, 'capteur de température', 5, 39, '2022-03-17 18:59:56'),
(87, 9, 'Capteur stéréoscopique 3D', 2, 47, '2022-03-17 18:59:56'),
(88, 1, 'capteur de mesure de la qualité de l\'air', 21, 44, '2022-03-17 18:59:57'),
(89, 2, 'capteur de température', 8, 40, '2022-03-17 18:59:57'),
(90, 9, 'Capteur stéréoscopique 3D', 2, 46, '2022-03-17 18:59:57'),
(91, 1, 'capteur de mesure de la qualité de l\'air', 20, 45, '2022-03-17 18:59:58'),
(92, 2, 'capteur de température', 6, 41, '2022-03-17 18:59:58'),
(93, 9, 'Capteur stéréoscopique 3D', 4, 47, '2022-03-17 18:59:58'),
(94, 1, 'capteur de mesure de la qualité de l\'air', 21, 44, '2022-03-17 18:59:59'),
(95, 2, 'capteur de température', 9, 40, '2022-03-17 18:59:59'),
(96, 9, 'Capteur stéréoscopique 3D', 2, 48, '2022-03-17 18:59:59'),
(97, 1, 'capteur de mesure de la qualité de l\'air', 18, 45, '2022-03-17 19:00:00'),
(98, 2, 'capteur de température', 7, 41, '2022-03-17 19:00:00'),
(99, 9, 'Capteur stéréoscopique 3D', 5, 49, '2022-03-17 19:00:00'),
(100, 1, 'capteur de mesure de la qualité de l\'air', 17, 44, '2022-03-17 19:00:01'),
(101, 2, 'capteur de température', 9, 42, '2022-03-17 19:00:01'),
(102, 9, 'Capteur stéréoscopique 3D', 7, 48, '2022-03-17 19:00:01'),
(103, 1, 'capteur de mesure de la qualité de l\'air', 18, 45, '2022-03-17 19:00:02'),
(104, 2, 'capteur de température', 11, 43, '2022-03-17 19:00:02'),
(105, 9, 'Capteur stéréoscopique 3D', 10, 47, '2022-03-17 19:00:02'),
(106, 1, 'capteur de mesure de la qualité de l\'air', 19, 46, '2022-03-17 19:00:03'),
(107, 2, 'capteur de température', 13, 44, '2022-03-17 19:00:03'),
(108, 9, 'Capteur stéréoscopique 3D', 11, 48, '2022-03-17 19:00:03'),
(109, 1, 'capteur de mesure de la qualité de l\'air', 17, 47, '2022-03-17 19:00:04'),
(110, 2, 'capteur de température', 14, 45, '2022-03-17 19:00:04'),
(111, 9, 'Capteur stéréoscopique 3D', 14, 49, '2022-03-17 19:00:04'),
(112, 1, 'capteur de mesure de la qualité de l\'air', 18, 48, '2022-03-17 19:00:05'),
(113, 2, 'capteur de température', 17, 46, '2022-03-17 19:00:05'),
(114, 9, 'Capteur stéréoscopique 3D', 16, 48, '2022-03-17 19:00:05'),
(115, 1, 'capteur de mesure de la qualité de l\'air', 17, 49, '2022-03-17 19:00:06'),
(116, 2, 'capteur de température', 18, 47, '2022-03-17 19:00:06'),
(117, 9, 'Capteur stéréoscopique 3D', 13, 49, '2022-03-17 19:00:06'),
(118, 1, 'capteur de mesure de la qualité de l\'air', 15, 48, '2022-03-17 19:00:07'),
(119, 2, 'capteur de température', 16, 46, '2022-03-17 19:00:07'),
(120, 9, 'Capteur stéréoscopique 3D', 14, 48, '2022-03-17 19:00:07'),
(121, 1, 'capteur de mesure de la qualité de l\'air', 14, 49, '2022-03-17 19:00:08'),
(122, 2, 'capteur de température', 17, 45, '2022-03-17 19:00:08'),
(123, 9, 'Capteur stéréoscopique 3D', 12, 47, '2022-03-17 19:00:08'),
(124, 1, 'capteur de mesure de la qualité de l\'air', 16, 48, '2022-03-17 19:00:09'),
(125, 2, 'capteur de température', 15, 46, '2022-03-17 19:00:09'),
(126, 9, 'Capteur stéréoscopique 3D', 13, 46, '2022-03-17 19:00:09'),
(127, 1, 'capteur de mesure de la qualité de l\'air', 13, 49, '2022-03-17 19:00:10'),
(128, 2, 'capteur de température', 18, 47, '2022-03-17 19:00:10'),
(129, 9, 'Capteur stéréoscopique 3D', 10, 47, '2022-03-17 19:00:10'),
(130, 1, 'capteur de mesure de la qualité de l\'air', 11, 50, '2022-03-17 19:00:11'),
(131, 2, 'capteur de température', 21, 46, '2022-03-17 19:00:11'),
(132, 9, 'Capteur stéréoscopique 3D', 8, 46, '2022-03-17 19:00:11'),
(133, 1, 'capteur de mesure de la qualité de l\'air', 12, 51, '2022-03-17 19:00:12'),
(134, 2, 'capteur de température', 23, 47, '2022-03-17 19:00:12'),
(135, 9, 'Capteur stéréoscopique 3D', 7, 45, '2022-03-17 19:00:12'),
(136, 1, 'capteur de mesure de la qualité de l\'air', 9, 50, '2022-03-17 19:00:13'),
(137, 2, 'capteur de température', 22, 46, '2022-03-17 19:00:13'),
(138, 9, 'Capteur stéréoscopique 3D', 10, 46, '2022-03-17 19:00:13'),
(139, 1, 'capteur de mesure de la qualité de l\'air', 12, 51, '2022-03-17 19:00:14'),
(140, 2, 'capteur de température', 21, 47, '2022-03-17 19:00:14'),
(141, 9, 'Capteur stéréoscopique 3D', 12, 45, '2022-03-17 19:00:14'),
(142, 1, 'capteur de mesure de la qualité de l\'air', 11, 52, '2022-03-17 19:00:15'),
(143, 2, 'capteur de température', 19, 48, '2022-03-17 19:00:15'),
(144, 9, 'Capteur stéréoscopique 3D', 13, 46, '2022-03-17 19:00:15'),
(145, 1, 'capteur de mesure de la qualité de l\'air', 9, 53, '2022-03-17 19:00:16'),
(146, 2, 'capteur de température', 22, 47, '2022-03-17 19:00:16'),
(147, 9, 'Capteur stéréoscopique 3D', 14, 47, '2022-03-17 19:00:16');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `current_measured_value` int(11) NOT NULL,
  `operating_time` int(11) NOT NULL,
  `number_of_data_sent` int(11) NOT NULL,
  `temperature` float NOT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `current_measured_value`, `operating_time`, `number_of_data_sent`, `temperature`, `state`) VALUES
(1, 'capteur de mesure de la qualité de l\'air', 'système de capteur connecté qui analyse la qualité de l\'air. ', 9, 440, 4517, 48, 1),
(2, 'capteur de température', 'système de capteur connecté qui analyse la la température. ', 22, 440, 4419, 35, 1),
(9, 'Capteur stéréoscopique 3D', 'Dispositif pour detecter l\'occupation d\'un siege de vehicule au moyen d\'un capteur de prise de vues stereoscopique', 14, 71, 750, 30, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
