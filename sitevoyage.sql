-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 25 sep. 2023 à 19:44
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sitevoyage`
--

-- --------------------------------------------------------

--
-- Structure de la table `carou`
--

CREATE TABLE `carou` (
  `id_carou` int(11) NOT NULL,
  `id_ville` int(11) NOT NULL,
  `photos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `carou`
--

INSERT INTO `carou` (`id_carou`, `id_ville`, `photos`) VALUES
(14, 5, '03.jpg'),
(15, 6, '1.jpg'),
(16, 6, '4.jpg'),
(17, 6, '3.jpg'),
(18, 6, '5.jpg'),
(19, 5, '04.jpg'),
(20, 5, '05.jpg'),
(21, 5, '06.jpg'),
(22, 7, '1.jpg'),
(23, 7, '2.jpg'),
(24, 7, '4.jpg'),
(25, 7, '5.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id_inscri` int(11) NOT NULL,
  `nom` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id_inscri`, `nom`, `email`, `subject`, `message`) VALUES
(21, 'OUEDRAOGO Aboubacar', 'aboubacarouedraogo450@gmail.com', 'demande d\'aide', 'besoin d\'aide'),
(22, 'OUEDRAOGO Aboubacar', 'aboubacarouedraogo450@gmail.com', 'demande d\'aide', 'besoin d\'aide'),
(23, 'OUEDRAOGO Aboubacar', 'aboubacarouedraogo450@gmail.com', 'demande d\'aide', 'jsjdk'),
(24, 'OUEDRAOGO Aboubacar', 'aboubacarouedraogo450@gmail.com', 'demande d\'aide', 'jsjdk'),
(25, 'OUEDRAOGO Aboubacar', 'abouodra18@gmail.com', 'demande d\'aide', 'je suis là'),
(26, 'OUEDRAOGO Aboubacar', 'abouodra18@gmail.com', 'demande d\'aide', 'je suis là'),
(27, 'OUEDRAOGO Aboubacar', 'aboubacarouedraogo450@gmail.com', 'demande d\'aide', 'je suis là'),
(28, 'OUEDRAOGO Aboubacar', 'aboubacarouedraogo450@gmail.com', 'demande d\'aide', 'je suis là'),
(29, 'OUEDRAOGO Aboubacar', 'abouodra18@gmail.com', 'demande d\'aide', 'je suis relà'),
(30, 'OUEDRAOGO Aboubacar', 'abouodra18@gmail.com', 'demande d\'aide', 'je suis relà');

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE `lieu` (
  `id_lieu` int(11) NOT NULL,
  `id_ville` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `nom` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `lieu`
--

INSERT INTO `lieu` (`id_lieu`, `id_ville`, `photo`, `nom`) VALUES
(25, 5, '01.jpg', 'Bienvenue à Banfora'),
(26, 5, '02.jpg', 'Salle polyvalente de Banfora'),
(27, 5, '03.jpg', 'Les Pics de Sindou'),
(28, 5, '04.jpg', 'Les cascades de Banfora'),
(29, 5, '05.jpg', 'Les pics de Sindous'),
(30, 5, '06.jpg', 'Les cascades de Banfora'),
(31, 6, '1.jpg', 'La Mosquée de Dioulassoba'),
(32, 6, '4.jpg', 'Hippopotame'),
(33, 6, '3.jpg', 'Dioulassoba'),
(34, 6, '6.jpg', 'La marre aux Hippopotames'),
(35, 6, '2.jpg', 'Mosquée'),
(36, 6, '5.jpg', 'Marre'),
(37, 7, '1.jpg', 'Parc animalier de ziniaré'),
(38, 7, '2.jpg', 'Lion'),
(39, 7, '7.jpg', 'Ma visite à ziniaré'),
(40, 7, '4.jpg', 'Sculpture aux granite de Laongo'),
(41, 7, '5.jpg', 'Belle image'),
(42, 7, '6.jpg', 'Laongo');

-- --------------------------------------------------------

--
-- Structure de la table `sponsors`
--

CREATE TABLE `sponsors` (
  `id_spon` int(11) NOT NULL,
  `id_ville` int(11) NOT NULL,
  `spon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `sponsors`
--

INSERT INTO `sponsors` (`id_spon`, `id_ville`, `spon`) VALUES
(16, 5, 'Air_Burkina.png'),
(17, 5, 'Air_France.png'),
(18, 5, 'elitis.png'),
(19, 5, 'Moov_Africa.png'),
(20, 5, 'orange.png'),
(21, 6, 'Air_Burkina.png'),
(22, 6, 'Air_France.png'),
(23, 6, 'elitis.png'),
(24, 6, 'Moov_Africa.png'),
(25, 6, 'orange.png'),
(26, 7, 'Air_Burkina.png'),
(27, 7, 'Air_France.png'),
(28, 7, 'elitis.png'),
(29, 7, 'Moov_Africa.png'),
(30, 7, 'orrange.png');

-- --------------------------------------------------------

--
-- Structure de la table `text`
--

CREATE TABLE `text` (
  `id_text` int(11) NOT NULL,
  `id_ville` int(11) NOT NULL,
  `texte` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `text`
--

INSERT INTO `text` (`id_text`, `id_ville`, `texte`) VALUES
(4, 5, 'Banfora est une petite ville tranquille, à une centaine de km de Bobo Dioulasso. Après avoir longé des falaises et traversé les champs de canne à sucre, vous arrivez dans cette bourgade sympathique au climat rafraichissant.\r\n\r\n\r\nChoisissez de nous visiter et vous serez très heureux par de nombreuses découvertes.'),
(5, 6, 'Situé au sud du Burkina Faso Bobo-Dioulasso est une ville qui engrange beaucoup site touristiques que vous devez absolument visitez.\r\n\r\nDans la ville de Sya vous pourrez visiter la grande mosquée de Dioulassoba, les Pics de Sindou et bien d\'autres.'),
(6, 7, 'Situé dans le plateau centrale, Ziniaré est une ville qui regorge d\'énorme potentialité et de merveilleux site touristiques.\r\nNous avons le parc animalier de Ziniaré, les Sculptures aux granites de Laongo, etc...');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id_ville` int(11) NOT NULL,
  `nom_ville` text NOT NULL,
  `photo_ville` text NOT NULL,
  `texte` text NOT NULL,
  `bouton` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id_ville`, `nom_ville`, `photo_ville`, `texte`, `bouton`) VALUES
(5, 'Banfora', '04.jpg', 'Découvrez avec nous les merveilleuses cascades de Banfora et Les Pics de Sindou', 'Découvrir'),
(6, 'Bobo-Dioulasso', '12.jpg', 'Découvrez avec nous la mosquée de Dioulassoba et la Mare aux Hippopotames', 'Découvrir'),
(7, 'Ziniaré', '13.jpeg', 'Découvrez avec nous Le parc animalier de Ziniaré et le Sculpture sur granit de Laongo', 'Découvrir');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `carou`
--
ALTER TABLE `carou`
  ADD PRIMARY KEY (`id_carou`),
  ADD KEY `id_ville` (`id_ville`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id_inscri`);

--
-- Index pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD PRIMARY KEY (`id_lieu`),
  ADD KEY `id_ville` (`id_ville`);

--
-- Index pour la table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id_spon`),
  ADD KEY `id_ville` (`id_ville`);

--
-- Index pour la table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id_text`),
  ADD KEY `id_ville` (`id_ville`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_ville`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `carou`
--
ALTER TABLE `carou`
  MODIFY `id_carou` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id_inscri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `lieu`
--
ALTER TABLE `lieu`
  MODIFY `id_lieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id_spon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `text`
--
ALTER TABLE `text`
  MODIFY `id_text` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id_ville` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `carou`
--
ALTER TABLE `carou`
  ADD CONSTRAINT `carou_ibfk_1` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id_ville`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD CONSTRAINT `lieu_ibfk_1` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id_ville`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sponsors`
--
ALTER TABLE `sponsors`
  ADD CONSTRAINT `sponsors_ibfk_1` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id_ville`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `text`
--
ALTER TABLE `text`
  ADD CONSTRAINT `text_ibfk_1` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id_ville`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
