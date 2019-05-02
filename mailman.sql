-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 02 Mai 2019 à 10:45
-- Version du serveur :  10.3.13-MariaDB-1-log
-- Version de PHP :  7.3.3-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `alternc`
--

-- --------------------------------------------------------

--
-- Structure de la table `mailman`
--

CREATE TABLE `mailman` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `list` varchar(128) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `owner` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `mailman_action` enum('OK','CREATE','DELETE','PASSWORD','GETURL','SETURL','DELETING','REGENERATE','REGENERATE-2') NOT NULL DEFAULT 'OK',
  `mailman_result` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Mailman mailing lists';

-- --------------------------------------------------------

--
-- Structure de la table `mailman_account`
--

CREATE TABLE `mailman_account` (
  `id` int(11) NOT NULL,
  `uid` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `mailman`
--
ALTER TABLE `mailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mailman_action` (`mailman_action`);

--
-- Index pour la table `mailman_account`
--
ALTER TABLE `mailman_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`,`username`,`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `mailman`
--
ALTER TABLE `mailman`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT pour la table `mailman_account`
--
ALTER TABLE `mailman_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
