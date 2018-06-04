-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 30 Mai 2018 à 14:50
-- Version du serveur :  5.7.22-0ubuntu0.16.04.1
-- Version de PHP :  7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `arena`
--

-- --------------------------------------------------------

--
-- Structure de la table `heroes`
--

CREATE TABLE `heroes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hp` int(11) NOT NULL,
  `armor` int(11) NOT NULL,
  `weapon_id` int(11) NOT NULL,
  `avatar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `heroes`
--

INSERT INTO `heroes` (`id`, `name`, `hp`, `armor`, `weapon_id`, `avatar`) VALUES
(1, 'Batboy', 25, 10, 1, 'https://images-eu.ssl-images-amazon.com/images/I/417bcNaIvyL._SL500_AC_SS350_.jpg'),
(2, 'Carmelito', 15, 8, 1, 'http://www.lejardindekiran.com/wp-content/uploads/2010/05/Carm%C3%A9lito.jpg'),
(3, 'Yoda', 15, 17, 3, 'http://cdn1.smartvectorpics.com/images/imagesbase/veezy/misc/Yoda_32689.jpg'),
(4, 'Aragorn', 50, 20, 11, 'https://www.telegraph.co.uk/content/dam/tv/2017/08/21/Game-of-Thrones-Season-7-ice-dragon_trans_NvBQzQNjv4BqZoBOWHUy9TFokI8lTDwfYn2hjAzSWh9Zr8e1J_H7z3E.jpg?imwidth=450');

-- --------------------------------------------------------

--
-- Structure de la table `weapons`
--

CREATE TABLE `weapons` (
  `id` int(11) NOT NULL,
  `weaponName` varchar(255) NOT NULL,
  `damage_min` int(11) NOT NULL,
  `damage_max` int(11) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `weapons`
--

INSERT INTO `weapons` (`id`, `weaponName`, `damage_min`, `damage_max`, `image`) VALUES
(1, 'épée', 10, 15, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Lightsaber_blue.svg/langfr-280px-Lightsaber_blue.svg.png'),
(2, 'griffes', 15, 20, 'https://img00.deviantart.net/810f/i/2012/068/3/6/griffes_de_dragon_imperial____chinese_dragon_claws_by_fredmik-d4s6wpk.jpg'),
(3, 'bec', 2, 8, 'https://thumbs.dreamstime.com/z/bec-d-aigle-15994078.jpg'),
(4, 'gourdin', 5, 8, 'http://media.gettyimages.com/vectors/cartoon-mace-vector-id479162502?s=170667a&w=1007');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
