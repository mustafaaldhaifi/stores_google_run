-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2025 at 08:38 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u574242705_yemen_apps1`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessTokens`
--

CREATE TABLE `accessTokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `userSessionId` int(11) NOT NULL,
  `refreshCount` int(11) NOT NULL DEFAULT 0,
  `expireAt` timestamp NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accessTokens`
--

INSERT INTO `accessTokens` (`id`, `token`, `userSessionId`, `refreshCount`, `expireAt`, `createdAt`, `updatedAt`) VALUES
(1, '35453c949ff82d{700e1~5f26b2!6466ad~@a', 4, 0, '2024-12-04 23:59:59', '2024-12-04 23:26:17', '2024-12-04 23:26:17'),
(4, '[1c08c1196411fabfa}0b982a66ad,^72-bb3', 3, 51, '2025-05-14 23:59:59', '2024-12-03 11:20:22', '2025-05-14 23:36:52'),
(5, '{&9c8b792<3f23094f7b2{~e84337ae5958b0', 7, 8, '2025-05-13 23:59:59', '2024-12-06 14:21:15', '2025-05-13 21:57:33'),
(6, 'd92]266cf8[3417fa7;0921=#1c12f69dc848', 8, 24, '2025-05-18 23:59:59', '2025-01-01 17:04:33', '2025-05-18 23:20:45'),
(7, 'c3&7>b2$b400a23a4db8f5459f7-b6134fa*c', 9, 12, '2025-03-11 23:59:59', '2025-01-01 17:10:42', '2025-03-11 17:03:23'),
(8, ',b038.(6c06bf99da7dc2d821567>7cdf8b]b', 10, 69, '2025-05-16 23:59:59', '2025-01-01 20:46:26', '2025-05-16 13:15:19'),
(9, 'dc3{2f)2ac15&c~bb47eef837c748,430fd19', 11, 0, '2025-01-11 23:59:59', '2025-01-11 09:48:00', '2025-01-11 09:48:00'),
(10, '58c6)@a60f27287559|00e6afa,,eaff66428', 12, 0, '2025-01-11 23:59:59', '2025-01-11 22:34:34', '2025-01-11 22:34:34'),
(11, '3|c039b4b51]082!4cb6429{ed18de584~79e', 13, 2, '2025-02-01 23:59:59', '2025-01-12 18:21:00', '2025-02-01 17:26:44'),
(12, '/a6de4}8875717df3321?2&c130c)43b4c558', 14, 2, '2025-05-13 23:59:59', '2025-01-17 23:21:53', '2025-05-13 00:36:46'),
(13, 'e9e73c2a15e0ac|70&2141]b447>7c968f7>9', 15, 5, '2025-04-29 23:59:59', '2025-01-31 18:01:37', '2025-04-29 09:20:40'),
(14, 'd0c183edcb?:5d08c+875?7fb4208,d712212', 18, 0, '2025-02-11 23:59:59', '2025-02-11 10:31:56', '2025-02-11 10:31:56'),
(15, 'b+def?3d0f6a60277004c0{0c95bcc0b&=3c6', 19, 5, '2025-02-19 23:59:59', '2025-02-14 14:41:52', '2025-02-19 08:13:11'),
(16, '037>e06be47e688407948fd=e@>64c49a4f[2', 20, 0, '2025-02-19 23:59:59', '2025-02-19 13:27:05', '2025-02-19 13:27:05'),
(17, '02f4f8fa6f62b9|fc48(d461+19742429@%47', 21, 14, '2025-04-30 23:59:59', '2025-02-28 09:35:50', '2025-04-30 13:56:44'),
(18, 'f8,f9248!8356b4ccdb28b6546|dd93d!1~b6', 22, 1, '2025-03-09 23:59:59', '2025-03-06 16:06:44', '2025-03-09 05:06:45'),
(19, '27~85e8be15@1a6abf87e1+d77&4c358c$d8b', 23, 1, '2025-03-07 23:59:59', '2025-03-06 23:45:01', '2025-03-07 00:19:17'),
(20, '549c043ffe:680{6cd$4d93e2ae8b*95)cb88', 24, 0, '2025-04-23 23:59:59', '2025-04-23 22:50:52', '2025-04-23 22:50:52'),
(21, '5c92f8c29=72a5=|59-f672~d7f62ddb019f2', 25, 2, '2025-05-02 23:59:59', '2025-04-24 12:17:49', '2025-05-02 14:13:00'),
(22, 'b59f3d3c922c6,8a123d2%!1+85ccc32f%18e', 26, 0, '2025-04-24 23:59:59', '2025-04-24 17:23:07', '2025-04-24 17:23:07'),
(23, 'bf,4e15/}98b48ac9addf641550abb4%8=9c5', 27, 7, '2025-05-08 23:59:59', '2025-04-29 10:36:50', '2025-05-08 23:49:19'),
(24, 'f7292505c<7]{28edebe0608badb&a47}3bc5', 28, 0, '2025-05-09 23:59:59', '2025-05-09 00:12:38', '2025-05-09 00:12:38'),
(25, '_42d2f89=[4+b0b29b04d24}a1670367e3c67', 29, 2, '2025-05-13 23:59:59', '2025-05-09 20:27:41', '2025-05-13 00:08:20'),
(26, '5}|b68437198:dfa(ffea8e699963ba33]c74', 30, 0, '2025-05-11 23:59:59', '2025-05-11 23:23:19', '2025-05-11 23:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sha` varchar(255) NOT NULL,
  `packageName` varchar(255) NOT NULL,
  `serviceAccount` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `name`, `sha`, `packageName`, `serviceAccount`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'store manager', '85:9D:B5:3A:2F:E9:87:B8:0C:74:35:3B:B6:4A:6C:F4:1B:26:66:BA:27:EF:97:87:B1:E2:A3:BA:45:25:86:97', 'com.fekraplatform.storemanger', NULL, '0', '2024-12-03 18:24:27', '0000-00-00 00:00:00'),
