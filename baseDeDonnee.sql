-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 19 Mars 2018 à 13:03
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_annuel`
--

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `IDPays` int(2) NOT NULL,
  `NomPays` varchar(50) NOT NULL,
  `Capitale` varchar(50) NOT NULL,
  `Langue` varchar(50) NOT NULL,
  `Population` varchar(50) NOT NULL,
  `DateEntreeUE` varchar(4) DEFAULT NULL,
  `PIB` varchar(50) NOT NULL,
  `IDH` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`IDPays`, `NomPays`, `Capitale`, `Langue`, `Population`, `DateEntreeUE`, `PIB`, `IDH`) VALUES
(1, 'France', 'Paris', 'Français', '63M', '1957', '37K', '0.9'),
(2, 'Espagne', 'Madrid', 'Espagnol', '46M', '', '33K', '0.9');

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `IDprofesseur` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `professeur`
--

INSERT INTO `professeur` (`IDprofesseur`, `login`, `password`) VALUES
(1, 'Dupont', 'Dupont');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `IDQuestion` int(11) NOT NULL,
  `textquestion` varchar(200) NOT NULL,
  `reponse` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `questions`
--

INSERT INTO `questions` (`IDQuestion`, `textquestion`, `reponse`) VALUES
(10, 'Quelle est la capitale de la France?', 'Paris'),
(11, 'Madrid est la capitale de ?', 'Espagne');

-- --------------------------------------------------------

--
-- Structure de la table `topscore`
--

CREATE TABLE `topscore` (
  `IdScore` int(11) NOT NULL,
  `NomJeux` varchar(50) NOT NULL,
  `Pseudo` varchar(20) NOT NULL,
  `Score` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `topscore`
--

INSERT INTO `topscore` (`IdScore`, `NomJeux`, `Pseudo`, `Score`, `Date`) VALUES
(188, 'pendu', 'test', 39, '2018-03-17 22:54:41');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`IDPays`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`IDprofesseur`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`IDQuestion`);

--
-- Index pour la table `topscore`
--
ALTER TABLE `topscore`
  ADD PRIMARY KEY (`IdScore`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `IDPays` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `professeur`
--
ALTER TABLE `professeur`
  MODIFY `IDprofesseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `IDQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `topscore`
--
ALTER TABLE `topscore`
  MODIFY `IdScore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
