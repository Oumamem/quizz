-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  Dim 23 août 2020 à 10:53
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `qcm`
--

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quest` varchar(150) NOT NULL,
  `rep1` varchar(150) NOT NULL,
  `rep2` varchar(150) NOT NULL,
  `rep3` varchar(150) NOT NULL,
  `rep4` varchar(150) NOT NULL,
  `rep_c` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `quest`, `rep1`, `rep2`, `rep3`, `rep4`, `rep_c`) VALUES
(1, 'Who discovered America?\r\n', 'Christopher Columbus', 'My grandma', 'Obama', 'Rihanna', '1'),
(2, 'What is 2 x 4?', '5', '2.3', '12', '8', '4'),
(3, 'How many tires do you have to buy if you have 2 cars in the family?', '8', 'we don\'t drive', '15', '0', '1'),
(4, 'what is 6/2', '2', '4', '3', '1', '3'),
(5, 'Whatd is Covid19', 'Corona Virus Dead 19', 'Corona Virus desease ', 'Corona Virus deseas 19M', 'Corona Virus deseas 2019', '4'),
(6, 'Where is New York', 'In africa', 'In USA', 'In autralia ', 'In Asia', '2'),
(7, 'Origin of Pasta', 'Italia', 'France', 'America', 'Tunisia', '1'),
(8, 'Where is China ', 'Here in the neighborhood ', 'In france ', 'In Asia ', 'In USA', '3');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL,
  `reponses` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`nom`, `email`, `pwd`, `id`, `score`, `reponses`) VALUES
('alaa', 'alaa@yahoo.fr', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 12, 12, '12234211'),
('ahmed', 'ahmed@yahoo.fr', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 11, 0, ''),
('siwar', 'siwar@gmail.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 10, 0, ''),
('ouma', 'ouma@gmail.tn', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 9, 4, '12231111');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
