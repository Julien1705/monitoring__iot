-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 16 mars 2022 à 19:24
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
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id`, `id_module`, `name_module`, `measured_value`, `temperature`, `date`) VALUES
(1, 1, 'capteur de mesure de la qualité de l\'air', 27, 36, '2022-03-16 13:59:46'),
(2, 2, 'capteur de température', 11, 47, '2022-03-16 13:59:46'),
(3, 7, 'PandapÃ©ricube', 9, 42, '2022-03-16 13:59:46'),
(4, 1, 'capteur de mesure de la qualité de l\'air', 28, 37, '2022-03-16 13:59:48'),
(5, 2, 'capteur de température', 12, 46, '2022-03-16 13:59:48'),
(6, 7, 'PandapÃ©ricube', 12, 41, '2022-03-16 13:59:48'),
(7, 1, 'capteur de mesure de la qualité de l\'air', 31, 36, '2022-03-16 15:00:13'),
(8, 2, 'capteur de température', 10, 47, '2022-03-16 15:00:13'),
(9, 7, 'PandapÃ©ricube', 15, 40, '2022-03-16 15:00:13'),
(10, 1, 'capteur de mesure de la qualité de l\'air', 33, 37, '2022-03-16 15:00:15'),
(11, 2, 'capteur de température', 8, 46, '2022-03-16 15:00:15'),
(12, 7, 'PandapÃ©ricube', 17, 39, '2022-03-16 15:00:15'),
(13, 1, 'capteur de mesure de la qualité de l\'air', 36, 38, '2022-03-16 15:00:30'),
(14, 2, 'capteur de température', 5, 47, '2022-03-16 15:00:30'),
(15, 7, 'PandapÃ©ricube', 15, 40, '2022-03-16 15:00:30'),
(16, 1, 'capteur de mesure de la qualité de l\'air', 33, 39, '2022-03-16 15:00:32'),
(17, 2, 'capteur de température', 4, 46, '2022-03-16 15:00:32'),
(18, 7, 'PandapÃ©ricube', 18, 39, '2022-03-16 15:00:32'),
(19, 1, 'capteur de mesure de la qualité de l\'air', 31, 40, '2022-03-16 15:00:34'),
(20, 2, 'capteur de température', 5, 45, '2022-03-16 15:00:34'),
(21, 7, 'PandapÃ©ricube', 20, 40, '2022-03-16 15:00:34'),
(22, 1, 'capteur de mesure de la qualité de l\'air', 28, 41, '2022-03-16 16:28:12'),
(23, 2, 'capteur de température', 8, 44, '2022-03-16 16:28:12'),
(24, 7, 'PandapÃ©ricube', 19, 39, '2022-03-16 16:28:12'),
(25, 8, 'FranÃ§ais', 741, 28, '2022-03-16 16:28:12'),
(26, 1, 'capteur de mesure de la qualité de l\'air', 29, 42, '2022-03-16 17:18:41'),
(27, 2, 'capteur de température', 10, 45, '2022-03-16 17:18:41'),
(28, 7, 'PandapÃ©ricube', 17, 38, '2022-03-16 17:18:41'),
(29, 8, 'FranÃ§ais', 742, 29, '2022-03-16 17:18:41'),
(30, 1, 'capteur de mesure de la qualité de l\'air', 28, 41, '2022-03-16 17:18:43'),
(31, 2, 'capteur de température', 8, 46, '2022-03-16 17:18:43'),
(32, 7, 'PandapÃ©ricube', 16, 39, '2022-03-16 17:18:43'),
(33, 8, 'FranÃ§ais', 739, 30, '2022-03-16 17:18:43');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `current_measured_value`, `operating_time`, `number_of_data_sent`, `temperature`, `state`) VALUES
(1, 'capteur de mesure de la qualité de l\'air', 'système de capteur connecté qui analyse la qualité de l\'air. ', 28, 63, 664, 41, 1),
(2, 'capteur de température', 'système de capteur connecté qui analyse la la température. ', 8, 63, 645, 46, 1),
(8, 'FranÃ§ais', 'hello', 739, 275, 298, 30, 1),
(7, 'PandapÃ©ricube', 'hello', 16, 70, 700, 39, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
