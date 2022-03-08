-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 07 Mars 2022 à 08:20
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `agencemehdi`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211217100811', '2021-12-17 10:10:48', 244),
('DoctrineMigrations\\Version20211217110610', '2021-12-17 11:07:09', 273),
('DoctrineMigrations\\Version20220102170353', '2022-01-02 17:04:52', 296),
('DoctrineMigrations\\Version20220114091437', '2022-01-14 09:16:34', 181),
('DoctrineMigrations\\Version20220114091752', '2022-01-14 09:17:59', 52),
('DoctrineMigrations\\Version20220222073011', '2022-02-22 07:30:15', 219),
('DoctrineMigrations\\Version20220222073553', '2022-02-22 07:35:58', 178),
('DoctrineMigrations\\Version20220302095841', '2022-03-02 10:00:58', 267),
('DoctrineMigrations\\Version20220302100913', '2022-03-02 10:09:23', 118),
('DoctrineMigrations\\Version20220303093320', '2022-03-03 09:33:26', 643),
('DoctrineMigrations\\Version20220303093503', '2022-03-03 09:35:05', 107);

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surface` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `heat` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `property`
--

INSERT INTO `property` (`id`, `title`, `description`, `city`, `surface`, `rooms`, `bedrooms`, `floor`, `price`, `heat`, `address`, `postal_code`, `sold`, `created_at`, `state_id`, `filename`, `updated_at`) VALUES
(139, 'New York City House', 'This is New York City, the big Apple !', 'New York City', 300, 7, 3, 2, 2500000, 0, '7031 Foxrun Ave', '10016', 0, '2022-03-02 20:28:59', 32, '621fd38bf025a659761302.jpg', '2022-03-02 20:28:59'),
(140, 'Los Angeles House', 'Let\'s live the Hollywood Dream !', 'Los Angeles', 400, 10, 6, 4, 7000000, 0, '2349 Oakway Lane', '90017', 0, '2022-03-03 09:16:30', 5, '6220876f22bfa713752377.jpg', '2022-03-03 09:16:31'),
(141, 'Chicago House', 'Let\'s try Chicago !', 'Chicago', 200, 4, 3, 2, 2300000, 0, '4832 Point Street', '60641', 0, '2022-03-03 09:18:21', 13, '622087ddda95f089815529.jpg', '2022-03-03 09:18:21'),
(142, 'Houston House', 'Houston, the heart of Texas !', 'Houston', 350, 7, 4, 2, 4000000, 0, '1509 Wines Lane', '77099', 0, '2022-03-03 09:20:26', 43, '6220885b22ad8484296592.jpg', '2022-03-03 09:20:27'),
(143, 'Miami House', 'Welcome to Miami', 'Miami', 360, 9, 3, 3, 4500000, 0, '4311 Agriculture Lane', '33165', 0, '2022-03-03 09:31:42', 9, '62208afee35f0481941767.jpg', '2022-03-03 09:31:42'),
(145, 'San Francisco House', 'Let\'s see the Golden Bridge !', 'San Francisco', 350, 7, 4, 2, 3000000, 0, '3956 Meadow Lane', '94108', 0, '2022-03-03 09:38:19', 5, '62208c8b4d320442752738.jpg', '2022-03-03 09:38:19'),
(146, 'Las Vegas House', 'Have fun in Las Vegas !', 'Las Vegas', 200, 6, 4, 2, 300000, 0, '3463 Adams Avenue', '21701', 0, '2022-03-03 09:41:32', 28, '62208d64aacc8712154902.jpg', '2022-03-03 09:41:56'),
(147, 'Atlanta House', 'It\'s Atlanta !', 'Atlanta', 350, 9, 3, 3, 3600000, 0, '604 College Street', '30340', 0, '2022-03-03 20:14:34', 10, '622121aa8106d103847745.jpg', '2022-03-03 20:14:34'),
(148, 'Washington, DC House', 'America\'s heart !', 'Washington', 390, 11, 6, 4, 4560000, 0, '2394 Rhode Island Avenue', '20200', 0, '2022-03-04 10:52:13', 51, '6221ef5da8d54729269758.jpg', '2022-03-04 10:52:13'),
(149, 'Boston House', 'The heart ot the US North-East Cost !', 'Boston', 350, 10, 6, 3, 4800000, 0, '2593 Valley View Drive', '02110', 0, '2022-03-04 15:52:14', 21, '622235b2894e6938353638.jpg', '2022-03-04 15:52:14');

-- --------------------------------------------------------

--
-- Structure de la table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `state`
--

INSERT INTO `state` (`id`, `name`, `abbreviation`) VALUES
(1, 'Alabama', 'AL'),
(2, 'Alaska', 'AK'),
(3, 'Arizona', 'AZ'),
(4, 'Arkansas', 'AR'),
(5, 'California', 'CA'),
(6, 'Colorado', 'CO'),
(7, 'Connecticut', 'CT'),
(8, 'Delaware', 'DE'),
(9, 'Florida', 'FL'),
(10, 'Georgia', 'GA'),
(11, 'Hawaii', 'HI'),
(12, 'Idaho', 'ID'),
(13, 'Illinois', 'IL'),
(14, 'Indiana', 'IN'),
(15, 'Iowa', 'IA'),
(16, 'Kansas', 'KS'),
(17, 'Kentucky', 'KY'),
(18, 'Louisiana', 'LA'),
(19, 'Maine', 'ME'),
(20, 'Maryland', 'MD'),
(21, 'Massachusetts', 'MA'),
(22, 'Michigan', 'MI'),
(23, 'Minnesota', 'MN'),
(24, 'Mississippi', 'MS'),
(25, 'Missouri', 'MO'),
(26, 'Montana', 'MT'),
(27, 'Nebraska', 'NE'),
(28, 'Nevada', 'NV'),
(29, 'New Hampshire', 'NH'),
(30, 'New Jersey', 'NJ'),
(31, 'New Mexico', 'NM'),
(32, 'New York', 'NY'),
(33, 'North Carolina', 'NC'),
(34, 'North Dakota', 'ND'),
(35, 'Ohio', 'OH'),
(36, 'Oklahoma', 'OK'),
(37, 'Oregon', 'OR'),
(38, 'Pennsylvania', 'PA'),
(39, 'Rhode Island', 'RI'),
(40, 'South Carolina', 'SC'),
(41, 'South Dakota', 'SD'),
(42, 'Tennessee', 'TN'),
(43, 'Texas', 'TX'),
(44, 'Utah', 'UT'),
(45, 'Vermont', 'VT'),
(46, 'Virginia', 'VA'),
(47, 'Washington', 'WA'),
(48, 'West Virginia', 'WV'),
(49, 'Wisconsin', 'WI'),
(50, 'Wyoming', 'WY'),
(51, 'District of Columbia', 'DC');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(4, 'demo', '$2y$12$.Mov8R9b7lFGDhkpYflfB.1J/KnUAiKfSM0IJk7bozPJNRUbu2NS6');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8BF21CDE5D83CC1` (`state_id`);

--
-- Index pour la table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT pour la table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE5D83CC1` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
