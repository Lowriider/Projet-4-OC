-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : db5000834980.hosting-data.io
-- Généré le : mer. 02 sep. 2020 à 12:45
-- Version du serveur :  5.7.30-log
-- Version de PHP : 7.0.33-0+deb9u9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbs737598`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `autor` varchar(255) COLLATE utf8_bin NOT NULL,
  `excerpt` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `created_at`, `autor`, `excerpt`) VALUES
(1, 'l\'histoire de la bergeronnette', '<p>azeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>', '2020-08-26 18:42:16', 'Jean Forteroche', '<p>aeazeazeazeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>'),
(2, 'le chien', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">veritatis qui architecto, dolore quidem labore repellat earum doloremque dolor maiores at harum aliquid cum!Alias dolorem nobis sequi</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">consectetur dicta odio! Nesciunt illo voluptatum ab quis maiores officia! Beatae perferendis architecto culpa aperiam suscipit qui maxime</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">et dolor?</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">Voluptas veritatis praesentium laboriosam placeat labore.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">veritatis qui architecto, dolore quidem labore repellat earum doloremque dolor maiores at harum aliquid cum!Alias dolorem nobis sequi</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">consectetur dicta odio! Nesciunt illo voluptatum ab quis maiores officia! Beatae perferendis architecto culpa aperiam suscipit qui maxime</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">et dolor?</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">Voluptas veritatis praesentium laboriosam placeat labore.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">veritatis qui architecto, dolore quidem labore repellat earum doloremque dolor maiores at harum aliquid cum!Alias dolorem nobis sequi</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">consectetur dicta odio! Nesciunt illo voluptatum ab quis maiores officia! Beatae perferendis architecto culpa aperiam suscipit qui maxime</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">et dolor?</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">Voluptas veritatis praesentium laboriosam placeat labore.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">veritatis qui architecto, dolore quidem labore repellat earum doloremque dolor maiores at harum aliquid cum!Alias dolorem nobis sequi</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">consectetur dicta odio! Nesciunt illo voluptatum ab quis maiores officia! Beatae perferendis architecto culpa aperiam suscipit qui maxime</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">et dolor?</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">Voluptas veritatis praesentium laboriosam placeat labore.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">veritatis qui architecto, dolore quidem labore repellat earum doloremque dolor maiores at harum aliquid cum!Alias dolorem nobis sequi</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">consectetur dicta odio! Nesciunt illo voluptatum ab quis maiores officia! Beatae perferendis architecto culpa aperiam suscipit qui maxime</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">et dolor?</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">Voluptas veritatis praesentium laboriosam placeat labore.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">veritatis qui architecto, dolore quidem labore repellat earum doloremque dolor maiores at harum aliquid cum!Alias dolorem nobis sequi</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">consectetur dicta odio! Nesciunt illo voluptatum ab quis maiores officia! Beatae perferendis architecto culpa aperiam suscipit qui maxime</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">et dolor?</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">Voluptas veritatis praesentium laboriosam placeat labore.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">veritatis qui architecto, dolore quidem labore repellat earum doloremque dolor maiores at harum aliquid cum!Alias dolorem nobis sequi</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">consectetur dicta odio! Nesciunt illo voluptatum ab quis maiores officia! Beatae perferendis architecto culpa aperiam suscipit qui maxime</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">et dolor?</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">Voluptas veritatis praesentium laboriosam placeat labore.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">veritatis qui architecto, dolore quidem labore repellat earum doloremque dolor maiores at harum aliquid cum!Alias dolorem nobis sequi</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">consectetur dicta odio! Nesciunt illo voluptatum ab quis maiores officia! Beatae perferendis architecto culpa aperiam suscipit qui maxime</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">et dolor?</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;\">Voluptas veritatis praesentium laboriosam placeat labore.</p>', '2020-08-26 18:47:15', 'Jean Forteroche', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p>&nbsp;</p>'),
(3, 'azezae', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p>veritatis qui architecto, dolore quidem labore repellat earum doloremque dolor maiores at harum aliquid cum!Alias dolorem nobis sequi</p>\r\n<p>consectetur dicta odio! Nesciunt illo voluptatum ab quis maiores officia! Beatae perferendis architecto culpa aperiam suscipit qui maxime</p>\r\n<p>et dolor?</p>\r\n<p>Voluptas veritatis praesentium laboriosam placeat labore.</p>', '2020-08-26 18:49:17', 'Jean Forteroche', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p>&nbsp;</p>'),
(4, 'l\'histoire de la mouette', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p>veritatis qui architecto, dolore quidem labore repellat earum doloremque dolor maiores at harum aliquid cum!Alias dolorem nobis sequi</p>\r\n<p>consectetur dicta odio! Nesciunt illo voluptatum ab quis maiores officia! Beatae perferendis architecto culpa aperiam suscipit qui maxime</p>\r\n<p>et dolor?</p>\r\n<p>Voluptas veritatis praesentium laboriosam placeat labore.</p>', '2020-08-26 18:51:30', 'Jean Forteroche', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas eligendi delectus provident voluptates reiciendis ea,</p>\r\n<p>&nbsp;</p>'),
(5, 'l\'arctique', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum adipisci reiciendis alias in voluptatem vero dolor aut possimus nisi esse incidunt consequatur repellendus tempora vel necessitatibus autem, voluptatibus cumque quidem.</p>\r\n<p>Aliquam cupiditate deserunt tempore cumque culpa molestiae pariatur temporibus qui eligendi, totam sit nulla porro rem, obcaecati provident sapiente quidem! Eos placeat quia nulla excepturi necessitatibus explicabo sit ad laboriosam?</p>\r\n<p>Corrupti, esse modi. Accusamus distinctio optio mollitia enim provident sunt, autem repellendus sint magnam tempora debitis quidem molestiae. Accusamus ipsa laudantium placeat. Magni, iusto dolores minima assumenda quos corporis culpa.</p>\r\n<p>Accusantium magnam recusandae minus vel inventore. Exercitationem nemo hic optio voluptatum. Ea nemo odio corrupti quaerat deserunt quidem iste esse voluptatem. Sequi dolorum delectus tenetur sapiente voluptate iusto doloremque culpa.</p>\r\n<p>Commodi molestias iure nesciunt. Sunt labore fuga animi! Commodi quo maiores explicabo a placeat accusamus cum vel! Incidunt dolores, rem atque sit perferendis ea. Nemo repellendus vel obcaecati natus dicta.</p>\r\n<p>Perferendis aspernatur minima odio mollitia eum nisi ea eligendi laborum esse, eveniet adipisci. Consequatur, sed non soluta voluptatem tempora dolores ipsum doloremque similique. Veniam rem, aperiam accusantium minus quas hic.</p>\r\n<p>Est natus possimus facilis qui ratione alias reprehenderit unde, repellat ea magni labore cum assumenda impedit error necessitatibus odit minus eos nulla quae minima omnis iusto corporis sint. Voluptatem, alias.</p>\r\n<p>Dolores, velit consequuntur est cupiditate magni corrupti laudantium, necessitatibus esse nostrum repellendus rem ipsum maxime veritatis perferendis voluptatum doloremque autem aspernatur eos illo sunt illum ab commodi. Aliquid, eum illum.</p>\r\n<p>Nobis impedit, iusto ut voluptatibus aut eveniet saepe eos hic similique officia? Voluptatum quis quod quo reiciendis nisi fugit, laboriosam optio dolorem consequuntur dolore ipsam animi assumenda eveniet magni laudantium.</p>\r\n<p>Minus amet iure quasi quis architecto repellat consequuntur culpa beatae cum doloremque debitis ex omnis tempora aperiam rem dolor doloribus eos praesentium magni dignissimos, unde exercitationem iusto aspernatur assumenda. Numquam?</p>\r\n<p>Nisi provident molestias minima beatae, consequatur dolorum amet corrupti blanditiis ex illo veniam eaque odio! Eveniet quas nam ipsa nostrum sint recusandae veniam et reiciendis corrupti repellendus, aperiam doloribus porro?</p>', '2020-09-02 12:46:40', 'Jean Forteroche', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum adipisci reiciendis alias in voluptatem vero dolor aut possimus nisi esse incidunt consequatur repellendus tempora vel necessitatibus autem, voluptatibus cumque quidem.</p>'),
(6, 'la vie est belle', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum adipisci reiciendis alias in voluptatem vero dolor aut possimus nisi esse incidunt consequatur repellendus tempora vel necessitatibus autem, voluptatibus cumque quidem.</p>\r\n<p>Aliquam cupiditate deserunt tempore cumque culpa molestiae pariatur temporibus qui eligendi, totam sit nulla porro rem, obcaecati provident sapiente quidem! Eos placeat quia nulla excepturi necessitatibus explicabo sit ad laboriosam?</p>\r\n<p>Corrupti, esse modi. Accusamus distinctio optio mollitia enim provident sunt, autem repellendus sint magnam tempora debitis quidem molestiae. Accusamus ipsa laudantium placeat. Magni, iusto dolores minima assumenda quos corporis culpa.</p>\r\n<p>Accusantium magnam recusandae minus vel inventore. Exercitationem nemo hic optio voluptatum. Ea nemo odio corrupti quaerat deserunt quidem iste esse voluptatem. Sequi dolorum delectus tenetur sapiente voluptate iusto doloremque culpa.</p>\r\n<p>Commodi molestias iure nesciunt. Sunt labore fuga animi! Commodi quo maiores explicabo a placeat accusamus cum vel! Incidunt dolores, rem atque sit perferendis ea. Nemo repellendus vel obcaecati natus dicta.</p>\r\n<p>Perferendis aspernatur minima odio mollitia eum nisi ea eligendi laborum esse, eveniet adipisci. Consequatur, sed non soluta voluptatem tempora dolores ipsum doloremque similique. Veniam rem, aperiam accusantium minus quas hic.</p>\r\n<p>Est natus possimus facilis qui ratione alias reprehenderit unde, repellat ea magni labore cum assumenda impedit error necessitatibus odit minus eos nulla quae minima omnis iusto corporis sint. Voluptatem, alias.</p>\r\n<p>Dolores, velit consequuntur est cupiditate magni corrupti laudantium, necessitatibus esse nostrum repellendus rem ipsum maxime veritatis perferendis voluptatum doloremque autem aspernatur eos illo sunt illum ab commodi. Aliquid, eum illum.</p>\r\n<p>Nobis impedit, iusto ut voluptatibus aut eveniet saepe eos hic similique officia? Voluptatum quis quod quo reiciendis nisi fugit, laboriosam optio dolorem consequuntur dolore ipsam animi assumenda eveniet magni laudantium.</p>\r\n<p>Minus amet iure quasi quis architecto repellat consequuntur culpa beatae cum doloremque debitis ex omnis tempora aperiam rem dolor doloribus eos praesentium magni dignissimos, unde exercitationem iusto aspernatur assumenda. Numquam?</p>\r\n<p>Nisi provident molestias minima beatae, consequatur dolorum amet corrupti blanditiis ex illo veniam eaque odio! Eveniet quas nam ipsa nostrum sint recusandae veniam et reiciendis corrupti repellendus, aperiam doloribus porro?</p>', '2020-09-02 12:47:06', 'Jean Forteroche', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum adipisci reiciendis alias in voluptatem vero dolor aut possimus nisi esse incidunt consequatur repellendus tempora vel necessitatibus autem, voluptatibus cumque quidem.</p>');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `idArticle` int(11) NOT NULL,
  `autor` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `idArticle`, `autor`, `content`, `created_at`, `visible`) VALUES
(1, 4, 'Jean Forteroche', 'Molo coquelicot sur les commentaires les jeunes !', '2020-08-26 19:29:45', 0),
(2, 4, 'VI NEED TO VINE TIS RAAAOUND', 'VI NEED TO VINE TIS RAAAOUND', '2020-08-26 20:10:00', 0),
(3, 4, 'DIMITRI', 'DONT VORY BE RUSKI', '2020-08-26 20:10:28', 0),
(4, 4, 'VLADIMIR', 'KURWA CYKA BLYAT', '2020-08-26 20:10:44', 0),
(5, 6, 'billy', 'azeaeaeazeae', '2020-09-02 12:47:34', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `pass` varchar(255) COLLATE utf8_bin NOT NULL,
  `nickname` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `pass`, `nickname`, `created_at`, `role`) VALUES
(3, '$2y$10$wk4UEypPFlCJXIeNcf98ZOSqPhXpJ9xdAH.gSbSnJo1TqxKqpp4Gy', 'JeanForte', '2020-08-26 19:13:41', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
