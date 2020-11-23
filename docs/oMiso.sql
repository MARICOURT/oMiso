-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 23 nov. 2020 à 13:11
-- Version du serveur :  8.0.22-0ubuntu0.20.04.2
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omiso`
--
CREATE DATABASE IF NOT EXISTS `omiso` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `omiso`;

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200413115446', '2020-11-17 13:42:11'),
('20200413140551', '2020-11-17 13:42:11'),
('20200419162217', '2020-11-17 13:42:11'),
('20200420084503', '2020-11-17 13:42:12');

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` int NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id`, `status`, `comments`, `total_price`, `created_at`, `client_id`) VALUES
(4, 0, '', 39, '2020-11-23 12:00:27', 4);

-- --------------------------------------------------------

--
-- Structure de la table `order_product`
--

CREATE TABLE `order_product` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(12, 4, 1, 1),
(13, 4, 7, 1),
(14, 4, 12, 1),
(15, 4, 25, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `image`, `price`, `category`, `status`) VALUES
(1, 'Salades de crevettes', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2016/03/05/19/47/appetite-1238513__340.jpg', 13, 'Entree', 1),
(3, 'Pepsi', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2020/05/10/05/14/pepsi-5152332__340.jpg', 7, 'Boisson', 1),
(5, 'Sushi Thon', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2017/02/05/11/48/sushi-2039735__340.jpg', 2, 'Entree', 1),
(7, '4 nems au poulet légumes', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2017/10/16/08/59/nem-2856543__340.jpg', 7, 'Plat', 1),
(12, 'Jus d\'orange', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2016/08/23/15/52/fresh-orange-juice-1614822__340.jpg', 3.5, 'Boisson', 1),
(14, 'Salade d\'algue', 'Ce sont des données de test', 'https://media.istockphoto.com/photos/seaweed-salad-picture-id465140316?b=1&k=6&m=465140316&s=170667a&w=0&h=W7zcYxZxKj1LpydAyR45g_l5qVPz6IlBkX7OSwTg4xs=', 20, 'Entree', 1),
(17, 'Brochettes Poulet', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2018/02/26/17/25/chicken-3183558__340.jpg', 15, 'Plat', 1),
(20, 'Sashimi thon', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2017/03/29/20/59/sashimi-2186530_960_720.jpg', 17, 'Entree', 1),
(21, 'Sushi Saumon', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2016/04/26/03/55/salmon-1353598_960_720.jpg', 15, 'Plat', 1),
(22, 'Maki Saumon', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2016/03/05/22/23/asian-1239271_960_720.jpg', 20, 'Plat', 1),
(23, 'Maki Poulet Avocat', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2018/08/03/08/33/food-3581341_960_720.jpg', 17, 'Plat', 1),
(24, 'Jus de pomme', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2016/11/28/22/07/punch-1866178_960_720.jpg', 13, 'Boisson', 1),
(25, 'Gateau au chocolat', 'Ce sont des données de test', 'https://cdn.pixabay.com/photo/2019/02/25/19/27/brownie-4020349_960_720.jpg', 16, 'Dessert', 1),
(26, 'Fanta', NULL, 'https://cdn.pixabay.com/photo/2013/03/01/18/48/aluminum-87987__340.jpg', 3.5, 'Boisson', 1),
(27, 'Coca-Cola', NULL, 'https://cdn.pixabay.com/photo/2014/09/26/19/51/drink-462776__340.jpg', 3.5, 'Boisson', 1),
(28, 'Sake', NULL, 'https://cdn.pixabay.com/photo/2020/02/16/16/01/sake-4853987__340.jpg', 5, 'Boisson', 1);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_string` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `name`, `role_string`) VALUES
(1, 'CLIENT', 'ROLE_CLIENT'),
(2, 'EMPLOYEE', 'ROLE_EMPLOYEE'),
(3, 'ADMIN', 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `lastname`, `firstname`, `phone_number`, `address`, `postal_code`, `city`, `role_id`) VALUES
(4, 'pl.maricourt@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$rrUekRX02JxoVHOgMACxSw$pRzJro0Z5lA91f0J7lvL8433HZ+m4y6092yUwUgtVnA', 'MARICOURT', 'Pierre-Louis', '0600000000', '19 bis rue Subreville', '06220', 'Vallauris', 1),
(5, 'marie.couralet@hotmail.fr', '$argon2id$v=19$m=65536,t=4,p=1$pXRbmfiYaxjnaDLowhhQtQ$dk8lU6s4EFeQNTAPI+qfBOxET98gG6lYusF8mYf8OH0', 'COURALET', 'MARIE', '0600000000', '9 Rue de Toul', '31000', 'Toulouse', 2),
(6, 'sebastian@hotmail.fr', '$argon2id$v=19$m=65536,t=4,p=1$Y1YnMaOIy/JpaJ2+P0IiSw$tmdw1Q/g32ZfNpzdLT58xonaUxRsDSJpxN25DA3ZEbY', 'Van Blerk', 'Sebastian', '0645550872', '31 bis route de Bessières', '31240', 'L\'Union', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F529939819EB6921` (`client_id`);

--
-- Index pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2530ADE68D9F6D38` (`order_id`),
  ADD KEY `IDX_2530ADE64584665A` (`product_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD KEY `IDX_8D93D649D60322AC` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F529939819EB6921` FOREIGN KEY (`client_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `FK_2530ADE64584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_2530ADE68D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
