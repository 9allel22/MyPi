-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 21 Novembre 2017 à 21:50
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `iski`
--

-- --------------------------------------------------------

--
-- Structure de la table `accomodation`
--

CREATE TABLE `accomodation` (
  `idAccomodation` int(11) NOT NULL,
  `accomodationType` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `accomodation`
--

INSERT INTO `accomodation` (`idAccomodation`, `accomodationType`, `capacity`, `description`, `name`, `price`) VALUES
(1, 'R&B', 6, 'House', 'House', 80),
(2, 'Hotel', 500, 'Five stars', 'California Hotel', 90),
(3, 'Guest House', 5, 'A guesthouse is generally a private home which has been converted for the dedicated and exclusive use of guest accommodation.', 'Guest House', 70),
(4, 'Boutique Hotel', 900, 'A boutique hotel is a 5 star establishment providing all the features and facilities of a normal hotel, in a unique and exclusive style.\r\nThese properties are generally small, feature top class service and are marketed to the affluent.', 'Boutique Hotel', 200);

-- --------------------------------------------------------

--
-- Structure de la table `company`
--

CREATE TABLE `company` (
  `idCompany` int(11) NOT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `offreType` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contract`
--

CREATE TABLE `contract` (
  `idCompany` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `montant` int(11) NOT NULL,
  `startDate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `idEvent` int(11) NOT NULL,
  `Station` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `descriptionEvent` varchar(255) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `piste` varchar(255) DEFAULT NULL,
  `priceEvent` float NOT NULL,
  `startDate` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `accomodation_idAccomodation` int(11) DEFAULT NULL,
  `user_idUser` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `event`
--

INSERT INTO `event` (`idEvent`, `Station`, `capacity`, `descriptionEvent`, `endDate`, `location`, `name`, `piste`, `priceEvent`, `startDate`, `state`, `accomodation_idAccomodation`, `user_idUser`) VALUES
(52, 'aa', 5, 'Aaaaa', '2017-11-18 00:00:00', 'aaa', 'aaa', 'aa', 77, '2017-11-18 00:00:00', 'aa', NULL, NULL),
(50, 'test', 2, 'test', '2017-11-18 00:00:00', 'test', 'test', 'red', 8, '2017-11-18 00:00:00', 'test', NULL, NULL),
(47, 'Super Besse', 80, 'event description', '2017-11-18 00:00:00', 'Auvergne', 'sknow', 'Blue', 70, '2017-11-13 00:00:00', 'Canceled', NULL, 1),
(46, 'Aussois', 80, 'An organized event', '2017-11-19 00:00:00', 'Alpes du Nord', 'enjoy skiing', 'Green', 49, '2017-11-17 00:00:00', 'Canceled', NULL, 1),
(44, 'La Bresse', 55, 'An organized event', '2017-11-25 00:00:00', 'Vosges Jura', 'amazing skiing ', 'Blue', 126, '2017-11-09 00:00:00', 'available', NULL, 1),
(43, 'Ax les Termes', 10, 'An organized event', '2017-11-30 00:00:00', 'Pyrénnées', 'ready to ski', 'Red', 50, '2017-11-17 00:00:00', 'available', NULL, 2),
(42, 'Super Besse', 40, 'An organized event', '2017-11-23 00:00:00', 'Auvergne', NULL, 'Green', 200, '2017-11-16 00:00:00', 'Canceled', NULL, 2),
(41, 'Isola 200', 90, 'An organized event', '2017-11-25 00:00:00', 'Alpes du Sud', 'Rain go', 'Green', 250, '2017-11-09 00:00:00', 'available', NULL, 2),
(40, 'Isola 200', 50, 'An organized event', '2017-11-22 00:00:00', 'Alpes du Sud', 'Enjoy Ski ', 'Green', 99, '2017-11-11 00:00:00', 'available', NULL, 1),
(39, 'Isola 200', 20, 'An organized event', '2017-11-22 00:00:00', 'Alpes du Sud', 'Barou', 'Red', 89, '2017-11-16 00:00:00', 'available', NULL, 2),
(38, 'Chabanon selonnet', 33, 'An organized event', '2017-11-25 00:00:00', 'Alpes du Sud', 'Jariko', 'Blue', 120, '2017-11-10 00:00:00', 'available', NULL, 1),
(48, 'Chabanon selonnet', 55, 'test', '2017-11-07 00:00:00', 'Alpes du Sud', 'kallel', 'Green', 89, '2017-11-06 00:00:00', 'available', NULL, 1),
(37, 'Alpe d\'huez', 20, 'An organized event', '2017-11-17 00:00:00', 'Alpes du Nord', 'Coco', 'Green', 150, '2017-11-07 00:00:00', 'Canceled', NULL, 1),
(36, 'Albiez montrond', 100, 'An organized event', '2017-11-12 00:00:00', 'Alpes du Nord', 'Azur ', 'Green', 200, '2017-11-06 00:00:00', 'available', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `event_user`
--

CREATE TABLE `event_user` (
  `events_idEvent` int(11) NOT NULL,
  `users_idUser` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.accomodation`
--

CREATE TABLE `iski.accomodation` (
  `idAccomodation` int(11) NOT NULL,
  `accomodationType` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.company`
--

CREATE TABLE `iski.company` (
  `idCompany` int(11) NOT NULL,
  `companyName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `offreType` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.contract`
--

CREATE TABLE `iski.contract` (
  `idCompany` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `montant` int(11) NOT NULL,
  `startDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.event`
--

CREATE TABLE `iski.event` (
  `idEvent` int(11) NOT NULL,
  `Station` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `descriptionEvent` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `piste` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `priceEvent` float NOT NULL,
  `startDate` datetime DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `accomodation_idAccomodation` int(11) DEFAULT NULL,
  `user_idUser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.event_user`
--

CREATE TABLE `iski.event_user` (
  `events_idEvent` int(11) NOT NULL,
  `users_idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.organizerrequest`
--

CREATE TABLE `iski.organizerrequest` (
  `id` int(11) NOT NULL,
  `cv` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.products`
--

CREATE TABLE `iski.products` (
  `idProduct` int(11) NOT NULL,
  `categorieP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `descriptionP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `imageP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `nameP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `priceP` float NOT NULL,
  `stateP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `stockP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.products_user`
--

CREATE TABLE `iski.products_user` (
  `Products_idProduct` int(11) NOT NULL,
  `users_idUser` int(11) NOT NULL,
  `Products_idP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.user`
--

CREATE TABLE `iski.user` (
  `idUser` int(11) NOT NULL,
  `birthDate` datetime DEFAULT NULL,
  `cin` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `firstName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lastName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `number` int(11) NOT NULL,
  `userType` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.userexperience`
--

CREATE TABLE `iski.userexperience` (
  `id_experience` int(11) NOT NULL,
  `date_arrive` datetime NOT NULL,
  `date_depart` datetime NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rating` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.user_company`
--

CREATE TABLE `iski.user_company` (
  `User_idUser` int(11) NOT NULL,
  `companies_idCompany` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `iski.winner`
--

CREATE TABLE `iski.winner` (
  `id_winner` int(11) NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `organizerrequest`
--

CREATE TABLE `organizerrequest` (
  `id` int(11) NOT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_idUser` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL,
  `categorieP` varchar(255) DEFAULT NULL,
  `descriptionP` varchar(255) DEFAULT NULL,
  `imageP` varchar(255) DEFAULT NULL,
  `nameP` varchar(255) DEFAULT NULL,
  `priceP` float NOT NULL,
  `stateP` varchar(255) DEFAULT NULL,
  `stockP` int(11) NOT NULL,
  `user_idUser` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`idProduct`, `categorieP`, `descriptionP`, `imageP`, `nameP`, `priceP`, `stateP`, `stockP`, `user_idUser`) VALUES
(33, 'GOGGLES', 'description 9', '1.png', 'product 9', 22, 'Out Of Stock', 0, NULL),
(31, 'WINTER APPAREL', 'Product 7 Description', '2.png', 'Product 7', 14, 'Out Of Stock', 0, NULL),
(30, 'WINTER BOOTS', 'Description du produit 6', '3.png', 'Product 6', 60, 'Available', 13, NULL),
(29, 'SKI & SNOWBOARD RACKS', 'Fifth Description', '4.png', 'Fifth Product', 45, 'Available', 7, NULL),
(28, 'HELMETS', 'Fourth Description', '5.png', 'Fourth Product', 12, 'Available', 4, NULL),
(27, 'BAGS & DUFFELS', 'Third Description', '6.png', 'Third Product', 90, 'Available', 2, NULL),
(32, 'WINTER APPAREL', '8 eme comment', '7.png', '8 eme prduit', 11, 'Available', 5, NULL),
(26, 'ACTION CAMERAS', 'Second Product', '8.png', 'Second Product', 89, 'Available', 2, NULL),
(25, 'GOGGLES', 'First Description ', '9.png', 'First Product', 45, 'Out Of Stock', 0, NULL),
(34, 'BAGS & DUFFELS', 'description 10', '10.png', 'product10', 78, 'Available', 4, NULL),
(35, 'GOGGLES', 'description 11', '11.png', 'product11', 41, 'Available', 9, NULL),
(36, 'BAGS & DUFFELS', 'description 12', '12.png', 'product12', 47, 'Available', 4, NULL),
(37, 'ACTION CAMERAS', 'description 13', '13.png', 'product13', 22, 'Available', 2, NULL),
(38, 'WINTER APPAREL', 'description 14', '14.png', 'product14', 72, 'Out Of Stock', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `products_user`
--

CREATE TABLE `products_user` (
  `Products_idProduct` int(11) NOT NULL,
  `users_idUser` int(11) NOT NULL,
  `Products_idP` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ratings`
--

CREATE TABLE `ratings` (
  `idUser` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `dislike` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ratings`
--

INSERT INTO `ratings` (`idUser`, `idProduct`, `like`, `dislike`) VALUES
(1, 25, 1, 0),
(3, 25, 1, 0),
(3, 28, 1, 0),
(3, 30, 1, 0),
(3, 35, 0, 1),
(3, 38, 1, 0),
(5, 26, 0, 1),
(5, 27, 0, 1),
(5, 29, 0, 1),
(5, 30, 1, 0),
(5, 37, 0, 1),
(5, 38, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `birthDate` datetime DEFAULT NULL,
  `cin` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `userType` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`idUser`, `birthDate`, `cin`, `email`, `firstName`, `gender`, `lastName`, `number`, `userType`, `avatar`, `password`) VALUES
(1, '2017-10-05 00:00:00', 2580156, 'kallelm@yahoo.fr', 'Kallel', 'M', 'Mohamed', 27726987, 'Organizer', NULL, NULL),
(2, '2017-10-29 00:00:00', 849653254, 'kouti@yahoo.fr', 'saifeddine', 'M', 'Kouti', 2584963, 'Admin', NULL, '12345'),
(3, '1994-07-06 00:00:00', 5879214, 'bz@gmail.com', 'bairem', 'M', 'Zalleg', 57854896, 'User', NULL, '12345'),
(4, '2017-11-15 00:00:00', 25478965, 'mk@gmail.com', 'Mohamed', 'M', 'Kallel', 27726987, 'Admin', NULL, '123'),
(5, '2017-11-07 00:00:00', 8478558, 'mohamedali.masmoudi@esprit.tn', 'Dali', 'M', 'Masmoudi', 27879654, 'User', 'dali.jpeg', '123');

-- --------------------------------------------------------

--
-- Structure de la table `userexperience`
--

CREATE TABLE `userexperience` (
  `date_arrive` date DEFAULT NULL,
  `date_depart` date DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `id_experience` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `userexperience`
--

INSERT INTO `userexperience` (`date_arrive`, `date_depart`, `description`, `rating`, `type`, `id_experience`, `idUser`) VALUES
('2017-10-12', '2017-03-28', 'It was a really nice experience , the event was so organized . the stuff took care of us and I\'ll come back as soon as I collect some more money ', 9, 'Event', 3, 1),
('2017-03-11', '2017-03-28', 'I loved everything about buying from you! My purchase was carefully packaged and quickly shipped.', 7, 'Material', 5, 1),
('2016-02-21', '2017-02-21', 'aaaaaa', 1, 'Material', 6, 1),
('2016-02-21', '2017-11-18', 'blablabla', 7, 'Event', 7, 1),
('2017-10-17', '2017-10-24', 'moch normal ', 7, 'Event', 8, 1),
('2018-11-14', '2019-10-23', 'ya 9allel 7chineh nayek', 10, 'validation', 9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_company`
--

CREATE TABLE `user_company` (
  `User_idUser` int(11) NOT NULL,
  `companies_idCompany` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `winner`
--

CREATE TABLE `winner` (
  `id_winner` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `__migrationhistory`
--

CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8 NOT NULL,
  `ContextKey` varchar(300) CHARACTER SET utf8 NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `__migrationhistory`
--

INSERT INTO `__migrationhistory` (`MigrationId`, `ContextKey`, `Model`, `ProductVersion`) VALUES
('201711201146192_update0', 'Data.Migrations.Configuration', 0x1f8b0800000000000400dd5ddb6e1cb9117d0f907f68cc63e0d5c8368c6c84d12e1cd90e84acac81c65ee44da0ba3923c27d99ede668a504f9b23ce493f20b61df79ed26d9eccb2e0c1812d93c55248bc52a9255fadf7ffebbf9f1390abd27986628892f57afcfce571e8cfd2440f1e17275c2fbefbe5ffdf8c31fffb0f91844cfdecff5776ff3ef48cb38bb5c3d627cbc58af33ff1146203b8b909f2659b2c7677e12ad4190acdf9c9fff65fdfaf51a128815c1f2bccddd29c62882c52fe4d7ab24f6e1119f4078930430ccaa7252b32b50bdcf2082d911f8f072f50160b0f2de870810da3b18ee571e88e304034c38bbf89ac11d4e93f8b03b9202107e793942f2dd1e8419ac38be683fd765fefc4dcefcba6d5843f9a70c279121e0ebb7d568acf9e65663ba6a468b8cd74732aef825ef753166972be093264950c1f3042faec234ff980c2b2946f15939fe6774ab575e59f7aa997e2225f9bf57ded529c4a7145ec6f0845310bef2b6a78710f97f872f5f926f30be8c4f6148b3471824754c0129daa6c911a6f8e50eee2ba651f09e617bcd62ac79900642d1beece2758cdfbe59799f0953e021848d5450c3b1c3490aff066398020c832dc018a66452af03588cabc00947971eb69c664d998824594f2bef063cff04e3037ebc5cbd79f76ee57d42cf30a84b2a6ebec6882c3fd208a727d847d0076451148c7577b11b2580999fa2233d56a3711c93ff4727724c91df52213442d833289b75bb723ad71399e023885ff49752d56096557455336bbe809aa653ad9d6a9c3e4f211fc97e9fc21116a88114c564aa7d6c2246658b25c991e26bb207a7b38adce724ee15819acd29684da95f611c100ba911ecfce72f28ea6d1611f102311eb68f6418a4b89fbaf62a814f4475dc9f8a79d25d276d9b19564a413cbb47c1c7fc07ade592739ab7b05b343cc129a499e5d83d456df1a8faac2b19c5e7b3a84fa934e8684447b3aabb05ef3098444739b75a99715a9a6a0d137f9a619dc6b446199e804a6ec0b3b3aa63c55b6f49d28613f4937618ef3bbdd67e9d2c57c9569a35490f2046ff84690a7f39c1cc40c9f22d67d1b736aa764247e76974b10aa690dd7c859cb2d1c9a845db8d437f4c93e064e289550d6691ec6dcdacb980374d279373d2ea90a4086ec797f7d614189f188ac061823ee5bbf9f8548a8d763b7c93c513f04a96a7ff6d3ba612c80c9d4da6d90c0a615bd3576a06639fb3978eb9ee9171f97b7054bb7b3aab6b7c4780f335a82bc8e5f7b36c69da423868f733351f06eca03dde20fa0607fabd28b300f90c9ed0a190016107a87a7507c3a23e7b44c7f266b5128bfbe6934f6912dd2561236075cdfd2e39a5c58d4b22adfe02d20314e74dc953a985d50c95f5023785a9a860a5a893f1a1bda6ccb686997604fbd377375a52d7387c40297eb4f1cb7dd47b9fdb738a4366241cdd56d9a334c393dc651d601cb433371a99104cd49ff8143d0cd5d5f9e29be4fe1d3c010cc61ffc23c8b25f9334704fa85305c367528260ecc34caa8dd96f04ad2ca96e3470ad9d65dfd41adc5a4bb7809dfa9a4c1dadaddb56b3e8ed7b9a6b73f5cd349f4a8be7e74cf7204dd193448f9b9a353956008f20c5c3b19c5eb81a124f2bdb7b8802c36e9497b1896b61269b1b71166a8337eaba548bb5dab8377edb43b79a41697ca58f46353ca892530473ffd4fa691043740aa75acaf58cbef5af288e4d3c81f2fb79f6949a578bfda46e3ae55e32fed96d50a99be16788efb32cf151d175e6d0a5f19659463ec681d7ed3a973d6fbd5cd27d2218e848448190bf5cfd49e89c12b3b1b25accc68767415faf7839ba8d3fc01062e8bdf7cb17cd5720f34120314a0879b684881e51cb71feeefa8a687c22cc28c6a29ca2d847471076b2ceb5323b10ca996bc8f0351fe031f79862dc391d83e93764b841eb1ba3cd9a12ac6e7993eda32a01e9dc545b29e1ad677d09ec34f65902cb93c10ee6f50441b105eb4b61c7fc0ce3600239a40fe57a14944aeeac35de6f4bce244c4f245f92f15f985c95bbec55fe0e15111ba26620fb86f232f82cbba127cc55465756edffbcb8e4983b8825cf6db295d76eec95d480aea8131eacb14b2540bec2ba1631ca57dd728cfa8d780f08fd4c5640a12b7570649cc8df2ff2cdf9a73f3224f161510f687dc32ac13a2a6e835410aa11e2ea7bd06aef5e80a955584ffbe25252d25c8b38bf3d4b513ace916478add72b45bbd715e5d25f90754de184507aa045e16f9ca88fe47752bc62eab5b31bbedbb914b45baf614d81b412caef196c07353a2f3d181147a0d7eed3b6fca86e744b8eb6a9c721ba1815e6ce4f290f3da320b33fac24c1556f6bb7b2d9f09abacdba0c7aad0a366b4574ece6061c8f84252a5ab62af17665a8ecd5773bf388d2a8c458fb9924b0b4e1b6a1449c7e70805c2d214d38fd94df81e5a7ec0f2077aaaf8248f88cdede15eaa5a624dbc1c5d9aa554fdd2affb96c591cf7331bbc680055ad3e912e45b9ed541c695093dcdddccbc395410852e1d0817dd77b9584a72896d7f102a84615634d695cb1561fb97d9e4f23b6a5fa48cc393c0dc654e8e3952fdc69a0b2441fa18a0ca521aa221163b3e6e4413082057913bc065688b544bcb52b8dc5bbdeabcd255bd9522dd4cd592c2bcfca5841351613fac9c81c5da18f478577d26854f18226bb76002c26bbf20f6c665bd5748ae9ae9d4a1648ee68aa515ceb9626ba87c66a0af5719a484a1aa729d4c7a122576824aa7831424cf998c652ac6eab21c75d8d95f3cc854c32d3dd13bfa94665df9ad298dd8f6de79d330bad538e8cf95429daa97584647a2ce6a50969a4719ac2996d224917c5dae935581bb04803b5a593da6b65b82163af954586369f64ace9f271f572079604c70ca3338450e512081f9a693aa5a25b9e9e134f258d559e706869aefdfa21d48a90d781466aeb8953584f46aa4a90cec042c0f318415ec24fc2514917ca6f4ce49a13416349531c6a6a0898b2a55aae9acb6b56bc9477da6a2c3ad28fdd1edb72ab0d72abdc1c8d10eb883da6a35599d966b6157733238c3adc4ed8868c50ea783b61df304429c3e95894b26c716bc9d2bbe86caebfac54ed55432b8b78a38759563f85afa1c3af9ad3058945755e6f2c0f77d2761a82a06a38ee19874b255dc68c31167d5162a098ebc0334627d7858b918df226c658342c3584996270231654f0140d44151becdd8873138a0203a7b30ca7625cceb2481f830a96a271a8627dac3a1c8a06aacb0c160b9031d4961a580d55381363365465662a5f3cd06e4b0ddcc52a6289f10cab32033ba60948622c99a67451ca80bad6b6d20aeaf69afaa10b40ad2998881e566174c40a756132e13abc5bd75418e2d5213b025e5d31df917e7dab4f43a96efad528585877d870cd9969fd1957cabde21a506f9da85a6bae127573d5b87e559d0b7406c6a8f1a49126e27d646700cd8c3358bfc0329ebcea8196f9b4a91a7628b5fa3118a7d0e46fc4bab0861f4e35c1201c2fb2a778a34fabf01e88ffa4a15e9534bf37ef81aab738fd29f485c739e5272b8f0cd0130af28739372fbb5fc2b3324436fff12a44c53979fdc50d59067b98e1324269f5eeeccf5c4efee5e4c75f6759c0c44f1927c9bf26e6e3f3e5ea5fdebf9793cc1ee5b3d11b72651800aaca5f1f3f81d47fcc4d443e22ab256093f8b3e8c4f0d85e57ecc52072de652615fd3e4c405f8f1d64a21f2aafeed2c68f22a5924cf1ae664b480c6f07ec220ffc4893a8f8da366b8c6cbe07459d2f4c2570397f731303171909b629f451f9c770ce4d41b964eb365d16f2dada70e62611fb30415d48ca749b3960f9d0c5199cde7ca86270938d7c14cdce25205fa8d9c18cc3a2150d9f7a7cd186129d58dca9f5c5cc978e093692ba95c2baefb3464e716e0158a661ee4571996f7ca8d6b35178e35ab14fae273e184198d824dfae50fb85699c8cde43854871ed6a917e7b1c9112326e3b132d49826d57d86c3e6d975b947350365bb6f55682dd73c6e6c676bf989499b1872d299d87304b4e603d9ddbd0cdd508132f7bf1b2dc9ccea8db55ca9b5c78d7ffa886fd95779b0630bdf0ce89d80e4e04ad4f7b5bffe98801e4e9dccf568e0c9b3edaa1c48ca221dc24341e65bb157218bb710aa80cc736f3cbe43776b5bd08e98c5d01b3d98b5da1f2c98a9d19154c6e625be53fc6cd0a9b88d899bdc3e51d1ef9349ccf41e15c95b8cfb13b8a6291a4d5ed572db649765d21db9dc15b64d4b55976d870c9d95e5c8c6181b8ca613b6cf12c25d7accdec7764907568fe28f3c20ed65aceb2b88ea6ad9c9f09b0795aed67c93a4beb91b5f127cba1ca271cb24a9368959c503a224aa154bbeba649097f97b956a74d46a9cacd3528b7ab7526d57972a62e2d9fa55d9ed43965676a8533a5ac18a99a99739e8ab9d3f81963332fb2af17db7d509ad4b47cea59665e23535d6ea816794f65f9229b1a2911d39ca89d295115145c674c95923148a95a5d3d0b34aa72357c2fb278652a10113f91d2b3cdc9da9592554aa8be4ad025a09bb1b59398de3cd57a4e205557d4348287a42151d6f57747d18b0ee6c74906ab243556c6582541c3a4b21d3965a524664a38cbad0b262f83b89b88fbae186e2cecdecb49292b243fedeca25c563512cfce952fd6bc8b2e66d12029ac18ec41ec90539c9fe495bf7d80193ab4101b8219439fb1409a6faee37d521b421c47f5279c837e033120f602789f62b4275b2ea9f6619615ddfd1984a77cef8b1e60701ddf9ef0f184499761f410322b3e37a8bae817996f599e37b7c50963e6a20b844d949f5ddcc67f3da13068f8fe24395d5040e4965a759292cf25ce4f540e2f0d92e48f0c2980aae16b0ccc2f303a86042cbb8d77203f0536e78d18b13fc103f05fb655c88e1aa47f22d861df7c40e0908228ab30daf6e45722c341f4fcc3ff01e463b6d25c940000, '6.2.0-61023');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `accomodation`
--
ALTER TABLE `accomodation`
  ADD PRIMARY KEY (`idAccomodation`);

--
-- Index pour la table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`idCompany`);

--
-- Index pour la table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`idCompany`,`idUser`),
  ADD KEY `FK_8sjds15bced1pblgmoy28r8as` (`idUser`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`idEvent`),
  ADD KEY `FK_dh3jy2xrtq1m8k3wyw2hfbr9e` (`accomodation_idAccomodation`),
  ADD KEY `FK_puf46m6q6ctm0p28naiuse2oa` (`user_idUser`);

--
-- Index pour la table `event_user`
--
ALTER TABLE `event_user`
  ADD KEY `FK_9172g86aba8mia235t5nb87tj` (`users_idUser`),
  ADD KEY `FK_mhpyxsdr9hir2l8p1kw5rwdi2` (`events_idEvent`);

--
-- Index pour la table `iski.accomodation`
--
ALTER TABLE `iski.accomodation`
  ADD PRIMARY KEY (`idAccomodation`);

--
-- Index pour la table `iski.company`
--
ALTER TABLE `iski.company`
  ADD PRIMARY KEY (`idCompany`);

--
-- Index pour la table `iski.contract`
--
ALTER TABLE `iski.contract`
  ADD PRIMARY KEY (`idCompany`,`idUser`);

--
-- Index pour la table `iski.event`
--
ALTER TABLE `iski.event`
  ADD PRIMARY KEY (`idEvent`);

--
-- Index pour la table `iski.event_user`
--
ALTER TABLE `iski.event_user`
  ADD PRIMARY KEY (`events_idEvent`,`users_idUser`);

--
-- Index pour la table `iski.organizerrequest`
--
ALTER TABLE `iski.organizerrequest`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `iski.products`
--
ALTER TABLE `iski.products`
  ADD PRIMARY KEY (`idProduct`);

--
-- Index pour la table `iski.products_user`
--
ALTER TABLE `iski.products_user`
  ADD PRIMARY KEY (`Products_idProduct`,`users_idUser`,`Products_idP`);

--
-- Index pour la table `iski.user`
--
ALTER TABLE `iski.user`
  ADD PRIMARY KEY (`idUser`);

--
-- Index pour la table `iski.userexperience`
--
ALTER TABLE `iski.userexperience`
  ADD PRIMARY KEY (`id_experience`),
  ADD KEY `IX_idUser` (`idUser`) USING HASH;

--
-- Index pour la table `iski.user_company`
--
ALTER TABLE `iski.user_company`
  ADD PRIMARY KEY (`User_idUser`,`companies_idCompany`);

--
-- Index pour la table `iski.winner`
--
ALTER TABLE `iski.winner`
  ADD PRIMARY KEY (`id_winner`);

--
-- Index pour la table `organizerrequest`
--
ALTER TABLE `organizerrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_6xdnrf3utb72o3th772nb8q9` (`user_idUser`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `FK_dg1fcupuuydr99jh7s429ibcp` (`user_idUser`);

--
-- Index pour la table `products_user`
--
ALTER TABLE `products_user`
  ADD KEY `FK_6uadfega6gyablp1qctce2kbg` (`users_idUser`),
  ADD KEY `FK_279kg0750l4u15p04vn0bag56` (`Products_idProduct`),
  ADD KEY `FK_5xo83yv80vh7foicars9iq37a` (`Products_idP`);

--
-- Index pour la table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`idUser`,`idProduct`),
  ADD KEY `IX_idUser` (`idUser`) USING HASH,
  ADD KEY `IX_idProduct` (`idProduct`) USING HASH;

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- Index pour la table `userexperience`
--
ALTER TABLE `userexperience`
  ADD PRIMARY KEY (`id_experience`),
  ADD KEY `userexperience_ibfk_1` (`idUser`);

--
-- Index pour la table `user_company`
--
ALTER TABLE `user_company`
  ADD UNIQUE KEY `UK_4gft0vuaq51yk4qvrjfma8sgx` (`companies_idCompany`),
  ADD KEY `FK_s891jq1aooeywimt7yk3sj2j5` (`User_idUser`);

--
-- Index pour la table `winner`
--
ALTER TABLE `winner`
  ADD PRIMARY KEY (`id_winner`);

--
-- Index pour la table `__migrationhistory`
--
ALTER TABLE `__migrationhistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `accomodation`
--
ALTER TABLE `accomodation`
  MODIFY `idAccomodation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `company`
--
ALTER TABLE `company`
  MODIFY `idCompany` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `idEvent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pour la table `iski.accomodation`
--
ALTER TABLE `iski.accomodation`
  MODIFY `idAccomodation` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `iski.company`
--
ALTER TABLE `iski.company`
  MODIFY `idCompany` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `iski.event`
--
ALTER TABLE `iski.event`
  MODIFY `idEvent` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `iski.organizerrequest`
--
ALTER TABLE `iski.organizerrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `iski.products`
--
ALTER TABLE `iski.products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `iski.user`
--
ALTER TABLE `iski.user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `iski.userexperience`
--
ALTER TABLE `iski.userexperience`
  MODIFY `id_experience` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `iski.winner`
--
ALTER TABLE `iski.winner`
  MODIFY `id_winner` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `organizerrequest`
--
ALTER TABLE `organizerrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `userexperience`
--
ALTER TABLE `userexperience`
  MODIFY `id_experience` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `winner`
--
ALTER TABLE `winner`
  MODIFY `id_winner` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `iski.userexperience`
--
ALTER TABLE `iski.userexperience`
  ADD CONSTRAINT `FK_iski.userexperience_iski.user_idUser` FOREIGN KEY (`idUser`) REFERENCES `iski.user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
