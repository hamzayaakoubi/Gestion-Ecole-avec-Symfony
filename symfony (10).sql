-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 19 avr. 2020 à 21:48
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `symfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

CREATE TABLE `absence` (
  `IDD` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `matiere` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `nbAbsence` int(11) NOT NULL,
  `idEleve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `categ_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `titrearticle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenuarticle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `videoarticle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photoarticle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbrlike` int(11) NOT NULL,
  `nbrdislike` int(11) NOT NULL,
  `nbrvu` int(11) NOT NULL,
  `nbrcomment` int(11) NOT NULL,
  `datearticle` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cantine`
--

CREATE TABLE `cantine` (
  `id_c` int(10) NOT NULL,
  `cin` int(11) NOT NULL,
  `type_abonement` varchar(20) NOT NULL,
  `dureé` varchar(20) NOT NULL,
  `nom` varchar(10) NOT NULL,
  `prenom` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cantine`
--

INSERT INTO `cantine` (`id_c`, `cin`, `type_abonement`, `dureé`, `nom`, `prenom`) VALUES
(7, 1452, 'demi pension', 'trimestre', 'mazen', 'mazen'),
(12, 4444, 'demi pension', 'trimestre', 'Chelba', 'Hamza'),
(13, 22020, 'demi pension', 'semestre', 'mm', 'mm'),
(16, 656565, 'demi pension', 'trimestre', 'wew', 'wew'),
(17, 123987, 'demi pension', 'anneé', 'zikou', 'zikou'),
(19, 986347, 'pension complete', 'trimestre', 'DD', 'DD'),
(20, 2200, 'demi pension', 'trimestre', 'oui', 'oui'),
(23, 123321123, 'demi pension', 'trimestre', 'asef', 'asef'),
(24, 111, 'Pension Complete', 'Semestre', 'mostfa', 'mostfa'),
(26, 117, 'Demi Pension', 'Trimestre', 'ssff', 'ddds');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `subcateg_id` int(11) DEFAULT NULL,
  `libelecategorie` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nbrabo` int(11) NOT NULL,
  `nbrvu` int(11) NOT NULL,
  `photocategorie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desccategorie` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `subcateg_id`, `libelecategorie`, `nbrabo`, `nbrvu`, `photocategorie`, `desccategorie`) VALUES
(1, NULL, 'hh', 0, 1, NULL, 'dfhh');

-- --------------------------------------------------------

--
-- Structure de la table `categoriefaq`
--

CREATE TABLE `categoriefaq` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categoriefaq`
--

INSERT INTO `categoriefaq` (`Id`, `Nom`) VALUES
(20, 'firas'),
(25, 'fufu'),
(21, 'hhhhhhh'),
(22, 'hjhjhjhj'),
(1, 'Java'),
(24, 'kkkkkk'),
(19, 'Ma7moud'),
(2, 'Mobile'),
(16, 'Web'),
(23, 'why');

-- --------------------------------------------------------

--
-- Structure de la table `categorieproposees`
--

CREATE TABLE `categorieproposees` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(500) NOT NULL,
  `Upvotes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` int(11) NOT NULL,
  `annee` varchar(50) NOT NULL,
  `specialite` varchar(50) NOT NULL,
  `groupe` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id`, `annee`, `specialite`, `groupe`) VALUES
(26, 'technique', '2020', '5'),
(27, '2020', 'economie', '8');

-- --------------------------------------------------------

--
-- Structure de la table `club`
--

CREATE TABLE `club` (
  `idClub` int(11) NOT NULL,
  `nomClub` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreation` date NOT NULL,
  `emailClub` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `imageClub` text COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `idPresident` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `club`
--

INSERT INTO `club` (`idClub`, `nomClub`, `dateCreation`, `emailClub`, `imageClub`, `updated_at`, `idPresident`) VALUES
(1, 'cdds', '2020-04-14', 'dddsf@ff.com', 'ffffffffff', '2020-04-22 00:00:00', 112),
(41, 'rotaract', '2020-04-15', 'rotaract@gmail.com', '5e965dec8d659.png', '2020-04-15 03:05:48', 113),
(42, 'IEEE', '2020-04-15', 'IEEE@IEEE.COM', '5e965e6c60766.png', '2020-04-15 03:07:56', 111);

-- --------------------------------------------------------

--
-- Structure de la table `club_eleve`
--

