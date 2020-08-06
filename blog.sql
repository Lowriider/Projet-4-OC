-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 09 juil. 2020 à 16:56
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
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `excerpt` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `created_at`, `autor`, `excerpt`) VALUES
(27, 'l\'histoire de MMLP', '                                Le Chat domestique (Felis silvestris catus) est la sous-espèce issue de la domestication du Chat sauvage, mammifère carnivore de la famille des Félidés.\r\n\r\nIl est l’un des principaux animaux de compagnie et compte aujourd’hui une cinquantaine de races différentes reconnues par les instances de certification. Dans de très nombreux pays, le chat entre dans le cadre de la législation sur les carnivores domestiques à l’instar du chien et du furet. Essentiellement territorial, le chat est un prédateur de petites proies comme les rongeurs ou les oiseaux. Les chats ont diverses vocalisations dont les ronronnements, les miaulements, les feulements ou les grognements, bien qu’ils communiquent principalement par des positions faciales et corporelles et des phéromones.\r\n\r\nSelon les résultats de travaux menés en 2006 et 20071, le chat domestique est une sous-espèce du chat sauvage (Felis silvestris) issue d’ancêtres appartenant à la sous-espèce du chat sauvage d’Afrique (Felis silvestris lybica). Les premières domestications auraient eu lieu il y a 8 000 à 10 000 ans au Néolithique dans le Croissant fertile, époque correspondant au début de la culture de céréales et à l’engrangement de réserves susceptibles d’être attaquées par des rongeurs, le chat devenant alors pour l’Homme un auxiliaire utile se prêtant à la domestication.\r\n\r\nTout d’abord vénéré par les Égyptiens, il fut diabolisé en Europe au Moyen Âge et ne retrouva ses lettres de noblesse qu’au xviiie siècle. En Asie, le chat reste synonyme de chance, de richesse ou de longévité. Ce félin a laissé son empreinte dans la culture populaire et artistique, tant au travers d’expressions populaires que de représentations diverses au sein de la littérature, de la peinture ou encore de la musique.                ', '2020-06-27 14:06:12', 'billyCrawford', '                                     Le Chat domestique (Felis silvestris catus) est la sous-espèce issue de la domestication du Chat sauvage, mammifère carnivore de la famille des Félidés.\r\n\r\nIl est l’un des principaux animaux de compagnie et compte aujo');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idArticle` int(11) NOT NULL,
  `autor` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `idArticle`, `autor`, `content`, `created_at`, `visible`) VALUES
(2, 10, 'azDSd', '                  AZDadAZD', '2020-06-24 17:51:09', 1),
(3, 10, 'billy', '                  dazdazdazdazdazdazd', '2020-06-24 17:53:04', 1),
(4, 10, 'fils de pute de marie marcq', '                  ', '2020-06-24 18:34:14', 1),
(5, 11, 'MMLP', '                  je vais porter plainte wallah sur le coran d\'ma shneck', '2020-06-24 18:35:34', 1),
(6, 10, 'billy', '                  fezafezfzeffezfz\r\n', '2020-06-24 19:46:19', 1),
(7, 30, 'ertgert', '                           \r\n                  ', '2020-06-30 16:35:12', 1),
(44, 27, 'azeaeaze', '                       azeazeaez     ', '2020-07-09 18:41:39', 1),
(43, 27, 'azeaezaze', '                            azeazeaezaze', '2020-07-09 18:41:34', 1),
(42, 27, 'azeazeaze', '                       azeazeaeaze     ', '2020-07-09 18:41:29', 1),
(38, 28, 'azezaeaeaz', '                            eazeazeazeae', '2020-07-09 18:05:36', 1),
(41, 27, 'azezaeaz', '                    eazezaeazeae        ', '2020-07-09 18:41:25', 1),
(13, 30, 'ruttruru', '                           \r\n                  rurtuyurtu', '2020-06-30 17:19:05', 1),
(36, 28, 'azezaezae', '                            azezaeazeaezaeazeazeeazeazeaze', '2020-07-09 18:05:26', 1),
(35, 28, 'azezaeaz', '                            eazezaeaze', '2020-07-09 17:49:10', 1),
(16, 30, 'zerezrez', '                           \r\n                  zerrezrzrezr', '2020-06-30 17:30:26', 1),
(17, 30, 'zerzerzerz', '                           \r\n                  zerrzerzer', '2020-06-30 17:30:29', 1),
(32, 27, 'erateart', '                            aretaertaret', '2020-07-08 18:40:01', 0),
(19, 30, 'srthsrthsrh', '                            srthsrhtsrh', '2020-06-30 17:42:31', 1),
(34, 28, 'zdzd', '                            zdzdzd', '2020-07-09 17:43:37', 1),
(33, 28, 'yeytrrtert', '                            ertertet', '2020-07-08 18:46:39', 1),
(31, 28, 'fgdgnbfdwhgd', '                            dgwsdgwdfg', '2020-07-02 23:56:30', 0),
(24, 30, 'billydgdr', '                            gergergergerg', '2020-06-30 17:58:25', 0),
(25, 30, 'zetrzqrz\"r', '                            zerezqRQZRQZER', '2020-06-30 17:58:30', 0),
(29, 28, 'gregerg', '                            qegrqregqergqegrqerg', '2020-07-01 17:49:28', 1),
(30, 27, 'fzefzf', '                  ezFzefEZFezfZEF          ', '2020-07-01 17:49:43', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
