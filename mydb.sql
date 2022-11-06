-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 06 nov. 2022 à 07:57
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mydb`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Electronics', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(2, 'TV & Multimedia', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(3, 'Home & Furniture', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(4, 'Sports & Books', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(5, 'Tools & Hardware', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(6, 'Clothes', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(7, 'Flowers', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(8, 'Accessories', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(9, 'Baby & Kids', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(10, 'Sports & Beauty', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(11, 'Car Appliances', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(12, 'Outdoors', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(13, 'Home Appliances', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(14, 'Health Products', '2022-10-21 12:50:58', '2022-10-21 12:50:58');

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `phoneNo`, `icon`, `logo`, `code`, `header`, `motive`, `details`, `location`, `createdAt`, `updatedAt`) VALUES
(1, 'E Market BD', 'support@emarket-bd.com', '+8801710000000', '', 'http://localhost:8084/public/company/emarket-bd/logo.png', 'emarket-bd', 'Find what you need here', 'emarket-bd is just a software project. It is developed to learn how to build a web application. I\'ve included all these data from the internet from different kind of source. And this is not a real ecommerce site.', 'Large text here. about the emarket-bd', '29/A, greenroad<br/>Farmgate, Dhaka.<br/>', '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(2, 'SUPER MARKET', 'support@supermarket.com', '+8801700000000', '', '', 'supermarket', 'Find what you need here', 'SUPER MARKET sub title here', 'Large text here. about SUPER MARKET', '29/D, Sahid Sarak<br/>Farmgate, Dhaka.<br/>', '2022-10-21 12:50:58', '2022-10-21 12:50:58');

-- --------------------------------------------------------

--
-- Structure de la table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE IF NOT EXISTS `orderitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ProductId` int DEFAULT NULL,
  `OrderId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ProductId` (`ProductId`),
  KEY `OrderId` (`OrderId`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orderitems`
--

