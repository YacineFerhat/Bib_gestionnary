-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 20 juil. 2019 à 13:53
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cawa`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `Num` int(3) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `DateDeNaissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`Num`, `Nom`, `Prenom`, `DateDeNaissance`) VALUES
(1, 'John', 'Gray', '1951-12-28'),
(3, 'Mammeri', 'Mouloud', '1917-12-28'),
(4, 'Carla', 'capalbo', '1964-01-20'),
(5, 'Carole', 'Clements', '1974-10-03'),
(6, 'Jenevieve', 'Warnau', '1977-04-10'),
(7, 'Fiona', 'Mcdonald', '1965-06-29');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `ISSN` int(10) NOT NULL,
  `Titre` varchar(100) NOT NULL,
  `Auteur` varchar(40) NOT NULL,
  `Resume` varchar(2000) NOT NULL,
  `NbPage` int(3) NOT NULL,
  `Domaine` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`ISSN`, `Titre`, `Auteur`, `Resume`, `NbPage`, `Domaine`) VALUES
(1, 'Venus en feu, Mars de glace', 'John Gray', 'Livre psycologique qui parle de la différence entre les hommes et les femmes', 318, 'Psychologie'),
(2, 'Escale', 'Franck Bonnet', 'Au coeur de chaque nouvelle, il y a une rencotre réel ou mytique', 104, 'Littérature'),
(3, 'A la rencontre des animaux', 'Camille Brunel', 'Présentation des différents animaux sauvages et domestiques', 300, 'Encyclopédie'),
(4, 'Questions et réponses, notre monde', 'Pr Smith', 'Traites différentes thématiques en rapport avec la Terre.', 175, 'Culture G'),
(5, 'Les classiques de la cuisine méditerranéenne', 'Samira Chibane', 'Recueil de recettes d\'origine méditerranéenne.', 64, 'Cuisine'),
(6, 'apprendre à coder', 'Grafitikart', 'u will learn how to code', 102, 'coding'),
(7, 'Harry Potter and the Philosopher', ' J. K. Rowling', 'The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school, and with the help of his friends, Harry faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old', 330, 'Fantastique'),
(8, 'Harry Potter and the Chamber of Secrets', 'J. K. Rowling', ' the second novel in the Harry Potter series. The plot follows Harry\'s second year at Hogwarts School of Witchcraft and Wizardry, during which a series of messages on the walls of the school\'s corridors warn that the \"Chamber of Secrets\" has been opened and that the \"heir of Slytherin\" would kill all pupils who do not come from all-magical families. These threats are found after attacks which leave residents of the school petrified. Throughout the year, Harry and his friends Ron and Hermione investigate the attacks', 360, 'Fantastique'),
(9, 'Harry Potter and the Prisoner of Azkaban', 'J. K. Rowling', 'the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry. Along with friends Ronald Weasley and Hermione Granger, Harry investigates Sirius Black, an escaped prisoner from Azkaban who they believe is one of Lord Voldemort', 460, 'Fantastique'),
(10, 'Warcraft : Le Jour du dragon', 'Richard A. Knaak', 'À la suite d\'un événement, les plus puissants sorciers du monde envoient Rhonin, le mage rebelle, accomplir une mission. Dans Khaz Modan ravagé par les orcs, Rhonin découvre une menace qui va l\'obliger à s\'allier avec une elfe, un nain et à d\'anciennes créatures de l\'air et du feu? avec l\'espoir qu\'Azeroth connaisse une nouvelle aube. ', 230, 'Fantastique'),
(11, 'Warcraft: Le Dernier Gardien', ' Jeff Grubb', 'Au cours de l\'histoire on apprend comment les orcs ont pu mettre un pied sur Azeroth et comment Khadgar, un puissant magicien ayant pris part à l\'expédition sur Draenor, (voir Beyond the Dark Portal) est passé de serviteur à apprenti et d\'apprenti à maître magicien. ', 379, 'Fantastique');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(10) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `passWord` varchar(20) NOT NULL,
  `grade` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `email`, `passWord`, `grade`) VALUES
(1, 'Ferhat', 'Yacine', 'Yacine.frhat@gmail.com', 'yyssmf1997', 1),
(2, 'Ouali', 'Mustapha', 'Ouali.Mustapha@gmail.com', '', 1),
(3, 'Akkouche', 'Amelia', 'Amelia.Akk@gmail.com', 'AmeliaAkk', 0),
(4, 'Kara', 'Sarah', 'Sarah.kara@gmail.com', 'SarahKara', 0),
(5, 'Bour', 'Feriel', 'Bour.feriel@gmail.com', 'feriel', 0),
(6, 'User', 'User', 'User@gmail.com', 'user', 0),
(7, 'Admin', 'Admin', 'admin@gmail.com', 'admin', 1),
(18, '12', '123', '123@gmail.com', '123', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`Num`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`ISSN`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `Num` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `ISSN` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
