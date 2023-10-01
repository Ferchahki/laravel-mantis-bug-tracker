-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  sam. 27 juin 2020 à 07:25
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mantisbt`
--

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bug_table`
--

CREATE TABLE `mantis_bug_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reporter_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `handler_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `duplicate_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `priority` smallint(6) NOT NULL DEFAULT '30',
  `severity` smallint(6) NOT NULL DEFAULT '50',
  `reproducibility` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `resolution` smallint(6) NOT NULL DEFAULT '10',
  `projection` smallint(6) NOT NULL DEFAULT '10',
  `eta` smallint(6) NOT NULL DEFAULT '10',
  `bug_text_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '',
  `fixed_in_version` varchar(64) NOT NULL DEFAULT '',
  `build` varchar(32) NOT NULL DEFAULT '',
  `profile_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `summary` varchar(128) NOT NULL DEFAULT '',
  `sponsorship_total` int(11) NOT NULL DEFAULT '0',
  `sticky` tinyint(4) NOT NULL DEFAULT '0',
  `target_version` varchar(64) NOT NULL DEFAULT '',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `date_submitted` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `due_date` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `last_updated` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mantis_bug_table`
--

INSERT INTO `mantis_bug_table` (`id`, `project_id`, `reporter_id`, `handler_id`, `duplicate_id`, `priority`, `severity`, `reproducibility`, `status`, `resolution`, `projection`, `eta`, `bug_text_id`, `os`, `os_build`, `platform`, `version`, `fixed_in_version`, `build`, `profile_id`, `view_state`, `summary`, `sponsorship_total`, `sticky`, `target_version`, `category_id`, `date_submitted`, `due_date`, `last_updated`) VALUES
(1, 1, 1, 0, 0, 60, 80, 10, 10, 10, 10, 10, 1, '', '', '', '', '', '', 0, 50, '[SC16] impossible d\'afficher le rapport de formation', 0, 0, '', 2, 1593183981, 1, 1593183981),
(2, 1, 1, 0, 0, 30, 50, 70, 10, 10, 10, 10, 2, '', '', '', '', '', '', 0, 50, 'Corriger le titre de la formation F3', 0, 0, '', 3, 1593184151, 1, 1593184151),
(3, 2, 1, 0, 0, 50, 60, 70, 20, 10, 10, 10, 3, '', '', '', '', '', '', 0, 10, 'Cumul à vérifier', 0, 0, '', 2, 1593187645, 1, 1593241970),
(4, 2, 1, 0, 0, 60, 60, 70, 80, 10, 10, 10, 4, '', '', '', '', '', '', 0, 10, 'L\'année ne correspond pas à l\'année de la formation', 0, 0, '', 2, 1593187747, 1, 1593240077),
(5, 2, 1, 0, 0, 60, 70, 70, 80, 10, 10, 10, 5, '', '', '', '', '', '', 0, 10, 'Différence tracking rapport/passeport', 0, 0, '', 2, 1593188088, 1, 1593240093),
(6, 2, 1, 0, 0, 20, 40, 10, 40, 10, 10, 10, 6, '', '', '', '', '', '', 0, 50, 'Titre trop petit sur l\'attestation', 0, 0, '', 3, 1593188201, 1, 1593240398),
(7, 2, 1, 0, 0, 60, 80, 10, 10, 10, 10, 10, 7, '', '', '', '', '', '', 0, 10, 'Maximum de tentatives dépassé', 0, 0, '', 2, 1593188433, 1, 1593188433),
(8, 3, 1, 0, 0, 60, 60, 70, 80, 10, 10, 10, 8, '', '', '', '', '', '', 0, 50, 'Identifiants erronés', 0, 0, '', 2, 1593236166, 1, 1593240680),
(9, 3, 1, 0, 0, 30, 50, 10, 10, 10, 10, 10, 9, '', '', '', '', '', '', 0, 50, 'Largeur du tableau non adaptée', 0, 0, '', 3, 1593236248, 1, 1593236248),
(10, 1, 1, 1, 0, 60, 20, 10, 90, 10, 10, 10, 10, '', '', '', '', '', '', 0, 50, 'Améliorer le chargement de l\'application', 0, 0, '', 3, 1593242178, 1, 1593242229);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bug_tag_table`
--

CREATE TABLE `mantis_bug_tag_table` (
  `bug_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tag_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_attached` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mantis_bug_tag_table`
--