(2, 'stores', '85:9D:B5:3A:2F:E9:87:B8:0C:74:35:3B:B6:4A:6C:F4:1B:26:66:BA:27:EF:97:87:B1:E2:A3:BA:45:25:86:97', 'com.fekraplatform.stores', NULL, NULL, '2024-12-06 11:17:01', '2025-02-23 09:59:42'),
(3, 'delivery', '85:9D:B5:3A:2F:E9:87:B8:0C:74:35:3B:B6:4A:6C:F4:1B:26:66:BA:27:EF:97:87:B1:E2:A3:BA:45:25:86:97', 'com.fekraplatform.delivery', NULL, '0', '2025-01-12 14:28:55', '0000-00-00 00:00:00'),
(5, 'root admin', '85:9D:B5:3A:2F:E9:87:B8:0C:74:35:3B:B6:4A:6C:F4:1B:26:66:BA:27:EF:97:87:B1:E2:A3:BA:45:25:77:88', 'com.rootadmin.site', NULL, '$2y$10$8NooFjzO2NRk9K0q8w8ZCOjrcWRXr0M1sUlNHPqGbBLPJK8u8tYGu', '2025-04-24 11:43:51', '2025-04-24 11:43:51'),
(101, 'owaistelecom', '11:AA:07:80:6F:35:8B:F1:03:44:F9:5F:4F:89:02:5E:F2:9B:4C:65:AE:9F:88:B6:42:AE:64:84:C8:A6:3C:0C', 'com.owaistelecom.telecom', '{\"encrypted\":\"0447077787699d52bf58c0ea5467ff8dce996ba6a74f56e9ee28679447301b2a0b69826f19dfc36987c79a3bdf8cd1121948aa0d6e643275f1972e93369d9c54a0f3293ea841a3572f1a65a0f56dcfe63ff6fb326bfe3c5d9cf25988e9ccb69a5cd8444a83cb97efacbd73ffb7a9ed6fec567217c78e7b25f88b6f9a4e363b240419c5501aca1790bbd03d351792f33f58f340badc10955884b6912b8d8ef17831d3217e878a4366db8f0d1cd00d693ad807d79d42fea73c348c59b6fd259748509e07b40772d36bc7070d4cfbf2f63ae27ef714da3e1c80dd5d715e07bcf0ce4b6ea0a4f926299c392f70674da0c7e10202559cc4a39a0f2a10457f5c06728d942cd7bcf205b8855b5fda27abd51402ec3be265ca6f2a0a25fa4ea982b31ecd3ca18ee381ee8077609a3808957708141ab65be85b4e69ca3e6197d6328447020fc98e0695eb055734dcf68b6983d80100762a408989e0d75aa71a713843843ba31069302a5f244b751b319a3c32fd564997deaece7d2ac091eccf0b2b714ffee2a5fe72c5f0fcda054fe6d7d777f9606b012547294f76fe33385cde98098b3cfa39f6a499ee811ac864a0995d6d9a6195be36e095b962f33fdd923a63978cae352508388b4ab195b70342b521b8af64ecb2571a2396b5c4da0e85436be7b10249fed13a4551343ec0886a828f69a72af522c9b1762fdffe9e07ea32de6f0f6cf484968fa671280aba9eb27e01e4d0ecc015e72fcae305177b6b265318407f52395e101f537fffb26ea07475fce10c2223d8563f371a90e43c19266e2b1fd1b365208937dad3e29d71b5c85ff0a2b555d178c7638b493443cccdfc88a5e3d6b5bf1158edb4cb3cc190b98e1825b924a12cf1d075823542c1ef9661cb02ee41e432da2b16800a698e9dd68bb3abcad23edc347a4969da67fd5f60e6b720daff9f707e695191045ea434827eff824fd63fd30e0df51d402760a1e36101dd26371536894fc03be5b75fe948ebd5513beeefbd464a300bb9273f29afa88c02e5bddbfa01cc63c64763406bb6fb7077e8dadd344671a439fe30438260b5f6ab195b557ca89b9c917e4a9a3077ceb66c0cc98ef22ec3c833c4d8abc1603bc83ba3f0ffe74590076dab86f5068fac58c9a1acefa1664542140a8318799257fbf9a6ab9df377b77c8aa5dd99a7a071c8a34e231c29894996435decd275761287ebe704e4cecc2afa04ed7c2c798c22c34f164e80373964af0554de558a65232e2d5a5a7c1b1432432b0d40f222f873d6ed66b5b4c55c96b7c58ac8f78edfe6e09cefcc4c34a932657870ac9af0266ec14b9349a0bd5ff7bea112f5392487900e3b7f5a54dcda850e47a9a708390a0ce8050c6b408d8b28e6c7b14e4da52f660fb914b91f10e8e6a75b574ce59bec8d27dab91b9163da04e06a175ab2f953f525642d7e28483d5396cc413f8993f6d4a98dbb6d2bddce0aec5507489165f469de9aaae02f8ea09ace18a6835961ebebc253532b1fdfcd61f7743da2f195a9c319bbca6b87616409ccd3c34adbfae13ee5c51ee35d0072eb493151d3390d5376c2b9ef41d3e972cf2e139c3aa507a2064950c8328c76a4f5d3104d1050563e62e81653143c90d5d90435a1545fd8205a6a231b01b662feab159af4890ce7b8cd4ba259bd8d6ffb561719e43e32984e38a1d4f3539001b2f9e7bbf7385efb18a57a35ae3577b07d6c063d04925c2ad87d888735f79ff82d521731a7586ac5e755b6070f7b42b1f75568b838214ea826b35a81220a9dc625065ca386d560953dfeaeb1d965bf1983f5dbf64405179a246310a486e298ea5ea07ca78754882174fcbf795dd153b08be9bcbe80ed4b9579f3f721fa478a4b86ce85fed25f5c70eead8921f6da057b26e06a878d430b2ccfc96361309efb30a165e3dffaf7acc2fed63cb7beae6d41f92f70d6bfc400aea9a90681693d0ea1b5593d3d3bcc0eeee7614243ab22a1810cc6eabf50ab9272738528fba732616a3d7c12d29e7351d450942408fff96e445ad240aeefe1434939600aec8e832b1f3f6b14098e3eb8c1151a62b64b52e0a793c392f0fb08747ac885ec7ddd2bfbccd25faaaa165472cb3a056683aca3a4506d737f40588d20cf22ec1d60853ffc38369f4b3c995be23c88f7d88fa60d75fdbb3f089f5a9beed68dd86cb457bf68e05e253b8f024643ab1fbea45d0e2f946ab5a79438b780d1c4443ce80f0dedc3db3afe180f20e16b3b65900bfab36f5520d2b97f2d66159c280ed67762e763b402ac10a47218c97ee8773b824794ad5ae0c78ae424fec2b513b297a4e87a00fcfc4ca20da60fab94ed3e4f1c8575fcb6e4664393ede59b428623e4579ee25f4858d4bf7812b1d91e3d0d1a135f21aea7e3535a874622288930ebb4930399ffe77a5e0a04dde1dcdd5369a89be6ad2733719d7680140b09b0ee7959f3a91652bb8a2f4e83ad6c748b8690ea2465444e541352e37da65fb98c9652aceb10b961faa1f80a4a5ddf05b029005b3efc1462343d03a9451b1ea52b2de8bbfb2a0870c99e17692396e73bffcf15f2ddc9ff41a8ceded28b9a8273fe74f7ae5f8fa1d8f901b8423ecc31b76904b8b35ebe0abf743bca2baac62ec54d894f0b9f18de429e445b64b104f0bf51071510adfbfe6549182e13dae6a4effeba24963861800289143f05649acd36d50f0a1ccbe93646f96404b5f8d80ff23d614cf04f8898c749def6c4956da1d80f04d4fd678b96735fcc0dc1c8c4cbe9470355c1af4b901ba2c3a155a40f69e3611bf474fdd74b6201fef737ac75716efe515d2833e201bbf8be99d84b93a1292fcd9ba99e6a97011fded7e490ccdf927279a10968d91b33b9172ff44d547ef5be0e277996c420fabd2116223e0878b14ede56ea6ebeab8bd56d3536e18530cf82a9f6c41650e6c7407fdf65b58b9f89954d0fc4c1162429743e28f50dfd6d434ac7182dc42f7fc4f784bb6e567bb80e2f4b193a421428d84b071ce287e2b7e97cb589281cf9716da6f5621061baa34390b6d5753401e6fe2d0d4bba00bf874e3a17dc976f01924e1fc8f14b7df8cbb86c26e61d42ba7795d82e6960cf141f078054226156578c45048b5e04e408774d8807530af03a2eb81aa7d8b28aa1ca617aa5e06f4259dbf24109c2567d43316e14ddc7e4aefdf9b3f3a0e353d4c8a2c81b36651785f79907415b0d0973b5c0ee228a736fdc47fde56a1ecf23e74a1227b4c003518189705390962547903ce1d0138270f8ad1140e4f42213b630c2791acb33c96b56be215111a9de3bdf5b5774296309b2c887fcf6986604fb5e35aa44752cdd5ffc2e20abed9719eb0061e75f0dbf2eb606eafe8469\",\"iv\":\"d945526387e18d7fe1476436345c16be\",\"salt\":\"87921e96f8ee1750e1679be1c4b8c483\"}', '$2y$10$X6eO4J7bB2usSTOBzOT03OmL7m1o7p07Upyhk/Di8R0X9tck1QbQS\n', '2025-01-01 08:42:28', '2025-02-23 17:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `appStores`
--

CREATE TABLE `appStores` (
  `id` int(11) NOT NULL,
  `appId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appStores`
--

INSERT INTO `appStores` (`id`, `appId`, `storeId`, `createdAt`) VALUES
(1, 101, 10, '2025-01-01 09:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `storeId` int(11) NOT NULL,
  `acceptedStatus` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `storeId`, `acceptedStatus`, `createdAt`, `updatedAt`) VALUES
(1, 'مواد غذائية', 'image', 1, 1, '2024-11-28 09:15:20', '2024-11-28 09:15:20'),
(2, 'مطعم', NULL, 1, 1, '2024-12-07 18:37:45', '2024-12-07 18:37:45'),
(3, 'حلويات', NULL, 1, 1, '2024-12-07 18:37:55', '2024-12-07 18:37:55'),
(4, 'العاب', NULL, 1, 1, '2024-12-14 16:26:49', '2024-12-14 16:26:49'),
(5, 'أدوات منزلية', NULL, 1, 1, '2024-12-14 21:15:53', '2024-12-14 21:15:53'),
(8, 'الهواتف الذكية', NULL, 10, 1, '2025-01-01 21:02:50', '2025-01-01 21:02:50'),
(9, 'الاكسسوارات', NULL, 10, 1, '2025-01-01 21:03:01', '2025-01-01 21:03:01'),
(10, 'المقبلات', NULL, 8, 1, '2025-01-25 16:52:43', '2025-01-25 16:52:43'),
(11, 'البيتزا', NULL, 8, 1, '2025-01-25 16:53:09', '2025-01-25 16:53:09'),
(12, 'البرجر', NULL, 8, 1, '2025-01-25 16:53:30', '2025-01-25 16:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `remoteConfigVersion` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `remoteConfigVersion`, `createdAt`, `updatedAt`) VALUES
(1, 2, '2025-04-25 11:54:08', '2025-04-25 11:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `region` varchar(10) NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`name`)),
  `nameEn` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `region`, `name`, `nameEn`, `image`, `createdAt`, `updatedAt`) VALUES
(1, '967', 'YE', '{\"en\":\"Yemen\",\"ar\":\"اليمن\"}', 'Yemen', 'https://yemen-apps.s3.ap-southeast-2.amazonaws.com/countries/Yemen.jpg', '2025-02-11 09:05:22', '2025-02-11 09:05:22');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sign` varchar(10) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `createdAt`, `updatedAt`) VALUES
(1, 'ريال يمني', 'ر.ي', '2025-01-08 10:13:12', '2025-01-08 10:13:12'),
(2, 'ريال سعودي', 'ر.س', '2025-01-08 10:13:12', '2025-01-08 10:13:12'),
(3, 'دولار امريكي', '$', '2025-01-08 10:13:12', '2025-01-08 10:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `customPrices`
--

CREATE TABLE `customPrices` (
  `id` int(11) NOT NULL,
  `storeProductId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customPrices`
--

INSERT INTO `customPrices` (`id`, `storeProductId`, `storeId`, `price`, `createdAt`, `updatedAt`) VALUES
(1, 80, 10, 25800.000, '2025-01-28 18:15:31', '2025-01-28 18:15:31'),
(2, 72, 2, 101.000, '2025-01-28 23:22:07', '2025-01-29 17:52:55'),
(3, 76, 2, 650.000, '2025-01-29 13:24:58', '2025-01-29 13:25:23'),
(4, 38, 17, 350.000, '2025-01-31 20:13:52', '2025-01-31 20:13:52'),
(5, 77, 60, 800.000, '2025-03-09 18:18:15', '2025-03-09 18:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryMen`
--

CREATE TABLE `deliveryMen` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveryMen`
--

INSERT INTO `deliveryMen` (`id`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 1, '2025-01-12 21:16:09', '2025-01-12 21:16:09'),
(2, 2, '2025-01-13 18:40:15', '2025-01-13 18:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `deviceId` varchar(255) NOT NULL,
  `model` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `deviceId`, `model`, `createdAt`, `version`) VALUES
(1, '123456', '920', '2024-12-03 18:22:39', '7.0'),
(2, '203c7fd5f131753a', 'SM-G960U', '2024-12-04 12:15:53', '10'),
(3, '3fa09d298e9961b3', 'SM-N920P', '2024-12-04 18:37:52', '7.0'),
(4, '1c9a938006441ddb', 'SM-G960U', '2025-01-11 09:16:06', '10'),
(5, '3aa44213a3fe1e58', 'Pixel 5', '2025-01-11 11:44:32', '11'),
(6, 'fe6fede5c1a82a3c', 'SM-S926U1', '2025-01-11 22:21:33', '14'),
(7, 'be0063d3132a61e6', 'SM-G960U', '2025-02-14 14:41:25', '10'),
(8, '58fd4f5bb3194064', 'SM-G960U1', '2025-04-24 12:17:49', '10'),
(9, 'd1464d7c-ea65-4b4b-888c-b72e40e6b467', 'Windows PC', '2025-04-24 17:19:44', 'Windows NT 10.0; Win64; x64'),
(10, '24f20a22cf2aeaaa', 'SM-S926U', '2025-05-09 01:58:22', '15'),
(11, 'c0f55069aa0b6fa5', 'SM-A156U1', '2025-05-11 23:21:40', '14');

-- --------------------------------------------------------

--
-- Table structure for table `devicesSessions`
--

CREATE TABLE `devicesSessions` (
  `id` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `appId` int(11) NOT NULL,
  `appToken` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devicesSessions`
--

INSERT INTO `devicesSessions` (`id`, `deviceId`, `appId`, `appToken`, `createdAt`, `updatedAt`) VALUES
(4, 2, 1, 'ffQSp6dxTXuVslFLUSSNss:APA91bFv-8IaDyDRuYVp6c5TGGgGRz14gDf3H9cuARGru1THvWpgg5EVHnKwx_jl5GH0WWG0ROYRg9r6S-hEMfkl5ZLdRNYF_2b2nX2IAhrWovHVp0vgyGs', '2025-05-16 14:04:11', '2024-12-04 14:02:31'),
(5, 3, 1, 'cW03CRwpSIWIQkjl4EbqlC:APA91bHLlu3bXQ5m3Go7kZGXeK2UGQXp8XSw20Ypih_Xw6AJeOue65X8rHOb4g_ueiaenFgBbC4UqbbGQqSYEBdWkrYgNDMr_NFprRQENtrujZOkMBhlNpQ', '2025-03-06 16:40:59', '2024-12-04 18:37:52'),
(6, 2, 2, 'evyweVZfTNK1jHhh51EwDA:APA91bGkYyus9wl0jK-o2zwTQkGNc6OB9uN1mxDA4WW3gO53dQRs-r5rQdgiRSK2JuhyuoNHmOQEIb04q3hbIaA0Wq0LkmgTeWY-MEaV5Ox5jHIkHJjFe5Q', '2025-05-03 00:24:15', '2024-12-06 14:21:07'),
(7, 2, 101, 'dVaLd3CST1-SaTxb762x17:APA91bGVcQI6t0sAHvBX2WJ95r9nYRwINPFk0Ransv0107B2JuvPanVumWZkB4JazSkRD5ZQhcy-r7TmjpGa-xecPnttOWs-wGqM-6X_bmDBFgIDRo6nbyg', '2025-05-15 00:10:19', '2025-01-01 17:04:33'),
(8, 4, 101, 'cbBn_A7LQu-5PRkVB414mz:APA91bHSiF7W1WAKPUCBn3yNW_kQN5Eq4DJ5s_62ZkeuuKi0UqOLyikTFwvDoxafO_p6NWrbX7dZzA2xMYFRvOEKsM7XfFC20NOEvshVH_Oc-y9nSV3Dl-4', '2025-05-13 00:16:47', '2025-01-11 09:16:06'),
(9, 5, 101, 'fwVnIzGOSCyPKTNdOeVLYW:APA91bFVM0u67B9bALLX0gcuKtvSWyg0DbnRrT9rI4vMbKI4bLCfjtwWG9suiwOfF9T0j4TYCAZIoiir9968reDGV-V0jAEp9j8OKqLErpawrk3vD3iNHFY', '2025-01-11 11:44:32', '2025-01-11 11:44:32'),
(10, 6, 101, 'et2jA5tzQl-JKwpuULJ00d:APA91bGXGZkgkuWCMNePuBR2mfSNdLHBSmTAQFmghWzeOH1pu_Ml-Dfb1qJkh-NEFMDhcNTkSEUPMcruSO08yeBAzONzssMQGrcEjc4MHb8Ni_wafsBu1tc', '2025-01-11 22:21:33', '2025-01-11 22:21:33'),
(11, 2, 3, 'f5IuK0_9So6dFo5Jr74pp8:APA91bHaqaNm-gzH2ALwgZSl9EBqY3VvSXs7OYjAGhK1eHsQaR2VlmjQL2BLpk9f-ELyTYpz9uGgGb2wjXXRyCfNII8Y4U6u0uWGrEAtAqp3Zn45Teb2ka4', '2025-01-12 21:22:53', '2025-01-12 18:20:48'),
(12, 3, 101, 'f03t5656RGyE_ltTOWymzm:APA91bEQjfswRyZ2Cz-SlbL7Ibx5OLwqQiUjohr3Spa9awG9yLUwOwBAAVV6hxbdyQGoVBcPqzH7WSLeJ2jQmL2c31vhKfd8x8psN_iJ_3_70_8NkujC62Q', '2025-05-09 00:21:52', '2025-01-17 23:15:15'),
(13, 7, 1, 'cPOm6HgAT02x5-uIsVAE4j:APA91bHHCUTX7J4_BzMMtfriOX__-RKPktau-24o1exREwy4Y56WNUMYFeFSqqF4hocup0a4k4-Q4i9XLKMqsD3zyGcpYN0SFWFa7-_xUSUFIM66Jce_D18', '2025-03-06 23:45:01', '2025-02-14 14:41:25'),
(14, 3, 2, 'fdNAEmCWSo2_CaAlQTex27:APA91bF5KDnAI4MR4YRSw9m-B3u-sxqM3UVYpHYzZR5tbWGtpcwlCjSsdZdzbgMcFxpoJ0qnEsHi2YGeXfbh4L5fg_q2Pti2JXobLhP14t3f6Y5eDnYDnbo', '2025-04-23 22:50:52', '2025-04-23 22:50:52'),
(15, 8, 2, 'flF5A_vgTDSUI_-N1QZS0g:APA91bEug75evtMXyBI2yCFTkZ85r5QiC9aWvMbefAAKk5AbuYArZTlI1nmsHppL4tv7zWaiSVd9f6l79qKxHzN9tTnjTuuJocvQPc1epl_SPVHSZFWV56k', '2025-04-24 12:17:49', '2025-04-24 12:17:49'),
(16, 9, 5, 'No', '2025-04-24 17:22:10', '2025-04-24 17:22:10'),
(17, 10, 101, 'e6eppxwQRSeTbonkg-Eh2l:APA91bFImhDpY6zKowQYiHgV8wIzgU9f4z6p3OIbFLB7oXzrqa52V3YrEs5zgWjxpEpYOTvF1LFeJA4P8U4lxXIFcdXoMsjUP5M2rhAvp3Sq54gofvqy_sQ', '2025-05-11 23:12:10', '2025-05-09 01:58:22'),
(18, 11, 101, 'fQeaHhA9SZaqDwDp4_72dd:APA91bEbgpUz6vnTTF350nE8VMbKrUOrkUQIvC5Jd1IyxLeN7mFFMA38jIGsKw2F7oOCFaJRcFT7WyHtRaPtPB0XKm-2-81XweVEwJs-y2MS0gw80V1FzoY', '2025-05-11 23:21:40', '2025-05-11 23:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `devicesSessionsIps`
--

CREATE TABLE `devicesSessionsIps` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `deviceSessionId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failProcesses`
--

CREATE TABLE `failProcesses` (
  `id` int(11) NOT NULL,
  `myProcessId` int(11) NOT NULL,
  `deviceId` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failProcesses`
--

INSERT INTO `failProcesses` (`id`, `myProcessId`, `deviceId`, `userId`, `createdAt`) VALUES
(29, 1, '2', NULL, '2025-02-01 21:00:41'),
(30, 1, '2', NULL, '2025-02-01 21:46:24'),
(31, 1, '2', NULL, '2025-02-02 08:24:18'),
(32, 1, '2', NULL, '2025-02-02 08:24:26'),
(33, 1, '2', NULL, '2025-02-04 09:50:33'),
(34, 1, '2', NULL, '2025-02-04 09:50:43'),
(35, 1, '2', NULL, '2025-02-04 09:50:48'),
(36, 1, '2', NULL, '2025-02-04 09:50:51'),
(37, 1, '2', NULL, '2025-02-04 09:50:54'),
(38, 1, '2', NULL, '2025-02-04 21:34:41'),
(39, 1, '2', NULL, '2025-02-05 18:07:38'),
(40, 1, '2', NULL, '2025-02-05 18:07:43'),
(41, 1, '2', NULL, '2025-02-05 18:07:47'),
(42, 1, '2', NULL, '2025-02-05 18:07:50'),
(43, 1, '2', NULL, '2025-02-05 18:07:54'),
(44, 1, '2', NULL, '2025-02-05 18:13:09'),
(45, 1, '2', NULL, '2025-02-05 18:13:13'),
(46, 1, '2', NULL, '2025-02-05 18:13:19'),
(47, 1, '2', NULL, '2025-02-05 18:13:25'),
(48, 1, '2', NULL, '2025-02-10 12:04:01'),
(49, 1, '2', NULL, '2025-02-11 09:27:14'),
(50, 1, '2', NULL, '2025-02-11 09:31:37'),
(51, 1, '2', NULL, '2025-02-11 09:38:23'),
(52, 1, '2', NULL, '2025-02-11 09:39:48'),
(53, 1, '2', NULL, '2025-02-11 09:40:32'),
(54, 1, '2', NULL, '2025-02-11 09:43:31'),
(55, 1, '2', NULL, '2025-02-11 09:43:49'),
(56, 1, '2', NULL, '2025-02-11 09:44:17'),
(57, 1, '2', NULL, '2025-02-11 10:17:01'),
(58, 1, '2', NULL, '2025-02-11 10:18:24'),
(59, 1, '2', NULL, '2025-02-11 10:18:49'),
(60, 1, '2', NULL, '2025-02-11 10:21:21'),
(61, 1, '2', NULL, '2025-02-11 10:22:40'),
(62, 1, '2', NULL, '2025-02-11 18:56:48'),
(63, 1, '2', NULL, '2025-02-11 18:57:44'),
(64, 1, '2', NULL, '2025-02-11 18:57:54'),
(65, 1, '2', NULL, '2025-02-25 17:30:17'),
(66, 1, '2', NULL, '2025-02-28 09:35:10'),
(67, 1, '2', NULL, '2025-03-06 02:51:48'),
(68, 1, '3', NULL, '2025-03-06 16:05:03'),
(69, 1, '9', NULL, '2025-04-24 17:22:10'),
(70, 1, '9', NULL, '2025-04-24 19:03:54'),
(71, 1, '2', NULL, '2025-05-02 20:29:04'),
(72, 1, '2', NULL, '2025-05-02 20:33:41'),
(73, 1, '2', NULL, '2025-05-02 20:34:30'),
(74, 1, '2', NULL, '2025-05-09 00:28:09'),
(75, 1, '2', NULL, '2025-05-09 00:28:31'),
(76, 1, '10', NULL, '2025-05-09 01:58:22'),
(77, 1, '10', NULL, '2025-05-09 01:58:24'),
(78, 1, '10', NULL, '2025-05-09 01:58:33'),
(79, 1, '2', NULL, '2025-05-09 22:01:34'),
(80, 1, '11', NULL, '2025-05-11 23:21:40'),
(81, 1, '2', NULL, '2025-05-14 22:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `googleOrders`
--

CREATE TABLE `googleOrders` (
  `id` int(11) NOT NULL,
  `data` text NOT NULL,
  `createdAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `googlePurchases`
--

CREATE TABLE `googlePurchases` (
  `id` int(11) NOT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `purchaseToken` varchar(255) NOT NULL,
  `productId` varchar(50) NOT NULL,
  `isPending` tinyint(1) NOT NULL,
  `isAck` tinyint(1) NOT NULL,
  `isCounsumed` tinyint(1) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `isSubs` tinyint(1) NOT NULL,
  `isGet` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `googlePurchases`
--

INSERT INTO `googlePurchases` (`id`, `orderId`, `purchaseToken`, `productId`, `isPending`, `isAck`, `isCounsumed`, `storeId`, `userId`, `isSubs`, `isGet`, `createdAt`, `updatedAt`) VALUES
(1, '', 'ichbpmdhlkkmhkncbakcdjmb.AO-J1Ox0k0mBEmfpoSXTN28GxYmpG0oegbOY5Vjrx7_baru7xbgubIixVT_Lb3mHaYVgRswL7a4aCZARcOlNmQ_PBiYcRMlX3uv_pQsMaMVIaUktK0A_dxw', 'point5', 0, 0, 0, 10, 0, 0, 1, '2025-02-18 01:24:48', '2025-02-18 01:24:48'),
(2, '', 'necfimfooaknjighladencbb.AO-J1OzZvojb3Nkn5rtKrZRnKIP_JFuCH9ZjpApWu22SGk4uHmOrMxDNgOZqswkWIu4gMNsNBoTEsj-DOOhWoCyigWIrTAulRLrp7yQi5BefoO15MrYTx7s', 'point5', 0, 0, 0, 10, 0, 0, 1, '2025-02-18 01:40:14', '2025-02-18 01:40:14'),
(3, '', 'nbebpndggjolkikjodgmeolb.AO-J1OxEFUlljNnac-KODLZfqOlkugBmgGfx4eXbX6eZWUqwUyvSjLWVYsrUM_PaEQ8ZKr0KCR5qvqpUzpCL2YrDP77cKsqZT68E-xF4TqT7TOtFmOqw_4Q', 'point1', 0, 0, 0, 10, 0, 0, 1, '2025-02-18 07:53:26', '2025-02-18 07:53:26'),
(4, '', 'pmmbilncijdponobonajaidj.AO-J1OyhivQ5dsFly9rwIbOGp5xZSpl_pbmKTZ4Zzt1rd1cuC64qa_8z1Q_kbhzLVj03XB_sdoqMtuq762EJ_koENB0alZrOXFRZV740YlH6dFE4ZVVt_T8', 'point1', 0, 0, 0, 10, 0, 0, 1, '2025-02-18 08:07:39', '2025-02-18 08:07:39'),
(5, '', 'ejlicfgkpfmcimkggfkkophf.AO-J1OxOtHjWhlNipNUMNONKw3snyIdkrRfEqs6aXSpmYgxLytJW35sDRvPlNbiHEySQIFTwleC1LxuULcpqpwF8d9vw9KJdrjEVV8CRXSJyLUzgr8kJqWQ', 'point1', 0, 0, 0, 10, 0, 0, 1, '2025-02-18 08:15:02', '2025-02-18 08:15:02'),
(6, '', 'bincnjanacpkeljikeidamhj.AO-J1Ozo1Otiojb9ARW4rN4ciDYkYQb4G3_GMj-pr1zS11iNW_zjvISkdggGBD4k3XY4rIVMzl7eSP7D57yTCfj9iADCljRUOCcMDZBaOvIgQuOcoMb0TUs', 'point1', 0, 0, 0, 10, 0, 0, 1, '2025-02-18 08:20:24', '2025-02-18 08:20:24'),
(8, '', 'adijkdbbojbdgddpohnmklfp.AO-J1OzwBxWB1NNqXGBINkFfVWOKUTN8GlcjKHLGJoYWJd83XOn3_o4OBcWquOQumuXRUywB8RAmuAhjEuChaxLeKbsE8KtAv66SnWpnz-EpxLmzY5ulqzU', 'point1', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 08:26:24', '2025-02-18 08:29:28'),
(9, '', 'olbpbgalnlblepkcihajbdfn.AO-J1Owt6324rZaP8E1FGILhxrEsqY3gN_KQs8p00Cd0B_M0WIzinjEQjms5-29khGvg07lYsqY0ks3R4YAEEcg7ujKMxr37nPVlpBcna7mz0wawMTumqy0', 'point1', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 08:31:04', '2025-02-18 08:31:05'),
(10, '', 'phnccafigbhpjpdapkdpfmdn.AO-J1Ox8XRbfOCadynLfffioGj8K6psWpKg-6wJAoHC-IKu_dLHCKjvIsDx3dPJS8zxO_rS1R6Oe_EoMZFnKIsnxUX4HOmDxdkqIF0d_h4hdGu9aruWjChE', 'point1', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 08:41:05', '2025-02-18 08:42:05'),
(11, '', 'fjdogdpldbgkdifbocgjekgl.AO-J1OzbpA09PvdkhAZQbQVnQn5DH8om3SsIGjThNMX3i6i-fvqxNg1iXjvVichmb4TNs7fN-rz3PLG5bUBmFKcevSk73f1Ac-wCF0sfBnExyviHQk_PKy0', 'point2', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 08:43:53', '2025-02-18 08:44:53'),
(12, '', 'aejhpninhbajpebeebjkoone.AO-J1Oz4Uhg1y4pIQ1qsD5tfr_S04Y-fXdjgjRyqcrMZW5klKoauA9iSaSKBroZv2QMroBMcJizvNXiRdgRefiXBss4Qd__pdESboxyoKV5yPUuzITeDkDU', 'point1', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 08:45:39', '2025-02-18 08:46:38'),
(13, '', 'jcoajjgghepbnekiiebmlclc.AO-J1Oyl66gqH_oh5G7NXucjU1K0nIHW9krFPpWBFZt4eMgmQC4EY3KqRx-GexvLYo5Bjl_Z5TvWllV1RdWcLrJFYFwMKF7_IETyRIpTakNCfrZy5BKHAPo', 'point1', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 08:48:36', '2025-02-18 08:54:28'),
(14, '', 'apmcpnnfkjjpmniihoedoclk.AO-J1Ow2RMXupBiu9S9T1gNSdQaMDgsxz6OHFNEqwp6qeF2cXE03d4Q6xzxpdB5V1VQcRuHHuQtLKqkQ3oUr0_Iyp8LuhOnQlwQe8PqXvwq6P7aKc5NI-ao', 'point1', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 08:55:07', '2025-02-18 08:56:08'),
(15, '', 'maenggcbemmdmefkjganimcf.AO-J1OwkMUyLbWIXruabwD2cRwuAJ0k20xXwxqP9YjVSMT9FLfwndRAtHe3mkXyZFTUrJg4Pk-fIXQGfG-hc_c6JWjycNb29BGQ18hQBx-Xb-0w6bCL0D64', 'point1', 1, 0, 0, 10, 0, 0, 1, '2025-02-18 08:57:00', '2025-02-18 19:16:32'),
(16, '', 'bddoloegphpbohknmppianll.AO-J1Ozua-4x62CK4bfAkcUH90cYlqKJZktoRY5UzKrgx1CB2vVTDtO843IrwF_awjMChXjqVvUiSReGs-P6bsQvdLPhnZgGG8ZELXcVzqSkSxW_wc3j4KM', 'point5', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 09:03:28', '2025-02-18 09:03:29'),
(17, '', 'ohekbmdmpcfmjaeddjfomdle.AO-J1OygSBRtpZW1gqlWpLf5VO4n7dAW1ddlS7iv5CW76Eg46ndZfp4QX2ucgflEaWpTldWnLwD989kmjyFUQq8uFZW46hoFRirMW9XZxO7N5R5lMciYwWk', 'point1', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 09:24:37', '2025-02-18 09:24:38'),
(18, '', 'jnkbomlagbcgbdlmajojmjon.AO-J1Ox3AVPW98kespRT5xy66XNO9jKcc-SrWmgZEjt-o2IFXYYYbjdDQJNWjUuFnuDlq8oTvfWe_GG1HesvzxOZmezzIG2QE4Ge-MOYw1e0ROzBRnpj_bw', 'point1', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 14:37:06', '2025-02-18 14:37:07'),
(19, '', 'glblnogjdlfkckjcfobdhhoa.AO-J1OwstT10iWDmNZNw28-F-1yIWeOdgW-hjSrERu9hLbKBHDl2grPNdAvu_QdmBxuEd2COTcbCZTBq_sYaQYD61vBy4Et2X1FqmflVYKOwvM0kokIkntw', 'point5', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 17:41:48', '2025-02-18 17:41:50'),
(20, NULL, 'fjocliblolalmganeodokbmb.AO-J1OzdOTuQiwF1nThQrB3ixUcggrCazsrqjWEdJUAtsCWb2XLFchHHyi4p3QxJgizMG8txV3BY2UpLvO5BLuIQeAeA-qUx-swUL4khcwpfaB3SCw_KGxM', 'point1', 0, 1, 1, 10, 0, 1, 1, '2025-02-18 21:09:13', '2025-02-18 21:09:15'),
(21, 'GPA.3375-8724-1329-49215', 'ljhflcjjhepkgfemojgldkhn.AO-J1OwFgTPOK-VtD2pWNkPyHDg6gqx2ocmBLYGg_Hf_GYiCKwHatDkQ3Bm-lKQyYd_pDJL3YJnbhOwNl7XN9AA6_NH8LvX0nptL0QK3PSGMJd1YhCj_N3Q', 'point2', 0, 1, 1, 10, 0, 1, 1, '2025-02-18 21:10:33', '2025-02-18 21:10:35'),
(22, 'GPA.3374-0622-8280-07520', 'bkdkdkfmkgodcmdfocohehgj.AO-J1OwDxJ9R0w04P5gdKNciz3_oLG48mJoGTiXLOOZNrXl3V63RLnOHhSKU8GNr_m7esqvzPNH_hksSq3zWUDoHbYRl6ZaW1Q7ZsybHVdfx4F7sky1UGpo', 'point001', 0, 1, 1, 10, 0, 0, 1, '2025-02-18 21:14:24', '2025-02-18 21:14:25'),
(23, 'GPA.3367-8210-0636-11637', 'gaedkiojcdcieideibpiiblb.AO-J1OxQ8D02QqsH5xxX-maXpn_a4_ZR1TgVNmcUmCyrJ76-BBud4V-7nNUqQTPeAlUYO_gv8_p-ynViPcf7lWqeZYvQ8RJzPi7XZOsKjfuIKcqnUot__5w', 'point1', 0, 1, 1, 10, 0, 1, 1, '2025-02-18 21:32:03', '2025-02-18 21:32:05'),
(24, 'GPA.3359-8824-7632-77740', 'mjkneaocjbmchaioogbjgfog.AO-J1OxgHZO7QH7yRWTSZskZz_ApCeVJzvYgHnFz2S_LNYH1Ff3VPtwSanyekMs3GQoSsDlXx1ceDpXhD_VQA_04NCRRi9o6PeLS9l9E-ZilOUMHvqvRIeM', 'point001', 0, 1, 1, 10, 0, 0, 1, '2025-02-19 08:14:06', '2025-02-19 08:14:07'),
(25, 'GPA.3344-1826-9112-88488', 'kgdfbdmcgnppmghiihcjmblm.AO-J1OyYNWhKhQZdoL9AG7wLwxcy50pdA6R5BqigBPkptHm3TAMoNptjlHO3e1sDypJfEn1z8wDySiOI_cWqu_D3KpZW8KcZI6eKe-MQvCsg3n0BGzegXrg', 'point1', 0, 1, 1, 10, 0, 1, 1, '2025-02-19 09:14:49', '2025-02-19 09:17:17'),
(26, 'GPA.3372-0076-6844-94869', 'dheiihhhbafilfflcnoegkjp.AO-J1Ow4xxXH0wFxxgK8GxeKbqz7teS4siFPs5LozaKCUg2_16TbWOzXe-YTg0IYvSuxRtlGkZD5ZpyPBwOiqSTFOCmE6n-lGvRrU2sXxZqxrrU16bg22Z4', 'point001', 0, 1, 1, 10, 0, 0, 1, '2025-02-19 11:01:24', '2025-02-19 11:01:26'),
(27, 'GPA.3300-4206-5177-29057', 'mjllmilnmfijkdfmeipaklmk.AO-J1OyYGNC5bNXwja9tsnR9KpUEFXOxjjoI7rwJlfyI-HaKwJv6qgS1SJCbDul4xUN41Gwdakwu4CxStYti3TkzeC5QtywQ45egtRpomb5ko0UbkgDIO3k', 'point5', 0, 1, 1, 17, 0, 1, 1, '2025-02-19 13:28:29', '2025-02-19 13:28:30'),
(28, NULL, 'edahgbabjcinkolchakokbfo.AO-J1Oxy47qz4dF7htV-tsBE8Tg-Iwof5U1jIjr1ARgYw72PJqIp1lsjFSO8HLEIvHRnNMrocNgR63pl5MrupekP4S5dB6d3A_aAmv5mVnaUJ67_UbQozzY', 'point1', 0, 1, 1, 17, 0, 1, 1, '2025-02-19 13:30:33', '2025-02-19 13:32:13'),
(29, NULL, 'kgahalfbodkdhpadepedpjgd.AO-J1OzI0FcxhPlS8Y7tOraIcnnegrdZcTuoaZHwbE7ZrEgI9hvHA4KTytyRGjWDfd6JgWvv10vRsjYruog2J88Tn6wQnHwDt7D5Y30Z-WsWpZ2xjF4DZGU', 'point1', 0, 1, 1, 17, 0, 1, 1, '2025-02-19 14:22:07', '2025-02-19 14:25:20'),
(30, NULL, 'mameoddcadilmionekpgonbf.AO-J1Ozfw2fr4EOBGSsh_jADbVa4HSXecW561Lqc6Ue_v_74Po5OZ2ImG3YMIhFYSCEgoZPawR_8LaDIAoxykvJXZDGiiX3zpks93eyBlMhyhUfHzyVt4l4', 'point1', 0, 1, 1, 17, 0, 1, 1, '2025-02-19 14:30:52', '2025-02-19 14:31:35'),
(32, 'GPA.3325-7717-0411-08610', 'apidieobjdjjcghmmgnaniba.AO-J1OxhV_9p3l7dDBjeEBzMHrHqGXvkdZ1_NTDSLoQmPqsGkU5uwglIZZ-FtDOJ_BHb5kDxgsTVeVk5NOJWxx9Pn-NcprmvNXWUvOswEof3FCCpi5_Ixok', 'point1', 0, 1, 1, 17, 0, 1, 1, '2025-02-19 18:44:35', '2025-02-19 18:44:36'),
(33, 'GPA.3397-4754-8788-38564', 'ejjbdiffmcggiljadpheaipd.AO-J1Ox80u1ZNd6uCltKlvEw3ebTgtwpjFxjeu5nF5paTNKtgvuyDemHXmXYIXidBxaHbQOsga7Hc_YoRb3qTvc3--vPjFd9o7uKGYQXfrNIowAoNjRHnC0', 'point001', 0, 1, 1, 17, 0, 0, 1, '2025-02-19 18:47:00', '2025-02-19 18:47:01'),
(34, 'GPA.3393-8492-3267-37957', 'mcndbijchodhlihfmbgfoiop.AO-J1Oymb3ynukikRRWflrjcv7yCmhzQg4vZbdkiar8dYLLJp6D_ZmLgj9PCzWaAqUBBM81-EJW_bO8mlYyJaH9uaFK2wzg9TEMSBTdItqZORU5KJ06pM-U', 'point002', 0, 1, 1, 10, 0, 0, 1, '2025-03-06 16:45:54', '2025-03-06 16:45:55'),
(35, 'GPA.3384-6241-5552-76074', 'nhfkkealceddpkipleopkobc.AO-J1Ox8MZcWV2En1N3IlYMpi7vZpBlQKQqfYmuRivPcenwMIOGc869v8ar9hR__GwVV2MspDGhpIOLpkUIYnEBSYH-oZnHh0GrmN94hYeIFxl61Q4XB2vM', 'point002', 0, 1, 1, 10, 2, 0, 1, '2025-03-06 17:08:38', '2025-03-06 17:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `inAppProducts`
--

CREATE TABLE `inAppProducts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `points` int(11) NOT NULL,
  `isSubs` tinyint(1) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inAppProducts`
--

INSERT INTO `inAppProducts` (`id`, `name`, `price`, `productId`, `points`, `isSubs`, `createdAt`, `updatedAt`) VALUES
(1, '3 اشهر', 5.000, 'point1', 3, 1, '2025-02-13 21:35:28', '2025-02-13 21:35:28'),
(2, '5 اشهر', 10.000, 'point2', 5, 1, '2025-02-14 13:39:54', '2025-02-14 13:39:54'),
(3, '12 شهر', 20.000, 'point5', 12, 1, '2025-02-15 10:01:12', '2025-02-15 10:01:12'),
(4, '100 نقطة', 5.000, 'point001', 100, 0, '2025-02-18 17:20:12', '2025-02-18 17:20:12'),
(5, '10 نقاط', 0.100, 'point002', 10, 0, '2025-03-06 13:14:54', '2025-03-06 13:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `createdAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `createdAt`) VALUES
(1, 'العربية', 'ar', '2025-02-24 18:23:26'),
(2, 'English', 'en', '2025-02-24 18:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `street` varchar(100) NOT NULL,
  `latLng` varchar(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `street`, `latLng`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'شارع حده', '11.415530766700554,23.22734333574772', 1, '2024-12-30 10:05:58', '2024-12-30 10:05:58'),
(2, 'شارع حده', '15.3107818,44.1945955', 2, '2025-01-03 23:50:21', '2025-01-03 23:50:21'),
(3, 'شارع حده', '15.317509018208904,44.202342890203', 2, '2025-01-04 23:30:50', '2025-01-04 23:30:50'),
(4, 'الزبيري', '15.312484496582638,44.19554382562637', 2, '2025-01-04 23:42:02', '2025-01-04 23:42:02'),
(5, 'البليلي', '15.310784513661474,44.19458795338869', 2, '2025-01-05 08:36:52', '2025-01-05 08:36:52'),
(6, 'hfg', '15.3107824,44.194588', 2, '2025-01-07 09:59:09', '2025-01-07 09:59:09'),
(7, 'جميييل جدا جوار البرج العالي', '15.331874383794702,44.1987044736743', 2, '2025-01-08 18:49:38', '2025-01-08 18:49:38'),
(8, 'شارع المدينه', '15.310775,44.1945902', 1, '2025-01-15 00:07:03', '2025-01-15 00:07:03'),
(9, 'شارع حده', '15.334771847571995,44.198636412620544', 17, '2025-03-05 00:04:19', '2025-03-05 00:04:19'),
(10, 'شارع حده', '15.311934113667544,44.19537987560034', 17, '2025-03-05 02:59:51', '2025-03-05 02:59:51'),
(11, 'جوار هرفي', '15.311437086254196,44.19464226812124', 5, '2025-03-05 03:19:10', '2025-03-05 03:19:10'),
(12, 'نايس وييير', '15.309191231988752,44.19435493648052', 5, '2025-03-05 03:33:32', '2025-03-05 03:33:32'),
(13, 'moh', '15.312484819956438,44.195329919457436', 101, '2025-05-11 23:41:19', '2025-05-11 23:41:19'),
(14, 'حددده', '15.313900222247966,44.19614866375923', 101, '2025-05-13 22:20:17', '2025-05-13 22:20:17'),
(15, 'ججججج', '15.311121148241156,44.19455844908953', 101, '2025-05-13 22:21:31', '2025-05-13 22:21:31'),
(16, 'بببب', '15.311122118368845,44.194564148783684', 1, '2025-05-13 22:28:02', '2025-05-13 22:28:02'),
(17, 'هههه', '15.310956226468626,44.19458795338869', 1, '2025-05-13 22:37:24', '2025-05-13 22:37:24'),
(18, 'ههههاي', '15.310526135744555,44.19458996504545', 1, '2025-05-13 22:40:02', '2025-05-13 22:40:02'),
(19, 'ههههايا', '15.310526135744555,44.19458996504545', 1, '2025-05-13 22:40:36', '2025-05-13 22:40:36'),
(20, 'ههههايا', '15.310526135744555,44.19458996504545', 1, '2025-05-13 22:41:28', '2025-05-13 22:41:28'),
(21, 'ههههايا', '15.310526135744555,44.19458996504545', 1, '2025-05-13 22:42:56', '2025-05-13 22:42:56'),
(22, 'تاعة', '15.304995672365884,44.19320225715637', 1, '2025-05-13 22:45:11', '2025-05-13 22:45:11'),
(23, 'حدة\nجوار المطعم', '15.311125028751894,44.19456481933594', 1, '2025-05-13 22:46:14', '2025-05-13 22:46:14'),
(24, 'moj', '15.327631099925506,44.199112839996815', 1, '2025-05-14 22:54:05', '2025-05-14 22:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `mainCategories`
--

CREATE TABLE `mainCategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mainCategories`
--

INSERT INTO `mainCategories` (`id`, `name`, `image`, `createdAt`, `updatedAt`) VALUES
(1, 'المطاعم والمأكولات والمشروبات', 'https://apps77.s3.ap-southeast-1.amazonaws.com/mainCategories/mayami-wynwood-restaurants.jpg', '2025-02-26 18:29:05', '2025-02-26 18:29:05'),
(2, 'الهواتف الذكية وملحقاتها', 'https://yemen-apps.s3.ap-southeast-2.amazonaws.com/mainCategories/Mobile-Phone-Accessories.jpg', '2025-02-26 18:29:05', '2025-02-26 18:29:05'),
(3, 'المواد البلاستيكية', 'https://yemen-apps.s3.ap-southeast-2.amazonaws.com/mainCategories/10-best-plastic-materials-for-pressure-forming-11.jpg', '2025-02-26 18:29:05', '2025-02-26 18:29:05'),
(4, 'المستلزمات المكتبية والمدرسية', 'https://yemen-apps.s3.ap-southeast-2.amazonaws.com/mainCategories/stationary1.jpg', '2025-02-26 18:29:05', '2025-02-26 18:29:05'),
(5, 'الاثاث المنزلي والمكتبي', 'https://yemen-apps.s3.ap-southeast-2.amazonaws.com/mainCategories/1260h-teak-wood-living-room-furniture-1051780.jpg', '2025-02-26 18:29:05', '2025-02-26 18:29:05'),
(6, 'ألعطور والروائح الجميله', 'https://yemen-apps.s3.ap-southeast-2.amazonaws.com/mainCategories/16317780221-2.png', '2025-02-26 18:29:05', '2025-02-26 18:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `myProcesses`
--

CREATE TABLE `myProcesses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `countFail5m` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `myProcesses`
--

INSERT INTO `myProcesses` (`id`, `name`, `countFail5m`, `createdAt`, `updatedAt`) VALUES
(1, 'login', 5, '2025-02-01 16:46:02', '2025-02-01 16:46:02'),
(2, 'addAds', 2, '2025-02-03 21:39:02', '2025-02-03 21:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `nestedSections`
--

CREATE TABLE `nestedSections` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `storeId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `acceptedStatus` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nestedSections`
--

INSERT INTO `nestedSections` (`id`, `name`, `storeId`, `sectionId`, `acceptedStatus`, `createdAt`, `updatedAt`) VALUES
(1, 'جبن مثلث', 1, 1, 1, '2024-12-08 09:23:43', '2024-12-08 09:23:43'),
(2, 'جبن سائل', 1, 1, 1, '2024-12-08 09:23:43', '2024-12-08 09:23:43'),
(3, 'جبن كرافت', 1, 1, 1, '2024-12-08 09:24:01', '2024-12-08 09:24:01'),
(4, 'حليب بودر', 1, 5, 1, '2024-12-08 09:24:39', '2024-12-08 09:24:39'),
(5, 'حليب سائل', 1, 5, 1, '2024-12-08 09:24:39', '2024-12-08 09:24:39'),
(6, 'جبن مالح', 1, 1, 1, '2024-12-08 09:29:03', '2024-12-08 09:29:03'),
(7, 'ماء صحه', 1, 4, 1, '2024-12-08 09:29:58', '2024-12-08 09:29:58'),
(8, 'ماء كوثر', 1, 4, 1, '2024-12-08 09:29:58', '2024-12-08 09:29:58'),
(9, 'تونة معلبة', 1, 8, 1, '2024-12-08 10:40:49', '2024-12-08 10:40:49'),
(10, 'فلافلا', 1, 9, 1, '2024-12-08 17:53:01', '2024-12-08 17:53:01'),
(11, 'شاورما', 1, 9, 1, '2024-12-08 17:53:01', '2024-12-08 17:53:01'),
(12, 'كباب', 1, 9, 1, '2024-12-08 17:53:40', '2024-12-08 17:53:40'),
(13, 'مضغوط', 1, 9, 1, '2024-12-08 17:53:40', '2024-12-08 17:53:40'),
(14, 'الكنافة', 1, 6, 1, '2024-12-08 18:27:28', '2024-12-08 18:27:28'),
(15, 'الكرواسون', 1, 6, 1, '2024-12-08 18:27:28', '2024-12-08 18:27:28'),
(16, 'المعمول', 1, 6, 1, '2024-12-08 18:27:28', '2024-12-08 18:27:28'),
(17, 'الكيك', 1, 7, 1, '2024-12-08 18:32:51', '2024-12-08 18:32:51'),
(18, 'الروتي', 1, 7, 1, '2024-12-08 18:32:51', '2024-12-08 18:32:51'),
(19, 'فطائر', 1, 6, 1, '2024-12-08 18:43:03', '2024-12-08 18:43:03'),
(20, 'جبن تركي', 1, 1, 1, '2024-12-15 16:48:45', '2024-12-15 16:48:45'),
(21, 'جبن سوري', 1, 1, 1, '2024-12-15 16:54:18', '2024-12-15 16:54:18'),
(22, 'جبن محلي', 1, 1, 1, '2024-12-15 17:42:35', '2024-12-15 17:42:35'),
(23, 'جبن خوارزمي', 1, 1, 1, '2024-12-15 17:45:28', '2024-12-15 17:45:28'),
(24, 'علاوي', 1, 1, 1, '2024-12-15 17:46:39', '2024-12-15 17:46:39'),
(25, 'محمدي', 1, 1, 1, '2024-12-15 18:06:48', '2024-12-15 18:06:48'),
(30, 'اجهزة محمولة', 10, 23, 1, '2025-01-01 21:14:47', '2025-01-01 21:14:47'),
(31, 'ايبادات', 10, 23, 1, '2025-01-01 21:14:54', '2025-01-01 21:14:54'),
(32, 'اجهزة محمولة', 10, 24, 1, '2025-01-03 09:57:17', '2025-01-03 09:57:17'),
(33, 'اجهزة محموله', 10, 25, 1, '2025-01-20 16:20:19', '2025-01-20 16:20:19'),
(34, 'سلطات', 8, 27, 1, '2025-01-25 16:59:21', '2025-01-25 16:59:21'),
(35, 'سامسونج', 10, 29, 1, '2025-02-01 00:00:37', '2025-02-01 00:00:37'),
(36, 'ايفون', 10, 29, 1, '2025-02-01 00:00:42', '2025-02-01 00:00:42');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `storeId` int(11) NOT NULL,
  `ceatedAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `storeId`, `ceatedAt`, `updatedAt`) VALUES
(1, 'صغير', 1, '2024-11-27 16:40:51', '2024-11-27 16:40:51'),
(2, 'وسط', 1, '2024-11-27 16:40:51', '2024-11-27 16:40:51'),
(3, 'كبير', 1, '2024-11-27 16:40:51', '2024-11-27 16:40:51'),
(4, 'حبة', 1, '2024-11-27 16:40:51', '2024-11-27 16:40:51'),
(5, 'نصف', 1, '2024-11-27 16:40:51', '2024-11-27 16:40:51'),
(6, 'ربع', 1, '2024-11-27 16:40:51', '2024-11-27 16:40:51'),
(7, 'دبل', 1, '2024-11-27 16:40:51', '2024-11-27 16:40:51'),
(8, 'عادي', 1, '2024-11-27 16:40:51', '2024-11-27 16:40:51'),
(9, 'باكت', 1, '2024-11-28 19:38:21', '2024-11-28 19:38:21'),
(10, 'بلاس', 10, '2025-01-02 07:02:29', '2025-01-02 07:02:29'),
(11, 'عادي', 10, '2025-01-02 07:02:29', '2025-01-02 07:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `withApp` int(11) NOT NULL DEFAULT 1,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `inStore` tinyint(1) NOT NULL DEFAULT 1,
  `systemOrderNumber` varchar(100) DEFAULT NULL,
  `situationId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `storeId`, `userId`, `withApp`, `paid`, `inStore`, `systemOrderNumber`, `situationId`, `createdAt`, `updatedAt`) VALUES
(5, 10, 2, 1, 0, 0, NULL, 2, '2025-01-07 11:38:28', '2025-01-07 11:38:28'),
(6, 10, 2, 1, 0, 0, NULL, 1, '2025-01-07 11:42:10', '2025-01-07 11:42:10'),
(7, 10, 2, 1, 0, 1, NULL, 1, '2025-01-07 12:09:37', '2025-01-07 12:09:37'),
(8, 10, 2, 1, 0, 4, NULL, 1, '2025-01-07 12:25:31', '2025-01-07 12:25:31'),
(9, 10, 2, 1, 0, 1, NULL, 1, '2025-01-07 12:28:25', '2025-01-07 12:28:25'),
(10, 10, 2, 1, 0, 1, NULL, 1, '2025-01-07 21:04:21', '2025-01-07 21:04:21'),
(11, 10, 2, 1, 0, 1, NULL, 1, '2025-01-07 21:06:10', '2025-01-07 21:06:10'),
(12, 10, 2, 1, 0, 1, NULL, 1, '2025-01-07 21:07:40', '2025-01-07 21:07:40'),
(13, 10, 2, 1, 0, 1, NULL, 1, '2025-01-07 21:08:20', '2025-01-07 21:08:20'),
(14, 10, 2, 1, 0, 1, NULL, 1, '2025-01-08 11:59:00', '2025-01-08 11:59:00'),
(15, 10, 2, 1, 0, 1, NULL, 1, '2025-01-08 12:19:35', '2025-01-08 12:19:35'),
(16, 10, 2, 1, 3, 1, NULL, 1, '2025-01-08 12:20:19', '2025-01-08 12:20:19'),
(17, 10, 2, 1, 0, 1, NULL, 1, '2025-01-08 12:35:17', '2025-01-08 12:35:17'),
(18, 10, 2, 1, 0, 1, NULL, 1, '2025-01-08 12:36:27', '2025-01-08 12:36:27'),
(19, 10, 2, 1, 0, 1, NULL, 1, '2025-01-08 18:33:26', '2025-01-08 18:33:26'),
(20, 10, 2, 1, 0, 1, NULL, 1, '2025-01-08 18:36:36', '2025-01-08 18:36:36'),
(21, 10, 2, 1, 1, 7, NULL, 1, '2025-01-09 17:58:59', '2025-01-09 17:58:59'),
(22, 10, 2, 1, 0, 2, NULL, 1, '2025-01-09 21:13:22', '2025-01-09 21:13:22'),
(23, 10, 2, 1, 0, 2, NULL, 1, '2025-01-09 23:22:12', '2025-01-09 23:22:12'),
(24, 10, 2, 1, 0, 1, NULL, 1, '2025-01-09 23:54:19', '2025-01-09 23:54:19'),
(25, 10, 2, 1, 0, 1, NULL, 1, '2025-01-10 00:13:24', '2025-01-10 00:13:24'),
(26, 10, 2, 1, 0, 1, NULL, 1, '2025-01-10 16:29:39', '2025-01-10 16:29:39'),
(27, 10, 1, 1, 0, 1, NULL, 1, '2025-01-11 21:00:14', '2025-01-11 21:00:14'),
(28, 10, 1, 1, 1, 1, NULL, 1, '2025-01-11 21:44:43', '2025-01-11 21:44:43'),
(29, 10, 1, 1, 1, 1, NULL, 1, '2025-01-14 23:21:23', '2025-01-14 23:21:23'),
(30, 10, 1, 1, 0, 8, NULL, 1, '2025-01-15 00:07:14', '2025-01-15 00:07:14'),
(31, 10, 1, 1, 1, 1, NULL, 1, '2025-01-15 21:35:53', '2025-01-15 21:35:53'),
(32, 10, 1, 1, 2, 8, NULL, 1, '2025-01-15 23:02:00', '2025-01-15 23:02:00'),
(34, 10, 1, 1, 3, 8, NULL, 1, '2025-01-15 23:14:22', '2025-01-15 23:14:22'),
(35, 10, 1, 1, 1, 1, NULL, 1, '2025-01-15 23:47:46', '2025-01-15 23:47:46'),
(36, 10, 1, 1, 0, 1, NULL, 1, '2025-01-15 23:52:19', '2025-01-15 23:52:19'),
(37, 10, 1, 1, 1, 1, NULL, 1, '2025-01-16 19:18:30', '2025-01-16 19:18:30'),
(38, 10, 1, 1, 1, 1, NULL, 1, '2025-01-16 20:29:00', '2025-01-16 20:29:00'),
(41, 10, 1, 1, 2, 8, NULL, 1, '2025-01-17 09:02:16', '2025-01-17 09:02:16'),
(42, 10, 1, 1, 1, 1, NULL, 1, '2025-01-20 13:52:07', '2025-01-20 13:52:07'),
(43, 2, 1, 1, 1, 1, NULL, 1, '2025-01-25 12:21:56', '2025-01-25 12:21:56'),
(44, 2, 1, 1, 2, 8, NULL, 1, '2025-01-25 12:27:00', '2025-01-25 12:27:00'),
(45, 8, 1, 1, 0, 1, NULL, 1, '2025-01-25 17:17:59', '2025-01-25 17:17:59'),
(48, 1, 1, 1, 0, 1, NULL, 1, '2025-01-25 18:51:37', '2025-01-25 18:51:37'),
(49, 1, 1, 1, 0, 1, NULL, 1, '2025-01-25 18:52:41', '2025-01-25 18:52:41'),
(67, 10, 1, 1, 0, 8, NULL, 3, '2025-02-03 18:39:24', '2025-02-10 20:00:27'),
(68, 10, 1, 1, 0, 8, NULL, 5, '2025-02-03 18:58:35', '2025-02-10 19:10:34'),
(69, 10, 1, 1, 0, 8, NULL, 5, '2025-02-03 21:13:14', '2025-02-10 18:51:33'),
(70, 18, 5, 1, 0, 11, NULL, 1, '2025-03-05 03:46:19', '2025-03-05 03:46:19'),
(71, 10, 101, 1, 0, 11, NULL, 1, '2025-04-29 21:46:51', '2025-04-29 21:46:51'),
(72, 10, 101, 1, 0, 11, NULL, 1, '2025-04-29 22:06:46', '2025-04-29 22:06:46'),
(73, 10, 5, 1, 0, 11, NULL, 2, '2025-04-29 22:23:14', '2025-04-30 14:21:59'),
(74, 10, 5, 1, 0, 1, NULL, 3, '2025-04-29 22:44:17', '2025-04-30 13:53:22'),
(75, 10, 5, 1, 0, 1, NULL, 1, '2025-05-02 21:21:19', '2025-05-02 21:21:19'),
(76, 10, 5, 1, 0, 1, NULL, 1, '2025-05-02 21:22:31', '2025-05-02 21:22:31'),
(77, 10, 5, 1, 0, 1, NULL, 4, '2025-05-03 23:44:25', '2025-05-03 23:44:49'),
(78, 10, 1, 1, 1, 23, NULL, 2, '2025-05-16 14:05:03', '2025-05-16 15:29:11'),
(79, 10, 1, 1, 0, 24, NULL, 1, '2025-05-16 15:48:37', '2025-05-16 15:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `ordersAmounts`
--

CREATE TABLE `ordersAmounts` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,3) NOT NULL,
  `orderId` int(11) NOT NULL,
  `currencyId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordersAmounts`
--

INSERT INTO `ordersAmounts` (`id`, `amount`, `orderId`, `currencyId`, `createdAt`, `updatedAt`) VALUES
(1, 150000.000, 19, 1, '2025-01-08 18:33:26', '2025-01-08 18:33:26'),
(2, 300027.000, 20, 1, '2025-01-08 18:36:36', '2025-01-08 18:36:36'),
(3, 3000.000, 20, 2, '2025-01-08 18:36:36', '2025-01-08 18:36:36'),
(4, 750.000, 20, 3, '2025-01-08 18:36:36', '2025-01-08 18:36:36'),
(5, 100009.000, 21, 1, '2025-01-09 17:58:59', '2025-01-09 17:58:59'),
(6, 45000.000, 22, 1, '2025-01-09 21:13:22', '2025-01-09 21:13:22'),
(7, 0.000, 23, 1, '2025-01-09 23:22:12', '2025-01-09 23:22:12'),
(8, 165000.000, 24, 1, '2025-01-09 23:54:19', '2025-01-09 23:54:19'),
(9, 1500.000, 24, 2, '2025-01-09 23:54:19', '2025-01-09 23:54:19'),
(10, 0.000, 24, 3, '2025-01-09 23:54:19', '2025-01-09 23:54:19'),
(11, -4754.000, 25, 3, '2025-01-10 00:13:24', '2025-01-10 00:13:24'),
(12, 225000.000, 26, 1, '2025-01-10 16:29:39', '2025-01-10 16:29:39'),
(13, 300000.000, 27, 1, '2025-01-11 21:00:14', '2025-01-11 21:00:14'),
(14, 13500.000, 27, 2, '2025-01-11 21:00:14', '2025-01-11 21:00:14'),
(15, 180000.000, 28, 1, '2025-01-11 21:44:43', '2025-01-11 21:44:43'),
(16, 250009.000, 29, 1, '2025-01-14 23:21:23', '2025-01-14 23:21:23'),
(17, 100000.000, 30, 1, '2025-01-15 00:07:14', '2025-01-15 00:07:14'),
(18, 100000.000, 31, 1, '2025-01-15 21:35:53', '2025-01-15 21:35:53'),
(19, 100000.000, 32, 1, '2025-01-15 23:02:00', '2025-01-15 23:02:00'),
(20, 200009.000, 34, 1, '2025-01-15 23:14:22', '2025-01-15 23:14:22'),
(21, 200009.000, 35, 1, '2025-01-15 23:47:46', '2025-01-15 23:47:46'),
(22, 350000.000, 36, 1, '2025-01-15 23:52:19', '2025-01-15 23:52:19'),
(23, 90000.000, 37, 1, '2025-01-16 19:18:30', '2025-01-16 19:18:30'),
(24, 135000.000, 38, 1, '2025-01-16 20:29:00', '2025-01-16 20:29:00'),
(25, 450000.000, 41, 1, '2025-01-17 09:02:16', '2025-01-17 09:02:16'),
(26, 1115000.000, 42, 1, '2025-01-20 13:52:07', '2025-01-20 13:52:07'),
(27, 2500.000, 42, 3, '2025-01-20 13:52:07', '2025-01-20 13:52:07'),
(28, 1000.000, 43, 1, '2025-01-25 12:21:56', '2025-01-25 12:21:56'),
(29, 100.000, 44, 3, '2025-01-25 12:27:00', '2025-01-25 12:27:00'),
(30, 2400.000, 44, 1, '2025-01-25 12:27:00', '2025-01-25 12:27:00'),
(31, 2200.000, 45, 1, '2025-01-25 17:17:59', '2025-01-25 17:17:59'),
(32, 50.000, 48, 3, '2025-01-25 18:51:37', '2025-01-25 18:51:37'),
(33, 1800.000, 48, 1, '2025-01-25 18:51:37', '2025-01-25 18:51:37'),
(34, 150.000, 49, 3, '2025-01-25 18:52:41', '2025-01-25 18:52:41'),
(35, 1800.000, 49, 1, '2025-01-25 18:52:41', '2025-01-25 18:52:41'),
(54, 150018.000, 67, 1, '2025-02-03 18:39:24', '2025-02-03 18:39:24'),
(55, 200018.000, 68, 1, '2025-02-03 18:58:35', '2025-02-03 18:58:35'),
(56, 0.000, 69, 1, '2025-02-03 21:13:14', '2025-02-03 21:13:14'),
(57, 35.000, 70, 1, '2025-03-05 03:46:19', '2025-03-05 03:46:19'),
(58, 90000.000, 71, 1, '2025-04-29 21:46:51', '2025-04-29 21:46:51'),
(59, 30000.000, 72, 1, '2025-04-29 22:06:46', '2025-04-29 22:06:46'),
(60, 0.000, 73, 1, '2025-04-29 22:23:14', '2025-04-29 22:23:14'),
(61, 150000.000, 74, 1, '2025-04-29 22:44:17', '2025-04-29 22:44:17'),
(62, 90000.000, 75, 1, '2025-05-02 21:21:19', '2025-05-02 21:21:19'),
(63, 90000.000, 76, 1, '2025-05-02 21:22:31', '2025-05-02 21:22:31'),
(64, 3000.000, 77, 2, '2025-05-03 23:44:25', '2025-05-03 23:44:25'),
(65, 5400.000, 77, 1, '2025-05-03 23:44:25', '2025-05-03 23:44:25'),
(66, 100000.000, 78, 1, '2025-05-16 14:05:03', '2025-05-16 14:05:03'),
(67, 150009.000, 79, 1, '2025-05-16 15:48:37', '2025-05-16 15:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `ordersDelivery`
--

CREATE TABLE `ordersDelivery` (
  `id` int(11) NOT NULL,
  `deliveryManId` int(11) DEFAULT NULL,
  `orderId` int(11) NOT NULL,
  `locationId` int(11) NOT NULL,
  `deliveryPrice` decimal(10,3) DEFAULT NULL,
  `deliveryPriceCurrency` int(11) DEFAULT 1,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordersDelivery`
--

INSERT INTO `ordersDelivery` (`id`, `deliveryManId`, `orderId`, `locationId`, `deliveryPrice`, `deliveryPriceCurrency`, `createdAt`, `updatedAt`) VALUES
(1, 2, 29, 1, NULL, 1, '2025-01-14 23:21:23', '2025-01-14 23:21:23'),
(2, 1, 30, 8, NULL, 1, '2025-01-15 00:07:14', '2025-01-15 00:07:14'),
(3, NULL, 31, 1, NULL, 1, '2025-01-15 21:35:53', '2025-01-15 21:35:53'),
(4, NULL, 32, 8, NULL, 1, '2025-01-15 23:02:00', '2025-01-15 23:02:00'),
(5, NULL, 34, 8, NULL, 1, '2025-01-15 23:14:22', '2025-01-15 23:14:22'),
(6, NULL, 35, 1, NULL, 1, '2025-01-15 23:47:46', '2025-01-15 23:47:46'),
(7, 1, 36, 1, NULL, 1, '2025-01-15 23:52:19', '2025-01-15 23:52:19'),
(8, NULL, 37, 1, NULL, 1, '2025-01-16 19:18:30', '2025-01-16 19:18:30'),
(9, NULL, 38, 1, NULL, 1, '2025-01-16 20:29:00', '2025-01-16 20:29:00'),
(10, NULL, 41, 8, NULL, 1, '2025-01-17 09:02:16', '2025-01-17 09:02:16'),
(11, NULL, 42, 1, NULL, 1, '2025-01-20 13:52:07', '2025-01-20 13:52:07'),
(12, NULL, 43, 1, NULL, 1, '2025-01-25 12:21:56', '2025-01-25 12:21:56'),
(13, NULL, 44, 8, NULL, 1, '2025-01-25 12:27:00', '2025-01-25 12:27:00'),
(14, NULL, 45, 1, NULL, 1, '2025-01-25 17:17:59', '2025-01-25 17:17:59'),
(15, NULL, 49, 1, NULL, 1, '2025-01-25 18:52:41', '2025-01-25 18:52:41'),
(20, NULL, 67, 8, NULL, 1, '2025-02-03 18:39:24', '2025-02-03 18:39:24'),
(21, 2, 68, 8, 350.000, 1, '2025-02-03 18:58:35', '2025-02-03 18:58:35'),
(22, 2, 69, 8, 350.000, 1, '2025-02-03 21:13:14', '2025-02-03 21:13:14'),
(23, NULL, 70, 11, 0.000, 1, '2025-03-05 03:46:19', '2025-03-05 03:46:19'),
(24, NULL, 71, 11, 1500.000, 1, '2025-04-29 21:46:51', '2025-04-29 21:46:51'),
(25, NULL, 72, 11, 1500.000, 1, '2025-04-29 22:06:46', '2025-04-29 22:06:46'),
(26, NULL, 73, 11, 1500.000, 1, '2025-04-29 22:23:14', '2025-04-29 22:23:14'),
(27, NULL, 78, 23, 1500.000, 1, '2025-05-16 14:05:03', '2025-05-16 14:05:03'),
(28, NULL, 79, 24, 1000.000, 1, '2025-05-16 15:48:37', '2025-05-16 15:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `orderSituations`
--

CREATE TABLE `orderSituations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderSituations`
--

INSERT INTO `orderSituations` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'جديد', '2025-02-05 18:40:56', '2025-02-05 18:40:56'),
(2, 'تم انجاز الطلب', '2025-02-05 18:40:56', '2025-02-05 18:40:56'),
(3, 'تم الغاء الطلب', '2025-02-05 18:40:56', '2025-02-05 18:40:56'),
(4, 'تم الاطلاع على الطلب', '2025-02-05 18:40:56', '2025-02-05 18:40:56'),
(5, 'تعيين رجل التوصيل', '2025-02-05 18:40:56', '2025-02-05 18:40:56'),
(6, 'تجهيز الطلب', '2025-02-05 18:40:56', '2025-02-05 18:40:56'),
(7, 'الطلب في الطريق اليك', '2025-02-05 18:40:56', '2025-02-05 18:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `ordersPayments`
--

CREATE TABLE `ordersPayments` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordersPayments`
--

INSERT INTO `ordersPayments` (`id`, `orderId`, `paymentId`, `createdAt`, `updatedAt`) VALUES
(1, 34, 3, '2025-01-15 23:14:22', '2025-01-15 23:14:22'),
(2, 35, 1, '2025-01-15 23:47:46', '2025-01-15 23:47:46'),
(3, 38, 1, '2025-01-16 20:29:00', '2025-01-16 20:29:00'),
(4, 37, 1, '2025-01-16 21:49:26', '2025-01-16 21:49:26'),
(5, 32, 2, '2025-01-16 22:51:45', '2025-01-16 22:51:45'),
(6, 41, 2, '2025-01-17 09:02:16', '2025-01-17 09:02:16'),
(7, 42, 1, '2025-01-20 13:53:29', '2025-01-20 13:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `ordersProducts`
--

CREATE TABLE `ordersProducts` (
  `id` int(11) NOT NULL,
  `storeProductId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productPrice` decimal(10,0) NOT NULL,
  `productName` varchar(150) NOT NULL,
  `optionName` varchar(255) NOT NULL,
  `currencyId` int(11) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordersProducts`
--

INSERT INTO `ordersProducts` (`id`, `storeProductId`, `orderId`, `productPrice`, `productName`, `optionName`, `currencyId`, `productQuantity`, `createdAt`, `updatedAt`) VALUES
(1, 78, 5, 50000, 'S10', '', 0, 2, '2025-01-07 11:38:28', '2025-01-07 11:38:28'),
(2, 78, 6, 50000, 'S10', '', 0, 1, '2025-01-07 11:42:10', '2025-01-07 11:42:10'),
(3, 79, 6, 45000, 'S9', '', 0, 2, '2025-01-07 11:42:10', '2025-01-07 11:42:10'),
(4, 80, 6, 30000, 'S8', '', 0, 1, '2025-01-07 11:42:10', '2025-01-07 11:42:10'),
(5, 82, 6, 65000, 'S20', '', 0, 1, '2025-01-07 11:42:10', '2025-01-07 11:42:10'),
(6, 83, 6, 70000, 'S21', '', 0, 1, '2025-01-07 11:42:10', '2025-01-07 11:42:10'),
(7, 84, 6, 50009, 'S10', '', 0, 6, '2025-01-07 11:42:10', '2025-01-07 11:42:10'),
(8, 78, 7, 50000, 'S10', '', 0, 1, '2025-01-07 12:09:37', '2025-01-07 12:09:37'),
(9, 79, 7, 45000, 'S9', '', 0, 2, '2025-01-07 12:09:37', '2025-01-07 12:09:37'),
(10, 80, 7, 30000, 'S8', '', 0, 1, '2025-01-07 12:09:37', '2025-01-07 12:09:37'),
(11, 81, 7, 90000, 'نوت 10', '', 0, 10, '2025-01-07 12:09:37', '2025-01-07 12:09:37'),
(12, 82, 7, 65000, 'S20', '', 0, 1, '2025-01-07 12:09:37', '2025-01-07 12:09:37'),
(13, 83, 7, 70000, 'S21', '', 0, 1, '2025-01-07 12:09:37', '2025-01-07 12:09:37'),
(14, 84, 7, 50009, 'S10', '', 0, 6, '2025-01-07 12:09:37', '2025-01-07 12:09:37'),
(15, 78, 8, 50000, 'S10', '', 0, 3, '2025-01-07 12:25:31', '2025-01-07 12:25:31'),
(16, 78, 9, 50000, 'S10', '', 0, 3, '2025-01-07 12:28:25', '2025-01-07 12:28:25'),
(17, 78, 10, 50000, 'S10', '', 0, 1, '2025-01-07 21:04:21', '2025-01-07 21:04:21'),
(18, 78, 11, 50000, 'S10', '', 0, 1, '2025-01-07 21:06:10', '2025-01-07 21:06:10'),
(19, 78, 12, 50000, 'S10', '', 0, 2, '2025-01-07 21:07:40', '2025-01-07 21:07:40'),
(20, 78, 13, 50000, 'S10', '', 0, 2, '2025-01-07 21:08:20', '2025-01-07 21:08:20'),
(21, 78, 14, 50000, 'S10', '', 0, 1, '2025-01-08 11:59:00', '2025-01-08 11:59:00'),
(22, 78, 15, 50000, 'S10', '', 0, 4, '2025-01-08 12:19:35', '2025-01-08 12:19:35'),
(23, 78, 16, 50000, 'S10', '', 0, 5, '2025-01-08 12:20:19', '2025-01-08 12:20:19'),
(24, 78, 17, 50000, 'S10', '', 0, 5, '2025-01-08 12:35:17', '2025-01-08 12:35:17'),
(25, 78, 18, 50000, 'S10', '', 0, 5, '2025-01-08 12:36:27', '2025-01-08 12:36:27'),
(26, 78, 19, 50000, 'S10', '', 0, 3, '2025-01-08 18:33:26', '2025-01-08 18:33:26'),
(27, 78, 20, 50000, 'S10', '', 0, 3, '2025-01-08 18:36:36', '2025-01-08 18:36:36'),
(28, 84, 20, 50009, 'S10', '', 0, 3, '2025-01-08 18:36:36', '2025-01-08 18:36:36'),
(29, 82, 20, 1500, 'S20', '', 0, 2, '2025-01-08 18:36:36', '2025-01-08 18:36:36'),
(30, 83, 20, 250, 'S21', '', 0, 3, '2025-01-08 18:36:36', '2025-01-08 18:36:36'),
(31, 78, 21, 50000, 'S10', '', 0, 1, '2025-01-09 17:58:59', '2025-01-09 17:58:59'),
(32, 84, 21, 50009, 'S10', '', 0, 1, '2025-01-09 17:58:59', '2025-01-09 17:58:59'),
(33, 79, 22, 45000, 'S9', '', 0, 1, '2025-01-09 21:13:22', '2025-01-09 21:13:22'),
(35, 79, 24, 45000, 'S9', 'صغير', 1, 3, '2025-01-09 23:54:19', '2025-01-09 23:54:19'),
(37, 82, 24, 1500, 'S20', 'بلاس', 2, 1, '2025-01-09 23:54:19', '2025-01-09 23:54:19'),
(39, 83, 25, 250, 'S21', 'بلاس', 3, 9, '2025-01-10 00:13:24', '2025-01-10 00:13:24'),
(40, 79, 26, 45000, 'S9', 'صغير', 1, 1, '2025-01-10 16:29:39', '2025-01-10 16:29:39'),
(41, 78, 27, 50000, 'S10', 'عادي', 1, 6, '2025-01-11 21:00:14', '2025-01-11 21:00:14'),
(42, 82, 27, 1500, 'S20', 'بلاس', 2, 9, '2025-01-11 21:00:14', '2025-01-11 21:00:14'),
(43, 81, 28, 90000, 'نوت 10', 'عادي', 1, 2, '2025-01-11 21:44:43', '2025-01-11 21:44:43'),
(44, 78, 29, 50000, 'S10', 'عادي', 1, 4, '2025-01-14 23:21:23', '2025-01-14 23:21:23'),
(45, 84, 29, 50009, 'S10', 'بلاس', 1, 1, '2025-01-14 23:21:23', '2025-01-14 23:21:23'),
(46, 78, 30, 50000, 'S10', 'عادي', 1, 2, '2025-01-15 00:07:14', '2025-01-15 00:07:14'),
(47, 78, 31, 50000, 'S10', 'عادي', 1, 2, '2025-01-15 21:35:53', '2025-01-15 21:35:53'),
(48, 78, 32, 50000, 'S10', 'عادي', 1, 2, '2025-01-15 23:02:00', '2025-01-15 23:02:00'),
(49, 78, 34, 50000, 'S10', 'عادي', 1, 3, '2025-01-15 23:14:22', '2025-01-15 23:14:22'),
(50, 84, 34, 50009, 'S10', 'بلاس', 1, 1, '2025-01-15 23:14:22', '2025-01-15 23:14:22'),
(51, 78, 35, 50000, 'S10', 'عادي', 1, 3, '2025-01-15 23:47:46', '2025-01-15 23:47:46'),
(52, 84, 35, 50009, 'S10', 'بلاس', 1, 1, '2025-01-15 23:47:46', '2025-01-15 23:47:46'),
(53, 78, 36, 50000, 'S10', 'عادي', 1, 7, '2025-01-15 23:52:19', '2025-01-15 23:52:19'),
(55, 79, 37, 45000, 'S9', 'صغير', 1, 2, '2025-01-16 19:18:30', '2025-01-16 19:18:30'),
(56, 79, 38, 45000, 'S9', 'صغير', 1, 3, '2025-01-16 20:29:00', '2025-01-16 20:29:00'),
(57, 81, 41, 90000, 'نوت 10', 'عادي', 1, 5, '2025-01-17 09:02:16', '2025-01-17 09:02:16'),
(58, 79, 42, 45000, 'S9', 'صغير', 1, 10, '2025-01-20 13:52:07', '2025-01-20 13:52:07'),
(59, 81, 42, 90000, 'نوت 10', 'بلاس', 1, 3, '2025-01-20 13:52:07', '2025-01-20 13:52:07'),
(60, 87, 42, 25000, 's7', 'عادي', 1, 7, '2025-01-20 13:52:07', '2025-01-20 13:52:07'),
(61, 89, 42, 55000, 'نوت 10', 'عادي', 1, 4, '2025-01-20 13:52:07', '2025-01-20 13:52:07'),
(62, 83, 42, 250, 'S21', 'بلاس', 3, 10, '2025-01-20 13:52:07', '2025-01-20 13:52:07'),
(63, 68, 43, 500, 'جبنة ابو بقرة', 'صغير', 1, 2, '2025-01-25 12:21:56', '2025-01-25 12:21:56'),
(64, 72, 44, 50, 'جبنة سالم', 'حبة', 3, 2, '2025-01-25 12:27:00', '2025-01-25 12:27:00'),
(65, 76, 44, 800, 'جبنة سالم', 'باكت', 1, 3, '2025-01-25 12:27:00', '2025-01-25 12:27:00'),
(66, 94, 45, 550, 'سلطة عربية', 'صغير', 1, 4, '2025-01-25 17:17:59', '2025-01-25 17:17:59'),
(67, 72, 48, 50, 'جبنة سالم', 'حبة', 3, 1, '2025-01-25 18:51:37', '2025-01-25 18:51:37'),
(68, 76, 48, 800, 'جبنة سالم', 'باكت', 1, 1, '2025-01-25 18:51:37', '2025-01-25 18:51:37'),
(69, 77, 48, 1000, 'جبنة سالم', 'وسط', 1, 1, '2025-01-25 18:51:37', '2025-01-25 18:51:37'),
(70, 72, 49, 50, 'جبنة سالم', 'حبة', 3, 3, '2025-01-25 18:52:41', '2025-01-25 18:52:41'),
(71, 76, 49, 800, 'جبنة سالم', 'باكت', 1, 1, '2025-01-25 18:52:41', '2025-01-25 18:52:41'),
(72, 77, 49, 1000, 'جبنة سالم', 'وسط', 1, 1, '2025-01-25 18:52:41', '2025-01-25 18:52:41'),
(103, 78, 67, 50000, 'S10', 'عادي', 1, 1, '2025-02-03 18:39:24', '2025-02-03 18:39:24'),
(104, 84, 67, 50009, 'S10', 'بلاس', 1, 2, '2025-02-03 18:39:24', '2025-02-03 18:39:24'),
(105, 78, 68, 50000, 'S10', 'عادي', 1, 2, '2025-02-03 18:58:35', '2025-02-03 18:58:35'),
(106, 84, 68, 50009, 'S10', 'بلاس', 1, 2, '2025-02-03 18:58:35', '2025-02-03 18:58:35'),
(108, 75, 70, 35, 'جبنة ليدي', 'حبة', 1, 1, '2025-03-05 03:46:19', '2025-03-05 03:46:19'),
(109, 80, 71, 30000, 'S8', 'دبل', 1, 3, '2025-04-29 21:46:51', '2025-04-29 21:46:51'),
(110, 80, 72, 30000, 'S8', 'دبل', 1, 1, '2025-04-29 22:06:46', '2025-04-29 22:06:46'),
(112, 80, 74, 30000, 'S8', 'دبل', 1, 5, '2025-04-29 22:44:17', '2025-04-29 22:44:17'),
(113, 80, 75, 30000, 'S8', 'دبل', 1, 3, '2025-05-02 21:21:19', '2025-05-02 21:21:19'),
(114, 80, 76, 30000, 'S8', 'دبل', 1, 3, '2025-05-02 21:22:31', '2025-05-02 21:22:31'),
(115, 82, 77, 1500, 'S20', 'بلاس', 2, 2, '2025-05-03 23:44:25', '2025-05-03 23:44:25'),
(116, 107, 77, 600, 's76', 'وسط', 1, 9, '2025-05-03 23:44:25', '2025-05-03 23:44:25'),
(117, 78, 78, 50000, 'S20', 'عادي', 1, 2, '2025-05-16 14:05:03', '2025-05-16 14:05:03'),
(118, 78, 79, 50000, 'S20', 'عادي', 1, 2, '2025-05-16 15:48:37', '2025-05-16 15:48:37'),
(119, 84, 79, 50009, 'S20', 'بلاس', 1, 1, '2025-05-16 15:48:37', '2025-05-16 15:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `orderStatus`
--

CREATE TABLE `orderStatus` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `situationId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderStatus`
--

INSERT INTO `orderStatus` (`id`, `orderId`, `situationId`, `createdAt`) VALUES
(1, 69, 4, '2025-02-07 19:56:08'),
(2, 67, 4, '2025-02-09 08:14:53'),
(3, 68, 4, '2025-02-09 19:57:11'),
(4, 69, 5, '2025-02-10 18:51:24'),
(5, 69, 5, '2025-02-10 18:51:33'),
(6, 68, 5, '2025-02-10 19:10:34'),
(7, 67, 3, '2025-02-10 20:00:27'),
(8, 73, 4, '2025-04-29 22:41:45'),
(9, 74, 4, '2025-04-29 22:44:42'),
(10, 74, 3, '2025-04-30 13:53:22'),
(11, 73, 2, '2025-04-30 14:21:59'),
(12, 77, 4, '2025-05-03 23:44:49'),
(13, 78, 4, '2025-05-16 15:28:16'),
(14, 78, 2, '2025-05-16 15:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `paymentTypes`
--

CREATE TABLE `paymentTypes` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymentTypes`
--

INSERT INTO `paymentTypes` (`id`, `name`, `image`, `createdAt`, `updatedAt`) VALUES
(1, 'حاسب', 'https://yemen-apps.s3.ap-southeast-2.amazonaws.com/payment-types/haseb.png', '2025-01-15 17:47:27', '2025-01-15 17:47:27'),
(2, 'جيب', 'https://yemen-apps.s3.ap-southeast-2.amazonaws.com/payment-types/jaib.webp', '2025-01-15 17:47:27', '2025-01-15 17:47:27'),
(3, 'كاش', 'https://yemen-apps.s3.ap-southeast-2.amazonaws.com/payment-types/cash.png', '2025-01-15 17:47:27', '2025-01-15 17:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `productImages`
--

CREATE TABLE `productImages` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productImages`
--

INSERT INTO `productImages` (`id`, `productId`, `storeId`, `image`, `createdAt`, `updatedAt`) VALUES
(13, 1, 1, 'hVq6N8HOB8_1733048910.jpg', '2024-12-01 13:28:30', '2024-12-01 13:28:30'),
(38, 51, 1, 'Y9A0oG4k6Z_1737814574.jpg', '2025-01-25 17:16:14', '2025-01-25 17:16:14'),
(44, 3, 1, 'exSZvw6ZC3_1741296376.jpg', '2025-03-07 00:26:16', '2025-03-07 00:26:16'),
(48, 42, 1, 'f2yA5nUPGr_1746631684.jpg', '2025-05-07 18:28:04', '2025-05-07 18:28:04'),
(49, 49, 1, 'rVsuoMvcJY_1746631757.jpg', '2025-05-07 18:29:17', '2025-05-07 18:29:17'),
(50, 44, 1, 'XEnGXE6KWa_1746631773.jpg', '2025-05-07 18:29:33', '2025-05-07 18:29:33'),
(51, 49, 1, 'JlyUxhnyer_1746631959.jpg', '2025-05-07 18:32:39', '2025-05-07 18:32:39'),
(52, 53, 1, 'eNC7aJD79N_1746650523.jpg', '2025-05-07 23:42:03', '2025-05-07 23:42:03'),
(53, 46, 1, 'H1n23CXeCm_1746650539.jpg', '2025-05-07 23:42:19', '2025-05-07 23:42:19'),
(54, 41, 1, 'U2LKwE2tnB_1746650559.jpg', '2025-05-07 23:42:39', '2025-05-07 23:42:39'),
(55, 45, 1, 'koXdIN1gfd_1746650598.jpg', '2025-05-07 23:43:18', '2025-05-07 23:43:18'),
(56, 43, 1, '1Sb5VUoN3l_1746650645.jpg', '2025-05-07 23:44:05', '2025-05-07 23:44:05'),
(57, 37, 1, 'gp1Mkwzu2b_1747081537.jpg', '2025-05-12 23:25:37', '2025-05-12 23:25:37'),
(58, 39, 1, 'PbBKpIEhyT_1747081568.jpg', '2025-05-12 23:26:08', '2025-05-12 23:26:08'),
(59, 40, 1, 'sZjJ18E9ru_1747081606.jpg', '2025-05-12 23:26:46', '2025-05-12 23:26:46'),
(60, 55, 1, 'zO6g0Zj8XX_1747082063.jpg', '2025-05-12 23:34:23', '2025-05-12 23:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `storeId` int(11) NOT NULL,
  `nestedSectionId` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `stars` int(11) NOT NULL DEFAULT 0,
  `reviews` int(11) NOT NULL DEFAULT 0,
  `acceptedStatus` tinyint(1) NOT NULL DEFAULT 1,
  `orderNo` int(11) NOT NULL DEFAULT 1,
  `orderAt` timestamp NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `storeId`, `nestedSectionId`, `likes`, `stars`, `reviews`, `acceptedStatus`, `orderNo`, `orderAt`, `createdAt`, `updatedAt`) VALUES
(1, 'ماء صنعاء', 'مياه عذبه', 1, 7, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-11-28 09:17:25', '2024-11-28 09:17:25'),
(3, 'ماء شملان', 'مياه نقيه', 1, 7, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-11-28 19:54:38', '2024-11-28 19:54:38'),
(4, 'جبنة ابو بقرة', 'جبنة مغذية', 1, 1, 0, 0, 0, 1, 4, '2025-01-24 18:05:13', '2024-11-28 19:54:38', '2024-11-28 19:54:38'),
(5, 'تونة الريان', NULL, 1, 9, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-03 20:38:03', '2024-12-03 20:38:03'),
(6, 'تونة الغويزي', NULL, 1, 9, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-03 20:39:19', '2024-12-03 20:39:19'),
(9, 'مياه بلادي', NULL, 1, 7, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-03 20:41:29', '2024-12-03 20:41:29'),
(10, 'ساندويتش فلافل', 'لذيذ', 1, 10, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-08 17:59:40', '2024-12-08 17:59:40'),
(11, 'أرز مضغوط مع الدجاج', 'لذيذه', 1, 13, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-08 17:59:40', '2024-12-08 17:59:40'),
(17, 'معمول تمر بالدخن', 'واو', 1, 16, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-08 18:42:27', '2024-12-08 18:42:27'),
(18, 'كرواسون اسمر', 'بللب', 1, 15, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-08 18:42:27', '2024-12-08 18:42:27'),
(19, 'كرواسون لوتس', '', 1, 15, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-08 18:42:27', '2024-12-08 18:42:27'),
(20, 'كرواسون فرنسي', 'نتاه', 1, 15, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-08 18:42:27', '2024-12-08 18:42:27'),
(21, 'كرواسون فرنسي ماربل', 'لبلثق', 1, 15, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-08 18:42:27', '2024-12-08 18:42:27'),
(22, 'فطائر فرنسي شوكولاته', NULL, 1, 19, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-08 18:44:31', '2024-12-08 18:44:31'),
(23, 'فطائر فرنسي جبن سائل', 'قثب', 1, 19, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-08 18:44:31', '2024-12-08 18:44:31'),
(24, 'كيك توترت', NULL, 1, 17, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-08 18:45:33', '2024-12-08 18:45:33'),
(25, 'كيك بالشوكو', NULL, 1, 17, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-08 18:45:33', '2024-12-08 18:45:33'),
(29, 'جبن مالح استرالي', 'جميل جدا ورخيص', 1, 6, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-15 21:48:14', '2024-12-15 21:48:14'),
(30, 'جبن مالح الماني', 'رهيب', 1, 6, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2024-12-15 21:49:25', '2024-12-15 21:49:25'),
(37, 'جبنة سالم', '\"جبنة سالم – طعم لا يُقاوم! 🧀✨\"\nاستمتع بتجربة فريدة مع جبنة سالم، الجبنة الطازجة التي تتميز بنكهتها الكريمية والمذاق اللذيذ. مصنوعة من الحليب الطازج وبأفضل المكونات الطبيعية، تقدم لك جبنة سالم إضافة رائعة لجميع وجباتك.\n\nقوام كريمي يناسب كافة الأذواق.\nمذاق مميز يجمع بين الطراوة والملوحة المثالية.\nصحية ولذيذة، مليئة بالبروتين والكالسيوم لتعزيز قوتك اليومية.\nمثالية للساندويشات، السلطات، الفطائر، وأكثر!\nامنح نفسك ولعائلتك الأفضل مع جبنة سالم، الخيار المثالي في كل لحظة!', 1, 1, 0, 0, 0, 1, 1, '2025-01-24 19:02:45', '2024-12-20 20:13:43', '2024-12-20 20:13:43'),
(38, 'جبنة ليدي', 'واو رووعه', 1, 1, 0, 0, 0, 1, 2, '2025-01-24 18:05:55', '2024-12-20 20:14:10', '2024-12-20 20:14:10'),
(39, 'جبنة البقرة الضاحكة', 'جبنة قديمة ولذيذة', 1, 1, 0, 0, 0, 1, 1, '2025-01-24 18:13:43', '2024-12-20 20:14:49', '2024-12-20 20:14:49'),
(40, 'جبنة الاطفال', 'للاطفال', 1, 1, 0, 0, 0, 1, 1, '2025-01-24 18:00:42', '2024-12-20 20:15:04', '2024-12-20 20:15:04'),
(41, 'S20', 'رهيب', 10, 30, 0, 0, 0, 1, 1, '2025-01-26 18:27:14', '2025-01-01 21:16:15', '2025-01-01 21:16:15'),
(42, 'S9', 'woow', 10, 30, 0, 0, 0, 1, 1, '2025-01-26 18:24:54', '2025-01-02 10:00:14', '2025-01-02 10:00:14'),
(43, 'S8', 'weeew', 10, 30, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2025-01-02 10:03:14', '2025-01-02 10:03:14'),
(44, 'نوت 10', 'جمييل', 10, 30, 0, 0, 0, 1, 1, '2025-01-26 18:26:42', '2025-01-02 10:04:04', '2025-01-02 10:04:04'),
(45, 'S20', 'uygnit', 10, 30, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2025-01-02 10:05:08', '2025-01-02 10:05:08'),
(46, 'S21', 'jbdyj', 10, 30, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2025-01-02 10:05:44', '2025-01-02 10:05:44'),
(47, 'تاب 3', 'جميييل', 10, 31, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2025-01-03 09:54:08', '2025-01-03 09:54:08'),
(48, 'ايفون 15', 'اخر صيحة', 10, 32, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2025-01-03 09:58:01', '2025-01-03 09:58:01'),
(49, 's7', 'جميل جدا ورهيب للغاية', 10, 30, 0, 0, 0, 1, 1, '0000-00-00 00:00:00', '2025-01-20 13:18:50', '2025-01-20 13:18:50'),
(50, 'جبنة عاليه', 'لذذذذيييذه', 1, 1, 0, 0, 0, 1, 9000, '2025-01-24 20:42:06', '2025-01-24 20:42:06', '2025-01-24 20:42:06'),
(51, 'سلطة عربية', 'رووعه', 8, 34, 0, 0, 0, 1, 9000, '2025-01-25 17:01:27', '2025-01-25 17:01:27', '2025-01-25 17:01:27'),
(52, 'توصيلة جالكسي LT', '3 امبير متينة', 10, 35, 0, 0, 0, 1, 9000, '2025-02-01 00:04:20', '2025-02-01 00:04:20', '2025-02-01 00:04:20'),
(53, 's22', 'mooo', 10, 30, 0, 0, 0, 1, 9000, '2025-05-03 23:33:00', '2025-05-03 23:33:00', '2025-05-03 23:33:00'),
(54, 's7 edge', NULL, 10, 30, 0, 0, 0, 1, 9000, '2025-05-07 18:31:25', '2025-05-07 18:31:25', '2025-05-07 18:31:25'),
(55, 'جبنة نادك سائل', 'رهيبه جدا وسايله', 1, 2, 0, 0, 0, 1, 9000, '2025-05-12 23:31:25', '2025-05-12 23:31:25', '2025-05-12 23:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `productViews`
--

CREATE TABLE `productViews` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productViews`
--

INSERT INTO `productViews` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'كثيرة الطلب', '2025-01-17 19:28:26', '2025-01-17 19:28:26'),
(2, 'مفضلة لدى الكثير', '2025-01-17 19:28:26', '2025-01-17 19:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `acceptedStatus` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `categoryId`, `storeId`, `acceptedStatus`, `createdAt`, `updatedAt`) VALUES
(1, 'الاجبان', 1, 1, 1, '2024-12-07 14:28:38', '2024-12-07 14:28:38'),
(4, 'المياه', 1, 1, 1, '2024-12-07 19:20:02', '2024-12-07 19:20:02'),
(5, 'الحليب', 1, 1, 1, '2024-12-07 19:20:02', '2024-12-07 19:20:02'),
(6, 'قسم حلويات موكا', 3, 1, 1, '2024-12-08 10:20:46', '2024-12-08 10:20:46'),
(7, 'قسم حلويات كوكيز', 3, 1, 1, '2024-12-08 10:20:46', '2024-12-08 10:20:46'),
(8, 'التونة', 1, 1, 1, '2024-12-08 10:39:32', '2024-12-08 10:39:32'),
(9, 'قسم مطعم المعلم', 2, 1, 1, '2024-12-08 16:35:24', '2024-12-08 16:35:24'),
(10, 'العصائر', 1, 1, 1, '2024-12-15 13:03:58', '2024-12-15 13:03:58'),
(12, 'الالبان', 1, 1, 1, '2024-12-15 16:48:15', '2024-12-15 16:48:15'),
(13, 'المكرونة', 1, 1, 1, '2024-12-15 17:36:29', '2024-12-15 17:36:29'),
(15, 'صحون بلاستيكية', 5, 1, 1, '2024-12-15 18:14:28', '2024-12-15 18:14:28'),
(23, 'سامسونج', 8, 10, 1, '2025-01-01 21:08:40', '2025-01-01 21:08:40'),
(24, 'ايفون', 8, 10, 1, '2025-01-01 21:08:53', '2025-01-01 21:08:53'),
(25, 'ZTE', 8, 10, 1, '2025-01-01 21:09:05', '2025-01-01 21:09:05'),
(26, 'LG', 8, 10, 1, '2025-01-01 21:09:12', '2025-01-01 21:09:12'),
(27, 'مقبلات بارده', 10, 8, 1, '2025-01-25 16:54:36', '2025-01-25 16:54:36'),
(28, 'مقبلات ساخنة', 10, 8, 1, '2025-01-25 16:54:51', '2025-01-25 16:54:51'),
(29, 'توصيلات', 9, 10, 1, '2025-01-31 23:59:15', '2025-01-31 23:59:15'),
(30, 'غلافات', 9, 10, 1, '2025-01-31 23:59:24', '2025-01-31 23:59:24'),
(31, 'لواصق', 9, 10, 1, '2025-01-31 23:59:40', '2025-01-31 23:59:40'),
(32, 'شواحن', 9, 10, 1, '2025-01-31 23:59:46', '2025-01-31 23:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `sharedableStores`
--

CREATE TABLE `sharedableStores` (
  `id` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sharedableStores`
--

INSERT INTO `sharedableStores` (`id`, `storeId`, `createdAt`) VALUES
(1, 1, '2025-03-04 11:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `sharedStoresConfigs`
--

CREATE TABLE `sharedStoresConfigs` (
  `id` int(11) NOT NULL,
  `categories` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`categories`)),
  `sections` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`sections`)),
  `nestedSections` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`nestedSections`)),
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`products`)),
  `storeId` int(11) NOT NULL,
  `storeIdReference` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sharedStoresConfigs`
--

INSERT INTO `sharedStoresConfigs` (`id`, `categories`, `sections`, `nestedSections`, `products`, `storeId`, `storeIdReference`, `createdAt`, `updatedAt`) VALUES
(1, '[3, 1]', '[9]', '[6]', '[40, 42, 73, 77]', 2, 1, '2024-12-09 09:20:15', '2024-12-09 09:20:15'),
(5, '[1, 2]', '[]', '[]', '[]', 17, 1, '2025-01-31 19:51:22', '2025-01-31 19:51:22'),
(6, '[]', '[]', '[]', '[]', 18, 1, '2025-03-02 00:13:13', '2025-03-02 00:13:13'),
(18, '[]', '[]', '[]', '[]', 31, 1, '2025-03-03 01:01:14', '2025-03-03 01:01:14'),
(19, '[]', '[]', '[]', '[]', 32, 1, '2025-03-03 01:26:21', '2025-03-03 01:26:21'),
(20, '[]', '[]', '[]', '[]', 33, 1, '2025-03-04 03:17:04', '2025-03-04 03:17:04'),
(21, '[]', '[]', '[]', '[]', 34, 1, '2025-03-04 03:18:44', '2025-03-04 03:18:44'),
(22, '[]', '[]', '[]', '[]', 35, 1, '2025-03-04 03:19:25', '2025-03-04 03:19:25'),
(23, '[]', '[]', '[]', '[]', 36, 1, '2025-03-04 03:19:57', '2025-03-04 03:19:57'),
(24, '[]', '[]', '[]', '[]', 37, 1, '2025-03-04 03:20:38', '2025-03-04 03:20:38'),
(25, '[]', '[]', '[]', '[]', 38, 1, '2025-03-04 03:21:13', '2025-03-04 03:21:13'),
(26, '[]', '[]', '[]', '[]', 39, 1, '2025-03-04 03:23:04', '2025-03-04 03:23:04'),
(27, '[]', '[]', '[]', '[]', 40, 1, '2025-03-04 03:23:49', '2025-03-04 03:23:49'),
(28, '[]', '[]', '[]', '[]', 41, 1, '2025-03-04 03:24:32', '2025-03-04 03:24:32'),
(29, '[]', '[]', '[]', '[]', 42, 1, '2025-03-04 03:25:48', '2025-03-04 03:25:48'),
(30, '[]', '[]', '[]', '[]', 43, 1, '2025-03-04 03:27:32', '2025-03-04 03:27:32'),
(31, '[]', '[]', '[]', '[]', 44, 1, '2025-03-04 03:28:12', '2025-03-04 03:28:12'),
(32, '[]', '[]', '[]', '[]', 55, 1, '2025-03-04 14:38:46', '2025-03-04 14:38:46'),
(33, '[]', '[]', '[]', '[]', 58, 1, '2025-03-09 05:00:25', '2025-03-09 05:00:25'),
(34, '[]', '[]', '[]', '[]', 59, 1, '2025-03-09 05:01:17', '2025-03-09 05:01:17'),
(35, '[]', '[]', '[]', '[]', 60, 1, '2025-03-09 18:09:53', '2025-03-09 18:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `storeAddons`
--

CREATE TABLE `storeAddons` (
  `id` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` double(10,3) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `storeAds`
--

CREATE TABLE `storeAds` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `storeId` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  `expireAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storeAds`
--

INSERT INTO `storeAds` (`id`, `image`, `productId`, `storeId`, `status`, `createdAt`, `updatedAt`, `expireAt`) VALUES
(15, '7NY7NuT4Oz_1747255223.jpg', NULL, 10, 1, '2025-05-14 23:40:23', '2025-05-14 23:40:23', '2025-05-14 23:40:23'),
(17, 'gTnROGhK5b_1747392394.jpg', NULL, 10, 1, '2025-05-16 13:46:34', '2025-05-16 13:46:34', '2025-05-16 13:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `storeCategories`
--

CREATE TABLE `storeCategories` (
  `id` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storeCategories`
--

INSERT INTO `storeCategories` (`id`, `storeId`, `categoryId`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2024-12-07 14:25:05', '2024-12-07 14:25:05'),
(2, 1, 2, '2024-12-07 21:42:34', '2024-12-07 21:42:34'),
(3, 1, 3, '2024-12-07 21:43:44', '2024-12-07 21:43:44'),
(12, 10, 8, '2025-01-01 21:03:08', '2025-01-01 21:03:08'),
(13, 10, 9, '2025-01-01 21:03:13', '2025-01-01 21:03:13'),
(14, 8, 10, '2025-01-25 16:53:34', '2025-01-25 16:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `storeCurencies`
--

CREATE TABLE `storeCurencies` (
  `id` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `currencyId` int(11) NOT NULL,
  `deliveryPrice` decimal(10,3) NOT NULL DEFAULT 0.000,
  `freeDeliveryPrice` double(10,3) NOT NULL DEFAULT 0.000,
  `lessCartPrice` decimal(10,3) NOT NULL DEFAULT 0.000,
  `isSelected` tinyint(1) NOT NULL DEFAULT 0,
  `countUsed` int(11) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storeCurencies`
--

INSERT INTO `storeCurencies` (`id`, `storeId`, `currencyId`, `deliveryPrice`, `freeDeliveryPrice`, `lessCartPrice`, `isSelected`, `countUsed`, `createdAt`, `updatedAt`) VALUES
(2, 59, 1, 0.000, 0.000, 0.000, 1, 0, '2025-03-09 05:01:17', '2025-03-09 05:01:17'),
(3, 60, 2, 200.120, 5000.000, 2000.122, 1, 0, '2025-03-09 18:09:53', '2025-03-10 05:08:34'),
(4, 60, 1, 0.000, 0.000, 0.000, 0, 0, '2025-03-10 01:57:37', '2025-03-10 05:07:57'),
(6, 10, 3, 20.000, 0.000, 0.000, 0, 0, '2025-03-10 14:55:56', '2025-05-03 23:41:59'),
(7, 10, 2, 500.000, 4000.000, 3000.000, 0, 0, '2025-03-10 14:56:30', '2025-05-03 23:41:59'),
(8, 10, 1, 1.000, 0.000, 5000.000, 1, 0, '2025-05-03 23:37:38', '2025-05-04 21:26:28'),
(9, 1, 1, 0.000, 0.000, 0.000, 1, 0, '2025-05-12 23:33:35', '2025-05-12 23:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `storeDeliveryMen`
--

CREATE TABLE `storeDeliveryMen` (
  `id` int(11) NOT NULL,
  `deliveryManId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storeDeliveryMen`
--

INSERT INTO `storeDeliveryMen` (`id`, `deliveryManId`, `storeId`, `createdAt`, `updatedAt`) VALUES
(3, 1, 2, '2025-01-12 18:50:02', '2025-01-12 18:50:02'),
(12, 1, 10, '2025-01-13 22:44:02', '2025-01-13 22:44:02'),
(14, 2, 10, '2025-01-15 00:03:29', '2025-01-15 00:03:29'),
(15, 1, 8, '2025-01-23 22:41:29', '2025-01-23 22:41:29'),
(16, 1, 17, '2025-01-31 20:22:03', '2025-01-31 20:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `storeInfo`
--

CREATE TABLE `storeInfo` (
  `id` int(11) NOT NULL,
  `call` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`call`)),
  `facebook` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`facebook`)),
  `instagram` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`instagram`)),
  `youtube` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`youtube`)),
  `x` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`x`)),
  `whatsapp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`whatsapp`)),
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storeInfo`
--

INSERT INTO `storeInfo` (`id`, `call`, `facebook`, `instagram`, `youtube`, `x`, `whatsapp`, `storeId`, `createdAt`, `updatedAt`) VALUES
(1, '[\"774519161\"]', '[\"greenland.rests\"]', '[\"774519161\"]', '[\"774519161\"]', '[\"774519161\"]', '[\"774519161\"]', 1, '2024-12-29 09:47:57', '2024-12-29 09:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `storeNestedSections`
--

CREATE TABLE `storeNestedSections` (
  `id` int(11) NOT NULL,
  `storeSectionId` int(11) NOT NULL,
  `nestedSectionId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storeNestedSections`
--

INSERT INTO `storeNestedSections` (`id`, `storeSectionId`, `nestedSectionId`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2024-12-07 16:00:54', '2024-12-07 16:00:54'),
(2, 1, 2, '2024-12-07 22:58:20', '2024-12-07 22:58:20'),
(3, 1, 6, '2024-12-07 22:58:57', '2024-12-07 22:58:57'),
(4, 2, 8, '2024-12-07 22:59:23', '2024-12-07 22:59:23'),
(5, 2, 7, '2024-12-07 22:59:35', '2024-12-07 22:59:35'),
(6, 1, 3, '2024-12-08 06:49:12', '2024-12-08 06:49:12'),
(7, 5, 9, '2024-12-08 13:58:58', '2024-12-08 13:58:58'),
(8, 6, 10, '2024-12-08 20:55:05', '2024-12-08 20:55:05'),
(9, 6, 11, '2024-12-08 20:56:14', '2024-12-08 20:56:14'),
(10, 6, 12, '2024-12-08 20:56:33', '2024-12-08 20:56:33'),
(11, 6, 13, '2024-12-08 20:56:40', '2024-12-08 20:56:40'),
(12, 4, 15, '2024-12-08 21:48:21', '2024-12-08 21:48:21'),
(13, 4, 16, '2024-12-08 21:48:29', '2024-12-08 21:48:29'),
(14, 4, 19, '2024-12-08 21:48:34', '2024-12-08 21:48:34'),
(15, 7, 17, '2024-12-08 22:36:06', '2024-12-08 22:36:06'),
(16, 1, 20, '2024-12-15 17:36:46', '2024-12-15 17:36:46'),
(24, 14, 30, '2025-01-01 21:14:58', '2025-01-01 21:14:58'),
(25, 14, 31, '2025-01-01 21:15:07', '2025-01-01 21:15:07'),
(26, 15, 32, '2025-01-03 09:57:21', '2025-01-03 09:57:21'),
(28, 18, 34, '2025-01-25 16:59:25', '2025-01-25 16:59:25'),
(29, 20, 35, '2025-02-01 00:00:58', '2025-02-01 00:00:58'),
(30, 20, 36, '2025-02-01 00:01:11', '2025-02-01 00:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `storePaymentTypes`
--

CREATE TABLE `storePaymentTypes` (
  `id` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `paymentTypeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storePaymentTypes`
--

INSERT INTO `storePaymentTypes` (`id`, `storeId`, `paymentTypeId`, `createdAt`, `updatedAt`) VALUES
(1, 10, 1, '2025-01-15 17:50:17', '2025-01-15 17:50:17'),
(2, 10, 2, '2025-01-15 18:17:06', '2025-01-15 18:17:06'),
(3, 10, 3, '2025-01-15 18:17:06', '2025-01-15 18:17:06'),
(4, 2, 1, '2025-01-25 09:11:17', '2025-01-25 09:11:17'),
(5, 2, 2, '2025-01-25 09:11:17', '2025-01-25 09:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `storeProductAddons`
--

CREATE TABLE `storeProductAddons` (
  `id` int(11) NOT NULL,
  `storeProductId` int(11) NOT NULL,
  `storeAddonsId` int(11) NOT NULL,
  `ceratedAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `storeProducts`
--

CREATE TABLE `storeProducts` (
  `id` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `optionId` int(11) NOT NULL,
  `storeNestedSectionId` int(11) NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `prePrice` decimal(10,0) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `stars` int(11) NOT NULL DEFAULT 0,
  `reviews` int(11) NOT NULL DEFAULT 0,
  `currencyId` int(11) NOT NULL DEFAULT 1,
  `productViewId` int(11) NOT NULL DEFAULT 1,
  `orderNo` int(11) NOT NULL DEFAULT 1,
  `orderAt` timestamp NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storeProducts`
--

INSERT INTO `storeProducts` (`id`, `storeId`, `productId`, `optionId`, `storeNestedSectionId`, `price`, `prePrice`, `likes`, `stars`, `reviews`, `currencyId`, `productViewId`, `orderNo`, `orderAt`, `createdAt`, `updatedAt`) VALUES
(27, 1, 3, 1, 5, 100.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 00:01:40', '2024-12-08 00:01:40'),
(28, 1, 1, 1, 5, 100.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 00:02:04', '2024-12-08 00:02:04'),
(29, 1, 9, 1, 5, 100.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 00:02:16', '2024-12-08 00:02:16'),
(31, 1, 5, 1, 7, 500.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 13:59:27', '2024-12-08 13:59:27'),
(32, 1, 5, 3, 7, 800.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 14:04:16', '2024-12-08 14:04:16'),
(33, 1, 10, 1, 8, 300.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 21:00:54', '2024-12-08 21:00:54'),
(34, 1, 10, 3, 8, 500.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 21:02:02', '2024-12-08 21:02:02'),
(35, 1, 18, 1, 12, 300.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 21:57:10', '2024-12-08 21:57:10'),
(36, 1, 19, 1, 12, 250.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 21:57:25', '2024-12-08 21:57:25'),
(37, 1, 17, 1, 13, 6000.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 22:32:11', '2024-12-08 22:32:11'),
(38, 1, 22, 2, 14, 300.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 22:33:15', '2024-12-08 22:33:15'),
(39, 1, 24, 2, 15, 350.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-08 22:39:59', '2024-12-08 22:39:59'),
(72, 1, 37, 4, 1, 170.000, 0, 0, 0, 0, 3, 1, 1, '2025-01-24 18:08:25', '2024-12-20 20:15:24', '2025-01-24 19:34:26'),
(73, 1, 39, 4, 1, 350.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2024-12-20 20:15:37', '2024-12-20 20:15:37'),
(74, 1, 40, 4, 1, 40.000, 0, 0, 0, 0, 1, 2, 2, '2025-01-24 20:48:34', '2024-12-20 20:15:50', '2024-12-20 20:15:50'),
(76, 1, 37, 9, 1, 800.000, 0, 0, 0, 0, 1, 1, 2, '2025-01-24 18:08:48', '2024-12-21 11:51:03', '2024-12-21 11:51:03'),
(77, 1, 37, 2, 1, 1000.000, 0, 0, 0, 0, 1, 1, 1, '2025-01-24 18:09:29', '2024-12-21 11:51:26', '2024-12-21 11:51:26'),
(78, 10, 41, 11, 24, 50000.000, 0, 0, 0, 0, 1, 2, 1, '0000-00-00 00:00:00', '2025-01-01 21:16:53', '2025-01-01 21:16:53'),
(79, 10, 42, 1, 24, 45000.000, 0, 0, 0, 0, 1, 2, 1, '0000-00-00 00:00:00', '2025-01-02 10:02:56', '2025-01-02 10:02:56'),
(80, 10, 43, 7, 24, 30000.000, 0, 0, 0, 0, 1, 2, 1, '0000-00-00 00:00:00', '2025-01-02 10:03:44', '2025-01-02 10:03:44'),
(81, 10, 44, 10, 24, 90000.000, 0, 0, 0, 0, 1, 2, 1, '0000-00-00 00:00:00', '2025-01-02 10:04:37', '2025-01-02 10:04:37'),
(82, 10, 45, 10, 24, 1500.000, 0, 0, 0, 0, 2, 1, 1, '0000-00-00 00:00:00', '2025-01-02 10:05:22', '2025-01-02 10:05:22'),
(83, 10, 46, 10, 24, 250.000, 0, 0, 0, 0, 3, 2, 1, '0000-00-00 00:00:00', '2025-01-02 10:06:07', '2025-01-02 10:06:07'),
(84, 10, 41, 10, 24, 50009.000, 0, 0, 0, 0, 1, 2, 1, '0000-00-00 00:00:00', '2025-01-02 10:11:49', '2025-01-02 10:11:49'),
(85, 10, 47, 11, 25, 50000.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2025-01-03 09:54:54', '2025-01-03 09:54:54'),
(86, 10, 48, 10, 26, 75000.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2025-01-03 09:58:30', '2025-01-03 09:58:30'),
(87, 10, 49, 8, 24, 25000.000, 0, 0, 0, 0, 1, 2, 1, '0000-00-00 00:00:00', '2025-01-20 13:20:10', '2025-01-20 13:20:10'),
(89, 10, 44, 11, 24, 55000.000, 0, 0, 0, 0, 1, 1, 1, '0000-00-00 00:00:00', '2025-01-20 13:47:55', '2025-01-20 13:47:55'),
(90, 1, 40, 2, 1, 50.000, 0, 0, 0, 0, 1, 1, 2, '2025-01-24 20:49:00', '2025-01-24 20:37:17', '2025-01-24 20:37:17'),
(91, 1, 40, 3, 1, 60.000, 0, 0, 0, 0, 1, 1, 3, '2025-01-24 20:48:43', '2025-01-24 20:46:06', '2025-01-24 22:33:52'),
(92, 1, 40, 5, 1, 240.000, 0, 0, 0, 0, 3, 1, 9000, '2025-01-24 20:50:27', '2025-01-24 20:50:27', '2025-01-24 20:50:27'),
(94, 8, 51, 1, 28, 550.000, 0, 0, 0, 0, 1, 1, 9000, '2025-01-25 17:01:53', '2025-01-25 17:01:53', '2025-01-25 17:01:53'),
(95, 10, 52, 1, 29, 1200.000, 0, 0, 0, 0, 1, 2, 9000, '2025-02-01 00:04:59', '2025-02-01 00:04:59', '2025-02-01 00:04:59'),
(96, 1, 3, 2, 5, 350.000, 0, 0, 0, 0, 1, 1, 9000, '2025-03-07 03:30:27', '2025-03-07 03:30:27', '2025-03-07 03:30:27'),
(97, 1, 3, 3, 5, 400.000, 0, 0, 0, 0, 1, 1, 9000, '2025-03-07 03:31:29', '2025-03-07 03:31:29', '2025-03-07 03:31:29'),
(98, 10, 43, 3, 24, 45000.000, 0, 0, 0, 0, 2, 2, 9000, '2025-03-10 14:06:25', '2025-03-10 14:06:25', '2025-03-10 14:06:25'),
(99, 10, 43, 5, 24, 150.000, 0, 0, 0, 0, 3, 2, 9000, '2025-03-10 14:16:12', '2025-03-10 14:16:12', '2025-03-10 14:16:12'),
(100, 10, 43, 1, 24, 100.000, 0, 0, 0, 0, 3, 2, 9000, '2025-03-10 14:18:20', '2025-03-10 14:18:20', '2025-03-10 14:18:20'),
(101, 10, 43, 4, 24, 50.000, 0, 0, 0, 0, 1, 2, 9000, '2025-03-10 14:37:45', '2025-03-10 14:37:45', '2025-03-10 14:37:45'),
(102, 10, 43, 6, 24, 700.000, 0, 0, 0, 0, 3, 2, 9000, '2025-03-10 14:38:50', '2025-03-10 14:38:50', '2025-03-10 14:38:50'),
(103, 10, 43, 6, 24, 700.000, 0, 0, 0, 0, 3, 2, 9000, '2025-03-10 14:39:54', '2025-03-10 14:39:54', '2025-03-10 14:39:54'),
(104, 10, 45, 2, 24, 50.000, 0, 0, 0, 0, 3, 1, 9000, '2025-03-10 14:55:00', '2025-03-10 14:55:00', '2025-03-10 14:55:00'),
(105, 10, 45, 2, 24, 50.000, 0, 0, 0, 0, 3, 1, 9000, '2025-03-10 14:55:56', '2025-03-10 14:55:56', '2025-03-10 14:55:56'),
(106, 10, 45, 8, 24, 70.000, 0, 0, 0, 0, 2, 1, 9000, '2025-03-10 14:56:30', '2025-03-10 14:56:30', '2025-03-10 14:56:30'),
(107, 10, 53, 2, 24, 600.000, 0, 0, 0, 0, 1, 1, 9000, '2025-05-03 23:37:38', '2025-05-03 23:37:38', '2025-05-03 23:37:38'),
(108, 10, 49, 2, 24, 150.000, 0, 0, 0, 0, 3, 1, 9000, '2025-05-07 18:32:29', '2025-05-07 18:32:29', '2025-05-07 18:32:29'),
(109, 1, 55, 1, 2, 750.000, 0, 0, 0, 0, 1, 1, 9000, '2025-05-12 23:33:35', '2025-05-12 23:33:35', '2025-05-12 23:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `stars` int(11) NOT NULL DEFAULT 0,
  `reviews` int(11) NOT NULL DEFAULT 0,
  `latLng` varchar(255) DEFAULT NULL,
  `latLong` point DEFAULT NULL,
  `deliveryPrice` decimal(10,3) NOT NULL DEFAULT 0.000,
  `deliveryPriceCurrency` int(11) NOT NULL DEFAULT 1,
  `subscriptions` int(11) NOT NULL DEFAULT 0,
  `countryId` int(11) NOT NULL,
  `mainCategoryId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `logo`, `cover`, `userId`, `typeId`, `verified`, `status`, `likes`, `stars`, `reviews`, `latLng`, `latLong`, `deliveryPrice`, `deliveryPriceCurrency`, `subscriptions`, `countryId`, `mainCategoryId`, `createdAt`, `updatedAt`) VALUES
(1, 'اويس تيليكوم', '7BoQrTeNLt_1745908214.jpg', 'RrDs7U86wH_1745908214.jpg', 1, 2, 0, 0, 99999, 150000, 850658, '15.31978808953478,44.198696091771126', NULL, 0.000, 1, 10005686, 1, 1, '2025-01-30 12:08:56', '2025-04-29 09:30:14'),
(2, 'مطعم الارض الخضراء', 'frc6vEMgJq_1734701435.jpg', '2d8eWZ2J6k_1734701435.jpg', 1, 1, 0, 0, 0, 0, 0, '15.308954195136177,44.19960167258978', NULL, 0.000, 1, 0, 0, 1, '2024-12-20 16:30:35', '2024-12-20 16:30:35'),
(8, 'مطعم ريماس', 'inZO4WIHkY_1734701469.jpg', 'Qi5PBtcjXw_1734701469.jpg', 1, 2, 0, 0, 0, 0, 0, NULL, NULL, 0.000, 1, 0, 0, 1, '2024-12-20 16:31:09', '2024-12-20 16:31:09'),
(9, 'التوفير هايبر', 'Dtc3857fpV_1734701893.jpg', 'mULnuhBxw5_1734701893.jpg', 1, 2, 0, 0, 0, 0, 0, NULL, NULL, 0.000, 1, 0, 0, 2, '2024-12-20 16:38:13', '2024-12-20 16:38:13'),
(10, 'اويس تيليكوم', '4mazngl5SG_1745910001.jpg', 'l6LuapuRtd_1745910001.jpg', 2, 2, 0, 0, 0, 0, 0, '15.349127620239123,44.22024562954903', 0xe610000001010000005c1dfedac0b22e4000004002311c4640, 300.000, 1, 0, 1, 2, '2025-01-02 10:40:36', '2025-04-29 10:00:01'),
(17, 'متجر مصطفى', 'xJX2k1R6Jq_1738342282.jpg', 'JPIyIE48RA_1738342282.jpg', 5, 2, 0, 0, 0, 0, 0, NULL, NULL, 0.000, 1, 0, 0, 0, '2025-01-31 19:51:22', '2025-01-31 19:51:22'),
(18, 'امجد تيليكوم', 'oi3mCSgvQZ_1740863593.jpg', 'MgeijYOHkp_1740863593.jpg', 2, 1, 0, 0, 0, 0, 0, '15.31103416010675,44.19476196169853', 0xe61000000101000000d43193de3f9f2e400000c0f5ed184640, 0.000, 1, 0, 1, 1, '2025-03-02 00:13:13', '2025-03-02 00:13:13'),
(31, 'مرحبا قوي', 'SwYFQ0xgZJ_1740952874.jpg', 'E1khHbwRTR_1740952874.jpg', 2, 1, 0, 0, 0, 0, 0, '15.315751516482369,44.19774021953344', 0xe610000001010000008ae8c92eaaa12e400000308d4f194640, 0.000, 1, 0, 1, 5, '2025-03-03 01:01:14', '2025-03-03 01:01:14'),
(32, 'هلا ومرحبا', '7238Qnjq5R_1740954381.jpg', 'wegqNXbQqy_1740954381.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe6100000010100000049b0ee8d86aa2e400000506971194640, 0.000, 1, 0, 1, 5, '2025-03-03 01:26:21', '2025-03-03 01:26:21'),
(33, 'طاطا للمأكولات المصرية', 'MYqw6Alrdt_1741047424.jpg', 'opkQD04jsN_1741047424.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe61000000101000000f6feba253a9f2e4000005047ee184640, 0.000, 1, 0, 1, 1, '2025-03-04 03:17:04', '2025-03-04 03:17:04'),
(34, 'مطعم ماما', 'dPpZHeog8p_1741047524.jpg', 'olSvy20z3j_1741047524.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe61000000101000000d85d224d949f2e40000060c109194640, 0.000, 1, 0, 1, 1, '2025-03-04 03:18:44', '2025-03-04 03:18:44'),
(35, 'مطعم القرموشي', 'bkQLYMTNaG_1741047565.jpg', 'nkj8WJOaOs_1741047565.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe61000000101000000743f95e311a02e40000080420e194640, 0.000, 1, 0, 1, 1, '2025-03-04 03:19:25', '2025-03-04 03:19:25'),
(36, 'البيت التركي', 'AfF1H3uHcA_1741047597.jpg', 'd1mQPfzsxQ_1741047597.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe6100000010100000091d350299aa12e400000b09251194640, 0.000, 1, 0, 1, 1, '2025-03-04 03:19:57', '2025-03-04 03:19:57'),
(37, 'مطعم سويمي', 'stdn3cOaMw_1741047638.jpg', 'oP7bObkh2r_1741047638.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe610000001010000009ae8706a35a22e400000b02276194640, 0.000, 1, 0, 1, 1, '2025-03-04 03:20:38', '2025-03-04 03:20:38'),
(38, 'بروست هاوس', 'NGnzxZpIgO_1741047673.jpg', 'KLRxgdZaY6_1741047673.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe61000000101000000e2f27eb94ca12e400000706b4f194640, 0.000, 1, 0, 1, 1, '2025-03-04 03:21:13', '2025-03-04 03:21:13'),
(39, 'بيج بايت', '7kVufgHEPZ_1741047784.jpg', 'Ecaehk4LxT_1741047784.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe610000001010000002168f0c436a12e400000e0ef4b194640, 0.000, 1, 0, 1, 1, '2025-03-04 03:23:04', '2025-03-04 03:23:04'),
(40, 'مطعم ريماس', 'LBcr9EPcLX_1741047829.jpg', 'NgZsKw1OaC_1741047829.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe61000000101000000a9593982bca72e400000805b9a194640, 0.000, 1, 0, 1, 1, '2025-03-04 03:23:49', '2025-03-04 03:23:49'),
(41, 'لوز وسكر', 'cQgMMDXMHT_1741047872.jpg', 'eiVq2Qdpel_1741047872.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe61000000101000000e40537081ba72e400000e0c485194640, 0.000, 1, 0, 1, 1, '2025-03-04 03:24:32', '2025-03-04 03:24:32'),
(42, 'بيسترو', 'orrT4VBQ9j_1741047948.jpg', '1ItM301mtI_1741047948.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe610000001010000001e86437a30a72e400000001183194640, 0.000, 1, 0, 1, 1, '2025-03-04 03:25:48', '2025-03-04 03:25:48'),
(43, 'زهر الليمون', 'AvQnB3nGyB_1741048052.jpg', 'sYsHGqAh2q_1741048052.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe61000000101000000a7833ce00e9c2e4000006088da174640, 0.000, 1, 0, 1, 1, '2025-03-04 03:27:32', '2025-03-04 03:27:32'),
(44, 'تراك برجر', 'fVA3WsnoCQ_1741048092.jpg', '26SHXFvDRk_1741048092.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe61000000101000000f7c7b0ead99a2e400000a01e6e174640, 0.000, 1, 0, 1, 1, '2025-03-04 03:28:12', '2025-03-04 03:28:12'),
(45, 'مؤسسة الشيباني', 'reSrO4pmT7_1741086317.jpg', 'RuFnPa5NST_1741086317.jpg', 2, 2, 0, 0, 0, 0, 0, NULL, 0xe6100000010100000039c22e8d68992e400000a08705174640, 0.000, 1, 0, 1, 1, '2025-03-04 14:05:17', '2025-03-04 14:05:17'),
(55, 'مطعم نكهة زمان', 'AcUW7MrDdG_1741088326.jpg', 'CRD4fmGPsT_1741088326.jpg', 2, 1, 0, 0, 0, 0, 0, '15.298877778746565,44.17933188378811', 0xe610000001010000006c6f1a8206992e400000e058f4164640, 0.000, 1, 0, 1, 1, '2025-03-04 14:38:46', '2025-03-04 14:38:46'),
(58, 'هلتليا', 'Z6bUBZueDl_1741485625.jpg', 'sMGJedYwg7_1741485625.jpg', 1, 1, 0, 0, 0, 0, 0, NULL, 0xe610000001010000009dac60414f9f2e4000002015e7184640, 0.000, 1, 0, 1, 1, '2025-03-09 05:00:25', '2025-03-09 05:00:25'),
(59, 'هلتليا', 'kMFlILowtp_1741485677.jpg', 'E77DDLQGmJ_1741485677.jpg', 1, 1, 0, 0, 0, 0, 0, NULL, 0xe610000001010000009dac60414f9f2e4000002015e7184640, 0.000, 1, 0, 1, 1, '2025-03-09 05:01:17', '2025-03-09 05:01:17'),
(60, 'هاوي هاو', 'hJqYtfPmik_1741532993.jpg', 'ZCs974cuuI_1741532993.jpg', 2, 1, 0, 0, 0, 0, 0, NULL, 0xe610000001010000009db3994f269f2e400000c0d7de184640, 0.000, 1, 0, 1, 1, '2025-03-09 18:09:53', '2025-03-09 18:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `storeSections`
--

CREATE TABLE `storeSections` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `storeCategoryId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storeSections`
--

INSERT INTO `storeSections` (`id`, `sectionId`, `storeCategoryId`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2024-12-07 14:36:49', '2024-12-07 14:36:49'),
(2, 4, 1, '2024-12-07 22:20:23', '2024-12-07 22:20:23'),
(3, 5, 1, '2024-12-07 22:20:53', '2024-12-07 22:20:53'),
(4, 6, 3, '2024-12-08 13:25:56', '2024-12-08 13:25:56'),
(5, 8, 1, '2024-12-08 13:58:42', '2024-12-08 13:58:42'),
(6, 9, 2, '2024-12-08 19:35:50', '2024-12-08 19:35:50'),
(7, 7, 3, '2024-12-08 21:20:15', '2024-12-08 21:20:15'),
(8, 10, 1, '2024-12-15 17:32:37', '2024-12-15 17:32:37'),
(9, 12, 1, '2024-12-15 17:34:34', '2024-12-15 17:34:34'),
(14, 23, 12, '2025-01-01 21:09:20', '2025-01-01 21:09:20'),
(15, 24, 12, '2025-01-01 21:09:43', '2025-01-01 21:09:43'),
(18, 27, 14, '2025-01-25 16:55:00', '2025-01-25 16:55:00'),
(19, 28, 14, '2025-01-25 16:55:05', '2025-01-25 16:55:05'),
(20, 29, 13, '2025-02-01 00:00:00', '2025-02-01 00:00:00'),
(21, 30, 13, '2025-02-01 00:00:05', '2025-02-01 00:00:05'),
(22, 31, 13, '2025-02-01 00:00:09', '2025-02-01 00:00:09'),
(23, 32, 13, '2025-02-01 00:00:12', '2025-02-01 00:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `storesTime`
--

CREATE TABLE `storesTime` (
  `id` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `openAt` time NOT NULL DEFAULT '11:00:00',
  `closeAt` time NOT NULL DEFAULT '23:00:00',
  `day` int(11) NOT NULL,
  `isOpen` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storesTime`
--

INSERT INTO `storesTime` (`id`, `storeId`, `openAt`, `closeAt`, `day`, `isOpen`, `createdAt`, `updatedAt`) VALUES
(1, 10, '18:32:36', '23:50:00', 2, 1, '2025-02-20 17:33:15', '2025-05-05 13:04:09'),
(2, 10, '12:00:00', '23:50:00', 1, 1, '2025-02-23 08:55:27', '2025-05-03 23:10:09'),
(3, 10, '12:00:00', '23:00:00', 5, 1, '2025-02-23 08:55:50', '2025-02-23 08:55:50'),
(4, 10, '12:00:00', '23:50:00', 7, 1, '2025-02-23 08:56:15', '2025-05-02 21:50:32'),
(5, 10, '11:00:00', '23:00:00', 3, 1, '2025-02-23 08:56:24', '2025-05-05 13:07:18'),
(6, 10, '10:30:00', '22:45:00', 4, 1, '2025-02-23 08:59:33', '2025-02-23 09:00:21'),
(7, 10, '11:00:00', '23:00:00', 6, 0, '2025-02-23 09:15:58', '2025-02-23 09:16:06');

-- --------------------------------------------------------

--
-- Table structure for table `storeSubscriptions`
--

CREATE TABLE `storeSubscriptions` (
  `id` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `isPremium` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  `expireAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storeSubscriptions`
--

INSERT INTO `storeSubscriptions` (`id`, `storeId`, `points`, `isPremium`, `createdAt`, `updatedAt`, `expireAt`) VALUES
(1, 1, 236, 1, '2025-01-30 13:22:35', '2025-05-12 23:02:39', '2025-01-30 13:22:35'),
(2, 2, 88, 0, '2025-01-30 13:22:35', '2025-02-09 08:12:37', '2025-01-30 13:22:35'),
(3, 9, 48, 0, '2025-01-30 19:35:17', '2025-05-12 23:02:21', '2025-01-30 19:35:17'),
(5, 8, 0, 0, '2025-01-30 19:35:17', '2025-01-30 19:35:17', '2025-01-30 19:35:17'),
(6, 10, 969182, 1, '2025-01-30 20:22:48', '2025-05-16 15:30:48', '2025-10-30 20:22:48'),
(11, 17, 328, 1, '2025-01-31 19:51:22', '2025-02-19 18:49:00', '2025-05-19 23:59:59'),
(12, 18, 250, 0, '2025-03-02 00:13:13', '2025-03-02 00:13:13', '2025-03-02 00:13:13'),
(25, 31, 250, 0, '2025-03-03 01:01:14', '2025-03-03 01:01:14', '2025-03-03 01:01:14'),
(26, 32, 250, 0, '2025-03-03 01:26:21', '2025-03-03 01:26:21', '2025-03-03 01:26:21'),
(27, 33, 250, 0, '2025-03-04 03:17:04', '2025-03-04 03:17:04', '2025-03-04 03:17:04'),
(28, 34, 250, 0, '2025-03-04 03:18:44', '2025-03-04 03:18:44', '2025-03-04 03:18:44'),
(29, 35, 250, 0, '2025-03-04 03:19:25', '2025-03-04 03:19:25', '2025-03-04 03:19:25'),
(30, 36, 250, 0, '2025-03-04 03:19:57', '2025-03-04 03:19:57', '2025-03-04 03:19:57'),
(31, 37, 250, 0, '2025-03-04 03:20:38', '2025-03-04 03:20:38', '2025-03-04 03:20:38'),
(32, 38, 250, 0, '2025-03-04 03:21:13', '2025-03-04 03:21:13', '2025-03-04 03:21:13'),
(33, 39, 250, 0, '2025-03-04 03:23:04', '2025-03-04 03:23:04', '2025-03-04 03:23:04'),
(34, 40, 250, 0, '2025-03-04 03:23:49', '2025-03-04 03:23:49', '2025-03-04 03:23:49'),
(35, 41, 250, 0, '2025-03-04 03:24:32', '2025-03-04 03:24:32', '2025-03-04 03:24:32'),
(36, 42, 250, 0, '2025-03-04 03:25:48', '2025-03-04 03:25:48', '2025-03-04 03:25:48'),
(37, 43, 250, 0, '2025-03-04 03:27:32', '2025-03-04 03:27:32', '2025-03-04 03:27:32'),
(38, 44, 250, 0, '2025-03-04 03:28:12', '2025-03-04 03:28:12', '2025-03-04 03:28:12'),
(39, 45, 250, 0, '2025-03-04 14:05:17', '2025-03-04 14:05:17', '2025-03-04 14:05:17'),
(49, 55, 248, 0, '2025-03-04 14:38:46', '2025-03-04 15:08:59', '2025-03-04 14:38:46'),
(52, 58, 250, 0, '2025-03-09 05:00:25', '2025-03-09 05:00:25', '2025-03-09 05:00:25'),
(53, 59, 250, 0, '2025-03-09 05:01:17', '2025-03-09 05:01:17', '2025-03-09 05:01:17'),
(54, 60, 224, 0, '2025-03-09 18:09:53', '2025-03-10 05:10:17', '2025-03-09 18:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `storeTypes`
--

CREATE TABLE `storeTypes` (
  `id` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storeTypes`
--

INSERT INTO `storeTypes` (`id`, `storeId`, `typeId`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2024-12-07 17:21:03', '2024-12-07 17:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `secondName` varchar(30) DEFAULT NULL,
  `thirdName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) NOT NULL,
  `countryId` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `secondName`, `thirdName`, `lastName`, `countryId`, `phone`, `password`, `logo`, `createdAt`, `updatedAt`) VALUES
(1, 'مصطفى', 'اسماعيل', 'محمد', 'الضيفي', 1, '774519161', '$2y$12$7G2g8r4nh/Fd29/v8McFb.CXD3Oxfi88igEyM7Uo7doSsH5drzv92', 'OS5gAvRbLv_1747250188.jpg', '2025-05-14 22:16:28', '2025-05-14 22:16:28'),
(2, 'امجد', NULL, NULL, 'قائد', 1, '773068179', '$2y$12$7G2g8r4nh/Fd29/v8McFb.CXD3Oxfi88igEyM7Uo7doSsH5drzv92', NULL, '2025-01-01 09:27:48', '2025-01-01 09:27:48'),
(5, 'مطعم الأرض الخضراءءء', 'احمد', 'محمود', 'مطعم الأرض الخضراء', 1, '780222271', '$2y$12$FYkC5NBRHE.J4UBigIMDVOEuM5zl/lms9CM1tU6GVw7aaBgHOnYQa', 'RssXzAllbE_1745948326.jpg', '2025-04-29 20:38:46', '2025-05-01 22:37:53'),
(9, 'مطعم الأرض الخضراء', NULL, NULL, 'مطعم الأرض الخضراء', 1, '7802222722', '$2y$12$pEdsOfbE6Eae9cMObP1FkeP2F3xSGU6IrXbcgx0ey8UHAjTU.Psey', NULL, '2025-02-11 09:15:28', '2025-02-11 09:15:28'),
(10, 'محمد', NULL, NULL, 'محمد', 1, '773139293', '$2y$12$38cpwem9pfdcnwT5KRCzrO7ym4D6tHN395gQWy0w84DwDdNYJx1F6', NULL, '2025-04-24 12:17:28', '2025-04-24 12:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `usersSessions`
--

CREATE TABLE `usersSessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `deviceSessionId` int(11) NOT NULL,
  `isLogin` tinyint(4) NOT NULL DEFAULT 1,
  `loginCount` int(11) NOT NULL DEFAULT 1,
  `logoutCount` int(11) NOT NULL DEFAULT 0,
  `lastLoginAt` timestamp NOT NULL,
  `lastLogoutAt` timestamp NULL DEFAULT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usersSessions`
--

INSERT INTO `usersSessions` (`id`, `userId`, `deviceSessionId`, `isLogin`, `loginCount`, `logoutCount`, `lastLoginAt`, `lastLogoutAt`, `createdAt`, `updatedAt`) VALUES
(3, 1, 4, 0, 44, 14, '2025-05-12 22:58:38', '2025-05-14 23:37:12', '2024-12-04 18:07:08', '2025-05-14 23:37:12'),
(4, 1, 5, 0, 9, 0, '2024-12-04 23:26:48', NULL, '2024-12-04 18:47:13', '2025-01-19 17:48:26'),
(7, 1, 6, 1, 5, 0, '2025-05-12 22:38:38', NULL, '2024-12-06 14:21:15', '2025-05-12 22:38:38'),
(8, 1, 7, 1, 15, 10, '2025-05-14 22:43:39', '2025-05-14 22:35:11', '2025-01-01 17:04:33', '2025-05-14 22:43:39'),
(9, 2, 7, 0, 11, 3, '2025-02-05 17:59:11', '2025-03-11 17:03:30', '2025-01-01 17:10:42', '2025-03-11 17:03:30'),
(10, 2, 4, 1, 35, 21, '2025-05-14 23:38:06', '2025-05-12 22:58:26', '2025-01-01 20:46:26', '2025-05-14 23:38:06'),
(11, 2, 8, 0, 1, 0, '2025-01-11 09:48:00', NULL, '2025-01-11 09:48:00', '2025-01-11 09:48:00'),
(12, 2, 10, 0, 1, 0, '2025-01-11 22:34:34', NULL, '2025-01-11 22:34:34', '2025-01-11 22:34:34'),
(13, 1, 11, 0, 13, 0, '2025-01-12 21:22:53', NULL, '2025-01-12 18:21:00', '2025-01-19 17:48:26'),
(14, 1, 12, 0, 3, 2, '2025-05-13 00:36:46', '2025-05-13 22:16:30', '2025-01-17 23:21:53', '2025-05-13 22:16:30'),
(15, 5, 4, 0, 10, 8, '2025-04-29 09:20:40', '2025-04-29 09:20:52', '2025-01-31 18:01:37', '2025-04-29 09:20:52'),
(18, 9, 4, 0, 1, 1, '2025-02-11 10:31:56', '2025-02-11 18:56:34', '2025-02-11 10:31:56', '2025-02-11 18:56:34'),
(19, 2, 13, 0, 7, 6, '2025-02-19 10:33:46', '2025-02-19 13:26:48', '2025-02-14 14:41:52', '2025-02-19 13:26:48'),
(20, 5, 13, 0, 2, 2, '2025-02-19 18:37:23', '2025-02-19 20:53:21', '2025-02-19 13:27:05', '2025-02-19 20:53:21'),
(21, 5, 6, 1, 2, 1, '2025-04-28 07:56:51', '2025-03-11 17:02:31', '2025-02-28 09:35:50', '2025-04-28 07:56:51'),
(22, 2, 5, 0, 2, 2, '2025-03-06 16:40:59', '2025-03-09 05:06:52', '2025-03-06 16:06:44', '2025-03-09 05:06:52'),
(23, 1, 13, 0, 1, 1, '2025-03-06 23:45:01', '2025-03-07 03:10:47', '2025-03-06 23:45:01', '2025-03-07 03:10:47'),
(24, 1, 14, 0, 1, 1, '2025-04-23 22:50:52', '2025-05-12 22:38:29', '2025-04-23 22:50:52', '2025-05-12 22:38:29'),
(25, 10, 15, 1, 1, 0, '2025-04-24 12:17:49', NULL, '2025-04-24 12:17:49', '2025-04-24 12:17:49'),
(26, 1, 16, 1, 6, 3, '2025-04-24 21:37:46', '2025-04-24 21:37:28', '2025-04-24 17:23:07', '2025-04-24 21:37:46'),
(27, 5, 7, 0, 4, 4, '2025-05-02 20:40:18', '2025-05-09 00:06:29', '2025-04-29 10:36:50', '2025-05-09 00:06:29'),
(28, 5, 8, 0, 1, 1, '2025-05-09 00:12:38', '2025-05-09 22:31:52', '2025-05-09 00:12:38', '2025-05-09 22:31:52'),
(29, 2, 17, 1, 2, 1, '2025-05-11 23:20:29', '2025-05-11 23:20:22', '2025-05-09 20:27:41', '2025-05-11 23:20:29'),
(30, 1, 18, 0, 1, 1, '2025-05-11 23:23:19', '2025-05-13 00:36:34', '2025-05-11 23:23:19', '2025-05-13 00:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `youtube`
--

CREATE TABLE `youtube` (
  `id` int(11) NOT NULL,
  `isReels` tinyint(1) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `storeId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updateAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `youtube`
--

INSERT INTO `youtube` (`id`, `isReels`, `image`, `url`, `order`, `storeId`, `createdAt`, `updateAt`) VALUES
(1, 1, 'https://i.ytimg.com/vi/rMAol1wA5Zs/oar2.jpg', 'https://www.youtube.com/shorts/rMAol1wA5Zs', 1, 10, '2025-05-08 20:22:55', '2025-05-08 20:22:55'),
(2, 0, 'https://i.ytimg.com/vi/34aXhdIH1Hg/hq720.jpg', 'https://www.youtube.com/shorts/rMAol1wA5Zs', 1, 10, '2025-05-08 20:22:55', '2025-05-08 20:22:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessTokens`
--
ALTER TABLE `accessTokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userSessionId` (`userSessionId`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packageName` (`packageName`);

--
-- Indexes for table `appStores`
--
ALTER TABLE `appStores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appId` (`appId`),
  ADD KEY `storeId` (`storeId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_ibfk_1` (`storeId`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customPrices`
--
ALTER TABLE `customPrices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryMen`
--
ALTER TABLE `deliveryMen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devicesSessions`
--
ALTER TABLE `devicesSessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deviceId` (`deviceId`),
  ADD KEY `devicesSessions_ibfk_1` (`appId`);

--
-- Indexes for table `devicesSessionsIps`
--
ALTER TABLE `devicesSessionsIps`
  ADD KEY `deviceSessionId` (`deviceSessionId`);

--
-- Indexes for table `failProcesses`
--
ALTER TABLE `failProcesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `googleOrders`
--
ALTER TABLE `googleOrders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `googlePurchases`
--
ALTER TABLE `googlePurchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inAppProducts`
--
ALTER TABLE `inAppProducts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productId` (`productId`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainCategories`
--
ALTER TABLE `mainCategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myProcesses`
--
ALTER TABLE `myProcesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nestedSections`
--
ALTER TABLE `nestedSections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nestedSections_ibfk_1` (`storeId`),
  ADD KEY `nestedSections_ibfk_2` (`sectionId`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_ibfk_1` (`storeId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordersAmounts`
--
ALTER TABLE `ordersAmounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordersDelivery`
--
ALTER TABLE `ordersDelivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locationId` (`locationId`),
  ADD KEY `orderId` (`orderId`),
  ADD KEY `deliveryManId` (`deliveryManId`);

--
-- Indexes for table `orderSituations`
--
ALTER TABLE `orderSituations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordersPayments`
--
ALTER TABLE `ordersPayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordersProducts`
--
ALTER TABLE `ordersProducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderStatus`
--
ALTER TABLE `orderStatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentTypes`
--
ALTER TABLE `paymentTypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productImages`
--
ALTER TABLE `productImages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `storeId` (`storeId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeId` (`storeId`),
  ADD KEY `products_ibfk_2` (`nestedSectionId`);

--
-- Indexes for table `productViews`
--
ALTER TABLE `productViews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_ibfk_1` (`storeId`),
  ADD KEY `sections_ibfk_2` (`categoryId`);

--
-- Indexes for table `sharedableStores`
--
ALTER TABLE `sharedableStores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeId` (`storeId`);

--
-- Indexes for table `sharedStoresConfigs`
--
ALTER TABLE `sharedStoresConfigs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeId` (`storeId`),
  ADD KEY `storeIdReference` (`storeIdReference`);

--
-- Indexes for table `storeAddons`
--
ALTER TABLE `storeAddons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storeAds`
--
ALTER TABLE `storeAds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storeCategories`
--
ALTER TABLE `storeCategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeCategories_ibfk_1` (`storeId`),
  ADD KEY `storeCategories_ibfk_2` (`categoryId`);

--
-- Indexes for table `storeCurencies`
--
ALTER TABLE `storeCurencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storeDeliveryMen`
--
ALTER TABLE `storeDeliveryMen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_store_delivery` (`storeId`,`deliveryManId`),
  ADD KEY `deliveryManId` (`deliveryManId`);

--
-- Indexes for table `storeInfo`
--
ALTER TABLE `storeInfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `storeId` (`storeId`);

--
-- Indexes for table `storeNestedSections`
--
ALTER TABLE `storeNestedSections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sectionsStoreCategoryId` (`storeSectionId`),
  ADD KEY `category3Id` (`nestedSectionId`);

--
-- Indexes for table `storePaymentTypes`
--
ALTER TABLE `storePaymentTypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paymentTypeId` (`paymentTypeId`),
  ADD KEY `storeId` (`storeId`);

--
-- Indexes for table `storeProductAddons`
--
ALTER TABLE `storeProductAddons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeAddonsId` (`storeAddonsId`),
  ADD KEY `storeProductId` (`storeProductId`);

--
-- Indexes for table `storeProducts`
--
ALTER TABLE `storeProducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `storeId` (`storeId`),
  ADD KEY `optionId` (`optionId`),
  ADD KEY `storeCategoryId` (`storeNestedSectionId`),
  ADD KEY `currencyId` (`currencyId`),
  ADD KEY `productViewId` (`productViewId`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `storeSections`
--
ALTER TABLE `storeSections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeCategory1Id` (`storeCategoryId`),
  ADD KEY `sectionId` (`sectionId`);

--
-- Indexes for table `storesTime`
--
ALTER TABLE `storesTime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storeSubscriptions`
--
ALTER TABLE `storeSubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeId` (`storeId`);

--
-- Indexes for table `storeTypes`
--
ALTER TABLE `storeTypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeTypes_ibfk_1` (`storeId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersSessions`
--
ALTER TABLE `usersSessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `deviceSessionId` (`deviceSessionId`);

--
-- Indexes for table `youtube`
--
ALTER TABLE `youtube`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessTokens`
--
ALTER TABLE `accessTokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `appStores`
--
ALTER TABLE `appStores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customPrices`
--
ALTER TABLE `customPrices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveryMen`
--
ALTER TABLE `deliveryMen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `devicesSessions`
--
ALTER TABLE `devicesSessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failProcesses`
--
ALTER TABLE `failProcesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `googleOrders`
--
ALTER TABLE `googleOrders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `googlePurchases`
--
ALTER TABLE `googlePurchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `inAppProducts`
--
ALTER TABLE `inAppProducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `mainCategories`
--
ALTER TABLE `mainCategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `myProcesses`
--
ALTER TABLE `myProcesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nestedSections`
--
ALTER TABLE `nestedSections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `ordersAmounts`
--
ALTER TABLE `ordersAmounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `ordersDelivery`
--
ALTER TABLE `ordersDelivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orderSituations`
--
ALTER TABLE `orderSituations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ordersPayments`
--
ALTER TABLE `ordersPayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ordersProducts`
--
ALTER TABLE `ordersProducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `orderStatus`
--
ALTER TABLE `orderStatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `paymentTypes`
--
ALTER TABLE `paymentTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `productImages`
--
ALTER TABLE `productImages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `productViews`
--
ALTER TABLE `productViews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sharedableStores`
--
ALTER TABLE `sharedableStores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sharedStoresConfigs`
--
ALTER TABLE `sharedStoresConfigs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `storeAddons`
--
ALTER TABLE `storeAddons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `storeAds`
--
ALTER TABLE `storeAds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `storeCategories`
--
ALTER TABLE `storeCategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `storeCurencies`
--
ALTER TABLE `storeCurencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `storeDeliveryMen`
--
ALTER TABLE `storeDeliveryMen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `storeInfo`
--
ALTER TABLE `storeInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `storeNestedSections`
--
ALTER TABLE `storeNestedSections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `storePaymentTypes`
--
ALTER TABLE `storePaymentTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `storeProductAddons`
--
ALTER TABLE `storeProductAddons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `storeProducts`
--
ALTER TABLE `storeProducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `storeSections`
--
ALTER TABLE `storeSections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `storesTime`
--
ALTER TABLE `storesTime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `storeSubscriptions`
--
ALTER TABLE `storeSubscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `storeTypes`
--
ALTER TABLE `storeTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `usersSessions`
--
ALTER TABLE `usersSessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `youtube`
--
ALTER TABLE `youtube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessTokens`
--
ALTER TABLE `accessTokens`
  ADD CONSTRAINT `accessTokens_ibfk_1` FOREIGN KEY (`userSessionId`) REFERENCES `usersSessions` (`id`);

--
-- Constraints for table `appStores`
--
ALTER TABLE `appStores`
  ADD CONSTRAINT `appStores_ibfk_1` FOREIGN KEY (`appId`) REFERENCES `apps` (`id`),
  ADD CONSTRAINT `appStores_ibfk_2` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`);

--
-- Constraints for table `deliveryMen`
--
ALTER TABLE `deliveryMen`
  ADD CONSTRAINT `deliveryMen_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `devicesSessions`
--
ALTER TABLE `devicesSessions`
  ADD CONSTRAINT `devicesSessions_ibfk_1` FOREIGN KEY (`appId`) REFERENCES `apps` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `devicesSessions_ibfk_2` FOREIGN KEY (`deviceId`) REFERENCES `devices` (`id`);

--
-- Constraints for table `devicesSessionsIps`
--
ALTER TABLE `devicesSessionsIps`
  ADD CONSTRAINT `devicesSessionsIps_ibfk_1` FOREIGN KEY (`deviceSessionId`) REFERENCES `devicesSessions` (`id`);

--
-- Constraints for table `nestedSections`
--
ALTER TABLE `nestedSections`
  ADD CONSTRAINT `nestedSections_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `nestedSections_ibfk_2` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`);

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ordersDelivery`
--
ALTER TABLE `ordersDelivery`
  ADD CONSTRAINT `ordersDelivery_ibfk_1` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `ordersDelivery_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ordersDelivery_ibfk_3` FOREIGN KEY (`deliveryManId`) REFERENCES `deliveryMen` (`id`);

--
-- Constraints for table `productImages`
--
ALTER TABLE `productImages`
  ADD CONSTRAINT `productImages_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `productImages_ibfk_2` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`nestedSectionId`) REFERENCES `nestedSections` (`id`);

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sections_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sharedableStores`
--
ALTER TABLE `sharedableStores`
  ADD CONSTRAINT `sharedableStores_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`);

--
-- Constraints for table `sharedStoresConfigs`
--
ALTER TABLE `sharedStoresConfigs`
  ADD CONSTRAINT `sharedStoresConfigs_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sharedStoresConfigs_ibfk_2` FOREIGN KEY (`storeIdReference`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `storeCategories`
--
ALTER TABLE `storeCategories`
  ADD CONSTRAINT `storeCategories_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `storeCategories_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `storeDeliveryMen`
--
ALTER TABLE `storeDeliveryMen`
  ADD CONSTRAINT `storeDeliveryMen_ibfk_1` FOREIGN KEY (`deliveryManId`) REFERENCES `deliveryMen` (`id`),
  ADD CONSTRAINT `storeDeliveryMen_ibfk_2` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`);

--
-- Constraints for table `storeInfo`
--
ALTER TABLE `storeInfo`
  ADD CONSTRAINT `storeInfo_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`);

--
-- Constraints for table `storeNestedSections`
--
ALTER TABLE `storeNestedSections`
  ADD CONSTRAINT `storeNestedSections_ibfk_1` FOREIGN KEY (`storeSectionId`) REFERENCES `storeSections` (`id`),
  ADD CONSTRAINT `storeNestedSections_ibfk_2` FOREIGN KEY (`nestedSectionId`) REFERENCES `nestedSections` (`id`);

--
-- Constraints for table `storePaymentTypes`
--
ALTER TABLE `storePaymentTypes`
  ADD CONSTRAINT `storePaymentTypes_ibfk_1` FOREIGN KEY (`paymentTypeId`) REFERENCES `paymentTypes` (`id`),
  ADD CONSTRAINT `storePaymentTypes_ibfk_2` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`);

--
-- Constraints for table `storeProductAddons`
--
ALTER TABLE `storeProductAddons`
  ADD CONSTRAINT `storeProductAddons_ibfk_1` FOREIGN KEY (`storeAddonsId`) REFERENCES `storeAddons` (`id`),
  ADD CONSTRAINT `storeProductAddons_ibfk_2` FOREIGN KEY (`storeProductId`) REFERENCES `storeProducts` (`id`);

--
-- Constraints for table `storeProducts`
--
ALTER TABLE `storeProducts`
  ADD CONSTRAINT `storeProducts_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `storeProducts_ibfk_2` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `storeProducts_ibfk_3` FOREIGN KEY (`optionId`) REFERENCES `options` (`id`),
  ADD CONSTRAINT `storeProducts_ibfk_4` FOREIGN KEY (`storeNestedSectionId`) REFERENCES `storeNestedSections` (`id`),
  ADD CONSTRAINT `storeProducts_ibfk_5` FOREIGN KEY (`currencyId`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `storeProducts_ibfk_6` FOREIGN KEY (`productViewId`) REFERENCES `productViews` (`id`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `storeSections`
--
ALTER TABLE `storeSections`
  ADD CONSTRAINT `storeSections_ibfk_1` FOREIGN KEY (`storeCategoryId`) REFERENCES `storeCategories` (`id`),
  ADD CONSTRAINT `storeSections_ibfk_2` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`);

--
-- Constraints for table `storeSubscriptions`
--
ALTER TABLE `storeSubscriptions`
  ADD CONSTRAINT `storeSubscriptions_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`);

--
-- Constraints for table `storeTypes`
--
ALTER TABLE `storeTypes`
  ADD CONSTRAINT `storeTypes_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usersSessions`
--
ALTER TABLE `usersSessions`
  ADD CONSTRAINT `usersSessions_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `usersSessions_ibfk_2` FOREIGN KEY (`deviceSessionId`) REFERENCES `devicesSessions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
