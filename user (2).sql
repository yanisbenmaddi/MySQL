-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 01 mai 2021 à 15:41
-- Version du serveur :  10.3.24-MariaDB-2
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `user`
--

-- --------------------------------------------------------

--
-- Structure de la table `a`
--

CREATE TABLE `a` (
  `N°entrepot` int(255) NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `a`
--

INSERT INTO `a` (`N°entrepot`, `id`) VALUES
(1, 10),
(2, 11),
(3, 12),
(4, 13),
(5, 14),
(6, 15),
(7, 16),
(9, 17),
(10, 18),
(11, 19),
(12, 20),
(13, 21),
(14, 22),
(15, 23),
(16, 24),
(17, 25),
(18, 26),
(19, 27);

-- --------------------------------------------------------

--
-- Structure de la table `Achete`
--

CREATE TABLE `Achete` (
  `N°client` int(11) NOT NULL,
  `Ref_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Achete`
--

INSERT INTO `Achete` (`N°client`, `Ref_article`) VALUES
(1, 17),
(1, 26),
(1, 27),
(1, 28),
(1, 46),
(2, 12),
(2, 16),
(2, 17),
(3, 52),
(3, 57),
(3, 58),
(4, 23),
(4, 25),
(4, 33),
(4, 36),
(5, 12),
(5, 13),
(5, 16),
(5, 19),
(6, 14),
(6, 15),
(6, 42),
(6, 44),
(7, 12),
(7, 23),
(7, 56),
(8, 35),
(9, 57);

-- --------------------------------------------------------

--
-- Structure de la table `Article`
--

CREATE TABLE `Article` (
  `reference` int(11) NOT NULL,
  `prix` float NOT NULL,
  `type` varchar(30) NOT NULL,
  `produit` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Article`
--

INSERT INTO `Article` (`reference`, `prix`, `type`, `produit`) VALUES
(12, 5.99, 'alimentation', 'tomates'),
(13, 2.86, 'alimentation', 'pates'),
(14, 5.34, 'alimentation', 'chocolat'),
(15, 3.12, 'alimentation', 'riz'),
(16, 7.99, 'alimentation', 'yaourts'),
(17, 4.56, 'alimentation', 'carottes'),
(18, 6.99, 'alimentation', 'haricots'),
(19, 6.6, 'alimentation', 'patates'),
(23, 10.2, 'vetement', 'tshirt'),
(24, 25, 'vetement', 'pantalon'),
(25, 19.99, 'vetement', 'robe'),
(26, 3, 'vetement', 'chaussettes'),
(27, 14.99, 'vetement', 'short'),
(28, 34.99, 'vetement', 'veste'),
(32, 11.5, 'jouet', 'voiture'),
(33, 20.4, 'jouet', 'poupee'),
(34, 50, 'jouet', 'poussette'),
(35, 3.5, 'jouet', 'cartes'),
(36, 40.99, 'jouet', 'peluche'),
(41, 950, 'electronique', 'telephone'),
(42, 150, 'electronique', 'enceinte'),
(43, 1200, 'electronique', 'ordinateur'),
(44, 100, 'electronique', 'ecouteurs'),
(45, 19.99, 'electronique', 'chargeur'),
(46, 499.99, 'electronique', 'tablette'),
(47, 120, 'electronique', 'montre'),
(48, 49.99, 'electronique', 'stylet'),
(52, 11, 'entretient', 'produit vaisselle'),
(53, 13, 'entretient', 'lessive'),
(54, 9.99, 'entretient', 'pastilles vaisselle'),
(55, 2.87, 'entretient', 'nettoyant sol'),
(56, 3.45, 'entretient', 'nettoyant lavabo'),
(57, 4.3, 'entretient', 'desinfectant'),
(58, 3.5, 'entretient', 'produit vitres');

-- --------------------------------------------------------

--
-- Structure de la table `carte_fidelite`
--

CREATE TABLE `carte_fidelite` (
  `N°carte` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `N°client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `carte_fidelite`
--

INSERT INTO `carte_fidelite` (`N°carte`, `prix`, `N°client`) VALUES
(1, 4, 1),
(2, 4, 5),
(3, 7, 2),
(4, 9, 3),
(5, 6, 4),
(6, 11, 6),
(7, 32, 7),
(8, 52, 8),
(9, 22, 9),
(10, 34, 10),
(11, 76, 11),
(12, 81, 12),
(13, 43, 13),
(14, 54, 14),
(15, 63, 15),
(16, 39, 16),
(17, 152, 17),
(18, 96, 18);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `N°client` int(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `age` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`N°client`, `nom`, `prenom`, `age`) VALUES
(1, 'Bernard', 'Louis', 85),
(2, 'Digne', 'Antoine', 48),
(3, 'Serge', 'Dembele', 22),
(4, 'Joao', 'Caicedo', 37),
(5, 'Alaba', 'Fred', 51),
(6, 'Milik', 'David', 19),
(7, 'Lopez', 'Javi', 33),
(8, 'Rapinoe', 'Fatima', 42),
(9, 'Morgan', 'Alice', 21),
(10, 'Renard', 'Louise', 80),
(11, 'Sancho', 'Renato', 27),
(12, 'Suarez', 'Miguel', 40),
(13, 'Silva', 'Mikel', 39),
(14, 'Kader', 'Abdel', 73),
(15, 'Babakam', 'Chris', 28),
(16, 'Laziz', 'Zoubiba', 57),
(17, 'Malik', 'Chahide', 22),
(18, 'Bentaleb', 'Anissa', 18);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `clients`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `clients` (
`N°client` int(255)
,`nom` varchar(255)
,`prenom` varchar(255)
,`age` int(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `destocke`
--

CREATE TABLE `destocke` (
  `N°entrepot` int(255) NOT NULL,
  `REF ARTICLE` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `destocke`
--

INSERT INTO `destocke` (`N°entrepot`, `REF ARTICLE`) VALUES
(1, 12),
(2, 13),
(3, 14),
(4, 15),
(5, 16),
(6, 57),
(7, 17),
(9, 18),
(10, 19),
(11, 23),
(12, 24),
(13, 25),
(14, 26),
(15, 27),
(16, 28),
(17, 32),
(18, 33),
(19, 34),
(20, 35),
(21, 36),
(22, 41),
(23, 42),
(24, 43),
(25, 45),
(26, 44),
(27, 46),
(28, 47),
(29, 48),
(30, 52),
(31, 53),
(32, 54),
(33, 55),
(34, 56),
(35, 58);

-- --------------------------------------------------------

--
-- Structure de la table `entrepots`
--

CREATE TABLE `entrepots` (
  `N°entrepot` int(255) NOT NULL,
  `lieu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entrepots`
--

INSERT INTO `entrepots` (`N°entrepot`, `lieu`) VALUES
(1, 'Casablanca'),
(2, 'Etampes'),
(3, 'Marseille'),
(4, 'Argenteuil'),
(5, 'Alger'),
(6, 'Nairobi'),
(7, 'Nanterre'),
(9, 'Lisbonne'),
(10, 'Madrir'),
(11, 'Barcelone'),
(12, 'Caire'),
(13, 'Tokyo'),
(14, 'Londres'),
(15, 'Cergy'),
(16, 'Munich'),
(17, 'Montevideo'),
(18, 'New York'),
(19, 'Shenzen'),
(20, 'New Dehli'),
(21, 'Buenos Aires'),
(22, 'Istanbul'),
(23, 'Moscou'),
(24, 'Los Angeles'),
(25, 'Manchester'),
(26, 'Rabat'),
(27, 'Rio'),
(28, 'Bangkok'),
(29, 'Kyoto'),
(30, 'Genk'),
(31, 'Krasnodar'),
(32, 'Bezons'),
(33, 'Venise'),
(34, 'Milan'),
(35, 'Denver');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `N°fournisseur` int(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `pays` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`N°fournisseur`, `nom`, `pays`) VALUES
(1, 'Cora', 'Belgique'),
(2, 'Groupe Mestdagh', 'Belgique'),
(3, 'DCP', 'Espagne'),
(4, 'B2B Web Consulting GMBH', 'Allemagne'),
(5, 'LUcky Store Solution SRL', 'Roumanie'),
(10, 'Metrika', 'Russie'),
(11, 'Tune-up Seafoods', 'Royaume-Unis'),
(12, 'Simsons Fisheries', 'Royaume-Unis'),
(14, 'Andy Race Fish Merchants LTD', 'Royaume-Unis'),
(15, 'Premier Seafoods', 'Royaume-Unis'),
(17, 'Arcade FIsheries', 'Royaume-Unis'),
(18, 'Ben Rigby', 'Royaume-Unis'),
(19, 'JH Mann', 'Royaume-Unis'),
(20, 'Fresh From The Sea', 'Royaume-Unis'),
(21, 'Lanka Traders', 'Royaume-Unis'),
(22, 'Wisebuys Pembrooke LTD', 'Royaume-Unis'),
(23, 'H Hulse', 'Royaume-Unis'),
(33, 'Catered LTD', 'Royaume-Unis');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `fournisseurs`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `fournisseurs` (
`N°fournisseur` int(255)
,`nom` varchar(255)
,`pays` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `magasin`
--

CREATE TABLE `magasin` (
  `Id` int(11) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `N°carte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `magasin`
--

INSERT INTO `magasin` (`Id`, `lieu`, `nom`, `N°carte`) VALUES
(10, 'Paris', 'Franprix', 1),
(11, 'Versailles', 'Carrefour', 2),
(12, 'Toulouse', 'Franprix', 3),
(13, 'Taverny', 'Auchan', 4),
(14, 'Strasbourg', 'Leclerc', 5),
(15, 'La Defense', 'Auchan', 6),
(16, 'Orléans', 'Carrefour', 7),
(17, 'Bordeaux', 'U', 8),
(18, 'Villetaneuse', 'Auchan', 9),
(19, 'Clamart', 'Leclerc', 10),
(20, 'Villeneuve', 'Leclerc', 11),
(21, 'Lille', 'Franprix', 12),
(22, 'Villejuif', 'U', 13),
(23, 'Asnieres', 'Carrefour', 14),
(24, 'Nantes', 'Auchan', 15),
(25, 'Le Havre', 'Leclerc', 16),
(26, 'Rennes', 'U', 17),
(27, 'Courbevoie', 'Auchan', 18);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `nombre_achat`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `nombre_achat` (
`N°client` int(255)
,`nom` varchar(255)
,`prenom` varchar(255)
,`nombre_achat` bigint(21)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `recette_carte`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `recette_carte` (
`recette_c` decimal(32,0)
,`nom` varchar(255)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `recette_produit`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `recette_produit` (
`recette_p` double
,`nom` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `Reprend`
--

CREATE TABLE `Reprend` (
  `Id` int(11) NOT NULL,
  `reference` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Reprend`
--

INSERT INTO `Reprend` (`Id`, `reference`) VALUES
(10, 19),
(11, 57),
(12, 24),
(12, 53),
(13, 12),
(13, 23),
(14, 23),
(14, 27),
(16, 14),
(16, 24),
(20, 32),
(21, 14),
(21, 32),
(22, 47),
(24, 58),
(25, 32),
(26, 46),
(27, 12);

-- --------------------------------------------------------

--
-- Structure de la table `Retourne`
--

CREATE TABLE `Retourne` (
  `N°client` int(11) NOT NULL,
  `Ref_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Retourne`
--

INSERT INTO `Retourne` (`N°client`, `Ref_article`) VALUES
(9, 12),
(9, 23),
(10, 24),
(10, 32),
(11, 23),
(11, 47),
(12, 14),
(12, 53),
(13, 32),
(13, 58),
(14, 19),
(14, 27),
(15, 57),
(16, 46),
(17, 24),
(17, 32),
(18, 12),
(18, 14);

-- --------------------------------------------------------

--
-- Structure de la table `se_fourni`
--

CREATE TABLE `se_fourni` (
  `N°fournisseur` int(11) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `se_fourni`
--

INSERT INTO `se_fourni` (`N°fournisseur`, `Id`) VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 10),
(10, 15),
(11, 16),
(12, 17),
(14, 18),
(15, 19),
(17, 20),
(18, 21),
(19, 22),
(20, 23),
(21, 24),
(22, 25),
(23, 26),
(33, 27);

-- --------------------------------------------------------

--
-- Structure de la table `stocke`
--

CREATE TABLE `stocke` (
  `N°entrepot` int(255) NOT NULL,
  `REF ARTICLE` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stocke`
--

INSERT INTO `stocke` (`N°entrepot`, `REF ARTICLE`) VALUES
(1, 12),
(2, 13),
(3, 14),
(4, 15),
(5, 16),
(6, 57),
(7, 17),
(9, 18),
(10, 19),
(11, 23),
(12, 24),
(13, 25),
(14, 26),
(15, 27),
(16, 28),
(17, 32),
(18, 33),
(19, 34),
(20, 35),
(21, 36),
(22, 41),
(23, 42),
(24, 43),
(25, 45),
(26, 44),
(27, 46),
(28, 47),
(29, 48),
(30, 52),
(31, 53),
(32, 54),
(33, 55),
(34, 56),
(35, 58);

-- --------------------------------------------------------

--
-- Structure de la table `Vend`
--

CREATE TABLE `Vend` (
  `Id` int(11) NOT NULL,
  `reference` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Vend`
--

INSERT INTO `Vend` (`Id`, `reference`) VALUES
(10, 17),
(10, 26),
(10, 44),
(11, 28),
(11, 46),
(12, 27),
(12, 42),
(13, 12),
(14, 12),
(14, 16),
(14, 17),
(15, 13),
(15, 57),
(16, 25),
(17, 35),
(17, 57),
(18, 12),
(19, 56),
(21, 58),
(23, 16),
(23, 52),
(24, 19),
(24, 23),
(24, 36),
(26, 15),
(26, 33),
(27, 14),
(27, 23);

-- --------------------------------------------------------

--
-- Structure de la vue `clients`
--
DROP TABLE IF EXISTS `clients`;

CREATE ALGORITHM=UNDEFINED DEFINER=`user`@`localhost` SQL SECURITY DEFINER VIEW `clients`  AS  select `c`.`N°client` AS `N°client`,`c`.`nom` AS `nom`,`c`.`prenom` AS `prenom`,`c`.`age` AS `age` from `client` `c` where `c`.`age` < 35 ;

-- --------------------------------------------------------

--
-- Structure de la vue `fournisseurs`
--
DROP TABLE IF EXISTS `fournisseurs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`user`@`localhost` SQL SECURITY DEFINER VIEW `fournisseurs`  AS  select `f`.`N°fournisseur` AS `N°fournisseur`,`f`.`nom` AS `nom`,`f`.`pays` AS `pays` from `fournisseur` `f` where `f`.`pays` = 'BELGIQUE' ;

-- --------------------------------------------------------

--
-- Structure de la vue `nombre_achat`
--
DROP TABLE IF EXISTS `nombre_achat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`user`@`localhost` SQL SECURITY DEFINER VIEW `nombre_achat`  AS  select `C`.`N°client` AS `N°client`,`C`.`nom` AS `nom`,`C`.`prenom` AS `prenom`,count(`A1`.`Ref_article`) AS `nombre_achat` from (`Achete` `A1` join `client` `C`) where `A1`.`N°client` = `C`.`N°client` group by `C`.`nom` ;

-- --------------------------------------------------------

--
-- Structure de la vue `recette_carte`
--
DROP TABLE IF EXISTS `recette_carte`;

CREATE ALGORITHM=UNDEFINED DEFINER=`user`@`localhost` SQL SECURITY DEFINER VIEW `recette_carte`  AS  select sum(`C`.`prix`) AS `recette_c`,`M`.`nom` AS `nom` from (`carte_fidelite` `C` join `magasin` `M`) where `C`.`N°carte` = `M`.`N°carte` group by `M`.`nom` ;

-- --------------------------------------------------------

--
-- Structure de la vue `recette_produit`
--
DROP TABLE IF EXISTS `recette_produit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`user`@`localhost` SQL SECURITY DEFINER VIEW `recette_produit`  AS  select sum(`A1`.`prix`) AS `recette_p`,`M`.`nom` AS `nom` from ((`Article` `A1` join `Vend` `V`) join `magasin` `M`) where `A1`.`reference` = `V`.`reference` and `V`.`Id` = `M`.`Id` group by `M`.`nom` ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `a`
--
ALTER TABLE `a`
  ADD PRIMARY KEY (`N°entrepot`,`id`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `Achete`
--
ALTER TABLE `Achete`
  ADD PRIMARY KEY (`N°client`,`Ref_article`),
  ADD KEY `Ref_article` (`Ref_article`);

--
-- Index pour la table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`reference`);

--
-- Index pour la table `carte_fidelite`
--
ALTER TABLE `carte_fidelite`
  ADD PRIMARY KEY (`N°carte`),
  ADD KEY `N°client` (`N°client`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`N°client`);

--
-- Index pour la table `destocke`
--
ALTER TABLE `destocke`
  ADD PRIMARY KEY (`N°entrepot`,`REF ARTICLE`) USING BTREE,
  ADD KEY `REF ARTICLES` (`REF ARTICLE`);

--
-- Index pour la table `entrepots`
--
ALTER TABLE `entrepots`
  ADD PRIMARY KEY (`N°entrepot`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`N°fournisseur`);

--
-- Index pour la table `magasin`
--
ALTER TABLE `magasin`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `N°carte` (`N°carte`);

--
-- Index pour la table `Reprend`
--
ALTER TABLE `Reprend`
  ADD PRIMARY KEY (`Id`,`reference`),
  ADD KEY `reference` (`reference`);

--
-- Index pour la table `Retourne`
--
ALTER TABLE `Retourne`
  ADD PRIMARY KEY (`N°client`,`Ref_article`),
  ADD KEY `Ref_article` (`Ref_article`);

--
-- Index pour la table `se_fourni`
--
ALTER TABLE `se_fourni`
  ADD PRIMARY KEY (`N°fournisseur`,`Id`),
  ADD KEY `Id` (`Id`);

--
-- Index pour la table `stocke`
--
ALTER TABLE `stocke`
  ADD PRIMARY KEY (`N°entrepot`,`REF ARTICLE`) USING BTREE,
  ADD KEY `REF ARTICLES` (`REF ARTICLE`);

--
-- Index pour la table `Vend`
--
ALTER TABLE `Vend`
  ADD PRIMARY KEY (`Id`,`reference`),
  ADD KEY `reference` (`reference`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `N°client` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `entrepots`
--
ALTER TABLE `entrepots`
  MODIFY `N°entrepot` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `N°fournisseur` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `a`
--
ALTER TABLE `a`
  ADD CONSTRAINT `ID1` FOREIGN KEY (`id`) REFERENCES `magasin` (`id`),
  ADD CONSTRAINT `N°entrepot` FOREIGN KEY (`N°entrepot`) REFERENCES `entrepots` (`N°entrepot`);

--
-- Contraintes pour la table `Achete`
--
ALTER TABLE `Achete`
  ADD CONSTRAINT `Achete_ibfk_1` FOREIGN KEY (`N°client`) REFERENCES `client` (`N°client`),
  ADD CONSTRAINT `Achete_ibfk_2` FOREIGN KEY (`Ref_article`) REFERENCES `Article` (`reference`);

--
-- Contraintes pour la table `carte_fidelite`
--
ALTER TABLE `carte_fidelite`
  ADD CONSTRAINT `carte_fidelite_ibfk_1` FOREIGN KEY (`N°client`) REFERENCES `client` (`N°client`);

--
-- Contraintes pour la table `magasin`
--
ALTER TABLE `magasin`
  ADD CONSTRAINT `magasin_ibfk_1` FOREIGN KEY (`N°carte`) REFERENCES `carte_fidelite` (`N°carte`);

--
-- Contraintes pour la table `Reprend`
--
ALTER TABLE `Reprend`
  ADD CONSTRAINT `Reprend_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `magasin` (`id`),
  ADD CONSTRAINT `Reprend_ibfk_2` FOREIGN KEY (`reference`) REFERENCES `Article` (`reference`);

--
-- Contraintes pour la table `Retourne`
--
ALTER TABLE `Retourne`
  ADD CONSTRAINT `Retourne_ibfk_1` FOREIGN KEY (`N°client`) REFERENCES `client` (`N°client`),
  ADD CONSTRAINT `Retourne_ibfk_2` FOREIGN KEY (`Ref_article`) REFERENCES `Article` (`reference`);

--
-- Contraintes pour la table `se_fourni`
--
ALTER TABLE `se_fourni`
  ADD CONSTRAINT `se_fourni_ibfk_1` FOREIGN KEY (`N°fournisseur`) REFERENCES `fournisseur` (`N°fournisseur`),
  ADD CONSTRAINT `se_fourni_ibfk_2` FOREIGN KEY (`Id`) REFERENCES `magasin` (`Id`);

--
-- Contraintes pour la table `Vend`
--
ALTER TABLE `Vend`
  ADD CONSTRAINT `Vend_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `magasin` (`id`),
  ADD CONSTRAINT `Vend_ibfk_2` FOREIGN KEY (`reference`) REFERENCES `Article` (`reference`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