INSERT INTO `orderitems` (`id`, `quantity`, `createdAt`, `updatedAt`, `ProductId`, `OrderId`) VALUES
(1, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 1),
(2, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 1),
(3, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 1),
(4, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 2),
(5, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 2),
(6, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 2),
(7, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 3),
(8, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 3),
(9, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 3),
(10, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 4),
(11, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 4),
(12, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 4),
(13, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 5),
(14, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 5),
(15, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 5),
(16, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 6),
(17, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 6),
(18, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 6),
(19, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 7),
(20, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 7),
(21, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 7),
(22, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 8),
(23, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 8),
(24, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 8),
(25, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 9),
(26, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 9),
(27, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 9),
(28, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 10),
(29, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 10),
(30, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 10),
(31, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 11),
(32, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 11),
(33, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 11),
(34, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 12),
(35, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 12),
(36, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 12),
(37, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 13),
(38, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 13),
(39, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 13),
(40, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 14),
(41, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 14),
(42, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 14),
(43, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 15),
(44, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 15),
(45, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 15),
(46, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 16),
(47, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 16),
(48, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 16),
(49, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 17),
(50, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 17),
(51, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 17),
(52, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 18),
(53, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 18),
(54, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 18),
(55, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 19),
(56, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 19),
(57, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 19),
(58, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 20),
(59, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 20),
(60, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 20),
(61, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 21),
(62, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 21),
(63, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 21),
(64, 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 22),
(65, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5, 22),
(66, 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 6, 22);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkoutSessionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productCost` int DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippingCost` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phoneNo`, `email`, `address`, `status`, `variant`, `checkoutSessionId`, `productCost`, `currency`, `shippingCost`, `createdAt`, `updatedAt`) VALUES
(1, 'Md. Rony', '+88017000000300', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfo2i3j4a', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-23 12:50:21'),
(2, 'Md. Rony', '+8801700300000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfodi3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-23 12:50:04'),
(3, 'Md. Rony', '+8801706688000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'on the way', 'warning', '12asddo2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(4, 'Md. Rony', '+8801705500000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'paid', 'dark', '12asdfs2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(5, 'Md. Rony', '+8801730000000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'preparing', 'info', '12aaafo2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(6, 'Md. Rony', '+8801700044000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'paid', 'dark', '12aaafo2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(7, 'Md. Rony', '+8801703300000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'paid', 'dark', '12asdfo2s3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(8, 'Md. Rony', '+8801700330000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'on the way', 'warning', '12asdfo2sdj4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(9, 'Md. Rony', '+8801702200000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'on the way', 'warning', '12asdfo2aaj4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(10, 'Md. Rony', '+8801733300000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfo2i3jjs', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(11, 'Md. Rony', '+8801700022000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '1wasdfo2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(12, 'Md. Rony', '+8801704440000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfr2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(13, 'Md. Rony', '+8801704400000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfo2s3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(14, 'Md. Rony', '+8801700990000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfo2ixj4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(15, 'Md. Rony', '+8801700000066', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asd4f4i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(16, 'Md. Rony', '+8801700880000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asufo2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(17, 'Md. Rony', '+8801700235000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12zsdfo2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(18, 'Md. Rony', '+8801706660000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12lldfo2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(19, 'Md. Rony', '+8801700852000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12wwdfo2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(20, 'Md. Rony', '+8801705550000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12eedfo2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(21, 'Md. Rony', '+8801700330000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asrro2i3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58'),
(22, 'Md. Rony', '+8801702200000', 'facetoface@gmail.com', '<b>line1:</b> house no: 2, floor: 3<br/><b>line2:</b> Street: 22, Super Market<br/><b>zip code:</b> 1800<br/><b>city:</b> MJ<br/><b>division:</b> Dhaka<br/><b>country:</b> Bangladesh', 'complete', 'success', '12asdfuyi3j4s', 400, 'USD', 4, '2022-10-21 12:50:58', '2022-10-21 12:50:58');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `amount` int DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `peopleRated` int DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales` int DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CategoryId` int DEFAULT NULL,
  `SubCategoryId` int DEFAULT NULL,
  `SubSubCategoryId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CategoryId` (`CategoryId`),
  KEY `SubCategoryId` (`SubCategoryId`),
  KEY `SubSubCategoryId` (`SubSubCategoryId`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `code`, `title`, `subtitle`, `description`, `amount`, `rating`, `peopleRated`, `currency`, `sales`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `image10`, `createdAt`, `updatedAt`, `CategoryId`, `SubCategoryId`, `SubSubCategoryId`, `UserId`) VALUES
(1, 'ES00000001', 'Samsung Galaxy M40', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 214, 4.5, 2, 'USD', 10, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/1/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-23 20:08:53', 1, 1, 1, NULL),
(2, 'ES00000002', 'Samsung Galaxy M21 6GB/128GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 199, 5, 2, 'USD', 112, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/2/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 1, NULL),
(3, 'ES00000003', 'Samsung Galaxy A21s 4GB/64GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 169, 4, 1, 'USD', 60, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/3/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 1, NULL),
(4, 'ES00000004', 'Samsung Galaxy A20', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 100, 0, 0, 'USD', 25, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/4/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 1, NULL),
(5, 'ES00000005', 'Samsung Galaxy J7', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 100, 0, 0, 'USD', 42, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/5/1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 1, NULL),
(6, 'ES00000006', 'Samsung Galaxy A01', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 100, 0, 0, 'USD', 61, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/6/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 1, NULL),
(7, 'ES00000007', 'Samsung Galaxy M31 8GB/128GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 259, 3, 1, 'USD', 92, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/7/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 16:53:55', 1, 1, 1, NULL),
(8, 'ES00000008', 'Samsung Galaxy M11', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 139, 0, 0, 'USD', 35, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/8/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 1, NULL),
(9, 'ES00000009', 'Samsung Galaxy A71', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 329, 0, 0, 'USD', 29, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/9/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 1, NULL),
(10, 'ES00000010', 'Samsung Galaxy M01 Core 2GB/32GB', '<h5><b>Brand : </b> Samsung</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 72, 0, 0, 'USD', 11, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Samsung/10/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 1, NULL),
(11, 'ES00000011', 'Xiaomi Poco C3 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 129, 0, 0, 'USD', 36, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/1/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 2, NULL),
(12, 'ES00000012', 'Xiaomi Poco M3 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 149, 0, 0, 'USD', 54, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/2/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 2, NULL),
(13, 'ES00000013', 'Xiaomi Poco M2 6GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 159, 0, 0, 'USD', 222, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/3/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 2, NULL),
(14, 'ES00000014', 'Xiaomi Poco M3 4GB/128GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 164, 0, 0, 'USD', 52, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/4/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 2, NULL),
(15, 'ES00000015', 'Xiaomi Redmi Note 9 Pro 6GB/128GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 279, 0, 0, 'USD', 18, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/5/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 2, NULL),
(16, 'ES00000016', 'Xiaomi Mi 3 16GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 185, 0, 0, 'USD', 34, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/6/1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 2, NULL);
INSERT INTO `products` (`id`, `code`, `title`, `subtitle`, `description`, `amount`, `rating`, `peopleRated`, `currency`, `sales`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `image10`, `createdAt`, `updatedAt`, `CategoryId`, `SubCategoryId`, `SubSubCategoryId`, `UserId`) VALUES
(17, 'ES00000017', 'Xiaomi Redmi Note 9', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 199, 0, 0, 'USD', 61, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/7/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 2, NULL),
(18, 'ES00000018', 'Xiaomi Redmi Note 8 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 189, 0, 0, 'USD', 87, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/8/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 2, NULL),
(19, 'ES00000019', 'Xiaomi Redmi 9', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 149, 0, 0, 'USD', 95, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/9/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 2, NULL),
(20, 'ES00000020', 'Xiaomi Redmi 8 4GB/64GB', '<h5><b>Brand : </b> Xiaomi</h5><h5><b>Warranty : </b> 12 Months</h5><h5><b>Payment : </b> Visa card, Mastercard, Debitcard, Creditcard</h5><h5><b>Availability : </b> in Stock</h5>', '<div><div><h3> Software </h3></div><div ><div >OS</div><div >Android 9.0 (Pie); One UI</div></div><div ><h3> Hardware </h3></div><div ><div >Design</div></div><div ><div >weight</div><div >168 gm</div></div><div ><div >screen</div><div >6.3inch PLS TFT capacitive touchscreen, 16M colors, 97.4 cm2 (~84.9% screen-to-body ratio)</div></div><div ><div >dimension</div><div >155.3 x 73.9 x 7.9 mm</div></div><div ><div >protection</div><div >Corning Gorilla Glass (unspecified)</div></div><div ><div >resolution</div><div >1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</div></div><div ><div >Memory</div></div><div ><div >expandable</div><div >1024 GB</div></div><div ><div >RAM</div><div >6 GB</div></div><div ><div >ROM</div><div >128 GB</div></div><div ><div >Processor</div></div><div ><div >number of cores</div><div >8 core</div></div><div ><div >SoC</div><div >Qualcomm SDM675 Snapdragon 675 (11 nm)</div></div><div ><div >CPU</div><div >Octa-core (2x2.0 GHz Kryo 460 Gold &amp; 6x1.7 GHz Kryo 460 Silver)</div></div><div ><div >GPU</div><div >Adreno 612</div></div><div ><div >Camera</div></div><div ><div >secondary</div><div >16 MP, f/2.0, HDR</div></div><div ><div >video</div><div >2160p@30fps, 1080p@30fps</div></div><div ><div >feature</div><div >LED flash, panorama, HDR</div></div><div ><div >primary</div><div >Triple: <br>32 MP, f/1.7, 0.8m, PDAF <br>8 MP, f/2.2, 12mm (ultrawide), 1.12m, PDAF<br>5 MP, f/2.2, depth sensor<br></div></div><div ><div >Battery</div></div><div ><div >capacity</div><div >3500mAh Li-Polymer (non-removable)</div></div><div ><div ><h3>Connectivity</h3></div></div><div ><div >Wi-Fi</div><div >Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</div></div><div ><div >internet</div><div >2G/3G/4G</div></div><div ><div >USB</div><div >2.0, Type-C 1.0 reversible connector</div></div><div ><div >bluetooth</div><div >5.0, A2DP, LE</div></div><div ><div >Audio</div></div><div ><div >radio</div><div >FM Radio</div></div><div ><div >Others</div></div><div ><div ><h3>sensors</h3></div><div >Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass</div></div><div ><div >general</div><div >Hybrid Dual SIM (Nano-SIM, dual stand-by)</div></div><div > Manufacturer </div><div ><div >first arrival</div><div >June, 2019</div></div><div ><div >Manufactured By</div><div >Samsung</div></div><div ><div >availability</div><div >available</div></div></div>', 149, 0, 0, 'USD', 65, 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/1.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/2.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/3.jpg', 'http://localhost:8084/public/product-image/Electronics/Mobiles/Xiaomi/10/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 1, 2, NULL),
(22, '', 'Télévision LG Smart 49 pouces', '<p>3UIGUJFIRU3JKRNFRZ</p>', '<h2>CARACTÉRISTIQUES GÉNÉRALES</h2><ul><li>Taille de l’écran / image (pouce): 49&nbsp;»</li><li>Taille de l’écran / image (cm): 123</li><li>Définition: 3840 x 2160</li><li>Picture Mastering Index PMI: 1500</li><li>Tuner (DVB-T2/DVB-C/DVB-S2): Oui / Oui / Oui</li></ul><h2>IMAGE</h2><ul><li>Technologie écran: LED</li><li>Gestion du rétroéclairage: Edge (local dimming)</li><li>Mode cinema 24p Real Cinema: Oui</li><li>Compatibilité HEVC: Oui (4K 60P, 4K 30P, 2K 60P)</li><li>Réception HEVC DVB-T2: Oui</li><li>TECHNOLOGIES Tru Ultra HD Engine Oui</li><li>TECHNOLOGIES Triple XD Engine: Oui</li><li>TECHNOLOGIES Color Prime: Non</li><li>TECHNOLOGIES Ultra Luminance: Oui</li><li>TECHNOLOGIES Upscaller 4K: Oui</li><li>Picture in Picture: Non</li></ul><h2>DESIGN</h2><ul><li>Design: Cadre fin</li><li>Cadre Noir / Argenté</li><li>Couleur arrière: Griz Ceramique</li><li>Finition et couleur du pied Pied 2 pôles argentés</li><li>Pied rotatif: Non</li></ul><h2>SMART TV</h2><ul><li>Smart TV: Oui</li><li>Plateforme Smart TV WebOS 2.0</li><li>LG App Store: Oui</li><li>Vidéo à la demande Oui</li><li>Contenu 3D en téléchargement: Non</li><li>Navigateur Internet Oui</li><li>Reconnaissance Vocale: Oui</li><li>Smart Share Oui</li><li>Fonctionnalités Smart Share DLNA: Oui</li><li>Fonctionnalités Smart Share Compatibilité Intel WiDi Oui</li><li>Fonctionnalités Smart Share Compatibilité MHL: Non</li><li>Fonctionnalités Smart Share Compatibilité Miracast: Oui</li><li>Fonctionnalités Smart Share Tag NFC: Non</li><li>Compatibilité clavier/souris/manette USB-HID: Oui</li></ul><h2>Fonctions Multimédia</h2><ul><li>Wifi: Oui</li><li>Bluetooth Produits LG: Oui</li><li>Bluetooth Téléphone: Oui</li><li>Enregistrement via HDD externe: Oui</li><li>Enregistrement via HDD externe Timeshift: Oui</li><li>Enregistrement via HDD externe Fonctionalité Watch &amp; Record: Non</li><li>HbbTV: Oui</li><li>Canal Ready: Oui</li><li>Application LG Remote: Oui</li></ul><h2>USB FORMATS RECONNUS</h2><ul><li>Photo: JPEG, JPS, MPO</li><li>Musiques: AC3(Dolby Digital), EAC3, HE-AAC, AAC, MP2, MP3, PCM, DTS, RA, WMA</li><li>Vidéos: DivX HD</li></ul><h2>CONFORT</h2><ul><li>Verrouillage parental: Oui</li><li>Horloge: Oui</li><li>Minuterie pour l’arrêt du téléviseur: Oui</li><li>Guide électronique des programmes (EPG): Oui</li><li>Simplink (HDMI CEC): Oui</li><li>Télétexte: 2000p</li><li>Sous-titres: Oui</li><li>Entrée Sources personnalisables: Oui</li><li>Paramétrage automatique des chaînes: Oui</li></ul><h2>CONNECTIQUES</h2><ul><li>Entrée HDMI 4K/60P: 3</li><li>Port USB 3.0: 1</li><li>Port USB 2.0: 2</li><li>Prise casque: 1 (dos)</li><li>Port Ci+: Oui (CI+1.3)</li><li>Prise antenne: DVB-T2 / DVB-C / DVB-S2</li><li>Entrée Péritel: Oui</li><li>Entrée Vidéo composite: Oui (partagé)</li><li>Entrée composante (Y/Pb/Pr): Oui</li><li>Entrée PC Audio: Oui (via composite)</li><li>Sortie audio numérique optique: 1</li><li>Port Ethernet RJ45: Oui</li></ul><h2>Caractéristiques audio</h2><ul><li>Puissance AudioL/R : 10W</li><li>Système d’enceintes 2.0Ch Speaker System</li><li>Décodeur Dolby Digital: Oui</li><li>Décodeur DTS: Oui</li><li>Système de son: ULTRA Surround</li><li>Tweeter: Oui</li><li>Son par Harman Kardon: Non</li><li>Amplification des voix (Clear Voice II): Oui</li><li>Sound Sync Wireless: Oui (connexion audio sans-fil)</li><li>Sound Sync Optique: Oui (connexion audio filaire)</li><li>Smart Sound Mode: Oui (mode sonore automatique)</li><li>apt-X Encoder: Oui</li><li>MQS Upscaler: Non</li><li>Private Sound Mode: Oui (transmission audio vers appareils tiers)</li></ul><p>Informations complémentaires</p><p>MARQUE</p><p><a href=\"https://viteservi.com/marque/lg/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--wd-link-color);\">LG</a></p><p>Taille</p>', 175, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\16665545276111591876300_791-600x600.jpg', 'http://localhost:8084/public\\product-image\\1666554527619D-01.jpg', 'http://localhost:8084/public\\product-image\\1666554527668medium01-1.jpg', 'http://localhost:8084/public\\product-image\\1666554527677OLED-TV-350-05.jpg', 'http://localhost:8084/public\\product-image\\1666554527685TD03.jpg', NULL, NULL, NULL, NULL, NULL, '2022-10-23 19:48:47', '2022-10-23 19:48:47', 2, 4, 26, NULL),
(23, '', 'Télévision LG Smart 49 pouces', '<p>Compatible HDR Pro, le téléviseur LG 49\'\' LED Edge - IPS 4K est proposé avec une diagonale de 123 cm, une résolution de 3840 x 2160 - PMI 1200 - UHD Mastering Engine, une fonction Audio 2 x 10 W Ultra...</p>', '<h2>CARACTÉRISTIQUES GÉNÉRALES</h2><ul><li>Taille de l’écran / image (pouce): 49&nbsp;»</li><li>Taille de l’écran / image (cm): 123</li><li>Définition: 3840 x 2160</li><li>Picture Mastering Index PMI: 1500</li><li>Tuner (DVB-T2/DVB-C/DVB-S2): Oui / Oui / Oui</li></ul><h2>IMAGE</h2><ul><li>Technologie écran: LED</li><li>Gestion du rétroéclairage: Edge (local dimming)</li><li>Mode cinema 24p Real Cinema: Oui</li><li>Compatibilité HEVC: Oui (4K 60P, 4K 30P, 2K 60P)</li><li>Réception HEVC DVB-T2: Oui</li><li>TECHNOLOGIES Tru Ultra HD Engine Oui</li><li>TECHNOLOGIES Triple XD Engine: Oui</li><li>TECHNOLOGIES Color Prime: Non</li><li>TECHNOLOGIES Ultra Luminance: Oui</li><li>TECHNOLOGIES Upscaller 4K: Oui</li><li>Picture in Picture: Non</li></ul><h2>DESIGN</h2><ul><li>Design: Cadre fin</li><li>Cadre Noir / Argenté</li><li>Couleur arrière: Griz Ceramique</li><li>Finition et couleur du pied Pied 2 pôles argentés</li><li>Pied rotatif: Non</li></ul><h2>SMART TV</h2><ul><li>Smart TV: Oui</li><li>Plateforme Smart TV WebOS 2.0</li><li>LG App Store: Oui</li><li>Vidéo à la demande Oui</li><li>Contenu 3D en téléchargement: Non</li><li>Navigateur Internet Oui</li><li>Reconnaissance Vocale: Oui</li><li>Smart Share Oui</li><li>Fonctionnalités Smart Share DLNA: Oui</li><li>Fonctionnalités Smart Share Compatibilité Intel WiDi Oui</li><li>Fonctionnalités Smart Share Compatibilité MHL: Non</li><li>Fonctionnalités Smart Share Compatibilité Miracast: Oui</li><li>Fonctionnalités Smart Share Tag NFC: Non</li><li>Compatibilité clavier/souris/manette USB-HID: Oui</li></ul><h2>Fonctions Multimédia</h2><ul><li>Wifi: Oui</li><li>Bluetooth Produits LG: Oui</li><li>Bluetooth Téléphone: Oui</li><li>Enregistrement via HDD externe: Oui</li><li>Enregistrement via HDD externe Timeshift: Oui</li><li>Enregistrement via HDD externe Fonctionalité Watch &amp; Record: Non</li><li>HbbTV: Oui</li><li>Canal Ready: Oui</li><li>Application LG Remote: Oui</li></ul><h2>USB FORMATS RECONNUS</h2><ul><li>Photo: JPEG, JPS, MPO</li><li>Musiques: AC3(Dolby Digital), EAC3, HE-AAC, AAC, MP2, MP3, PCM, DTS, RA, WMA</li><li>Vidéos: DivX HD</li></ul><h2>CONFORT</h2><ul><li>Verrouillage parental: Oui</li><li>Horloge: Oui</li><li>Minuterie pour l’arrêt du téléviseur: Oui</li><li>Guide électronique des programmes (EPG): Oui</li><li>Simplink (HDMI CEC): Oui</li><li>Télétexte: 2000p</li><li>Sous-titres: Oui</li><li>Entrée Sources personnalisables: Oui</li><li>Paramétrage automatique des chaînes: Oui</li></ul><h2>CONNECTIQUES</h2><ul><li>Entrée HDMI 4K/60P: 3</li><li>Port USB 3.0: 1</li><li>Port USB 2.0: 2</li><li>Prise casque: 1 (dos)</li><li>Port Ci+: Oui (CI+1.3)</li><li>Prise antenne: DVB-T2 / DVB-C / DVB-S2</li><li>Entrée Péritel: Oui</li><li>Entrée Vidéo composite: Oui (partagé)</li><li>Entrée composante (Y/Pb/Pr): Oui</li><li>Entrée PC Audio: Oui (via composite)</li><li>Sortie audio numérique optique: 1</li><li>Port Ethernet RJ45: Oui</li></ul><h2>Caractéristiques audio</h2><ul><li>Puissance AudioL/R : 10W</li><li>Système d’enceintes 2.0Ch Speaker System</li><li>Décodeur Dolby Digital: Oui</li><li>Décodeur DTS: Oui</li><li>Système de son: ULTRA Surround</li><li>Tweeter: Oui</li><li>Son par Harman Kardon: Non</li><li>Amplification des voix (Clear Voice II): Oui</li><li>Sound Sync Wireless: Oui (connexion audio sans-fil)</li><li>Sound Sync Optique: Oui (connexion audio filaire)</li><li>Smart Sound Mode: Oui (mode sonore automatique)</li><li>apt-X Encoder: Oui</li><li>MQS Upscaler: Non</li><li>Private Sound Mode: Oui (transmission audio vers appareils tiers)</li></ul><p>Informations complémentaires</p><p>MARQUE</p><p><a href=\"https://viteservi.com/marque/lg/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--wd-link-color);\">LG</a></p><p>Taille</p>', 175, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\16665545278281591876300_791-600x600.jpg', 'http://localhost:8084/public\\product-image\\1666554527830D-01.jpg', 'http://localhost:8084/public\\product-image\\1666554527864medium01-1.jpg', 'http://localhost:8084/public\\product-image\\1666554527866OLED-TV-350-05.jpg', 'http://localhost:8084/public\\product-image\\1666554527868TD03.jpg', NULL, NULL, NULL, NULL, NULL, '2022-10-23 19:48:47', '2022-10-23 19:48:47', 2, 4, 26, NULL),
(24, '', 'FEFEER', '<p>mlijoo</p>', '<p>junkj</p>', 175, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\16665552742194.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-23 20:01:14', '2022-10-23 20:01:14', 1, 1, 1, NULL),
(25, '', 'Poupé', '<p>loren insput</p>', '<p><span style=\"color: rgb(79, 79, 79);\">société de conseil aux entreprises qui offre des services professionnels dans la modélisation actuarielle, l\'amélioration des processus et la transformation financière des entreprises.</span></p>', 175, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\166664973499216.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 22:15:35', '2022-10-24 22:15:35', 1, 1, 1, NULL),
(26, '', 'aaaaaaaa', '<p>ghnyu-hu-</p>', '<p>yh-h-</p>', 175, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\166665362147717.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 23:20:21', '2022-10-24 23:20:21', 1, 1, 1, 1),
(27, '', 'aaaaaaaa', '<p>ghnyu-hu-</p>', '<p>yh-h-</p>', 175, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\166665381949217.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 23:23:39', '2022-10-24 23:23:39', 1, 1, 1, NULL),
(28, '', 'FEFEER', '<p>GEGREGER</p>', '<p>FERFER</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\166665435731616.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 23:32:37', '2022-10-24 23:32:37', 1, 1, 1, NULL),
(29, '', 'FEFEER', '<p>3</p>', '<p>3</p>', 5545, 4, 1, 'USD', 0, 'http://localhost:8084/public\\product-image\\166665681098915.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 00:13:31', '2022-10-25 00:29:54', 1, 1, 1, 1),
(30, '', 'K', '<p>K</p>', '<p>L</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\166665943898718.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 00:57:19', '2022-10-25 00:57:19', 1, 3, 21, 1),
(31, '', 'FEFEER', '<p>uihjhi</p>', '<p>jhnnbh</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\166669310507616.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 10:18:25', '2022-10-25 10:18:25', 1, 1, 1, 1),
(32, '', 'FEFEER', '<p>J</p>', '<p>JN</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\16666940080921.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 10:33:28', '2022-10-25 10:33:28', 1, 1, 1, NULL),
(33, '', 'FEFEER', '<p>e</p>', '<p>ee</p>', 5545, 4, 1, 'USD', 0, 'http://localhost:8084/public\\product-image\\166669420657615.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 10:36:46', '2022-10-25 13:49:24', 1, 1, 1, 1),
(34, '', 'FEFEER', '<p>RTR</p>', '<p>RFRE</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\1667196315706ananas.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31 06:05:15', '2022-10-31 06:05:15', 1, 1, 1, 1),
(35, '', 'FEFEER', '<p>EE</p>', '<p>E</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\1667451848925ananas.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 05:04:08', '2022-11-03 05:04:08', 1, 1, 1, 1),
(36, '', 'FEFEER', '<p>S</p>', '<p>S</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\1667480816717ananas.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 13:06:56', '2022-11-03 13:06:56', 1, 1, 1, 1),
(37, '', 'FEFEER', '<p>S</p>', '<p>S</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\1667480816936ananas.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 13:06:56', '2022-11-03 13:06:56', 1, 1, 1, 1),
(38, '', 'FEFEER', '<p>3333333</p>', '<p>333</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\1667487964092ananas.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 15:06:04', '2022-11-03 15:06:04', 1, 1, 1, 1),
(39, '', 'FEFEER', '<p>6R6</p>', '<p>TUTTT</p>', 0, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\1667489814849hq720.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 15:36:54', '2022-11-03 15:36:54', 2, 4, 25, 1),
(40, '', 'FEFEER', '<p>JGJH</p>', '<p>JHGJHGH</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\1667490883049hq720.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 15:54:43', '2022-11-03 15:54:43', 1, 1, 1, 1),
(41, '', 'FEFEER', '<p>VRF</p>', '<p>ZZ</p>', 5545, 0, 0, 'USD', 0, 'http://localhost:8084/public\\product-image\\1667491079881hq720.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03 15:57:59', '2022-11-03 15:57:59', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` int DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserId` (`UserId`),
  KEY `ProductId` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `createdAt`, `updatedAt`, `UserId`, `ProductId`) VALUES
(1, 4, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-21 12:50:58', '2022-10-23 20:08:53', 1, 1),
(2, 5, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 2),
(3, 4, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1, 3),
(4, 5, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4, 1),
(6, 0, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 2, 1),
(7, 0, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 3, 1),
(8, 5, 'this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy. this was nice in buy.', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 3, 2),
(9, 3, 'Bon produit', '2022-10-21 16:53:55', '2022-10-21 16:53:55', 2, 7),
(10, 4, 'jhn', '2022-10-25 00:29:54', '2022-10-25 00:29:54', 1, 29),
(11, 4, 'jhn', '2022-10-25 00:29:54', '2022-10-25 00:29:54', 1, 29),
(12, 4, ';', '2022-10-25 13:49:24', '2022-10-25 13:49:24', 1, 33);

-- --------------------------------------------------------

--
-- Structure de la table `showcases`
--

DROP TABLE IF EXISTS `showcases`;
CREATE TABLE IF NOT EXISTS `showcases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routerLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CompanyId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CompanyId` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `showcases`
--

INSERT INTO `showcases` (`id`, `type`, `caption`, `image`, `routerLink`, `priority`, `createdAt`, `updatedAt`, `CompanyId`) VALUES
(1, 'carousel', 'A New Online Shop Experience.', 'http://localhost:8084/public/display-images/home_slider_1.jpg', '/products/Electronics', 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(2, 'carousel', '', 'http://localhost:8084/public/display-images/home_slider_0.jpg', '/products/Electronics', 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(3, 'card', '', 'http://localhost:8084/public/display-images/mac-mini.png', '/products/Electronics', 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(4, 'card', '', 'http://localhost:8084/public/display-images/ipad-2020.jpeg', '/products/Electronics', 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(5, 'card', '', 'http://localhost:8084/public/display-images/razer-opus.jpeg', '/products/Electronics', 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(6, 'card', '', 'http://localhost:8084/public/display-images/p120.jpeg', '/products/Electronics', 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(7, 'big card', '', 'http://localhost:8084/public/display-images/smart-watches.jpeg', '/products/Electronics', 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(8, 'big card', '', 'http://localhost:8084/public/display-images/lenovo-yoga.jpeg', '/products/Electronics', 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1);

-- --------------------------------------------------------

--
-- Structure de la table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CategoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `createdAt`, `updatedAt`, `CategoryId`) VALUES
(1, 'crocodile', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(2, ' alligator', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(3, 'iguane', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(4, 'tortue', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(5, 'dragon de Komodo', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(6, 'grenouille', '2022-10-21 12:59:07', '2022-10-21 12:59:07', 2),
(7, 'crapaud.', '2022-11-02 20:53:42', '2022-11-02 20:53:42', 2),
(8, 'crapaud.', '2022-11-02 20:53:42', '2022-11-02 20:53:42', 2),
(9, 'truite', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3),
(10, 'carpe', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3),
(11, 'thon', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3),
(12, 'morue', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3),
(13, 'poisson-ballon', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3),
(14, 'poisson-clown', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3),
(15, 'truite', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3),
(16, 'carpe', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3),
(17, 'thon', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3),
(18, 'morue', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3),
(19, 'poisson-ballon', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3),
(20, 'poisson-clown', '2022-11-02 20:55:18', '2022-11-02 20:55:18', 3);

-- --------------------------------------------------------

--
-- Structure de la table `subsubcategories`
--

DROP TABLE IF EXISTS `subsubcategories`;
CREATE TABLE IF NOT EXISTS `subsubcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `SubCategoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SubCategoryId` (`SubCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `subsubcategories`
--

INSERT INTO `subsubcategories` (`id`, `name`, `createdAt`, `updatedAt`, `SubCategoryId`) VALUES
(1, 'Samsung', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(2, 'Xiaomi', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(3, 'Realme', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(4, 'Nokia', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(5, 'Huawei', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(6, 'oppo', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(7, 'Apple', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(8, 'Vivo', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(9, 'Pixel', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(10, 'Walton', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(11, 'LG', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(12, 'Mobile Charger', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 2),
(13, 'Mobile Cover', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 2),
(14, 'Power Bank', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 2),
(15, 'Memory Card', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 2),
(16, 'Data Cable', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 2),
(17, 'Screenguard', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 2),
(18, 'Headphones', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 2),
(19, 'External Hard Disk', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 3),
(20, 'Pendrive', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 3),
(21, 'Laptop Skins', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 3),
(22, 'Laptop Bags', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 3),
(23, 'Mouse', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 3),
(24, 'Keyboard', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 3),
(25, 'Samsung', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4),
(26, 'LG', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4),
(27, 'Sony', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4),
(28, 'Micromax', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4),
(29, 'Mi', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4),
(30, 'Thomson', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 4),
(31, 'Fully Automatic Front', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5),
(32, 'Semi Automatic Top', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5),
(33, 'Fully Automatic Top', '2022-10-21 12:50:58', '2022-10-21 12:50:58', 5),
(34, 'Samsung', '2022-10-21 12:59:21', '2022-10-21 12:59:21', 6);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registerToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resetPasswordToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CompanyId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CompanyId` (`CompanyId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `profileImage`, `registerToken`, `email`, `phoneNo`, `password`, `resetPasswordToken`, `userType`, `variant`, `priority`, `createdAt`, `updatedAt`, `CompanyId`) VALUES
(1, 'admin', 'Vianney', 'Anibe', 'http://localhost:8084/public/user-image/default-man.png', '', 'anibev3@gmail.com', '+2250140990499', '08162014', '', 'Admin', 'dark', 1, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(2, 'ronyku', 'Md. MAMA', 'Rony', 'http://localhost:8084/public/user-image/default-man.png', '', 'rony@gmail.com', '+8801700100001', '12345678', 'd65eabeac52d29638d365414ab937c04d9047a44', 'Customer', 'warning', 2, '2022-10-21 12:50:58', '2022-10-23 16:16:14', 1),
(3, 'mukit224', 'Mukit', 'Pranto', 'http://localhost:8084/public/user-image/default-man.png', '', 'mukit@gmail.com', '+8801700100002', '12345678', '', 'Customer', 'warning', 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(4, 'soron255', 'Shazzad', 'Soron', 'http://localhost:8084/public/user-image/default-man.png', '', 'shoron@gmail.com', '+8801700100003', '12345678', '', 'Customer', 'warning', 2, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 1),
(6, NULL, 'Anoh', 'Alexis', 'http://localhost:8084/public/user-image/default-man.png', '782934', 'aanibe201@gmail.com', NULL, '08162014', NULL, 'Customer', 'warning', 2, '2022-10-21 16:03:13', '2022-10-21 16:03:13', 1),
(7, NULL, 'aGGG', 'aGGGGG', 'http://localhost:8084/public/user-image/default-man.png', '517307', 'anibe4099@gmail.com', NULL, '08162014', '955ae77d25b660bc46779afce249218cbd257d70', 'Customer', 'warning', 2, '2022-10-21 16:12:09', '2022-10-23 16:17:45', 1),
(9, NULL, 'th(y', '\'(y(h', 'http://localhost:8084/public/user-image/default-man.png', '916188', 'anibe201@gmail.com', NULL, '12345678', NULL, 'Customer', 'warning', 2, '2022-10-23 16:32:19', '2022-10-23 19:57:43', 1),
(14, NULL, 'Anoh', 'Alexis', 'http://localhost:8084/public/user-image/default-man.png', '282237', 'administrateur@domaine.com', NULL, '111111111', NULL, 'Customer', 'warning', 2, '2022-10-30 18:15:55', '2022-10-30 18:15:55', 1),
(15, NULL, 'Anoh', 'Alexis', 'http://localhost:8084/public/user-image/default-man.png', '872252', 'adm@domaine.com', NULL, '111111111', NULL, 'Customer', 'warning', 2, '2022-10-30 18:18:32', '2022-10-30 18:18:32', 1),
(16, NULL, 'Anoh', 'Alexis', 'http://localhost:8084/public/user-image/default-man.png', '', 'anibe20323@gmail.com', NULL, '08162014', NULL, 'Customer', 'warning', 2, '2022-11-02 13:58:38', '2022-11-02 14:00:09', 1);

-- --------------------------------------------------------

--
-- Structure de la table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int DEFAULT NULL,
  `ProductId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserId` (`UserId`),
  KEY `ProductId` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wishlists`
--

INSERT INTO `wishlists` (`id`, `createdAt`, `updatedAt`, `UserId`, `ProductId`) VALUES
(7, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 2, 3),
(8, '2022-10-21 12:50:58', '2022-10-21 12:50:58', 2, 4),
(10, '2022-10-21 16:52:58', '2022-10-21 16:52:58', 2, 7);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`SubCategoryId`) REFERENCES `subcategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`SubSubCategoryId`) REFERENCES `subsubcategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `showcases`
--
ALTER TABLE `showcases`
  ADD CONSTRAINT `showcases_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `subsubcategories`
--
ALTER TABLE `subsubcategories`
  ADD CONSTRAINT `subsubcategories_ibfk_1` FOREIGN KEY (`SubCategoryId`) REFERENCES `subcategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`CompanyId`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