CREATE TABLE `club_eleve` (
  `id` int(11) NOT NULL,
  `idClub` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `etat` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `club_eleve`
--

INSERT INTO `club_eleve` (`id`, `idClub`, `idUser`, `etat`) VALUES
(1, 1, 113, 'en attende');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_com` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_f` int(11) NOT NULL,
  `date_com` date NOT NULL,
  `description_com` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id_com`, `id_user`, `id_f`, `date_com`, `description_com`) VALUES
(1, 111, 1, '2020-04-08', 'asef'),
(2, 111, 3, '2020-04-08', 'wew'),
(3, 113, 2, '2020-04-08', 'mazen'),
(4, 113, 3, '2020-04-08', 'pls'),
(5, 113, 5, '2020-04-08', 'tunisie <3');

-- --------------------------------------------------------

--
-- Structure de la table `emploi_temps`
--

CREATE TABLE `emploi_temps` (
  `id` int(11) NOT NULL,
  `dateDebut` datetime NOT NULL,
  `dateFin` datetime NOT NULL,
  `idMatiere` int(11) DEFAULT NULL,
  `idSalle` int(11) DEFAULT NULL,
  `idClasse` int(11) DEFAULT NULL,
  `idEnseignant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `emploi_temps`
--

INSERT INTO `emploi_temps` (`id`, `dateDebut`, `dateFin`, `idMatiere`, `idSalle`, `idClasse`, `idEnseignant`) VALUES
(0, '2020-04-17 22:50:00', '2020-04-18 23:00:00', 10, 15, 26, 111);

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `idEvenement` int(11) NOT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nbPlaces` int(11) NOT NULL,
  `etat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `typeEvenement` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idClub` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`idEvenement`, `designation`, `nbPlaces`, `etat`, `dateDebut`, `dateFin`, `description`, `typeEvenement`, `idClub`) VALUES
(1, 'll', 12, 'en attende', '2020-04-01', '2020-04-05', 'llll', 'llll', 1),
(38, 'xtree', 21, 'Accepte', '2020-04-15', '2020-04-15', 'zdzd', 'AFAFA', 41),
(39, 'adaa', 30, 'Pas Encore Accepte', '2020-04-15', '2020-04-15', 'zdzd', 'faafa', 42),
(40, 'daaa', 21, 'Accepte', '2020-04-15', '2020-04-15', 'afa', 'faa', 41),
(41, 'fehbebha', 15, 'Pas Encore Accepte', '2020-04-15', '2020-04-16', 'dada', 'fa', 41);

-- --------------------------------------------------------

--
-- Structure de la table `evenement_participant`
--

CREATE TABLE `evenement_participant` (
  `id` int(11) NOT NULL,
  `idEvenement` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `evenement_participant`
--

INSERT INTO `evenement_participant` (`id`, `idEvenement`, `idUser`) VALUES
(1, 1, 117);

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

CREATE TABLE `faq` (
  `Id` int(11) NOT NULL,
  `Question` varchar(2000) NOT NULL,
  `Reponse` varchar(2000) NOT NULL,
  `Categorie` varchar(500) NOT NULL,
  `Vues` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `faq`
--

INSERT INTO `faq` (`Id`, `Question`, `Reponse`, `Categorie`, `Vues`) VALUES
(16, 'concernant le ds web est ce que on peut utilisé les documents', 'yes', 'Web', 19),
(25, 'jjghghghg', 'gjhggh', 'Java', 2),
(26, 'c quoi ', 'oui', 'kkkkkk', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `faqq`
--

CREATE TABLE `faqq` (
  `id` int(10) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qst` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `faqq`
--

INSERT INTO `faqq` (`id`, `description`, `qst`) VALUES
(0, 'Vous pouvez consulter les absences dans l\'espace absence', 'comment afficher les absences'),
(1, 'il ya un espace pour les reclamation ou vous pouvez reclamer', 'comment je peux envoyer une reclamation'),
(2, 'il ya un espace pour les reclamation ou vous pouvez reclamer', 'comment reclamer'),
(3, 'il ya un espace pour les reclamation ou vous pouvez reclamer', 'est ce que je peux reclamer'),
(4, 'il ya un espace pour les reclamation ou vous pouvez reclamer', 'est ce que je peux envoyer une reclamation '),
(5, 'il ya un espace pour les reclamation ou vous pouvez reclamer', 'comment envoyer une reclamation'),
(6, 'vous pouvez afficher les notes dans l\'espace notes ', 'comment afficher les notes'),
(7, 'vous pouvez afficher les notes dans l\'espace notes ', 'est ce que je peux afficher mes notes '),
(8, 'les notes seront publié dans l\'espace notes par les enseignant ou vous pouvez les afficher ', 'comment consulter les notes '),
(9, 'les notes seront publié dans l\'espace notes par les enseignant ou vous pouvez les afficher ', 'comment je peux consulter mes notes'),
(10, 'vous pouvez faire l\'inscription a  la cantine en cliquant sur le button inscription cantine situé da', 'comment inscrire a la cantine'),
(11, 'vous pouvez faire l\'inscription au foyer en cliquant sur le button inscription cantine situé da', 'comment inscrire au foyer');

-- --------------------------------------------------------

--
-- Structure de la table `finance`
--

CREATE TABLE `finance` (
  `num_recu` int(11) NOT NULL,
  `mode_reglement` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `montant_totale` double DEFAULT NULL,
  `type_frais` int(11) DEFAULT NULL,
  `remise` int(11) DEFAULT NULL,
  `montant` double NOT NULL,
  `mois` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode_paiment` varchar(112) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reste` double DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `finance`
--

INSERT INTO `finance` (`num_recu`, `mode_reglement`, `montant_totale`, `type_frais`, `remise`, `montant`, `mois`, `mode_paiment`, `reste`, `date`, `nom`, `prenom`, `email`, `cin`) VALUES
(1, 'par mois', 1455, 1, 55, 100, 'janvier', 'espece', 1400, NULL, 'dd', 'cssssss', 'elkameldhoha@gmail.com', 117),
(2, 'par mois', 1402, 1, 2, 100, 'janvier', 'espece', 1400, NULL, 'dd', 'salami', 'elkameldhoha@gmail.com', 111);

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `num_tel` int(20) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cin` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_naissance` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demande` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'not'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `nom`, `prenom`, `num_tel`, `photo`, `cin`, `sexe`, `status`, `date_naissance`, `demande`) VALUES
(111, 'mostfa.m', 'mostfa.m', 'tsmazen@gmail.com\r\n', 'tsmazen@gmail.com\r\n', 1, NULL, '$2y$13$rB65hOAjvpnWfmSaHuthZex1/kQDnqykgmuIuCbubjnK6nh643neG', '2020-04-16 01:01:29', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ELEVE\";}', 'mostfa', 'mostfa', 85854787, 'mazen.jpg', '7777', 'Homme', NULL, '31-12-1998', NULL),
(112, 'aaa', 'aaa', 'aaa@aa.com', 'aaa@aa.com', 1, NULL, '$2y$13$Sd9R88eMER8uziWNYytd8u4LAlsTMvkOZqLz5b15ZADSJSVUlJabO', '2020-03-21 02:25:57', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 'aaa', 'aaa', 546, 'D:\\xampp\\tmp\\php4BE1.tmp', '0202145022', 'Homme', NULL, '31-12-1998', NULL),
(113, 'gg', 'gg', 'yrou@esprit.tn', 'yrou@esprit.tn', 1, NULL, '$2y$13$FysELpFlfKHad569sg0ZrO.iuoivJVfPl523qjeD/20Fv1Lpe.ul.', '2020-04-19 06:04:26', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_PRESI\";}', 'gg', 'gg', 5444, 'rania.jpg', '08080', 'Femme', NULL, '31-12-1998', NULL),
(114, 'mazenbh', 'mazenbh', 'mazen@gmail.com', 'mazen@gmail.com', 1, NULL, '$2y$13$.sTSEeH3zOdZCwrlj2C7tO7rYH46abyUFY3b6/IVrPN6y3yz3Lyfe', '2020-04-19 21:28:47', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 'mazenbh', 'bh', 27381745, 'D:\\xampp\\tmp\\phpA8F9.tmp', '04060874', 'Homme', NULL, '31-12-1998', NULL),
(115, 'hamza', 'hamza', 'hamza@gmail.com', 'hamza@gmail.com', 1, NULL, '$2y$13$gxYXUAlLMorV.NEGSTaHhORx3ZV37O8/.ibfLz5WFEBCIT6JeZaYy', '2020-04-19 17:15:59', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ELEVE\";}', 'hamza', 'yaakoubi', 25898754, 'C:\\xampp2\\tmp\\php9873.tmp', '87965423', 'Homme', NULL, '27', NULL),
(116, 'chelba', 'chelba', 'chelba@gmail.com', 'chelba@gmail.com', 1, NULL, '$2y$13$IpIojD3pd2yNAK7rqpdxLOilWBHbqURR1PKIevlvE2X5DTH8yknCi', '2020-04-14 22:23:23', NULL, NULL, 'a:1:{i:0;s:15:\"ROLE_ENSEIGNANT\";}', 'chelba', 'chelba', 21548796, 'C:\\xampp2\\tmp\\php7D6F.tmp', '87965432', 'Homme', NULL, '30', NULL),
(117, 'll', 'll', 'elkameldhoha@gmail.com', 'elkameldhoha@gmail.com', 1, NULL, '$2y$13$455qLUd.DcT37iNMBXsjUeZFRKu9jgMSvzxjgdKJ.UQ7IHhVYbwEu', '2020-04-18 02:10:47', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ELEVE\";}\r\n\r\n', 'ssff', 'ddds', 455456465, 'C:\\xampp\\tmp\\php9DDB.tmp', '0994062', 'Homme', NULL, '1995-02-02', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `foyer`
--

CREATE TABLE `foyer` (
  `id` int(255) NOT NULL,
  `style` varchar(20) NOT NULL,
  `description` varchar(20) NOT NULL,
  `numero` int(255) NOT NULL,
  `nbpersonne` int(255) NOT NULL,
  `prix` float NOT NULL,
  `etat` varchar(20) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `reserv` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `foyer`
--

INSERT INTO `foyer` (`id`, `style`, `description`, `numero`, `nbpersonne`, `prix`, `etat`, `photo`, `reserv`) VALUES
(16, 'Chambre A2', 'Chambre A3', 1, 3, 1200, 'parfaite', '52ac6e22fe9ce8649c9e5acbe7a1bde4.png', 'Disponible'),
(42, 'Chambre A2', 'Chambre A2', 2, 2, 800, 'parfaite', '65add1de99954616c8eadafecd78084d.jpeg', 'Non disponible'),
(43, 'Chambre A1', 'spacieuse', 3, 1, 500, 'parfaite', '67ca6b81753c47da0a5cbb915e255d90.jpeg', 'Non disponible');

-- --------------------------------------------------------

--
-- Structure de la table `frais`
--

CREATE TABLE `frais` (
  `id` int(11) NOT NULL,
  `type_frais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `montant` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `frais`
--

INSERT INTO `frais` (`id`, `type_frais`, `montant`) VALUES
(1, 'cantine', 200),
(2, 'foyer', 200),
(3, 'inscription', 400),
(4, 'inscription', 800);

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `id` int(11) NOT NULL,
  `idu` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id`, `idu`, `description`) VALUES
(9, 111, 'User mostfa.madded a subject'),
(10, 111, 'User mostfa.mdeleted a subject');

-- --------------------------------------------------------

--
-- Structure de la table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `coef` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`id`, `nom`, `coef`) VALUES
(10, 'GHL', 2),
(13, 'rabiaa', 3),
(15, 'gl', 3),
(16, 'llj', 2);

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `id_m` int(11) NOT NULL,
  `petitdej` varchar(100) NOT NULL,
  `dej` varchar(100) NOT NULL,
  `dinner` varchar(100) NOT NULL,
  `jour` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `message_metadata`
--

CREATE TABLE `message_metadata` (
  `id` int(11) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  `participant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `Id_Article` int(11) NOT NULL,
  `Id_User` int(11) NOT NULL,
  `Nom_Article` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Contenu_Article` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Image_Article` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Titre_Event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nbrevue` int(11) NOT NULL,
  `Date_Article` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`Id_Article`, `Id_User`, `Nom_Article`, `Contenu_Article`, `Image_Article`, `Titre_Event`, `nbrevue`, `Date_Article`) VALUES
(1, 114, 'Council Meeting', 'What we got from yesterday’s statistics and feedbacks was a big achievement.  All the courses had a record level of student’s attendance and participation. Can it be a honeymoon effect? I don’t think so. I remain convinced that, together, we will make thi', 'Sales-Meeting-Ideas-to-Increase-Your-Team’s-Productivity.jpg', 'Noevent', 48, '13:22:51 01/04/2020'),
(5, 114, 'Online Courses', 'From this Monday we will ensure the continuation of our educational activities by the distance mode. As of this Saturday, you will receive your schedules as usual. What will change is the organization of the sessions to take into account the requirements', 'news_1.jpg', 'Noevent', 60, '18:46:14 10/04/2020'),
(6, 114, 'Design', 'Photoshop and illustrator Workshops and training', 'online-course-blog-header.jpg', 'Noevent', 15, '23:35:57 08/04/2020'),
(8, 114, 'Meeting', 'Let\'s begin with a few vocabulary words. The verbs typically used with “meeting” are “have” and “hold”: We\'re going to ...', 'intro_1.jpg', 'Noevent', 0, '18:47:10 10/04/2020'),
(9, 114, 'Cti', 'If this email looks familiar, it’s because we sent the link\r\nto the wrong calendar earlier. It seems that some of us\r\nare having a hard time letting go of February.', 'intro_3.jpg', 'Noevent', 5, '18:47:54 10/04/2020'),
(10, 114, 'Partenariat', 'to the wrong calendar earlier. It seems that some of usare having a hard time letting go of February.', 'news_3.jpg', 'Noevent', 2, '18:49:42 10/04/2020');

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `IDD` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `matiere` varchar(30) NOT NULL,
  `note` int(11) NOT NULL,
  `idEleve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`IDD`, `nom`, `prenom`, `matiere`, `note`, `idEleve`) VALUES
(1, 'hhf', 'fsffffffff', 'sososo', 3, 111),
(2, 'chahed', 'elkamel', 'fsfqsq', 14, 116);

-- --------------------------------------------------------

--
-- Structure de la table `notifiable_entity`
--

CREATE TABLE `notifiable_entity` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `notifiable_entity`
--

INSERT INTO `notifiable_entity` (`id`, `identifier`, `class`) VALUES
(1, '34', 'UserBundle\\Entity\\User'),
(2, '44', 'UserBundle\\Entity\\User'),
(3, '65', 'UserBundle\\Entity\\User'),
(4, '81', 'UserBundle\\Entity\\User'),
(5, '82', 'UserBundle\\Entity\\User'),
(6, '83', 'UserBundle\\Entity\\User'),
(7, '86', 'UserBundle\\Entity\\User'),
(8, '90', 'UserBundle\\Entity\\User'),
(9, '91', 'UserBundle\\Entity\\User'),
(10, '93', 'UserBundle\\Entity\\User'),
(11, '94', 'UserBundle\\Entity\\User'),
(12, '95', 'UserBundle\\Entity\\User'),
(13, '96', 'UserBundle\\Entity\\User'),
(14, '101', 'UserBundle\\Entity\\User'),
(15, '102', 'UserBundle\\Entity\\User'),
(16, '103', 'UserBundle\\Entity\\User'),
(17, '104', 'UserBundle\\Entity\\User'),
(18, '105', 'UserBundle\\Entity\\User'),
(19, '109', 'UserBundle\\Entity\\User'),
(20, '110', 'UserBundle\\Entity\\User'),
(21, '111', 'UserBundle\\Entity\\User'),
(22, '112', 'UserBundle\\Entity\\User'),
(23, '113', 'UserBundle\\Entity\\User'),
(24, '114', 'UserBundle\\Entity\\User'),
(25, '115', 'UserBundle\\Entity\\User'),
(26, '116', 'UserBundle\\Entity\\User');

-- --------------------------------------------------------

--
-- Structure de la table `notifiable_notification`
--

CREATE TABLE `notifiable_notification` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `notifiable_entity_id` int(11) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `notifiable_notification`
--

INSERT INTO `notifiable_notification` (`id`, `notification_id`, `notifiable_entity_id`, `seen`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 5, 0),
(6, 1, 6, 0),
(7, 1, 7, 0),
(8, 1, 8, 0),
(9, 1, 9, 0),
(10, 1, 10, 0),
(11, 1, 11, 0),
(12, 1, 12, 0),
(13, 1, 13, 0),
(14, 1, 14, 0),
(15, 1, 15, 0),
(16, 1, 16, 0),
(17, 1, 17, 0),
(18, 1, 18, 0),
(19, 1, 19, 0),
(20, 1, 20, 0),
(21, 1, 21, 0),
(22, 1, 22, 0),
(23, 1, 23, 0),
(24, 1, 24, 1),
(25, 2, 1, 0),
(26, 2, 2, 0),
(27, 2, 3, 0),
(28, 2, 4, 0),
(29, 2, 5, 0),
(30, 2, 6, 0),
(31, 2, 7, 0),
(32, 2, 8, 0),
(33, 2, 9, 0),
(34, 2, 10, 0),
(35, 2, 11, 0),
(36, 2, 12, 0),
(37, 2, 13, 0),
(38, 2, 14, 0),
(39, 2, 15, 0),
(40, 2, 16, 0),
(41, 2, 17, 0),
(42, 2, 18, 0),
(43, 2, 19, 0),
(44, 2, 20, 0),
(45, 2, 21, 0),
(46, 2, 22, 0),
(47, 2, 23, 0),
(48, 2, 24, 0),
(49, 3, 1, 0),
(50, 3, 2, 0),
(51, 3, 3, 0),
(52, 3, 4, 0),
(53, 3, 5, 0),
(54, 3, 6, 0),
(55, 3, 7, 0),
(56, 3, 8, 0),
(57, 3, 9, 0),
(58, 3, 10, 0),
(59, 3, 11, 0),
(60, 3, 12, 0),
(61, 3, 13, 0),
(62, 3, 14, 0),
(63, 3, 15, 0),
(64, 3, 16, 0),
(65, 3, 17, 0),
(66, 3, 18, 0),
(67, 3, 19, 0),
(68, 3, 20, 0),
(69, 3, 21, 0),
(70, 3, 22, 0),
(71, 3, 23, 0),
(72, 3, 24, 1),
(73, 4, 1, 0),
(74, 4, 2, 0),
(75, 4, 3, 0),
(76, 4, 4, 0),
(77, 4, 5, 0),
(78, 4, 6, 0),
(79, 4, 7, 0),
(80, 4, 8, 0),
(81, 4, 9, 0),
(82, 4, 10, 0),
(83, 4, 11, 0),
(84, 4, 12, 0),
(85, 4, 13, 0),
(86, 4, 14, 0),
(87, 4, 15, 0),
(88, 4, 16, 0),
(89, 4, 17, 0),
(90, 4, 18, 0),
(91, 4, 19, 0),
(92, 4, 20, 0),
(93, 4, 21, 0),
(94, 4, 22, 0),
(95, 4, 23, 0),
(96, 4, 24, 1),
(97, 5, 1, 0),
(98, 5, 2, 0),
(99, 5, 3, 0),
(100, 5, 4, 0),
(101, 5, 5, 0),
(102, 5, 6, 0),
(103, 5, 7, 0),
(104, 5, 8, 0),
(105, 5, 9, 0),
(106, 5, 10, 0),
(107, 5, 11, 0),
(108, 5, 12, 0),
(109, 5, 13, 0),
(110, 5, 14, 0),
(111, 5, 15, 0),
(112, 5, 16, 0),
(113, 5, 17, 0),
(114, 5, 18, 0),
(115, 5, 19, 0),
(116, 5, 20, 0),
(117, 5, 21, 0),
(118, 5, 22, 0),
(119, 5, 23, 0),
(120, 5, 24, 1),
(121, 6, 1, 0),
(122, 6, 2, 0),
(123, 6, 3, 0),
(124, 6, 4, 0),
(125, 6, 5, 0),
(126, 6, 6, 0),
(127, 6, 7, 0),
(128, 6, 8, 0),
(129, 6, 9, 0),
(130, 6, 10, 0),
(131, 6, 11, 0),
(132, 6, 12, 0),
(133, 6, 13, 0),
(134, 6, 14, 0),
(135, 6, 15, 0),
(136, 6, 16, 0),
(137, 6, 17, 0),
(138, 6, 18, 0),
(139, 6, 19, 0),
(140, 6, 20, 0),
(141, 6, 21, 0),
(142, 6, 22, 0),
(143, 6, 23, 0),
(144, 6, 24, 1),
(145, 7, 1, 0),
(146, 7, 2, 0),
(147, 7, 3, 0),
(148, 7, 4, 0),
(149, 7, 5, 0),
(150, 7, 6, 0),
(151, 7, 7, 0),
(152, 7, 8, 0),
(153, 7, 9, 0),
(154, 7, 10, 0),
(155, 7, 11, 0),
(156, 7, 12, 0),
(157, 7, 13, 0),
(158, 7, 14, 0),
(159, 7, 15, 0),
(160, 7, 16, 0),
(161, 7, 17, 0),
(162, 7, 18, 0),
(163, 7, 19, 0),
(164, 7, 20, 0),
(165, 7, 21, 0),
(166, 7, 22, 0),
(167, 7, 23, 0),
(168, 7, 24, 1),
(169, 8, 1, 0),
(170, 8, 2, 0),
(171, 8, 3, 0),
(172, 8, 4, 0),
(173, 8, 5, 0),
(174, 8, 6, 0),
(175, 8, 7, 0),
(176, 8, 8, 0),
(177, 8, 9, 0),
(178, 8, 10, 0),
(179, 8, 11, 0),
(180, 8, 12, 0),
(181, 8, 13, 0),
(182, 8, 14, 0),
(183, 8, 15, 0),
(184, 8, 16, 0),
(185, 8, 17, 0),
(186, 8, 18, 0),
(187, 8, 19, 0),
(188, 8, 20, 0),
(189, 8, 21, 0),
(190, 8, 22, 0),
(191, 8, 23, 0),
(192, 8, 24, 1),
(193, 9, 1, 0),
(194, 9, 2, 0),
(195, 9, 3, 0),
(196, 9, 4, 0),
(197, 9, 5, 0),
(198, 9, 6, 0),
(199, 9, 7, 0),
(200, 9, 8, 0),
(201, 9, 9, 0),
(202, 9, 10, 0),
(203, 9, 11, 0),
(204, 9, 12, 0),
(205, 9, 13, 0),
(206, 9, 14, 0),
(207, 9, 15, 0),
(208, 9, 16, 0),
(209, 9, 17, 0),
(210, 9, 18, 0),
(211, 9, 19, 0),
(212, 9, 20, 0),
(213, 9, 21, 0),
(214, 9, 22, 0),
(215, 9, 23, 0),
(216, 9, 24, 1),
(217, 10, 1, 0),
(218, 10, 2, 0),
(219, 10, 3, 0),
(220, 10, 4, 0),
(221, 10, 5, 0),
(222, 10, 6, 0),
(223, 10, 7, 0),
(224, 10, 8, 0),
(225, 10, 9, 0),
(226, 10, 10, 0),
(227, 10, 11, 0),
(228, 10, 12, 0),
(229, 10, 13, 0),
(230, 10, 14, 0),
(231, 10, 15, 0),
(232, 10, 16, 0),
(233, 10, 17, 0),
(234, 10, 18, 0),
(235, 10, 19, 0),
(236, 10, 20, 0),
(237, 10, 21, 0),
(238, 10, 22, 0),
(239, 10, 23, 0),
(240, 10, 24, 1),
(241, 11, 1, 0),
(242, 11, 2, 0),
(243, 11, 3, 0),
(244, 11, 4, 0),
(245, 11, 5, 0),
(246, 11, 6, 0),
(247, 11, 7, 0),
(248, 11, 8, 0),
(249, 11, 9, 0),
(250, 11, 10, 0),
(251, 11, 11, 0),
(252, 11, 12, 0),
(253, 11, 13, 0),
(254, 11, 14, 0),
(255, 11, 15, 0),
(256, 11, 16, 0),
(257, 11, 17, 0),
(258, 11, 18, 0),
(259, 11, 19, 0),
(260, 11, 20, 0),
(261, 11, 21, 0),
(262, 11, 22, 0),
(263, 11, 23, 0),
(264, 11, 24, 1),
(265, 12, 1, 0),
(266, 12, 2, 0),
(267, 12, 3, 0),
(268, 12, 4, 0),
(269, 12, 5, 0),
(270, 12, 6, 0),
(271, 12, 7, 0),
(272, 12, 8, 0),
(273, 12, 9, 0),
(274, 12, 10, 0),
(275, 12, 11, 0),
(276, 12, 12, 0),
(277, 12, 13, 0),
(278, 12, 14, 0),
(279, 12, 15, 0),
(280, 12, 16, 0),
(281, 12, 17, 0),
(282, 12, 18, 0),
(283, 12, 19, 0),
(284, 12, 20, 0),
(285, 12, 21, 0),
(286, 12, 22, 0),
(287, 12, 23, 0),
(288, 12, 24, 1),
(289, 13, 1, 0),
(290, 13, 2, 0),
(291, 13, 3, 0),
(292, 13, 4, 0),
(293, 13, 5, 0),
(294, 13, 6, 0),
(295, 13, 7, 0),
(296, 13, 8, 0),
(297, 13, 9, 0),
(298, 13, 10, 0),
(299, 13, 11, 0),
(300, 13, 12, 0),
(301, 13, 13, 0),
(302, 13, 14, 0),
(303, 13, 15, 0),
(304, 13, 16, 0),
(305, 13, 17, 0),
(306, 13, 18, 0),
(307, 13, 19, 0),
(308, 13, 20, 0),
(309, 13, 21, 0),
(310, 13, 22, 0),
(311, 13, 23, 0),
(312, 13, 24, 1),
(313, 14, 1, 0),
(314, 14, 2, 0),
(315, 14, 3, 0),
(316, 14, 4, 0),
(317, 14, 5, 0),
(318, 14, 6, 0),
(319, 14, 7, 0),
(320, 14, 8, 0),
(321, 14, 9, 0),
(322, 14, 10, 0),
(323, 14, 11, 0),
(324, 14, 12, 0),
(325, 14, 13, 0),
(326, 14, 14, 0),
(327, 14, 15, 0),
(328, 14, 16, 0),
(329, 14, 17, 0),
(330, 14, 18, 0),
(331, 14, 19, 0),
(332, 14, 20, 0),
(333, 14, 21, 0),
(334, 14, 22, 0),
(335, 14, 23, 0),
(336, 14, 24, 1),
(337, 15, 1, 0),
(338, 15, 2, 0),
(339, 15, 3, 0),
(340, 15, 4, 0),
(341, 15, 5, 0),
(342, 15, 6, 0),
(343, 15, 7, 0),
(344, 15, 8, 0),
(345, 15, 9, 0),
(346, 15, 10, 0),
(347, 15, 11, 0),
(348, 15, 12, 0),
(349, 15, 13, 0),
(350, 15, 14, 0),
(351, 15, 15, 0),
(352, 15, 16, 0),
(353, 15, 17, 0),
(354, 15, 18, 0),
(355, 15, 19, 0),
(356, 15, 20, 0),
(357, 15, 21, 0),
(358, 15, 22, 0),
(359, 15, 23, 0),
(360, 15, 24, 1),
(361, 16, 1, 0),
(362, 16, 2, 0),
(363, 16, 3, 0),
(364, 16, 4, 0),
(365, 16, 5, 0),
(366, 16, 6, 0),
(367, 16, 7, 0),
(368, 16, 8, 0),
(369, 16, 9, 0),
(370, 16, 10, 0),
(371, 16, 11, 0),
(372, 16, 12, 0),
(373, 16, 13, 0),
(374, 16, 14, 0),
(375, 16, 15, 0),
(376, 16, 16, 0),
(377, 16, 17, 0),
(378, 16, 18, 0),
(379, 16, 19, 0),
(380, 16, 20, 0),
(381, 16, 21, 0),
(382, 16, 22, 0),
(383, 16, 23, 0),
(384, 16, 24, 1),
(385, 17, 1, 0),
(386, 17, 2, 0),
(387, 17, 3, 0),
(388, 17, 4, 0),
(389, 17, 5, 0),
(390, 17, 6, 0),
(391, 17, 7, 0),
(392, 17, 8, 0),
(393, 17, 9, 0),
(394, 17, 10, 0),
(395, 17, 11, 0),
(396, 17, 12, 0),
(397, 17, 13, 0),
(398, 17, 14, 0),
(399, 17, 15, 0),
(400, 17, 16, 0),
(401, 17, 17, 0),
(402, 17, 18, 0),
(403, 17, 19, 0),
(404, 17, 20, 0),
(405, 17, 21, 0),
(406, 17, 22, 0),
(407, 17, 23, 0),
(408, 17, 24, 1),
(409, 18, 1, 0),
(410, 18, 2, 0),
(411, 18, 3, 0),
(412, 18, 4, 0),
(413, 18, 5, 0),
(414, 18, 6, 0),
(415, 18, 7, 0),
(416, 18, 8, 0),
(417, 18, 9, 0),
(418, 18, 10, 0),
(419, 18, 11, 0),
(420, 18, 12, 0),
(421, 18, 13, 0),
(422, 18, 14, 0),
(423, 18, 15, 0),
(424, 18, 16, 0),
(425, 18, 17, 0),
(426, 18, 18, 0),
(427, 18, 19, 0),
(428, 18, 20, 0),
(429, 18, 21, 0),
(430, 18, 22, 0),
(431, 18, 23, 0),
(432, 18, 24, 0),
(433, 19, 1, 0),
(434, 19, 2, 0),
(435, 19, 3, 0),
(436, 19, 4, 0),
(437, 19, 5, 0),
(438, 19, 6, 0),
(439, 19, 7, 0),
(440, 19, 8, 0),
(441, 19, 9, 0),
(442, 19, 10, 0),
(443, 19, 11, 0),
(444, 19, 12, 0),
(445, 19, 13, 0),
(446, 19, 14, 0),
(447, 19, 15, 0),
(448, 19, 16, 0),
(449, 19, 17, 0),
(450, 19, 18, 0),
(451, 19, 19, 0),
(452, 19, 20, 0),
(453, 19, 21, 0),
(454, 19, 22, 0),
(455, 19, 23, 0),
(456, 19, 24, 0),
(457, 20, 20, 0),
(458, 20, 21, 0),
(459, 20, 22, 0),
(460, 20, 23, 0),
(461, 20, 24, 0),
(462, 21, 20, 0),
(463, 21, 21, 0),
(464, 21, 22, 0),
(465, 21, 23, 0),
(466, 21, 24, 0),
(467, 22, 20, 0),
(468, 22, 21, 0),
(469, 22, 22, 0),
(470, 22, 23, 0),
(471, 22, 24, 0),
(472, 23, 20, 0),
(473, 23, 21, 0),
(474, 23, 22, 0),
(475, 23, 23, 0),
(476, 23, 24, 0),
(477, 24, 20, 0),
(478, 24, 21, 0),
(479, 24, 22, 0),
(480, 24, 23, 0),
(481, 24, 24, 0),
(482, 25, 20, 0),
(483, 25, 21, 0),
(484, 25, 22, 0),
(485, 25, 23, 0),
(486, 25, 24, 0),
(487, 26, 20, 0),
(488, 26, 21, 0),
(489, 26, 22, 0),
(490, 26, 23, 0),
(491, 26, 24, 0),
(492, 27, 20, 0),
(493, 27, 21, 0),
(494, 27, 22, 0),
(495, 27, 23, 0),
(496, 27, 24, 1),
(497, 28, 20, 0),
(498, 28, 21, 0),
(499, 28, 22, 0),
(500, 28, 23, 0),
(501, 28, 24, 0),
(502, 29, 20, 0),
(503, 29, 21, 0),
(504, 29, 22, 0),
(505, 29, 23, 0),
(506, 29, 24, 0),
(507, 30, 20, 0),
(508, 30, 21, 0),
(509, 30, 22, 0),
(510, 30, 23, 0),
(511, 30, 24, 0),
(512, 31, 21, 0),
(513, 31, 22, 0),
(514, 31, 23, 0),
(515, 31, 24, 0),
(516, 32, 21, 0),
(517, 32, 22, 0),
(518, 32, 23, 0),
(519, 32, 24, 0),
(520, 32, 25, 0),
(521, 32, 26, 0);

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `subject` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `notification`
--

INSERT INTO `notification` (`id`, `date`, `subject`, `message`, `link`) VALUES
(1, '2020-03-30 15:42:37', 'Forum ajoute le 30/03/2020 par le user sous le nom ', '', NULL),
(2, '2020-03-30 15:43:27', 'Forum ajoute le 30/03/2020 par le user sous le nom ', '', NULL),
(3, '2020-03-30 16:01:20', 'Forum ajoute le 30/03/2020 par le user sous le nom .mostfa.m.', '', NULL),
(4, '2020-03-30 16:27:22', 'Forum ajoute le 30/03/2020 par le user sous le nom .gg.', '', NULL),
(5, '2020-03-30 16:47:07', 'Forum ajoute le 30/03/2020 par le user sous le nom .mostfa.m.', '', NULL),
(6, '2020-03-30 17:03:54', 'Forum ajoute le 30/03/2020 par le user sous le nom .gg.', '', NULL),
(7, '2020-03-30 17:08:39', 'Forum ajoute le 30/03/2020 par le user sous le nom .gg.', '', NULL),
(8, '2020-03-30 18:19:24', 'Forum ajoute le 30/03/2020 par le user sous le nom .gg.', '', NULL),
(9, '2020-03-30 18:28:30', 'Forum ajoute le 30/03/2020 par le user sous le nom .mostfa.m.', '', NULL),
(10, '2020-04-01 12:21:41', 'Forum ajoute le 01/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(11, '2020-04-01 21:53:37', 'Forum ajoute le 01/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(12, '2020-04-01 21:57:46', 'Forum ajoute le 01/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(13, '2020-04-01 22:47:54', 'Forum ajoute le 01/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(14, '2020-04-01 22:48:57', 'Forum ajoute le 01/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(15, '2020-04-01 23:04:42', 'Forum ajoute le 01/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(16, '2020-04-01 23:14:57', 'Forum ajoute le 01/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(17, '2020-04-02 10:14:58', 'Forum ajoute le 02/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(18, '2020-04-08 18:25:46', 'Forum ajoute le 08/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(19, '2020-04-08 18:26:32', 'Forum ajoute le 08/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(20, '2020-04-08 19:59:34', 'Forum ajoute le 08/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(21, '2020-04-08 20:01:18', 'Forum ajoute le 08/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(22, '2020-04-08 20:10:46', 'Forum ajoute le 08/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(23, '2020-04-08 20:16:38', 'Forum ajoute le 08/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(24, '2020-04-08 20:20:03', 'Forum ajoute le 08/04/2020 par le user sous le nom .gg.', '', NULL),
(25, '2020-04-08 20:26:08', 'Forum ajoute le 08/04/2020 par le user sous le nom .gg.', '', NULL),
(26, '2020-04-09 20:12:58', 'Forum ajoute le 09/04/2020 par le user sous le nom .gg.', '', NULL),
(27, '2020-04-10 19:08:20', 'Forum ajoute le 10/04/2020 par le user sous le nom .gg.', '', NULL),
(28, '2020-04-11 11:10:55', 'Forum ajoute le 11/04/2020 par le user sous le nom .gg.', '', NULL),
(29, '2020-04-11 11:11:39', 'Forum ajoute le 11/04/2020 par le user sous le nom .gg.', '', NULL),
(30, '2020-04-13 02:33:29', 'Forum ajoute le 13/04/2020 par le user sous le nom .mostfa.m.', '', NULL),
(31, '2020-04-14 21:17:56', 'Reclamation ajoute le 14/04/2020  par l\'utilisateur  mostfa.m', '', NULL),
(32, '2020-04-15 23:03:08', 'Forum ajoute le 15/04/2020 par le user sous le nom .mostfa.m.', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `paiment`
--

CREATE TABLE `paiment` (
  `num_paiment` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbre_heure` double DEFAULT NULL,
  `salaire_heure` double DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `mode_reg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `paiment`
--

INSERT INTO `paiment` (`num_paiment`, `nom`, `prenom`, `nbre_heure`, `salaire_heure`, `montant`, `mode_reg`, `date`, `email`, `cin`) VALUES
(1, 'hayet', 'slimen', 20, 10, 200, ' Espece', '2020-04-25', 'elkameldhoha@gmail.com', 117);

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(255) NOT NULL,
  `creator` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `postdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `creator`, `title`, `description`, `photo`, `postdate`) VALUES
(15, 114, 'premier blog', 'premier blog', 'a40f81b7deef676c1248380ef7bb1116.jpeg', '2020-04-14');

-- --------------------------------------------------------

--
-- Structure de la table `postcomment`
--

CREATE TABLE `postcomment` (
  `id` int(255) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `qcm`
--

CREATE TABLE `qcm` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `qcm`
--

INSERT INTO `qcm` (`id`, `titre`) VALUES
(1, 'Qcm1'),
(2, 'hamza'),
(3, 'comment'),
(4, 'comment'),
(5, 'comment'),
(6, 'comment'),
(7, 'comment'),
(8, 'comment'),
(9, 'comment'),
(10, 'comment'),
(11, 'comment'),
(12, 'comment'),
(13, 'comment'),
(14, 'comment'),
(15, 'comment'),
(16, 'comment'),
(17, 'comment'),
(18, 'lolo'),
(19, 'lolo'),
(20, 'lolo'),
(21, 'lolo'),
(22, 'lolo'),
(23, 'lolo'),
(24, 'lolo'),
(25, 'lolo'),
(26, 'lolo'),
(27, 'lolo'),
(28, 'lolo'),
(29, 'lolo'),
(30, 'lolo'),
(31, 'lolo'),
(32, 'lolo'),
(33, 'lolo');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `qcm_id` int(11) DEFAULT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reponse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `propositions` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `qcm_id`, `question`, `reponse`, `propositions`) VALUES
(1, 1, 'ou nous pouvons trouver notre fonction d\'ajout dans symfony', 'Controller', 'a:4:{i:0;s:4:\"view\";i:1;s:10:\"Repository\";i:2;s:10:\"Controller\";i:3;s:4:\"Form\";}'),
(2, 3, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(3, 3, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(4, 4, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(5, 4, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(6, 5, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(7, 5, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(8, 6, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(9, 6, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(10, 7, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(11, 7, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(12, 8, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(13, 8, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(14, 9, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(15, 9, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(16, 10, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(17, 10, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(18, 11, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(19, 11, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(20, 12, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(21, 12, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(22, 13, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(23, 13, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(24, 14, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(25, 14, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(26, 15, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(27, 15, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(28, 16, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(29, 16, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(30, 17, 'hi ', 'hello', 'a:4:{i:0;s:3:\"non\";i:1;s:3:\"oui\";i:2;s:7:\"non/oui\";i:3;s:5:\"hello\";}'),
(31, 17, 'quand', 'hier', 'a:4:{i:0;s:6:\"demain\";i:1;s:11:\"aujourd\'hui\";i:2;s:6:\"demain\";i:3;s:4:\"hier\";}'),
(32, 18, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(33, 19, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(34, 20, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(35, 21, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(36, 22, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(37, 23, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(38, 24, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(39, 25, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(40, 26, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(41, 27, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(42, 28, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(43, 29, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(44, 30, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(45, 31, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(46, 32, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}'),
(47, 33, 'lolo', 'lolo', 'a:4:{i:0;s:2:\"lp\";i:1;s:2:\"lk\";i:2;s:2:\"lm\";i:3;s:4:\"lolo\";}');

-- --------------------------------------------------------

--
-- Structure de la table `rate`
--

CREATE TABLE `rate` (
  `id` int(10) NOT NULL,
  `rate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ratee`
--

CREATE TABLE `ratee` (
  `id` int(50) NOT NULL,
  `rate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ratee`
--

INSERT INTO `ratee` (`id`, `rate`) VALUES
(1, '4.0'),
(2, '4.0'),
(3, '2.0'),
(4, '5.0'),
(5, '1.0'),
(6, '3.0'),
(7, ''),
(8, '4.0'),
(9, '2.0'),
(10, '4.0'),
(11, '5.0');

-- --------------------------------------------------------

--
-- Structure de la table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `id_pub` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `sujet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateR` date NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `typerec` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `corbeille` tinyint(1) DEFAULT NULL,
  `date_corbeille` date DEFAULT NULL,
  `archive` tinyint(1) DEFAULT NULL,
  `date_archive` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `reclamation`
--

INSERT INTO `reclamation` (`id`, `sujet`, `contenu`, `dateR`, `type_id`, `user_id`, `etat`, `email`, `typerec`, `corbeille`, `date_corbeille`, `archive`, `date_archive`) VALUES
(26, 'absence', 'absence certifié', '2020-04-14', 84, 117, 'traité ', 'hamzaayaakoubi@gmail.com', NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE `reponses` (
  `id` int(11) NOT NULL,
  `id_question` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sousreponse_id` int(11) DEFAULT NULL,
  `Texte` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `upvotes` int(11) DEFAULT NULL,
  `downvotes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reserv`
--

CREATE TABLE `reserv` (
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `cin` int(11) DEFAULT NULL,
  `choix` int(11) DEFAULT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `resultat`
--

CREATE TABLE `resultat` (
  `id` int(11) NOT NULL,
  `qcm_id` int(11) DEFAULT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nb_reponses_ok` int(11) NOT NULL,
  `nb_questions` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `resultat`
--

INSERT INTO `resultat` (`id`, `qcm_id`, `user`, `nb_reponses_ok`, `nb_questions`) VALUES
(1, 1, 'mazen', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `idarticle` int(11) DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `etat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `review`
--

INSERT INTO `review` (`id`, `iduser`, `idarticle`, `rate`, `etat`) VALUES
(1, 111, 6, 4, 1),
(2, 111, 9, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `review1`
--

CREATE TABLE `review1` (
  `id` int(11) NOT NULL,
  `reviewtext` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `likes` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `idpost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `review1`
--

INSERT INTO `review1` (`id`, `reviewtext`, `rate`, `likes`, `iduser`, `idpost`) VALUES
(10, 'https://www.youtube.com/watch?v=UTusmVpwJXo', 3, 0, 111, 15);

-- --------------------------------------------------------

--
-- Structure de la table `reviewlike`
--

CREATE TABLE `reviewlike` (
  `id` int(11) NOT NULL,
  `idreview` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `bloc` varchar(50) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id`, `bloc`, `num`) VALUES
(6, 'B', 3),
(21, 'A', 3),
(7, 'A', 1),
(10, 'B', 12),
(20, 'B', 32),
(13, 'B', 12),
(14, 'B', 12),
(15, 'A', 12),
(16, 'B', 12),
(17, 'A', 23),
(18, 'B', 23),
(19, 'A', 36);

-- --------------------------------------------------------

--
-- Structure de la table `signaler`
--

CREATE TABLE `signaler` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `idsujet` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `signaler`
--

INSERT INTO `signaler` (`id`, `id_user`, `idsujet`, `reason`) VALUES
(3, 113, 5, 'Violence or dangerous organizations'),
(4, 111, 3, 'Violence or dangerous organizations');

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
--

CREATE TABLE `sujet` (
  `id_f` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `Etat` int(11) NOT NULL,
  `strike` int(11) NOT NULL DEFAULT 0,
  `description_f` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `nbre_jaime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sujet`
--

INSERT INTO `sujet` (`id_f`, `id_user`, `Etat`, `strike`, `description_f`, `date`, `nbre_jaime`) VALUES
(3, 111, 1, 1, '<h2 style=\"font-style:italic\">anooooo</h2>', '2020-04-08', 7),
(5, 113, 1, 1, '<p>La Tunisie, le plus petit des &Eacute;tats du&nbsp;<a href=\"https://fr.wikipedia.org/wiki/Maghreb\" title=\"Maghreb\">Maghreb</a>, se situe au&nbsp;<a href=\"https://fr.wikipedia.org/wiki/Afrique_du_Nord\" title=\"Afrique du Nord\">nord</a>&nbsp;du&nbsp;<a hr', '2020-04-08', 1),
(9, 113, 1, 12, '<p>3A9</p>', '2020-04-11', 0),
(10, 111, 0, 0, '<p>mazen ben hmida</p>', '2020-04-13', 0);

-- --------------------------------------------------------

--
-- Structure de la table `thread`
--

CREATE TABLE `thread` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `is_spam` tinyint(1) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `thread_metadata`
--

CREATE TABLE `thread_metadata` (
  `id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `last_participant_message_date` datetime DEFAULT NULL,
  `last_message_date` datetime DEFAULT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `participant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type_reclamation`
--

CREATE TABLE `type_reclamation` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `type_reclamation`
--

INSERT INTO `type_reclamation` (`id`, `nom`) VALUES
(84, 'Discipline'),
(85, 'Paiement'),
(86, 'Foyer');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`IDD`),
  ADD KEY `idEleve` (`idEleve`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E66E8175B12` (`categ_id`),
  ADD KEY `IDX_23A0E66A76ED395` (`user_id`);

--
-- Index pour la table `cantine`
--
ALTER TABLE `cantine`
  ADD PRIMARY KEY (`id_c`),
  ADD UNIQUE KEY `cin` (`cin`),
  ADD KEY `id` (`type_abonement`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_497DD634E387E69B` (`subcateg_id`);

--
-- Index pour la table `categoriefaq`
--
ALTER TABLE `categoriefaq`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Nom_2` (`Nom`),
  ADD KEY `Nom` (`Nom`);

--
-- Index pour la table `categorieproposees`
--
ALTER TABLE `categorieproposees`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Nom` (`Nom`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`idClub`),
  ADD KEY `fkCluFo` (`idPresident`);

--
-- Index pour la table `club_eleve`
--
ALTER TABLE `club_eleve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4CCF2F45CB1366EC` (`idClub`),
  ADD KEY `IDX_4CCF2F45FE6E88D7` (`idUser`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_com`),
  ADD KEY `IDX_67F068BC6B3CA4B` (`id_user`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`idEvenement`),
  ADD KEY `fkEvCl` (`idClub`);

--
-- Index pour la table `evenement_participant`
--
ALTER TABLE `evenement_participant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idEvenement` (`idEvenement`),
  ADD KEY `idUser` (`idUser`);

--
-- Index pour la table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Categorie` (`Categorie`);

--
-- Index pour la table `faqq`
--
ALTER TABLE `faqq`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`num_recu`),
  ADD KEY `IDX_CE28EAE02B4CCB6F` (`type_frais`),
  ADD KEY `id` (`cin`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479ABE530DA` (`cin`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Index pour la table `foyer`
--
ALTER TABLE `foyer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero` (`numero`);

--
-- Index pour la table `frais`
--
ALTER TABLE `frais`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EDBFD5EC99B902AD` (`idu`);

--
-- Index pour la table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_m`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6BD307FE2904019` (`thread_id`),
  ADD KEY `IDX_B6BD307FF624B39D` (`sender_id`);

--
-- Index pour la table `message_metadata`
--
ALTER TABLE `message_metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4632F005537A1329` (`message_id`),
  ADD KEY `IDX_4632F0059D1C3019` (`participant_id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id_Article`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`IDD`),
  ADD KEY `idEleve` (`idEleve`);

--
-- Index pour la table `notifiable_entity`
--
ALTER TABLE `notifiable_entity`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifiable_notification`
--
ALTER TABLE `notifiable_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ADCFE0FAEF1A9D84` (`notification_id`),
  ADD KEY `IDX_ADCFE0FAC3A0A4F8` (`notifiable_entity_id`);

--
-- Index pour la table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paiment`
--
ALTER TABLE `paiment`
  ADD PRIMARY KEY (`num_paiment`),
  ADD KEY `id` (`cin`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A8A6C8DBC06EA63` (`creator`);

--
-- Index pour la table `postcomment`
--
ALTER TABLE `postcomment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5D65518A4B89032C` (`post_id`),
  ADD KEY `IDX_5D65518AA76ED395` (`user_id`);

--
-- Index pour la table `qcm`
--
ALTER TABLE `qcm`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6F7494EFF6241A6` (`qcm_id`);

--
-- Index pour la table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ratee`
--
ALTER TABLE `ratee`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D8892622C4E0D4DF` (`id_pub`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CE606404C54C8C93` (`type_id`),
  ADD KEY `FK_5A8A6C8DBC06EA29` (`user_id`);

--
-- Index pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1E512EC6E62CA5DB` (`id_question`),
  ADD KEY `IDX_1E512EC6A76ED395` (`user_id`),
  ADD KEY `IDX_1E512EC6998DF1D0` (`sousreponse_id`);

--
-- Index pour la table `reserv`
--
ALTER TABLE `reserv`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cin` (`cin`),
  ADD UNIQUE KEY `choix` (`choix`);

--
-- Index pour la table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_794381C65E5C27E9` (`iduser`),
  ADD KEY `IDX_794381C6DD3E5C08` (`idarticle`);

--
-- Index pour la table `review1`
--
ALTER TABLE `review1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_5A8A6C8DBC06EA99` (`idpost`),
  ADD KEY `iduser` (`iduser`);

--
-- Index pour la table `reviewlike`
--
ALTER TABLE `reviewlike`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_5A8A6C8DBC06EA69` (`idreview`),
  ADD KEY `iduser` (`iduser`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `signaler`
--
ALTER TABLE `signaler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EF69B326B3CA4B` (`id_user`),
  ADD KEY `IDX_EF69B32F8163584` (`idsujet`);

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`id_f`),
  ADD KEY `IDX_2E13599D6B3CA4B` (`id_user`);

--
-- Index pour la table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_31204C83B03A8386` (`created_by_id`);

--
-- Index pour la table `thread_metadata`
--
ALTER TABLE `thread_metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_40A577C8E2904019` (`thread_id`),
  ADD KEY `IDX_40A577C89D1C3019` (`participant_id`);

--
-- Index pour la table `type_reclamation`
--
ALTER TABLE `type_reclamation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `absence`
--
ALTER TABLE `absence`
  MODIFY `IDD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cantine`
--
ALTER TABLE `cantine`
  MODIFY `id_c` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categoriefaq`
--
ALTER TABLE `categoriefaq`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `categorieproposees`
--
ALTER TABLE `categorieproposees`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `club`
--
ALTER TABLE `club`
  MODIFY `idClub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `club_eleve`
--
ALTER TABLE `club_eleve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `idEvenement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `evenement_participant`
--
ALTER TABLE `evenement_participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `faq`
--
ALTER TABLE `faq`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `finance`
--
ALTER TABLE `finance`
  MODIFY `num_recu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT pour la table `foyer`
--
ALTER TABLE `foyer`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `frais`
--
ALTER TABLE `frais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `message_metadata`
--
ALTER TABLE `message_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `Id_Article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `IDD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `notifiable_entity`
--
ALTER TABLE `notifiable_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `notifiable_notification`
--
ALTER TABLE `notifiable_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT pour la table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `paiment`
--
ALTER TABLE `paiment`
  MODIFY `num_paiment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `postcomment`
--
ALTER TABLE `postcomment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `reserv`
--
ALTER TABLE `reserv`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `review1`
--
ALTER TABLE `review1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `reviewlike`
--
ALTER TABLE `reviewlike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `signaler`
--
ALTER TABLE `signaler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `sujet`
--
ALTER TABLE `sujet`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `thread`
--
ALTER TABLE `thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `thread_metadata`
--
ALTER TABLE `thread_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `type_reclamation`
--
ALTER TABLE `type_reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `FK_765AE0C9FB6546EA` FOREIGN KEY (`idEleve`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `FK_B8EE38729261F942` FOREIGN KEY (`idPresident`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `club_eleve`
--
ALTER TABLE `club_eleve`
  ADD CONSTRAINT `FK_4CCF2F45CB1366EC` FOREIGN KEY (`idClub`) REFERENCES `club` (`idClub`),
  ADD CONSTRAINT `FK_4CCF2F45FE6E88D7` FOREIGN KEY (`idUser`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BC6B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD CONSTRAINT `FK_B26681ECB1366EC` FOREIGN KEY (`idClub`) REFERENCES `club` (`idClub`);

--
-- Contraintes pour la table `evenement_participant`
--
ALTER TABLE `evenement_participant`
  ADD CONSTRAINT `FK_460A7D3AF7CC4348` FOREIGN KEY (`idEvenement`) REFERENCES `evenement` (`idEvenement`),
  ADD CONSTRAINT `FK_460A7D3AFE6E88D7` FOREIGN KEY (`idUser`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `finance`
--
ALTER TABLE `finance`
  ADD CONSTRAINT `finance_ibfk_1` FOREIGN KEY (`type_frais`) REFERENCES `frais` (`id`),
  ADD CONSTRAINT `finance_ibfk_2` FOREIGN KEY (`cin`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `FK_EDBFD5EC99B902AD` FOREIGN KEY (`idu`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_B6BD307FE2904019` FOREIGN KEY (`thread_id`) REFERENCES `thread` (`id`),
  ADD CONSTRAINT `FK_B6BD307FF624B39D` FOREIGN KEY (`sender_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `message_metadata`
--
ALTER TABLE `message_metadata`
  ADD CONSTRAINT `FK_4632F005537A1329` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`),
  ADD CONSTRAINT `FK_4632F0059D1C3019` FOREIGN KEY (`participant_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `FK_11BA68CFB6546EA` FOREIGN KEY (`idEleve`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `notifiable_notification`
--
ALTER TABLE `notifiable_notification`
  ADD CONSTRAINT `FK_ADCFE0FAC3A0A4F8` FOREIGN KEY (`notifiable_entity_id`) REFERENCES `notifiable_entity` (`id`),
  ADD CONSTRAINT `FK_ADCFE0FAEF1A9D84` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`);

--
-- Contraintes pour la table `paiment`
--
ALTER TABLE `paiment`
  ADD CONSTRAINT `paiment_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8DBC06EA63` FOREIGN KEY (`creator`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `postcomment`
--
ALTER TABLE `postcomment`
  ADD CONSTRAINT `FK_5D65518A4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `postcomment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_D8892622C4E0D4DF` FOREIGN KEY (`id_pub`) REFERENCES `sujet` (`id_f`);

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `FK_5A8A6C8DBC06EA29` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `IDX_CE606404C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type_reclamation` (`id`);

--
-- Contraintes pour la table `reserv`
--
ALTER TABLE `reserv`
  ADD CONSTRAINT `reserv_ibfk_1` FOREIGN KEY (`choix`) REFERENCES `foyer` (`id`),
  ADD CONSTRAINT `reserv_ibfk_2` FOREIGN KEY (`cin`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_794381C65E5C27E9` FOREIGN KEY (`iduser`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_794381C6DD3E5C08` FOREIGN KEY (`idarticle`) REFERENCES `news` (`Id_Article`);

--
-- Contraintes pour la table `review1`
--
ALTER TABLE `review1`
  ADD CONSTRAINT `FK_5A8A6C8DBC06EA99` FOREIGN KEY (`idpost`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `review1_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `reviewlike`
--
ALTER TABLE `reviewlike`
  ADD CONSTRAINT `FK_5A8A6C8DBC06EA69` FOREIGN KEY (`idreview`) REFERENCES `review1` (`id`),
  ADD CONSTRAINT `reviewlike_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `signaler`
--
ALTER TABLE `signaler`
  ADD CONSTRAINT `FK_EF69B326B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_EF69B32F8163584` FOREIGN KEY (`idsujet`) REFERENCES `sujet` (`id_f`);

--
-- Contraintes pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD CONSTRAINT `FK_2E13599D6B3CA4B` FOREIGN KEY (`id_user`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `thread`
--
ALTER TABLE `thread`
  ADD CONSTRAINT `FK_31204C83B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `fos_user` (`id`);

--
-- Contraintes pour la table `thread_metadata`
--
ALTER TABLE `thread_metadata`
  ADD CONSTRAINT `FK_40A577C89D1C3019` FOREIGN KEY (`participant_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_40A577C8E2904019` FOREIGN KEY (`thread_id`) REFERENCES `thread` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