INSERT INTO `mantis_bug_tag_table` (`bug_id`, `tag_id`, `user_id`, `date_attached`) VALUES
(6, 1, 1, 1593188201),
(6, 2, 1, 1593188201);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bug_text_table`
--

CREATE TABLE `mantis_bug_text_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `steps_to_reproduce` longtext NOT NULL,
  `additional_information` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mantis_bug_text_table`
--

INSERT INTO `mantis_bug_text_table` (`id`, `description`, `steps_to_reproduce`, `additional_information`) VALUES
(1, 'Après clic sur rapports, le système affiche une page blanche.', '-Etape 1\r\n-Etape 2\r\n-Etape 3', ''),
(2, 'Mettre titre: Maîtriser la saisie et les rapports', '', ''),
(3, 'Cumul à vérifier car tracking erroné', '', 'impossible à reproduire'),
(4, 'Dans le PDF de l\'attestation, l\'année ne correspond pas à l\'année de la formation', '', ''),
(5, 'il y\'a un petit décalage du tracking affiché entre le passeport et le rapport PDF', '', ''),
(6, 'Augmenter légèrement la taille du titre de l\'attestation', '', 'Informations complémentaires: Ce n\'est pas trop urgent'),
(7, 'tentatives de quiz dépassé et pourtant le renvoi d\'une invitation est possible', '', ''),
(8, 'Identifiants erronés', '', ''),
(9, 'Largeur du tableau non adaptée', '', ''),
(10, 'Améliorer le chargement de l\'application / compression et CDN', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `mantis_category_table`
--

CREATE TABLE `mantis_category_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mantis_category_table`
--

INSERT INTO `mantis_category_table` (`id`, `project_id`, `user_id`, `name`, `status`) VALUES
(1, 0, 0, 'General', 0),
(2, 0, 0, 'Bug', 0),
(3, 0, 0, 'Amélioration', 0),
(4, 0, 0, 'Mise en page', 0);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_project_table`
--

CREATE TABLE `mantis_project_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `access_min` smallint(6) NOT NULL DEFAULT '10',
  `file_path` varchar(250) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `inherit_global` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mantis_project_table`
--

INSERT INTO `mantis_project_table` (`id`, `name`, `status`, `enabled`, `view_state`, `access_min`, `file_path`, `description`, `category_id`, `inherit_global`) VALUES
(1, 'Projet 1 CLI', 10, 1, 50, 10, '', 'Description du projet 1 CLI', 1, 1),
(2, 'Projet 2 CLI', 10, 1, 50, 10, '', 'Description du projet 2 CLI', 1, 1),
(3, 'Projet 3 CLI', 10, 1, 50, 10, '', 'Description du projet 3 CLI', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_tag_table`
--

CREATE TABLE `mantis_tag_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `date_created` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `date_updated` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mantis_tag_table`
--

INSERT INTO `mantis_tag_table` (`id`, `user_id`, `name`, `description`, `date_created`, `date_updated`) VALUES
(1, 1, 'amélioration', '', 1593188201, 1593188201),
(2, 1, 'pas urgent', '', 1593188201, 1593188201);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mantis_bug_table`
--
ALTER TABLE `mantis_bug_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bug_sponsorship_total` (`sponsorship_total`),
  ADD KEY `idx_bug_fixed_in_version` (`fixed_in_version`),
  ADD KEY `idx_bug_status` (`status`),
  ADD KEY `idx_project` (`project_id`);

--
-- Index pour la table `mantis_bug_tag_table`
--
ALTER TABLE `mantis_bug_tag_table`
  ADD PRIMARY KEY (`bug_id`,`tag_id`),
  ADD KEY `idx_bug_tag_tag_id` (`tag_id`);

--
-- Index pour la table `mantis_bug_text_table`
--
ALTER TABLE `mantis_bug_text_table`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mantis_category_table`
--
ALTER TABLE `mantis_category_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_category_project_name` (`project_id`,`name`);

--
-- Index pour la table `mantis_project_table`
--
ALTER TABLE `mantis_project_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_project_name` (`name`),
  ADD KEY `idx_project_view` (`view_state`);

--
-- Index pour la table `mantis_tag_table`
--
ALTER TABLE `mantis_tag_table`
  ADD PRIMARY KEY (`id`,`name`),
  ADD KEY `idx_tag_name` (`name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mantis_bug_table`
--
ALTER TABLE `mantis_bug_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `mantis_bug_text_table`
--
ALTER TABLE `mantis_bug_text_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `mantis_category_table`
--
ALTER TABLE `mantis_category_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `mantis_project_table`
--
ALTER TABLE `mantis_project_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `mantis_tag_table`
--
ALTER TABLE `mantis_tag_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
