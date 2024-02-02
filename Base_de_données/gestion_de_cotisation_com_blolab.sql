-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 04 août 2021 à 11:35
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_de_cotisation_com_blolab`
--

-- --------------------------------------------------------

--
-- Structure de la table `Abonnement`
--

CREATE TABLE `Abonnement` (
  `idabonnement` int(11) NOT NULL,
  `typedabonnement` set('Acces aux machines','Participer aux ateliers','Beneficier d''assistance techniques','Avoir tout') NOT NULL COMMENT 'A partir de deux options faites un ctrl+choix',
  `idcotisation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Abonnement`
--

INSERT INTO `Abonnement` (`idabonnement`, `typedabonnement`, `idcotisation`) VALUES
(1, 'Avoir tout', 1),
(2, 'Acces aux machines,Participer aux ateliers', 2),
(3, 'Avoir tout', 3),
(4, 'Acces aux machines,Participer aux ateliers,Beneficier d\'assistance techniques', 4),
(5, 'Avoir tout', 5),
(6, 'Beneficier d\'assistance techniques', 6);

-- --------------------------------------------------------

--
-- Structure de la table `Adhesion`
--

CREATE TABLE `Adhesion` (
  `idadhesion` int(11) NOT NULL,
  `datedahdesion` date NOT NULL,
  `fraisdadhesionunique` int(5) NOT NULL DEFAULT 10000,
  `idmembre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Adhesion`
--

INSERT INTO `Adhesion` (`idadhesion`, `datedahdesion`, `fraisdadhesionunique`, `idmembre`) VALUES
(1, '2021-04-05', 10000, 1),
(2, '2021-05-03', 10000, 2),
(3, '2021-05-11', 10000, 3),
(4, '2021-06-07', 10000, 4),
(5, '2021-06-10', 10000, 5),
(6, '2021-07-04', 10000, 6),
(7, '2021-08-04', 10000, 7);

-- --------------------------------------------------------

--
-- Structure de la table `Cotisation`
--

CREATE TABLE `Cotisation` (
  `idcotisation` int(11) NOT NULL,
  `fraisdecotisation` int(5) NOT NULL,
  `datepaiement` date NOT NULL,
  `mois` set('Janvier','Fevrier','Mars','Avril','Mai','Juin','Juillet','Août','Septembre','Octobre','Novembre','Decembre','') NOT NULL,
  `idmembre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Cotisation`
--

INSERT INTO `Cotisation` (`idcotisation`, `fraisdecotisation`, `datepaiement`, `mois`, `idmembre`) VALUES
(1, 20000, '2021-08-01', 'Janvier,Fevrier,Mars', 1),
(2, 20000, '2021-08-16', 'Janvier,Fevrier,Mars,Avril,Mai,Juin,Juillet,Août', 2),
(3, 30000, '2021-07-04', 'Janvier', 3),
(4, 40000, '2021-07-07', 'Fevrier', 4),
(5, 100000, '2021-07-13', 'Janvier,Fevrier', 5),
(6, 15000, '2021-08-01', 'Janvier', 6);

-- --------------------------------------------------------

--
-- Structure de la table `Membres`
--

CREATE TABLE `Membres` (
  `idmembre` int(11) NOT NULL,
  `nom` varchar(32) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `numtel` int(8) NOT NULL,
  `email` varchar(20) NOT NULL,
  `profession` varchar(30) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `photo` binary(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Membres`
--

INSERT INTO `Membres` (`idmembre`, `nom`, `prenom`, `numtel`, `email`, `profession`, `adresse`, `photo`) VALUES
(1, 'BITI', 'Mechak', 65814144, 'mechak.biti', 'Etudiant', 'Pahou', 0x001000000000000000000000000000),
(2, 'ZOUGNON', 'Lookman', 96328527, 'lookman.zougnon', 'Etudiant', 'Godomey', 0x010000000000000000000000000000),
(3, 'AHOUEKE', 'Theophile', 96571041, 'theophile.ahoueke', 'Etudiant', 'Calavi', 0x000011000000000000000000000000),
(4, 'DOVONOU', 'Geronce', 69935709, 'geronce.dovonou', 'Etudiant', 'Ste Rita', 0x010000000000000000000000000000),
(5, 'ADJINON', 'Tibus', 61117500, 'tibus.adjinon', 'Etudiant', 'Agla', 0x022222000000000000000000000000),
(6, 'SOKENOU', 'Robert', 96282129, 'robert.sokenou', 'Etudiant', 'Porto-Novo', 0x010100000000000000000000000000),
(7, 'ADEBAYOR', 'Michel', 67075461, 'madebayor@gmail.com', 'Developpeur web et mobile', 'BLOLAB', 0x011000000000000000000000000000);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Abonnement`
--
ALTER TABLE `Abonnement`
  ADD PRIMARY KEY (`idabonnement`),
  ADD KEY `idcotisation` (`idcotisation`);

--
-- Index pour la table `Adhesion`
--
ALTER TABLE `Adhesion`
  ADD PRIMARY KEY (`idadhesion`),
  ADD KEY `idmembres` (`idmembre`);

--
-- Index pour la table `Cotisation`
--
ALTER TABLE `Cotisation`
  ADD PRIMARY KEY (`idcotisation`),
  ADD KEY `idmembre` (`idmembre`);

--
-- Index pour la table `Membres`
--
ALTER TABLE `Membres`
  ADD PRIMARY KEY (`idmembre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Abonnement`
--
ALTER TABLE `Abonnement`
  MODIFY `idabonnement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Adhesion`
--
ALTER TABLE `Adhesion`
  MODIFY `idadhesion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `Cotisation`
--
ALTER TABLE `Cotisation`
  MODIFY `idcotisation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `Membres`
--
ALTER TABLE `Membres`
  MODIFY `idmembre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Abonnement`
--
ALTER TABLE `Abonnement`
  ADD CONSTRAINT `Abonnement_ibfk_1` FOREIGN KEY (`idcotisation`) REFERENCES `Cotisation` (`idcotisation`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `Adhesion`
--
ALTER TABLE `Adhesion`
  ADD CONSTRAINT `Adhesion_ibfk_1` FOREIGN KEY (`idmembre`) REFERENCES `Membres` (`idmembre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `Cotisation`
--
ALTER TABLE `Cotisation`
  ADD CONSTRAINT `Cotisation_ibfk_1` FOREIGN KEY (`idmembre`) REFERENCES `Membres` (`idmembre`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
