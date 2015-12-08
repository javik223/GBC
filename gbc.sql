-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2015 at 03:46 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gbc`
--

-- --------------------------------------------------------

--
-- Table structure for table `craft_amnav_navs`
--

CREATE TABLE `craft_amnav_navs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_amnav_navs`
--

INSERT INTO `craft_amnav_navs` (`id`, `name`, `handle`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Main', 'main', '{"entrySources":"*","maxLevels":"","canMoveFromLevel":"","canDeleteFromLevel":""}', '2015-11-17 07:55:04', '2015-11-17 07:55:04', '578a6e59-f34b-41ff-9b0b-9970513754ac');

-- --------------------------------------------------------

--
-- Table structure for table `craft_amnav_nodes`
--

CREATE TABLE `craft_amnav_nodes` (
  `id` int(11) NOT NULL,
  `navId` int(10) NOT NULL,
  `parentId` int(10) DEFAULT NULL,
  `order` int(10) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `elementId` int(10) DEFAULT NULL,
  `elementType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_amnav_nodes`
--

INSERT INTO `craft_amnav_nodes` (`id`, `navId`, `parentId`, `order`, `name`, `url`, `listClass`, `blank`, `enabled`, `elementId`, `elementType`, `locale`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 0, 0, 'Home', '/', NULL, 0, 1, NULL, NULL, 'en_us', '2015-11-17 07:55:33', '2015-11-17 14:20:42', '4cda4f4f-3616-45d3-8b00-c195a1dc3776'),
(2, 1, 0, 5, 'Careers', NULL, NULL, 0, 1, 6, 'Entry', 'en_us', '2015-11-17 08:50:47', '2015-11-17 14:20:42', 'c4dd3491-4280-4cb2-bf59-66f136a13c43'),
(3, 1, 0, 4, 'Contact', NULL, NULL, 0, 1, 9, 'Entry', 'en_us', '2015-11-17 09:42:31', '2015-11-19 23:18:49', '8679bacb-888c-494b-852a-ed0861b8fa61'),
(7, 1, 0, 1, 'About', NULL, NULL, 0, 1, 21, 'Entry', 'en_us', '2015-11-17 12:39:25', '2015-11-20 14:44:02', '0eb0976c-2bce-44ba-91c6-766838a5d7f3'),
(8, 1, 0, 2, 'Expertise', NULL, NULL, 0, 1, 25, 'Entry', 'en_us', '2015-11-17 13:17:45', '2015-11-20 08:10:25', '9c578ff5-c226-4668-894f-4cffe1966710'),
(9, 1, 0, 3, 'Publications', NULL, NULL, 0, 1, 39, 'Entry', 'en_us', '2015-11-17 14:20:35', '2015-11-17 14:20:42', '641aa5ca-7b4b-477b-ad97-f2d8d8c257d0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfiles`
--

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetfiles`
--

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 1, 1, 'careers.jpg', 'image', 911, 1000, 117788, '2015-11-17 09:24:47', '2015-11-17 09:11:25', '2015-11-17 09:24:47', 'e79c7cf9-7099-4b5f-b615-8ed98d83047b'),
(10, 1, 1, 'contact-bg.jpg', 'image', 1800, 894, 157450, '2015-11-17 09:39:50', '2015-11-17 09:39:50', '2015-11-17 09:39:50', '1210b980-ba80-434e-9743-963eb60a7f59'),
(11, 1, 1, 'gbenga.jpg', 'image', 710, 920, 54240, '2015-11-17 11:23:38', '2015-11-17 11:23:38', '2015-11-17 11:23:38', '59d1bfb4-d344-4c5e-9e5a-cc3d4f313264'),
(12, 1, 1, 'gbenga-biobaku.jpg', 'image', 1278, 968, 290088, '2015-11-17 11:24:41', '2015-11-17 11:24:41', '2015-11-17 11:24:41', 'f2a3bffb-5d1e-48ef-aa6b-54f18c6122eb'),
(14, 1, 1, 'gbenga_1.jpg', 'image', 710, 920, 54240, '2015-11-17 11:37:11', '2015-11-17 11:37:11', '2015-11-17 11:37:11', '88057c0e-fe37-4577-9af6-b1d0288ac1b1'),
(15, 1, 1, 'gbenga-biobaku_1.jpg', 'image', 1278, 968, 290088, '2015-11-17 11:37:19', '2015-11-17 11:37:19', '2015-11-17 11:37:19', 'c1e9f75c-4441-4cee-b87b-b6d1f483d988'),
(23, 1, 1, '1.jpg', 'image', 710, 920, 366820, '2015-11-17 12:52:28', '2015-11-17 12:52:28', '2015-11-17 12:52:28', '3de39046-dc0c-44be-b198-bf1559a1c50d'),
(31, 4, 4, 'The-Exclusive-Jurisdiction-of-the-National-Industrial-Court.pdf', 'pdf', NULL, NULL, 400331, '2015-11-17 14:13:21', '2015-11-17 14:13:21', '2015-11-17 14:13:21', '8c6e07f2-8e2a-4035-a95c-e3f0b0ddc6ab'),
(33, 4, 4, 'Arbitrability-of-tax-issues-arising-from-production-sharing-contracts.pdf', 'pdf', NULL, NULL, 692658, '2015-11-17 14:14:55', '2015-11-17 14:14:55', '2015-11-17 14:14:55', 'dfa37b34-a442-44fd-bcd0-bfcde785425e'),
(37, 4, 4, 'investing_in_Nigeria_OandG-Industry.pdf', 'pdf', NULL, NULL, 181762, '2015-11-17 14:18:48', '2015-11-17 14:18:48', '2015-11-17 14:18:48', '6bb9952e-ad0c-439a-ad8c-42e462bc2313'),
(40, 1, 1, 'gbc-corporate-practice.jpg', 'image', 2000, 993, 520362, '2015-11-17 15:35:06', '2015-11-17 15:30:14', '2015-11-17 15:35:06', '32b21f22-f780-45f9-bb0d-2d2fa0bb0c03'),
(42, 1, 1, 'gbc-modern-law-firm.jpg', 'image', 2000, 993, 213497, '2015-11-17 15:35:39', '2015-11-17 15:35:40', '2015-11-17 15:35:40', 'ebe2de01-4f09-4996-a66d-ad7df5b97bb7'),
(43, 1, 1, 'ijeoma-abalogu2.jpg', 'image', 710, 920, 241191, '2015-11-17 17:00:04', '2015-11-17 17:00:04', '2015-11-17 18:44:04', 'd396115d-4b70-4ec2-834a-505aa58b3d0b'),
(50, 1, 1, 'ijeoma-abalogu.jpg', 'image', 1278, 968, 244671, '2015-11-17 17:43:45', '2015-11-17 17:39:29', '2015-11-17 17:43:45', '937eaaba-f397-4c98-9a33-23914632c1d3'),
(52, 1, 1, 'nkoyo-rapu.jpg', 'image', 1278, 968, 187804, '2015-11-17 17:57:10', '2015-11-17 17:57:10', '2015-11-17 17:57:10', '1707d264-6965-4f5e-950b-ccc86cfd2f0d'),
(53, 1, 1, '6.jpg', 'image', 710, 920, 142423, '2015-11-17 18:19:11', '2015-11-17 18:19:11', '2015-11-17 18:19:11', 'c3533648-a6e2-457b-ba29-e73ae00e25fc'),
(54, 1, 1, 'okey-nwanya.jpg', 'image', 1278, 968, 241898, '2015-11-17 18:25:05', '2015-11-17 18:22:06', '2015-11-17 18:25:06', '01ebc95a-ec16-4a11-af34-e5bc2c9a6e20'),
(57, 1, 1, 'sogo-akinola.jpg', 'image', 710, 920, 296391, '2015-11-17 18:36:19', '2015-11-17 18:36:19', '2015-11-17 18:36:38', 'de4f2356-54f9-4cb6-be4b-2b3a789d78ba'),
(58, 1, 1, 'sogo-akinola_2.jpg', 'image', 1278, 968, 247919, '2015-11-17 18:44:24', '2015-11-17 18:39:34', '2015-11-17 18:44:24', '098fd3a9-0ebf-41ef-b63c-b4eed404d7bf'),
(61, 1, 1, 'sandra-asuzu.jpg', 'image', 710, 920, 96719, '2015-11-17 19:22:03', '2015-11-17 18:50:45', '2015-11-17 19:22:04', '1830aae1-ea9f-474e-93ec-120cde555fd5'),
(62, 1, 1, 'sandra-asuzu_1.jpg', 'image', 1278, 968, 126619, '2015-11-17 18:54:25', '2015-11-17 18:54:25', '2015-11-17 18:54:25', 'cdb79b38-70b9-4122-8400-6ef5fd883bc4'),
(64, 1, 1, '3.jpg', 'image', 710, 920, 270257, '2015-11-17 19:06:07', '2015-11-17 19:06:07', '2015-11-17 19:06:07', '636bf2c2-b480-48dc-9412-cb7d82675002'),
(65, 1, 1, 'ayoade-oluwasanmi.jpg', 'image', 1278, 968, 208593, '2015-11-17 19:09:13', '2015-11-17 19:09:13', '2015-11-17 19:09:13', '8ffc93f8-dd00-4aae-9cbf-d7ee4437916f'),
(68, 1, 1, 'edward-vera-cruz2.jpg', 'image', 1278, 968, 116065, '2015-11-17 19:36:55', '2015-11-17 19:36:55', '2015-11-17 19:36:55', 'df9de89e-1160-42ec-bcc1-bf8a8db1bc35'),
(69, 1, 1, 'edward-vera-cruz.jpg', 'image', 710, 920, 106454, '2015-11-17 19:46:03', '2015-11-17 19:38:25', '2015-11-17 19:46:03', '5451bbe4-17e1-47e3-907f-704df6409b36'),
(74, 1, 1, 'blank.jpg', 'image', 710, 920, 8205, '2015-11-17 20:11:17', '2015-11-17 20:11:17', '2015-11-17 20:11:17', '8fa5885b-8f36-4f81-b58b-c19276475b91'),
(75, 1, 1, 'blank2.jpg', 'image', 1278, 968, 15048, '2015-11-17 20:11:26', '2015-11-17 20:11:26', '2015-11-17 20:11:26', 'a2111c12-3d65-4e0b-b8f9-22503c62b9cb'),
(76, 1, 1, 'blank2_1.jpg', 'image', 1278, 968, 15048, '2015-11-17 20:11:38', '2015-11-17 20:11:38', '2015-11-17 20:11:38', '2a74900d-17c4-4ddf-ad14-528e4c87512c'),
(77, 1, 1, 'blank_1.jpg', 'image', 710, 920, 8205, '2015-11-17 20:11:41', '2015-11-17 20:11:41', '2015-11-17 20:11:41', '2d1b5a0d-c8fa-4aa0-83be-a0af210a2a77'),
(79, 2, 2, 'exxon-mobil.jpg', 'image', 250, 150, 6762, '2015-11-20 00:46:00', '2015-11-20 00:46:00', '2015-11-20 00:46:00', '59f05fce-26ea-48f4-b7d1-b8d8e720b303'),
(80, 2, 2, 'statoil-ngieria.jpg', 'image', 250, 150, 4391, '2015-11-20 00:46:22', '2015-11-20 00:46:22', '2015-11-20 00:46:22', 'c297e463-225f-430e-abd6-9ef2aa731cd0'),
(81, 2, 2, 'baker-hughes.jpg', 'image', 250, 150, 6047, '2015-11-20 00:46:35', '2015-11-20 00:46:35', '2015-11-20 00:46:35', '276b9dfd-c78e-4ed0-a71e-96c3cfb7e3ab'),
(83, 1, 1, 'gbenga-biobaku-and-co-gbc.jpg', 'image', 400, 200, 8590, '2015-11-20 01:00:20', '2015-11-20 01:00:20', '2015-11-20 01:00:20', 'ece4e9ae-e525-4e21-85b5-c314fc386b9a'),
(84, 2, 2, 'bj-services-nigeria.jpg', 'image', 250, 150, 4480, '2015-11-20 01:04:03', '2015-11-20 01:04:03', '2015-11-20 01:04:03', 'c04896e9-bb3f-406e-89dc-b91da18c46b9'),
(85, 2, 2, 'parker-drilling.jpg', 'image', 250, 150, 4420, '2015-11-20 01:04:40', '2015-11-20 01:04:41', '2015-11-20 01:04:41', 'a26a2d0f-21b8-4847-b12e-fb051ef900b4'),
(86, 2, 2, 'oceaneering-nigeria.jpg', 'image', 250, 150, 6285, '2015-11-20 01:05:01', '2015-11-20 01:05:01', '2015-11-20 01:05:01', '2dd9089b-c88c-44aa-a7d7-f1a2ff0191bd'),
(87, 2, 2, 'african-capital-alliance.jpg', 'image', 250, 150, 5480, '2015-11-20 01:05:34', '2015-11-20 01:05:34', '2015-11-20 01:06:20', '16b5fe10-3a24-4e1b-af00-f4b04d030ad8'),
(88, 2, 2, 'rhino-linings-nigeria.jpg', 'image', 250, 150, 5593, '2015-11-20 01:05:46', '2015-11-20 01:05:46', '2015-11-20 01:06:10', 'f43738c7-692a-4f1c-a0c1-6641975e5635'),
(89, 1, 1, 'pentagon-petroleum-limited.jpg', 'image', 250, 150, 7882, '2015-11-20 01:06:45', '2015-11-20 01:06:45', '2015-11-20 01:06:45', '61ec6105-1cda-4f14-8fe6-cce8f31cd2bc'),
(98, 2, 2, 'pentagon-petroleum-limited.jpg', 'image', 250, 150, 7882, '2015-11-20 01:08:25', '2015-11-20 01:08:25', '2015-11-20 01:08:25', '94aee05b-dad3-4cb9-8f11-2572f0d7acd3'),
(99, 2, 2, 'taba-nigeria.jpg', 'image', 250, 150, 3555, '2015-11-20 01:08:39', '2015-11-20 01:08:39', '2015-11-20 01:08:39', 'd7ce9a7c-41fa-4134-8880-3a162ae6e2f2'),
(105, 1, 1, 'employee-for-life.jpg', 'image', 350, 230, 4504, '2015-11-20 13:34:28', '2015-11-20 13:34:28', '2015-11-20 13:34:28', '2a429f86-99ff-4875-a948-2dc6cb0254e2'),
(106, 4, 4, 'NEW-MINERALS-AND-MINING-REGULATIONS-2011.pdf', 'pdf', NULL, NULL, 30946, '2015-11-20 14:17:31', '2015-11-20 14:17:31', '2015-11-20 14:17:31', 'c155cded-9214-4a14-977a-7b3f1334567d'),
(108, 4, 4, 'NOGICD-Act-2010-NEWSLETTER.pdf', 'pdf', NULL, NULL, 24358, '2015-11-20 14:18:08', '2015-11-20 14:18:09', '2015-11-20 14:18:09', 'fbbb57ac-8f0d-4f78-babc-d6b1de059c20'),
(110, 4, 4, 'Employees-Compensation-Act-2010.pdf', 'pdf', NULL, NULL, 305916, '2015-11-20 14:19:05', '2015-11-20 14:19:05', '2015-11-20 14:19:05', '0640c9be-5f99-4f3a-92ff-6b9a89045cb7'),
(112, 4, 4, 'ROADMAP-FOR-POWER-SECTOR-REFORM.pdf', 'pdf', NULL, NULL, 244728, '2015-11-20 14:19:35', '2015-11-20 14:19:36', '2015-11-20 14:19:36', 'b9ca79d9-efc0-4579-a529-6452099f4924'),
(114, 4, 4, 'investing_in_Nigeria_OandG-Industry_1.pdf', 'pdf', NULL, NULL, 181762, '2015-11-20 14:20:00', '2015-11-20 14:20:00', '2015-11-20 14:20:00', '7e0d9360-1e19-4f45-a446-4a594ce4934e'),
(116, 4, 4, 'TAXATION_OF_EXPATRIATES_IN_NIGERIA.pdf', 'pdf', NULL, NULL, 73713, '2015-11-20 14:20:44', '2015-11-20 14:20:44', '2015-11-20 14:20:44', 'cca88e0b-b125-4e45-9d7b-eabe7b841a13'),
(118, 4, 4, 'Mining_in_Nigeria.pdf', 'pdf', NULL, NULL, 149027, '2015-11-20 14:21:18', '2015-11-20 14:21:18', '2015-11-20 14:21:18', '3e1cff08-c565-4b3f-a1ad-701bc8c54f6e'),
(120, 4, 4, 'investors_guide.pdf', 'pdf', NULL, NULL, 141924, '2015-11-20 14:22:42', '2015-11-20 14:22:42', '2015-11-20 14:22:42', 'd20e3d2b-e15d-4689-ad76-9f06b9d8c1d1'),
(122, 4, 4, 'cabotage-regime.pdf', 'pdf', NULL, NULL, 904957, '2015-11-20 14:23:36', '2015-11-20 14:23:36', '2015-11-20 14:23:36', '1dce6f1c-5618-4d5f-8bee-f0da517b9962'),
(124, 4, 4, 'Recent-bank-regulations.pdf', 'pdf', NULL, NULL, 1079429, '2015-11-20 14:24:13', '2015-11-20 14:24:13', '2015-11-20 14:24:13', 'f0a1e997-0531-436a-b50f-a3f67f36ad48'),
(126, 4, 4, 'Nigeria-Sao-tome-principe.pdf', 'pdf', NULL, NULL, 707939, '2015-11-20 14:25:06', '2015-11-20 14:25:06', '2015-11-20 14:25:06', 'b6ecfbf5-7d7c-4559-83f7-fc60cc64164b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfolders`
--

CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetfolders`
--

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Image', '', '2015-11-17 07:49:49', '2015-11-17 07:49:49', 'b5cb9903-7640-4157-ad73-c6a9f8fdf27d'),
(2, NULL, 2, 'Clients', '', '2015-11-17 08:00:19', '2015-11-17 08:00:19', '51315938-57b7-4822-8d7f-9ecde9cf0d22'),
(3, NULL, 3, 'Team', '', '2015-11-17 08:00:40', '2015-11-17 08:00:40', 'bc1dc9a2-d192-4f44-96dc-e3e78b395322'),
(4, NULL, 4, 'Publications', '', '2015-11-17 14:03:56', '2015-11-17 14:03:56', '51c82106-e826-4463-a783-5f5290c422d0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetindexdata`
--

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetsources`
--

CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetsources`
--

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Image', 'image', 'Local', '{"path":"assets\\/images\\/","url":"\\/assets\\/images\\/"}', 1, 6, '2015-11-17 07:49:49', '2015-11-17 07:49:49', 'cd06de6b-6e7e-42b7-ade1-af0e3d226f1b'),
(2, 'Clients', 'clients', 'Local', '{"path":"assets\\/images\\/clients\\/","url":"\\/assets\\/images\\/clients\\/"}', 2, 7, '2015-11-17 08:00:19', '2015-11-17 08:00:19', '0927600c-71e9-4cb8-b4bc-cff51934a2e2'),
(3, 'Team', 'team', 'Local', '{"path":"assets\\/images\\/team\\/","url":"\\/assets\\/images\\/team\\/"}', 3, 8, '2015-11-17 08:00:40', '2015-11-17 08:00:40', '2a34fc1d-ff21-4e2d-86ff-26ff0a874d05'),
(4, 'Publications', 'publications', 'Local', '{"path":"assets\\/publications\\/","url":"\\/assets\\/publications\\/"}', 4, 42, '2015-11-17 14:03:56', '2015-11-17 14:03:56', 'fb2ec036-ec9c-418f-a89c-5ea7481521ca');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransformindex`
--

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assettransformindex`
--

INSERT INTO `craft_assettransformindex` (`id`, `fileId`, `filename`, `format`, `location`, `sourceId`, `fileExists`, `inProgress`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 23, '1.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 15:56:52', '2015-11-17 15:56:52', '2015-11-17 15:56:53', 'fd92d6ed-75cc-4615-8f98-1c2e8f0afc17'),
(2, 12, 'gbenga-biobaku.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 15:59:44', '2015-11-17 15:59:44', '2015-11-17 15:59:45', 'ff7177b8-ac16-4c8e-b9a5-a48dd6afc10a'),
(3, 10, 'contact-bg.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 17:06:14', '2015-11-17 17:06:14', '2015-11-17 17:06:15', '795800ac-3fd9-49a4-b4bf-1c504a824ca1'),
(4, 43, 'ijeoma-abalogu2.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 17:06:44', '2015-11-17 17:06:44', '2015-11-17 18:44:04', 'ec528870-49b1-49f4-a173-f21bf4f21d56'),
(5, 7, 'careers.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 17:27:04', '2015-11-17 17:27:04', '2015-11-17 17:27:05', 'ef66429a-0e0e-46a1-a685-231c4a62056a'),
(7, 50, 'ijeoma-abalogu.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 17:43:49', '2015-11-17 17:43:49', '2015-11-17 17:43:54', 'c6b2f1fb-b142-4751-84f0-8c8db87beb41'),
(8, 52, 'nkoyo-rapu.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 17:57:26', '2015-11-17 17:57:26', '2015-11-17 17:57:26', '54c60c01-e041-482e-8c70-2ebd9da964e6'),
(10, 54, 'okey-nwanya.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 18:25:11', '2015-11-17 18:25:11', '2015-11-17 18:25:13', '2ecc59a9-1170-4577-8331-59f0b7a92cc9'),
(12, 58, 'sogo-akinola_2.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 18:44:30', '2015-11-17 18:44:30', '2015-11-17 18:44:36', '3511e4bc-aea7-44a7-b303-e6cd0002a54a'),
(13, 62, 'sandra-asuzu_1.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 18:56:53', '2015-11-17 18:56:53', '2015-11-17 18:56:53', '14fe8926-1b7f-40bd-a859-a761cc2f3546'),
(14, 65, 'ayoade-oluwasanmi.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 19:13:03', '2015-11-17 19:13:03', '2015-11-17 19:13:04', '67d6bc56-a29f-48a8-a88d-88e523b8b4da'),
(15, 68, 'edward-vera-cruz2.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 19:46:12', '2015-11-17 19:46:12', '2015-11-17 19:46:13', '121390a1-f9ab-4b0f-becf-1249f476aac0'),
(16, 76, 'blank2_1.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 20:12:01', '2015-11-17 20:12:01', '2015-11-17 20:12:02', '2352e3f6-cbdf-42a0-b1f4-05c428faf57a'),
(17, 75, 'blank2.jpg', NULL, '_small', 1, 1, 0, '2015-11-17 20:20:34', '2015-11-17 20:20:34', '2015-11-17 20:20:34', 'b26f58b3-30f3-4609-a147-7137afc95b00'),
(18, 83, 'gbenga-biobaku-and-co-gbc.jpg', NULL, '_small', 1, 1, 0, '2015-11-20 01:00:36', '2015-11-20 01:00:36', '2015-11-20 01:00:38', '9311b98d-84b8-43d1-b865-0e1b4ae6bcb3'),
(19, 105, 'employee-for-life.jpg', NULL, '_small', 1, 1, 0, '2015-11-20 13:34:38', '2015-11-20 13:34:38', '2015-11-20 13:34:39', '0a0bd9ec-40c7-438f-835b-c579f039f54a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransforms`
--

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assettransforms`
--

INSERT INTO `craft_assettransforms` (`id`, `name`, `handle`, `mode`, `position`, `height`, `width`, `format`, `quality`, `dimensionChangeTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Small', 'small', 'crop', 'center-center', 300, 300, NULL, 60, '2015-11-17 09:13:44', '2015-11-17 09:13:31', '2015-11-17 09:13:44', 'e6193b93-c1db-4907-8a00-ae7a62f3f370');

-- --------------------------------------------------------

--
-- Table structure for table `craft_categories`
--

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups`
--

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups_i18n`
--

CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_content`
--

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_seoTitle` text COLLATE utf8_unicode_ci,
  `field_seoAuthor` text COLLATE utf8_unicode_ci,
  `field_seoCanonical` text COLLATE utf8_unicode_ci,
  `field_seoDescription` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_seoKeywords` text COLLATE utf8_unicode_ci,
  `field_seoType` text COLLATE utf8_unicode_ci,
  `field_aboutText` text COLLATE utf8_unicode_ci,
  `field_bodyContent` text COLLATE utf8_unicode_ci,
  `field_clientsText` text COLLATE utf8_unicode_ci,
  `field_position` text COLLATE utf8_unicode_ci,
  `field_intro` text COLLATE utf8_unicode_ci,
  `field_education` text COLLATE utf8_unicode_ci,
  `field_expertise` text COLLATE utf8_unicode_ci,
  `field_memberships` text COLLATE utf8_unicode_ci,
  `field_experiences` text COLLATE utf8_unicode_ci,
  `field_awards` text COLLATE utf8_unicode_ci,
  `field_relevantExperiences` text COLLATE utf8_unicode_ci,
  `field_relevantExperiencesIntro` text COLLATE utf8_unicode_ci,
  `field_summary` text COLLATE utf8_unicode_ci,
  `field_appointments` text COLLATE utf8_unicode_ci,
  `field_consultancyRecord` text COLLATE utf8_unicode_ci,
  `field_languages` text COLLATE utf8_unicode_ci,
  `field_client` text COLLATE utf8_unicode_ci,
  `field_overview` text COLLATE utf8_unicode_ci,
  `field_solution` text COLLATE utf8_unicode_ci,
  `field_benefit` text COLLATE utf8_unicode_ci,
  `field_suitDetail` text COLLATE utf8_unicode_ci,
  `field_description` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_seoTitle`, `field_seoAuthor`, `field_seoCanonical`, `field_seoDescription`, `field_seoKeywords`, `field_seoType`, `field_aboutText`, `field_bodyContent`, `field_clientsText`, `field_position`, `field_intro`, `field_education`, `field_expertise`, `field_memberships`, `field_experiences`, `field_awards`, `field_relevantExperiences`, `field_relevantExperiencesIntro`, `field_summary`, `field_appointments`, `field_consultancyRecord`, `field_languages`, `field_client`, `field_overview`, `field_solution`, `field_benefit`, `field_suitDetail`, `field_description`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-13 22:54:17', '2015-11-13 22:54:17', 'b60b4d01-9d64-4a74-97d5-e3540163744b'),
(2, 2, 'en_us', 'Homepage Gbenga Biobaku & Co.', '<p>It’s true, this site doesn’t have a whole lot of content yet, but don’t worry. Our web developers have just installed the CMS, and they’re setting things up for the content editors this very moment. Soon Gbc.dev will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.</p>', 'GBC', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-13 22:54:20', '2015-11-17 15:35:51', '40274d15-7ce1-4324-844d-c2a3929f8d71'),
(6, 6, 'en_us', 'Careers', '<p>We believe that the key to our success is not only the knowledge of our client’s industry and our general commercial awareness, but our interest in recruiting highly capable individuals and providing a very conducive environment to nurture their ambitions to reach for the top.</p>\r\n\r\n\r\n\r\n\r\n\r\n<p> We are constantly looking for individuals who are highly capable and motivated to meet the challenges of a growing industry. if you meet this criteria, please email your resume to careers@gbc-law.com</p>', '', '', '', '', '', '', NULL, '<h3 class="omega text-serif text-light">\r\n	We believe that the key to our success is not only the knowledge of our client’s industry and our general commercial awareness, but our interest in recruiting highly capable individuals and providing a very conducive environment to nurture their ambitions to reach for the top.\r\n</h3>\r\n\r\n<p class="text-sans">\r\n	We are constantly looking for individuals who are highly capable and motivated to meet the challenges of a growing industry. if you meet this criteria, please email your resume to careers@gbc-law.com \r\n</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 08:49:31', '2015-11-17 10:24:10', 'd8d6037e-b5e1-4159-b1b9-9d30bb2512a8'),
(7, 7, 'en_us', 'Careers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 09:11:25', '2015-11-17 09:24:47', '445b8e70-8a2e-4d44-967b-c0e138f6c846'),
(9, 9, 'en_us', 'Contact', '<p>Office Address:</p>\r\n\r\n<p> 11, Babafemi Osoba Crescent </p>\r\n\r\n\r\n\r\n<p> Off Admiralty Road, Lekki Phase 1, </p>\r\n\r\n\r\n\r\n<p> P.O.Box 72250 Victoria Island, Lagos.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p> T: +234 (0)1 899 0764, +234 (0) 1 899 0765 </p>\r\n\r\n\r\n\r\n<p> E: info@gbc-law.com</p>', '', '', '', '', '', '', NULL, '<p><strong>Office Address:</strong><br>11, Babafemi Osoba Crescent<br>Off Admiralty Road, Lekki Phase 1,<br>P.O.Box 72250 Victoria Island, Lagos.</p>\r\n\r\n<p><strong>T:</strong>&nbsp;+234-1- 2717769, <br><strong>DLS: +</strong>234-1- 2706382,&nbsp;2706383<br><strong>Fax:</strong>&nbsp;234-1- 2707320<br><strong>E:</strong>  info@gbc-law.com</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 09:31:40', '2015-11-19 23:18:49', '6ddb3c70-39bb-4a86-b834-1672f485e4f7'),
(10, 10, 'en_us', 'Contact Bg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 09:39:50', '2015-11-17 09:39:50', '6e05b641-5cfe-477c-be45-486bdf1bc79c'),
(11, 11, 'en_us', 'Gbenga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 11:23:38', '2015-11-17 11:23:38', '4a526be3-8562-47dd-b4d2-c651f7dc75d9'),
(12, 12, 'en_us', 'Gbenga Biobaku', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 11:24:41', '2015-11-17 11:24:41', '9e00d11b-7cfb-4134-a729-ab3191b46ef3'),
(14, 14, 'en_us', 'Gbenga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 11:37:11', '2015-11-17 11:37:11', 'd62823e8-24ab-456b-b1ac-8d0176e63ee4'),
(15, 15, 'en_us', 'Gbenga Biobaku', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 11:37:19', '2015-11-17 11:37:19', '64166f9c-2666-4ba2-a70c-40d4fa52b05a'),
(21, 21, 'en_us', 'About', NULL, '', '', '', '', '', '', '<h3>Gbenga Biobaku & Co. (GBC) is a leading law firm in Nigeria with primary practice in the business scene, with focus on Energy, Projects, Foreign Investments, Banking, Capital Markets and general Corporate/ Commercial Law.</h3>\r\n\r\n<p>For over 20years, our Firm has demonstrated its expertise in handling challenging assignments for the most interesting clients. We have achieved extraordinary results with a team of intensely focused members focused on&nbsp;solving our clients'' most important problems.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>Building strong client relationships is the compass of our business strategy. With diverse experience and exceptional professionals with specialist skills, we have continually delivered quality to our clients through innovative legal solutions.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>Our clients range from multinationals, oil & energy firms, financial institutions and emerging companies. We also advise governments&nbsp;and public bodies.</p>', NULL, 'Our client list spans the oil and gas, construction, banking and financial institutions, here are a list of some of our clients (past and present).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 12:09:53', '2015-11-20 14:44:02', 'd33c635e-7a9c-4b56-8800-40334545a4d8'),
(22, 22, 'en_us', 'Gbenga Biobaku', NULL, '', '', '', '', '', '', NULL, NULL, NULL, 'Managing Partner', '<p>Gbenga has over 2 decades of legal practice experience in corporate / commercial law predominantly in the Oil and Gas Industry. Previously at Jackson, Etti & Edu, where he was the head of the energy & corporate department for over 5 years. Prior to joining Jackson, Etti & Edu, Gbenga was a member of the energy and corporate/commercial practice group at Irving and Bonnar, Nigeria’s oldest law firm. Whilst at Irving & Bonnar, Gbenga worked on a variety of energy, corporate and commercial transactions for both domestic and international clients.</p>', '[{"col1":"University of Ife (LLB); 1986"},{"col1":"Nigerian Bar Association 1987"}]', '[{"col1":"Foreign Investments"},{"col1":"Joint Ventures"},{"col1":"Acquisitions & Disposals"},{"col1":"Corporate Restructuring"},{"col1":"Project Development & Finance"}]', '[{"col1":"Nigerian Bar Association"},{"col1":"Energy & Natural Resources Section (SERL) of the International Bar Association"},{"col1":"Association of International Petroleum Negotiators(\\"AIPN\\")"}]', '[{"col1":"Advising a multinational exploration and production company in relation to a proposed LNG Project in the Niger-Delta region of Nigeria."},{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising the Norwegian Exploration & Production Company, Statoil, in respect of several Production Sharing Contracts with the Nigerian National Petroleum Corporation (NNPC), and assisting with the negotiation."},{"col1":"Advising an international oil company in its bid for an oil block in the Nigeria\\/Sao Tome and Principe JDZ 2003 Licensing Round and conducting a detailed analysis of the Treaty and the petroleum, fiscal and contractual regime."},{"col1":"Advising Sonatrach, the Algerian state oil company in connection with its bid for an oil block in the 2005 Licensing Round and providing advice on the bidding regulations as well as detailed analysis of the petroleum, fiscal and contractual regime."},{"col1":"In collaboration with lawyers in a UK law firm, acting for and advising a group of International Banks on aspects of the financing of the Eleme Petrochemical Plant."},{"col1":"Advising Statoil on the establishment of several subsidiary companies in Nigeria, including processing and obtaining of all pre-investment and regulatory approvals."},{"col1":"Advising and assisting Consolidated Petroleum PTY, a South African Company on the farm-in arrangements into a marginal field including the drafting and review of the transaction documents including the Purchase Agreement, Farm-in Agreement, Joint Operating Agreement and the Deed of Assignment."},{"col1":"Advising on several acquisitions and mergers, involving oil service companies, including the acquisition by Baker Hughes of a minority interest in a Nigerian Oil Service Company."},{"col1":"Advising Baker Hughes on all legal aspects of the construction and development of a major facility in Port Harcourt, from negotiation of the long lease for the property to negotiating and rendering advise on the construction contract, advising on Town Planning regulatory issues as well as Environmental issues, and undertaking the registration and perfection of the long lease."},{"col1":"Advising Skye Bank Plc in relation to a USD75million syndicated petroleum products receivables pre-financing facility."},{"col1":"Advising TABA Nigeria Limited in respect of an Engineering Procurement and Construction (\\u201cEPC\\u201d) contract with NNPC relating to a power plant and advising and assisting with the structuring and documentation of the various subcontracting and the financing arrangements."},{"col1":"Advising and assisting a private investor in connection with a joint venture arrangement with the Government of Ondo State of Nigeria, involving the privatization of the Ondo State Afforestation Project which was initially funded by the African Development Bank."},{"col1":"Advising on the Merger between the Nigerian subsidiaries of SmithKline Beecham and Sterling Products."},{"col1":"Conducted legal due diligence and advised Capital Alliance, a foremost international private equity firm in a $15million USD private equity investment in a leading cash-in-transit company in Nigeria."},{"col1":"Advising Skye Bank Plc in connection with the negotiation of a trade finance facility from African Export \\u2013 Import Bank (\\u201cAfrexim\\u201d)"},{"col1":"Advising and assisting a private investor in connection with the acquisition of Iwopin Pulp and Paper Company from the Bureau of Public Enterprises (\\u201cBPE\\u201d) \\/ Federal Government of Nigeria."},{"col1":"Advising Inlaks Plc, a Conglomerate at that time, on the separation and corporatisation of some of its division."},{"col1":"Advising a leading Aluminum Company in Nigeria on a Scheme of Arrangement involving the Parent Company and a subsidiary."}]', '[{"col1":""}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 12:20:17', '2015-11-17 12:20:17', 'fba72542-4884-4d83-b09c-0d021e5c20c2'),
(23, 23, 'en_us', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 12:52:28', '2015-11-17 12:52:28', '85d5e3b4-2be6-47bc-ae18-50fcb4bc03c1'),
(24, 24, 'en_us', 'Nkoyo Rapu', NULL, '', '', '', '', '', '', NULL, NULL, NULL, 'Of Counsel', '<p>Nkoyo has over 20 years extensive experience&nbsp;and expertise in general law practice and advocacy.&nbsp; She started her legal career as a government&nbsp;legal representative with the Legal Aid Council and then roceeded to Oshinowo&nbsp;& Co as a Counsel in Chambers before joining the prestigious Allen and&nbsp;Ogunkeye.</p>\r\n\r\n<p>She is also involved in extensive work with&nbsp;non-governmental organizations with particular emphasis on matters relating to&nbsp;women and children in the socio-economic and political context of the Nigerian&nbsp;society. In this regard, she has played a significant role at the national&nbsp;level in the area of women empowerment&nbsp;having been appointed to various&nbsp;committees. She sits on the board of trustees of Freedom Foundation, an&nbsp;umbrella organization of five NGO units committed to pioneering change in&nbsp;society through poverty alleviation and wealth creation. She is also director&nbsp;of Stone Creek Property Investment Company whose aim is to project a new way of&nbsp;community living.</p>\r\n\r\n\r\n\r\n\r\n\r\n<p>Nkoyo has led two&nbsp;trade missions to Togo and more recently, to South Africa with the involvement&nbsp;of both the Nigerian embassy and the embassies of the host countries. She&nbsp;was amongst a select Nigerian&nbsp;delegation appointed by the American Embassy to&nbsp;attend the Annual Business Global&nbsp;Renaissance Summit in Washington D.C, their&nbsp;assignment focus being the creation of more business for more women across more&nbsp;borders. She also served as a board member of the Canadian and African Business&nbsp;Women’s Alliance - (CAABWA).</p>', '[{"col1":"University of Lagos (LLM) "},{"col1":"The City of London Polytechnic (Diploma in English Private Law)."}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>Federal Government Committees:</strong></p><p>Women’s Affirmative Action Committee,&nbsp;December 1998 inaugurated by the Federal Ministry of Women’s Affairs, Abuja,Nigeria.<br><strong>A</strong><strong>ssignment:</strong>&nbsp;Constitutional amendments for women.</p><p>Constitution Drafting Committee, January&nbsp;2000 inaugurated by National Centre for Women’s Development, Abuja.<br><strong>Assignment:</strong>&nbsp;Prepare consensus on position of&nbsp;Nigerian women on 1999 constitution</p><p>American Embassy Nigerian Delegation:<br>Selected to attend the Annual Business Women’s Global Renaissance Summit in&nbsp;Washington D.C, October 1999.<br><strong>Assignment:</strong>&nbsp;More Business for More Women across&nbsp;More Borders.</p><p>Canadian and African Business Women’s&nbsp;Alliance Nigeria (CAABWA)<br><strong>Assignment:</strong>&nbsp;Forge business associations between<br>Nigerian and Canadian Business Women.</p>', '[{"col1":"Norwegian Human Rights Fund Royal Norwegian Embassy Lagos"},{"col1":"United States Agency Information Development (USAID)\\u00a0Victoria Island, Lagos."},{"col1":"Centre for Development and Population Activities (CEDPA) Lagos Chapter"},{"col1":"Jamaican High Commission, Abuja, Nigeria.\\u00a0\\u00a0\\u00a0\\u00a0"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 12:52:33', '2015-11-17 18:11:13', '9f877360-5795-45d3-a039-355039ee897c'),
(25, 25, 'en_us', 'Expertise', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, '<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.</p>', NULL, NULL, NULL, NULL, NULL, '[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank. "},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, originally estimated at US$810 Million and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe. "},{"col1":"In collaboration with lawyers in a UK law firm, acting for and advising a group of International Banks on aspects of the financing of the Eleme Petrochemical Plant."},{"col1":"Representing UTC Nigeria Plc, a publicly quoted company in a $14 million debt restructuring."},{"col1":"Advising UTC Nigeria Plc on a rights issue."},{"col1":"Advising on the Merger between the Nigerian subsidiaries of SmithKline Beecham and Sterling Products."},{"col1":"Advising on the acquisition of a merchant-banking subsidiary by Union Bank of Nigeria PLC."},{"col1":"In collaboration with Nextzon, conducted legal due diligence for Oceanic Bank Plc in relation to the acquisition of a bank in Ghana. "},{"col1":"Advising several multinational Companies including Statoil, Parker Drilling, Vmonitor Inc on the establishment of subsidiary companies in Nigeria and the processing and procurement of relevant pre-investment and operational permits and approvals."},{"col1":"Advising Skye Bank Plc in connection with the negotiation of a trade finance facility from African Export \\u2013 Import Bank (\\u201cAfrexim\\u201d) "},{"col1":"Advising Skye Bank Plc \\u201con a USD75million syndicated petroleum products receivables pre-financing facility.\\u201d "},{"col1":"Advising and assisting a private developer on the Concession Agreement with the Lagos State Government relating to the redevelopment of the Balogun Square Market in the Central Business District of Lagos"},{"col1":"Advising and assisting a private investor in connection with a joint venture arrangement with the Government of Ondo State of Nigeria, involving the privatization of the Ondo State Afforestation Project which was initially funded by the African Development Bank."},{"col1":"Advising and assisting a private investor in connection with the acquisition of Iwopin Pulp and Paper Company from the Bureau of Public Enterprises (\\u201cBPE\\u201d) \\/ Federal Government of Nigeria."},{"col1":"Advising and documenting various syndicated facilities relating to Peugeot Automobile Nigeria, Intel Oil Services, G.Cappa, International Distillers, Victoria Garden Hotels and several other leading companies."},{"col1":"Advising Inlaks Plc, a Conglomerate at that time, on the separation and corporatisation of some of its division."},{"col1":"Advising a leading Aluminum Company in Nigeria on a Scheme of Arrangement involving the Parent Company and a subsidiary."},{"col1":"Advising May and Baker Nigeria Plc on several rights issues and offers for subscription."},{"col1":"Advising and assisting Royal Exchange Assurance Company Limited on several capital market transactions for various domestic and multinational clients."},{"col1":"Advising May and Baker Nigeria Plc on several rights issues and offers for subscription."},{"col1":"Advising on several acquisitions and mergers, involving oil service companies, including the acquisition by Baker Hughes of a minority interest in a Nigerian Oil Service Company."},{"col1":"Advising a potential investor in the acquisition of equity shareholding in Nike Lake Resort under the proposed privatisation by the Enugu State Government."},{"col1":"Advising on the structuring and financing of a major Hotel Project in Lagos, involving the international hotel chain, Accor."},{"col1":"Advising the International Finance Corporation on various aspects of financing of the re-organisation of the Federal Palace Hotels, Lagos, Nigeria."},{"col1":"Advising the International Finance Corporation on various aspects of financing of the re-organisation of the Federal Palace Hotels, Lagos, Nigeria."},{"col1":"Advising on the structuring and financing of a large cotton-processing mill, in which the International Finance Corporation (IFC) provided debt finance."},{"col1":"Advising on various investment schemes for both individuals and companies involving the creation and operation of trust arrangements."},{"col1":"Advising the Federal Government of Nigeria and the Bureau of Public Enterprises (BPE) on the privatisation of the Abuja Sheraton Hotel."},{"col1":"Advising the Federal Government of Nigeria and the Bureau of Public Enterprises (BPE) on the Privatisation of the Abuja International Hotel. "},{"col1":"Advising a South Africa Telecommunications group in its bid for a strategic stake in a Nigerian Mobile Cellular Network Company."},{"col1":"Representing General Telecom in the negotiation of a BOT arrangement for the development of an HNS Wireless Exchange Operation in Nigeria."},{"col1":"Advising Statoil, on the Production Sharing Contracts with the Nigerian National Petroleum Corporation (NNPC)."},{"col1":"Advising an international oil company in its bid for an oil block in the Nigeria\\/Sao Tome and Principe JDZ 2003 Licensing Round and conducting a detailed analysis of the Treaty and the petroleum, fiscal and contractual regime."},{"col1":"Representing Tenneco Oil in the disposal of its Nigerian oil and gas assets to British Gas."},{"col1":"Advising Sonatrach, the Algerian state oil company in connection with its bid for an oil block in the 2005 Licensing Round and providing advice on the bidding regulations as well as detailed analysis of the petroleum, fiscal and contractual regime."},{"col1":"Advising and assisting Consolidated Petroleum PTY, a South African Company on the farm-in arrangements into a marginal field including the drafting and review of the transaction documents including the Purchase Agreement, Farm-in Agreement, Joint Operating Agreement and the Deed of Assignment."},{"col1":"Advising Hudson Petroleum in its bid for an oil block in the 2005 Licensing Round and assisting with the drafting and negotiation of the preliminary agreements including MOUs and Heads of Agreement."},{"col1":"Advising Baker Hughes on all legal aspects of the construction and development of a major facility in Port Harcourt, from negotiation of the long lease for the property to negotiating and rendering advise on the construction contract, advising on town planning regulatory issues as well as environmental issues, and undertaking the registration and perfection of the long lease."},{"col1":"Advising TABA Nigeria Limited in respect of an Engineering Procurement and Construction (\\u201cEPC\\u201d) contract with NNPC relating to a power plant and advising and assisting with the structuring and documentation of the various subcontracting and the financing arrangements."},{"col1":"Advising and assisting Parker Drilling in the negotiation and documentation of various support services agreements relating to drilling operations in Nigeria."},{"col1":"Advising and assisting Parker Drilling in the processing of various regulatory approvals and permits relating to drilling operations in Nigeria."},{"col1":"Advising DWC Drilling on a number of drilling contracts with operators in the Nigerian oil and gas Industry and assisting with the negotiation."},{"col1":"Advising and assisting oil and gas operators and contractors on various procurement contracts such as drilling contracts, drilling services contracts, engineering procurement and construction (EPC) contracts, vessel charter parties, helicopter service contracts and several other procurement contracts."},{"col1":"Advising Statoil on all legal aspects of the development of a number of residential and office complexes in prime areas of Lagos, Nigeria."},{"col1":"Advising both landowners and Developers on several commercial and residential property developments."},{"col1":"Advising on a number of banking and financial transactions including structuring and drafting of equipment leases and sale & lease back contracts and advising on the floatation of companies'' securities in the capital market."},{"col1":"Preparation of loan agreements, advice on Security Documentation, drafting and review of Security Documents including, but not limited to, legal mortgages, debentures (fixed and floating) bills of sale, mortgage debentures, pledges, guarantees and indemnities. "},{"col1":"Advising on the acquisition of Flexcube banking software by Union Bank of Nigeria Plc and Finnacle banking software by First Atlantic Bank Ltd."},{"col1":"Advising on the acquisition of an Internet Based Money Transfer facility by First Atlantic Bank Ltd."}]', '<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.</p>\r\n\r\n<p>Below are some relevant experiences garnered over the years.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 13:15:13', '2015-11-20 08:10:25', 'f826d620-bdc2-4e26-b63d-2b9e95918f19'),
(27, 31, 'en_us', 'The  Exclusive  Jurisdiction Of The  National  Industrial  Court', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 14:13:21', '2015-11-17 14:13:21', '17804326-56a4-4d83-b159-d9d78c68ea30'),
(29, 33, 'en_us', 'Arbitrability Of Tax Issues Arising From Production Sharing Contracts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 14:14:55', '2015-11-17 14:14:55', 'ed38b045-0b20-460f-8853-3676af37df89'),
(31, 35, 'en_us', 'The Exclusive Jurisdiction of the National Industrial Court in Labour and Employment Matters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'The National Industrial Court is vested with exclusive jurisdiction on all labour, employment and related matters and as such all labour, employment and allied matters pending before State High Courts across Nigeria are required to be transferred to the National Industrial Court. This position was confirmed in the recent case of Josiah Madu vs. Solus Schall Nigeria Ltd (Unrep.)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 14:17:08', '2015-11-17 17:29:31', 'afb5901f-6ebc-4af4-a54e-6a7f69ff723b'),
(32, 36, 'en_us', 'Arbitrability of tax issues arising from production sharing contracts– FIRS v. NNPC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'The Federal High Court, Abuja in the case of Federal Inland Revenue Service VS. Nigerian National Petroleum Corporation & Others recently decided that an Arbitration Tribunal lacks jurisdiction to determine issues relating to taxation or connected with the Federal Government revenue as such jurisdiction is exclusively conferred on the FHC by the Constitution of the Federal Republic of Nigeria.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 14:18:00', '2015-11-17 17:31:00', 'a25b9904-7c76-490b-82f9-f55fa12d26f0'),
(33, 37, 'en_us', 'Investing In  Nigeria  Oand G  Industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 14:18:48', '2015-11-17 14:18:48', 'bcea9dc2-f0c0-446d-a1a0-ab52f8b72c34'),
(34, 38, 'en_us', 'Investing in Nigeria’s Oil and Gas Industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nigeria is one of the world’s largest producers of crude oil. The country currently produces an average of 2.5 million barrels of crude oil per day. This makes her the 10th largest producer of crude oil in the world and the 6th largest exporter among OPEC members. Production capacity currently stands at about 3 million barrels per day whilst reserves is about 35 billion barrels which the government intends to increase to 40 billion barrels by the year 2010.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 14:18:50', '2015-11-17 14:18:50', '4f54678c-bd51-4df1-a3ae-9deaa0367720'),
(35, 39, 'en_us', 'Publications', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 14:19:56', '2015-11-17 14:20:24', '481d6829-33b7-456e-a9d8-fb1d56a3a158'),
(36, 40, 'en_us', 'Gbc Corporate Practice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 15:30:14', '2015-11-17 15:35:14', 'c78e32d7-0028-431b-9b20-77152a2deb58'),
(38, 42, 'en_us', 'Gbc Modern Law Firm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 15:35:40', '2015-11-17 15:35:40', '2e6362b3-3800-4c96-a862-7380367f6bfc'),
(39, 43, 'en_us', 'Ijeoma Abalogu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 17:00:04', '2015-11-17 18:44:04', '7a02fcf9-d320-4ec0-9639-1ad2a4178a66'),
(40, 44, 'en_us', 'Ijeoma Abalogu', NULL, '', '', '', '', '', '', NULL, NULL, NULL, 'Senior Associate', '<p>Ijeoma is responsible for the firm’s&nbsp;corporate compliance and regulatory matters. She has advised several companies&nbsp;on the establishment of business entities in Nigeria, as well as completed&nbsp;registration and obtaining relevant licenses and approvals for corporate&nbsp;clients including Statoil, Baker Hughes, Parker Drilling, Western Atlas and&nbsp;Petro Explorer Ltd. She heads the business advisory and compliance unit in the&nbsp;firm and is also in charge of all company secretarial matters. She also focuses&nbsp;on international investments and immigration practices and procedures, which is&nbsp;a constantly evolving area, with proven client satisfaction.</p><p>Prior to joining GBC Law, Ijeoma had a stint&nbsp;at another law firm where she was involved in the legal&nbsp;advisory and client&nbsp;representations on various aspects of corporate and commercial law.</p>', '[{"col1":"Abia State University, Nigeria (LLB); 2002 "},{"col1":"The Nigerian Bar Association 2004"}]', '[{"col1":"Corporate and Commercial Law "},{"col1":"Legal Advisory"},{"col1":"Company Secretarial "},{"col1":"Regulatory Compliance "},{"col1":"Intellectual Property "},{"col1":"Business Start-ups "},{"col1":"International Investments "},{"col1":"Private Equity "},{"col1":"Tax"}]', NULL, '[{"col1":"Participated with the corporate team in the winding-up of the subsidiary of a multi-national oil servicing firm and assisted in ensuring that outstanding (debts) receivables are recovered on behalf of the company."},{"col1":"Represented African Capital Alliance, a leading African private equity company, in conducting legal due diligence and structuring a management buy-in culminating in a purchase of equities worth $15 million USD."},{"col1":"Acted for a land drilling company in an $18 million private equity investment."},{"col1":"Advising and assisting several clients on the establishment of Nigerian subsidiaries and procuring relevant pre-investment and operational approvals, licenses and permits."}]', '[{"col1":""}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 17:01:56', '2015-11-17 17:48:25', '454a20a6-8051-4ef3-b6ba-0108aadda82f'),
(41, 45, 'en_us', 'Labour', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 17:27:46', '2015-11-17 17:28:19', 'fdda8fdb-7617-4c79-9920-0c2347e51ba9'),
(42, 46, 'en_us', 'Employment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 17:27:53', '2015-11-17 17:28:26', '77c24cd6-8633-420a-8238-49e80c537519'),
(43, 47, 'en_us', 'Arbitration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 17:30:45', '2015-11-17 17:30:45', '5040668e-1deb-4572-bc78-a602a64cf98b'),
(44, 48, 'en_us', 'Tax', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 17:30:51', '2015-11-17 17:30:51', 'dce14657-bb2c-43ab-9e8e-bfe08c7ae698'),
(45, 49, 'en_us', 'Energy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 17:30:56', '2015-11-17 17:30:56', '81dbc9ce-8bf0-4015-b7bf-21e5773f94fa'),
(46, 50, 'en_us', 'Ijeoma Abalogu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 17:39:29', '2015-11-17 17:43:45', 'abb6699c-8bb5-4285-a968-f6bb47f6fb0a'),
(48, 52, 'en_us', 'Nkoyo Rapu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 17:57:10', '2015-11-17 17:57:10', 'e7cbdf62-b895-4556-a2d7-83ce952c3a03'),
(49, 53, 'en_us', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 18:19:11', '2015-11-17 18:19:11', '887deaf5-1a77-4168-83c6-e34f03cbadc7'),
(50, 54, 'en_us', 'Okey Nwanya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 18:22:06', '2015-11-17 18:25:06', '32d0bc95-3cad-4fbc-9b28-3b3bbd4a7cf6'),
(51, 55, 'en_us', 'Okey Nwaya', NULL, '', '', '', '', '', '', NULL, NULL, NULL, 'Senior Associate', '<p>Okey&nbsp;has a good knowledge and understanding of the theory and practice of Nigerian&nbsp;civil, commercial and criminal Laws, he has experience in litigation practice&nbsp;and procedure from the Magistrates’ Court to the Supreme Court, he has a good&nbsp;drafting and documentation skills.</p><p>His practice&nbsp;covers a broad range of contentious matters on behalf of corporate clients,&nbsp;financial institutions and oil servicing companies. Okey has acted for clients&nbsp;in litigation both in state and federal levels, as well as in several arbitrations,&nbsp;principally conducted under ICC rules.</p><p>He had been involved in matters from wide subject areas&nbsp;including energy, employment, credit and security, commerce, and real estate.</p>', '[{"col1":"University of Benin (LLB) "},{"col1":"Nigerian Bar Association 2002 "}]', '[{"col1":"Commercial Litigation "},{"col1":"Labour and Employment "},{"col1":"Energy"}]', NULL, '[{"col1":"Acting as lead Counsel representing an international professional services firm in a N1.4 billion action involving report by it on the issue of the incorrectly reported profit by a publicly quoted company in Nigeria."},{"col1":"Represented PricewaterhouseCoopers in an arbitration matter involving a long lease of its office facility."},{"col1":"Conducted legal due diligence and provided pre-investment advice in a $15 million USD private equity investment by African Capital Alliance in Bankers Warehouse Limited foremost international private equity firm in a leading cash-in-transit company in Nigeria."},{"col1":"Represented Baker Hughes in several litigation matters in the Niger-Delta region and other parts of Nigeria."},{"col1":"Represented ExxonMobil in litigation matters in the Niger-Delta region of Nigeria."},{"col1":"Represented a multi-national oil service company in various labour disputes including actions at the High Courts in the Niger-Delta region."},{"col1":"Advising and assisting a multi-national company in respect of a tax dispute with the Lagos State Board of Internal Revenue."}]', '[{"col1":""}]', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 18:22:08', '2015-11-17 18:28:25', '69935a19-0839-4c75-aabd-a0f1d61682fd'),
(53, 57, 'en_us', 'Sogo Akinola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 18:36:19', '2015-11-17 18:36:38', '26487702-40d2-40dd-9d91-93cd39f091de'),
(54, 58, 'en_us', 'Sogo Akinola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 18:39:34', '2015-11-17 18:44:24', '6184fef8-046c-4320-9419-cc2bb6b7bb99'),
(55, 59, 'en_us', 'Sogo Akinola', NULL, '', '', '', '', '', '', NULL, NULL, NULL, 'Associate', '<p>Sogo&nbsp;has been engaged in a wide variety of transactions with special emphasis on corporate&nbsp;and commercial, taxation, power, privatization & foreign investment, technology&nbsp;and emerging practice areas. His commitment to exceeding expectations, adding&nbsp;value, and the assurance of success in any transaction with which he is&nbsp;identified places him above the ordinary lawyer.</p>', '[{"col1":"Obafemi Awolowo University Ile Ife, (LLB) "},{"col1":"The Nigerian Bar "}]', '[{"col1":"Corporate and Commercial "},{"col1":"Taxation"},{"col1":"Foreign Investment "}]', NULL, NULL, '[{"col1":""}]', NULL, NULL, NULL, '', NULL, '[{"col1":"Jamaican"},{"col1":"Chinese"}]', NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 18:39:36', '2015-11-17 18:48:28', 'b0c35af9-67aa-4def-ab03-eb1196f7f23f'),
(57, 61, 'en_us', 'Sandra Asuzu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 18:50:45', '2015-11-17 19:22:04', '855ca5e8-8614-488a-b4df-4e6830c47825'),
(58, 62, 'en_us', 'Sandra Asuzu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 18:54:25', '2015-11-17 18:54:25', '2222f1d0-f51f-448c-a43a-0da4b9fedab2'),
(59, 63, 'en_us', 'Sandra Asuzu', NULL, '', '', '', '', '', '', NULL, NULL, NULL, 'Associate', '<p>Sandra focuses on the energy and&nbsp;projects practice of GBC Law, especially in gas to power projects. She also&nbsp;participates actively in the corporate commercial and maritime areas of the&nbsp;firm. She demonstrates remarkable competencies in project finance, regulatory&nbsp;and compliance, general corporate/commercial practice.</p>', '[{"col1":"University of Nigeria, Nsukka (LLM) "},{"col1":"The Nigerian Bar;2012"}]', '[{"col1":"Energy and Projects "},{"col1":"Regulatory and Compliance "},{"col1":"Maritime and Intellectual Property\\u00a0\\u00a0\\u00a0\\u00a0"}]', '[{"col1":"Nigerian Bar Association "},{"col1":"Institute of Chartered Secretaries and Administrators of Nigeria."}]', '[{"col1":"Successfully carrying out due diligence, preparing transactional documents and was also involved in the negotiations for the project financing of a Gas Processing Plant which pegged at the sum of $64M in a combination of equity and loan."},{"col1":"Analyzing and providing legal opinions in respect of Nigerian content issues relating to oil and gas projects and petroleum operations."}]', '[{"col1":""}]', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 18:56:23', '2015-11-17 18:56:23', 'e38902f2-3269-4fc9-aab4-155f2f976909'),
(60, 64, 'en_us', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 19:06:07', '2015-11-17 19:06:07', '40d4243b-51fd-4889-a8c4-327e4bcde205'),
(61, 65, 'en_us', 'Ayoade Oluwasanmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 19:09:13', '2015-11-17 19:09:13', '923dd321-153a-4bf1-8c15-5a37ed1eb854'),
(62, 66, 'en_us', 'Ayoade Oluwasanmi  ', NULL, '', '', '', '', '', '', NULL, NULL, NULL, 'Associate', '<p>Ayoade has over 10 years&nbsp;cognate experience advising on and litigating tax, labour, oil and gas, company&nbsp;law and recovery of premises related matters.</p><p>He has a wide experience of the law on a&nbsp;range of issues but has a bias for commercial litigation and arbitration. He&nbsp;has practical, working knowledge in litigation matters on a wide range of&nbsp;issues as diverse as Energy, Employment, Credit Transactions, Commercial&nbsp;Transactions, and Real Estate. He is a member of the litigation team at GBC&nbsp;Law.</p>', '[{"col1":"Ambrose Alli University (LLB); 2004 "},{"col1":"The Nigerian Bar 2005"}]', '[{"col1":"Corporate Commercial Litigation "},{"col1":"Corporate and Commercial Law "},{"col1":"Legal Advisory\\u00a0\\u00a0\\u00a0\\u00a0"}]', '[{"col1":"The Nigerian Bar Association "},{"col1":"The UK Chartered Institute of Arbitrators"}]', '[{"col1":"Provided representation for an international professional services firm in a N1.4 billion action involving report by it on the issue of the incorrectly reported profit by a publicly quoted company in Nigeria."},{"col1":"Represented a multi-national oil company at the Citizens Mediation Centre in a labour related matter filed by its employees."},{"col1":"Advised a multi-national oil service company with regards to its liabilities and responsibilities in connection with the environmental impact of the company\\u2019s drilling activities in the Niger-Delta region of Nigeria."},{"col1":"Represented Teleglobe in the enforcement of a foreign judgment in Nigeria relating to the termination of Internet Subscription Service Agreement."},{"col1":"Was the counsel in charge of the litigation on behalf of Baker Hughes Nigeria Limited, a multinational oil services firm with regards to illegal tax levied against it.\\u00a0 "},{"col1":"Was part of the team that represented and advised African Capital Alliance, a leading African private equity company, in conducting legal due diligence and structuring a management buy-in culminating in a purchase of majority shares in the dominant cash-in-transit services company in Nigeria."},{"col1":"Was part of the litigation team that represented PricewaterhouseCooopers, a multinational financial advisory and auditing firm with regards to the alleged misstatement of profits by Cadbury Nigeria Limited which led to an increased shareholding by Cadbury in the UK."},{"col1":"Was part of the team that instituted an action against the Lagos State Government and obtained judgement in favour of a client, obtaining a reversal of a purported revocation of both a Certificate of Occupancy and allocation by the New Towns Development Authority."}]', '[{"col1":""}]', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 19:12:29', '2015-11-17 19:12:29', '4df57f85-c23f-42ab-afb9-c0672bc28bec'),
(64, 68, 'en_us', 'Edward Vera Cruz2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 19:36:55', '2015-11-17 19:36:55', '7955c74e-646d-473b-8063-0362c052df88'),
(65, 69, 'en_us', 'Edward Vera Cruz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 19:38:25', '2015-11-17 19:46:03', 'f141ab86-1254-4de4-a5ea-9d4648447cf3');
INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_seoTitle`, `field_seoAuthor`, `field_seoCanonical`, `field_seoDescription`, `field_seoKeywords`, `field_seoType`, `field_aboutText`, `field_bodyContent`, `field_clientsText`, `field_position`, `field_intro`, `field_education`, `field_expertise`, `field_memberships`, `field_experiences`, `field_awards`, `field_relevantExperiences`, `field_relevantExperiencesIntro`, `field_summary`, `field_appointments`, `field_consultancyRecord`, `field_languages`, `field_client`, `field_overview`, `field_solution`, `field_benefit`, `field_suitDetail`, `field_description`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(66, 70, 'en_us', 'Edward O. Vera Cruz', NULL, '', '', '', '', '', '', NULL, NULL, NULL, 'Of Counsel', '<p>Edward’s practice extends over 20 years and has covered a&nbsp;comprehensive range of international corporate and commercial transactions. In&nbsp;particular, he focuses on oil and gas law, law of credit and security,&nbsp;international business transactions law, intellectual property and information&nbsp;technology law.</p><p>In the energy sector, Edward has acted for sponsors and a&nbsp;wide variety of other clients in major project finance, general corporate and&nbsp;commercial transactions and regulatory matters.</p><p>Edward has held various leadership positions in most of the&nbsp;firms he has worked with. He was the Head of Chambers in the Firm of Lanre&nbsp;Olaoluwa & Co. (now Matrix Solicitors) and later Managing Partner in the&nbsp;Firm of Victor and Charles Solicitors (now part of AELEX Partners), a position&nbsp;he held for over 7 years.</p><p> He is a regular participant at local and international&nbsp;seminars and was for a number of years both a visiting lecturer on the Nigerian&nbsp;Institute of Advanced Legal Studies ''Advance Legal Drafting Course'' and the&nbsp;contributing rapporteur for Nigeria for the Journal of Energy and Natural&nbsp;Resources Law.</p>', '[{"col1":"University of Lagos (LLB) "},{"col1":"The Nigerian Bar Association 1990"},{"col1":"Solicitor of the Supreme Court of England and Wales"},{"col1":"Solicitor of the Supreme Court of England and Wales"}]', '[{"col1":"Oil and Gas\\u00a0"},{"col1":"Energy\\u00a0"},{"col1":"International Trade\\u00a0"},{"col1":"Public Procurement\\u00a0"},{"col1":"Project Finance "}]', '[{"col1":"Solicitor of the Supreme Court of England and Wales"},{"col1":"The Law Society of England & Wales "},{"col1":"The Procurement Lawyers Association "},{"col1":"The Association of British Council Fellows "},{"col1":"The Association of British Chevening Scholars  "},{"col1":"Gideons International"}]', '[{"col1":"Representing Texaco Inc., and providing general legal advice on the implementation in Nigeria of an incorporated joint venture between Chevron and Texaco for the marketing internationally of marine fuels and lubricants."},{"col1":"Representing ENRON International; Enron B\\u00e9nin Gas Holdings Ltd; and Enron West Africa Pipeline Ltd and providing general legal advisory work and consultations on the structuring, contract documentation, and security issues on the acquisition by Enron of the rights to all of the gas and condensate in the Aje Field of OML 113 and future rights in the gas and condensate produced from OML 113 outside the Aje Field."},{"col1":"Rendered advice to TOTAL Exploration Nig. Ltd. on the legal aspects of the proposed acquisition by TOTAL (Transferee) of the interests of Ashland Nigeria Exploration Unlimited in various Oil Producing Licences in Nigeria."},{"col1":"Advising and documentation for TOTAL Upstream Nigeria Ltd on the unincorporated joint venture, with a local and another international party, for the joint prospecting for and exploitation of the oil deposits in a virgin offshore concession (OPL 246)."},{"col1":"Preparing Farm-In Agreement involving TOTAL Upstream Nigeria Ltd on the acquisition by TOTAL (Farminee) of 24% undivided interest in the deep offshore field (OPL 246) granted to South Atlantic Petroleum Ltd."},{"col1":"Completed legal, regulatory and due diligence aspects of the acquisition by Petroleum Oil & Gas Company of South Africa (Nig.) Ltd PETROSA (Nigeria) (Transferee) of 50% (non-operating) interest in the existing production fields of Addax Petroleum Nigeria."},{"col1":"One of the Legal Advisers (Nigeria) to the Project Sponsors\\/Commercial Group, including Chevron, Shell, Nigeria National Petroleum Corporation, SobeGaz, SotoGaz,and the Ghanaian National Petroleum Corporation, which included Project structuring, project financing, and environmental issues advise on the West African sub-regional gas pipeline project."},{"col1":"Team member: pre-project advisory team to Mobil Power Inc. and Mobil Producing Nigeria Unlimited (Project Sponsor) \\u2013 Preliminary, behind-the-scenes advisory work and consultations on the statutory and regulatory framework existing in Nigeria for the setting up of an independent natural gas-based power. "}]', '[{"col1":""}]', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 19:43:41', '2015-11-17 19:43:41', 'fd3eb3db-feca-4d3b-a2e8-2effc3599e72'),
(68, 72, 'en_us', 'Lola Ogunmodede', NULL, '', '', '', '', '', '', NULL, NULL, NULL, 'Partner', '<p>Lola&nbsp;has over 19 years of hands-on experience in corporate/commercial law. She has&nbsp;extensive experience and expertise in handling large-scale commercial&nbsp;transactions particularly involving the banking and financial services industry.&nbsp;She has worked with First Atlantic Bank Limited as The Legal Adviser/Company<br> Secretary and in the legal department of Union Bank where she advised on a&nbsp;variety of legal matters.&nbsp; Whilst in these organisations, she was involved&nbsp;in the negotiation and documentation of several banking transactions and the&nbsp;drafting of various commercial contracts such as the acquisition of a&nbsp;merchant-banking subsidiary by Union Bank.</p>', '[{"col1":"Ogun State University (LLB); 1990"},{"col1":"Nigerian Bar Association 1991. "},{"col1":"University of Lagos (Masters in Law) "},{"col1":"IESE, University of Navarra, Barcelona, Spain (MBA). "}]', '[{"col1":"Trade and Investments"},{"col1":"Corporate Law "},{"col1":"Banking and Finance "},{"col1":"Employment "},{"col1":"Commercial Contracts "},{"col1":"Company Secretarial Practice"},{"col1":"Project Finance"},{"col1":"Mergers and Acquisitions"}]', '[{"col1":"Nigerian Bar Association"}]', '[{"col1":"Advising on the acquisition of a merchant-banking subsidiary by Union Bank of Nigeria PLC."},{"col1":"Advising on the acquisition of\\u00a0Flexcube\\u00a0banking software by Union Bank of Nigeria Plc and Finnacle\\u00a0banking software by First Atlantic Bank Ltd."},{"col1":"Advising on the acquisition of an Internet Based Money Transfer facility by First Atlantic Bank Ltd."},{"col1":"Advising on the setting up of a Staff Share Investment scheme by First Atlantic Bank Ltd."},{"col1":"Advising and documenting various syndicated facilities relating to Peugeot Automobile Nigeria, Intel Oil Services, G. Cappa, International Distillers, Victoria Garden Hotels and several other leading companies."},{"col1":"Drafting, reviewing and advising on various Security Documentation including but not limited to Legal Mortgages, Debentures (Fixed, Floating and Mortgage), Equipment Leases including Sale and Lease Back contracts, pledges, guarantees and indemnities."},{"col1":"Conducting market research and putting together the business plan of\\u00a0Venture Partners\\u00a0a start up Venture Capital Company focused on offering financial and managerial support to small and medium scale enterprises."}]', '[{"col1":""}]', NULL, NULL, NULL, '', NULL, '[{"col1":"English and French"}]', NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 19:51:49', '2015-11-20 02:07:15', '864d3591-95fa-47fe-86c4-f07744ab26a8'),
(69, 73, 'en_us', 'Wole Tejuoso', NULL, '', '', '', '', '', '', NULL, NULL, NULL, 'Partner', '<p>Wole is responsible for intellectual property matters at GBC&nbsp;Law.&nbsp; He also focuses on real estate transactions, and corporate&nbsp;commercial law.&nbsp; He has over 19 years experience of legal practice and&nbsp;also has considerable expertise in e-commerce. He has also been involved in a&nbsp;number of transactions in the Nigerian energy sector.</p>\r\n\r\n<p> <br> Wole worked as an associate at Sheikh & Co. Solicitors,&nbsp;London, before joining Merrill Lynch International Bank, London where he worked&nbsp;in the Private Banking Department. He worked as Company Secretary at Dabis&nbsp;International Company Limited, London also, before a stint at Irving &&nbsp;Bonnar where he worked with the corporate/commercial group on a variety of&nbsp;transactions for both domestic and international clients.</p>', '[{"col1":"Lagos State University (LLB); 1990 "},{"col1":"The Nigerian Bar 1991 "},{"col1":"The Washington College of Law (Masters in Law) "},{"col1":"He qualified as a Solicitor in England and Wales in 1999. "},{"col1":"He qualified as a Solicitor in England and Wales in 1999. "}]', '[{"col1":"Intellectual Property "},{"col1":"Energy"},{"col1":"Banking and Finance "},{"col1":"Banking and Finance "},{"col1":"Real Estate"}]', '[{"col1":"He qualified as a Solicitor in England and Wales in 1999. "},{"col1":"The International Trademark Association (INTA)."}]', NULL, '[{"col1":""}]', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 19:57:07', '2015-11-17 20:28:08', '999e410b-525c-4843-af78-ceb0cc00229b'),
(70, 74, 'en_us', 'Blank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 20:11:17', '2015-11-17 20:11:17', '57fb7bc5-3a6f-4659-ab94-6b849399bd0e'),
(71, 75, 'en_us', 'Blank2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 20:11:26', '2015-11-17 20:11:26', '5b63266a-3a2a-4330-bead-2facb3a8de71'),
(72, 76, 'en_us', 'Blank2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 20:11:38', '2015-11-17 20:11:38', '55d64374-7244-49c6-a9fd-7f841af01a2e'),
(73, 77, 'en_us', 'Blank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 20:11:41', '2015-11-17 20:11:41', '8680118d-42ee-4bbc-9187-560c7b697a1d'),
(74, 78, 'en_us', 'Edwin Egede', NULL, '', '', '', '', '', '', NULL, NULL, NULL, 'Consultant', '<p>Dr.&nbsp;Egede (PhD. International Law) has over 25 years extensive practice experience.&nbsp;His expertise covers a range of subjects, including International Maritime and&nbsp;Trade Law, Foreign Investment Law, Enforcement of Foreign Judgments, Oil and&nbsp;Gas Law, Bilateral Investment Treaties (BITs) claims, State and Diplomatic&nbsp;<br> immunity Law and the Law on the Regulation and Management of Offshore Mineral&nbsp;and Fisheries and all aspects of International Law. Over the years he has acted&nbsp;and /or provided advice to various Multinational Corporations (MNCs), Banks,&nbsp;Governments and Government agencies. He has provided advice in respect of the&nbsp;recognition and enforcement of the judgment of the Court of a Latin American&nbsp;Country in Nigeria and the application of the United States Foreign Corrupt&nbsp;Practices Act (FCPA) in Nigeria. He has also advised a State government in&nbsp;Nigeria on its rights under international law to the offshore sea-bed and the<br> resources therein. Further, he has provided advice on the impact of the<br> European Union Common Fisheries Policy.</p><p>Dr.&nbsp;Egede is currently engaged in interdisciplinary teaching and research in&nbsp;International Law and International Relations at the Cardiff University and is&nbsp;a Fellow of the Higher Education Academy (FHEA), United Kingdom.&nbsp;</p><p>He&nbsp;has written and published books with renowned publishers and journal articles&nbsp;in peer reviewed international journals in the area of International Law.</p><p>Dr.&nbsp;Egede is a regular participant at local and international Conferences/Seminars&nbsp;and has delivered papers in various places, including the International&nbsp;Hydrographic Organisation/International Association of Geodesy Advisory Board&nbsp;on the Law of the Sea (ABLOS) Conference in Monaco; the African Studies&nbsp;Association of the UK (ASAUK) Conference at the Oxford University and the&nbsp;Institute for International Shipping and Trade Law, Swansea University.</p>', '[{"col1":"University of Benin (LLB Hons.) "},{"col1":"University of Lagos (LLM) "},{"col1":"Cardiff University, Cardiff, Wales, United Kingdom (PhD in International Law) "}]', '[{"col1":"International Law "},{"col1":"International Maritime and Trade Law "},{"col1":"Foreign Investment Law "},{"col1":"Enforcement of Foreign Judgments "},{"col1":"Oil and Gas Law "},{"col1":"Bilateral Investment Treaties "},{"col1":"State and Diplomatic Immunity Law"}]', '[{"col1":"Nigerian Bar Association "},{"col1":"The International Law Association "},{"col1":"The Academic Council on the United Nations Systems "},{"col1":"The Legal, Economic & Regulatory Section of Gerson Lehrman Group "},{"col1":"The Welsh Centre of International Affairs (WCIA) "},{"col1":"Legal Affairs Committee, Wales, United Kingdom. "}]', NULL, '[{"col1":""}]', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-17 20:17:48', '2015-11-17 20:17:48', '70e7cfee-9ee6-4675-adc6-dd8e0e177347'),
(75, 79, 'en_us', 'Exxon Mobil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 00:46:00', '2015-11-20 00:46:00', 'cd9125fd-c037-4c72-9602-de83effe4461'),
(76, 80, 'en_us', 'Statoil Ngieria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 00:46:22', '2015-11-20 00:46:22', '47eba665-cd6a-4a99-a663-989c92a8edc7'),
(77, 81, 'en_us', 'Baker Hughes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 00:46:35', '2015-11-20 00:46:35', 'a6cedd1e-7aa6-4ad9-8aa8-dee07918bedc'),
(78, 82, 'en_us', NULL, NULL, '', 'GBC Law', '', 'A leading law firm in Nigeria, with an eye for business, with focus on Energy, Projects, Foreign Investments and Corporate/Commercial Law', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 00:53:48', '2015-11-20 01:00:33', 'c52228e2-39f6-4fc3-9ad4-940419bb83f1'),
(79, 83, 'en_us', 'Gbenga Biobaku And Co Gbc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 01:00:20', '2015-11-20 01:00:20', 'd192c558-b536-4c93-a96f-120828769d7a'),
(80, 84, 'en_us', 'Bj Services Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 01:04:03', '2015-11-20 01:04:03', 'be485645-33c1-427b-bf56-0aef67e402e3'),
(81, 85, 'en_us', 'Parker Drilling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 01:04:40', '2015-11-20 01:04:40', 'de0f35b8-4337-4c08-a4a9-fe51fb5ffe2c'),
(82, 86, 'en_us', 'Oceaneering Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 01:05:01', '2015-11-20 01:05:01', '5e874a96-aaa6-477b-90bd-bc4ee15c7a32'),
(83, 87, 'en_us', 'African Capital Alliance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 01:05:34', '2015-11-20 01:06:26', '12227dcd-4749-4b65-8156-a5dfb20eba49'),
(84, 88, 'en_us', 'Rhino Linings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 01:05:46', '2015-11-20 01:06:10', '1665bdc3-478d-4175-a02a-33fadf5416e9'),
(85, 89, 'en_us', 'Pentagon Petroleum Limited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 01:06:45', '2015-11-20 01:06:45', '70609bbb-cf9c-4014-9e4d-2e6055e01aa4'),
(86, 98, 'en_us', 'Pentagon Petroleum Limited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 01:08:25', '2015-11-20 01:08:28', '3fa6409b-e1b4-4b07-b8c2-67be54156194'),
(87, 99, 'en_us', 'Taba Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 01:08:39', '2015-11-20 01:08:39', '4780e7e8-9914-417e-a41f-2839efc1b4b9'),
(88, 102, 'en_us', 'Sitemap', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 10:26:21', '2015-11-20 10:26:21', '13320f02-595b-405d-af57-cec6d729f8a3'),
(89, 103, 'en_us', 'Cases and Results Landing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 10:52:36', '2015-11-20 10:52:36', '48aa0130-9bcd-4ce2-b035-1188eb39d650'),
(90, 104, 'en_us', 'Employee For Life?', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mobil Producing Nigeria', '<p>The defendant claimed to be a life employee of ExxonMobil pursuant to an oral understanding between him and the Company following the acquisition of his land for the construction of an airstrip by ExxonMobil. He brought the action claiming N500Million in Libel and Breach of Contract against the Exxonmobil at the High Court of Akwa Ibom State of Nigeria in 2008 following the withdrawal of his services by the ExxonMobil’s Contractor who engaged him.</p>', '<p>GBC team reviewed the facts of the case and the relevant laws and filed a strong defense on behalf of our client, challenging the claims in their entirety. The team further canvassed strong legal arguments in court on behalf of the client and urged the court to dismiss the suit. The entire claims against the client – N500Million, were eventually dismissed by the Court.</p>', '<p>The client did not have to retain the claimant in its company against its will.<br>The client was relieved from the exposure paying the N500million claim.</p>', 'Suit No. HEK/81/2008: Udo Atang Essien V. Mobil Producing Nigeria Unlimited.', 'The defense of ExxonMobil against a Libel and Breach Case', '2015-11-20 11:45:09', '2015-11-20 14:31:17', '10bbeab6-e0d4-4cf1-aeb3-f446a4dc241d'),
(91, 105, 'en_us', 'Employee For Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 13:34:28', '2015-11-20 13:34:28', 'af6b4f1a-9a90-4d77-9cab-323f2ffb68c8'),
(92, 106, 'en_us', 'New  Minerals  And  Mining  Regulations 2011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:17:31', '2015-11-20 14:17:31', '89bfeff2-509c-4b8b-8c43-e5c456b8c39a'),
(93, 107, 'en_us', 'The New Minerals and Mining Regulations 2011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '	 The Federal Ministry of Mines and Steel Development (the ‘Ministry’) recently issued new mining regulations titled the Nigerian Minerals and Mining Regulations 2011 (the ‘Regulations’)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:17:54', '2015-11-20 14:17:54', 'f6e99061-e935-4387-8f48-4530264b1d12'),
(94, 108, 'en_us', 'Nogicd  Act 2010  Newsletter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:18:09', '2015-11-20 14:18:09', 'f9a3237b-3e55-43aa-b3d8-f6f34eea5745'),
(95, 109, 'en_us', 'NCDMB Issues Draft Regulations for Implementation of the Nigerian Content Act', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '	 The Nigerian Content Development and Monitoring Board Issues Draft Regulations For The Implementation Of The Nigerian Oil and gas Industry Content Development Act 2010.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:18:10', '2015-11-20 14:18:10', 'c5c67157-3c66-4937-b91f-33f1961c8ebe'),
(96, 110, 'en_us', 'Employees  Compensation  Act 2010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:19:05', '2015-11-20 14:19:05', '959ef9de-eb1a-4ec0-b8ef-8579fc359507'),
(97, 111, 'en_us', 'Employees'' Compensation Act 2010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'The Federal Government of Nigeria, in its bid to improve the welfare of Nigerian employees recently enacted the Employees’ Compensation Act 2010 (‘ECA’ or ‘the Act’) which introduces a new social security scheme for workers in the country.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:19:09', '2015-11-20 14:19:09', '1cf920cb-32fc-4381-969d-06b613668e3e'),
(98, 112, 'en_us', 'Roadmap  For  Power  Sector  Reform', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:19:36', '2015-11-20 14:19:36', '069a28fd-ffa4-4787-b0aa-ae7a4f8213a9'),
(99, 113, 'en_us', 'Nigeria Launches Roadmap for Power Sector Reform', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'President Goodluck Jonathan launched the most comprehensive plan which it tagged ‘Roadmap for Power Sector Reform’ aimed at restructuring the power sector and achieve stable electricity in the country.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:19:38', '2015-11-20 14:19:38', '61e8427e-3cb8-4bc7-a670-3f555c52447b'),
(100, 114, 'en_us', 'Investing In  Nigeria  Oand G  Industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:20:00', '2015-11-20 14:20:00', '422f2aa9-9e6b-4935-b694-a05275f23736'),
(101, 115, 'en_us', 'Investing in Nigeria’s Oil and Gas Industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nigeria is one of the world’s largest producers of crude oil. The country currently produces an average of 2.5 million barrels of crude oil per day. This makes her the 10th largest producer of crude oil in the world and the 6th largest exporter among OPEC members. Production capacity currently stands at about 3 million barrels per day whilst reserves is about 35 billion barrels which the government intends to increase to 40 billion barrels by the year 2010.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:20:04', '2015-11-20 14:20:04', 'd226b50b-0e08-437f-a4d3-34f19ae5f1a7'),
(102, 116, 'en_us', 'Taxation  Of  Expatriates  In  Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:20:44', '2015-11-20 14:20:44', '4a7f860c-dee9-498d-acd3-0be481c10338'),
(103, 117, 'en_us', 'Taxation of Expatriate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'This article examines in a very general way the existing framework for the taxation of expatriates in Nigeria. It considers in brief the applicable tax rate, the portion of the expatriate income that is actually subject to tax, how the tax is calculated, when an expatriate would be deemed resident in Nigeria and how the tax filing is carried out.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:20:46', '2015-11-20 14:20:46', '1d8090fa-3b7b-4208-a515-6c503e7ce14d'),
(104, 118, 'en_us', 'Mining In  Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:21:18', '2015-11-20 14:21:18', 'd7b3d42a-9f32-4932-8079-ffb0d4f7df27'),
(105, 119, 'en_us', 'Mining in Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'The Mining Industry is now a global industry with many countries competing for exploration funds.  The fierce international competition suggests that mining companies and their investment funds would only go to those countries where the enabling environment would allow the private sector to flourish without hindrance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:21:52', '2015-11-20 14:21:55', '730ca577-db24-4bdf-88e8-1577162a6ce9'),
(106, 120, 'en_us', 'Investors Guide', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:22:42', '2015-11-20 14:22:42', '3d51ed64-7e5e-432a-86e3-9a97cb8466cb'),
(107, 121, 'en_us', 'An Investor’s Guide to Doing Business In Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'With a population of about 140 million people, Nigeria is undoubtedly Africa’s most populous country, making it the African destination of choice for serious investors looking to take advantage of a potentially large market.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:22:44', '2015-11-20 14:22:44', 'a18caa6b-78dc-4574-85b5-7e5df995960e'),
(108, 122, 'en_us', 'Cabotage Regime', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:23:36', '2015-11-20 14:23:36', '6c077b19-4c09-4ccc-a032-e41a4c0837f6'),
(109, 123, 'en_us', 'Cabotage Regime in Nigeria - The Implementation Guidelines', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'The National Assembly on 30th April 2003 passed the Coastal and Inland Shipping (Cabotage) Act (“the Cabotage Act”) into Law. It was stipulated that the provisions of the Cabotage Act would become enforceable from 1st May 2004. The much awaited guidelines for the implementation of the provisions of the Cabotage Act were eventually released by the Honourable Minister of Transport on 7th of June 2004. We intend to give an overview of the guidelines in this newsletter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:23:38', '2015-11-20 14:23:38', '814fa02f-c4a2-4f03-a8ce-2183444d2333'),
(110, 124, 'en_us', 'Recent Bank Regulations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:24:13', '2015-11-20 14:24:13', '3701cf1b-e001-4cad-98e6-cf96a50e7ed4'),
(111, 125, 'en_us', 'Recent regulations affecting Banks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'As a result of international pressure particularly from the United States of America, some European countries and the global ombudsman, the Financial Action Task Force (FATF) based in Paris, France, threatening to apply sanctions on Nigeria and its banks for the rising cases of fraud and sharp practices in the financial system, the Federal Government recently reinforced the country’s laws in its bid to tackle the ugly trend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:24:25', '2015-11-20 14:24:25', 'f4d7fc59-91dc-421a-bfb7-3ec3a4db0eee'),
(112, 126, 'en_us', 'Nigeria  Sao Tome Principe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:25:06', '2015-11-20 14:25:06', '61427044-4c74-44b6-8725-6f3a23ac1109'),
(113, 127, 'en_us', 'Nigeria Sao Tome & Principe Licensing Rounds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'After much waiting, Nigeria and Sao Tome on the 22nd of April 2003, flagged off the licensing round for nine oil blocks in the Joint Development Zone (“JDZ”). The JDZ is an area of overlapping maritime boundary claims between Nigeria and Sao Tome, which both countries have agreed to jointly develop. The area is estimated to hold crude reserves of about six billion barrels.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-20 14:25:17', '2015-11-20 14:25:17', '7fe6f100-f636-4d81-80da-fc0bf9fda470'),
(114, 128, 'en_us', 'Suing the State', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mrs. Winifred Ugborogho & Anor', '<p>Lagos State Government purportedly revoked the Certificate of Occupancy of our client; Mrs. Winifred Ugborogho in the suit alleging that the clients owe some property levy in the region of N14Million. Her property was valued at about N80million. The clients had earlier made payments of this same property levy; therefore considered the demand exploitative.</p>', '<p>GBC team held several meetings with the government officials for the purpose of resolving the matter amicably but the meetings could not lead to settlement as the government officials. The team eventually instituted an action against the Lagos State Government seeking amongst others the reversal of the revocation of our clients Certificate of Occupancy.</p>', '<p>Our client obtained a reversal of the revocation of their Certificate of Occupancy. Full title was restored.</p>', 'SUIT No. LD/214/2008: Mrs. Winifred Ugborogho & Anor. V. Governor of Lagos State & ORS.', 'The reversal of the revocation of C of O', '2015-11-20 14:35:17', '2015-11-20 14:35:17', '364f199e-cf9b-4624-a34e-b82f4283bfae'),
(115, 129, 'en_us', 'Prove what you claim', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Baker Hughes Nigeria', '<p>The Claimant brought an action against our client; Baker Hughes, claiming the sum of N13Million as fees for clearing the goods at the port in Rivers State. Lazer Tech. did not provide any documents to justify the payment of this claim to it.</p>', '<p>The team eventually joined issues with the claimant at the High Court in Port Harcourt and canvassed strong legal arguments on behalf of our client, part of which is that the law requires a claimant to prove that which he is claiming. We urged the court to follow established principles of law in this case and dismiss the case for lack of merit.</p>', '<p>The case against Baker Hughes was entirely dismissed; they were spared the burden of paying the Lazer Tech’s &nbsp;claim of N13Million.</p>', 'SUIT No. PHC/929/2008: Lazer Tech Invest. Nig. V. Baker Hughes Nigeria Ltd.', 'The dismissal of claims against Baker Hughes', '2015-11-20 14:36:39', '2015-11-20 14:36:39', '9ef0938f-4115-40e1-92b3-6f4f65a53c6f'),
(116, 130, 'en_us', 'No Contract Breached ', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Baker Hughes', '<p>25 claimants who were former employees of Baker Hughes brought a claim of N30Million against our client for breach of contract of employment. Since the claimants’ employments were lawfully terminated and terminal benefits were duly paid to all of them, GBC Law viewed the suit as frivolous and an attempt by the claimants to exploit our client.</p>', '<p>We filed a vigorous defense against the suit and joined issues with the claimants. The team tendered evidence to show that the claimants’ case lacked merit. Strong legal arguments were further canvassed for the dismissal of the claimants’ claims against our client.</p>', '<p>The suit was dismissed in its entirety. Baker Hughes did not have to make any payment to the claimant’s</p>', 'PHC/384/2001: Suobo Clarkson & ORS v. Baker Hughes Nigeria Ltd.', 'The dismissal of breach of employment contract against Baker Hughes', '2015-11-20 14:37:36', '2015-11-20 14:37:36', 'd73c33f4-e635-4be8-86c4-0e6e3fea2184'),
(117, 131, 'en_us', 'Benefits paid already! ', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Baker Hughes Nig. Ltd.', '<p>Claimant brought a claim of N2,692,320 said to represent outstanding redundancy benefit against Baker Hughes at the High Court of Rivers State, Port Harcourt. Meanwhile, our client had made full payment by way of redundancy benefits to the claimant as documented and shown on records.</p>', '<p>Chief Nwagabara’s claims were vehemently challenged in court by the GBC team. Documents were tendered and legal arguments were canvassed for the dismissal of his claims. The team further urged the court to dismiss the claims as being frivolous.</p>', '<p>Case against client was dismissed entirely. Our client was relieved from paying the claim of nearly N2.7Million.</p>', 'Suit No. PHC/1476/2006: Chief S. C. Nwagbara v. Baker Hughes Nig. Ltd.', 'Dismissal of Redundancy Benefits Claim against Baker Hughes', '2015-11-20 14:38:42', '2015-11-20 14:38:42', '0806af7d-de79-41f0-a615-a641b4bf16f3'),
(118, 132, 'en_us', 'Restored Business', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sir. John Dozie Maduike', '<p>One of the defendants was a tenant to our client; Sir. John Maduike in respect of a shop in Lagos who later challenged our clients’ title to the shop with forged documents. GBC Law attempted resolving the matter amicably without success. The team eventually filed a suit claiming amongst others, a declaration of title and possession in favour of our client.</p>', '<p>We assembled documentary and oral evidence and presented cogent legal argument on behalf of Sir Maduike before the court. The defendants eventually contradicted their case before the court thereby dealing a blow to any chances of success in the suit.</p>', '<p>Our clients’ suit succeeded in court. Title and possession of the property in dispute were restored. Damages were also awarded.</p>', 'Suit No. ID/1711/2009: Sir John Dozie Maduike & ORS v. Auto Spare Parts AND Machinery Dealers Association & ORS.', 'Recovery of title and property', '2015-11-20 14:42:05', '2015-11-20 14:42:05', 'ca8d2f50-f968-4b28-b514-149bb355847a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_deprecationerrors`
--

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elementindexsettings`
--

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements`
--

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2015-11-13 22:54:17', '2015-11-13 22:54:17', '2fcd03e9-3f2f-43fa-a801-c18dcf7d5ecf'),
(2, 'Entry', 1, 0, '2015-11-13 22:54:20', '2015-11-17 15:35:51', '46dc51ce-74c4-4eec-9f7d-c769aa611a20'),
(6, 'Entry', 1, 0, '2015-11-17 08:49:31', '2015-11-17 10:24:10', 'f18ca809-9767-49b0-a692-afc3b04b8570'),
(7, 'Asset', 1, 0, '2015-11-17 09:11:25', '2015-11-17 09:24:47', '659765cf-2536-44fc-9531-69f86030f0f2'),
(9, 'Entry', 1, 0, '2015-11-17 09:31:40', '2015-11-19 23:18:49', '6d7d9400-cd2e-4dac-b6d8-10cc0ecd7c7b'),
(10, 'Asset', 1, 0, '2015-11-17 09:39:50', '2015-11-17 09:39:50', '1972ca34-f084-4e76-9db2-bfb61ce99f03'),
(11, 'Asset', 1, 0, '2015-11-17 11:23:38', '2015-11-17 11:23:38', 'ca4e22a3-4116-4915-a3d8-c363f8e5bd14'),
(12, 'Asset', 1, 0, '2015-11-17 11:24:41', '2015-11-17 11:24:41', '61f4ed6b-6d8c-4cd1-9513-d14924939025'),
(14, 'Asset', 1, 0, '2015-11-17 11:37:11', '2015-11-17 11:37:11', 'eab4169b-d3e2-4eb4-90cf-c6b74c829c14'),
(15, 'Asset', 1, 0, '2015-11-17 11:37:19', '2015-11-17 11:37:19', '1bfdc7ea-6820-4893-a8d5-3debdf93177f'),
(21, 'Entry', 1, 0, '2015-11-17 12:09:53', '2015-11-20 14:44:02', 'b108ad3f-c246-4ae2-b933-bfee0ee475d4'),
(22, 'Entry', 1, 0, '2015-11-17 12:20:17', '2015-11-17 12:20:17', 'c7723332-6e91-4d09-9623-b752f1502572'),
(23, 'Asset', 1, 0, '2015-11-17 12:52:28', '2015-11-17 12:52:28', '90b484ef-1147-49a7-9598-8ef90d6a19ea'),
(24, 'Entry', 1, 0, '2015-11-17 12:52:33', '2015-11-17 18:11:13', '600a3907-05dc-4764-adad-be6fb0e5a3f0'),
(25, 'Entry', 1, 0, '2015-11-17 13:15:13', '2015-11-20 08:10:25', '78f32d68-0a53-4b44-84c9-e521e6ec3ce2'),
(26, 'MatrixBlock', 1, 0, '2015-11-17 13:36:15', '2015-11-20 08:10:25', '661179cf-c070-4d6f-9c44-e3c8029a4579'),
(27, 'MatrixBlock', 1, 0, '2015-11-17 13:53:43', '2015-11-20 08:10:25', '2169b720-3e1d-448b-9398-c4fec75ae7ca'),
(28, 'MatrixBlock', 1, 0, '2015-11-17 13:53:44', '2015-11-20 08:10:25', '2d59f8fe-7e78-49fb-bfda-f1cdbf2bc446'),
(29, 'MatrixBlock', 1, 0, '2015-11-17 13:53:44', '2015-11-20 08:10:26', '4586cc81-5c05-464f-915c-282bf27d316b'),
(31, 'Asset', 1, 0, '2015-11-17 14:13:21', '2015-11-17 14:13:21', 'a46e7608-448d-499f-adbb-af3762d28bcb'),
(33, 'Asset', 1, 0, '2015-11-17 14:14:55', '2015-11-17 14:14:55', 'ee2d1481-510e-4c1e-8dc7-e3938b112423'),
(35, 'Entry', 1, 0, '2015-11-17 14:17:08', '2015-11-17 17:29:31', '61a5e53a-224f-4356-9b27-9c267a301d57'),
(36, 'Entry', 1, 0, '2015-11-17 14:18:00', '2015-11-17 17:31:00', 'dfa3e4a0-3a53-4a7e-8cd0-33baee9f5069'),
(37, 'Asset', 1, 0, '2015-11-17 14:18:48', '2015-11-17 14:18:48', '25732de2-b624-45c8-aa7e-89c12ceeda2b'),
(38, 'Entry', 1, 0, '2015-11-17 14:18:50', '2015-11-17 14:18:50', 'e74d6279-b131-4545-bd9c-c1fafadb7e76'),
(39, 'Entry', 1, 0, '2015-11-17 14:19:56', '2015-11-17 14:20:24', '14f434d1-65ab-4a41-bec0-078549d42182'),
(40, 'Asset', 1, 0, '2015-11-17 15:30:14', '2015-11-17 15:35:14', '10e3bf27-9bd2-4d86-a3f8-70650a699567'),
(42, 'Asset', 1, 0, '2015-11-17 15:35:40', '2015-11-17 15:35:40', '61eff011-b231-41ac-af6a-66843a147220'),
(43, 'Asset', 1, 0, '2015-11-17 17:00:04', '2015-11-17 18:44:04', 'f70c87b4-64ea-4ec5-b594-2939ef7b4762'),
(44, 'Entry', 1, 0, '2015-11-17 17:01:56', '2015-11-17 17:48:25', '5115d6d9-c25a-4dec-ab4f-478173d34e95'),
(45, 'Tag', 1, 0, '2015-11-17 17:27:46', '2015-11-17 17:28:19', 'e58a5ecf-426f-4e57-b7a3-edf0680effd5'),
(46, 'Tag', 1, 0, '2015-11-17 17:27:53', '2015-11-17 17:28:26', '126a167b-8e78-4cf1-8342-5e34ae8d8a01'),
(47, 'Tag', 1, 0, '2015-11-17 17:30:45', '2015-11-17 17:30:45', 'a0a7d5b7-6d31-4168-a155-66cb4ca9ce1f'),
(48, 'Tag', 1, 0, '2015-11-17 17:30:51', '2015-11-17 17:30:51', 'eff407bb-ce6e-4c43-950e-3ed86f1310ea'),
(49, 'Tag', 1, 0, '2015-11-17 17:30:56', '2015-11-17 17:30:56', '58aec1da-3ef3-4a02-98cc-6a7a780476c4'),
(50, 'Asset', 1, 0, '2015-11-17 17:39:29', '2015-11-17 17:43:45', 'b56e02eb-831f-4a67-92fe-8bbac6bb6608'),
(52, 'Asset', 1, 0, '2015-11-17 17:57:10', '2015-11-17 17:57:10', 'aee4397c-e33f-4a38-a37d-4a799755658b'),
(53, 'Asset', 1, 0, '2015-11-17 18:19:11', '2015-11-17 18:19:11', 'a07448e1-bfb3-4f94-8589-68657efbedc7'),
(54, 'Asset', 1, 0, '2015-11-17 18:22:06', '2015-11-17 18:25:06', 'ca87283d-5edd-41f5-a8ec-a9e9698a8b58'),
(55, 'Entry', 1, 0, '2015-11-17 18:22:08', '2015-11-17 18:28:25', '8ed54932-c84f-4a24-a839-7847d607e502'),
(57, 'Asset', 1, 0, '2015-11-17 18:36:19', '2015-11-17 18:36:38', 'a10b638e-c9d1-4c76-b5e4-619ab89dfbf8'),
(58, 'Asset', 1, 0, '2015-11-17 18:39:34', '2015-11-17 18:44:24', 'e6122115-1134-4aa3-ba76-642f2559a2e0'),
(59, 'Entry', 1, 0, '2015-11-17 18:39:36', '2015-11-17 18:48:28', 'd74dee72-8ed5-416b-a196-830c38ae9627'),
(61, 'Asset', 1, 0, '2015-11-17 18:50:45', '2015-11-17 19:22:04', 'a653e054-9bfd-481d-ac32-122706b20b77'),
(62, 'Asset', 1, 0, '2015-11-17 18:54:25', '2015-11-17 18:54:25', '522682a0-2992-4ca3-9b43-5f0e037e7a95'),
(63, 'Entry', 1, 0, '2015-11-17 18:56:23', '2015-11-17 18:56:23', '7b80077d-9745-4beb-af3d-7ac6c27eb018'),
(64, 'Asset', 1, 0, '2015-11-17 19:06:07', '2015-11-17 19:06:07', 'f66539cc-7e7c-4ee2-ac66-04ca0660014e'),
(65, 'Asset', 1, 0, '2015-11-17 19:09:13', '2015-11-17 19:09:13', '849024c0-04f4-4a7f-b4fc-39546f7f6625'),
(66, 'Entry', 1, 0, '2015-11-17 19:12:29', '2015-11-17 19:12:29', '99ef26c1-f37e-4ef6-b6c5-490a3788ef4c'),
(68, 'Asset', 1, 0, '2015-11-17 19:36:55', '2015-11-17 19:36:55', '6086f58f-32c9-47ee-9518-0161ccb47861'),
(69, 'Asset', 1, 0, '2015-11-17 19:38:25', '2015-11-17 19:46:03', '291b9c1e-a92e-449a-9024-815513806637'),
(70, 'Entry', 1, 0, '2015-11-17 19:43:41', '2015-11-17 19:43:41', '6e685e28-1530-430b-a722-0222e204ad98'),
(72, 'Entry', 1, 0, '2015-11-17 19:51:49', '2015-11-20 02:07:15', '7ba5a9b7-9343-49d9-82d7-f7060bb509d3'),
(73, 'Entry', 1, 0, '2015-11-17 19:57:07', '2015-11-17 20:28:07', 'f696cb61-4efe-40f3-ada8-9b077d6f54d0'),
(74, 'Asset', 1, 0, '2015-11-17 20:11:17', '2015-11-17 20:11:17', '23a17734-33b5-4a88-aa8e-50086b84abcc'),
(75, 'Asset', 1, 0, '2015-11-17 20:11:26', '2015-11-17 20:11:26', '23a8807e-0261-4c87-9c8c-26ea1cfe0863'),
(76, 'Asset', 1, 0, '2015-11-17 20:11:38', '2015-11-17 20:11:38', '3d03518c-0432-4c36-bc0c-098fd48830c2'),
(77, 'Asset', 1, 0, '2015-11-17 20:11:41', '2015-11-17 20:11:41', 'ba7b7211-c0f7-4dfc-a91a-2ae97ea17b23'),
(78, 'Entry', 1, 0, '2015-11-17 20:17:48', '2015-11-17 20:17:48', '322370c4-ce60-4d2e-9357-5c4a6e1e83f4'),
(79, 'Asset', 1, 0, '2015-11-20 00:46:00', '2015-11-20 00:46:00', 'a533fef9-de7a-4cd7-a142-9ccfc724382e'),
(80, 'Asset', 1, 0, '2015-11-20 00:46:22', '2015-11-20 00:46:22', 'dfa0a214-0984-47f3-8b19-576f1fe14183'),
(81, 'Asset', 1, 0, '2015-11-20 00:46:35', '2015-11-20 00:46:35', '747e6fee-d922-4b3a-a033-5c104bef36b4'),
(82, 'GlobalSet', 1, 0, '2015-11-20 00:53:48', '2015-11-20 01:00:33', 'ce94765c-a5ae-49c2-bf08-598f1fcd580e'),
(83, 'Asset', 1, 0, '2015-11-20 01:00:20', '2015-11-20 01:00:20', 'dfca6570-c9fc-4a5a-8b65-80752722fe32'),
(84, 'Asset', 1, 0, '2015-11-20 01:04:03', '2015-11-20 01:04:03', '6528058a-1e2a-4cc3-9f75-d3f3c146694c'),
(85, 'Asset', 1, 0, '2015-11-20 01:04:40', '2015-11-20 01:04:40', '472cbe7c-48ed-4d1c-82cf-9b913bb6658b'),
(86, 'Asset', 1, 0, '2015-11-20 01:05:01', '2015-11-20 01:05:01', 'eb3e1e20-7609-43da-8bb1-17523d58f0af'),
(87, 'Asset', 1, 0, '2015-11-20 01:05:34', '2015-11-20 01:06:26', 'e761c8bc-c465-40b2-b5e4-c7b4a331e635'),
(88, 'Asset', 1, 0, '2015-11-20 01:05:46', '2015-11-20 01:06:10', '62c39b43-46ca-4d0c-81b0-24c2db0e8f81'),
(89, 'Asset', 1, 0, '2015-11-20 01:06:45', '2015-11-20 01:06:45', '5c48f3e7-aec9-46e4-b246-01a7b6a1348f'),
(90, 'MatrixBlock', 1, 0, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '10c51802-bfc4-4b67-886e-bad30465b329'),
(91, 'MatrixBlock', 1, 0, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '1cfa9a35-b79e-4dc4-abf4-7e6bd33d418e'),
(92, 'MatrixBlock', 1, 0, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '3339338e-2697-4014-9374-06f060830233'),
(93, 'MatrixBlock', 1, 0, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '1a7aa3d5-5044-4ee0-bee0-f1dc0ccfc188'),
(94, 'MatrixBlock', 1, 0, '2015-11-20 01:07:11', '2015-11-20 14:44:02', 'ce1fe8f6-c5c7-4723-bd4e-9d584d25a241'),
(95, 'MatrixBlock', 1, 0, '2015-11-20 01:07:11', '2015-11-20 14:44:02', 'bb896c1f-7247-4e0f-9f40-a9b4d9ec87fa'),
(96, 'MatrixBlock', 1, 0, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '22559a05-b176-4603-8f17-1ee29421ce37'),
(97, 'MatrixBlock', 1, 0, '2015-11-20 01:07:11', '2015-11-20 14:44:02', 'cbce4cde-94ea-4fff-9364-1595cd1d8476'),
(98, 'Asset', 1, 0, '2015-11-20 01:08:25', '2015-11-20 01:08:28', '6d132693-51c4-4137-9db3-100c7d4e9c86'),
(99, 'Asset', 1, 0, '2015-11-20 01:08:39', '2015-11-20 01:08:39', '3b47ba0d-e183-46b1-9876-350c6f8f2c3b'),
(100, 'MatrixBlock', 1, 0, '2015-11-20 01:09:13', '2015-11-20 14:44:02', '49f30a72-b2ff-40b4-a9ed-acbdc215b7d5'),
(101, 'MatrixBlock', 1, 0, '2015-11-20 01:09:13', '2015-11-20 14:44:02', '73199fc9-4a0d-4c9b-a54b-aeed76a4dd0f'),
(102, 'Entry', 1, 0, '2015-11-20 10:26:21', '2015-11-20 10:26:21', '8e4e089f-2871-42f5-8061-876252bb553e'),
(103, 'Entry', 1, 0, '2015-11-20 10:52:36', '2015-11-20 10:52:36', 'fb47f0cd-66ce-476a-8c1c-64edca13555f'),
(104, 'Entry', 1, 0, '2015-11-20 11:45:09', '2015-11-20 14:31:17', 'ec3bdf94-38f4-4fe1-a86a-b18d599bba58'),
(105, 'Asset', 1, 0, '2015-11-20 13:34:28', '2015-11-20 13:34:28', '647cae63-bad4-49dd-b76a-c5f5d8e4497d'),
(106, 'Asset', 1, 0, '2015-11-20 14:17:31', '2015-11-20 14:17:31', '7bf6ff46-afa3-4b8d-b4f2-9e176b783fac'),
(107, 'Entry', 1, 0, '2015-11-20 14:17:54', '2015-11-20 14:17:54', '9f54304f-948d-487f-8b25-33f7864753bf'),
(108, 'Asset', 1, 0, '2015-11-20 14:18:09', '2015-11-20 14:18:09', '3a8e662c-c6f3-4158-a855-bb782a1b3baf'),
(109, 'Entry', 1, 0, '2015-11-20 14:18:10', '2015-11-20 14:18:10', '506f8300-b4dd-4e20-acef-85ec8dcd8dab'),
(110, 'Asset', 1, 0, '2015-11-20 14:19:05', '2015-11-20 14:19:05', 'b85bfa56-6761-40d4-af95-279067c8af1c'),
(111, 'Entry', 1, 0, '2015-11-20 14:19:09', '2015-11-20 14:19:09', '0bdcaa45-ef42-4502-943a-01cd522e2596'),
(112, 'Asset', 1, 0, '2015-11-20 14:19:36', '2015-11-20 14:19:36', '78e04e02-735e-4915-bbf1-9464a4776ea9'),
(113, 'Entry', 1, 0, '2015-11-20 14:19:38', '2015-11-20 14:19:38', '30b4622f-67f5-477a-99d1-8a135afa48ca'),
(114, 'Asset', 1, 0, '2015-11-20 14:20:00', '2015-11-20 14:20:00', 'c1498ab0-e753-4048-8da2-42d63ba07d1d'),
(115, 'Entry', 1, 0, '2015-11-20 14:20:04', '2015-11-20 14:20:04', 'bf9b9431-dad6-4b67-bc90-e5ec75a78e22'),
(116, 'Asset', 1, 0, '2015-11-20 14:20:44', '2015-11-20 14:20:44', '34c1a1ae-699c-4c22-b51f-a0ddf58219ad'),
(117, 'Entry', 1, 0, '2015-11-20 14:20:46', '2015-11-20 14:20:46', 'd8e168ac-ad70-4139-90c6-1f71fbb43b2c'),
(118, 'Asset', 1, 0, '2015-11-20 14:21:18', '2015-11-20 14:21:18', '427f35e8-2a32-4d19-b80b-989ac88e1d3a'),
(119, 'Entry', 1, 0, '2015-11-20 14:21:52', '2015-11-20 14:21:55', '19f5bc98-2da8-49be-83b7-e5201c28fba8'),
(120, 'Asset', 1, 0, '2015-11-20 14:22:42', '2015-11-20 14:22:42', '20c8e31d-0cfe-4521-8afd-b6747f858cbe'),
(121, 'Entry', 1, 0, '2015-11-20 14:22:44', '2015-11-20 14:22:44', '30acf22a-04e6-4bf0-96c2-ff2c8bc711e4'),
(122, 'Asset', 1, 0, '2015-11-20 14:23:36', '2015-11-20 14:23:36', '6a8d70d4-0eda-4fd7-a38d-7b404266f9ef'),
(123, 'Entry', 1, 0, '2015-11-20 14:23:38', '2015-11-20 14:23:38', 'a879f2f5-2437-429d-8781-03097cbc7bbd'),
(124, 'Asset', 1, 0, '2015-11-20 14:24:13', '2015-11-20 14:24:13', '20f59072-14d6-4f15-b67e-ca236cd922a5'),
(125, 'Entry', 1, 0, '2015-11-20 14:24:25', '2015-11-20 14:24:25', 'd1921ae5-680d-4e5b-b520-72cc1a60a426'),
(126, 'Asset', 1, 0, '2015-11-20 14:25:06', '2015-11-20 14:25:06', '7de3939c-4ce0-42be-be35-e6a18fcccc07'),
(127, 'Entry', 1, 0, '2015-11-20 14:25:17', '2015-11-20 14:25:17', 'eeffbd5e-394a-40f6-b082-5edf072ec343'),
(128, 'Entry', 1, 0, '2015-11-20 14:35:17', '2015-11-20 14:35:17', '4c771eba-1768-4e0a-92b7-80c9698e76f2'),
(129, 'Entry', 1, 0, '2015-11-20 14:36:39', '2015-11-20 14:36:39', 'c28223ed-c3e5-4575-834a-614e7dd4b098'),
(130, 'Entry', 1, 0, '2015-11-20 14:37:36', '2015-11-20 14:37:36', '2ee13c80-1904-4843-8cca-5a4ccc992b50'),
(131, 'Entry', 1, 0, '2015-11-20 14:38:42', '2015-11-20 14:38:42', '069bcbde-6b9f-493f-ac30-41cc60f68547'),
(132, 'Entry', 1, 0, '2015-11-20 14:42:05', '2015-11-20 14:42:05', '064683ec-1b2e-4962-89a3-0708c9e38005');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements_i18n`
--

CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', '', NULL, 1, '2015-11-13 22:54:17', '2015-11-13 22:54:17', '19699c7a-ee0a-4f89-b389-4c2c8cadea50'),
(2, 2, 'en_us', 'homepage', '__home__', 1, '2015-11-13 22:54:20', '2015-11-17 15:35:51', '184422cb-8996-4e92-afa1-909ac571ef42'),
(6, 6, 'en_us', 'careers', 'careers', 1, '2015-11-17 08:49:31', '2015-11-17 10:24:10', '448694ee-aa42-426c-bc1d-06722dc9b9bf'),
(7, 7, 'en_us', 'careers', NULL, 1, '2015-11-17 09:11:25', '2015-11-17 09:24:47', '3ff7bac4-8206-42c2-8be4-204fac72270f'),
(9, 9, 'en_us', 'contact', 'contact', 1, '2015-11-17 09:31:40', '2015-11-19 23:18:49', '231fd5dd-610f-4600-b521-9caa0ab8c6e7'),
(10, 10, 'en_us', 'contact-bg', NULL, 1, '2015-11-17 09:39:50', '2015-11-17 09:39:50', 'ac9776ff-de63-4c12-80b1-a4f2ec1a336e'),
(11, 11, 'en_us', 'gbenga', NULL, 1, '2015-11-17 11:23:38', '2015-11-17 11:23:38', '45725d23-f3d5-47e2-b80a-9da151178f50'),
(12, 12, 'en_us', 'gbenga-biobaku', NULL, 1, '2015-11-17 11:24:41', '2015-11-17 11:24:41', '12ab2120-38b3-49c5-ba8b-14b37da89f47'),
(14, 14, 'en_us', 'gbenga', NULL, 1, '2015-11-17 11:37:11', '2015-11-17 11:37:11', '540ff450-defb-40af-8ae0-875ae5ba53c1'),
(15, 15, 'en_us', 'gbenga-biobaku', NULL, 1, '2015-11-17 11:37:19', '2015-11-17 11:37:19', '326c99fe-7dce-401f-acfb-64aa9e5a8241'),
(17, 21, 'en_us', 'about-gbc', 'about', 1, '2015-11-17 12:09:53', '2015-11-20 14:44:02', 'cb49707d-d093-491d-a5c0-c6ebe303efa7'),
(18, 22, 'en_us', 'gbenga-biobaku', 'about/gbenga-biobaku', 1, '2015-11-17 12:20:17', '2015-11-17 12:20:17', 'fbbfb3bf-1210-46e6-8438-9a212407c668'),
(19, 23, 'en_us', '1', NULL, 1, '2015-11-17 12:52:28', '2015-11-17 12:52:28', 'b6e9b82f-a52e-4d71-9c72-1f58a60d31e5'),
(20, 24, 'en_us', 'nkoyo-rapu', 'about/nkoyo-rapu', 1, '2015-11-17 12:52:33', '2015-11-17 18:11:13', '6f6dc01e-fa21-4745-9da3-48d1d95476c3'),
(21, 25, 'en_us', 'expertise', 'expertise', 1, '2015-11-17 13:15:13', '2015-11-20 08:10:25', '6a2b49a1-5eb3-4077-a40f-be34266dc3c6'),
(22, 26, 'en_us', '', NULL, 1, '2015-11-17 13:36:15', '2015-11-20 08:10:25', '10b74bfa-347d-48f2-9c17-e8b3014c5807'),
(23, 27, 'en_us', '', NULL, 1, '2015-11-17 13:53:43', '2015-11-20 08:10:25', '7f95d499-a413-441c-af25-396d1b8155a7'),
(24, 28, 'en_us', '', NULL, 1, '2015-11-17 13:53:44', '2015-11-20 08:10:26', '84dcb844-19f2-42cd-a5fd-6abd816e710c'),
(25, 29, 'en_us', '', NULL, 1, '2015-11-17 13:53:44', '2015-11-20 08:10:26', '966cf954-c8dc-4eaf-9922-b522932f591b'),
(27, 31, 'en_us', 'the-exclusive-jurisdiction-of-the-national-industrial-court', NULL, 1, '2015-11-17 14:13:21', '2015-11-17 14:13:21', '7fbb35b7-6de1-46cd-afc1-98bdb4d7b949'),
(29, 33, 'en_us', 'arbitrability-of-tax-issues-arising-from-production-sharing-contracts', NULL, 1, '2015-11-17 14:14:55', '2015-11-17 14:14:55', '31703039-8820-443a-9ad2-815ff9249502'),
(30, 35, 'en_us', 'the-exclusive-jurisdiction-of-the-national-industrial-court-in-labour-and-employment-matters', 'publications/the-exclusive-jurisdiction-of-the-national-industrial-court-in-labour-and-employment-matters', 1, '2015-11-17 14:17:08', '2015-11-17 17:29:32', 'e6439fa1-5003-4403-8b83-e3938537a4be'),
(31, 36, 'en_us', 'arbitrability-of-tax-issues-arising-from-production-sharing-contracts-firs-v-nnpc', 'publications/arbitrability-of-tax-issues-arising-from-production-sharing-contracts-firs-v-nnpc', 1, '2015-11-17 14:18:00', '2015-11-17 17:31:00', '1c829822-ec4c-4b54-a616-084bdb56955f'),
(32, 37, 'en_us', 'investing-in-nigeria-oand-g-industry', NULL, 1, '2015-11-17 14:18:48', '2015-11-17 14:18:48', '99d88f8b-254f-45f2-bc65-2b8d411608d8'),
(33, 38, 'en_us', 'investing-in-nigerias-oil-and-gas-industry', 'publications/investing-in-nigerias-oil-and-gas-industry', 1, '2015-11-17 14:18:50', '2015-11-17 14:18:50', '83021840-32d9-4950-bce8-612188dc102e'),
(34, 39, 'en_us', 'publications-landing', 'publications', 1, '2015-11-17 14:19:57', '2015-11-17 14:20:24', '285bc5f4-a7d6-40f4-91b7-6d0f9b9aa54d'),
(35, 40, 'en_us', 'gbc-corporate-practice-banner', NULL, 1, '2015-11-17 15:30:14', '2015-11-17 15:35:14', '8fb0224a-0269-4795-9cf9-895d9e991cbe'),
(37, 42, 'en_us', 'gbc-modern-law-firm', NULL, 1, '2015-11-17 15:35:40', '2015-11-17 15:35:40', '343d57bc-b685-4fb3-a33e-4ef4cfcdc5a1'),
(38, 43, 'en_us', '4', NULL, 1, '2015-11-17 17:00:04', '2015-11-17 18:44:04', '1c81fe25-86aa-4e8d-90a7-92f47aa42b17'),
(39, 44, 'en_us', 'ijeoma-abalogu', 'about/ijeoma-abalogu', 1, '2015-11-17 17:01:56', '2015-11-17 17:48:25', 'dbdae21d-3294-4a43-95a3-ff42a7b7fa0d'),
(40, 45, 'en_us', 'labour', NULL, 1, '2015-11-17 17:27:46', '2015-11-17 17:28:19', '47ec682c-792e-4388-ac03-3b0bfb24b252'),
(41, 46, 'en_us', 'employment', NULL, 1, '2015-11-17 17:27:53', '2015-11-17 17:28:26', '26c9f918-0012-4084-9a8d-c0a84ab53ee5'),
(42, 47, 'en_us', 'arbitration', NULL, 1, '2015-11-17 17:30:45', '2015-11-17 17:30:45', '0520bf88-cb34-420f-9fe3-e869ea517c1a'),
(43, 48, 'en_us', 'tax', NULL, 1, '2015-11-17 17:30:51', '2015-11-17 17:30:51', 'cd63d89c-2500-404d-8e45-45401005489c'),
(44, 49, 'en_us', 'energy', NULL, 1, '2015-11-17 17:30:56', '2015-11-17 17:30:56', '7f0d788d-bc2e-407f-b33e-56dcc5e4a00a'),
(45, 50, 'en_us', 'ijeoma-abalogu', NULL, 1, '2015-11-17 17:39:29', '2015-11-17 17:43:45', '1ac88592-7f92-4d22-b58f-e27af33dcded'),
(47, 52, 'en_us', 'nkoyo-rapu', NULL, 1, '2015-11-17 17:57:10', '2015-11-17 17:57:10', '357992ab-3492-4ea3-bcfd-acb8b3d2aba7'),
(48, 53, 'en_us', '6', NULL, 1, '2015-11-17 18:19:11', '2015-11-17 18:19:11', '49eae0b3-6846-4215-bf69-6bbfee12f079'),
(49, 54, 'en_us', 'okey-nwanya', NULL, 1, '2015-11-17 18:22:06', '2015-11-17 18:25:06', 'dfea0ca5-a6f7-476e-8d26-cf7706e84554'),
(50, 55, 'en_us', 'okey-nwaya', 'about/okey-nwaya', 1, '2015-11-17 18:22:08', '2015-11-17 20:19:47', 'b13e7535-34cd-4e7f-b7c9-9985f99bf349'),
(52, 57, 'en_us', '2', NULL, 1, '2015-11-17 18:36:19', '2015-11-17 18:36:38', 'd98ba86b-7cde-4994-ab81-281fdceb247b'),
(53, 58, 'en_us', 'sogo-akinola', NULL, 1, '2015-11-17 18:39:34', '2015-11-17 18:44:24', '383d99c4-085d-4d47-ab5d-7def547dec6c'),
(54, 59, 'en_us', 'sogo-akinola', 'about/sogo-akinola', 1, '2015-11-17 18:39:36', '2015-11-17 18:48:28', '8be48ca2-a1db-4858-8594-6e72e42c97d7'),
(56, 61, 'en_us', '7', NULL, 1, '2015-11-17 18:50:45', '2015-11-17 19:22:04', '3fb1bdff-dfdc-4cd9-9aa3-50d721b74ec8'),
(57, 62, 'en_us', 'sandra-asuzu', NULL, 1, '2015-11-17 18:54:25', '2015-11-17 18:54:25', 'd3cd7805-e547-4aca-8829-f720870678a4'),
(58, 63, 'en_us', 'sandra-asuzu', 'about/sandra-asuzu', 1, '2015-11-17 18:56:23', '2015-11-17 20:19:39', 'b8dd030d-a84f-4cd1-8f71-6f1bcc072c69'),
(59, 64, 'en_us', '3', NULL, 1, '2015-11-17 19:06:07', '2015-11-17 19:06:07', '2d9375d7-1c37-457f-a5d3-95eae82f0d93'),
(60, 65, 'en_us', 'ayoade-oluwasanmi', NULL, 1, '2015-11-17 19:09:13', '2015-11-17 19:09:13', 'ce818a6f-a1ae-4dc7-9800-69ba7de54bf2'),
(61, 66, 'en_us', 'ayoade-oluwasanmi', 'about/ayoade-oluwasanmi', 1, '2015-11-17 19:12:29', '2015-11-17 20:19:31', 'fb485e85-5733-4753-a5c5-3e8f4ddffc9f'),
(63, 68, 'en_us', 'edward-vera-cruz2', NULL, 1, '2015-11-17 19:36:55', '2015-11-17 19:36:55', 'fc46b799-b815-4be1-a47f-e06eeb6d6d8a'),
(64, 69, 'en_us', 'edward-vera-cruz', NULL, 1, '2015-11-17 19:38:25', '2015-11-17 19:46:03', 'e3ec7570-60a4-47b1-9408-e97bf1de50f1'),
(65, 70, 'en_us', 'edward-o-vera-cruz', 'about/edward-o-vera-cruz', 1, '2015-11-17 19:43:41', '2015-11-17 20:19:11', '6f1c81e0-42ee-4dbc-8021-db675a31c08b'),
(67, 72, 'en_us', 'lola-ogunmodede', 'about/lola-ogunmodede', 1, '2015-11-17 19:51:49', '2015-11-20 02:07:15', '3ecec499-d2ef-4578-b4ec-0a88a155e4ec'),
(68, 73, 'en_us', 'wole-tejuoso', 'about/wole-tejuoso', 1, '2015-11-17 19:57:07', '2015-11-17 20:28:08', '11a77f8c-9025-424d-ba2f-2fb21fecc242'),
(69, 74, 'en_us', 'blank', NULL, 1, '2015-11-17 20:11:17', '2015-11-17 20:11:17', '20d24c3a-166b-4f7e-856b-bd4f216f8714'),
(70, 75, 'en_us', 'blank2', NULL, 1, '2015-11-17 20:11:26', '2015-11-17 20:11:26', '5fc2a98f-109b-4fe1-822e-eddecbf735c5'),
(71, 76, 'en_us', 'blank2', NULL, 1, '2015-11-17 20:11:38', '2015-11-17 20:11:38', 'd62c771e-fc86-4881-81d2-0c2f6e204f4e'),
(72, 77, 'en_us', 'blank', NULL, 1, '2015-11-17 20:11:41', '2015-11-17 20:11:41', '7b2892c6-786f-4cde-b082-c62c562b04dc'),
(73, 78, 'en_us', 'edwin-egede', 'about/edwin-egede', 1, '2015-11-17 20:17:48', '2015-11-17 20:19:21', 'b979ff20-2a12-4d8d-9d5d-8a1867c2a715'),
(74, 79, 'en_us', 'exxon-mobil', NULL, 1, '2015-11-20 00:46:00', '2015-11-20 00:46:00', '705fe1ac-e788-4ada-9640-f9800b92792f'),
(75, 80, 'en_us', 'statoil-ngieria', NULL, 1, '2015-11-20 00:46:22', '2015-11-20 00:46:22', '4c4461da-646f-433a-90b6-6c8c2d296afa'),
(76, 81, 'en_us', 'baker-hughes', NULL, 1, '2015-11-20 00:46:35', '2015-11-20 00:46:35', '540d82e8-5591-47fc-a66e-e16c790032eb'),
(77, 82, 'en_us', '', NULL, 1, '2015-11-20 00:53:49', '2015-11-20 01:00:33', '8a226d07-6e94-4fa8-a6bf-40100912a93d'),
(78, 83, 'en_us', 'gbenga-biobaku-and-co-gbc', NULL, 1, '2015-11-20 01:00:20', '2015-11-20 01:00:20', '34de1091-b89a-46fe-b8b6-337a602dec80'),
(79, 84, 'en_us', 'bj-services-nigeria', NULL, 1, '2015-11-20 01:04:03', '2015-11-20 01:04:03', '05bd9c18-4ef3-4b95-948a-853bba526c3d'),
(80, 85, 'en_us', 'parker-drilling', NULL, 1, '2015-11-20 01:04:40', '2015-11-20 01:04:40', 'f3da0f04-4700-471b-8911-ef18f603f58b'),
(81, 86, 'en_us', 'oceaneering-nigeria', NULL, 1, '2015-11-20 01:05:01', '2015-11-20 01:05:01', 'e319ac36-94b4-4c6b-ba64-af4d97416061'),
(82, 87, 'en_us', 'african-capital-alliance-1', NULL, 1, '2015-11-20 01:05:34', '2015-11-20 01:06:26', '2a500c80-3e4e-4c98-a097-c350e6a7877e'),
(83, 88, 'en_us', 'african-capital-alliance', NULL, 1, '2015-11-20 01:05:46', '2015-11-20 01:06:10', '23f3a6b9-27b1-48cc-9e56-6decaea18a43'),
(84, 89, 'en_us', 'pentagon-petroleum-limited', NULL, 1, '2015-11-20 01:06:45', '2015-11-20 01:06:45', '69f6d344-8176-4cfb-88d9-a17d31e13649'),
(85, 90, 'en_us', '', NULL, 1, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '1729d4fc-4db7-4a6e-90c9-5ebdd5045181'),
(86, 91, 'en_us', '', NULL, 1, '2015-11-20 01:07:11', '2015-11-20 14:44:02', 'cfd66f77-8877-4179-8e4e-23b6a4ec6850'),
(87, 92, 'en_us', '', NULL, 1, '2015-11-20 01:07:11', '2015-11-20 14:44:02', 'bacb0eea-77ef-426f-adb2-44bf06a0cbdb'),
(88, 93, 'en_us', '', NULL, 1, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '1a5cb2cb-c98a-416b-8d03-dfce352ce031'),
(89, 94, 'en_us', '', NULL, 1, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '975b715a-ff63-4972-9d28-5b443f26ebf0'),
(90, 95, 'en_us', '', NULL, 1, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '5afa6c50-fdf6-4a44-bdb0-5cc37fe14345'),
(91, 96, 'en_us', '', NULL, 1, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '38644dc9-2a04-4c88-b036-86fa7d79e816'),
(92, 97, 'en_us', '', NULL, 1, '2015-11-20 01:07:11', '2015-11-20 14:44:02', 'f778164c-e6a5-4feb-a644-ac2a012d1078'),
(93, 98, 'en_us', 'pentagon-petroleum-limited', NULL, 1, '2015-11-20 01:08:25', '2015-11-20 01:08:28', '2b6b0a72-ea00-4159-8e18-0595314d15b8'),
(94, 99, 'en_us', 'taba-nigeria', NULL, 1, '2015-11-20 01:08:39', '2015-11-20 01:08:39', '6cab1058-d1da-400b-a2a1-a80e844ea092'),
(95, 100, 'en_us', '', NULL, 1, '2015-11-20 01:09:13', '2015-11-20 14:44:02', '22731877-d171-468a-be33-b6a80c95f7d5'),
(96, 101, 'en_us', '', NULL, 1, '2015-11-20 01:09:13', '2015-11-20 14:44:02', 'f324b1e6-503a-410a-b163-ca8995bc4877'),
(97, 102, 'en_us', 'sitemap', 'sitemap', 1, '2015-11-20 10:26:21', '2015-11-20 10:26:21', 'e71441d2-ed61-46b0-a921-c8b3e5863120'),
(98, 103, 'en_us', 'cases-and-results-landing', 'cases-and-results', 1, '2015-11-20 10:52:36', '2015-11-20 10:52:36', '993914bc-55ad-41f8-9c7e-d243d241df6c'),
(99, 104, 'en_us', 'employee-for-life-udo-atang-vs-exxonmobil', 'cases-and-results/employee-for-life-udo-atang-vs-exxonmobil', 1, '2015-11-20 11:45:09', '2015-11-20 14:31:17', '0f3c92c4-df06-4c64-919b-1f21a4728d72'),
(100, 105, 'en_us', 'employee-for-life', NULL, 1, '2015-11-20 13:34:28', '2015-11-20 13:34:28', '5a7a1f14-52c0-46d1-9d1e-89c6e744c3ae'),
(101, 106, 'en_us', 'new-minerals-and-mining-regulations-2011', NULL, 1, '2015-11-20 14:17:31', '2015-11-20 14:17:31', 'eb675426-804c-466e-9c7a-79396bf483ce'),
(102, 107, 'en_us', 'the-new-minerals-and-mining-regulations-2011', 'publications/the-new-minerals-and-mining-regulations-2011', 1, '2015-11-20 14:17:54', '2015-11-20 14:17:56', 'a996c551-acf7-4193-8fd1-e85514f1eab3'),
(103, 108, 'en_us', 'nogicd-act-2010-newsletter', NULL, 1, '2015-11-20 14:18:09', '2015-11-20 14:18:09', '703da8d3-69c4-4c46-9169-57aef5dd00f7'),
(104, 109, 'en_us', 'ncdmb-issues-draft-regulations-for-implementation-of-the-nigerian-content-act', 'publications/ncdmb-issues-draft-regulations-for-implementation-of-the-nigerian-content-act', 1, '2015-11-20 14:18:10', '2015-11-20 14:18:11', 'c45de7bd-3974-4a3f-8caf-1a44cda2c92e'),
(105, 110, 'en_us', 'employees-compensation-act-2010', NULL, 1, '2015-11-20 14:19:05', '2015-11-20 14:19:05', '1a96c448-573a-4717-8a14-6f3735bcaa69'),
(106, 111, 'en_us', 'employees-compensation-act-2010', 'publications/employees-compensation-act-2010', 1, '2015-11-20 14:19:09', '2015-11-20 14:19:10', '14e705aa-b388-4ac4-9211-81464929107d'),
(107, 112, 'en_us', 'roadmap-for-power-sector-reform', NULL, 1, '2015-11-20 14:19:36', '2015-11-20 14:19:36', '9e3ccf34-757a-4e0a-b1a8-b6f4aeea9451'),
(108, 113, 'en_us', 'nigeria-launches-roadmap-for-power-sector-reform', 'publications/nigeria-launches-roadmap-for-power-sector-reform', 1, '2015-11-20 14:19:38', '2015-11-20 14:19:39', '9e3f0f6b-59f0-4344-8152-a9062f01caec'),
(109, 114, 'en_us', 'investing-in-nigeria-oand-g-industry', NULL, 1, '2015-11-20 14:20:00', '2015-11-20 14:20:00', '9d461948-9d2c-493d-a1ec-d65a5558fb22'),
(110, 115, 'en_us', 'investing-in-nigerias-oil-and-gas-industry-1', 'publications/investing-in-nigerias-oil-and-gas-industry-1', 1, '2015-11-20 14:20:05', '2015-11-20 14:20:06', '04777a91-009a-4e18-976c-ea2ced040d49'),
(111, 116, 'en_us', 'taxation-of-expatriates-in-nigeria', NULL, 1, '2015-11-20 14:20:44', '2015-11-20 14:20:44', 'd53725ba-0054-4b80-b8b2-03257158c559'),
(112, 117, 'en_us', 'taxation-of-expatriate', 'publications/taxation-of-expatriate', 1, '2015-11-20 14:20:46', '2015-11-20 14:20:47', 'd5f5c3d0-0f47-4726-b0ad-fe96efc3667c'),
(113, 118, 'en_us', 'mining-in-nigeria', NULL, 1, '2015-11-20 14:21:18', '2015-11-20 14:21:18', '8b0ca29a-9525-4567-98be-e568e99c7e54'),
(114, 119, 'en_us', 'mining-in-nigeria', 'publications/mining-in-nigeria', 1, '2015-11-20 14:21:52', '2015-11-20 14:21:55', '33ba1cb2-c547-40f6-8f38-8e80532dbb91'),
(115, 120, 'en_us', 'investors-guide', NULL, 1, '2015-11-20 14:22:42', '2015-11-20 14:22:42', 'b056c09c-fa47-47d6-bfe2-35be0cf029a3'),
(116, 121, 'en_us', 'an-investors-guide-to-doing-business-in-nigeria', 'publications/an-investors-guide-to-doing-business-in-nigeria', 1, '2015-11-20 14:22:44', '2015-11-20 14:22:46', 'b3ce9bd5-e6a4-46bf-81bb-4ff9b2b0c892'),
(117, 122, 'en_us', 'cabotage-regime', NULL, 1, '2015-11-20 14:23:36', '2015-11-20 14:23:36', '81173d29-1364-44de-85d2-de5a07a4ed72'),
(118, 123, 'en_us', 'cabotage-regime-in-nigeria-the-implementation-guidelines', 'publications/cabotage-regime-in-nigeria-the-implementation-guidelines', 1, '2015-11-20 14:23:38', '2015-11-20 14:23:39', '7d4efae6-3e99-4e2c-8333-09dbfc0181a2'),
(119, 124, 'en_us', 'recent-bank-regulations', NULL, 1, '2015-11-20 14:24:13', '2015-11-20 14:24:13', '60964f27-d19e-44d6-827b-444b1e0f4d79'),
(120, 125, 'en_us', 'recent-regulations-affecting-banks', 'publications/recent-regulations-affecting-banks', 1, '2015-11-20 14:24:26', '2015-11-20 14:24:27', '5812dec9-b2e0-47c8-8a70-130874f88d5e'),
(121, 126, 'en_us', 'nigeria-sao-tome-principe', NULL, 1, '2015-11-20 14:25:06', '2015-11-20 14:25:06', '9a52af5d-0d2f-4069-9c6e-7632d4402773'),
(122, 127, 'en_us', 'nigeria-sao-tome-principe-licensing-rounds', 'publications/nigeria-sao-tome-principe-licensing-rounds', 1, '2015-11-20 14:25:17', '2015-11-20 14:25:19', '7c3b6e94-892a-4982-beb1-aff686198dd3'),
(123, 128, 'en_us', 'suing-the-state', 'cases-and-results/suing-the-state', 1, '2015-11-20 14:35:17', '2015-11-20 14:35:18', '515a08c9-60d9-4416-a700-1a5288e7456f'),
(124, 129, 'en_us', 'prove-what-you-claim', 'cases-and-results/prove-what-you-claim', 1, '2015-11-20 14:36:39', '2015-11-20 14:36:41', '16ec8dd4-d3ab-4fef-b99b-7751f119bba2'),
(125, 130, 'en_us', 'no-contract-breached', 'cases-and-results/no-contract-breached', 1, '2015-11-20 14:37:36', '2015-11-20 14:37:37', '86facc15-3384-41e2-b5dc-9dd8a0067396'),
(126, 131, 'en_us', 'benefits-paid-already', 'cases-and-results/benefits-paid-already', 1, '2015-11-20 14:38:42', '2015-11-20 14:38:43', '4b3aa5b8-66ba-4911-9b90-fc9d41719506'),
(127, 132, 'en_us', 'restored-business', 'cases-and-results/restored-business', 1, '2015-11-20 14:42:05', '2015-11-20 14:42:06', 'bacfdaa3-ca4d-4c5d-8df7-6f3b868f4f2f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_emailmessages`
--

CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entries`
--

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, NULL, '2015-11-13 22:54:20', NULL, '2015-11-13 22:54:20', '2015-11-17 15:35:51', '904cdc8e-2b57-4eb2-bab2-5daf91204fd9'),
(6, 4, NULL, NULL, '2015-11-17 08:49:31', NULL, '2015-11-17 08:49:31', '2015-11-17 10:24:10', '41e8fb95-81f7-41bb-83c4-49850cf0f964'),
(9, 5, 5, NULL, '2015-11-17 09:55:28', NULL, '2015-11-17 09:31:40', '2015-11-19 23:18:49', '4d508130-af68-4f37-8bcc-ab82aace5302'),
(21, 8, NULL, NULL, '2015-11-17 12:09:53', NULL, '2015-11-17 12:09:53', '2015-11-20 14:44:02', 'aa510964-0616-4a98-bdb4-882ce19b5eb4'),
(22, 7, 9, 1, '2015-11-17 12:20:17', NULL, '2015-11-17 12:20:17', '2015-11-17 12:20:17', '1d1550b7-bc8e-4869-bcc8-9f83c8728a50'),
(24, 7, 9, 1, '2015-11-17 12:52:00', NULL, '2015-11-17 12:52:33', '2015-11-17 18:11:13', 'bfa65e25-0fbc-48db-97e8-27ef938b6fd1'),
(25, 9, NULL, NULL, '2015-11-17 13:15:13', NULL, '2015-11-17 13:15:13', '2015-11-20 08:10:26', '78455fde-5515-494f-910c-44fad8a28e76'),
(35, 11, 13, 1, '2015-11-17 14:17:00', NULL, '2015-11-17 14:17:08', '2015-11-17 17:29:32', 'ea18f541-bd3b-4b66-8b87-c28bd98aa624'),
(36, 11, 13, 1, '2015-11-17 14:18:00', NULL, '2015-11-17 14:18:00', '2015-11-17 17:31:00', 'e89b3af0-6111-4426-ba83-0fac681479ba'),
(38, 11, 13, 1, '2015-11-17 14:18:50', NULL, '2015-11-17 14:18:50', '2015-11-17 14:18:50', 'c1c74069-c93f-428a-a188-971129d6b74e'),
(39, 12, NULL, NULL, '2015-11-17 14:19:56', NULL, '2015-11-17 14:19:57', '2015-11-17 14:20:24', '3f3562c3-1180-474e-8ee2-862451e7333a'),
(44, 7, 9, 1, '2015-11-17 17:01:00', NULL, '2015-11-17 17:01:56', '2015-11-17 17:48:25', 'eb5e205a-55c9-4d58-9ccc-54948659367f'),
(55, 7, 9, 1, '2015-11-17 18:22:00', NULL, '2015-11-17 18:22:08', '2015-11-17 18:28:25', 'a764cc04-3975-42ec-8f37-3fb20b2c6789'),
(59, 7, 9, 1, '2015-11-17 18:37:00', NULL, '2015-11-17 18:39:36', '2015-11-17 18:48:29', 'a8578b30-0c94-4b53-84bd-84bf8e967458'),
(63, 7, 9, 1, '2015-11-17 18:56:23', NULL, '2015-11-17 18:56:23', '2015-11-17 18:56:23', '2e529558-892a-431a-9ffa-f0e251d9dc81'),
(66, 7, 9, 1, '2015-11-17 19:12:29', NULL, '2015-11-17 19:12:29', '2015-11-17 19:12:29', 'cdbe3e8f-e64f-4c7e-9d0a-5c73e79f152b'),
(70, 7, 9, 1, '2015-11-17 19:43:41', NULL, '2015-11-17 19:43:41', '2015-11-17 19:43:41', '0fd6e233-f146-4c8e-8d88-62fb14d97b56'),
(72, 7, 9, 1, '2015-11-17 19:51:00', NULL, '2015-11-17 19:51:49', '2015-11-20 02:07:15', '2aa18fb7-0348-45fc-8301-3f6f6ae652a1'),
(73, 7, 9, 1, '2015-11-17 19:57:00', NULL, '2015-11-17 19:57:07', '2015-11-17 20:28:08', 'f5afb95d-d6af-4ed3-89ee-4dcb266a964d'),
(78, 7, 9, 1, '2015-11-17 20:17:48', NULL, '2015-11-17 20:17:48', '2015-11-17 20:17:48', '4aebf613-5a79-4291-8ebf-d055ec882be4'),
(102, 13, NULL, NULL, '2015-11-20 10:26:21', NULL, '2015-11-20 10:26:21', '2015-11-20 10:26:21', '579e528d-612a-49b9-9b9e-48dfa6e28f60'),
(103, 15, NULL, NULL, '2015-11-20 10:52:36', NULL, '2015-11-20 10:52:36', '2015-11-20 10:52:36', 'b6558451-7b6e-4ed9-8188-6ca43ff1c3a8'),
(104, 14, 16, 1, '2015-11-20 11:45:00', NULL, '2015-11-20 11:45:09', '2015-11-20 14:31:17', '1db12209-8734-4835-8539-079c6c872b82'),
(107, 11, 13, 1, '2015-11-20 14:17:54', NULL, '2015-11-20 14:17:54', '2015-11-20 14:17:54', '10c4682e-ab0e-4f23-b6dd-8e189fba357f'),
(109, 11, 13, 1, '2015-11-20 14:18:10', NULL, '2015-11-20 14:18:10', '2015-11-20 14:18:10', '0eaf6d4f-df8b-45f2-992a-47cda55b255d'),
(111, 11, 13, 1, '2015-11-20 14:19:09', NULL, '2015-11-20 14:19:09', '2015-11-20 14:19:09', 'cd0cc31a-d2ae-4839-860c-957e0a311c93'),
(113, 11, 13, 1, '2015-11-20 14:19:38', NULL, '2015-11-20 14:19:38', '2015-11-20 14:19:38', '5f60870f-de7b-4cf7-8b2a-8d41e04ddd64'),
(115, 11, 13, 1, '2015-11-20 14:20:04', NULL, '2015-11-20 14:20:05', '2015-11-20 14:20:05', '4c181c71-d3a8-4b85-98c3-bbd1c98c9ead'),
(117, 11, 13, 1, '2015-11-20 14:20:46', NULL, '2015-11-20 14:20:46', '2015-11-20 14:20:46', 'dda69d2c-39d4-42e7-9a29-4e094e370e29'),
(119, 11, 13, 1, '2007-11-13 00:00:00', NULL, '2015-11-20 14:21:52', '2015-11-20 14:21:55', '23050047-ab27-4bad-871c-30126b9672a3'),
(121, 11, 13, 1, '2007-11-04 00:00:00', NULL, '2015-11-20 14:22:44', '2015-11-20 14:22:44', 'e93f3334-5aa9-4ac7-9b2b-331498eb4009'),
(123, 11, 13, 1, '2015-11-20 14:23:38', NULL, '2015-11-20 14:23:38', '2015-11-20 14:23:38', '29e15b6a-bc85-4963-9e73-e841377c4324'),
(125, 11, 13, 1, '2003-08-20 00:00:00', NULL, '2015-11-20 14:24:26', '2015-11-20 14:24:26', 'be79235a-3a5e-44d0-b9e2-6a967bb35596'),
(127, 11, 13, 1, '2003-06-17 00:00:00', NULL, '2015-11-20 14:25:17', '2015-11-20 14:25:17', '44a91118-5c00-4f1c-95b6-ffdb6d3c8cce'),
(128, 14, 16, 1, '2015-11-20 14:35:17', NULL, '2015-11-20 14:35:17', '2015-11-20 14:35:17', '22f8f8ea-2604-4b2d-a591-4aefe5678e0a'),
(129, 14, 16, 1, '2015-11-20 14:36:39', NULL, '2015-11-20 14:36:39', '2015-11-20 14:36:39', '7459ae97-a9f5-420e-aac2-f9c981a0d266'),
(130, 14, 16, 1, '2015-11-20 14:37:36', NULL, '2015-11-20 14:37:36', '2015-11-20 14:37:36', '2b19d54d-d29d-4059-acc1-47ed2d95ac30'),
(131, 14, 16, 1, '2015-11-20 14:38:42', NULL, '2015-11-20 14:38:42', '2015-11-20 14:38:42', '0d9e66c5-d0d4-4527-aa00-4c75f4136ef1'),
(132, 14, 16, 1, '2015-11-20 14:42:05', NULL, '2015-11-20 14:42:05', '2015-11-20 14:42:05', '0e111f7a-c6a9-4f35-acb4-d3aece22826a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrydrafts`
--

CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrytypes`
--

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 50, 'Homepage', 'homepage', 1, 'Title', NULL, NULL, '2015-11-13 22:54:20', '2015-11-17 15:13:30', 'e9b73958-e2a4-4a23-abc1-e8fa50030de3'),
(4, 4, 15, 'Careers', 'careers', 1, '', NULL, NULL, '2015-11-17 08:49:31', '2015-11-17 09:05:24', '78f208e1-be8b-48c5-aa92-84306339a1d3'),
(5, 5, 21, 'Contact', 'contact', 1, '', NULL, NULL, '2015-11-17 09:31:39', '2015-11-17 09:55:43', '1c1e7bb8-5873-4a0c-af8a-68513867338d'),
(9, 7, 53, 'Team Member', 'teamMember', 1, 'Title', NULL, NULL, '2015-11-17 11:42:35', '2015-11-17 18:47:48', '4578566d-3cdf-4644-a07f-dc259757c8d2'),
(10, 8, 36, 'About GBC', 'aboutGbc', 1, '', NULL, NULL, '2015-11-17 12:09:53', '2015-11-17 12:39:54', '8a8988c9-54e6-48dc-8a9b-72370ad31e17'),
(11, 9, 39, 'Expertise', 'expertise', 0, NULL, '{section.name|raw}', NULL, '2015-11-17 13:15:13', '2015-11-17 13:15:56', '7233360c-8305-434c-b608-671c36e87fe7'),
(13, 11, 51, 'Publications', 'publications', 1, 'Title', NULL, NULL, '2015-11-17 14:16:15', '2015-11-17 17:24:37', '4b106bcd-5ae0-471e-a692-f2f23bd83935'),
(14, 12, 49, 'Publications Landing', 'publicationsLanding', 1, '', NULL, NULL, '2015-11-17 14:19:56', '2015-11-17 14:20:15', 'fbee881a-0c75-4c09-89ec-baac9b773c7d'),
(15, 13, 58, 'Sitemap', 'sitemap', 0, NULL, '{section.name|raw}', NULL, '2015-11-20 10:26:21', '2015-11-20 10:26:42', '973002e2-a8b3-4f76-a749-b82a427217a8'),
(16, 14, 67, 'Cases and Results', 'casesAndResults', 1, 'Title', NULL, NULL, '2015-11-20 10:51:37', '2015-11-20 12:50:42', '99b9665d-7d3e-4c13-9002-6b5f971d2888'),
(17, 15, 63, 'Cases and Results Landing', 'casesAndResultsLanding', 0, NULL, '{section.name|raw}', NULL, '2015-11-20 10:52:36', '2015-11-20 11:21:07', '7e007c67-fc26-4695-ac23-08acddc0afe7');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entryversions`
--

CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entryversions`
--

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 6, 4, 1, 'en_us', 1, NULL, '{"typeId":"4","authorId":null,"title":"Careers","slug":"careers","postDate":1447750171,"expiryDate":null,"enabled":1,"fields":[]}', '2015-11-17 08:49:31', '2015-11-17 08:49:31', '1fa45868-ec52-4e05-9c2a-88167a4bb176'),
(3, 6, 4, 1, 'en_us', 2, '', '{"typeId":null,"authorId":null,"title":"Careers","slug":"careers","postDate":1447750171,"expiryDate":null,"enabled":1,"fields":{"1":"<p>We believe that the key to our success is not only the knowledge of our client\\u2019s industry and our general commercial awareness, but our interest in recruiting highly capable individuals and providing a very conducive environment to nurture their ambitions to reach for the top.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> We are constantly looking for individuals who are highly capable and motivated to meet the challenges of a growing industry. if you meet this criteria, please email your resume to careers@gbc-law.com<\\/p>","14":[],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 08:55:56', '2015-11-17 08:55:56', 'c6843262-32ae-43af-9532-401f822dbaeb'),
(4, 6, 4, 1, 'en_us', 3, '', '{"typeId":null,"authorId":null,"title":"Careers","slug":"careers","postDate":1447750171,"expiryDate":null,"enabled":1,"fields":{"16":"<h3 class=\\"omega text-serif text-light\\">\\r\\n\\tWe believe that the key to our success is not only the knowledge of our client\\u2019s industry and our general commercial awareness, but our interest in recruiting highly capable individuals and providing a very conducive environment to nurture their ambitions to reach for the top.\\r\\n<\\/h3>\\r\\n\\r\\n<p class=\\"text-sans\\">\\r\\n\\tWe are constantly looking for individuals who are highly capable and motivated to meet the challenges of a growing industry. if you meet this criteria, please email your resume to careers@gbc-law.com \\r\\n<\\/p>","14":[],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:09:12', '2015-11-17 09:09:12', 'c2688053-0435-427d-b342-509603163974'),
(5, 6, 4, 1, 'en_us', 4, '', '{"typeId":null,"authorId":null,"title":"Careers","slug":"careers","postDate":1447750171,"expiryDate":null,"enabled":1,"fields":{"16":"<h3 class=\\"omega text-serif text-light\\">\\r\\n\\tWe believe that the key to our success is not only the knowledge of our client\\u2019s industry and our general commercial awareness, but our interest in recruiting highly capable individuals and providing a very conducive environment to nurture their ambitions to reach for the top.\\r\\n<\\/h3>\\r\\n\\r\\n<p class=\\"text-sans\\">\\r\\n\\tWe are constantly looking for individuals who are highly capable and motivated to meet the challenges of a growing industry. if you meet this criteria, please email your resume to careers@gbc-law.com \\r\\n<\\/p>","14":["7"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:11:36', '2015-11-17 09:11:36', '15c27bb5-6149-42b3-b713-536ca5c8968a'),
(6, 9, 5, 1, 'en_us', 1, NULL, '{"typeId":"5","authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":[]}', '2015-11-17 09:31:40', '2015-11-17 09:31:40', '524bee6e-95ce-4b33-89e7-e1dfbf74b5cb'),
(7, 9, 5, 1, 'en_us', 2, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"","14":[],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:36:12', '2015-11-17 09:36:12', '87354263-782e-40c1-9c86-2a84aeeee74d'),
(8, 9, 5, 1, 'en_us', 3, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:40:31', '2015-11-17 09:40:31', '44a93526-6fff-4eba-a7ea-e84699121346'),
(9, 9, 5, 1, 'en_us', 4, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:42:19', '2015-11-17 09:42:19', 'ef507831-bc71-452b-adc1-481213a1c6e6'),
(10, 9, 5, 1, 'en_us', 5, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"<p>Hey<\\/p>","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:45:39', '2015-11-17 09:45:39', '39539552-6e6c-47a1-8053-8b8beb1e3292'),
(11, 9, 5, 1, 'en_us', 6, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"<p>Hey<\\/p>","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:46:28', '2015-11-17 09:46:28', '5cecc11e-ba39-4c90-8c4b-04eb39356ee0'),
(12, 9, 5, 1, 'en_us', 7, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"<p>Hey<\\/p>","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:46:40', '2015-11-17 09:46:40', '0b188ceb-5260-4f6d-9aad-e15beaec3269'),
(13, 9, 5, 1, 'en_us', 8, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:47:04', '2015-11-17 09:47:04', '03befb6d-17c7-4b04-80ab-b0d55b20f755'),
(14, 9, 5, 1, 'en_us', 9, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:48:04', '2015-11-17 09:48:04', '2e95dfe2-753e-4871-9cc9-04ffad571adc'),
(15, 9, 5, 1, 'en_us', 10, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:50:06', '2015-11-17 09:50:06', '82609118-78e3-49ad-9b5a-9fbcfd4ca881'),
(16, 9, 5, 1, 'en_us', 11, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:50:29', '2015-11-17 09:50:29', '8a759ae6-7106-4578-9677-a63bcb4a68f5'),
(17, 9, 5, 1, 'en_us', 12, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"<p><strong>Office Address:<\\/strong><\\/p><p><strong><\\/strong><\\/p><p>11, Babafemi Osoba Crescent <\\/p>\\r\\n\\r\\n<p> Off Admiralty Road, Lekki Phase 1, <\\/p>\\r\\n\\r\\n<p> P.O.Box 72250 Victoria Island, Lagos.<\\/p><p><strong><\\/strong><br><\\/p>","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:51:16', '2015-11-17 09:51:16', '3a492344-afbf-426f-9f92-906900da58f9'),
(18, 9, 5, 1, 'en_us', 13, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"16":"<p><strong>Office Address:<\\/strong><\\/p>\\r\\n\\r\\n<p><strong><\\/strong><\\/p>\\r\\n\\r\\n<p>11, Babafemi Osoba Crescent <\\/p>\\r\\n\\r\\n<p> Off Admiralty Road, Lekki Phase 1, <\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p> P.O.Box 72250 Victoria Island, Lagos.<\\/p>\\r\\n\\r\\n<p><strong><\\/strong><br><\\/p>","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:52:51', '2015-11-17 09:52:51', '8d0a88a9-0f4e-47c9-a6f8-f7861db47ab2'),
(19, 9, 5, 1, 'en_us', 14, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"1":"","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:53:48', '2015-11-17 09:53:48', '32bd976e-5a42-486e-8208-7545ffdf6814'),
(20, 9, 5, 1, 'en_us', 15, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"1":"<p>Office Address:<\\/p>\\r\\n\\r\\n<p> 11, Babafemi Osoba Crescent <\\/p>\\r\\n\\r\\n<p> Off Admiralty Road, Lekki Phase 1, <\\/p>\\r\\n\\r\\n<p> P.O.Box 72250 Victoria Island, Lagos.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> T: +234 (0)1 899 0764, +234 (0) 1 899 0765 <\\/p>\\r\\n\\r\\n<p> E: info@gbc-law.com<\\/p>","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:54:25', '2015-11-17 09:54:25', '00d391db-9942-440b-98d6-8af3e4715312'),
(21, 9, 5, 1, 'en_us', 16, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"1":"<p>Office Address:<\\/p>\\r\\n\\r\\n<p> 11, Babafemi Osoba Crescent <\\/p>\\r\\n\\r\\n<p> Off Admiralty Road, Lekki Phase 1, <\\/p>\\r\\n\\r\\n<p> P.O.Box 72250 Victoria Island, Lagos.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> T: +234 (0)1 899 0764, +234 (0) 1 899 0765 <\\/p>\\r\\n\\r\\n<p> E: info@gbc-law.com<\\/p>","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:54:44', '2015-11-17 09:54:44', 'b5a0f881-1bb7-4651-a3c8-f29e4c76851d'),
(22, 9, 5, 1, 'en_us', 17, '', '{"typeId":null,"authorId":null,"title":"Contact","slug":"contact","postDate":1447752700,"expiryDate":null,"enabled":1,"fields":{"1":"<p>Office Address:<\\/p>\\r\\n\\r\\n<p> 11, Babafemi Osoba Crescent <\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p> Off Admiralty Road, Lekki Phase 1, <\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p> P.O.Box 72250 Victoria Island, Lagos.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> T: +234 (0)1 899 0764, +234 (0) 1 899 0765 <\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p> E: info@gbc-law.com<\\/p>","14":["10"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 09:54:59', '2015-11-17 09:54:59', 'b58dbeb1-1606-463e-be10-9e1cb2635f24'),
(34, 6, 4, 1, 'en_us', 5, '', '{"typeId":null,"authorId":null,"title":"Careers","slug":"careers","postDate":1447750171,"expiryDate":null,"enabled":1,"fields":{"16":"<h3 class=\\"omega text-serif text-light\\">\\r\\n\\tWe believe that the key to our success is not only the knowledge of our client\\u2019s industry and our general commercial awareness, but our interest in recruiting highly capable individuals and providing a very conducive environment to nurture their ambitions to reach for the top.\\r\\n<\\/h3>\\r\\n\\r\\n<p class=\\"text-sans\\">\\r\\n\\tWe are constantly looking for individuals who are highly capable and motivated to meet the challenges of a growing industry. if you meet this criteria, please email your resume to careers@gbc-law.com \\r\\n<\\/p>","14":["7"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 10:24:01', '2015-11-17 10:24:01', 'a0afe42d-7275-4df0-81c7-d17608084008'),
(35, 6, 4, 1, 'en_us', 6, '', '{"typeId":null,"authorId":null,"title":"Careers","slug":"careers","postDate":1447750171,"expiryDate":null,"enabled":1,"fields":{"16":"<h3 class=\\"omega text-serif text-light\\">\\r\\n\\tWe believe that the key to our success is not only the knowledge of our client\\u2019s industry and our general commercial awareness, but our interest in recruiting highly capable individuals and providing a very conducive environment to nurture their ambitions to reach for the top.\\r\\n<\\/h3>\\r\\n\\r\\n<p class=\\"text-sans\\">\\r\\n\\tWe are constantly looking for individuals who are highly capable and motivated to meet the challenges of a growing industry. if you meet this criteria, please email your resume to careers@gbc-law.com \\r\\n<\\/p>","14":["7"],"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 10:24:10', '2015-11-17 10:24:10', 'eaeae069-41ca-4481-b0ea-f5f413e8f1c3'),
(62, 21, 8, 1, 'en_us', 1, NULL, '{"typeId":"10","authorId":null,"title":"About GBC","slug":"about-gbc","postDate":1447762193,"expiryDate":null,"enabled":1,"fields":[]}', '2015-11-17 12:09:53', '2015-11-17 12:09:53', '4842064e-c86d-4c27-9c45-b67a82f13338'),
(63, 21, 8, 1, 'en_us', 2, '', '{"typeId":null,"authorId":null,"title":"About GBC","slug":"about-gbc","postDate":1447762193,"expiryDate":null,"enabled":1,"fields":{"9":"<h3>Gbenga Biobaku & Co. (GBC) is a leading law firm in Nigeria with primary practice in the business scene.<\\/h3>\\r\\n\\r\\n<p>For over 20years, our Firm has demonstrated its expertise in handling challenging assignments for the most interesting clients. We have achieved extraordinary results with a team of intensely focused members with a focus on solving our clients'' most important problems.<\\/p>\\r\\n\\r\\n<p>Building strong client relationships is the compass of our business strategy. With diverse experience and exceptional professionals, we have continually delivered quality to our clients through innovative legal solutions.<\\/p>\\r\\n\\r\\n<p>Our clients range from multinationals, oil & energy firms, financial institutions and emerging companies. We also advise governments and public bodies.<\\/p>","10":"","17":"","14":[],"4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":[]}}', '2015-11-17 12:11:30', '2015-11-17 12:11:30', '5ae3c0af-6fa7-4b5e-996a-992eb105cc9d'),
(64, 22, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Gbenga Biobaku","slug":"gbenga-biobaku","postDate":1447762817,"expiryDate":null,"enabled":1,"fields":{"24":[{"col1":""}],"20":[{"col1":"University of Ife (LLB); 1986"},{"col1":"Nigerian Bar Association 1987"}],"21":[{"col1":"Foreign Investments"},{"col1":"Joint Ventures"},{"col1":"Acquisitions & Disposals"},{"col1":"Corporate Restructuring"},{"col1":"Project Development & Finance"}],"14":["12"],"19":"<p>Gbenga has over 2 decades of legal practice experience in corporate \\/ commercial law predominantly in the Oil and Gas Industry. Previously at Jackson, Etti & Edu, where he was the head of the energy & corporate department for over 5 years. Prior to joining Jackson, Etti & Edu, Gbenga was a member of the energy and corporate\\/commercial practice group at Irving and Bonnar, Nigeria\\u2019s oldest law firm. Whilst at Irving & Bonnar, Gbenga worked on a variety of energy, corporate and commercial transactions for both domestic and international clients.<\\/p>","22":[{"col1":"Nigerian Bar Association"},{"col1":"Energy & Natural Resources Section (SERL) of the International Bar Association"},{"col1":"Association of International Petroleum Negotiators(\\"AIPN\\")"}],"18":"Managing Partner","23":[{"col1":"Advising a multinational exploration and production company in relation to a proposed LNG Project in the Niger-Delta region of Nigeria."},{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising the Norwegian Exploration & Production Company, Statoil, in respect of several Production Sharing Contracts with the Nigerian National Petroleum Corporation (NNPC), and assisting with the negotiation."},{"col1":"Advising an international oil company in its bid for an oil block in the Nigeria\\/Sao Tome and Principe JDZ 2003 Licensing Round and conducting a detailed analysis of the Treaty and the petroleum, fiscal and contractual regime."},{"col1":"Advising Sonatrach, the Algerian state oil company in connection with its bid for an oil block in the 2005 Licensing Round and providing advice on the bidding regulations as well as detailed analysis of the petroleum, fiscal and contractual regime."},{"col1":"In collaboration with lawyers in a UK law firm, acting for and advising a group of International Banks on aspects of the financing of the Eleme Petrochemical Plant."},{"col1":"Advising Statoil on the establishment of several subsidiary companies in Nigeria, including processing and obtaining of all pre-investment and regulatory approvals."},{"col1":"Advising and assisting Consolidated Petroleum PTY, a South African Company on the farm-in arrangements into a marginal field including the drafting and review of the transaction documents including the Purchase Agreement, Farm-in Agreement, Joint Operating Agreement and the Deed of Assignment."},{"col1":"Advising on several acquisitions and mergers, involving oil service companies, including the acquisition by Baker Hughes of a minority interest in a Nigerian Oil Service Company."},{"col1":"Advising Baker Hughes on all legal aspects of the construction and development of a major facility in Port Harcourt, from negotiation of the long lease for the property to negotiating and rendering advise on the construction contract, advising on Town Planning regulatory issues as well as Environmental issues, and undertaking the registration and perfection of the long lease."},{"col1":"Advising Skye Bank Plc in relation to a USD75million syndicated petroleum products receivables pre-financing facility."},{"col1":"Advising TABA Nigeria Limited in respect of an Engineering Procurement and Construction (\\u201cEPC\\u201d) contract with NNPC relating to a power plant and advising and assisting with the structuring and documentation of the various subcontracting and the financing arrangements."},{"col1":"Advising and assisting a private investor in connection with a joint venture arrangement with the Government of Ondo State of Nigeria, involving the privatization of the Ondo State Afforestation Project which was initially funded by the African Development Bank."},{"col1":"Advising on the Merger between the Nigerian subsidiaries of SmithKline Beecham and Sterling Products."},{"col1":"Conducted legal due diligence and advised Capital Alliance, a foremost international private equity firm in a $15million USD private equity investment in a leading cash-in-transit company in Nigeria."},{"col1":"Advising Skye Bank Plc in connection with the negotiation of a trade finance facility from African Export \\u2013 Import Bank (\\u201cAfrexim\\u201d)"},{"col1":"Advising and assisting a private investor in connection with the acquisition of Iwopin Pulp and Paper Company from the Bureau of Public Enterprises (\\u201cBPE\\u201d) \\/ Federal Government of Nigeria."},{"col1":"Advising Inlaks Plc, a Conglomerate at that time, on the separation and corporatisation of some of its division."},{"col1":"Advising a leading Aluminum Company in Nigeria on a Scheme of Arrangement involving the Parent Company and a subsidiary."}],"4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["11"]}}', '2015-11-17 12:20:17', '2015-11-17 12:20:17', 'a2899490-74d0-4bed-bffd-878c347b53de'),
(65, 21, 8, 1, 'en_us', 3, '', '{"typeId":null,"authorId":null,"title":"About","slug":"about-gbc","postDate":1447762193,"expiryDate":null,"enabled":1,"fields":{"9":"<h3>Gbenga Biobaku & Co. (GBC) is a leading law firm in Nigeria with primary practice in the business scene.<\\/h3>\\r\\n\\r\\n<p>For over 20years, our Firm has demonstrated its expertise in handling challenging assignments for the most interesting clients. We have achieved extraordinary results with a team of intensely focused members with a focus on solving our clients'' most important problems.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>Building strong client relationships is the compass of our business strategy. With diverse experience and exceptional professionals, we have continually delivered quality to our clients through innovative legal solutions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>Our clients range from multinationals, oil & energy firms, financial institutions and emerging companies. We also advise governments and public bodies.<\\/p>","10":"","17":"","14":[],"4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":[]}}', '2015-11-17 12:40:01', '2015-11-17 12:40:01', 'ebbf20b2-6301-44c8-ac13-d74d01fa2b4c'),
(66, 24, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Nkoyo Rapu","slug":"nkoyo-rapu","postDate":1447764753,"expiryDate":null,"enabled":1,"fields":{"24":[{"col1":""}],"20":[{"col1":""}],"21":[{"col1":""}],"14":[],"19":"","22":[{"col1":""}],"18":"Of Counsel","23":[{"col1":""}],"4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["23"]}}', '2015-11-17 12:52:33', '2015-11-17 12:52:33', 'd5d06033-d5a2-4640-8885-9d3e77c42cf9'),
(67, 24, 7, 1, 'en_us', 2, '', '{"typeId":"9","authorId":"1","title":"Nkoyo Rapu","slug":"nkoyo-rapu","postDate":1447764720,"expiryDate":null,"enabled":1,"fields":{"24":"","20":"","21":"","14":[],"19":"","22":"","18":"Of Counsel","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["23"]}}', '2015-11-17 13:02:51', '2015-11-17 13:02:51', '9dd84e7d-361b-479e-84ea-76101df35410'),
(68, 25, 9, 1, 'en_us', 1, NULL, '{"typeId":"11","authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":[]}', '2015-11-17 13:15:13', '2015-11-17 13:15:13', '9b937932-ba4d-46ef-a6af-4ca50dc2bb5b'),
(69, 25, 9, 1, 'en_us', 2, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":"","19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":"","30":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 13:16:41', '2015-11-17 13:16:41', '5dd70dde-a761-4e4c-be81-ce1dc815be2c'),
(70, 25, 9, 1, 'en_us', 3, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":"","19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":"","30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p><p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 13:17:22', '2015-11-17 13:17:22', 'c6c27c07-985b-495f-a97d-bbf24c2909e3'),
(71, 25, 9, 1, 'en_us', 4, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":"","19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":"","30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 13:20:25', '2015-11-17 13:20:25', 'c04a8fb7-2cdc-4362-be15-bee5399ec523'),
(72, 25, 9, 1, 'en_us', 5, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":"","19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 13:24:53', '2015-11-17 13:24:53', '430dc00b-7c0a-4e3e-911f-de5b7a94351b'),
(73, 25, 9, 1, 'en_us', 6, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":"","19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 13:27:42', '2015-11-17 13:27:42', '6d62dc02-c0ba-4ae2-84f7-264750c71778'),
(74, 25, 9, 1, 'en_us', 7, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":"","19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 13:27:58', '2015-11-17 13:27:58', '23957d97-21a7-4530-8226-f07547ff7a46'),
(75, 25, 9, 1, 'en_us', 8, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":{"new1":{"type":"expertise","enabled":"1","fields":{"exTitle":"asdfasdf","exContent":"<p>adsfasfd<\\/p>","exAreasOfInterest":"asdfasdf"}}},"19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 13:36:16', '2015-11-17 13:36:16', '7c670474-b401-476c-be03-626ca1af5aa7'),
(76, 25, 9, 1, 'en_us', 9, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":{"26":{"type":"expertise","enabled":"1","fields":{"exTitle":"Energy & Projects","exContent":"<p>Gbenga Biobaku & Co. has developed an extensive Energy Project Development practice, representing parties on both sides of the spectrum. Our expertise encompasses the oil and gas, power, mining and infrastructure sectors of the Nigerian economy.<\\/p><p><br>As counsel to some major and developing energy players, GBC project scope has covered securing foreign investment, project financing transactions, advisory, federal regulatory approvals, operations and maintenance contracts, site acquisitions and other related corporate and commercial transactions.<br><br><\\/p><p>With the recent divestments and local participation law and the influx of foreign investment in the Nigerian Oil and Gas industry, GBC has been recognized for its ability to prescribe working business modules, and joint venture arrangements that ensures return on investment (ROI) for investors and the protection and sustainability of its indigenous clients.<\\/p><p><br>Our team has substantial experience in advising foreign and indigenous investors in Nigeria on energy projects financing. We also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy, mining and oil and gas sectors.<\\/p>","exAreasOfInterest":[{"col1":"EMPLOYMENT + LABOUR"},{"col1":"ENVIRONMENT"},{"col1":"PROFESSIONAL LIABILITY"},{"col1":"DISPUTE RESOLUTION"},{"col1":"MEDIATION & ARBITRATION"},{"col1":"TRADE DISPUTES"},{"col1":"DEBT RECOVERY"},{"col1":"CORPORATE GOVERNANCE"},{"col1":"CONTRACTS"},{"col1":"SECURITIES LITIGATION"}]}},"new1":{"type":"expertise","enabled":"1","fields":{"exTitle":"General Corporate Commercial","exContent":"<p>The GBC\\u2019s Corporate and Commercial Practice department represents a broad range of corporate and business interests. The group delivers responsive, innovative and practical legal solutions in diverse areas including: Mergers & Acquisitions, Capital Markets, Banking & Finance, Offshore acquisitions and investments, Trust Arrangements, Estate Planning, Private Equity & Venture Capital, Intellectual Property, Foreign Investments & Joint Ventures, Privatization & Infrastructure Developments, Telecommunications, Information Technology, Immigration, Commercial Property Development & Conveyancing, Taxation, Employment & Labor Relations, Aircraft & Ship Financing, Business Advisory & Company Secretarial Services<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>GBC runs the gamut of corporate and commercial law practice with the aim of providing a seamless service, integrating diverse clients\\u2019 business interests. Our work with our clients involves ensuring compliance with standard business practices and procedures and operation within the national and local laws applicable to their specific industry.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Additionally, we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures.<\\/p>","exAreasOfInterest":[{"col1":"MERGERS & ACQUISITIONS"},{"col1":"CAPITAL MARKETS"},{"col1":"BANKING & FINANCE"},{"col1":"PRIVATIZATION & INFRASTRUCTURE"},{"col1":"BUSINESS ADVISORY "},{"col1":"INTERNATIONAL TRADE"},{"col1":"FOREIGN INVESTMENTS & JOINT VENTURES"},{"col1":"TELECOMMUNICATIONS"},{"col1":"INFORMATION TECHNOLOGY"},{"col1":"IMMIGRATION"},{"col1":"COMMERCIAL PROPERTY DEVELOPMENT & CONVEYANCING"},{"col1":"TAXATION"},{"col1":"EMPLOYMENT & LABOR RELATIONS"},{"col1":"AIRCRAFT & SHIP FINANCING"},{"col1":"BUSINESS ADVISORY & COMPANY SECRETARIAL SERVICES"}]}},"new2":{"type":"expertise","enabled":"1","fields":{"exTitle":"Litigation & Arbitration","exContent":"<p>The GBC\\u2019s litigation and arbitration practice is handled by the seasoned Dispute Resolution Department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit. Commercial and financial disputes and litigations are often complex; the department appreciates the need to conduct commercial and other litigation matters with business expediency in view, in that regard, we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>At Gbenga Biobaku & Co., we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation. Consequently, we advise on the use of alternative dispute resolution (ADR) mediums including negotiation, conciliation, mediation and arbitration in deserving cases.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We have applied our expertise in litigation and different ADR methods with good results across industries relating to disputes arising from the oil and gas sector, claims for compensation, taxation, disputes arising from corporate governance, breach of contracts, employer\\/employee\\/industrial disputes, breach of fundamental rights claims, debt recovery, winding up of Companies, land disputes, claims for negligence, judicial review of executive actions, etc<\\/p>","exAreasOfInterest":[{"col1":"EMPLOYMENT + LABOUR"},{"col1":"ENVIRONMENT"},{"col1":"PROFESSIONAL LIABILITY"},{"col1":"DISPUTE RESOLUTION"},{"col1":"MEDIATION & ARBITRATION"},{"col1":"TAXATION"},{"col1":"TRADE DISPUTES"},{"col1":"DEBT RECOVERY"},{"col1":"CORPORATE GOVERNANCE"},{"col1":"CONTRACTS"},{"col1":"SECURITIES LITIGATION"}]}},"new3":{"type":"expertise","enabled":"1","fields":{"exTitle":"Intellectual Property (IP)","exContent":"<p>GBC provides legal services to its clients on issues stemming from Intellectual Property (\\u201cIP\\u201d). Our IP services include obtaining regulatory approval with the appropriate agencies such as the Ministry of Trade and Investment. We also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the National Office for Technology Acquisition and Promotion (\\u201cNOTAP\\u201d).<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>With the tripled growth in the Nigerian economy in the last 10 years, new ideas and innovations are now being introduced into the nation\\u2019s business clime and these ideas and innovations have now become assets for various body corporates and Small-Medium enterprises. With this growth, ensuring the proper exploitation and protection of intellectual property (IP), whether it be patents, trade marks or designs, is a primary commercial objective.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We provide practical and commercial legal advice at every stage in the life and development of an intellectual property right, from creation and exploitation to protection and enforcement. In addition, we provide registration of IP rights such as Patents, Trademarks and Industrial designs, and obtaining necessary business approvals from NOTAP and the Ministry of Trade and Investments.<\\/p>","exAreasOfInterest":[{"col1":"COPYRIGHT"},{"col1":"IP LITIGATION"},{"col1":"IP DUE DILIGENCE"},{"col1":"PATENTS & TRADEMARKS"},{"col1":"TECHNOLOGY TRANSACTIONS"},{"col1":"ANTITRUST LAW"}]}}},"19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 13:53:44', '2015-11-17 13:53:44', '3985738a-86ac-401a-8c06-afde0151871b'),
(79, 35, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"The Exclusive Jurisdiction of the National Industrial Court in Labour and Employment Matters","slug":"the-exclusive-jurisdiction-of-the-national-industrial-court-in-labour-and-employment-matters","postDate":1447769828,"expiryDate":null,"enabled":1,"fields":{"33":["31"],"32":"The National Industrial Court is vested with exclusive jurisdiction on all labour, employment and related matters and as such all labour, employment and allied matters pending before State High Courts across Nigeria are required to be transferred to the National Industrial Court. This position was confirmed in the recent case of Josiah Madu vs. Solus Schall Nigeria Ltd (Unrep.)"}}', '2015-11-17 14:17:08', '2015-11-17 14:17:08', 'c20b8a66-32df-4a7a-af0f-076cc043584e'),
(80, 36, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Arbitrability of tax issues arising from production sharing contracts\\u2013 FIRS v. NNPC","slug":"arbitrability-of-tax-issues-arising-from-production-sharing-contracts-firs-v-nnpc","postDate":1447769880,"expiryDate":null,"enabled":1,"fields":{"33":["33"],"32":"The Federal High Court, Abuja in the case of Federal Inland Revenue Service VS. Nigerian National Petroleum Corporation & Others recently decided that an Arbitration Tribunal lacks jurisdiction to determine issues relating to taxation or connected with the Federal Government revenue as such jurisdiction is exclusively conferred on the FHC by the Constitution of the Federal Republic of Nigeria."}}', '2015-11-17 14:18:00', '2015-11-17 14:18:00', '4b851953-ab93-46c1-960f-91464844102d'),
(81, 38, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Investing in Nigeria\\u2019s Oil and Gas Industry","slug":"investing-in-nigerias-oil-and-gas-industry","postDate":1447769930,"expiryDate":null,"enabled":1,"fields":{"33":["37"],"32":"Nigeria is one of the world\\u2019s largest producers of crude oil. The country currently produces an average of 2.5 million barrels of crude oil per day. This makes her the 10th largest producer of crude oil in the world and the 6th largest exporter among OPEC members. Production capacity currently stands at about 3 million barrels per day whilst reserves is about 35 billion barrels which the government intends to increase to 40 billion barrels by the year 2010."}}', '2015-11-17 14:18:50', '2015-11-17 14:18:50', '6905e9a6-f630-4374-b117-4b5e0044ad60'),
(82, 39, 12, 1, 'en_us', 1, NULL, '{"typeId":"14","authorId":null,"title":"Publications Landing","slug":"publications-landing","postDate":1447769996,"expiryDate":null,"enabled":1,"fields":[]}', '2015-11-17 14:19:57', '2015-11-17 14:19:57', 'ec68f4be-ceaa-4c4c-8ad3-5a146081fe17'),
(83, 39, 12, 1, 'en_us', 2, '', '{"typeId":null,"authorId":null,"title":"Publications","slug":"publications-landing","postDate":1447769996,"expiryDate":null,"enabled":1,"fields":{"4":"","5":"","6":"","13":[],"7":"","3":"","8":""}}', '2015-11-17 14:20:24', '2015-11-17 14:20:24', '7bc48fba-a6b5-4bcc-8ac9-0a9af4684b9a'),
(84, 2, 1, 1, 'en_us', 1, '', '{"typeId":null,"authorId":null,"title":"Homepage Gbenga Biobaku & Co.","slug":"homepage","postDate":1447455260,"expiryDate":null,"enabled":1,"fields":{"34":[],"4":"","5":"","6":"","13":[],"7":"","3":"GBC","8":""}}', '2015-11-17 15:14:23', '2015-11-17 15:14:23', '5765affe-cee3-4185-9e09-0870f6b12a6f'),
(85, 2, 1, 1, 'en_us', 2, '', '{"typeId":null,"authorId":null,"title":"Gbenga Biobaku & Co.","slug":"homepage","postDate":1447455260,"expiryDate":null,"enabled":1,"fields":{"34":[],"4":"","5":"","6":"","13":[],"7":"","3":"GBC","8":""}}', '2015-11-17 15:15:20', '2015-11-17 15:15:20', '77322a07-913e-44c7-81f0-02a9ee9ed22a'),
(86, 2, 1, 1, 'en_us', 3, '', '{"typeId":null,"authorId":null,"title":"Homepage Gbenga Biobaku & Co.","slug":"homepage","postDate":1447455260,"expiryDate":null,"enabled":1,"fields":{"34":[],"4":"","5":"","6":"","13":[],"7":"","3":"GBC","8":""}}', '2015-11-17 15:24:22', '2015-11-17 15:24:22', 'c8bedc9e-e60f-41a2-9c39-8b3b6afa2bd6'),
(87, 2, 1, 1, 'en_us', 4, '', '{"typeId":null,"authorId":null,"title":"Homepage Gbenga Biobaku & Co.","slug":"homepage","postDate":1447455260,"expiryDate":null,"enabled":1,"fields":{"34":["40"],"4":"","5":"","6":"","13":[],"7":"","3":"GBC","8":""}}', '2015-11-17 15:30:17', '2015-11-17 15:30:17', '40d44d1e-f8bf-4839-9bd6-947aa0f1153f'),
(88, 2, 1, 1, 'en_us', 5, '', '{"typeId":null,"authorId":null,"title":"Homepage Gbenga Biobaku & Co.","slug":"homepage","postDate":1447455260,"expiryDate":null,"enabled":1,"fields":{"34":["40","42"],"4":"","5":"","6":"","13":[],"7":"","3":"GBC","8":""}}', '2015-11-17 15:35:51', '2015-11-17 15:35:51', '880c927b-d80e-4dec-8ace-37932619c4cd'),
(89, 44, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Ijeoma Abalogu","slug":"ijeoma-abalogu","postDate":1447779716,"expiryDate":null,"enabled":1,"fields":{"24":[{"col1":""}],"20":"","21":"","14":[],"19":"","22":"","18":"","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["43"]}}', '2015-11-17 17:01:56', '2015-11-17 17:01:56', 'c62f3a0c-6998-4277-9710-f5fa7c9c28fd'),
(90, 44, 7, 1, 'en_us', 2, '', '{"typeId":"9","authorId":"1","title":"Ijeoma Abalogu","slug":"ijeoma-abalogu","postDate":1447779660,"expiryDate":null,"enabled":1,"fields":{"24":[{"col1":""}],"20":"","21":"","14":[],"19":"","22":"","18":"Senior Associate","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["43"]}}', '2015-11-17 17:08:18', '2015-11-17 17:08:18', '52ad3500-2f64-461c-bf17-97c3b8f5baf8'),
(91, 35, 11, 1, 'en_us', 2, '', '{"typeId":"13","authorId":"1","title":"The Exclusive Jurisdiction of the National Industrial Court in Labour and Employment Matters","slug":"the-exclusive-jurisdiction-of-the-national-industrial-court-in-labour-and-employment-matters","postDate":1447769820,"expiryDate":null,"enabled":1,"fields":{"33":["31"],"32":"The National Industrial Court is vested with exclusive jurisdiction on all labour, employment and related matters and as such all labour, employment and allied matters pending before State High Courts across Nigeria are required to be transferred to the National Industrial Court. This position was confirmed in the recent case of Josiah Madu vs. Solus Schall Nigeria Ltd (Unrep.)","2":["45","46"]}}', '2015-11-17 17:29:32', '2015-11-17 17:29:32', 'dcc3551f-e7b2-45fc-be32-d8b7f4b36a88'),
(92, 36, 11, 1, 'en_us', 2, '', '{"typeId":"13","authorId":"1","title":"Arbitrability of tax issues arising from production sharing contracts\\u2013 FIRS v. NNPC","slug":"arbitrability-of-tax-issues-arising-from-production-sharing-contracts-firs-v-nnpc","postDate":1447769880,"expiryDate":null,"enabled":1,"fields":{"33":["33"],"32":"The Federal High Court, Abuja in the case of Federal Inland Revenue Service VS. Nigerian National Petroleum Corporation & Others recently decided that an Arbitration Tribunal lacks jurisdiction to determine issues relating to taxation or connected with the Federal Government revenue as such jurisdiction is exclusively conferred on the FHC by the Constitution of the Federal Republic of Nigeria.","2":["47","48","49"]}}', '2015-11-17 17:31:00', '2015-11-17 17:31:00', 'ce56e905-8991-44b4-95e7-0dfd207f6b48'),
(93, 44, 7, 1, 'en_us', 3, '', '{"typeId":"9","authorId":"1","title":"Ijeoma Abalogu","slug":"ijeoma-abalogu","postDate":1447779660,"expiryDate":null,"enabled":1,"fields":{"24":[{"col1":""}],"20":"","21":"","14":["50"],"19":"","22":"","18":"Senior Associate","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["43"]}}', '2015-11-17 17:39:31', '2015-11-17 17:39:31', '684d3b93-348c-473e-814f-7d08c46e1fed');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(94, 44, 7, 1, 'en_us', 4, '', '{"typeId":"9","authorId":"1","title":"Ijeoma Abalogu","slug":"ijeoma-abalogu","postDate":1447779660,"expiryDate":null,"enabled":1,"fields":{"24":[{"col1":""}],"20":[{"col1":"Abia State University, Nigeria (LLB); 2002 "},{"col1":"The Nigerian Bar Association 2004"}],"21":[{"col1":"Corporate and Commercial Law "},{"col1":"Legal Advisory"},{"col1":"Company Secretarial "},{"col1":"Regulatory Compliance "},{"col1":"Intellectual Property "},{"col1":"Business Start-ups "},{"col1":"International Investments "},{"col1":"Private Equity "},{"col1":"Tax"}],"14":["50"],"19":"<p>Ijeoma is responsible for the firm\\u2019s&nbsp;corporate compliance and regulatory matters. She has advised several companies&nbsp;on the establishment of business entities in Nigeria, as well as completed&nbsp;registration and obtaining relevant licenses and approvals for corporate&nbsp;clients including Statoil, Baker Hughes, Parker Drilling, Western Atlas and&nbsp;Petro Explorer Ltd. She heads the business advisory and compliance unit in the&nbsp;firm and is also in charge of all company secretarial matters. She also focuses&nbsp;on international investments and immigration practices and procedures, which is&nbsp;a constantly evolving area, with proven client satisfaction.<\\/p><p><span><\\/span>Prior to joining GBC Law, Ijeoma had a stint&nbsp;at another law firm where she was involved in the legal&nbsp;advisory and client&nbsp;representations on various aspects of corporate and commercial law.<\\/p>","22":"","18":"Senior Associate","23":[{"col1":"Participated with the corporate team in the winding-up of the subsidiary of a multi-national oil servicing firm and assisted in ensuring that outstanding (debts) receivables are recovered on behalf of the company."},{"col1":"Represented African Capital Alliance, a leading African private equity company, in conducting legal due diligence and structuring a management buy-in culminating in a purchase of equities worth $15 million USD."},{"col1":"Acted for a land drilling company in an $18 million private equity investment."},{"col1":"Advising and assisting several clients on the establishment of Nigerian subsidiaries and procuring relevant pre-investment and operational approvals, licenses and permits."}],"4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["43"]}}', '2015-11-17 17:48:25', '2015-11-17 17:48:25', 'a60ffba2-7c4a-4bf3-b37e-d711eeb472fd'),
(95, 24, 7, 1, 'en_us', 3, '', '{"typeId":"9","authorId":"1","title":"Nkoyo Rapu","slug":"nkoyo-rapu","postDate":1447764720,"expiryDate":null,"enabled":1,"fields":{"24":"","20":[{"col1":"University of Lagos (LLM) "},{"col1":"The City of London Polytechnic (Diploma in English Private Law)."}],"21":"","14":[],"19":"<p>Nkoyo has over 20 years extensive experience&nbsp;and expertise in general law practice and advocacy.&nbsp; She started her legal career as a government&nbsp;legal representative with the Legal Aid Council and then roceeded to Oshinowo&nbsp;& Co as a Counsel in Chambers before joining the prestigious Allen and&nbsp;Ogunkeye.<\\/p><p><span><\\/span>She is also involved in extensive work with&nbsp;non-governmental organizations with particular emphasis on matters relating to&nbsp;women and children in the socio-economic and political context of the Nigerian&nbsp;society. In this regard, she has played a significant role at the national&nbsp;level in the area of women empowerment&nbsp;having been appointed to various&nbsp;committees. She sits on the board of trustees of Freedom Foundation, an&nbsp;umbrella organization of five NGO units committed to pioneering change in&nbsp;society through poverty alleviation and wealth creation. She is also director&nbsp;of Stone Creek Property Investment Company whose aim is to project a new way of&nbsp;community living.<\\/p><p><span><\\/span>Nkoyo has led two&nbsp;trade missions to Togo and more recently, to South Africa with the involvement&nbsp;of both the Nigerian embassy and the embassies of the host countries. She&nbsp;was amongst a select Nigerian&nbsp;delegation appointed by the American Embassy to&nbsp;attend the Annual Business Global&nbsp;Renaissance Summit in Washington D.C, their&nbsp;assignment focus being the creation of more business for more women across more&nbsp;borders. She also served as a board member of the Canadian and African Business&nbsp;Women\\u2019s Alliance - (CAABWA).<\\/p>","22":"","18":"Of Counsel","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["23"]}}', '2015-11-17 17:52:15', '2015-11-17 17:52:15', '746d36fc-e2c9-46a4-b831-db3de317ae32'),
(96, 24, 7, 1, 'en_us', 4, '', '{"typeId":"9","authorId":"1","title":"Nkoyo Rapu","slug":"nkoyo-rapu","postDate":1447764720,"expiryDate":null,"enabled":1,"fields":{"24":"","20":[{"col1":"University of Lagos (LLM) "},{"col1":"The City of London Polytechnic (Diploma in English Private Law)."}],"21":"","14":["52"],"19":"<p>Nkoyo has over 20 years extensive experience&nbsp;and expertise in general law practice and advocacy.&nbsp; She started her legal career as a government&nbsp;legal representative with the Legal Aid Council and then roceeded to Oshinowo&nbsp;& Co as a Counsel in Chambers before joining the prestigious Allen and&nbsp;Ogunkeye.<\\/p>\\r\\n\\r\\n<p>She is also involved in extensive work with&nbsp;non-governmental organizations with particular emphasis on matters relating to&nbsp;women and children in the socio-economic and political context of the Nigerian&nbsp;society. In this regard, she has played a significant role at the national&nbsp;level in the area of women empowerment&nbsp;having been appointed to various&nbsp;committees. She sits on the board of trustees of Freedom Foundation, an&nbsp;umbrella organization of five NGO units committed to pioneering change in&nbsp;society through poverty alleviation and wealth creation. She is also director&nbsp;of Stone Creek Property Investment Company whose aim is to project a new way of&nbsp;community living.<\\/p>\\r\\n\\r\\n<p>Nkoyo has led two&nbsp;trade missions to Togo and more recently, to South Africa with the involvement&nbsp;of both the Nigerian embassy and the embassies of the host countries. She&nbsp;was amongst a select Nigerian&nbsp;delegation appointed by the American Embassy to&nbsp;attend the Annual Business Global&nbsp;Renaissance Summit in Washington D.C, their&nbsp;assignment focus being the creation of more business for more women across more&nbsp;borders. She also served as a board member of the Canadian and African Business&nbsp;Women\\u2019s Alliance - (CAABWA).<\\/p>","22":"","18":"Of Counsel","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["23"]}}', '2015-11-17 17:57:12', '2015-11-17 17:57:12', 'c47c2f5a-761d-4be0-94a5-031c030a28df'),
(97, 24, 7, 1, 'en_us', 5, '', '{"typeId":"9","authorId":"1","title":"Nkoyo Rapu","slug":"nkoyo-rapu","postDate":1447764720,"expiryDate":null,"enabled":1,"fields":{"35":"","24":"","36":[{"col1":"Norwegian Human Rights Fund Royal Norwegian Embassy Lagos"},{"col1":"United States Agency Information Development (USAID)\\u00a0Victoria Island, Lagos."},{"col1":"Centre for Development and Population Activities (CEDPA) Lagos Chapter"},{"col1":"Jamaican High Commission, Abuja, Nigeria.\\u00a0\\u00a0\\u00a0\\u00a0"}],"20":[{"col1":"University of Lagos (LLM) "},{"col1":"The City of London Polytechnic (Diploma in English Private Law)."}],"21":"","14":["52"],"19":"<p>Nkoyo has over 20 years extensive experience&nbsp;and expertise in general law practice and advocacy.&nbsp; She started her legal career as a government&nbsp;legal representative with the Legal Aid Council and then roceeded to Oshinowo&nbsp;& Co as a Counsel in Chambers before joining the prestigious Allen and&nbsp;Ogunkeye.<\\/p>\\r\\n\\r\\n<p>She is also involved in extensive work with&nbsp;non-governmental organizations with particular emphasis on matters relating to&nbsp;women and children in the socio-economic and political context of the Nigerian&nbsp;society. In this regard, she has played a significant role at the national&nbsp;level in the area of women empowerment&nbsp;having been appointed to various&nbsp;committees. She sits on the board of trustees of Freedom Foundation, an&nbsp;umbrella organization of five NGO units committed to pioneering change in&nbsp;society through poverty alleviation and wealth creation. She is also director&nbsp;of Stone Creek Property Investment Company whose aim is to project a new way of&nbsp;community living.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>Nkoyo has led two&nbsp;trade missions to Togo and more recently, to South Africa with the involvement&nbsp;of both the Nigerian embassy and the embassies of the host countries. She&nbsp;was amongst a select Nigerian&nbsp;delegation appointed by the American Embassy to&nbsp;attend the Annual Business Global&nbsp;Renaissance Summit in Washington D.C, their&nbsp;assignment focus being the creation of more business for more women across more&nbsp;borders. She also served as a board member of the Canadian and African Business&nbsp;Women\\u2019s Alliance - (CAABWA).<\\/p>","22":"","18":"Of Counsel","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["23"]}}', '2015-11-17 18:05:02', '2015-11-17 18:05:02', 'c96bcb05-1207-42d9-9d10-00c164afd2a1'),
(98, 24, 7, 1, 'en_us', 6, '', '{"typeId":"9","authorId":"1","title":"Nkoyo Rapu","slug":"nkoyo-rapu","postDate":1447764720,"expiryDate":null,"enabled":1,"fields":{"35":"<p><strong>Federal Government Committees:<\\/strong><\\/p><p>Women\\u2019s Affirmative Action Committee,&nbsp;December 1998 inaugurated by the Federal Ministry of Women\\u2019s Affairs, Abuja,Nigeria.<br><strong>A<\\/strong><strong>ssignment:<\\/strong>&nbsp;Constitutional amendments for women.<\\/p><p>Constitution Drafting Committee, January&nbsp;2000 inaugurated by National Centre for Women\\u2019s Development, Abuja.<br><strong>Assignment:<\\/strong>&nbsp;Prepare consensus on position of&nbsp;Nigerian women on 1999 constitution<\\/p><p>American Embassy Nigerian Delegation:<br>Selected to attend the Annual Business Women\\u2019s Global Renaissance Summit in&nbsp;Washington D.C, October 1999.<br><strong>Assignment:<\\/strong>&nbsp;More Business for More Women across&nbsp;More Borders.<\\/p><p>Canadian and African Business Women\\u2019s&nbsp;Alliance Nigeria (CAABWA)<br><strong>Assignment:<\\/strong>&nbsp;Forge business associations between<br>Nigerian and Canadian Business Women.<\\/p>","24":"","36":[{"col1":"Norwegian Human Rights Fund Royal Norwegian Embassy Lagos"},{"col1":"United States Agency Information Development (USAID)\\u00a0Victoria Island, Lagos."},{"col1":"Centre for Development and Population Activities (CEDPA) Lagos Chapter"},{"col1":"Jamaican High Commission, Abuja, Nigeria.\\u00a0\\u00a0\\u00a0\\u00a0"}],"20":[{"col1":"University of Lagos (LLM) "},{"col1":"The City of London Polytechnic (Diploma in English Private Law)."}],"21":"","14":["52"],"19":"<p>Nkoyo has over 20 years extensive experience&nbsp;and expertise in general law practice and advocacy.&nbsp; She started her legal career as a government&nbsp;legal representative with the Legal Aid Council and then roceeded to Oshinowo&nbsp;& Co as a Counsel in Chambers before joining the prestigious Allen and&nbsp;Ogunkeye.<\\/p>\\r\\n\\r\\n<p>She is also involved in extensive work with&nbsp;non-governmental organizations with particular emphasis on matters relating to&nbsp;women and children in the socio-economic and political context of the Nigerian&nbsp;society. In this regard, she has played a significant role at the national&nbsp;level in the area of women empowerment&nbsp;having been appointed to various&nbsp;committees. She sits on the board of trustees of Freedom Foundation, an&nbsp;umbrella organization of five NGO units committed to pioneering change in&nbsp;society through poverty alleviation and wealth creation. She is also director&nbsp;of Stone Creek Property Investment Company whose aim is to project a new way of&nbsp;community living.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Nkoyo has led two&nbsp;trade missions to Togo and more recently, to South Africa with the involvement&nbsp;of both the Nigerian embassy and the embassies of the host countries. She&nbsp;was amongst a select Nigerian&nbsp;delegation appointed by the American Embassy to&nbsp;attend the Annual Business Global&nbsp;Renaissance Summit in Washington D.C, their&nbsp;assignment focus being the creation of more business for more women across more&nbsp;borders. She also served as a board member of the Canadian and African Business&nbsp;Women\\u2019s Alliance - (CAABWA).<\\/p>","22":"","18":"Of Counsel","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["23"]}}', '2015-11-17 18:11:13', '2015-11-17 18:11:13', '7fca15d8-c40d-4598-a1bb-d792326914c9'),
(99, 55, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Okey Nwaya","slug":"okey-nwaya","postDate":1447784528,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":"","21":"","14":["54"],"19":"","22":"","18":"Senior Associate","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["53"]}}', '2015-11-17 18:22:08', '2015-11-17 18:22:08', '23734e64-f879-4b11-84c5-5fcdb2c38cf7'),
(100, 55, 7, 1, 'en_us', 2, '', '{"typeId":"9","authorId":"1","title":"Okey Nwaya","slug":"okey-nwaya","postDate":1447784520,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":[{"col1":"University of Benin (LLB) "},{"col1":"Nigerian Bar Association 2002 "}],"21":[{"col1":"Commercial Litigation "},{"col1":"Labour and Employment "},{"col1":"Energy"}],"14":["54"],"19":"<p>Okey&nbsp;has a good knowledge and understanding of the theory and practice of Nigerian&nbsp;civil, commercial and criminal Laws, he has experience in litigation practice&nbsp;and procedure from the Magistrates\\u2019 Court to the Supreme Court, he has a good&nbsp;drafting and documentation skills.<\\/p><p><span><\\/span>His practice&nbsp;covers a broad range of contentious matters on behalf of corporate clients,&nbsp;financial institutions and oil servicing companies. Okey has acted for clients&nbsp;in litigation both in state and federal levels, as well as in several arbitrations,&nbsp;principally conducted under ICC rules.<\\/p><p><span><\\/span>He had been involved in matters from wide subject areas&nbsp;including energy, employment, credit and security, commerce, and real estate.<\\/p>","22":"","18":"Senior Associate","23":[{"col1":"Acting as lead Counsel representing an international professional services firm in a N1.4 billion action involving report by it on the issue of the incorrectly reported profit by a publicly quoted company in Nigeria."},{"col1":"Represented PricewaterhouseCoopers in an arbitration matter involving a long lease of its office facility."},{"col1":"Conducted legal due diligence and provided pre-investment advice in a $15 million USD private equity investment by African Capital Alliance in Bankers Warehouse Limited foremost international private equity firm in a leading cash-in-transit company in Nigeria."},{"col1":"Represented Baker Hughes in several litigation matters in the Niger-Delta region and other parts of Nigeria."},{"col1":"Represented ExxonMobil in litigation matters in the Niger-Delta region of Nigeria."},{"col1":"Represented a multi-national oil service company in various labour disputes including actions at the High Courts in the Niger-Delta region."},{"col1":"Advising and assisting a multi-national company in respect of a tax dispute with the Lagos State Board of Internal Revenue."}],"4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["53"]}}', '2015-11-17 18:28:25', '2015-11-17 18:28:25', '90c973d7-c96c-4472-a2ab-e11089577e82'),
(101, 59, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Sogo Akinola","slug":"sogo-akinola","postDate":1447785420,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":[{"col1":"Obafemi Awolowo University Ile Ife, (LLB) "},{"col1":"The Nigerian Bar "}],"21":[{"col1":"Corporate and Commercial "},{"col1":"Taxation"},{"col1":"Foreign Investment "}],"14":["58"],"19":"<p>Sogo&nbsp;has been engaged in a wide variety of transactions with special emphasis on corporate&nbsp;and commercial, taxation, power, privatization & foreign investment, technology&nbsp;and emerging practice areas. His commitment to exceeding expectations, adding&nbsp;value, and the assurance of success in any transaction with which he is&nbsp;identified places him above the ordinary lawyer.<\\/p>","22":"","18":"Associate","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["57"]}}', '2015-11-17 18:39:37', '2015-11-17 18:39:37', '0a3a95c9-3e90-4a89-b6c3-7c7f23bc3dd7'),
(102, 59, 7, 1, 'en_us', 2, '', '{"typeId":"9","authorId":"1","title":"Sogo Akinola","slug":"sogo-akinola","postDate":1447785420,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":[{"col1":"Obafemi Awolowo University Ile Ife, (LLB) "},{"col1":"The Nigerian Bar "}],"21":[{"col1":"Corporate and Commercial "},{"col1":"Taxation"},{"col1":"Foreign Investment "}],"14":["58"],"19":"<p>Sogo&nbsp;has been engaged in a wide variety of transactions with special emphasis on corporate&nbsp;and commercial, taxation, power, privatization & foreign investment, technology&nbsp;and emerging practice areas. His commitment to exceeding expectations, adding&nbsp;value, and the assurance of success in any transaction with which he is&nbsp;identified places him above the ordinary lawyer.<\\/p>","37":[{"col1":"Jamaican"},{"col1":"Chinese"}],"22":"","18":"Associate","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["57"]}}', '2015-11-17 18:48:29', '2015-11-17 18:48:29', '6f33fde8-a5ab-470a-bd9a-2039818bab17'),
(103, 63, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Sandra Asuzu","slug":"sandra-asuzu","postDate":1447786583,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":[{"col1":"University of Nigeria, Nsukka (LLM) "},{"col1":"The Nigerian Bar;2012"}],"21":[{"col1":"Energy and Projects "},{"col1":"Regulatory and Compliance "},{"col1":"Maritime and Intellectual Property\\u00a0\\u00a0\\u00a0\\u00a0"}],"14":["62"],"19":"<p>Sandra focuses on the energy and&nbsp;projects practice of GBC Law, especially in gas to power projects. She also&nbsp;participates actively in the corporate commercial and maritime areas of the&nbsp;firm. She demonstrates remarkable competencies in project finance, regulatory&nbsp;and compliance, general corporate\\/commercial practice.<\\/p>","37":"","22":[{"col1":"Nigerian Bar Association "},{"col1":"Institute of Chartered Secretaries and Administrators of Nigeria."}],"18":"Associate","23":[{"col1":"Successfully carrying out due diligence, preparing transactional documents and was also involved in the negotiations for the project financing of a Gas Processing Plant which pegged at the sum of $64M in a combination of equity and loan."},{"col1":"Analyzing and providing legal opinions in respect of Nigerian content issues relating to oil and gas projects and petroleum operations."}],"4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["61"]}}', '2015-11-17 18:56:23', '2015-11-17 18:56:23', '4f1ff24e-c856-4f28-87f8-afe39bd06d2f'),
(104, 66, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Ayoade Oluwasanmi\\u00a0\\u00a0","slug":"ayoade-oluwasanmi","postDate":1447787549,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":[{"col1":"Ambrose Alli University (LLB); 2004 "},{"col1":"The Nigerian Bar 2005"}],"21":[{"col1":"Corporate Commercial Litigation "},{"col1":"Corporate and Commercial Law "},{"col1":"Legal Advisory\\u00a0\\u00a0\\u00a0\\u00a0"}],"14":["65"],"19":"<p>Ayoade has over 10 years&nbsp;cognate experience advising on and litigating tax, labour, oil and gas, company&nbsp;law and recovery of premises related matters.<\\/p><p><span><\\/span>He has a wide experience of the law on a&nbsp;range of issues but has a bias for commercial litigation and arbitration. He&nbsp;has practical, working knowledge in litigation matters on a wide range of&nbsp;issues as diverse as Energy, Employment, Credit Transactions, Commercial&nbsp;Transactions, and Real Estate. He is a member of the litigation team at GBC&nbsp;Law.<\\/p>","37":"","22":[{"col1":"The Nigerian Bar Association "},{"col1":"The UK Chartered Institute of Arbitrators"}],"18":"Associate","23":[{"col1":"Provided representation for an international professional services firm in a N1.4 billion action involving report by it on the issue of the incorrectly reported profit by a publicly quoted company in Nigeria."},{"col1":"Represented a multi-national oil company at the Citizens Mediation Centre in a labour related matter filed by its employees."},{"col1":"Advised a multi-national oil service company with regards to its liabilities and responsibilities in connection with the environmental impact of the company\\u2019s drilling activities in the Niger-Delta region of Nigeria."},{"col1":"Represented Teleglobe in the enforcement of a foreign judgment in Nigeria relating to the termination of Internet Subscription Service Agreement."},{"col1":"Was the counsel in charge of the litigation on behalf of Baker Hughes Nigeria Limited, a multinational oil services firm with regards to illegal tax levied against it.\\u00a0 "},{"col1":"Was part of the team that represented and advised African Capital Alliance, a leading African private equity company, in conducting legal due diligence and structuring a management buy-in culminating in a purchase of majority shares in the dominant cash-in-transit services company in Nigeria."},{"col1":"Was part of the litigation team that represented PricewaterhouseCooopers, a multinational financial advisory and auditing firm with regards to the alleged misstatement of profits by Cadbury Nigeria Limited which led to an increased shareholding by Cadbury in the UK."},{"col1":"Was part of the team that instituted an action against the Lagos State Government and obtained judgement in favour of a client, obtaining a reversal of a purported revocation of both a Certificate of Occupancy and allocation by the New Towns Development Authority."}],"4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["64"]}}', '2015-11-17 19:12:29', '2015-11-17 19:12:29', 'd1c30f22-9394-4054-9561-8baec243d8dc'),
(105, 70, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Edward O. Vera Cruz","slug":"edward-o-vera-cruz","postDate":1447789421,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":[{"col1":"University of Lagos (LLB) "},{"col1":"The Nigerian Bar Association 1990"},{"col1":"Solicitor of the Supreme Court of England and Wales"},{"col1":"Solicitor of the Supreme Court of England and Wales"}],"21":[{"col1":"Oil and Gas\\u00a0"},{"col1":"Energy\\u00a0"},{"col1":"International Trade\\u00a0"},{"col1":"Public Procurement\\u00a0"},{"col1":"Project Finance "}],"14":["68"],"19":"<p>Edward\\u2019s practice extends over 20 years and has covered a&nbsp;comprehensive range of international corporate and commercial transactions. In&nbsp;particular, he focuses on oil and gas law, law of credit and security,&nbsp;international business transactions law, intellectual property and information&nbsp;technology law.<\\/p><p>In the energy sector, Edward has acted for sponsors and a&nbsp;wide variety of other clients in major project finance, general corporate and&nbsp;commercial transactions and regulatory matters.<\\/p><p><span><\\/span>Edward has held various leadership positions in most of the&nbsp;firms he has worked with. He was the Head of Chambers in the Firm of Lanre&nbsp;Olaoluwa & Co. (now Matrix Solicitors) and later Managing Partner in the&nbsp;Firm of Victor and Charles Solicitors (now part of AELEX Partners), a position&nbsp;he held for over 7 years.<\\/p><p> He is a regular participant at local and international&nbsp;seminars and was for a number of years both a visiting lecturer on the Nigerian&nbsp;Institute of Advanced Legal Studies ''Advance Legal Drafting Course'' and the&nbsp;contributing rapporteur for Nigeria for the Journal of Energy and Natural&nbsp;Resources Law.<\\/p>","37":"","22":[{"col1":"Solicitor of the Supreme Court of England and Wales"},{"col1":"The Law Society of England & Wales "},{"col1":"The Procurement Lawyers Association "},{"col1":"The Association of British Council Fellows "},{"col1":"The Association of British Chevening Scholars  "},{"col1":"Gideons International"}],"18":"Of Counsel","23":[{"col1":"Representing Texaco Inc., and providing general legal advice on the implementation in Nigeria of an incorporated joint venture between Chevron and Texaco for the marketing internationally of marine fuels and lubricants."},{"col1":"Representing ENRON International; Enron B\\u00e9nin Gas Holdings Ltd; and Enron West Africa Pipeline Ltd and providing general legal advisory work and consultations on the structuring, contract documentation, and security issues on the acquisition by Enron of the rights to all of the gas and condensate in the Aje Field of OML 113 and future rights in the gas and condensate produced from OML 113 outside the Aje Field."},{"col1":"Rendered advice to TOTAL Exploration Nig. Ltd. on the legal aspects of the proposed acquisition by TOTAL (Transferee) of the interests of Ashland Nigeria Exploration Unlimited in various Oil Producing Licences in Nigeria."},{"col1":"Advising and documentation for TOTAL Upstream Nigeria Ltd on the unincorporated joint venture, with a local and another international party, for the joint prospecting for and exploitation of the oil deposits in a virgin offshore concession (OPL 246)."},{"col1":"Preparing Farm-In Agreement involving TOTAL Upstream Nigeria Ltd on the acquisition by TOTAL (Farminee) of 24% undivided interest in the deep offshore field (OPL 246) granted to South Atlantic Petroleum Ltd."},{"col1":"Completed legal, regulatory and due diligence aspects of the acquisition by Petroleum Oil & Gas Company of South Africa (Nig.) Ltd PETROSA (Nigeria) (Transferee) of 50% (non-operating) interest in the existing production fields of Addax Petroleum Nigeria."},{"col1":"One of the Legal Advisers (Nigeria) to the Project Sponsors\\/Commercial Group, including Chevron, Shell, Nigeria National Petroleum Corporation, SobeGaz, SotoGaz,and the Ghanaian National Petroleum Corporation, which included Project structuring, project financing, and environmental issues advise on the West African sub-regional gas pipeline project."},{"col1":"Team member: pre-project advisory team to Mobil Power Inc. and Mobil Producing Nigeria Unlimited (Project Sponsor) \\u2013 Preliminary, behind-the-scenes advisory work and consultations on the statutory and regulatory framework existing in Nigeria for the setting up of an independent natural gas-based power. "}],"4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["69"]}}', '2015-11-17 19:43:41', '2015-11-17 19:43:41', '531142fa-f80e-44ad-aa93-a085b6981bf7'),
(106, 72, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Lola Ogunmodede","slug":"lola-ogunmodede","postDate":1447789909,"expiryDate":null,"enabled":1,"fields":{"35":"<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Advising on the acquisition of a<br> merchant-banking subsidiary by Union Bank of Nigeria PLC.<\\/p>","24":[{"col1":""}],"36":"","20":[{"col1":"Ogun State University (LLB); 1990"},{"col1":"Nigerian Bar Association 1991. "},{"col1":"University of Lagos (Masters in Law) "},{"col1":"IESE, University of Navarra, Barcelona, Spain (MBA). "}],"21":[{"col1":"Trade and Investments"},{"col1":"Corporate Law "},{"col1":"Banking and Finance "},{"col1":"Employment "},{"col1":"Commercial Contracts "},{"col1":"Company Secretarial Practice"},{"col1":"Project Finance"},{"col1":"Mergers and Acquisitions"}],"14":[],"19":"<p>Lola&nbsp;has over 19 years of hands-on experience in corporate\\/commercial law. She has&nbsp;extensive experience and expertise in handling large-scale commercial&nbsp;transactions particularly involving the banking and financial services industry.&nbsp;She has worked with First Atlantic Bank Limited as The Legal Adviser\\/Company<br> Secretary and in the legal department of Union Bank where she advised on a&nbsp;variety of legal matters.&nbsp; Whilst in these organisations, she was involved&nbsp;in the negotiation and documentation of several banking transactions and the&nbsp;drafting of various commercial contracts such as the acquisition of a&nbsp;merchant-banking subsidiary by Union Bank.<span><\\/span><\\/p>","37":[{"col1":"English and French"}],"22":[{"col1":"Nigerian Bar Association"}],"18":"Partner","23":[{"col1":"Advising on the acquisition of a merchant-banking subsidiary by Union Bank of Nigeria PLC."},{"col1":"Advising on the acquisition of\\u00a0Flexcube\\u00a0banking software by Union Bank of Nigeria Plc and Finnacle\\u00a0banking software by First Atlantic Bank Ltd."},{"col1":"Advising on the acquisition of an Internet Based Money Transfer facility by First Atlantic Bank Ltd."},{"col1":"Advising on the setting up of a Staff Share Investment scheme by First Atlantic Bank Ltd."},{"col1":"Advising and documenting various syndicated facilities relating to Peugeot Automobile Nigeria, Intel Oil Services, G. Cappa, International Distillers, Victoria Garden Hotels and several other leading companies."},{"col1":"Drafting, reviewing and advising on various Security Documentation including but not limited to Legal Mortgages, Debentures (Fixed, Floating and Mortgage), Equipment Leases including Sale and Lease Back contracts, pledges, guarantees and indemnities."},{"col1":"Conducting market research and putting together the business plan of\\u00a0Venture Partners\\u00a0a start up Venture Capital Company focused on offering financial and managerial support to small and medium scale enterprises."}],"4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":[]}}', '2015-11-17 19:51:49', '2015-11-17 19:51:49', '2d38472b-e5dc-4639-8ee4-f1889522565b'),
(107, 73, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Wole Tejuoso\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 ","slug":"wole-tejuoso","postDate":1447790227,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":[{"col1":"Lagos State University (LLB); 1990 "},{"col1":"The Nigerian Bar 1991 "},{"col1":"The Washington College of Law (Masters in Law) "},{"col1":"He qualified as a Solicitor in England and Wales in 1999. "},{"col1":"He qualified as a Solicitor in England and Wales in 1999. "}],"21":[{"col1":"Intellectual Property "},{"col1":"Energy"},{"col1":"Banking and Finance "},{"col1":"Banking and Finance "},{"col1":"Real Estate"}],"14":[],"19":"<p>Wole is responsible for intellectual property matters at GBC&nbsp;Law.&nbsp; He also focuses on real estate transactions, and corporate&nbsp;commercial law.&nbsp; He has over 19 years experience of legal practice and&nbsp;also has considerable expertise in e-commerce. He has also been involved in a&nbsp;number of transactions in the Nigerian energy sector.<\\/p>\\r\\n\\r\\n<p> <br> Wole worked as an associate at Sheikh & Co. Solicitors,&nbsp;London, before joining Merrill Lynch International Bank, London where he worked&nbsp;in the Private Banking Department. He worked as Company Secretary at Dabis&nbsp;International Company Limited, London also, before a stint at Irving &&nbsp;Bonnar where he worked with the corporate\\/commercial group on a variety of&nbsp;transactions for both domestic and international clients.<\\/p>","37":"","22":[{"col1":"He qualified as a Solicitor in England and Wales in 1999. "},{"col1":"The International Trademark Association (INTA)."}],"18":"Partner","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":[]}}', '2015-11-17 19:57:07', '2015-11-17 19:57:07', 'd8b5f7c8-8216-4d42-accf-e167258bd401'),
(108, 72, 7, 1, 'en_us', 2, '', '{"typeId":"9","authorId":"1","title":"Lola Ogunmodede","slug":"lola-ogunmodede","postDate":1447789860,"expiryDate":null,"enabled":1,"fields":{"35":"<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Advising on the acquisition of a<br> merchant-banking subsidiary by Union Bank of Nigeria PLC.<\\/p>","24":[{"col1":""}],"36":"","20":[{"col1":"Ogun State University (LLB); 1990"},{"col1":"Nigerian Bar Association 1991. "},{"col1":"University of Lagos (Masters in Law) "},{"col1":"IESE, University of Navarra, Barcelona, Spain (MBA). "}],"21":[{"col1":"Trade and Investments"},{"col1":"Corporate Law "},{"col1":"Banking and Finance "},{"col1":"Employment "},{"col1":"Commercial Contracts "},{"col1":"Company Secretarial Practice"},{"col1":"Project Finance"},{"col1":"Mergers and Acquisitions"}],"14":["75"],"19":"<p>Lola&nbsp;has over 19 years of hands-on experience in corporate\\/commercial law. She has&nbsp;extensive experience and expertise in handling large-scale commercial&nbsp;transactions particularly involving the banking and financial services industry.&nbsp;She has worked with First Atlantic Bank Limited as The Legal Adviser\\/Company<br> Secretary and in the legal department of Union Bank where she advised on a&nbsp;variety of legal matters.&nbsp; Whilst in these organisations, she was involved&nbsp;in the negotiation and documentation of several banking transactions and the&nbsp;drafting of various commercial contracts such as the acquisition of a&nbsp;merchant-banking subsidiary by Union Bank.<\\/p>","37":[{"col1":"English and French"}],"22":[{"col1":"Nigerian Bar Association"}],"18":"Partner","23":[{"col1":"Advising on the acquisition of a merchant-banking subsidiary by Union Bank of Nigeria PLC."},{"col1":"Advising on the acquisition of\\u00a0Flexcube\\u00a0banking software by Union Bank of Nigeria Plc and Finnacle\\u00a0banking software by First Atlantic Bank Ltd."},{"col1":"Advising on the acquisition of an Internet Based Money Transfer facility by First Atlantic Bank Ltd."},{"col1":"Advising on the setting up of a Staff Share Investment scheme by First Atlantic Bank Ltd."},{"col1":"Advising and documenting various syndicated facilities relating to Peugeot Automobile Nigeria, Intel Oil Services, G. Cappa, International Distillers, Victoria Garden Hotels and several other leading companies."},{"col1":"Drafting, reviewing and advising on various Security Documentation including but not limited to Legal Mortgages, Debentures (Fixed, Floating and Mortgage), Equipment Leases including Sale and Lease Back contracts, pledges, guarantees and indemnities."},{"col1":"Conducting market research and putting together the business plan of\\u00a0Venture Partners\\u00a0a start up Venture Capital Company focused on offering financial and managerial support to small and medium scale enterprises."}],"4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["74"]}}', '2015-11-17 20:11:28', '2015-11-17 20:11:28', '8402bad0-8c9f-4a82-aaa6-735eb80b7b70'),
(109, 73, 7, 1, 'en_us', 2, '', '{"typeId":"9","authorId":"1","title":"Wole Tejuoso\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 ","slug":"wole-tejuoso","postDate":1447790220,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":[{"col1":"Lagos State University (LLB); 1990 "},{"col1":"The Nigerian Bar 1991 "},{"col1":"The Washington College of Law (Masters in Law) "},{"col1":"He qualified as a Solicitor in England and Wales in 1999. "},{"col1":"He qualified as a Solicitor in England and Wales in 1999. "}],"21":[{"col1":"Intellectual Property "},{"col1":"Energy"},{"col1":"Banking and Finance "},{"col1":"Banking and Finance "},{"col1":"Real Estate"}],"14":["76"],"19":"<p>Wole is responsible for intellectual property matters at GBC&nbsp;Law.&nbsp; He also focuses on real estate transactions, and corporate&nbsp;commercial law.&nbsp; He has over 19 years experience of legal practice and&nbsp;also has considerable expertise in e-commerce. He has also been involved in a&nbsp;number of transactions in the Nigerian energy sector.<\\/p>\\r\\n\\r\\n<p> <br> Wole worked as an associate at Sheikh & Co. Solicitors,&nbsp;London, before joining Merrill Lynch International Bank, London where he worked&nbsp;in the Private Banking Department. He worked as Company Secretary at Dabis&nbsp;International Company Limited, London also, before a stint at Irving &&nbsp;Bonnar where he worked with the corporate\\/commercial group on a variety of&nbsp;transactions for both domestic and international clients.<\\/p>","37":"","22":[{"col1":"He qualified as a Solicitor in England and Wales in 1999. "},{"col1":"The International Trademark Association (INTA)."}],"18":"Partner","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["77"]}}', '2015-11-17 20:11:43', '2015-11-17 20:11:43', 'aa47b2e8-169b-4f4e-827d-db53dd8c4659'),
(110, 78, 7, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Edwin Egede","slug":"edwin-egede","postDate":1447791468,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":[{"col1":"University of Benin (LLB Hons.) "},{"col1":"University of Lagos (LLM) "},{"col1":"Cardiff University, Cardiff, Wales, United Kingdom (PhD in International Law) "}],"21":[{"col1":"International Law "},{"col1":"International Maritime and Trade Law "},{"col1":"Foreign Investment Law "},{"col1":"Enforcement of Foreign Judgments "},{"col1":"Oil and Gas Law "},{"col1":"Bilateral Investment Treaties "},{"col1":"State and Diplomatic Immunity Law"}],"14":["75"],"19":"<p>Dr.&nbsp;Egede (PhD. International Law) has over 25 years extensive practice experience.&nbsp;His expertise covers a range of subjects, including International Maritime and&nbsp;Trade Law, Foreign Investment Law, Enforcement of Foreign Judgments, Oil and&nbsp;Gas Law, Bilateral Investment Treaties (BITs) claims, State and Diplomatic&nbsp;<br> immunity Law and the Law on the Regulation and Management of Offshore Mineral&nbsp;and Fisheries and all aspects of International Law. Over the years he has acted&nbsp;and \\/or provided advice to various Multinational Corporations (MNCs), Banks,&nbsp;Governments and Government agencies. He has provided advice in respect of the&nbsp;recognition and enforcement of the judgment of the Court of a Latin American&nbsp;Country in Nigeria and the application of the United States Foreign Corrupt&nbsp;Practices Act (FCPA) in Nigeria. He has also advised a State government in&nbsp;Nigeria on its rights under international law to the offshore sea-bed and the<br> resources therein. Further, he has provided advice on the impact of the<br> European Union Common Fisheries Policy.<\\/p><p>Dr.&nbsp;Egede is currently engaged in interdisciplinary teaching and research in&nbsp;International Law and International Relations at the Cardiff University and is&nbsp;a Fellow of the Higher Education Academy (FHEA), United Kingdom.&nbsp;<\\/p><p><span><\\/span>He&nbsp;has written and published books with renowned publishers and journal articles&nbsp;in peer reviewed international journals in the area of International Law.<\\/p><p><span><\\/span>Dr.&nbsp;Egede is a regular participant at local and international Conferences\\/Seminars&nbsp;and has delivered papers in various places, including the International&nbsp;Hydrographic Organisation\\/International Association of Geodesy Advisory Board&nbsp;on the Law of the Sea (ABLOS) Conference in Monaco; the African Studies&nbsp;Association of the UK (ASAUK) Conference at the Oxford University and the&nbsp;Institute for International Shipping and Trade Law, Swansea University.<\\/p>","37":"","22":[{"col1":"Nigerian Bar Association "},{"col1":"The International Law Association "},{"col1":"The Academic Council on the United Nations Systems "},{"col1":"The Legal, Economic & Regulatory Section of Gerson Lehrman Group "},{"col1":"The Welsh Centre of International Affairs (WCIA) "},{"col1":"Legal Affairs Committee, Wales, United Kingdom. "}],"18":"Consultant","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["74"]}}', '2015-11-17 20:17:48', '2015-11-17 20:17:48', '4cec7b6b-d44a-4896-a9f6-b6e8d552ab4e'),
(111, 73, 7, 1, 'en_us', 3, '', '{"typeId":"9","authorId":"1","title":"Wole Tejuoso","slug":"wole-tejuoso","postDate":1447790220,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":[{"col1":"Lagos State University (LLB); 1990 "},{"col1":"The Nigerian Bar 1991 "},{"col1":"The Washington College of Law (Masters in Law) "},{"col1":"He qualified as a Solicitor in England and Wales in 1999. "},{"col1":"He qualified as a Solicitor in England and Wales in 1999. "}],"21":[{"col1":"Intellectual Property "},{"col1":"Energy"},{"col1":"Banking and Finance "},{"col1":"Banking and Finance "},{"col1":"Real Estate"}],"14":["76"],"19":"<p>Wole is responsible for intellectual property matters at GBC&nbsp;Law.&nbsp; He also focuses on real estate transactions, and corporate&nbsp;commercial law.&nbsp; He has over 19 years experience of legal practice and&nbsp;also has considerable expertise in e-commerce. He has also been involved in a&nbsp;number of transactions in the Nigerian energy sector.<\\/p>\\r\\n\\r\\n<p> <br> Wole worked as an associate at Sheikh & Co. Solicitors,&nbsp;London, before joining Merrill Lynch International Bank, London where he worked&nbsp;in the Private Banking Department. He worked as Company Secretary at Dabis&nbsp;International Company Limited, London also, before a stint at Irving &&nbsp;Bonnar where he worked with the corporate\\/commercial group on a variety of&nbsp;transactions for both domestic and international clients.<\\/p>","37":"","22":[{"col1":"He qualified as a Solicitor in England and Wales in 1999. "},{"col1":"The International Trademark Association (INTA)."}],"18":"Partner","23":"","4":"","5":"","6":"","13":[],"7":"","3":"","8":"","15":["77"]}}', '2015-11-17 20:28:08', '2015-11-17 20:28:08', 'f28aaf4e-c9d5-47ba-be64-20e8159958b8'),
(112, 21, 8, 1, 'en_us', 4, '', '{"typeId":null,"authorId":null,"title":"About","slug":"about-gbc","postDate":1447762193,"expiryDate":null,"enabled":1,"fields":{"9":"<h3>Gbenga Biobaku & Co. (GBC) is a leading law firm in Nigeria with primary practice in the business scene.<\\/h3>\\r\\n\\r\\n<p>For over 20years, our Firm has demonstrated its expertise in handling challenging assignments for the most interesting clients. We have achieved extraordinary results with a team of intensely focused members with a focus on solving our clients'' most important problems.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Building strong client relationships is the compass of our business strategy. With diverse experience and exceptional professionals, we have continually delivered quality to our clients through innovative legal solutions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our clients range from multinationals, oil & energy firms, financial institutions and emerging companies. We also advise governments and public bodies.<\\/p>","10":{"new1":{"type":"client","enabled":"1","fields":{"clientName":"Exxon Mobil","clientLogo":["79"]}},"new2":{"type":"client","enabled":"1","fields":{"clientName":"Statoil","clientLogo":["80"]}},"new3":{"type":"client","enabled":"1","fields":{"clientName":"Baker Hughes","clientLogo":["81"]}},"new4":{"type":"client","enabled":"1","fields":{"clientName":"BJ Services Nigeria Limited","clientLogo":["84"]}},"new5":{"type":"client","enabled":"1","fields":{"clientName":"Parker Drilling","clientLogo":["85"]}},"new6":{"type":"client","enabled":"1","fields":{"clientName":"Oceaneering Nigeria","clientLogo":["86"]}},"new7":{"type":"client","enabled":"1","fields":{"clientName":"African Capital Alliance","clientLogo":["87"]}},"new8":{"type":"client","enabled":"1","fields":{"clientName":"Rhino Linings","clientLogo":["88"]}}},"17":"Pentagon Petroleum Limited","14":["89"],"4":"","5":"","6":"","13":"","7":"","3":"","8":"","15":""}}', '2015-11-20 01:07:11', '2015-11-20 01:07:11', 'a457d51f-e1da-4028-b22c-8f3515e836a1'),
(113, 21, 8, 1, 'en_us', 5, '', '{"typeId":null,"authorId":null,"title":"About","slug":"about-gbc","postDate":1447762193,"expiryDate":null,"enabled":1,"fields":{"9":"<h3>Gbenga Biobaku & Co. (GBC) is a leading law firm in Nigeria with primary practice in the business scene.<\\/h3>\\r\\n\\r\\n<p>For over 20years, our Firm has demonstrated its expertise in handling challenging assignments for the most interesting clients. We have achieved extraordinary results with a team of intensely focused members with a focus on solving our clients'' most important problems.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Building strong client relationships is the compass of our business strategy. With diverse experience and exceptional professionals, we have continually delivered quality to our clients through innovative legal solutions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our clients range from multinationals, oil & energy firms, financial institutions and emerging companies. We also advise governments and public bodies.<\\/p>","10":{"90":{"type":"client","enabled":"1","fields":{"clientName":"Exxon Mobil","clientLogo":["79"]}},"91":{"type":"client","enabled":"1","fields":{"clientName":"Statoil","clientLogo":["80"]}},"92":{"type":"client","enabled":"1","fields":{"clientName":"Baker Hughes","clientLogo":["81"]}},"93":{"type":"client","enabled":"1","fields":{"clientName":"BJ Services Nigeria Limited","clientLogo":["84"]}},"94":{"type":"client","enabled":"1","fields":{"clientName":"Parker Drilling","clientLogo":["85"]}},"95":{"type":"client","enabled":"1","fields":{"clientName":"Oceaneering Nigeria","clientLogo":["86"]}},"96":{"type":"client","enabled":"1","fields":{"clientName":"African Capital Alliance","clientLogo":["87"]}},"97":{"type":"client","enabled":"1","fields":{"clientName":"Rhino Linings","clientLogo":["88"]}},"new1":{"type":"client","enabled":"1","fields":{"clientName":"Pentagon Petroleum Limited","clientLogo":["98"]}},"new2":{"type":"client","enabled":"1","fields":{"clientName":"Taba Nigeria","clientLogo":["99"]}}},"17":"Our client list spans the oil and gas, construction, banking and financial institutions, here are a list of some of our clients.","14":"","4":"","5":"","6":"","13":"","7":"","3":"","8":"","15":""}}', '2015-11-20 01:09:13', '2015-11-20 01:09:13', '80127aba-6013-45c6-8beb-c6e8e69cf668'),
(114, 21, 8, 1, 'en_us', 6, '', '{"typeId":null,"authorId":null,"title":"About","slug":"about-gbc","postDate":1447762193,"expiryDate":null,"enabled":1,"fields":{"9":"<h3>Gbenga Biobaku & Co. (GBC) is a leading law firm in Nigeria with primary practice in the business scene.<\\/h3>\\r\\n\\r\\n<p>For over 20years, our Firm has demonstrated its expertise in handling challenging assignments for the most interesting clients. We have achieved extraordinary results with a team of intensely focused members with a focus on solving our clients'' most important problems.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Building strong client relationships is the compass of our business strategy. With diverse experience and exceptional professionals, we have continually delivered quality to our clients through innovative legal solutions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our clients range from multinationals, oil & energy firms, financial institutions and emerging companies. We also advise governments and public bodies.<\\/p>","10":{"90":{"type":"client","enabled":"1","fields":{"clientName":"Exxon Mobil","clientLogo":["79"]}},"91":{"type":"client","enabled":"1","fields":{"clientName":"Statoil","clientLogo":["80"]}},"92":{"type":"client","enabled":"1","fields":{"clientName":"Baker Hughes","clientLogo":["81"]}},"93":{"type":"client","enabled":"1","fields":{"clientName":"BJ Services Nigeria Limited","clientLogo":["84"]}},"94":{"type":"client","enabled":"1","fields":{"clientName":"Parker Drilling","clientLogo":["85"]}},"95":{"type":"client","enabled":"1","fields":{"clientName":"Oceaneering Nigeria","clientLogo":["86"]}},"96":{"type":"client","enabled":"1","fields":{"clientName":"African Capital Alliance","clientLogo":["87"]}},"97":{"type":"client","enabled":"1","fields":{"clientName":"Rhino Linings","clientLogo":["88"]}},"100":{"type":"client","enabled":"1","fields":{"clientName":"Pentagon Petroleum Limited","clientLogo":["98"]}},"101":{"type":"client","enabled":"1","fields":{"clientName":"Taba Nigeria","clientLogo":["99"]}}},"17":"Our client list spans the oil and gas, construction, banking and financial institutions, here are a list of some of our clients (past and present).","14":"","4":"","5":"","6":"","13":"","7":"","3":"","8":"","15":""}}', '2015-11-20 01:11:55', '2015-11-20 01:11:55', 'b565dad1-74df-4012-b295-6150f5b12442');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(115, 72, 7, 1, 'en_us', 3, '', '{"typeId":"9","authorId":"1","title":"Lola Ogunmodede","slug":"lola-ogunmodede","postDate":1447789860,"expiryDate":null,"enabled":1,"fields":{"35":"","24":[{"col1":""}],"36":"","20":[{"col1":"Ogun State University (LLB); 1990"},{"col1":"Nigerian Bar Association 1991. "},{"col1":"University of Lagos (Masters in Law) "},{"col1":"IESE, University of Navarra, Barcelona, Spain (MBA). "}],"21":[{"col1":"Trade and Investments"},{"col1":"Corporate Law "},{"col1":"Banking and Finance "},{"col1":"Employment "},{"col1":"Commercial Contracts "},{"col1":"Company Secretarial Practice"},{"col1":"Project Finance"},{"col1":"Mergers and Acquisitions"}],"14":["75"],"19":"<p>Lola&nbsp;has over 19 years of hands-on experience in corporate\\/commercial law. She has&nbsp;extensive experience and expertise in handling large-scale commercial&nbsp;transactions particularly involving the banking and financial services industry.&nbsp;She has worked with First Atlantic Bank Limited as The Legal Adviser\\/Company<br> Secretary and in the legal department of Union Bank where she advised on a&nbsp;variety of legal matters.&nbsp; Whilst in these organisations, she was involved&nbsp;in the negotiation and documentation of several banking transactions and the&nbsp;drafting of various commercial contracts such as the acquisition of a&nbsp;merchant-banking subsidiary by Union Bank.<\\/p>","37":[{"col1":"English and French"}],"22":[{"col1":"Nigerian Bar Association"}],"18":"Partner","23":[{"col1":"Advising on the acquisition of a merchant-banking subsidiary by Union Bank of Nigeria PLC."},{"col1":"Advising on the acquisition of\\u00a0Flexcube\\u00a0banking software by Union Bank of Nigeria Plc and Finnacle\\u00a0banking software by First Atlantic Bank Ltd."},{"col1":"Advising on the acquisition of an Internet Based Money Transfer facility by First Atlantic Bank Ltd."},{"col1":"Advising on the setting up of a Staff Share Investment scheme by First Atlantic Bank Ltd."},{"col1":"Advising and documenting various syndicated facilities relating to Peugeot Automobile Nigeria, Intel Oil Services, G. Cappa, International Distillers, Victoria Garden Hotels and several other leading companies."},{"col1":"Drafting, reviewing and advising on various Security Documentation including but not limited to Legal Mortgages, Debentures (Fixed, Floating and Mortgage), Equipment Leases including Sale and Lease Back contracts, pledges, guarantees and indemnities."},{"col1":"Conducting market research and putting together the business plan of\\u00a0Venture Partners\\u00a0a start up Venture Capital Company focused on offering financial and managerial support to small and medium scale enterprises."}],"4":"","5":"","6":"","13":"","7":"","3":"","8":"","15":["74"]}}', '2015-11-20 02:07:15', '2015-11-20 02:07:15', '9033fb20-f8ba-4080-948e-3fc08c7926fd'),
(116, 21, 8, 1, 'en_us', 7, '', '{"typeId":null,"authorId":null,"title":"About","slug":"about-gbc","postDate":1447762193,"expiryDate":null,"enabled":1,"fields":{"9":"<h3>Gbenga Biobaku & Co. (GBC) is a leading law firm in Nigeria with primary practice in the business scene, with focus on Energy and Projects.<\\/h3>\\r\\n\\r\\n<p>For over 20years, our Firm has demonstrated its expertise in handling challenging assignments for the most interesting clients. We have achieved extraordinary results with a team of intensely focused members focused on&nbsp;solving our clients'' most important problems.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Building strong client relationships is the compass of our business strategy. With diverse experience and exceptional professionals with specialist skills, we have continually delivered quality to our clients through innovative legal solutions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our clients range from multinationals, oil & energy firms, financial institutions and emerging companies. We also advise governments&nbsp;and public bodies.<\\/p>","10":{"90":{"type":"client","enabled":"1","fields":{"clientName":"Exxon Mobil","clientLogo":["79"]}},"91":{"type":"client","enabled":"1","fields":{"clientName":"Statoil","clientLogo":["80"]}},"92":{"type":"client","enabled":"1","fields":{"clientName":"Baker Hughes","clientLogo":["81"]}},"93":{"type":"client","enabled":"1","fields":{"clientName":"BJ Services Nigeria Limited","clientLogo":["84"]}},"94":{"type":"client","enabled":"1","fields":{"clientName":"Parker Drilling","clientLogo":["85"]}},"95":{"type":"client","enabled":"1","fields":{"clientName":"Oceaneering Nigeria","clientLogo":["86"]}},"96":{"type":"client","enabled":"1","fields":{"clientName":"African Capital Alliance","clientLogo":["87"]}},"97":{"type":"client","enabled":"1","fields":{"clientName":"Rhino Linings","clientLogo":["88"]}},"100":{"type":"client","enabled":"1","fields":{"clientName":"Pentagon Petroleum Limited","clientLogo":["98"]}},"101":{"type":"client","enabled":"1","fields":{"clientName":"Taba Nigeria","clientLogo":["99"]}}},"17":"Our client list spans the oil and gas, construction, banking and financial institutions, here are a list of some of our clients (past and present).","14":"","4":"","5":"","6":"","13":"","7":"","3":"","8":"","15":""}}', '2015-11-20 02:15:24', '2015-11-20 02:15:24', '70c29684-fee8-4458-8bb0-d041cccd0630'),
(117, 25, 9, 1, 'en_us', 10, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":{"26":{"type":"expertise","enabled":"1","fields":{"exTitle":"Energy & Projects","exContent":"<p>Gbenga Biobaku & Co. has developed an extensive Energy Project Development practice, representing parties on both sides of the spectrum. Our expertise encompasses the oil and gas, power, mining and infrastructure sectors of the Nigerian economy.<\\/p>\\r\\n\\r\\n<p>As counsel to some major and developing energy players, GBC project scope has covered securing foreign investment, project financing transactions, advisory, federal regulatory approvals, operations and maintenance contracts, site acquisitions and other related corporate and commercial transactions.<\\/p><p>With the recent divestments and local participation law and the influx of foreign investment in the Nigerian Oil and Gas industry, GBC has been recognized for its ability to prescribe working business modules, and joint venture arrangements that ensures return on investment (ROI) for investors and the protection and sustainability of its indigenous clients.<\\/p><p>Our team has substantial experience in advising foreign and indigenous investors in Nigeria on energy projects financing. We also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy, mining and oil and gas sectors.<\\/p>","exAreasOfInterest":[{"col1":"EMPLOYMENT + LABOUR"},{"col1":"ENVIRONMENT"},{"col1":"PROFESSIONAL LIABILITY"},{"col1":"DISPUTE RESOLUTION"},{"col1":"MEDIATION & ARBITRATION"},{"col1":"TRADE DISPUTES"},{"col1":"DEBT RECOVERY"},{"col1":"CORPORATE GOVERNANCE"},{"col1":"CONTRACTS"},{"col1":"SECURITIES LITIGATION"}]}},"27":{"type":"expertise","enabled":"1","fields":{"exTitle":"General Corporate Commercial","exContent":"<p>The GBC\\u2019s Corporate and Commercial Practice department represents a broad range of corporate and business interests. The group delivers responsive, innovative and practical legal solutions in diverse areas including: Mergers & Acquisitions, Capital Markets, Banking & Finance, Offshore acquisitions and investments, Trust Arrangements, Estate Planning, Private Equity & Venture Capital, Intellectual Property, Foreign Investments & Joint Ventures, Privatization & Infrastructure Developments, Telecommunications, Information Technology, Immigration, Commercial Property Development & Conveyancing, Taxation, Employment & Labor Relations, Aircraft & Ship Financing, Business Advisory & Company Secretarial Services<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>GBC runs the gamut of corporate and commercial law practice with the aim of providing a seamless service, integrating diverse clients\\u2019 business interests. Our work with our clients involves ensuring compliance with standard business practices and procedures and operation within the national and local laws applicable to their specific industry.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Additionally, we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures.<\\/p>","exAreasOfInterest":[{"col1":"MERGERS & ACQUISITIONS"},{"col1":"CAPITAL MARKETS"},{"col1":"BANKING & FINANCE"},{"col1":"PRIVATIZATION & INFRASTRUCTURE"},{"col1":"BUSINESS ADVISORY "},{"col1":"INTERNATIONAL TRADE"},{"col1":"FOREIGN INVESTMENTS & JOINT VENTURES"},{"col1":"TELECOMMUNICATIONS"},{"col1":"INFORMATION TECHNOLOGY"},{"col1":"IMMIGRATION"},{"col1":"COMMERCIAL PROPERTY DEVELOPMENT & CONVEYANCING"},{"col1":"TAXATION"},{"col1":"EMPLOYMENT & LABOR RELATIONS"},{"col1":"AIRCRAFT & SHIP FINANCING"},{"col1":"BUSINESS ADVISORY & COMPANY SECRETARIAL SERVICES"}]}},"28":{"type":"expertise","enabled":"1","fields":{"exTitle":"Litigation & Arbitration","exContent":"<p>The GBC\\u2019s litigation and arbitration practice is handled by the seasoned Dispute Resolution Department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit. Commercial and financial disputes and litigations are often complex; the department appreciates the need to conduct commercial and other litigation matters with business expediency in view, in that regard, we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>At Gbenga Biobaku & Co., we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation. Consequently, we advise on the use of alternative dispute resolution (ADR) mediums including negotiation, conciliation, mediation and arbitration in deserving cases.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We have applied our expertise in litigation and different ADR methods with good results across industries relating to disputes arising from the oil and gas sector, claims for compensation, taxation, disputes arising from corporate governance, breach of contracts, employer\\/employee\\/industrial disputes, breach of fundamental rights claims, debt recovery, winding up of Companies, land disputes, claims for negligence, judicial review of executive actions, etc<\\/p>","exAreasOfInterest":[{"col1":"EMPLOYMENT + LABOUR"},{"col1":"ENVIRONMENT"},{"col1":"PROFESSIONAL LIABILITY"},{"col1":"DISPUTE RESOLUTION"},{"col1":"MEDIATION & ARBITRATION"},{"col1":"TAXATION"},{"col1":"TRADE DISPUTES"},{"col1":"DEBT RECOVERY"},{"col1":"CORPORATE GOVERNANCE"},{"col1":"CONTRACTS"},{"col1":"SECURITIES LITIGATION"}]}},"29":{"type":"expertise","enabled":"1","fields":{"exTitle":"Intellectual Property (IP)","exContent":"<p>GBC provides legal services to its clients on issues stemming from Intellectual Property (\\u201cIP\\u201d). Our IP services include obtaining regulatory approval with the appropriate agencies such as the Ministry of Trade and Investment. We also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the National Office for Technology Acquisition and Promotion (\\u201cNOTAP\\u201d).<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>With the tripled growth in the Nigerian economy in the last 10 years, new ideas and innovations are now being introduced into the nation\\u2019s business clime and these ideas and innovations have now become assets for various body corporates and Small-Medium enterprises. With this growth, ensuring the proper exploitation and protection of intellectual property (IP), whether it be patents, trade marks or designs, is a primary commercial objective.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We provide practical and commercial legal advice at every stage in the life and development of an intellectual property right, from creation and exploitation to protection and enforcement. In addition, we provide registration of IP rights such as Patents, Trademarks and Industrial designs, and obtaining necessary business approvals from NOTAP and the Ministry of Trade and Investments.<\\/p>","exAreasOfInterest":[{"col1":"COPYRIGHT"},{"col1":"IP LITIGATION"},{"col1":"IP DUE DILIGENCE"},{"col1":"PATENTS & TRADEMARKS"},{"col1":"TECHNOLOGY TRANSACTIONS"},{"col1":"ANTITRUST LAW"}]}}},"19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":""}}', '2015-11-20 02:39:56', '2015-11-20 02:39:56', '7986dd28-8244-409a-aa0d-8c0e27f95c6b'),
(118, 25, 9, 1, 'en_us', 11, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":{"26":{"type":"expertise","enabled":"1","fields":{"exTitle":"Energy & Projects","exContent":"<p>Gbenga Biobaku & Co. has developed an extensive Energy Project Development practice, representing parties on both sides of the spectrum. Our expertise encompasses the oil and gas, power, mining and infrastructure sectors of the Nigerian economy.<\\/p>\\r\\n\\r\\n<p>As counsel to some major and developing energy players, GBC project scope has covered securing foreign investment, project financing transactions, advisory, federal regulatory approvals, operations and maintenance contracts, site acquisitions and other related corporate and commercial transactions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>With the recent divestments and local participation law and the influx of foreign investment in the Nigerian Oil and Gas industry, GBC has been recognized for its ability to prescribe working business modules, and joint venture arrangements that ensures return on investment (ROI) for investors and the protection and sustainability of its indigenous clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our team has substantial experience in advising foreign and indigenous investors in Nigeria on energy projects financing. We also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy, mining and oil and gas sectors.<\\/p>","exAreasOfInterest":[{"col1":"OIL & GAS"},{"col1":"OIL SERVICES"},{"col1":"PROJECT FINANCE"},{"col1":"POWER PROJECTS"},{"col1":"PRIVATISATION & INFRASTRUCTURE DEVELOPMENTS"},{"col1":"SOLID MINERALS"},{"col1":"ENVIRONMENTAL LAW & COMMUNITY RELATIONS"}]}},"27":{"type":"expertise","enabled":"1","fields":{"exTitle":"General Corporate Commercial","exContent":"<p>The GBC\\u2019s Corporate and Commercial Practice department represents a broad range of corporate and business interests. The group delivers responsive, innovative and practical legal solutions in diverse areas including: Mergers & Acquisitions, Capital Markets, Banking & Finance, Offshore acquisitions and investments, Trust Arrangements, Estate Planning, Private Equity & Venture Capital, Intellectual Property, Foreign Investments & Joint Ventures, Privatization & Infrastructure Developments, Telecommunications, Information Technology, Immigration, Commercial Property Development & Conveyancing, Taxation, Employment & Labor Relations, Aircraft & Ship Financing, Business Advisory & Company Secretarial Services<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>GBC runs the gamut of corporate and commercial law practice with the aim of providing a seamless service, integrating diverse clients\\u2019 business interests. Our work with our clients involves ensuring compliance with standard business practices and procedures and operation within the national and local laws applicable to their specific industry.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Additionally, we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures.<\\/p>","exAreasOfInterest":[{"col1":"MERGERS & ACQUISITIONS"},{"col1":"CAPITAL MARKETS"},{"col1":"BANKING & FINANCE"},{"col1":"PRIVATIZATION & INFRASTRUCTURE"},{"col1":"BUSINESS ADVISORY "},{"col1":"INTERNATIONAL TRADE"},{"col1":"FOREIGN INVESTMENTS & JOINT VENTURES"},{"col1":"TELECOMMUNICATIONS"},{"col1":"INFORMATION TECHNOLOGY"},{"col1":"IMMIGRATION"},{"col1":"COMMERCIAL PROPERTY DEVELOPMENT & CONVEYANCING"},{"col1":"TAXATION"},{"col1":"EMPLOYMENT & LABOR RELATIONS"},{"col1":"AIRCRAFT & SHIP FINANCING"},{"col1":"BUSINESS ADVISORY & COMPANY SECRETARIAL SERVICES"}]}},"28":{"type":"expertise","enabled":"1","fields":{"exTitle":"Litigation & Arbitration","exContent":"<p>The GBC\\u2019s litigation and arbitration practice is handled by the seasoned Dispute Resolution Department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit. Commercial and financial disputes and litigations are often complex; the department appreciates the need to conduct commercial and other litigation matters with business expediency in view, in that regard, we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>At Gbenga Biobaku & Co., we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation. Consequently, we advise on the use of alternative dispute resolution (ADR) mediums including negotiation, conciliation, mediation and arbitration in deserving cases.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We have applied our expertise in litigation and different ADR methods with good results across industries relating to disputes arising from the oil and gas sector, claims for compensation, taxation, disputes arising from corporate governance, breach of contracts, employer\\/employee\\/industrial disputes, breach of fundamental rights claims, debt recovery, winding up of Companies, land disputes, claims for negligence, judicial review of executive actions, etc<\\/p>","exAreasOfInterest":[{"col1":"EMPLOYMENT + LABOUR"},{"col1":"ENVIRONMENT"},{"col1":"PROFESSIONAL LIABILITY"},{"col1":"DISPUTE RESOLUTION"},{"col1":"MEDIATION & ARBITRATION"},{"col1":"TAXATION"},{"col1":"TRADE DISPUTES"},{"col1":"DEBT RECOVERY"},{"col1":"CORPORATE GOVERNANCE"},{"col1":"CONTRACTS"},{"col1":"SECURITIES LITIGATION"}]}},"29":{"type":"expertise","enabled":"1","fields":{"exTitle":"Intellectual Property (IP)","exContent":"<p>GBC provides legal services to its clients on issues stemming from Intellectual Property (\\u201cIP\\u201d). Our IP services include obtaining regulatory approval with the appropriate agencies such as the Ministry of Trade and Investment. We also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the National Office for Technology Acquisition and Promotion (\\u201cNOTAP\\u201d).<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>With the tripled growth in the Nigerian economy in the last 10 years, new ideas and innovations are now being introduced into the nation\\u2019s business clime and these ideas and innovations have now become assets for various body corporates and Small-Medium enterprises. With this growth, ensuring the proper exploitation and protection of intellectual property (IP), whether it be patents, trade marks or designs, is a primary commercial objective.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We provide practical and commercial legal advice at every stage in the life and development of an intellectual property right, from creation and exploitation to protection and enforcement. In addition, we provide registration of IP rights such as Patents, Trademarks and Industrial designs, and obtaining necessary business approvals from NOTAP and the Ministry of Trade and Investments.<\\/p>","exAreasOfInterest":[{"col1":"COPYRIGHT"},{"col1":"IP LITIGATION"},{"col1":"IP DUE DILIGENCE"},{"col1":"PATENTS & TRADEMARKS"},{"col1":"TECHNOLOGY TRANSACTIONS"},{"col1":"ANTITRUST LAW"}]}}},"19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":""}}', '2015-11-20 02:50:50', '2015-11-20 02:50:50', '54d5e0f5-3be7-4d07-9e75-f1376c0aabcf'),
(119, 25, 9, 1, 'en_us', 12, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":{"26":{"type":"expertise","enabled":"1","fields":{"exTitle":"Energy & Projects","exContent":"<p>Gbenga Biobaku & Co. has developed an extensive Energy Project Development practice, representing parties on both sides of the spectrum. Our expertise encompasses the oil and gas, power, mining and infrastructure sectors of the Nigerian economy.<\\/p>\\r\\n\\r\\n<p>As counsel to some major and developing energy players, GBC project scope has covered securing foreign investment, project financing transactions, advisory, federal regulatory approvals, operations and maintenance contracts, site acquisitions and other related corporate and commercial transactions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>With the recent divestments and local participation law and the influx of foreign investment in the Nigerian Oil and Gas industry, GBC has been recognized for its ability to prescribe working business modules, and joint venture arrangements that ensures return on investment (ROI) for investors and the protection and sustainability of its indigenous clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our team has substantial experience in advising foreign and indigenous investors in Nigeria on energy projects financing. We also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy, mining and oil and gas sectors.<\\/p>","exAreasOfInterest":[{"col1":"OIL & GAS"},{"col1":"OIL SERVICES"},{"col1":"PROJECT FINANCE"},{"col1":"POWER PROJECTS"},{"col1":"PRIVATISATION & INFRASTRUCTURE DEVELOPMENTS"},{"col1":"SOLID MINERALS"},{"col1":"ENVIRONMENTAL LAW & COMMUNITY RELATIONS"}]}},"27":{"type":"expertise","enabled":"1","fields":{"exTitle":"General Corporate Commercial","exContent":"<p>The GBC\\u2019s Corporate and Commercial Practice department represents a broad range of corporate and business interests. The group delivers responsive, innovative and practical legal solutions in diverse areas including: Mergers & Acquisitions, Capital Markets, Banking & Finance, Offshore acquisitions and investments, Trust Arrangements, Estate Planning, Private Equity & Venture Capital, Intellectual Property, Foreign Investments & Joint Ventures, Privatization & Infrastructure Developments, Telecommunications, Information Technology, Immigration, Commercial Property Development & Conveyancing, Taxation, Employment & Labor Relations, Aircraft & Ship Financing, Business Advisory & Company Secretarial Services<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>GBC runs the gamut of corporate and commercial law practice with the aim of providing a seamless service, integrating diverse clients\\u2019 business interests. Our work with our clients involves ensuring compliance with standard business practices,&nbsp;procedures and operations within the national and local laws applicable to their specific industry.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Additionally, we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures.<\\/p>","exAreasOfInterest":[{"col1":"MERGERS & ACQUISITIONS"},{"col1":"CAPITAL MARKETS"},{"col1":"BANKING & FINANCE"},{"col1":"PRIVATIZATION & INFRASTRUCTURE"},{"col1":"BUSINESS ADVISORY "},{"col1":"INTERNATIONAL TRADE"},{"col1":"FOREIGN INVESTMENTS & JOINT VENTURES"},{"col1":"TELECOMMUNICATIONS"},{"col1":"INFORMATION TECHNOLOGY"},{"col1":"IMMIGRATION"},{"col1":"COMMERCIAL PROPERTY DEVELOPMENT & CONVEYANCING"},{"col1":"TAXATION"},{"col1":"EMPLOYMENT & LABOR RELATIONS"},{"col1":"AIRCRAFT & SHIP FINANCING"},{"col1":"BUSINESS ADVISORY & COMPANY SECRETARIAL SERVICES"}]}},"28":{"type":"expertise","enabled":"1","fields":{"exTitle":"Litigation & Arbitration","exContent":"<p>The GBC\\u2019s litigation and arbitration practice is handled by the seasoned Dispute Resolution Department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit. Commercial and financial disputes and litigations are often complex; the department appreciates the need to conduct commercial and other litigation matters with business expediency in view, in that regard, we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>At Gbenga Biobaku & Co., we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation. Consequently, we advise on the use of alternative dispute resolution (ADR) mediums including negotiation, conciliation, mediation and arbitration in deserving cases.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We have applied our expertise in litigation and different ADR methods with good results across industries relating to disputes arising from the oil and gas sector, claims for compensation, taxation, disputes arising from corporate governance, breach of contracts, employer\\/employee\\/industrial disputes, breach of fundamental rights claims, debt recovery, winding up of Companies, land disputes, claims for negligence, judicial review of executive actions, etc<\\/p>","exAreasOfInterest":[{"col1":"EMPLOYMENT + LABOUR"},{"col1":"ENVIRONMENT"},{"col1":"PROFESSIONAL LIABILITY"},{"col1":"DISPUTE RESOLUTION"},{"col1":"MEDIATION & ARBITRATION"},{"col1":"TAXATION"},{"col1":"TRADE DISPUTES"},{"col1":"DEBT RECOVERY"},{"col1":"CORPORATE GOVERNANCE"},{"col1":"CONTRACTS"},{"col1":"SECURITIES LITIGATION"}]}},"29":{"type":"expertise","enabled":"1","fields":{"exTitle":"Intellectual Property (IP)","exContent":"<p>GBC provides legal services to its clients on issues stemming from Intellectual Property (\\u201cIP\\u201d). Our IP services include obtaining regulatory approval with the appropriate agencies such as the Ministry of Trade and Investment. We also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the National Office for Technology Acquisition and Promotion (\\u201cNOTAP\\u201d).<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>With the tripled growth in the Nigerian economy in the last 10 years, new ideas and innovations are now being introduced into the nation\\u2019s business clime and these ideas and innovations have now become assets for various body corporates and Small-Medium enterprises. With this growth, ensuring the proper exploitation and protection of intellectual property (IP), whether it be patents, trade marks or designs, is a primary commercial objective.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We provide practical and commercial legal advice at every stage in the life and development of an intellectual property right, from creation and exploitation to protection and enforcement. In addition, we provide registration of IP rights such as Patents, Trademarks and Industrial designs, and obtaining necessary business approvals from NOTAP and the Ministry of Trade and Investments.<\\/p>","exAreasOfInterest":[{"col1":"COPYRIGHT"},{"col1":"IP LITIGATION"},{"col1":"IP DUE DILIGENCE"},{"col1":"PATENTS & TRADEMARKS"},{"col1":"TECHNOLOGY TRANSACTIONS"},{"col1":"ANTITRUST LAW"}]}}},"19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":""}}', '2015-11-20 02:51:34', '2015-11-20 02:51:34', '513df579-b2ba-4435-a68a-1fd00ac43668'),
(120, 25, 9, 1, 'en_us', 13, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":{"26":{"type":"expertise","enabled":"1","fields":{"exTitle":"Energy & Projects","exContent":"<p>Gbenga Biobaku & Co. has developed an extensive Energy Project Development practice, representing parties on both sides of the spectrum. Our expertise encompasses the oil and gas, power, mining and infrastructure sectors of the Nigerian economy.<\\/p>\\r\\n\\r\\n<p>As counsel to some major and developing energy players, GBC project scope has covered securing foreign investment, project financing transactions, advisory, federal regulatory approvals, operations and maintenance contracts, site acquisitions and other related corporate and commercial transactions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>With the recent divestments and local participation law and the influx of foreign investment in the Nigerian Oil and Gas industry, GBC has been recognized for its ability to prescribe working business modules, and joint venture arrangements that ensures return on investment (ROI) for investors and the protection and sustainability of its indigenous clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our team has substantial experience in advising foreign and indigenous investors in Nigeria on energy projects financing. We also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy, mining and oil and gas sectors.<\\/p>","exAreasOfInterest":[{"col1":"OIL & GAS"},{"col1":"OIL SERVICES"},{"col1":"PROJECT FINANCE"},{"col1":"POWER PROJECTS"},{"col1":"PRIVATISATION & INFRASTRUCTURE DEVELOPMENTS"},{"col1":"SOLID MINERALS"},{"col1":"ENVIRONMENTAL LAW & COMMUNITY RELATIONS"}]}},"27":{"type":"expertise","enabled":"1","fields":{"exTitle":"General Corporate Commercial","exContent":"<p>The GBC\\u2019s Corporate and Commercial Practice department represents a broad range of corporate and business interests. The group delivers responsive, innovative and practical legal solutions in diverse areas including: Mergers & Acquisitions, Capital Markets, Banking & Finance, Offshore acquisitions and investments, Trust Arrangements, Estate Planning, Private Equity & Venture Capital, Intellectual Property, Foreign Investments & Joint Ventures, Privatization & Infrastructure Developments, Telecommunications, Information Technology, Immigration, Commercial Property Development & Conveyancing, Taxation, Employment & Labor Relations, Aircraft & Ship Financing, Business Advisory & Company Secretarial Services<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>GBC runs the gamut of corporate and commercial law practice with the aim of providing a seamless service, integrating diverse clients\\u2019 business interests. Our work with our clients involves ensuring compliance with standard business practices,&nbsp;procedures and operations within the national and local laws applicable to their specific industry.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Additionally, we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures.<\\/p>","exAreasOfInterest":{"0":{"col1":"MERGERS & ACQUISITIONS"},"1":{"col1":"CAPITAL MARKETS"},"2":{"col1":"BANKING & FINANCE"},"15":{"col1":"PRIVATE EQUITY & VENTURE CAPITAL"},"3":{"col1":"PRIVATIZATION & INFRASTRUCTURE DEVELOPMENT"},"4":{"col1":"BUSINESS ADVISORY "},"5":{"col1":"INTERNATIONAL TRADE"},"6":{"col1":"FOREIGN INVESTMENTS & JOINT VENTURES"},"7":{"col1":"TELECOMMUNICATIONS"},"8":{"col1":"INFORMATION TECHNOLOGY"},"9":{"col1":"IMMIGRATION"},"10":{"col1":"COMMERCIAL PROPERTY DEVELOPMENT & CONVEYANCING"},"11":{"col1":"TAXATION"},"12":{"col1":"EMPLOYMENT & LABOR RELATIONS"},"13":{"col1":"AIRCRAFT & SHIP FINANCING"},"14":{"col1":"COMPANY SECRETARIAL SERVICES"}}}},"28":{"type":"expertise","enabled":"1","fields":{"exTitle":"Litigation & Arbitration","exContent":"<p>The GBC\\u2019s litigation and arbitration practice is handled by the seasoned Dispute Resolution Department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit. Commercial and financial disputes and litigations are often complex; the department appreciates the need to conduct commercial and other litigation matters with business expediency in view, in that regard, we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>At Gbenga Biobaku & Co., we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation. Consequently, we advise on the use of alternative dispute resolution (ADR) mediums including negotiation, conciliation, mediation and arbitration in deserving cases.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We have applied our expertise in litigation and different ADR methods with good results across industries relating to disputes arising from the oil and gas sector, claims for compensation, taxation, disputes arising from corporate governance, breach of contracts, employer\\/employee\\/industrial disputes, breach of fundamental rights claims, debt recovery, winding up of Companies, land disputes, claims for negligence, judicial review of executive actions, etc<\\/p>","exAreasOfInterest":[{"col1":"EMPLOYMENT + LABOUR"},{"col1":"ENVIRONMENT"},{"col1":"PROFESSIONAL LIABILITY"},{"col1":"DISPUTE RESOLUTION"},{"col1":"MEDIATION & ARBITRATION"},{"col1":"TAXATION"},{"col1":"TRADE DISPUTES"},{"col1":"DEBT RECOVERY"},{"col1":"CORPORATE GOVERNANCE"},{"col1":"CONTRACTS"},{"col1":"SECURITIES LITIGATION"}]}},"29":{"type":"expertise","enabled":"1","fields":{"exTitle":"Intellectual Property (IP)","exContent":"<p>GBC provides legal services to its clients on issues stemming from Intellectual Property (\\u201cIP\\u201d). Our IP services include obtaining regulatory approval with the appropriate agencies such as the Ministry of Trade and Investment. We also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the National Office for Technology Acquisition and Promotion (\\u201cNOTAP\\u201d).<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>With the tripled growth in the Nigerian economy in the last 10 years, new ideas and innovations are now being introduced into the nation\\u2019s business clime and these ideas and innovations have now become assets for various body corporates and Small-Medium enterprises. With this growth, ensuring the proper exploitation and protection of intellectual property (IP), whether it be patents, trade marks or designs, is a primary commercial objective.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We provide practical and commercial legal advice at every stage in the life and development of an intellectual property right, from creation and exploitation to protection and enforcement. In addition, we provide registration of IP rights such as Patents, Trademarks and Industrial designs, and obtaining necessary business approvals from NOTAP and the Ministry of Trade and Investments.<\\/p>","exAreasOfInterest":[{"col1":"COPYRIGHT"},{"col1":"IP LITIGATION"},{"col1":"IP DUE DILIGENCE"},{"col1":"PATENTS & TRADEMARKS"},{"col1":"TECHNOLOGY TRANSACTIONS"},{"col1":"ANTITRUST LAW"}]}}},"19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":""}}', '2015-11-20 03:35:29', '2015-11-20 03:35:29', '140a879c-b786-4b2d-afbe-9bb889c9df19');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(121, 25, 9, 1, 'en_us', 14, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":{"26":{"type":"expertise","enabled":"1","fields":{"exTitle":"Energy & Projects","exContent":"<p>Gbenga Biobaku & Co. has developed an extensive Energy Project Development practice, representing parties on both sides of the spectrum. Our expertise encompasses the oil and gas, power, mining and infrastructure sectors of the Nigerian economy.<\\/p>\\r\\n\\r\\n<p>As counsel to some major and developing energy players, GBC project scope has covered securing foreign investment, project financing transactions, advisory, federal regulatory approvals, operations and maintenance contracts, site acquisitions and other related corporate and commercial transactions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>With the recent divestments and local participation law and the influx of foreign investment in the Nigerian Oil and Gas industry, GBC has been recognized for its ability to prescribe working business modules, and joint venture arrangements that ensures return on investment (ROI) for investors and the protection and sustainability of its indigenous clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our team has substantial experience in advising foreign and indigenous investors in Nigeria on energy projects financing. We also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy, mining and oil and gas sectors.<\\/p>","exAreasOfInterest":[{"col1":"OIL & GAS"},{"col1":"OIL SERVICES"},{"col1":"PROJECT FINANCE"},{"col1":"POWER PROJECTS"},{"col1":"PRIVATISATION & INFRASTRUCTURE DEVELOPMENTS"},{"col1":"SOLID MINERALS"},{"col1":"ENVIRONMENTAL LAW & COMMUNITY RELATIONS"}]}},"27":{"type":"expertise","enabled":"1","fields":{"exTitle":"General Corporate Commercial","exContent":"<p>The GBC\\u2019s Corporate and Commercial Practice department represents a broad range of corporate and business interests. The group delivers responsive, innovative and practical legal solutions in diverse areas including: Mergers & Acquisitions, Capital Markets, Banking & Finance, Offshore acquisitions and investments, Trust Arrangements, Estate Planning, Private Equity & Venture Capital, Intellectual Property, Foreign Investments & Joint Ventures, Privatization & Infrastructure Developments, Telecommunications, Information Technology, Immigration, Commercial Property Development & Conveyancing, Taxation, Employment & Labor Relations, Aircraft & Ship Financing, Business Advisory & Company Secretarial Services<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>GBC runs the gamut of corporate and commercial law practice with the aim of providing a seamless service, integrating diverse clients\\u2019 business interests. Our work with our clients involves ensuring compliance with standard business practices,&nbsp;procedures and operations within the national and local laws applicable to their specific industry.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Additionally, we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures.<\\/p>","exAreasOfInterest":[{"col1":"MERGERS & ACQUISITIONS"},{"col1":"CAPITAL MARKETS"},{"col1":"BANKING & FINANCE"},{"col1":"PRIVATE EQUITY & VENTURE CAPITAL"},{"col1":"PRIVATIZATION & INFRASTRUCTURE DEVELOPMENT"},{"col1":"BUSINESS ADVISORY "},{"col1":"INTERNATIONAL TRADE"},{"col1":"FOREIGN INVESTMENTS & JOINT VENTURES"},{"col1":"TELECOMMUNICATIONS"},{"col1":"INFORMATION TECHNOLOGY"},{"col1":"IMMIGRATION"},{"col1":"COMMERCIAL PROPERTY DEVELOPMENT & CONVEYANCING"},{"col1":"TAXATION"},{"col1":"EMPLOYMENT & LABOR RELATIONS"},{"col1":"AIRCRAFT & SHIP FINANCING"},{"col1":"COMPANY SECRETARIAL SERVICES"}]}},"28":{"type":"expertise","enabled":"1","fields":{"exTitle":"Litigation & Arbitration","exContent":"<p>The GBC\\u2019s litigation and arbitration practice is handled by the seasoned Dispute Resolution Department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit. Commercial and financial disputes and litigations are often complex; the department appreciates the need to conduct commercial and other litigation matters with business expediency in view, in that regard, we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>At Gbenga Biobaku & Co., we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation. Consequently, we advise on the use of alternative dispute resolution (ADR) mediums including negotiation, conciliation, mediation and arbitration in deserving cases.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We have applied our expertise in litigation and different ADR methods with good results across industries relating to disputes arising from the oil and gas sector, claims for compensation, taxation, disputes arising from corporate governance, breach of contracts, employer\\/employee\\/industrial disputes, breach of fundamental rights claims, debt recovery, winding up of Companies, land disputes, claims for negligence, judicial review of executive actions, etc<\\/p>","exAreasOfInterest":{"0":{"col1":"OIL & GAS LITIGATION"},"1":{"col1":"ARBITRATION"},"2":{"col1":"SHIPPING & INTERNATIONAL TRADE"},"3":{"col1":"GENERAL COMMERCIAL LITIGATION"},"11":{"col1":"ALTERNATIVE DISPUTE RESOLUTION"},"12":{"col1":"EMPLOYMENT"},"13":{"col1":"ENVIRONMENTAL LITIGATION"},"14":{"col1":"FINANCIAL SERVICES LITIGATION"},"15":{"col1":"SECURITIES LITIGATION AND ENFORCEMENT"}}}},"29":{"type":"expertise","enabled":"1","fields":{"exTitle":"Intellectual Property (IP)","exContent":"<p>GBC provides legal services to its clients on issues stemming from Intellectual Property (\\u201cIP\\u201d). Our IP services include obtaining regulatory approval with the appropriate agencies such as the Ministry of Trade and Investment. We also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the National Office for Technology Acquisition and Promotion (\\u201cNOTAP\\u201d).<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>With the tripled growth in the Nigerian economy in the last 10 years, new ideas and innovations are now being introduced into the nation\\u2019s business clime and these ideas and innovations have now become assets for various body corporates and Small-Medium enterprises. With this growth, ensuring the proper exploitation and protection of intellectual property (IP), whether it be patents, trade marks or designs, is a primary commercial objective.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We provide practical and commercial legal advice at every stage in the life and development of an intellectual property right, from creation and exploitation to protection and enforcement. In addition, we provide registration of IP rights such as Patents, Trademarks and Industrial designs, and obtaining necessary business approvals from NOTAP and the Ministry of Trade and Investments.<\\/p>","exAreasOfInterest":[{"col1":"COPYRIGHT"},{"col1":"IP LITIGATION"},{"col1":"IP DUE DILIGENCE"},{"col1":"PATENTS & TRADEMARKS"},{"col1":"TECHNOLOGY TRANSACTIONS"},{"col1":"ANTITRUST LAW"}]}}},"19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":""}}', '2015-11-20 04:08:35', '2015-11-20 04:08:35', '6e082caf-3b71-4413-994a-7b988837bf86'),
(122, 25, 9, 1, 'en_us', 15, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":{"26":{"type":"expertise","enabled":"1","fields":{"exTitle":"Energy & Projects","exContent":"<p>Gbenga Biobaku & Co. has developed an extensive Energy Project Development practice, representing parties on both sides of the spectrum. Our expertise encompasses the oil and gas, power, mining and infrastructure sectors of the Nigerian economy.<\\/p>\\r\\n\\r\\n<p>As counsel to some major and developing energy players, GBC project scope has covered securing foreign investment, project financing transactions, advisory, federal regulatory approvals, operations and maintenance contracts, site acquisitions and other related corporate and commercial transactions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>With the recent divestments and local participation law and the influx of foreign investment in the Nigerian Oil and Gas industry, GBC has been recognized for its ability to prescribe working business modules, and joint venture arrangements that ensures return on investment (ROI) for investors and the protection and sustainability of its indigenous clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our team has substantial experience in advising foreign and indigenous investors in Nigeria on energy projects financing. We also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy, mining and oil and gas sectors.<\\/p>","exAreasOfInterest":[{"col1":"OIL & GAS"},{"col1":"OIL SERVICES"},{"col1":"PROJECT FINANCE"},{"col1":"POWER PROJECTS"},{"col1":"PRIVATISATION & INFRASTRUCTURE DEVELOPMENTS"},{"col1":"SOLID MINERALS"},{"col1":"ENVIRONMENTAL LAW & COMMUNITY RELATIONS"}]}},"27":{"type":"expertise","enabled":"1","fields":{"exTitle":"General Corporate Commercial","exContent":"<p>The GBC\\u2019s Corporate and Commercial Practice department represents a broad range of corporate and business interests. The group delivers responsive, innovative and practical legal solutions in diverse areas including: Mergers & Acquisitions, Capital Markets, Banking & Finance, Offshore acquisitions and investments, Trust Arrangements, Estate Planning, Private Equity & Venture Capital, Intellectual Property, Foreign Investments & Joint Ventures, Privatization & Infrastructure Developments, Telecommunications, Information Technology, Immigration, Commercial Property Development & Conveyancing, Taxation, Employment & Labor Relations, Aircraft & Ship Financing, Business Advisory & Company Secretarial Services<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>GBC runs the gamut of corporate and commercial law practice with the aim of providing a seamless service, integrating diverse clients\\u2019 business interests. Our work with our clients involves ensuring compliance with standard business practices,&nbsp;procedures and operations within the national and local laws applicable to their specific industry.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Additionally, we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures.<\\/p>","exAreasOfInterest":[{"col1":"MERGERS & ACQUISITIONS"},{"col1":"CAPITAL MARKETS"},{"col1":"BANKING & FINANCE"},{"col1":"PRIVATE EQUITY & VENTURE CAPITAL"},{"col1":"PRIVATIZATION & INFRASTRUCTURE DEVELOPMENT"},{"col1":"BUSINESS ADVISORY "},{"col1":"INTERNATIONAL TRADE"},{"col1":"FOREIGN INVESTMENTS & JOINT VENTURES"},{"col1":"TELECOMMUNICATIONS"},{"col1":"INFORMATION TECHNOLOGY"},{"col1":"IMMIGRATION"},{"col1":"COMMERCIAL PROPERTY DEVELOPMENT & CONVEYANCING"},{"col1":"TAXATION"},{"col1":"EMPLOYMENT & LABOR RELATIONS"},{"col1":"AIRCRAFT & SHIP FINANCING"},{"col1":"COMPANY SECRETARIAL SERVICES"}]}},"28":{"type":"expertise","enabled":"1","fields":{"exTitle":"Litigation & Arbitration","exContent":"<p>The GBC\\u2019s litigation and arbitration practice is handled by the seasoned Dispute Resolution Department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit. Commercial and financial disputes and litigations are often complex; the department appreciates the need to conduct commercial and other litigation matters with business expediency in view, in that regard, we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>At Gbenga Biobaku & Co., we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation. Consequently, we advise on the use of alternative dispute resolution (ADR) mediums including negotiation, conciliation, mediation and arbitration in deserving cases.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We have applied our expertise in litigation and different ADR methods with good results across industries relating to disputes arising from the oil and gas sector, claims for compensation, taxation, disputes arising from corporate governance, breach of contracts, employer\\/employee\\/industrial disputes, breach of fundamental rights claims, debt recovery, winding up of Companies, land disputes, claims for negligence, judicial review of executive actions, etc<\\/p>","exAreasOfInterest":[{"col1":"OIL & GAS LITIGATION"},{"col1":"ARBITRATION"},{"col1":"SHIPPING & INTERNATIONAL TRADE"},{"col1":"GENERAL COMMERCIAL LITIGATION"},{"col1":"ALTERNATIVE DISPUTE RESOLUTION"},{"col1":"EMPLOYMENT"},{"col1":"ENVIRONMENTAL LITIGATION"},{"col1":"FINANCIAL SERVICES LITIGATION"},{"col1":"SECURITIES LITIGATION AND ENFORCEMENT"}]}},"29":{"type":"expertise","enabled":"1","fields":{"exTitle":"Intellectual Property (IP)","exContent":"<p>GBC provides legal services to its clients on issues stemming from Intellectual Property (\\u201cIP\\u201d). Our IP services include obtaining regulatory approval with the appropriate agencies such as the Ministry of Trade and Investment. We also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the National Office for Technology Acquisition and Promotion (\\u201cNOTAP\\u201d).<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>With the tripled growth in the Nigerian economy in the last 10 years, new ideas and innovations are now being introduced into the nation\\u2019s business climate and these ideas and innovations have now become assets for various body corporates and Small-Medium enterprises. With this growth, ensuring the proper exploitation and protection of intellectual property (IP), whether it be patents, trade marks or designs, is a primary commercial objective.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We provide practical and commercial legal advice at every stage in the life and development of an intellectual property right, from creation and exploitation to protection and enforcement. In addition, we provide registration of IP rights such as Patents, Trademarks and Industrial designs, and obtaining necessary business approvals from NOTAP and the Ministry of Trade and Investments.<\\/p>","exAreasOfInterest":[{"col1":"COPYRIGHT"},{"col1":"IP LITIGATION"},{"col1":"IP DUE DILIGENCE"},{"col1":"PATENTS & TRADEMARKS"},{"col1":"TECHNOLOGY TRANSACTIONS"},{"col1":"ANTITRUST LAW"}]}}},"19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":""}}', '2015-11-20 04:09:56', '2015-11-20 04:09:56', 'e7440675-9974-4ad4-b8b7-fedf659ac3f0'),
(123, 25, 9, 1, 'en_us', 16, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":{"26":{"type":"expertise","enabled":"1","fields":{"exTitle":"Energy & Projects","exContent":"<p>Gbenga Biobaku & Co. has developed an extensive Energy Project Development practice, representing parties on both sides of the spectrum. Our expertise encompasses the oil and gas, power, mining and infrastructure sectors of the Nigerian economy.<\\/p>\\r\\n\\r\\n<p>As counsel to some major and developing energy players, GBC project scope has covered securing foreign investment, project financing transactions, advisory, federal regulatory approvals, operations and maintenance contracts, site acquisitions and other related corporate and commercial transactions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>With the recent divestments and local participation law and the influx of foreign investment in the Nigerian Oil and Gas industry, GBC has been recognized for its ability to prescribe working business modules, and joint venture arrangements that ensures return on investment (ROI) for investors and the protection and sustainability of its indigenous clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our team has substantial experience in advising foreign and indigenous investors in Nigeria on energy projects financing. We also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy, mining and oil and gas sectors.<\\/p>","exAreasOfInterest":[{"col1":"OIL & GAS"},{"col1":"OIL SERVICES"},{"col1":"PROJECT FINANCE"},{"col1":"POWER PROJECTS"},{"col1":"PRIVATISATION & INFRASTRUCTURE DEVELOPMENTS"},{"col1":"SOLID MINERALS"},{"col1":"ENVIRONMENTAL LAW & COMMUNITY RELATIONS"}]}},"27":{"type":"expertise","enabled":"1","fields":{"exTitle":"General Corporate Commercial","exContent":"<p>The GBC\\u2019s Corporate and Commercial Practice department represents a broad range of corporate and business interests. The group delivers responsive, innovative and practical legal solutions in diverse areas including: Mergers & Acquisitions, Capital Markets, Banking & Finance, Offshore acquisitions and investments, Trust Arrangements, Estate Planning, Private Equity & Venture Capital, Intellectual Property, Foreign Investments & Joint Ventures, Privatization & Infrastructure Developments, Telecommunications, Information Technology, Immigration, Commercial Property Development & Conveyancing, Taxation, Employment & Labor Relations, Aircraft & Ship Financing, Business Advisory & Company Secretarial Services<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>GBC runs the gamut of corporate and commercial law practice with the aim of providing a seamless service, integrating diverse clients\\u2019 business interests. Our work with our clients involves ensuring compliance with standard business practices,&nbsp;procedures and operations within the national and local laws applicable to their specific industry.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Additionally, we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures.<\\/p>","exAreasOfInterest":[{"col1":"MERGERS & ACQUISITIONS"},{"col1":"CAPITAL MARKETS"},{"col1":"BANKING & FINANCE"},{"col1":"PRIVATE EQUITY & VENTURE CAPITAL"},{"col1":"PRIVATIZATION & INFRASTRUCTURE DEVELOPMENT"},{"col1":"BUSINESS ADVISORY "},{"col1":"INTERNATIONAL TRADE"},{"col1":"FOREIGN INVESTMENTS & JOINT VENTURES"},{"col1":"TELECOMMUNICATIONS"},{"col1":"INFORMATION TECHNOLOGY"},{"col1":"IMMIGRATION"},{"col1":"COMMERCIAL PROPERTY DEVELOPMENT & CONVEYANCING"},{"col1":"TAXATION"},{"col1":"EMPLOYMENT & LABOR RELATIONS"},{"col1":"AIRCRAFT & SHIP FINANCING"},{"col1":"COMPANY SECRETARIAL SERVICES"}]}},"28":{"type":"expertise","enabled":"1","fields":{"exTitle":"Litigation & Arbitration","exContent":"<p>The GBC\\u2019s litigation and arbitration practice is handled by the seasoned Dispute Resolution Department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit. Commercial and financial disputes and litigations are often complex; the department appreciates the need to conduct commercial and other litigation matters with business expediency in view, in that regard, we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>At Gbenga Biobaku & Co., we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation. Consequently, we advise on the use of alternative dispute resolution (ADR) mediums including negotiation, conciliation, mediation and arbitration in deserving cases.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We have applied our expertise in litigation and different ADR methods with good results across industries relating to disputes arising from the oil and gas sector, claims for compensation, taxation, disputes arising from corporate governance, breach of contracts, employer\\/employee\\/industrial disputes, breach of fundamental rights claims, debt recovery, winding up of Companies, land disputes, claims for negligence, judicial review of executive actions, etc<\\/p>","exAreasOfInterest":[{"col1":"OIL & GAS LITIGATION"},{"col1":"ARBITRATION"},{"col1":"SHIPPING & INTERNATIONAL TRADE"},{"col1":"GENERAL COMMERCIAL LITIGATION"},{"col1":"ALTERNATIVE DISPUTE RESOLUTION"},{"col1":"EMPLOYMENT"},{"col1":"ENVIRONMENTAL LITIGATION"},{"col1":"FINANCIAL SERVICES LITIGATION"},{"col1":"SECURITIES LITIGATION AND ENFORCEMENT"}]}},"29":{"type":"expertise","enabled":"1","fields":{"exTitle":"Intellectual Property (IP)","exContent":"<p>GBC provides legal services to its clients on issues stemming from Intellectual Property (\\u201cIP\\u201d). Our IP services include obtaining regulatory approval with the appropriate agencies such as the Ministry of Trade and Investment. We also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the National Office for Technology Acquisition and Promotion (\\u201cNOTAP\\u201d).<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>With the tripled growth in the Nigerian economy in the last 10 years, new ideas and innovations are now being introduced into the nation\\u2019s business climate and these ideas and innovations have now become assets for various body corporates and Small-Medium enterprises. With this growth, ensuring the proper exploitation and protection of intellectual property (IP), whether it be patents, trade marks or designs, is a primary commercial objective.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We provide practical and commercial legal advice at every stage in the life and development of an intellectual property right, from creation and exploitation to protection and enforcement. In addition, we provide registration of IP rights such as Patents, Trademarks and Industrial designs, and obtaining necessary business approvals from NOTAP and the Ministry of Trade and Investments.<\\/p>","exAreasOfInterest":[{"col1":"COPYRIGHT"},{"col1":"IP LITIGATION"},{"col1":"IP DUE DILIGENCE"},{"col1":"PATENTS & TRADEMARKS"},{"col1":"TECHNOLOGY TRANSACTIONS"},{"col1":"ANTITRUST LAW"}]}}},"19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank"},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the US$810million Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":""}}', '2015-11-20 04:09:57', '2015-11-20 04:09:57', '0755da0e-8a97-4466-b11a-1812c3a7d19f'),
(124, 25, 9, 1, 'en_us', 17, '', '{"typeId":null,"authorId":null,"title":"Expertise","slug":"expertise","postDate":1447766113,"expiryDate":null,"enabled":1,"fields":{"26":{"26":{"type":"expertise","enabled":"1","fields":{"exTitle":"Energy & Projects","exContent":"<p>Gbenga Biobaku & Co. has developed an extensive Energy Project Development practice, representing parties on both sides of the spectrum. Our expertise encompasses the oil and gas, power, mining and infrastructure sectors of the Nigerian economy.<\\/p>\\r\\n\\r\\n<p>As counsel to some major and developing energy players, GBC project scope has covered securing foreign investment, project financing transactions, advisory, federal regulatory approvals, operations and maintenance contracts, site acquisitions and other related corporate and commercial transactions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>With the recent divestments and local participation law and the influx of foreign investment in the Nigerian Oil and Gas industry, GBC has been recognized for its ability to prescribe working business modules, and joint venture arrangements that ensures return on investment (ROI) for investors and the protection and sustainability of its indigenous clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our team has substantial experience in advising foreign and indigenous investors in Nigeria on energy projects financing. We also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy, mining and oil and gas sectors.<\\/p>","exAreasOfInterest":[{"col1":"OIL & GAS"},{"col1":"OIL SERVICES"},{"col1":"PROJECT FINANCE"},{"col1":"POWER PROJECTS"},{"col1":"PRIVATISATION & INFRASTRUCTURE DEVELOPMENTS"},{"col1":"SOLID MINERALS"},{"col1":"ENVIRONMENTAL LAW & COMMUNITY RELATIONS"}]}},"27":{"type":"expertise","enabled":"1","fields":{"exTitle":"General Corporate Commercial","exContent":"<p>The GBC\\u2019s Corporate and Commercial Practice department represents a broad range of corporate and business interests. The group delivers responsive, innovative and practical legal solutions in diverse areas including: Mergers & Acquisitions, Capital Markets, Banking & Finance, Offshore acquisitions and investments, Trust Arrangements, Estate Planning, Private Equity & Venture Capital, Intellectual Property, Foreign Investments & Joint Ventures, Privatization & Infrastructure Developments, Telecommunications, Information Technology, Immigration, Commercial Property Development & Conveyancing, Taxation, Employment & Labor Relations, Aircraft & Ship Financing, Business Advisory & Company Secretarial Services<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>GBC runs the gamut of corporate and commercial law practice with the aim of providing a seamless service, integrating diverse clients\\u2019 business interests. Our work with our clients involves ensuring compliance with standard business practices,&nbsp;procedures and operations within the national and local laws applicable to their specific industry.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Additionally, we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures.<\\/p>","exAreasOfInterest":[{"col1":"MERGERS & ACQUISITIONS"},{"col1":"CAPITAL MARKETS"},{"col1":"BANKING & FINANCE"},{"col1":"PRIVATE EQUITY & VENTURE CAPITAL"},{"col1":"PRIVATIZATION & INFRASTRUCTURE DEVELOPMENT"},{"col1":"BUSINESS ADVISORY "},{"col1":"INTERNATIONAL TRADE"},{"col1":"FOREIGN INVESTMENTS & JOINT VENTURES"},{"col1":"TELECOMMUNICATIONS"},{"col1":"INFORMATION TECHNOLOGY"},{"col1":"IMMIGRATION"},{"col1":"COMMERCIAL PROPERTY DEVELOPMENT & CONVEYANCING"},{"col1":"TAXATION"},{"col1":"EMPLOYMENT & LABOR RELATIONS"},{"col1":"AIRCRAFT & SHIP FINANCING"},{"col1":"COMPANY SECRETARIAL SERVICES"}]}},"28":{"type":"expertise","enabled":"1","fields":{"exTitle":"Litigation & Arbitration","exContent":"<p>The GBC\\u2019s litigation and arbitration practice is handled by the seasoned Dispute Resolution Department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit. Commercial and financial disputes and litigations are often complex; the department appreciates the need to conduct commercial and other litigation matters with business expediency in view, in that regard, we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>At Gbenga Biobaku & Co., we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation. Consequently, we advise on the use of alternative dispute resolution (ADR) mediums including negotiation, conciliation, mediation and arbitration in deserving cases.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We have applied our expertise in litigation and different ADR methods with good results across industries relating to disputes arising from the oil and gas sector, claims for compensation, taxation, disputes arising from corporate governance, breach of contracts, employer\\/employee\\/industrial disputes, breach of fundamental rights claims, debt recovery, winding up of Companies, land disputes, claims for negligence, judicial review of executive actions, etc<\\/p>","exAreasOfInterest":[{"col1":"OIL & GAS LITIGATION"},{"col1":"ARBITRATION"},{"col1":"SHIPPING & INTERNATIONAL TRADE"},{"col1":"GENERAL COMMERCIAL LITIGATION"},{"col1":"ALTERNATIVE DISPUTE RESOLUTION"},{"col1":"EMPLOYMENT"},{"col1":"ENVIRONMENTAL LITIGATION"},{"col1":"FINANCIAL SERVICES LITIGATION"},{"col1":"SECURITIES LITIGATION AND ENFORCEMENT"}]}},"29":{"type":"expertise","enabled":"1","fields":{"exTitle":"Intellectual Property (IP)","exContent":"<p>GBC provides legal services to its clients on issues stemming from Intellectual Property (\\u201cIP\\u201d). Our IP services include obtaining regulatory approval with the appropriate agencies such as the Ministry of Trade and Investment. We also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the National Office for Technology Acquisition and Promotion (\\u201cNOTAP\\u201d).<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>With the tripled growth in the Nigerian economy in the last 10 years, new ideas and innovations are now being introduced into the nation\\u2019s business climate and these ideas and innovations have now become assets for various body corporates and Small-Medium enterprises. With this growth, ensuring the proper exploitation and protection of intellectual property (IP), whether it be patents, trade marks or designs, is a primary commercial objective.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>We provide practical and commercial legal advice at every stage in the life and development of an intellectual property right, from creation and exploitation to protection and enforcement. In addition, we provide registration of IP rights such as Patents, Trademarks and Industrial designs, and obtaining necessary business approvals from NOTAP and the Ministry of Trade and Investments.<\\/p>","exAreasOfInterest":[{"col1":"COPYRIGHT"},{"col1":"IP LITIGATION"},{"col1":"IP DUE DILIGENCE"},{"col1":"PATENTS & TRADEMARKS"},{"col1":"TECHNOLOGY TRANSACTIONS"},{"col1":"ANTITRUST LAW"}]}}},"19":"<p>Gbenga Biobaku & Co. is a leading provider of business driven legal services. With a team with vast and varied experience in the legal and business space, our services continue to improve the way legal, compliance and business is being done in Nigerian.<\\/p>","29":[{"col1":"Advising on the $785 Million Oso Field Development Project jointly owned by Mobil Producing Nigeria Unlimited and the Nigerian National Petroleum Corporation (NNPC), and partly financed by equity from the sponsors, and debt capital from international institutions, such as, the World Bank, International Finance Corporation (IFC), US Export Import Bank, Japan Export Import Bank and the European Investment Bank. "},{"col1":""},{"col1":"Advising and negotiating the project financing, documentation and designing of the investment vehicle of the Oso-NGL Project, a gas utilisation project, which was sequel to the Oso-Field Development Project, originally estimated at US$810 Million and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the United States and Europe. "},{"col1":"In collaboration with lawyers in a UK law firm, acting for and advising a group of International Banks on aspects of the financing of the Eleme Petrochemical Plant."},{"col1":"Representing UTC Nigeria Plc, a publicly quoted company in a $14 million debt restructuring."},{"col1":"Advising UTC Nigeria Plc on a rights issue."},{"col1":"Advising on the Merger between the Nigerian subsidiaries of SmithKline Beecham and Sterling Products."},{"col1":"Advising on the acquisition of a merchant-banking subsidiary by Union Bank of Nigeria PLC."},{"col1":"In collaboration with Nextzon, conducted legal due diligence for Oceanic Bank Plc in relation to the acquisition of a bank in Ghana. "},{"col1":"Advising several multinational Companies including Statoil, Parker Drilling, Vmonitor Inc on the establishment of subsidiary companies in Nigeria and the processing and procurement of relevant pre-investment and operational permits and approvals."},{"col1":"Advising Skye Bank Plc in connection with the negotiation of a trade finance facility from African Export \\u2013 Import Bank (\\u201cAfrexim\\u201d) "},{"col1":"Advising Skye Bank Plc \\u201con a USD75million syndicated petroleum products receivables pre-financing facility.\\u201d "},{"col1":"Advising and assisting a private developer on the Concession Agreement with the Lagos State Government relating to the redevelopment of the Balogun Square Market in the Central Business District of Lagos"},{"col1":"Advising and assisting a private investor in connection with a joint venture arrangement with the Government of Ondo State of Nigeria, involving the privatization of the Ondo State Afforestation Project which was initially funded by the African Development Bank."},{"col1":"Advising and assisting a private investor in connection with the acquisition of Iwopin Pulp and Paper Company from the Bureau of Public Enterprises (\\u201cBPE\\u201d) \\/ Federal Government of Nigeria."},{"col1":"Advising and documenting various syndicated facilities relating to Peugeot Automobile Nigeria, Intel Oil Services, G.Cappa, International Distillers, Victoria Garden Hotels and several other leading companies."},{"col1":"Advising Inlaks Plc, a Conglomerate at that time, on the separation and corporatisation of some of its division."},{"col1":"Advising a leading Aluminum Company in Nigeria on a Scheme of Arrangement involving the Parent Company and a subsidiary."},{"col1":"Advising May and Baker Nigeria Plc on several rights issues and offers for subscription."},{"col1":"Advising and assisting Royal Exchange Assurance Company Limited on several capital market transactions for various domestic and multinational clients."},{"col1":"Advising May and Baker Nigeria Plc on several rights issues and offers for subscription."},{"col1":"Advising on several acquisitions and mergers, involving oil service companies, including the acquisition by Baker Hughes of a minority interest in a Nigerian Oil Service Company."},{"col1":"Advising a potential investor in the acquisition of equity shareholding in Nike Lake Resort under the proposed privatisation by the Enugu State Government."},{"col1":"Advising on the structuring and financing of a major Hotel Project in Lagos, involving the international hotel chain, Accor."},{"col1":"Advising the International Finance Corporation on various aspects of financing of the re-organisation of the Federal Palace Hotels, Lagos, Nigeria."},{"col1":"Advising the International Finance Corporation on various aspects of financing of the re-organisation of the Federal Palace Hotels, Lagos, Nigeria."},{"col1":"Advising on the structuring and financing of a large cotton-processing mill, in which the International Finance Corporation (IFC) provided debt finance."},{"col1":"Advising on various investment schemes for both individuals and companies involving the creation and operation of trust arrangements."},{"col1":"Advising the Federal Government of Nigeria and the Bureau of Public Enterprises (BPE) on the privatisation of the Abuja Sheraton Hotel."},{"col1":"Advising the Federal Government of Nigeria and the Bureau of Public Enterprises (BPE) on the Privatisation of the Abuja International Hotel. "},{"col1":"Advising a South Africa Telecommunications group in its bid for a strategic stake in a Nigerian Mobile Cellular Network Company."},{"col1":"Representing General Telecom in the negotiation of a BOT arrangement for the development of an HNS Wireless Exchange Operation in Nigeria."},{"col1":"Advising Statoil, on the Production Sharing Contracts with the Nigerian National Petroleum Corporation (NNPC)."},{"col1":"Advising an international oil company in its bid for an oil block in the Nigeria\\/Sao Tome and Principe JDZ 2003 Licensing Round and conducting a detailed analysis of the Treaty and the petroleum, fiscal and contractual regime."},{"col1":"Representing Tenneco Oil in the disposal of its Nigerian oil and gas assets to British Gas."},{"col1":"Advising Sonatrach, the Algerian state oil company in connection with its bid for an oil block in the 2005 Licensing Round and providing advice on the bidding regulations as well as detailed analysis of the petroleum, fiscal and contractual regime."},{"col1":"Advising and assisting Consolidated Petroleum PTY, a South African Company on the farm-in arrangements into a marginal field including the drafting and review of the transaction documents including the Purchase Agreement, Farm-in Agreement, Joint Operating Agreement and the Deed of Assignment."},{"col1":"Advising Hudson Petroleum in its bid for an oil block in the 2005 Licensing Round and assisting with the drafting and negotiation of the preliminary agreements including MOUs and Heads of Agreement."},{"col1":"Advising Baker Hughes on all legal aspects of the construction and development of a major facility in Port Harcourt, from negotiation of the long lease for the property to negotiating and rendering advise on the construction contract, advising on town planning regulatory issues as well as environmental issues, and undertaking the registration and perfection of the long lease."},{"col1":"Advising TABA Nigeria Limited in respect of an Engineering Procurement and Construction (\\u201cEPC\\u201d) contract with NNPC relating to a power plant and advising and assisting with the structuring and documentation of the various subcontracting and the financing arrangements."},{"col1":"Advising and assisting Parker Drilling in the negotiation and documentation of various support services agreements relating to drilling operations in Nigeria."},{"col1":"Advising and assisting Parker Drilling in the processing of various regulatory approvals and permits relating to drilling operations in Nigeria."},{"col1":"Advising DWC Drilling on a number of drilling contracts with operators in the Nigerian oil and gas Industry and assisting with the negotiation."},{"col1":"Advising and assisting oil and gas operators and contractors on various procurement contracts such as drilling contracts, drilling services contracts, engineering procurement and construction (EPC) contracts, vessel charter parties, helicopter service contracts and several other procurement contracts."},{"col1":"Advising Statoil on all legal aspects of the development of a number of residential and office complexes in prime areas of Lagos, Nigeria."},{"col1":"Advising both landowners and Developers on several commercial and residential property developments."},{"col1":"Advising on a number of banking and financial transactions including structuring and drafting of equipment leases and sale & lease back contracts and advising on the floatation of companies'' securities in the capital market."},{"col1":"Preparation of loan agreements, advice on Security Documentation, drafting and review of Security Documents including, but not limited to, legal mortgages, debentures (fixed and floating) bills of sale, mortgage debentures, pledges, guarantees and indemnities. "},{"col1":"Advising on the acquisition of Flexcube banking software by Union Bank of Nigeria Plc and Finnacle banking software by First Atlantic Bank Ltd."},{"col1":"Advising on the acquisition of an Internet Based Money Transfer facility by First Atlantic Bank Ltd."}],"30":"<p>Our experience in the Nigerian Oil & Gas and Financial sectors is vast and varied. We have successfully advised firms, financial institutions, energy conglomerates and multinationals on several projections and transactions.<\\/p>\\r\\n\\r\\n<p>Below are some relevant experiences garnered over the years.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":""}}', '2015-11-20 08:10:26', '2015-11-20 08:10:26', 'cc9ec7e9-e4ea-47ff-9ebb-50a8b9097093'),
(125, 102, 13, 1, 'en_us', 1, NULL, '{"typeId":"15","authorId":null,"title":"Sitemap","slug":"sitemap","postDate":1448015181,"expiryDate":null,"enabled":1,"fields":[]}', '2015-11-20 10:26:21', '2015-11-20 10:26:21', 'c14a5b36-5728-4fa4-b596-b455d0b15132'),
(126, 103, 15, 1, 'en_us', 1, NULL, '{"typeId":"17","authorId":null,"title":"Cases and Results Landing","slug":"cases-and-results-landing","postDate":1448016756,"expiryDate":null,"enabled":1,"fields":[]}', '2015-11-20 10:52:36', '2015-11-20 10:52:36', 'c3a285fa-74e6-46d0-a6a1-c97fbbc6f408'),
(127, 104, 14, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Suit No. HEK\\/81\\/2008: Udo Atang Essien V. Mobil Producing Nigeria Unlimited.","slug":"suit-no-hek-81-2008-udo-atang-essien-v-mobil-producing-nigeria-unlimited","postDate":1448019909,"expiryDate":null,"enabled":1,"fields":{"41":"<p>The client did not have to retain the claimant in its company against its will.<\\/p><p>The client was relieved from the exposure paying the N500million claim.<\\/p>","38":"Mobil Producing Nigeria","39":"<p>The defendant claimed to be a life employee of ExxonMobil pursuant to an oral understanding between him and the Company following the acquisition of his land for the construction of an airstrip by ExxonMobil. He brought the above action claiming N500Million in Libel and Breach of Contract against the Exxonmobil at the High Court of Akwa Ibom State of Nigeria in 2008 following the withdrawal of his services by the ExxonMobil\\u2019s Contractor who engaged him.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":"","40":"<p>GBC team reviewed the facts of the case and the relevant laws and filed a strong defence on behalf of the client challenging the claims in their entirety. The team further canvassed strong legal arguments in court on behalf of the client and urged the court to dismiss the suit. The entire claims against the client N500Million were eventually dismissed by the Court.<\\/p>","15":""}}', '2015-11-20 11:45:09', '2015-11-20 11:45:09', '5f8d9182-6bb4-498e-9de1-9d5f85c621ca');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(128, 104, 14, 1, 'en_us', 2, '', '{"typeId":"16","authorId":"1","title":"Employee For Life?","slug":"employee-for-life-udo-atang-vs-exxonmobil","postDate":1448019900,"expiryDate":null,"enabled":1,"fields":{"41":"<p>The client did not have to retain the claimant in its company against its will.<\\/p>\\r\\n\\r\\n<p>The client was relieved from the exposure paying the N500million claim.<\\/p>","38":"Mobil Producing Nigeria","43":"The defense of ExxonMobil against a Libel and Breach Case","39":"<p>The defendant claimed to be a life employee of ExxonMobil pursuant to an oral understanding between him and the Company following the acquisition of his land for the construction of an airstrip by ExxonMobil. He brought the above action claiming N500Million in Libel and Breach of Contract against the Exxonmobil at the High Court of Akwa Ibom State of Nigeria in 2008 following the withdrawal of his services by the ExxonMobil\\u2019s Contractor who engaged him.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":"","40":"<p>GBC team reviewed the facts of the case and the relevant laws and filed a strong defence on behalf of the client challenging the claims in their entirety. The team further canvassed strong legal arguments in court on behalf of the client and urged the court to dismiss the suit. The entire claims against the client N500Million were eventually dismissed by the Court.<\\/p>","42":"Suit No. HEK\\/81\\/2008: Udo Atang Essien V. Mobil Producing Nigeria Unlimited.","15":""}}', '2015-11-20 13:26:40', '2015-11-20 13:26:40', '32e279df-cf83-45be-a231-cfbae2ee8c29'),
(129, 104, 14, 1, 'en_us', 3, '', '{"typeId":"16","authorId":"1","title":"Employee For Life?","slug":"employee-for-life-udo-atang-vs-exxonmobil","postDate":1448019900,"expiryDate":null,"enabled":1,"fields":{"41":"<p>The client did not have to retain the claimant in its company against its will.<\\/p>\\r\\n\\r\\n<p>The client was relieved from the exposure paying the N500million claim.<\\/p>","38":"Mobil Producing Nigeria","43":"The defense of ExxonMobil against a Libel and Breach Case","39":"<p>The defendant claimed to be a life employee of ExxonMobil pursuant to an oral understanding between him and the Company following the acquisition of his land for the construction of an airstrip by ExxonMobil. He brought the above action claiming N500Million in Libel and Breach of Contract against the Exxonmobil at the High Court of Akwa Ibom State of Nigeria in 2008 following the withdrawal of his services by the ExxonMobil\\u2019s Contractor who engaged him.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":"","40":"<p>GBC team reviewed the facts of the case and the relevant laws and filed a strong defence on behalf of the client challenging the claims in their entirety. The team further canvassed strong legal arguments in court on behalf of the client and urged the court to dismiss the suit. The entire claims against the client N500Million were eventually dismissed by the Court.<\\/p>","42":"Suit No. HEK\\/81\\/2008: Udo Atang Essien V. Mobil Producing Nigeria Unlimited.","15":["105"]}}', '2015-11-20 13:34:33', '2015-11-20 13:34:33', '61cde1fe-5fbc-4d54-a30d-aab14a8b5502'),
(130, 104, 14, 1, 'en_us', 4, '', '{"typeId":"16","authorId":"1","title":"Employee For Life?","slug":"employee-for-life-udo-atang-vs-exxonmobil","postDate":1448019900,"expiryDate":null,"enabled":1,"fields":{"41":"<p>The client did not have to retain the claimant in its company against its will.<br>The client was relieved from the exposure paying the N500million claim.<\\/p>","38":"Mobil Producing Nigeria","43":"The defense of ExxonMobil against a Libel and Breach Case","39":"<p>The defendant claimed to be a life employee of ExxonMobil pursuant to an oral understanding between him and the Company following the acquisition of his land for the construction of an airstrip by ExxonMobil. He brought the above action claiming N500Million in Libel and Breach of Contract against the Exxonmobil at the High Court of Akwa Ibom State of Nigeria in 2008 following the withdrawal of his services by the ExxonMobil\\u2019s Contractor who engaged him.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":"","40":"<p>GBC team reviewed the facts of the case and the relevant laws and filed a strong defence on behalf of the client challenging the claims in their entirety. The team further canvassed strong legal arguments in court on behalf of the client and urged the court to dismiss the suit. The entire claims against the client N500Million were eventually dismissed by the Court.<\\/p>","42":"Suit No. HEK\\/81\\/2008: Udo Atang Essien V. Mobil Producing Nigeria Unlimited.","15":["105"]}}', '2015-11-20 13:39:53', '2015-11-20 13:39:53', '2b93a0c6-7217-47d6-895c-db94a441a7f9'),
(131, 107, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"The New Minerals and Mining Regulations 2011","slug":"the-new-minerals-and-mining-regulations-2011","postDate":1448029074,"expiryDate":null,"enabled":1,"fields":{"33":["106"],"32":"\\t The Federal Ministry of Mines and Steel Development (the \\u2018Ministry\\u2019) recently issued new mining regulations titled the Nigerian Minerals and Mining Regulations 2011 (the \\u2018Regulations\\u2019)","2":""}}', '2015-11-20 14:17:55', '2015-11-20 14:17:55', '94e821a2-2c71-4f37-a877-10ceb741c4af'),
(132, 109, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"NCDMB Issues Draft Regulations for Implementation of the Nigerian Content Act","slug":"ncdmb-issues-draft-regulations-for-implementation-of-the-nigerian-content-act","postDate":1448029090,"expiryDate":null,"enabled":1,"fields":{"33":["108"],"32":"\\t The Nigerian Content Development and Monitoring Board Issues Draft Regulations For The Implementation Of The Nigerian Oil and gas Industry Content Development Act 2010.","2":""}}', '2015-11-20 14:18:10', '2015-11-20 14:18:10', 'ea2e04d2-78df-446d-b0d5-0927b14903fb'),
(133, 111, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Employees'' Compensation Act 2010","slug":"employees-compensation-act-2010","postDate":1448029149,"expiryDate":null,"enabled":1,"fields":{"33":["110"],"32":"The Federal Government of Nigeria, in its bid to improve the welfare of Nigerian employees recently enacted the Employees\\u2019 Compensation Act 2010 (\\u2018ECA\\u2019 or \\u2018the Act\\u2019) which introduces a new social security scheme for workers in the country.","2":""}}', '2015-11-20 14:19:09', '2015-11-20 14:19:09', '9559b8ee-4723-4f87-b72b-8c6b5ed541db'),
(134, 113, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Nigeria Launches Roadmap for Power Sector Reform","slug":"nigeria-launches-roadmap-for-power-sector-reform","postDate":1448029178,"expiryDate":null,"enabled":1,"fields":{"33":["112"],"32":"President Goodluck Jonathan launched the most comprehensive plan which it tagged \\u2018Roadmap for Power Sector Reform\\u2019 aimed at restructuring the power sector and achieve stable electricity in the country.","2":""}}', '2015-11-20 14:19:38', '2015-11-20 14:19:38', '93b2237c-63ad-42df-8b13-e26457f01989'),
(135, 115, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Investing in Nigeria\\u2019s Oil and Gas Industry","slug":"investing-in-nigerias-oil-and-gas-industry-1","postDate":1448029204,"expiryDate":null,"enabled":1,"fields":{"33":["114"],"32":"Nigeria is one of the world\\u2019s largest producers of crude oil. The country currently produces an average of 2.5 million barrels of crude oil per day. This makes her the 10th largest producer of crude oil in the world and the 6th largest exporter among OPEC members. Production capacity currently stands at about 3 million barrels per day whilst reserves is about 35 billion barrels which the government intends to increase to 40 billion barrels by the year 2010.","2":""}}', '2015-11-20 14:20:05', '2015-11-20 14:20:05', '3b18c0a3-726b-4def-a4ee-dcae7b503852'),
(136, 117, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Taxation of Expatriate","slug":"taxation-of-expatriate","postDate":1448029246,"expiryDate":null,"enabled":1,"fields":{"33":["116"],"32":"This article examines in a very general way the existing framework for the taxation of expatriates in Nigeria. It considers in brief the applicable tax rate, the portion of the expatriate income that is actually subject to tax, how the tax is calculated, when an expatriate would be deemed resident in Nigeria and how the tax filing is carried out.","2":""}}', '2015-11-20 14:20:46', '2015-11-20 14:20:46', '154591e3-9e35-461e-a8ee-4f17747ee73c'),
(137, 119, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Mining in Nigeria","slug":"mining-in-nigeria","postDate":1194912000,"expiryDate":null,"enabled":1,"fields":{"33":["118"],"32":"The Mining Industry is now a global industry with many countries competing for exploration funds.  The fierce international competition suggests that mining companies and their investment funds would only go to those countries where the enabling environment would allow the private sector to flourish without hindrance.","2":""}}', '2015-11-20 14:21:52', '2015-11-20 14:21:52', '1e1ecc67-aeb6-4077-b163-7a5a4c2db509'),
(138, 119, 11, 1, 'en_us', 2, '', '{"typeId":"13","authorId":"1","title":"Mining in Nigeria","slug":"mining-in-nigeria","postDate":1194912000,"expiryDate":null,"enabled":1,"fields":{"33":["118"],"32":"The Mining Industry is now a global industry with many countries competing for exploration funds.  The fierce international competition suggests that mining companies and their investment funds would only go to those countries where the enabling environment would allow the private sector to flourish without hindrance.","2":""}}', '2015-11-20 14:21:55', '2015-11-20 14:21:55', '1ca41720-2ae4-4789-809e-62acfeeeb487'),
(139, 121, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"An Investor\\u2019s Guide to Doing Business In Nigeria","slug":"an-investors-guide-to-doing-business-in-nigeria","postDate":1194134400,"expiryDate":null,"enabled":1,"fields":{"33":["120"],"32":"With a population of about 140 million people, Nigeria is undoubtedly Africa\\u2019s most populous country, making it the African destination of choice for serious investors looking to take advantage of a potentially large market.","2":""}}', '2015-11-20 14:22:44', '2015-11-20 14:22:44', '7ed29f4a-10d2-4490-8054-9ac642c54ef4'),
(140, 123, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Cabotage Regime in Nigeria - The Implementation Guidelines","slug":"cabotage-regime-in-nigeria-the-implementation-guidelines","postDate":1448029418,"expiryDate":null,"enabled":1,"fields":{"33":["122"],"32":"The National Assembly on 30th April 2003 passed the Coastal and Inland Shipping (Cabotage) Act (\\u201cthe Cabotage Act\\u201d) into Law. It was stipulated that the provisions of the Cabotage Act would become enforceable from 1st May 2004. The much awaited guidelines for the implementation of the provisions of the Cabotage Act were eventually released by the Honourable Minister of Transport on 7th of June 2004. We intend to give an overview of the guidelines in this newsletter.","2":""}}', '2015-11-20 14:23:38', '2015-11-20 14:23:38', '0f7ab212-2d75-442f-898f-a1044ff6ab02'),
(141, 125, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Recent regulations affecting Banks","slug":"recent-regulations-affecting-banks","postDate":1061337600,"expiryDate":null,"enabled":1,"fields":{"33":["124"],"32":"As a result of international pressure particularly from the United States of America, some European countries and the global ombudsman, the Financial Action Task Force (FATF) based in Paris, France, threatening to apply sanctions on Nigeria and its banks for the rising cases of fraud and sharp practices in the financial system, the Federal Government recently reinforced the country\\u2019s laws in its bid to tackle the ugly trend.","2":""}}', '2015-11-20 14:24:26', '2015-11-20 14:24:26', '4ed2c58c-b94f-4563-9938-3e0d32e78982'),
(142, 127, 11, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Nigeria Sao Tome & Principe Licensing Rounds","slug":"nigeria-sao-tome-principe-licensing-rounds","postDate":1055808000,"expiryDate":null,"enabled":1,"fields":{"33":["126"],"32":"After much waiting, Nigeria and Sao Tome on the 22nd of April 2003, flagged off the licensing round for nine oil blocks in the Joint Development Zone (\\u201cJDZ\\u201d). The JDZ is an area of overlapping maritime boundary claims between Nigeria and Sao Tome, which both countries have agreed to jointly develop. The area is estimated to hold crude reserves of about six billion barrels.","2":""}}', '2015-11-20 14:25:17', '2015-11-20 14:25:17', '225c96de-aa3f-4819-9a5b-3c6639e282c4'),
(143, 104, 14, 1, 'en_us', 5, '', '{"typeId":"16","authorId":"1","title":"Employee For Life?","slug":"employee-for-life-udo-atang-vs-exxonmobil","postDate":1448019900,"expiryDate":null,"enabled":1,"fields":{"41":"<p>The client did not have to retain the claimant in its company against its will.<br>The client was relieved from the exposure paying the N500million claim.<\\/p>","38":"Mobil Producing Nigeria","43":"The defense of ExxonMobil against a Libel and Breach Case","39":"<p>The defendant claimed to be a life employee of ExxonMobil pursuant to an oral understanding between him and the Company following the acquisition of his land for the construction of an airstrip by ExxonMobil. He brought the action claiming N500Million in Libel and Breach of Contract against the Exxonmobil at the High Court of Akwa Ibom State of Nigeria in 2008 following the withdrawal of his services by the ExxonMobil\\u2019s Contractor who engaged him.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":"","40":"<p>GBC team reviewed the facts of the case and the relevant laws and filed a strong defense on behalf of our client, challenging the claims in their entirety. The team further canvassed strong legal arguments in court on behalf of the client and urged the court to dismiss the suit. The entire claims against the client \\u2013 N500Million, were eventually dismissed by the Court.<\\/p>","42":"Suit No. HEK\\/81\\/2008: Udo Atang Essien V. Mobil Producing Nigeria Unlimited.","15":["105"]}}', '2015-11-20 14:31:17', '2015-11-20 14:31:17', 'b383e602-2de4-4be1-a7f5-fdc03b675934'),
(144, 128, 14, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Suing the State","slug":"suing-the-state","postDate":1448030117,"expiryDate":null,"enabled":1,"fields":{"41":"<p>Our client obtained a reversal of the revocation of their Certificate of Occupancy. Full title was restored.<\\/p>","38":"Mrs. Winifred Ugborogho & Anor","43":"The reversal of the revocation of C of O","39":"<p>Lagos State Government purportedly revoked the Certificate of Occupancy of our client; Mrs. Winifred Ugborogho in the suit alleging that the clients owe some property levy in the region of N14Million. Her property was valued at about N80million. The clients had earlier made payments of this same property levy; therefore considered the demand exploitative.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":"","40":"<p>GBC team held several meetings with the government officials for the purpose of resolving the matter amicably but the meetings could not lead to settlement as the government officials. The team eventually instituted an action against the Lagos State Government seeking amongst others the reversal of the revocation of our clients Certificate of Occupancy.<\\/p>","42":"SUIT No. LD\\/214\\/2008: Mrs. Winifred Ugborogho & Anor. V. Governor of Lagos State & ORS.","15":""}}', '2015-11-20 14:35:17', '2015-11-20 14:35:17', 'ba9c3e4a-a14b-471e-80fc-e5d3e25c3645'),
(145, 129, 14, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Prove what you claim","slug":"prove-what-you-claim","postDate":1448030199,"expiryDate":null,"enabled":1,"fields":{"41":"<p>The case against Baker Hughes was entirely dismissed; they were spared the burden of paying the Lazer Tech\\u2019s &nbsp;claim of N13Million.<\\/p>","38":"Baker Hughes Nigeria","43":"The dismissal of claims against Baker Hughes","39":"<p>The Claimant brought an action against our client; Baker Hughes, claiming the sum of N13Million as fees for clearing the goods at the port in Rivers State. Lazer Tech. did not provide any documents to justify the payment of this claim to it.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":"","40":"<p>The team eventually joined issues with the claimant at the High Court in Port Harcourt and canvassed strong legal arguments on behalf of our client, part of which is that the law requires a claimant to prove that which he is claiming. We urged the court to follow established principles of law in this case and dismiss the case for lack of merit.<\\/p>","42":"SUIT No. PHC\\/929\\/2008: Lazer Tech Invest. Nig. V. Baker Hughes Nigeria Ltd.","15":""}}', '2015-11-20 14:36:39', '2015-11-20 14:36:39', 'bd376a01-05be-4f82-8872-b0ba4b09f45b'),
(146, 130, 14, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"No Contract Breached ","slug":"no-contract-breached","postDate":1448030256,"expiryDate":null,"enabled":1,"fields":{"41":"<p>The suit was dismissed in its entirety. Baker Hughes did not have to make any payment to the claimant\\u2019s<\\/p>","38":"Baker Hughes","43":"The dismissal of breach of employment contract against Baker Hughes","39":"<p>25 claimants who were former employees of Baker Hughes brought a claim of N30Million against our client for breach of contract of employment. Since the claimants\\u2019 employments were lawfully terminated and terminal benefits were duly paid to all of them, GBC Law viewed the suit as frivolous and an attempt by the claimants to exploit our client.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":"","40":"<p>We filed a vigorous defense against the suit and joined issues with the claimants. The team tendered evidence to show that the claimants\\u2019 case lacked merit. Strong legal arguments were further canvassed for the dismissal of the claimants\\u2019 claims against our client.<\\/p>","42":"PHC\\/384\\/2001: Suobo Clarkson & ORS v. Baker Hughes Nigeria Ltd.","15":""}}', '2015-11-20 14:37:36', '2015-11-20 14:37:36', '27755470-7e08-410d-bc7e-4a77797f8394'),
(147, 131, 14, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Benefits paid already! ","slug":"benefits-paid-already","postDate":1448030322,"expiryDate":null,"enabled":1,"fields":{"41":"<p>Case against client was dismissed entirely. Our client was relieved from paying the claim of nearly N2.7Million.<\\/p>","38":"Baker Hughes Nig. Ltd.","43":"Dismissal of Redundancy Benefits Claim against Baker Hughes","39":"<p>Claimant brought a claim of N2,692,320 said to represent outstanding redundancy benefit against Baker Hughes at the High Court of Rivers State, Port Harcourt. Meanwhile, our client had made full payment by way of redundancy benefits to the claimant as documented and shown on records.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":"","40":"<p>Chief Nwagabara\\u2019s claims were vehemently challenged in court by the GBC team. Documents were tendered and legal arguments were canvassed for the dismissal of his claims. The team further urged the court to dismiss the claims as being frivolous.<\\/p>","42":"Suit No. PHC\\/1476\\/2006: Chief S. C. Nwagbara v. Baker Hughes Nig. Ltd.","15":""}}', '2015-11-20 14:38:42', '2015-11-20 14:38:42', '3cd4794d-93d5-4e2f-9a27-526aee669347'),
(148, 132, 14, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Restored Business","slug":"restored-business","postDate":1448030525,"expiryDate":null,"enabled":1,"fields":{"41":"<p>Our clients\\u2019 suit succeeded in court. Title and possession of the property in dispute were restored. Damages were also awarded.<\\/p>","38":"Sir. John Dozie Maduike","43":"Recovery of title and property","39":"<p>One of the defendants was a tenant to our client; Sir. John Maduike in respect of a shop in Lagos who later challenged our clients\\u2019 title to the shop with forged documents. GBC Law attempted resolving the matter amicably without success. The team eventually filed a suit claiming amongst others, a declaration of title and possession in favour of our client.<\\/p>","4":"","5":"","6":"","13":"","7":"","3":"","8":"","40":"<p>We assembled documentary and oral evidence and presented cogent legal argument on behalf of Sir Maduike before the court. The defendants eventually contradicted their case before the court thereby dealing a blow to any chances of success in the suit.<\\/p>","42":"Suit No. ID\\/1711\\/2009: Sir John Dozie Maduike & ORS v. Auto Spare Parts AND Machinery Dealers Association & ORS.","15":""}}', '2015-11-20 14:42:05', '2015-11-20 14:42:05', '078a0a98-a6d3-4eec-aa45-42fb5b27c40a'),
(149, 21, 8, 1, 'en_us', 8, '', '{"typeId":null,"authorId":null,"title":"About","slug":"about-gbc","postDate":1447762193,"expiryDate":null,"enabled":1,"fields":{"9":"<h3>Gbenga Biobaku & Co. (GBC) is a leading law firm in Nigeria with primary practice in the business scene, with focus on Energy, Projects, Foreign Investments, Banking, Capital Markets and general Corporate\\/ Commercial Law.<\\/h3>\\r\\n\\r\\n<p>For over 20years, our Firm has demonstrated its expertise in handling challenging assignments for the most interesting clients. We have achieved extraordinary results with a team of intensely focused members focused on&nbsp;solving our clients'' most important problems.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Building strong client relationships is the compass of our business strategy. With diverse experience and exceptional professionals with specialist skills, we have continually delivered quality to our clients through innovative legal solutions.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Our clients range from multinationals, oil & energy firms, financial institutions and emerging companies. We also advise governments&nbsp;and public bodies.<\\/p>","10":{"90":{"type":"client","enabled":"1","fields":{"clientName":"Exxon Mobil","clientLogo":["79"]}},"91":{"type":"client","enabled":"1","fields":{"clientName":"Statoil","clientLogo":["80"]}},"92":{"type":"client","enabled":"1","fields":{"clientName":"Baker Hughes","clientLogo":["81"]}},"93":{"type":"client","enabled":"1","fields":{"clientName":"BJ Services Nigeria Limited","clientLogo":["84"]}},"94":{"type":"client","enabled":"1","fields":{"clientName":"Parker Drilling","clientLogo":["85"]}},"95":{"type":"client","enabled":"1","fields":{"clientName":"Oceaneering Nigeria","clientLogo":["86"]}},"96":{"type":"client","enabled":"1","fields":{"clientName":"African Capital Alliance","clientLogo":["87"]}},"97":{"type":"client","enabled":"1","fields":{"clientName":"Rhino Linings","clientLogo":["88"]}},"100":{"type":"client","enabled":"1","fields":{"clientName":"Pentagon Petroleum Limited","clientLogo":["98"]}},"101":{"type":"client","enabled":"1","fields":{"clientName":"Taba Nigeria","clientLogo":["99"]}}},"17":"Our client list spans the oil and gas, construction, banking and financial institutions, here are a list of some of our clients (past and present).","14":"","4":"","5":"","6":"","13":"","7":"","3":"","8":"","15":""}}', '2015-11-20 14:44:02', '2015-11-20 14:44:02', '5d777b7e-b393-44ac-9c62-a6ffe5fc1db1');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldgroups`
--

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2015-11-13 22:54:20', '2015-11-13 22:54:20', 'f15b7dbf-66f4-471f-8824-a481ef280f6c'),
(2, 'Seo', '2015-11-17 07:20:16', '2015-11-17 07:20:16', '34165791-a73c-44b1-922a-3e199f916215'),
(3, 'About', '2015-11-17 08:01:27', '2015-11-17 08:01:27', '48fce0ca-0fdc-4329-9939-5cf39c034bcf'),
(4, 'Team', '2015-11-17 11:09:10', '2015-11-17 11:09:10', '61184f31-482d-4875-9ff8-bc9e92525667'),
(5, 'Expertise', '2015-11-17 13:08:22', '2015-11-17 13:08:22', 'f7f0a86b-72f3-4d8b-b7dc-63c89d9bf313'),
(6, 'Publications', '2015-11-17 14:02:55', '2015-11-17 14:02:55', 'b540c05b-e4f0-4b09-8fbc-4e1b061db263'),
(7, 'Cases and Results', '2015-11-20 11:10:16', '2015-11-20 11:10:16', '566f6c36-8866-41a7-bf23-823bf1eda19b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayoutfields`
--

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 5, 2, 1, 1, 1, '2015-11-13 22:54:20', '2015-11-13 22:54:20', '719f4802-eb0b-4920-a2a8-c2aaed01a4c4'),
(3, 5, 2, 2, 0, 2, '2015-11-13 22:54:20', '2015-11-13 22:54:20', 'a4966571-e1af-46d7-aa42-978ed7015707'),
(32, 15, 10, 16, 0, 1, '2015-11-17 09:05:24', '2015-11-17 09:05:24', 'f75fb905-3641-47c3-bc20-966ec44118bf'),
(33, 15, 10, 14, 0, 2, '2015-11-17 09:05:24', '2015-11-17 09:05:24', '4f4772b7-14c6-4953-ba26-789c4bf95d68'),
(34, 15, 11, 4, 0, 1, '2015-11-17 09:05:24', '2015-11-17 09:05:24', 'e4e775f1-506e-49db-92fd-0c705c5434e5'),
(35, 15, 11, 5, 0, 2, '2015-11-17 09:05:24', '2015-11-17 09:05:24', '42e40831-1091-42c9-9cbb-bd5eedfe7203'),
(36, 15, 11, 6, 0, 3, '2015-11-17 09:05:24', '2015-11-17 09:05:24', '27433ccb-9e2d-4393-9dcf-059df6505d7c'),
(37, 15, 11, 13, 0, 4, '2015-11-17 09:05:24', '2015-11-17 09:05:24', '7382abda-e7ca-4a3d-8e81-d232b5a2e638'),
(38, 15, 11, 7, 0, 5, '2015-11-17 09:05:24', '2015-11-17 09:05:24', 'abcfcab1-0f4c-400b-9b94-d66fc033285c'),
(39, 15, 11, 3, 0, 6, '2015-11-17 09:05:24', '2015-11-17 09:05:24', '6593ec92-c75c-497b-ab49-aa877a8ccd79'),
(40, 15, 11, 8, 0, 7, '2015-11-17 09:05:24', '2015-11-17 09:05:24', 'eab9f792-b972-4743-9385-5da6ad1f8ec6'),
(76, 21, 20, 14, 0, 1, '2015-11-17 09:55:43', '2015-11-17 09:55:43', '118f5a0b-d954-4735-b5a6-0f8e060dc31a'),
(77, 21, 20, 16, 0, 2, '2015-11-17 09:55:43', '2015-11-17 09:55:43', '4f0f1e34-d03e-4061-bf4a-be52bfa9301d'),
(78, 21, 21, 4, 0, 1, '2015-11-17 09:55:43', '2015-11-17 09:55:43', '6671bc2a-d31f-4446-932a-faf7095236a2'),
(79, 21, 21, 5, 0, 2, '2015-11-17 09:55:43', '2015-11-17 09:55:43', '90d797b4-eb5a-443e-b93d-97e9c39d65a2'),
(80, 21, 21, 6, 0, 3, '2015-11-17 09:55:43', '2015-11-17 09:55:43', '52a6464e-e8b4-49a1-8684-33b2e9d92cd9'),
(81, 21, 21, 13, 0, 4, '2015-11-17 09:55:43', '2015-11-17 09:55:43', '8d102c20-dc5d-4d23-b6c0-c70af1f1f175'),
(82, 21, 21, 7, 0, 5, '2015-11-17 09:55:43', '2015-11-17 09:55:43', '89a22915-5a99-4acf-b9e1-aabefff0d4f3'),
(83, 21, 21, 3, 0, 6, '2015-11-17 09:55:43', '2015-11-17 09:55:43', 'c8692ded-bfee-462c-806c-50a9cef235c3'),
(84, 21, 21, 8, 0, 7, '2015-11-17 09:55:43', '2015-11-17 09:55:43', '2f59c8af-a8e0-4417-9384-68fe71eb96e1'),
(128, 26, 28, 18, 0, 1, '2015-11-17 11:27:52', '2015-11-17 11:27:52', 'ebf23c80-d265-474e-acd5-0d5c9ca9d8ea'),
(129, 26, 28, 15, 0, 2, '2015-11-17 11:27:52', '2015-11-17 11:27:52', '1dda7161-a9b9-4fe0-9052-f6df95f1137f'),
(130, 26, 28, 14, 0, 3, '2015-11-17 11:27:52', '2015-11-17 11:27:52', '95f45498-4f12-4234-8297-8ccff333cdf8'),
(131, 26, 28, 19, 0, 4, '2015-11-17 11:27:52', '2015-11-17 11:27:52', 'cb93705d-e6ab-40ec-9c4d-1fa18ac0e5f4'),
(132, 26, 28, 20, 0, 5, '2015-11-17 11:27:52', '2015-11-17 11:27:52', 'b76a6463-2540-46b6-9041-b938e7482967'),
(133, 26, 28, 21, 0, 6, '2015-11-17 11:27:52', '2015-11-17 11:27:52', 'c050adec-1c4f-476c-b626-d0c1aece278f'),
(134, 26, 28, 22, 0, 7, '2015-11-17 11:27:52', '2015-11-17 11:27:52', '1c3cfd2f-3b61-40ca-9d29-e818d4bf7bfb'),
(135, 26, 28, 23, 0, 8, '2015-11-17 11:27:52', '2015-11-17 11:27:52', '866f6026-3fd6-4118-85bd-7f6688c6f8b9'),
(136, 26, 28, 24, 0, 9, '2015-11-17 11:27:52', '2015-11-17 11:27:52', '9f501561-3bc0-426e-8841-856613ba104d'),
(137, 26, 29, 4, 0, 1, '2015-11-17 11:27:52', '2015-11-17 11:27:52', '650bc476-e751-4f71-b491-3d683bd4aae6'),
(138, 26, 29, 5, 0, 2, '2015-11-17 11:27:52', '2015-11-17 11:27:52', 'c5a80719-71fc-4f31-8a77-e7fd0f938cdc'),
(139, 26, 29, 6, 0, 3, '2015-11-17 11:27:52', '2015-11-17 11:27:52', 'ed95ff7c-1e4a-433e-9c64-296d4cd491ca'),
(140, 26, 29, 13, 0, 4, '2015-11-17 11:27:52', '2015-11-17 11:27:52', '208965d8-24f2-414a-a166-a022adc3696d'),
(141, 26, 29, 7, 0, 5, '2015-11-17 11:27:52', '2015-11-17 11:27:52', '2b42f412-a0fc-47d6-a75d-5394ad6ec79c'),
(142, 26, 29, 3, 0, 6, '2015-11-17 11:27:53', '2015-11-17 11:27:53', '33a20965-41b8-40a8-8eb6-4f90f1326e67'),
(143, 26, 29, 8, 0, 7, '2015-11-17 11:27:53', '2015-11-17 11:27:53', 'c747cbd5-c3a1-4006-aa1f-335aa6692b6d'),
(160, 28, 32, 9, 0, 1, '2015-11-17 11:35:05', '2015-11-17 11:35:05', '616e13cd-549b-4e2d-943c-a870aa428d16'),
(161, 28, 32, 17, 0, 2, '2015-11-17 11:35:05', '2015-11-17 11:35:05', '4b4d72ae-9f8f-4352-bc09-d536a21fa558'),
(162, 28, 32, 10, 0, 3, '2015-11-17 11:35:05', '2015-11-17 11:35:05', '937f7fa4-6386-4016-b175-9dc24dfa0df7'),
(163, 28, 33, 4, 0, 1, '2015-11-17 11:35:05', '2015-11-17 11:35:05', '40a8e5b3-2a3e-46c2-9ff3-19c9d6e64ae8'),
(164, 28, 33, 5, 0, 2, '2015-11-17 11:35:05', '2015-11-17 11:35:05', '49cb23fe-b574-452e-8fcd-9f0393fa893d'),
(165, 28, 33, 6, 0, 3, '2015-11-17 11:35:05', '2015-11-17 11:35:05', 'f4e055ad-54b1-45f4-80a5-c5d418064108'),
(166, 28, 33, 7, 0, 4, '2015-11-17 11:35:05', '2015-11-17 11:35:05', 'bc320bf5-3f2c-4916-97cd-5300cb553326'),
(167, 28, 33, 3, 0, 5, '2015-11-17 11:35:05', '2015-11-17 11:35:05', '0b3e49b4-55ca-499c-b8a8-1ecf4e0d5d54'),
(168, 28, 33, 13, 0, 6, '2015-11-17 11:35:05', '2015-11-17 11:35:05', 'e81a9331-1b7e-4ddb-90b6-f4a626758b68'),
(169, 28, 33, 8, 0, 7, '2015-11-17 11:35:05', '2015-11-17 11:35:05', '0bb0a120-98b1-4e3a-9efc-b84993f8cf51'),
(170, 29, 34, 15, 0, 1, '2015-11-17 11:39:33', '2015-11-17 11:39:33', 'd107cf9f-b6c6-4957-890f-9195ef2e6771'),
(171, 29, 34, 14, 0, 2, '2015-11-17 11:39:33', '2015-11-17 11:39:33', '209cd5fc-f4c9-478d-a656-e8869cc41040'),
(172, 29, 34, 19, 0, 3, '2015-11-17 11:39:33', '2015-11-17 11:39:33', '5f277f47-9174-4200-bb50-72782877109f'),
(173, 29, 34, 20, 0, 4, '2015-11-17 11:39:33', '2015-11-17 11:39:33', 'dac20388-26e2-4738-b76c-391477400411'),
(174, 29, 34, 21, 0, 5, '2015-11-17 11:39:33', '2015-11-17 11:39:33', '00c198d4-846c-47d8-82a3-b294a1543a19'),
(175, 29, 34, 22, 0, 6, '2015-11-17 11:39:33', '2015-11-17 11:39:33', 'fa36eb0e-b7fb-4349-b78e-9dd69f2279b7'),
(176, 29, 34, 18, 0, 7, '2015-11-17 11:39:33', '2015-11-17 11:39:33', 'c86ed2eb-9091-4f38-9d50-37c0571ee020'),
(177, 29, 34, 23, 0, 8, '2015-11-17 11:39:33', '2015-11-17 11:39:33', '90f0d9d5-8de4-45ed-8e25-647b7efb5672'),
(178, 29, 34, 24, 0, 9, '2015-11-17 11:39:33', '2015-11-17 11:39:33', '6c280821-f8c7-49e3-828c-5ca2a14a7e40'),
(179, 29, 35, 4, 0, 1, '2015-11-17 11:39:33', '2015-11-17 11:39:33', 'fba8cc30-a775-40d0-b348-e215c1be16bd'),
(180, 29, 35, 5, 0, 2, '2015-11-17 11:39:33', '2015-11-17 11:39:33', 'b106c4fa-5ade-435d-b53f-fe7ba05d0b6f'),
(181, 29, 35, 6, 0, 3, '2015-11-17 11:39:33', '2015-11-17 11:39:33', '013dc604-ab59-4561-82c6-9ee1fcd318fb'),
(182, 29, 35, 13, 0, 4, '2015-11-17 11:39:33', '2015-11-17 11:39:33', 'a64e91b9-8cd6-42d1-abbc-42f4e4710790'),
(183, 29, 35, 7, 0, 5, '2015-11-17 11:39:33', '2015-11-17 11:39:33', '7af89ce6-f468-4e6f-9f3d-90db13607470'),
(184, 29, 35, 3, 0, 6, '2015-11-17 11:39:33', '2015-11-17 11:39:33', 'cc3b302e-a936-4a34-99bc-041675ce072e'),
(185, 29, 35, 8, 0, 7, '2015-11-17 11:39:33', '2015-11-17 11:39:33', '06c14600-7720-45d1-996b-f0798f64df56'),
(239, 36, 44, 9, 0, 1, '2015-11-17 12:39:54', '2015-11-17 12:39:54', 'c4ac4ea7-e705-44e5-bcdd-2574467397de'),
(240, 36, 44, 10, 0, 2, '2015-11-17 12:39:54', '2015-11-17 12:39:54', 'cb3c1765-81b0-4670-b3c4-594562f2b2fd'),
(241, 36, 44, 17, 0, 3, '2015-11-17 12:39:54', '2015-11-17 12:39:54', '3ec93543-aa38-43e6-b772-4efaa5ad2393'),
(242, 36, 44, 14, 0, 4, '2015-11-17 12:39:54', '2015-11-17 12:39:54', '4962c4a9-d536-4de3-b2f1-b0bdb75174bf'),
(243, 36, 44, 15, 0, 5, '2015-11-17 12:39:54', '2015-11-17 12:39:54', 'd7af3c19-2f73-43e9-9aff-57d5a276e049'),
(244, 36, 45, 4, 0, 1, '2015-11-17 12:39:54', '2015-11-17 12:39:54', 'f5ae12f0-f83f-4b71-9ae4-b8e5aea01fd6'),
(245, 36, 45, 5, 0, 2, '2015-11-17 12:39:54', '2015-11-17 12:39:54', '581e7846-d5ad-4dc3-8b41-754cd3803da5'),
(246, 36, 45, 6, 0, 3, '2015-11-17 12:39:54', '2015-11-17 12:39:54', '58b9a86c-729a-409d-bfff-9dabffb349e4'),
(247, 36, 45, 13, 0, 4, '2015-11-17 12:39:54', '2015-11-17 12:39:54', '3fa94e0e-902a-4ab9-ad89-132d7979b063'),
(248, 36, 45, 7, 0, 5, '2015-11-17 12:39:54', '2015-11-17 12:39:54', '1bc34ac5-a2f4-4271-b481-3987ffffee26'),
(249, 36, 45, 3, 0, 6, '2015-11-17 12:39:54', '2015-11-17 12:39:54', '48f27f41-d41e-4863-b9d7-7b686ce6985f'),
(250, 36, 45, 8, 0, 7, '2015-11-17 12:39:54', '2015-11-17 12:39:54', 'f869c908-9232-4fa8-9627-a493c2e3f44b'),
(253, 39, 47, 19, 0, 1, '2015-11-17 13:15:56', '2015-11-17 13:15:56', '27c52b32-0857-4de2-9191-173fb3ad87e9'),
(254, 39, 47, 26, 0, 2, '2015-11-17 13:15:56', '2015-11-17 13:15:56', 'c08c3582-b3b3-4b18-8b9a-808db926a0b4'),
(255, 39, 47, 29, 0, 3, '2015-11-17 13:15:56', '2015-11-17 13:15:56', '0b6ae203-7629-4f82-a807-af942b228739'),
(256, 39, 47, 30, 0, 4, '2015-11-17 13:15:56', '2015-11-17 13:15:56', 'e5244e6b-a32f-4d11-a2d6-0094969c8a19'),
(257, 39, 48, 4, 0, 1, '2015-11-17 13:15:56', '2015-11-17 13:15:56', 'bfd1bdf2-6c41-45aa-ab12-77467761aee2'),
(258, 39, 48, 5, 0, 2, '2015-11-17 13:15:56', '2015-11-17 13:15:56', '1c23b264-b4f4-478f-89f0-54743f298b4d'),
(259, 39, 48, 6, 0, 3, '2015-11-17 13:15:56', '2015-11-17 13:15:56', '3a8234cc-9456-4898-91d8-bab25f6fea61'),
(260, 39, 48, 13, 0, 4, '2015-11-17 13:15:56', '2015-11-17 13:15:56', '179dd1d1-8e9e-480a-80ef-a69c014bafb5'),
(261, 39, 48, 7, 0, 5, '2015-11-17 13:15:56', '2015-11-17 13:15:56', 'c92422c6-e852-4781-9934-8fbfe6de06a9'),
(262, 39, 48, 3, 0, 6, '2015-11-17 13:15:56', '2015-11-17 13:15:56', '029d303e-7273-4c3f-a993-25f379feba6f'),
(263, 39, 48, 8, 0, 7, '2015-11-17 13:15:56', '2015-11-17 13:15:56', '07b0612f-399b-4771-83a6-634e66d26014'),
(267, 41, 50, 31, 0, 1, '2015-11-17 13:38:20', '2015-11-17 13:38:20', '6008d0c2-da27-44b8-94d3-bc94841d29d7'),
(268, 41, 50, 27, 0, 2, '2015-11-17 13:38:20', '2015-11-17 13:38:20', '63aefe10-c977-488c-bf14-2de84e755023'),
(269, 41, 50, 28, 0, 3, '2015-11-17 13:38:20', '2015-11-17 13:38:20', 'de4b2b19-b8de-4904-85ca-6cea1d0b95ff'),
(272, 45, 52, 33, 0, 1, '2015-11-17 14:11:13', '2015-11-17 14:11:13', 'd0d15d63-a064-4e04-8964-7ece6e3ad68a'),
(273, 45, 52, 32, 0, 2, '2015-11-17 14:11:13', '2015-11-17 14:11:13', '02cb246d-169c-4165-9283-e5e7ea208480'),
(276, 49, 54, 4, 0, 1, '2015-11-17 14:20:15', '2015-11-17 14:20:15', 'fd01ca8c-f409-4283-a3e9-011ff7239355'),
(277, 49, 54, 5, 0, 2, '2015-11-17 14:20:15', '2015-11-17 14:20:15', '9ff18582-5650-4294-a336-6466bea9cd92'),
(278, 49, 54, 6, 0, 3, '2015-11-17 14:20:15', '2015-11-17 14:20:15', '3d6024dc-8d9b-4aa8-a3f1-a27125279ad3'),
(279, 49, 54, 13, 0, 4, '2015-11-17 14:20:15', '2015-11-17 14:20:15', '636ea3b8-57e7-4bef-b757-5e41e792e1e1'),
(280, 49, 54, 7, 0, 5, '2015-11-17 14:20:15', '2015-11-17 14:20:15', '12769443-7065-442d-9fbd-77a4ce13f44b'),
(281, 49, 54, 3, 0, 6, '2015-11-17 14:20:15', '2015-11-17 14:20:15', 'c831b6e0-febe-4a8f-9036-4d6dd01f6513'),
(282, 49, 54, 8, 0, 7, '2015-11-17 14:20:15', '2015-11-17 14:20:15', 'a9bfd948-4d69-4058-a5a0-d32910fd865f'),
(283, 50, 55, 34, 0, 1, '2015-11-17 15:13:30', '2015-11-17 15:13:30', 'ee9e1dd6-ef1b-4dd1-a4cd-fd3faa8272b8'),
(284, 50, 56, 4, 0, 1, '2015-11-17 15:13:30', '2015-11-17 15:13:30', 'c1cd8f84-15b5-4e20-b5c1-4a5224c1625e'),
(285, 50, 56, 5, 0, 2, '2015-11-17 15:13:30', '2015-11-17 15:13:30', 'a35de6ed-9e14-4f4b-ade3-73c36b647081'),
(286, 50, 56, 6, 0, 3, '2015-11-17 15:13:30', '2015-11-17 15:13:30', 'c92dcc35-97d1-4ac3-afb4-a0aec96871e5'),
(287, 50, 56, 13, 0, 4, '2015-11-17 15:13:30', '2015-11-17 15:13:30', '1832a97f-979d-4c42-9132-ca1f95618dbb'),
(288, 50, 56, 7, 0, 5, '2015-11-17 15:13:30', '2015-11-17 15:13:30', 'a2101736-210b-4246-9e6f-acb6a0aadc69'),
(289, 50, 56, 3, 0, 6, '2015-11-17 15:13:30', '2015-11-17 15:13:30', 'c28646bf-0bd4-4234-a184-45beade07890'),
(290, 50, 56, 8, 0, 7, '2015-11-17 15:13:30', '2015-11-17 15:13:30', 'f5697172-4544-40e6-b1f3-9b464467b808'),
(291, 51, 57, 33, 0, 1, '2015-11-17 17:24:37', '2015-11-17 17:24:37', '305e5a8d-9742-405a-9fe8-b8d96b880398'),
(292, 51, 57, 32, 0, 2, '2015-11-17 17:24:37', '2015-11-17 17:24:37', '177b6c88-b9e3-4f66-825f-90e2ca97fb7d'),
(293, 51, 57, 2, 0, 3, '2015-11-17 17:24:37', '2015-11-17 17:24:37', '4ca2b72c-8feb-4c9c-a42b-d3c3f27dc339'),
(312, 53, 60, 18, 0, 1, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '98dd4c34-abfe-42fc-9d79-fde49d0f18c1'),
(313, 53, 60, 15, 0, 2, '2015-11-17 18:47:48', '2015-11-17 18:47:48', 'eabdb4e1-0c58-4fe4-873d-8913b2e46d49'),
(314, 53, 60, 14, 0, 3, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '18961daf-8457-4b50-9b9d-873993b1f59d'),
(315, 53, 60, 19, 0, 4, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '397f6a80-3b1f-4afc-bc0b-2511a28bb16a'),
(316, 53, 60, 20, 0, 5, '2015-11-17 18:47:48', '2015-11-17 18:47:48', 'dd2052c1-a7db-4efc-88b0-1a7255a57231'),
(317, 53, 60, 21, 0, 6, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '97747c70-65e8-40e8-9fb7-d714ff76fdae'),
(318, 53, 60, 22, 0, 7, '2015-11-17 18:47:48', '2015-11-17 18:47:48', 'e3dad6ad-ae95-4e53-881e-8f5014e0e043'),
(319, 53, 60, 37, 0, 8, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '0c886845-fb2b-4683-b9ab-b9100b921214'),
(320, 53, 60, 36, 0, 9, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '63512603-83fb-429c-bf2a-3d269afd0126'),
(321, 53, 60, 23, 0, 10, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '8672640c-0d08-4861-aeec-df58d07bb637'),
(322, 53, 60, 24, 0, 11, '2015-11-17 18:47:48', '2015-11-17 18:47:48', 'b7b63160-f664-4999-97f3-9632777d589f'),
(323, 53, 60, 35, 0, 12, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '1a918c88-450c-4e63-9a24-32b54d5d27b0'),
(324, 53, 61, 4, 0, 1, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '14b821fd-7655-47cb-9f26-85fe9edc7247'),
(325, 53, 61, 5, 0, 2, '2015-11-17 18:47:48', '2015-11-17 18:47:48', 'ac671d29-2011-47cf-8a2f-ec54b27f0e28'),
(326, 53, 61, 6, 0, 3, '2015-11-17 18:47:48', '2015-11-17 18:47:48', 'f9a835ec-b4ef-4499-956c-1537ec1e8bf1'),
(327, 53, 61, 13, 0, 4, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '040c268a-0ba7-4195-9dce-ef9bbc3acb53'),
(328, 53, 61, 7, 0, 5, '2015-11-17 18:47:48', '2015-11-17 18:47:48', 'c617fff7-e772-4383-80e4-b0977ec13f41'),
(329, 53, 61, 3, 0, 6, '2015-11-17 18:47:48', '2015-11-17 18:47:48', 'f2ed4814-518a-4216-a1fa-418b7215ea5b'),
(330, 53, 61, 8, 0, 7, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '5b7da91a-c4e9-4dd9-8032-9b7d6d49ec98'),
(331, 54, 62, 11, 1, 1, '2015-11-20 00:45:37', '2015-11-20 00:45:37', '6e2ad730-a705-4193-b298-46b57a0f8218'),
(332, 54, 62, 12, 1, 2, '2015-11-20 00:45:37', '2015-11-20 00:45:37', '2371bfc5-1c3b-4a87-9d4c-fded13193795'),
(333, 56, 63, 4, 0, 1, '2015-11-20 00:54:56', '2015-11-20 00:54:56', 'c647cd7a-da7a-4e81-96fc-45e2da21e2c4'),
(334, 56, 63, 5, 0, 2, '2015-11-20 00:54:56', '2015-11-20 00:54:56', 'd65ecd27-01df-420d-b5a6-90b2ae6d1bdb'),
(335, 56, 63, 6, 0, 3, '2015-11-20 00:54:56', '2015-11-20 00:54:56', 'a98fc9ed-ec3b-4539-b696-e88e784cbdc3'),
(336, 56, 63, 13, 0, 4, '2015-11-20 00:54:56', '2015-11-20 00:54:56', '9e4c0c4f-fc4b-47d5-a1b7-d3ead05de654'),
(337, 56, 63, 7, 0, 5, '2015-11-20 00:54:56', '2015-11-20 00:54:56', '681b5ec5-4089-4e15-aa11-e9ece425b5ff'),
(338, 56, 63, 3, 0, 6, '2015-11-20 00:54:56', '2015-11-20 00:54:56', 'ecf6160d-d593-4595-ae9a-a65537768638'),
(339, 56, 63, 8, 0, 7, '2015-11-20 00:54:56', '2015-11-20 00:54:56', 'e437a5e2-9089-404b-b858-729882fcad32'),
(340, 58, 64, 4, 0, 1, '2015-11-20 10:26:42', '2015-11-20 10:26:42', '0f8427ff-f9b4-4c22-bc56-3376e93d3630'),
(341, 58, 64, 5, 0, 2, '2015-11-20 10:26:42', '2015-11-20 10:26:42', '7b3a1b2e-35b8-4586-bca4-0b2a4e991405'),
(342, 58, 64, 6, 0, 3, '2015-11-20 10:26:42', '2015-11-20 10:26:42', 'fb9d96a0-b36f-4bea-b88c-848271a8fa43'),
(343, 58, 64, 13, 0, 4, '2015-11-20 10:26:42', '2015-11-20 10:26:42', '196d3eb2-b484-48d6-b30d-4692e1753f96'),
(344, 58, 64, 7, 0, 5, '2015-11-20 10:26:42', '2015-11-20 10:26:42', 'a4fedaef-af80-4985-8443-49c400ed5682'),
(345, 58, 64, 3, 0, 6, '2015-11-20 10:26:42', '2015-11-20 10:26:42', 'd5998394-d9db-4cfa-9d5e-e526ae73e9ea'),
(346, 58, 64, 8, 0, 7, '2015-11-20 10:26:42', '2015-11-20 10:26:42', '44e9efb1-e152-405e-a562-d0f9ac74a529'),
(360, 63, 68, 4, 0, 1, '2015-11-20 11:21:07', '2015-11-20 11:21:07', 'a2e2ae7c-4626-450c-b9d6-ae7bff64ea95'),
(361, 63, 68, 5, 0, 2, '2015-11-20 11:21:07', '2015-11-20 11:21:07', '8e685d92-3e36-48ca-9fa3-c9bd0161dc13'),
(362, 63, 68, 6, 0, 3, '2015-11-20 11:21:07', '2015-11-20 11:21:07', '3204fcc2-930d-41b8-9f7b-2960c427d1a7'),
(363, 63, 68, 13, 0, 4, '2015-11-20 11:21:07', '2015-11-20 11:21:07', 'e353f0b9-d570-4339-bc6b-2b4b564b2792'),
(364, 63, 68, 7, 0, 5, '2015-11-20 11:21:07', '2015-11-20 11:21:07', '35d2227e-d300-438b-90da-aa0ea8af343c'),
(365, 63, 68, 3, 0, 6, '2015-11-20 11:21:07', '2015-11-20 11:21:07', 'e2c0d327-3ab8-4341-ac61-8d88392a9d16'),
(366, 63, 68, 8, 0, 7, '2015-11-20 11:21:07', '2015-11-20 11:21:07', 'd8c21bfe-4e34-4234-a958-2b51f17223e6'),
(406, 67, 75, 43, 0, 1, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '19af0fe3-0c3e-49c5-81f2-375cf1f3e773'),
(407, 67, 75, 42, 0, 2, '2015-11-20 12:50:42', '2015-11-20 12:50:42', 'b63b2a0e-70fd-4ed8-90ce-9f2b25d22678'),
(408, 67, 75, 38, 0, 3, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '1645f6c1-67d4-432d-955a-bbf2fa6aae2d'),
(409, 67, 75, 15, 0, 4, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '0e672c26-c392-4453-be28-b7c2ed812057'),
(410, 67, 75, 39, 0, 5, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '36a1874a-789a-4efb-a60a-f9146a9861c5'),
(411, 67, 75, 40, 0, 6, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '7627810e-aab4-449a-be91-7bae9d4a159f'),
(412, 67, 75, 41, 0, 7, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '3e286481-774e-4597-a84f-2e7ebfbfa426'),
(413, 67, 76, 4, 0, 1, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '12decd42-fc14-46ea-911f-d6c25129c4cd'),
(414, 67, 76, 5, 0, 2, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '52c8059d-8fb6-4d5b-8b10-af09bfddd270'),
(415, 67, 76, 6, 0, 3, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '86caf05b-1daf-4258-8185-c7304e4f8338'),
(416, 67, 76, 13, 0, 4, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '07d91829-abfa-4139-bfb6-273e866f93bd'),
(417, 67, 76, 7, 0, 5, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '2b7deeb8-c1ab-4483-8956-8303037f10b2'),
(418, 67, 76, 3, 0, 6, '2015-11-20 12:50:42', '2015-11-20 12:50:42', 'b3b1a89a-ffc2-4f92-951a-d504c0ab6d28'),
(419, 67, 76, 8, 0, 7, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '83672fc8-f567-4f79-aad8-40a186891595');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouts`
--

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2015-11-13 22:54:20', '2015-11-13 22:54:20', '42857387-b276-4898-b6d0-4529a1e528bf'),
(5, 'Entry', '2015-11-13 22:54:20', '2015-11-13 22:54:20', 'cb27085e-f869-47d4-8fb5-6a7576c3fe85'),
(6, 'Asset', '2015-11-17 07:49:49', '2015-11-17 07:49:49', '899e17d5-f897-43f9-be21-995cc928803a'),
(7, 'Asset', '2015-11-17 08:00:19', '2015-11-17 08:00:19', '634bd7cc-da51-4062-8f3a-f1270f91d93a'),
(8, 'Asset', '2015-11-17 08:00:40', '2015-11-17 08:00:40', '64a38c4a-d53f-4f12-bd57-f68483624f96'),
(15, 'Entry', '2015-11-17 09:05:24', '2015-11-17 09:05:24', '7d82852e-e307-4c87-90a1-dcd4facdc303'),
(21, 'Entry', '2015-11-17 09:55:43', '2015-11-17 09:55:43', '066c8946-20c6-4db3-9042-95f9a9738baa'),
(26, 'Entry', '2015-11-17 11:27:52', '2015-11-17 11:27:52', 'd8c5ef77-543d-4b33-b23e-530364d2923c'),
(28, 'Entry', '2015-11-17 11:35:05', '2015-11-17 11:35:05', 'feabbd85-3331-4eef-a1c8-20628d34aeee'),
(29, 'Entry', '2015-11-17 11:39:33', '2015-11-17 11:39:33', 'cfd97edc-fc3b-4c52-a9d3-026b6ffd24a4'),
(36, 'Entry', '2015-11-17 12:39:54', '2015-11-17 12:39:54', '611f8a60-ff8b-4d59-b9c8-6779dcb3651f'),
(39, 'Entry', '2015-11-17 13:15:56', '2015-11-17 13:15:56', 'd56a1959-febe-40b0-aa6e-5df508ddef1f'),
(41, 'MatrixBlock', '2015-11-17 13:38:20', '2015-11-17 13:38:20', '64814739-7e8b-444f-b413-ec02f5851028'),
(42, 'Asset', '2015-11-17 14:03:56', '2015-11-17 14:03:56', 'e56baf91-7b6d-49ab-813c-476b4a4fb054'),
(45, 'Entry', '2015-11-17 14:11:13', '2015-11-17 14:11:13', '2f4acf27-08fc-49de-b082-b18255e9d212'),
(49, 'Entry', '2015-11-17 14:20:15', '2015-11-17 14:20:15', '8c0a1a15-6176-454f-9648-09be30357230'),
(50, 'Entry', '2015-11-17 15:13:30', '2015-11-17 15:13:30', 'f69aaf3e-60e1-4c1e-bd30-bf5f652bd935'),
(51, 'Entry', '2015-11-17 17:24:37', '2015-11-17 17:24:37', '5a0a6910-255d-4bcb-89bb-3feca98e42fb'),
(53, 'Entry', '2015-11-17 18:47:48', '2015-11-17 18:47:48', 'c3be3dc7-d1d5-4646-8b43-3182c0b0a0b9'),
(54, 'MatrixBlock', '2015-11-20 00:45:37', '2015-11-20 00:45:37', '27c1fad8-e2d0-4d9f-82df-4f2297b579e0'),
(56, 'GlobalSet', '2015-11-20 00:54:56', '2015-11-20 00:54:56', '57f6da42-c812-453f-af59-f2a85c43c096'),
(58, 'Entry', '2015-11-20 10:26:42', '2015-11-20 10:26:42', '365f0d34-5a1e-4ecd-abd5-aacf5c0762c7'),
(63, 'Entry', '2015-11-20 11:21:07', '2015-11-20 11:21:07', '682e5903-a8b9-47e0-bb62-c511e6b58b8c'),
(67, 'Entry', '2015-11-20 12:50:42', '2015-11-20 12:50:42', '9399d225-122b-426c-bbf4-e108ee794f12');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouttabs`
--

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 5, 'Content', 1, '2015-11-13 22:54:20', '2015-11-13 22:54:20', '10e4c9d1-dace-4bef-b06d-11a687e4153c'),
(10, 15, 'Content', 1, '2015-11-17 09:05:24', '2015-11-17 09:05:24', 'c517a838-c250-49fe-b03d-45f4074bf2bb'),
(11, 15, 'Seo', 2, '2015-11-17 09:05:24', '2015-11-17 09:05:24', '140a94b8-a2d2-442c-a2eb-1f7c58e1a9f7'),
(20, 21, 'Content', 1, '2015-11-17 09:55:43', '2015-11-17 09:55:43', 'd97ee5f8-2f45-4a33-90b6-09f60154fd9f'),
(21, 21, 'Seo', 2, '2015-11-17 09:55:43', '2015-11-17 09:55:43', '870c7d5b-e5d2-486a-96fa-20710b4901da'),
(28, 26, 'Team', 1, '2015-11-17 11:27:52', '2015-11-17 11:27:52', '05e6151d-9fe6-41ad-9e38-444d2488d475'),
(29, 26, 'Seo', 2, '2015-11-17 11:27:52', '2015-11-17 11:27:52', '3c95f56e-c656-42be-b622-c2d5049b7ac9'),
(32, 28, 'About', 1, '2015-11-17 11:35:05', '2015-11-17 11:35:05', '042b9cf9-d0d0-4111-a3f5-98976133447d'),
(33, 28, 'Seo', 2, '2015-11-17 11:35:05', '2015-11-17 11:35:05', '96da1db2-9ff0-44c7-9eac-354e4b5bf6bc'),
(34, 29, 'Team', 1, '2015-11-17 11:39:33', '2015-11-17 11:39:33', '48b33277-49ac-4a8d-b78f-84dab5d05406'),
(35, 29, 'Seo', 2, '2015-11-17 11:39:33', '2015-11-17 11:39:33', 'fbe29270-0451-4ca3-b703-537a63bacc2b'),
(44, 36, 'About', 1, '2015-11-17 12:39:54', '2015-11-17 12:39:54', 'aaef625e-6dd9-4482-8900-607b3782d055'),
(45, 36, 'Seo', 2, '2015-11-17 12:39:54', '2015-11-17 12:39:54', '33e24321-cbc7-47ee-b425-3458a27df345'),
(47, 39, 'Expertise', 1, '2015-11-17 13:15:56', '2015-11-17 13:15:56', 'db89f853-45c2-4447-8cac-3b1748d793ab'),
(48, 39, 'Seo', 2, '2015-11-17 13:15:56', '2015-11-17 13:15:56', '0f690f31-45d2-4c66-a991-e35eb493b5bb'),
(50, 41, 'Content', 1, '2015-11-17 13:38:20', '2015-11-17 13:38:20', '392a234b-53fc-4893-a094-bd8ded50a979'),
(52, 45, 'Publications', 1, '2015-11-17 14:11:13', '2015-11-17 14:11:13', '23cefba5-7b41-4ddb-a8f1-9253f037c725'),
(54, 49, 'Seo', 1, '2015-11-17 14:20:15', '2015-11-17 14:20:15', '36925ccf-292c-4574-ae9a-d74ae37626d6'),
(55, 50, 'Content', 1, '2015-11-17 15:13:30', '2015-11-17 15:13:30', 'a6859f4e-2812-499b-b1b9-55e722a5d930'),
(56, 50, 'Seo', 2, '2015-11-17 15:13:30', '2015-11-17 15:13:30', 'd6b516a1-d836-432c-b72b-b23942dfc080'),
(57, 51, 'Publications', 1, '2015-11-17 17:24:37', '2015-11-17 17:24:37', '3be90477-d4a7-4b6b-b991-9e1e3c9aca61'),
(60, 53, 'Team', 1, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '942c14ab-8435-4a67-9708-9d12aaef5676'),
(61, 53, 'Seo', 2, '2015-11-17 18:47:48', '2015-11-17 18:47:48', '029e8d84-9344-460f-99d9-1cccb9d3b465'),
(62, 54, 'Content', 1, '2015-11-20 00:45:37', '2015-11-20 00:45:37', 'c5a66c79-b2e1-4f3a-8440-6442662b3c3d'),
(63, 56, 'Content', 1, '2015-11-20 00:54:56', '2015-11-20 00:54:56', 'ea03bfa5-fd5e-4fc3-b699-76b594d4cb7b'),
(64, 58, 'Seo', 1, '2015-11-20 10:26:42', '2015-11-20 10:26:42', '1a6e751d-6e59-4b52-bc28-cba29e79c6f2'),
(68, 63, 'Seo', 1, '2015-11-20 11:21:07', '2015-11-20 11:21:07', 'd6d091b0-ef28-4acc-b575-d0bd9ef5c88f'),
(75, 67, 'Cases and Results', 1, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '412ab4dc-9c16-449b-8d12-1a6a762dc06c'),
(76, 67, 'Seo', 2, '2015-11-20 12:50:42', '2015-11-20 12:50:42', '4074fdce-abb4-43bf-bd19-770c2327c8f1');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fields`
--

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', '', 0, 'RichText', '{"configFile":"Standard.json","cleanupHtml":"","purifyHtml":"","columnType":"text"}', '2015-11-13 22:54:20', '2015-11-17 10:10:31', '0400679b-7d04-458f-9fd2-d27cc7e9f168'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{"source":"taggroup:1"}', '2015-11-13 22:54:20', '2015-11-13 22:54:20', '4b457b37-eeb9-4c0b-b9ed-7ad9b1645cfb'),
(3, 2, 'SEO Title', 'seoTitle', 'global', 'SEO Title, will use title of page if blank', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-17 07:26:11', '2015-11-17 07:26:11', '8a2c2607-29ef-47e9-b000-f8e666942723'),
(4, 2, 'SEO Author', 'seoAuthor', 'global', 'Author of Content will use GBC if blank', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-17 07:27:39', '2015-11-17 07:27:39', '919a2a1d-d34a-4e39-91d9-875a53dfd17f'),
(5, 2, 'SEO Canonical URL', 'seoCanonical', 'global', 'Canonical URL of page', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-17 07:30:19', '2015-11-17 08:30:01', '1eec4226-6896-4063-aa33-f86098cde60a'),
(6, 2, 'SEO Description', 'seoDescription', 'global', 'Page Description, keep the character count below 160 counts', 0, 'PlainText', '{"placeholder":"","maxLength":"160","multiline":"","initialRows":"4"}', '2015-11-17 07:35:10', '2015-11-17 07:35:10', '0d7629cf-257a-4e31-bca6-fb44c18df8fa'),
(7, 2, 'SEO Keywords', 'seoKeywords', 'global', 'Page Keywords', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-17 07:45:34', '2015-11-17 07:45:34', '2d82c714-89c2-4ae7-81ff-73656ba9e839'),
(8, 2, 'SEO Type', 'seoType', 'global', 'Type of content', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-17 07:46:36', '2015-11-17 07:46:36', 'dd0edc30-9091-497e-a3f9-c160c3d27b2b'),
(9, 3, 'About Text', 'aboutText', 'global', 'Text for the about us landing page', 0, 'RichText', '{"configFile":"Standard.json","cleanupHtml":"","purifyHtml":"","columnType":"text"}', '2015-11-17 08:02:13', '2015-11-17 10:00:07', '073eed14-54af-4543-80ac-c8b1a8007222'),
(10, 3, 'Clients', 'clients', 'global', 'Enter client assets. Name and Logo', 0, 'Matrix', '{"maxBlocks":null}', '2015-11-17 08:05:29', '2015-11-20 00:45:37', '9bcd7ec5-7e2d-4f6f-bff5-fd11e3677be5'),
(11, NULL, 'Client Name', 'clientName', 'matrixBlockType:1', 'Name of client. e.g. Exxon Mobil', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-17 08:05:29', '2015-11-20 00:45:37', 'bcdb2bb2-f223-4d63-82e1-19b6ed0f6a75'),
(12, NULL, 'Client Logo', 'clientLogo', 'matrixBlockType:1', 'Upload client logo', 0, 'Assets', '{"useSingleFolder":"1","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"2","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"1","viewMode":"large","selectionLabel":"Upload Logo"}', '2015-11-17 08:05:29', '2015-11-20 00:45:37', '4f6d577e-5b5e-4bbf-be1d-1a4e974e35d0'),
(13, 2, 'SEO Image', 'seoImage', 'global', '', 0, 'Assets', '{"useSingleFolder":"1","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"1","viewMode":"large","selectionLabel":""}', '2015-11-17 08:40:30', '2015-11-17 08:40:30', '73742058-a9ac-4f87-8f6e-55d462ddfe60'),
(14, 3, 'Image', 'image', 'global', '', 0, 'Assets', '{"useSingleFolder":"1","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"","viewMode":"large","selectionLabel":""}', '2015-11-17 08:42:42', '2015-11-17 08:42:42', '213c62f5-0e14-4bd7-89fd-d8555f5fef5b'),
(15, 3, 'Thumbnail', 'thumbnail', 'global', '', 0, 'Assets', '{"useSingleFolder":"1","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"1","viewMode":"list","selectionLabel":""}', '2015-11-17 08:43:52', '2015-11-17 08:43:52', '4292df84-16bf-4fa0-8a46-15334e582588'),
(16, 3, 'Body Content', 'bodyContent', 'global', '', 0, 'RichText', '{"configFile":"Standard.json","cleanupHtml":"","purifyHtml":"","columnType":"text"}', '2015-11-17 09:04:38', '2015-11-17 10:10:22', 'fdb104fd-ff62-4ed6-8ab1-66919874710d'),
(17, 3, 'Clients Text', 'clientsText', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-17 10:49:35', '2015-11-17 10:49:35', '464b2724-28a6-4add-9d3b-fac19ca257de'),
(18, 4, 'Position', 'position', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-17 11:09:28', '2015-11-17 11:09:28', 'af6032e0-377d-4b40-ac4f-ae0e0fdd5a4f'),
(19, 4, 'Intro', 'intro', 'global', '', 0, 'RichText', '{"configFile":"Simple.json","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-11-17 11:10:08', '2015-11-17 11:10:08', 'f0fccd16-a742-4c23-9875-76d095dccb0e'),
(20, 4, 'Education', 'education', 'global', '', 0, 'Table', '{"columns":{"col1":{"heading":"Item","handle":"item","width":"","type":"singleline"}},"defaults":[]}', '2015-11-17 11:14:27', '2015-11-17 12:55:51', '6d54e7ee-f128-4871-919f-eedc252f98b3'),
(21, 4, 'Expertise', 'expertise', 'global', '', 0, 'Table', '{"columns":{"col1":{"heading":"Item","handle":"item","width":"","type":"singleline"}},"defaults":[]}', '2015-11-17 11:14:50', '2015-11-17 13:02:07', 'b5a412e6-a37d-4079-abac-34bc437d8a6b'),
(22, 4, 'Memberships', 'memberships', 'global', '', 0, 'Table', '{"columns":{"col1":{"heading":"Item`","handle":"item","width":"","type":"singleline"}},"defaults":[]}', '2015-11-17 11:15:16', '2015-11-17 13:02:16', '29964aba-f019-48c5-b6d5-e808f2a1c8a5'),
(23, 4, 'Select Experiences', 'experiences', 'global', '', 0, 'Table', '{"columns":{"col1":{"heading":"Item","handle":"item","width":"","type":"singleline"}},"defaults":[]}', '2015-11-17 11:15:53', '2015-11-17 13:02:26', '85b11f3c-6382-4412-8923-3f2cfcb86433'),
(24, 4, 'Awards', 'awards', 'global', '', 0, 'Table', '{"columns":{"col1":{"heading":"Item","handle":"item","width":"","type":"singleline"}},"defaults":{"row1":{"col1":""}}}', '2015-11-17 11:16:13', '2015-11-17 11:16:13', 'ac237049-e082-4d55-a3a1-f7e07757c933'),
(26, 5, 'Expertise', 'Ex', 'global', '', 0, 'Matrix', '{"maxBlocks":null}', '2015-11-17 13:13:50', '2015-11-17 13:38:20', 'f9d47b03-1903-40de-8791-c3b26f49d080'),
(27, NULL, 'Content', 'exContent', 'matrixBlockType:2', '', 0, 'RichText', '{"configFile":"Standard.json","cleanupHtml":"","purifyHtml":"","columnType":"text"}', '2015-11-17 13:13:51', '2015-11-17 13:38:20', '8328bee1-bf38-4bc4-926f-2796830b395f'),
(28, NULL, 'Areas of Interest', 'exAreasOfInterest', 'matrixBlockType:2', '', 0, 'Table', '{"columns":{"col1":{"heading":"item","handle":"item","width":"","type":"singleline"}},"defaults":[]}', '2015-11-17 13:13:51', '2015-11-17 13:38:20', '210f4d9a-aef1-4d36-8afb-c3a687d9c622'),
(29, 5, 'Relevant Experiences', 'relevantExperiences', 'global', '', 0, 'Table', '{"columns":{"col1":{"heading":"Item","handle":"item","width":"","type":"singleline"}},"defaults":[]}', '2015-11-17 13:14:40', '2015-11-17 13:25:40', '5117ece7-b385-4878-9973-9bda44723331'),
(30, 5, 'Relevant Experiences Intro', 'relevantExperiencesIntro', 'global', '', 0, 'RichText', '{"configFile":"Standard.json","cleanupHtml":"","purifyHtml":"","columnType":"text"}', '2015-11-17 13:14:52', '2015-11-17 13:17:04', '80a77411-0841-4839-95c8-926b5e3ffbfc'),
(31, NULL, 'Title', 'exTitle', 'matrixBlockType:2', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-17 13:33:39', '2015-11-17 13:38:20', '06c17852-7d39-4f13-b011-3eb7f4f41bb9'),
(32, 6, 'Summary', 'summary', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-17 14:03:06', '2015-11-17 14:03:06', '23cbf150-4273-4fa1-80b6-5562334402b9'),
(33, 6, 'Publication', 'publication', 'global', 'Publication File (Preferably PDF)', 0, 'Assets', '{"useSingleFolder":"1","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"4","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["pdf","powerpoint","word"],"limit":"","viewMode":"large","selectionLabel":"Upload publication file"}', '2015-11-17 14:05:03', '2015-11-17 14:05:03', '813c7062-88b7-4971-a7e4-2120e836d3f0'),
(34, 3, 'Banners', 'banners', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":["folder:1"],"defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"","viewMode":"large","selectionLabel":"Upload banner Image"}', '2015-11-17 15:12:27', '2015-11-17 15:12:27', 'f5a89f85-3fe1-41fd-9951-e40147c0d889'),
(35, 4, 'Appointments', 'appointments', 'global', '', 0, 'RichText', '{"configFile":"Simple.json","cleanupHtml":"","purifyHtml":"","columnType":"text"}', '2015-11-17 18:02:01', '2015-11-17 18:07:43', 'ec02ef27-ac17-4bfd-b776-f05b293955fc'),
(36, 4, 'Consultancy Record', 'consultancyRecord', 'global', '', 0, 'Table', '{"columns":{"col1":{"heading":"Item","handle":"item","width":"","type":"singleline"}},"defaults":[]}', '2015-11-17 18:02:38', '2015-11-17 18:02:38', '099d47e2-79ca-4483-b5e4-7b48367ba90e'),
(37, 4, 'Languages', 'languages', 'global', '', 0, 'Table', '{"columns":{"col1":{"heading":"item","handle":"item","width":"","type":"singleline"}},"defaults":[]}', '2015-11-17 18:45:14', '2015-11-17 18:45:14', 'b1357c77-f8f0-4b88-aa4d-221a704e07a4'),
(38, 7, 'Client', 'client', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-20 11:15:47', '2015-11-20 11:15:47', '29df698e-c607-436f-8a6f-61f3ec6b3e7b'),
(39, 7, 'Overview', 'overview', 'global', '', 0, 'RichText', '{"configFile":"Simple.json","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-11-20 11:15:56', '2015-11-20 11:16:20', 'c3a37810-2e40-402b-895b-7d7826eee991'),
(40, 7, 'Solution', 'solution', 'global', '', 0, 'RichText', '{"configFile":"Simple.json","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-11-20 11:17:50', '2015-11-20 11:17:50', '4912d767-25ed-4a84-bf49-a6075a976e9d'),
(41, 7, 'Benefit', 'benefit', 'global', '', 0, 'RichText', '{"configFile":"Simple.json","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2015-11-20 11:18:04', '2015-11-20 11:18:04', 'b2d80392-03bc-437f-b46c-4bd7c49a248e'),
(42, 7, 'Suit Detail', 'suitDetail', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-20 12:46:42', '2015-11-20 12:49:52', 'e428af9a-9a70-4e6b-8646-e9fa89169b1e'),
(43, 7, 'Description', 'description', 'global', 'Short description of case. Should be short', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2015-11-20 12:50:20', '2015-11-20 12:50:20', 'c8eb552f-58f1-496e-84c6-e0a8357ccf23');

-- --------------------------------------------------------

--
-- Table structure for table `craft_globalsets`
--

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_globalsets`
--

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(82, 'Default', 'default', 56, '2015-11-20 00:53:49', '2015-11-20 00:54:56', '222b595c-f7e4-4d9a-97d6-f4ca370f40a6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_info`
--

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `build` int(11) unsigned NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `releaseDate` datetime NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `track` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `build`, `schemaVersion`, `releaseDate`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `track`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.5', 2724, '2.5.8', '2015-11-17 22:26:47', 2, 'Gbenga Biobaku & Co. (GBC)', 'http://gbc.dev', 'UTC', 1, 0, 'beta', '2015-11-13 22:54:15', '2015-11-19 23:26:14', 'f9521c3c-5393-4bb3-b429-084947bf7de7');

-- --------------------------------------------------------

--
-- Table structure for table `craft_locales`
--

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_locales`
--

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('en_us', 1, '2015-11-13 22:54:15', '2015-11-13 22:54:15', '3e993b0c-6b63-496e-9fa9-e9dbb42c592b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocks`
--

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_matrixblocks`
--

INSERT INTO `craft_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `ownerLocale`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(26, 25, 26, 2, 1, NULL, '2015-11-17 13:36:16', '2015-11-20 08:10:25', '223b90f1-a81d-4acc-b803-ce39a80183de'),
(27, 25, 26, 2, 2, NULL, '2015-11-17 13:53:44', '2015-11-20 08:10:25', 'c7feab16-9bc7-495e-9a7e-78fc45b75df5'),
(28, 25, 26, 2, 3, NULL, '2015-11-17 13:53:44', '2015-11-20 08:10:26', 'e7eec152-77f3-4a30-b9b9-db9af85706e8'),
(29, 25, 26, 2, 4, NULL, '2015-11-17 13:53:44', '2015-11-20 08:10:26', '526e8a81-f096-4d63-9617-a255efde19fd'),
(90, 21, 10, 1, 1, NULL, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '8dec239f-a892-4beb-99c9-d85d209f79f1'),
(91, 21, 10, 1, 2, NULL, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '9578a977-574e-456e-b515-2b1b363a5860'),
(92, 21, 10, 1, 3, NULL, '2015-11-20 01:07:11', '2015-11-20 14:44:02', 'd7cfe4a6-cfed-4688-8658-fce05c9589f6'),
(93, 21, 10, 1, 4, NULL, '2015-11-20 01:07:11', '2015-11-20 14:44:02', 'a6f98bb2-d30c-4664-b4f7-e04f1c8e1d44'),
(94, 21, 10, 1, 5, NULL, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '8885b263-6a29-4133-b8e3-a793de54c385'),
(95, 21, 10, 1, 6, NULL, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '1b4b260b-9add-46d7-9615-1d961d0f251c'),
(96, 21, 10, 1, 7, NULL, '2015-11-20 01:07:11', '2015-11-20 14:44:02', 'b2a2cb6e-3fb9-4d1e-8e1e-d4e0c8d4c37a'),
(97, 21, 10, 1, 8, NULL, '2015-11-20 01:07:11', '2015-11-20 14:44:02', '15fd0398-fbda-4c68-ac08-5e8e4ef516da'),
(100, 21, 10, 1, 9, NULL, '2015-11-20 01:09:13', '2015-11-20 14:44:02', 'd0a490ef-8600-40c8-8ded-0e261df53d81'),
(101, 21, 10, 1, 10, NULL, '2015-11-20 01:09:13', '2015-11-20 14:44:02', '92cc7aea-ae2d-419a-b39a-9921f134a862');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocktypes`
--

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_matrixblocktypes`
--

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 10, 54, 'Client', 'client', 1, '2015-11-17 08:05:29', '2015-11-20 00:45:37', '100b0c2a-2665-42b8-af71-b63b0fce8060'),
(2, 26, 41, 'Expertise', 'expertise', 1, '2015-11-17 13:13:51', '2015-11-17 13:38:20', '4d6d7d15-6802-40d5-824f-8bf33cb3e761');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_clients`
--

CREATE TABLE `craft_matrixcontent_clients` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_client_clientName` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_matrixcontent_clients`
--

INSERT INTO `craft_matrixcontent_clients` (`id`, `elementId`, `locale`, `field_client_clientName`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 90, 'en_us', 'Exxon Mobil', '2015-11-20 01:07:11', '2015-11-20 14:44:02', '800e0270-7a5e-4c74-baf2-22a735958c72'),
(2, 91, 'en_us', 'Statoil', '2015-11-20 01:07:11', '2015-11-20 14:44:02', 'abb16373-22b4-4b67-a185-36174dbefa8d'),
(3, 92, 'en_us', 'Baker Hughes', '2015-11-20 01:07:11', '2015-11-20 14:44:02', '36d9a480-0c8c-4822-900f-7d12cddef0fe'),
(4, 93, 'en_us', 'BJ Services Nigeria Limited', '2015-11-20 01:07:11', '2015-11-20 14:44:02', '991cf7d5-8c35-4465-9130-6368a7495c49'),
(5, 94, 'en_us', 'Parker Drilling', '2015-11-20 01:07:11', '2015-11-20 14:44:02', '19b6afea-560d-484e-bde2-52dfe6b2ed98'),
(6, 95, 'en_us', 'Oceaneering Nigeria', '2015-11-20 01:07:11', '2015-11-20 14:44:02', '8fe869f8-a312-47a0-93f0-20f1417d1c87'),
(7, 96, 'en_us', 'African Capital Alliance', '2015-11-20 01:07:11', '2015-11-20 14:44:02', 'db23b510-bd86-46b9-bcc9-3775404b3298'),
(8, 97, 'en_us', 'Rhino Linings', '2015-11-20 01:07:11', '2015-11-20 14:44:02', '6ae63154-3943-4b56-b2e2-be3323a4f955'),
(9, 100, 'en_us', 'Pentagon Petroleum Limited', '2015-11-20 01:09:13', '2015-11-20 14:44:02', 'f606a442-309b-43c5-be86-8f4899f4e86b'),
(10, 101, 'en_us', 'Taba Nigeria', '2015-11-20 01:09:13', '2015-11-20 14:44:02', '4036ae6d-10fc-4f14-8d5a-ea28e9decde3');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_ex`
--

CREATE TABLE `craft_matrixcontent_ex` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_expertise_exContent` text COLLATE utf8_unicode_ci,
  `field_expertise_exAreasOfInterest` text COLLATE utf8_unicode_ci,
  `field_expertise_exTitle` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_matrixcontent_ex`
--

INSERT INTO `craft_matrixcontent_ex` (`id`, `elementId`, `locale`, `field_expertise_exContent`, `field_expertise_exAreasOfInterest`, `field_expertise_exTitle`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 26, 'en_us', '<p>Gbenga Biobaku & Co. has developed an extensive Energy Project Development practice, representing parties on both sides of the spectrum. Our expertise encompasses the oil and gas, power, mining and infrastructure sectors of the Nigerian economy.</p>\r\n\r\n<p>As counsel to some major and developing energy players, GBC project scope has covered securing foreign investment, project financing transactions, advisory, federal regulatory approvals, operations and maintenance contracts, site acquisitions and other related corporate and commercial transactions.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>With the recent divestments and local participation law and the influx of foreign investment in the Nigerian Oil and Gas industry, GBC has been recognized for its ability to prescribe working business modules, and joint venture arrangements that ensures return on investment (ROI) for investors and the protection and sustainability of its indigenous clients.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>Our team has substantial experience in advising foreign and indigenous investors in Nigeria on energy projects financing. We also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy, mining and oil and gas sectors.</p>', '[{"col1":"OIL & GAS"},{"col1":"OIL SERVICES"},{"col1":"PROJECT FINANCE"},{"col1":"POWER PROJECTS"},{"col1":"PRIVATISATION & INFRASTRUCTURE DEVELOPMENTS"},{"col1":"SOLID MINERALS"},{"col1":"ENVIRONMENTAL LAW & COMMUNITY RELATIONS"}]', 'Energy & Projects', '2015-11-17 13:36:15', '2015-11-20 08:10:25', 'f7f00954-6796-4464-9c20-e433b13ed57c'),
(2, 27, 'en_us', '<p>The GBC’s Corporate and Commercial Practice department represents a broad range of corporate and business interests. The group delivers responsive, innovative and practical legal solutions in diverse areas including: Mergers & Acquisitions, Capital Markets, Banking & Finance, Offshore acquisitions and investments, Trust Arrangements, Estate Planning, Private Equity & Venture Capital, Intellectual Property, Foreign Investments & Joint Ventures, Privatization & Infrastructure Developments, Telecommunications, Information Technology, Immigration, Commercial Property Development & Conveyancing, Taxation, Employment & Labor Relations, Aircraft & Ship Financing, Business Advisory & Company Secretarial Services</p>\r\n\r\n\r\n\r\n<p>GBC runs the gamut of corporate and commercial law practice with the aim of providing a seamless service, integrating diverse clients’ business interests. Our work with our clients involves ensuring compliance with standard business practices,&nbsp;procedures and operations within the national and local laws applicable to their specific industry.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>Additionally, we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures.</p>', '[{"col1":"MERGERS & ACQUISITIONS"},{"col1":"CAPITAL MARKETS"},{"col1":"BANKING & FINANCE"},{"col1":"PRIVATE EQUITY & VENTURE CAPITAL"},{"col1":"PRIVATIZATION & INFRASTRUCTURE DEVELOPMENT"},{"col1":"BUSINESS ADVISORY "},{"col1":"INTERNATIONAL TRADE"},{"col1":"FOREIGN INVESTMENTS & JOINT VENTURES"},{"col1":"TELECOMMUNICATIONS"},{"col1":"INFORMATION TECHNOLOGY"},{"col1":"IMMIGRATION"},{"col1":"COMMERCIAL PROPERTY DEVELOPMENT & CONVEYANCING"},{"col1":"TAXATION"},{"col1":"EMPLOYMENT & LABOR RELATIONS"},{"col1":"AIRCRAFT & SHIP FINANCING"},{"col1":"COMPANY SECRETARIAL SERVICES"}]', 'General Corporate Commercial', '2015-11-17 13:53:43', '2015-11-20 08:10:25', 'bc084be2-f319-4a6c-8e7f-8979a3a907ef'),
(3, 28, 'en_us', '<p>The GBC’s litigation and arbitration practice is handled by the seasoned Dispute Resolution Department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit. Commercial and financial disputes and litigations are often complex; the department appreciates the need to conduct commercial and other litigation matters with business expediency in view, in that regard, we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients.</p>\r\n\r\n\r\n\r\n<p>At Gbenga Biobaku & Co., we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation. Consequently, we advise on the use of alternative dispute resolution (ADR) mediums including negotiation, conciliation, mediation and arbitration in deserving cases.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>We have applied our expertise in litigation and different ADR methods with good results across industries relating to disputes arising from the oil and gas sector, claims for compensation, taxation, disputes arising from corporate governance, breach of contracts, employer/employee/industrial disputes, breach of fundamental rights claims, debt recovery, winding up of Companies, land disputes, claims for negligence, judicial review of executive actions, etc</p>', '[{"col1":"OIL & GAS LITIGATION"},{"col1":"ARBITRATION"},{"col1":"SHIPPING & INTERNATIONAL TRADE"},{"col1":"GENERAL COMMERCIAL LITIGATION"},{"col1":"ALTERNATIVE DISPUTE RESOLUTION"},{"col1":"EMPLOYMENT"},{"col1":"ENVIRONMENTAL LITIGATION"},{"col1":"FINANCIAL SERVICES LITIGATION"},{"col1":"SECURITIES LITIGATION AND ENFORCEMENT"}]', 'Litigation & Arbitration', '2015-11-17 13:53:44', '2015-11-20 08:10:25', '1ae60d58-0fca-45d1-a047-93db20e831ee'),
(4, 29, 'en_us', '<p>GBC provides legal services to its clients on issues stemming from Intellectual Property (“IP”). Our IP services include obtaining regulatory approval with the appropriate agencies such as the Ministry of Trade and Investment. We also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the National Office for Technology Acquisition and Promotion (“NOTAP”).</p>\r\n\r\n\r\n\r\n<p>With the tripled growth in the Nigerian economy in the last 10 years, new ideas and innovations are now being introduced into the nation’s business climate and these ideas and innovations have now become assets for various body corporates and Small-Medium enterprises. With this growth, ensuring the proper exploitation and protection of intellectual property (IP), whether it be patents, trade marks or designs, is a primary commercial objective.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>We provide practical and commercial legal advice at every stage in the life and development of an intellectual property right, from creation and exploitation to protection and enforcement. In addition, we provide registration of IP rights such as Patents, Trademarks and Industrial designs, and obtaining necessary business approvals from NOTAP and the Ministry of Trade and Investments.</p>', '[{"col1":"COPYRIGHT"},{"col1":"IP LITIGATION"},{"col1":"IP DUE DILIGENCE"},{"col1":"PATENTS & TRADEMARKS"},{"col1":"TECHNOLOGY TRANSACTIONS"},{"col1":"ANTITRUST LAW"}]', 'Intellectual Property (IP)', '2015-11-17 13:53:44', '2015-11-20 08:10:26', 'b682e211-a8bb-4f91-bdc9-e5885dd940b6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_migrations`
--

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', 'a010c70c-1d64-46ca-9b81-4135354249f7'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', 'cb1a081a-c61b-414a-994a-aeb03facf927'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '6323683f-310d-43bb-a29f-d2bb6e0feeb3'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', 'b38ae0a9-d95e-4554-b6b3-1813dae8a79b'),
(5, NULL, 'm140829_000001_single_title_formats', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '0a2fce20-9001-475a-8a9c-e9edeacda1e1'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', 'ef4412aa-07bf-4aed-bb18-3c9bfba5a695'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '1c65fd0c-ed52-4fbb-8558-ce1a2e77b6b2'),
(8, NULL, 'm141008_000001_elements_index_tune', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', 'ab48e9d2-9318-445a-9cf9-ececd915e7a8'),
(9, NULL, 'm141009_000001_assets_source_handle', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', 'cf969035-8a3c-4751-8b15-2719b0abc69a'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '86d485ce-9ee3-4cda-b4de-5cffeedf291a'),
(11, NULL, 'm141030_000000_plugin_schema_versions', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '43b9814e-18f8-4f88-a9fe-836fe6d41b07'),
(12, NULL, 'm141030_000001_drop_structure_move_permission', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '33a64296-52a5-44e6-a282-7c7a8f76023d'),
(13, NULL, 'm141103_000001_tag_titles', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '1d3b49cb-8b7a-4955-971b-d4bdb68cadb5'),
(14, NULL, 'm141109_000001_user_status_shuffle', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', 'c40430d7-ed34-4073-ab79-6c6c005bf051'),
(15, NULL, 'm141126_000001_user_week_start_day', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '68ef5946-87dc-407e-9402-a8d3fa3784ae'),
(16, NULL, 'm150210_000001_adjust_user_photo_size', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '81d85e7c-2db3-4694-87f7-a7ac64c36782'),
(17, NULL, 'm150724_000001_adjust_quality_settings', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '871c79b6-6997-4815-8e0e-3b8de9af7132'),
(18, NULL, 'm150827_000000_element_index_settings', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '888fded3-e266-4ba2-889b-1add23035b71'),
(19, NULL, 'm150918_000001_add_colspan_to_widgets', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '00292e5e-5aae-4694-bbec-a5e6ad05a1e5'),
(20, NULL, 'm151007_000000_clear_asset_caches', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', 'e9fa66e8-2e4b-4990-9651-596af6de69fb'),
(21, NULL, 'm151109_000000_text_url_formats', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '87f87db5-e0af-4b26-b733-0c822a5544e9'),
(22, NULL, 'm151110_000000_move_logo', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '2015-11-13 22:54:15', '49ac06f7-c55a-4f51-a6d0-a3b015acd1a2'),
(23, 1, 'm150212_145000_AmNav_renamePagesToNodes', '2015-11-17 07:54:30', '2015-11-17 07:54:30', '2015-11-17 07:54:30', '8c0168b6-9191-409d-936a-b66131d358d9'),
(24, 1, 'm150217_112800_AmNav_expandPageData', '2015-11-17 07:54:30', '2015-11-17 07:54:30', '2015-11-17 07:54:30', '7e793c43-7529-4f2b-a54f-328835123282'),
(25, 1, 'm150403_093000_AmNav_nodesWithElements', '2015-11-17 07:54:30', '2015-11-17 07:54:30', '2015-11-17 07:54:30', 'b810e241-a32c-4b7f-b93f-b4376b6aa907'),
(26, 1, 'm150512_105600_AmNav_addOptionalClass', '2015-11-17 07:54:30', '2015-11-17 07:54:30', '2015-11-17 07:54:30', '5b3d037f-5d60-4c92-9b0e-05f2ff555090'),
(27, NULL, 'm151117_000000_adjust_image_widthheight', '2015-11-19 23:26:14', '2015-11-19 23:26:14', '2015-11-19 23:26:14', 'de4c02c5-9713-44cc-a62e-38ef6f85d5c9');

-- --------------------------------------------------------

--
-- Table structure for table `craft_plugins`
--

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_plugins`
--

INSERT INTO `craft_plugins` (`id`, `class`, `version`, `schemaVersion`, `enabled`, `settings`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'AmNav', '1.7.0', NULL, 1, NULL, '2015-11-17 07:54:30', '2015-11-17 07:54:30', '2015-11-17 07:54:30', '3db9847c-25bb-4313-8cdb-dd170d3fba43');

-- --------------------------------------------------------

--
-- Table structure for table `craft_rackspaceaccess`
--

CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_relations`
--

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(42, 14, 6, NULL, 7, 1, '2015-11-17 10:24:10', '2015-11-17 10:24:10', '92469834-11e6-4554-9fcd-46e5d35d22f5'),
(47, 15, 22, NULL, 11, 1, '2015-11-17 12:20:17', '2015-11-17 12:20:17', '9292b831-fae1-43ae-be0b-db767b8780cf'),
(48, 14, 22, NULL, 12, 1, '2015-11-17 12:20:17', '2015-11-17 12:20:17', '273cddbd-17e3-473b-879b-d00018b7fe0c'),
(54, 33, 38, NULL, 37, 1, '2015-11-17 14:18:50', '2015-11-17 14:18:50', '85acba5a-9ead-47d1-8b92-b21a02e1bda4'),
(56, 34, 2, NULL, 40, 1, '2015-11-17 15:35:51', '2015-11-17 15:35:51', '428307d7-1d0f-48b6-9145-1a89a68f2790'),
(57, 34, 2, NULL, 42, 2, '2015-11-17 15:35:51', '2015-11-17 15:35:51', '67bf3549-401d-4f11-8d2d-4f1c1dd7c321'),
(60, 33, 35, NULL, 31, 1, '2015-11-17 17:29:32', '2015-11-17 17:29:32', 'c258f5a9-33e3-4eb8-9c88-7f3549e67d6b'),
(61, 2, 35, NULL, 45, 1, '2015-11-17 17:29:32', '2015-11-17 17:29:32', '9d40d7ab-b8d5-4e40-b558-83fd7fc219f4'),
(62, 2, 35, NULL, 46, 2, '2015-11-17 17:29:32', '2015-11-17 17:29:32', '6ee72200-3745-4988-94ec-61259e3a5a88'),
(63, 33, 36, NULL, 33, 1, '2015-11-17 17:31:00', '2015-11-17 17:31:00', '9a6ee526-0ebe-4c31-af5a-8aec11f0a9d0'),
(64, 2, 36, NULL, 47, 1, '2015-11-17 17:31:00', '2015-11-17 17:31:00', '88c20a48-9f1c-429c-938e-c59d0b26f572'),
(65, 2, 36, NULL, 48, 2, '2015-11-17 17:31:00', '2015-11-17 17:31:00', 'ae124365-1d49-4cd3-b28d-d62a8f9938be'),
(66, 2, 36, NULL, 49, 3, '2015-11-17 17:31:00', '2015-11-17 17:31:00', '600f53ee-12fb-4c8d-916a-5931a70f3ce5'),
(69, 15, 44, NULL, 43, 1, '2015-11-17 17:48:25', '2015-11-17 17:48:25', '9a42f975-7570-4435-b94b-21a83bb0d60e'),
(70, 14, 44, NULL, 50, 1, '2015-11-17 17:48:25', '2015-11-17 17:48:25', 'd84b54c0-68ba-4752-ace4-4a3f4bcb72f9'),
(76, 15, 24, NULL, 23, 1, '2015-11-17 18:11:13', '2015-11-17 18:11:13', 'c26edca0-f7d1-437b-8a14-7ef90c865144'),
(77, 14, 24, NULL, 52, 1, '2015-11-17 18:11:13', '2015-11-17 18:11:13', 'a0d53575-547e-4129-b3ce-32b6d4025970'),
(80, 15, 55, NULL, 53, 1, '2015-11-17 18:28:25', '2015-11-17 18:28:25', '0376331d-e5a7-49c8-a5e0-a8c19d2f4a69'),
(81, 14, 55, NULL, 54, 1, '2015-11-17 18:28:25', '2015-11-17 18:28:25', 'f2d15753-4eb2-4878-87cc-0fffea810046'),
(84, 15, 59, NULL, 57, 1, '2015-11-17 18:48:28', '2015-11-17 18:48:28', 'a8d5f874-3031-4205-ba7e-342358279819'),
(85, 14, 59, NULL, 58, 1, '2015-11-17 18:48:28', '2015-11-17 18:48:28', '5b19d5c3-cf15-4052-a1b8-82ef6d8ee4b3'),
(86, 15, 63, NULL, 61, 1, '2015-11-17 18:56:23', '2015-11-17 18:56:23', '07044dbf-033c-4bda-a6d1-8af1536b221e'),
(87, 14, 63, NULL, 62, 1, '2015-11-17 18:56:23', '2015-11-17 18:56:23', 'ab990a0f-ee8b-4432-a65b-5eecd1bf8d7a'),
(88, 15, 66, NULL, 64, 1, '2015-11-17 19:12:29', '2015-11-17 19:12:29', '43c33f06-1940-4be9-9e1b-c1d89769664d'),
(89, 14, 66, NULL, 65, 1, '2015-11-17 19:12:29', '2015-11-17 19:12:29', '18000be3-60fa-4d6c-b3b7-3cc461a3a999'),
(90, 15, 70, NULL, 69, 1, '2015-11-17 19:43:41', '2015-11-17 19:43:41', '58ec3efc-8d29-4f45-96e6-16da55dda1d9'),
(91, 14, 70, NULL, 68, 1, '2015-11-17 19:43:41', '2015-11-17 19:43:41', '0cf81555-346d-4d1e-9847-0c8ba7ba030b'),
(96, 15, 78, NULL, 74, 1, '2015-11-17 20:17:48', '2015-11-17 20:17:48', '859da14c-334f-4810-877d-5bef384e8a93'),
(97, 14, 78, NULL, 75, 1, '2015-11-17 20:17:48', '2015-11-17 20:17:48', 'd2dc96ed-a1af-4458-8fb3-59b74b21e98d'),
(98, 15, 73, NULL, 77, 1, '2015-11-17 20:28:08', '2015-11-17 20:28:08', '3c3135f1-095e-401c-8d2a-cc9bc6c8939f'),
(99, 14, 73, NULL, 76, 1, '2015-11-17 20:28:08', '2015-11-17 20:28:08', '59bf60c5-8cad-4e80-8015-0549bf4613fa'),
(100, 14, 9, NULL, 10, 1, '2015-11-19 23:18:49', '2015-11-19 23:18:49', '18fa75a2-0467-433a-8748-cb1a4fdc335a'),
(101, 13, 82, NULL, 83, 1, '2015-11-20 01:00:33', '2015-11-20 01:00:33', '8d4b014b-83eb-4109-a32d-2ee3a6183333'),
(131, 15, 72, NULL, 74, 1, '2015-11-20 02:07:15', '2015-11-20 02:07:15', '70ce92f2-81b5-4d2c-ac3d-85bb28e47d97'),
(132, 14, 72, NULL, 75, 1, '2015-11-20 02:07:15', '2015-11-20 02:07:15', 'a7e55a43-0c34-48c5-8de5-efabc9a0368d'),
(145, 33, 107, NULL, 106, 1, '2015-11-20 14:17:54', '2015-11-20 14:17:54', 'c396884f-afcd-404b-a065-24c2bab8a447'),
(146, 33, 109, NULL, 108, 1, '2015-11-20 14:18:10', '2015-11-20 14:18:10', '432020b0-4296-45e0-b16f-411170db1465'),
(147, 33, 111, NULL, 110, 1, '2015-11-20 14:19:09', '2015-11-20 14:19:09', '343ac8df-88cf-45eb-ab16-4d8d7f2d4c15'),
(148, 33, 113, NULL, 112, 1, '2015-11-20 14:19:38', '2015-11-20 14:19:38', '6664a669-d5fc-4c31-9ea5-4c6a2692ccdb'),
(149, 33, 115, NULL, 114, 1, '2015-11-20 14:20:05', '2015-11-20 14:20:05', 'edb8322b-75ca-4acb-b783-5b4eb831df5d'),
(150, 33, 117, NULL, 116, 1, '2015-11-20 14:20:46', '2015-11-20 14:20:46', 'e4bcd734-735b-43ed-b7df-dcf4e931fa81'),
(152, 33, 119, NULL, 118, 1, '2015-11-20 14:21:55', '2015-11-20 14:21:55', '0a206c85-9849-4670-8f15-a1162a8840f3'),
(153, 33, 121, NULL, 120, 1, '2015-11-20 14:22:44', '2015-11-20 14:22:44', 'e6269e19-97dc-40bc-8db2-51c440bb084d'),
(154, 33, 123, NULL, 122, 1, '2015-11-20 14:23:38', '2015-11-20 14:23:38', 'd39507b2-5f14-4ccb-a9e9-671c654174d8'),
(155, 33, 125, NULL, 124, 1, '2015-11-20 14:24:26', '2015-11-20 14:24:26', 'd80661ed-4f81-4e00-9f1e-4b12acfb4c4b'),
(156, 33, 127, NULL, 126, 1, '2015-11-20 14:25:17', '2015-11-20 14:25:17', 'f78499c9-9cba-43e2-831f-f2248259505b'),
(157, 15, 104, NULL, 105, 1, '2015-11-20 14:31:17', '2015-11-20 14:31:17', '2c69b814-8aa2-404a-adf0-55225eee21aa'),
(158, 12, 90, NULL, 79, 1, '2015-11-20 14:44:02', '2015-11-20 14:44:02', '583a6c88-f55b-4013-af49-e773179981f5'),
(159, 12, 91, NULL, 80, 1, '2015-11-20 14:44:02', '2015-11-20 14:44:02', '94998797-35f5-4200-a7f8-a1d08e9cd49f'),
(160, 12, 92, NULL, 81, 1, '2015-11-20 14:44:02', '2015-11-20 14:44:02', 'e6ffc969-c3c9-40d1-bf7e-df3518a6361a'),
(161, 12, 93, NULL, 84, 1, '2015-11-20 14:44:02', '2015-11-20 14:44:02', 'ef63aa92-8385-4aa4-b51a-d2274c86ce79'),
(162, 12, 94, NULL, 85, 1, '2015-11-20 14:44:02', '2015-11-20 14:44:02', '97959042-d740-4a7b-bae4-0486f3b7707f'),
(163, 12, 95, NULL, 86, 1, '2015-11-20 14:44:02', '2015-11-20 14:44:02', '9d605d40-4a6b-48e7-8360-23b3982465f6'),
(164, 12, 96, NULL, 87, 1, '2015-11-20 14:44:02', '2015-11-20 14:44:02', 'c11820e2-09ec-4c42-8a27-e4d4c286b626'),
(165, 12, 97, NULL, 88, 1, '2015-11-20 14:44:02', '2015-11-20 14:44:02', '296351da-fa7a-4f39-b4d1-f37db3ec6dfc'),
(166, 12, 100, NULL, 98, 1, '2015-11-20 14:44:02', '2015-11-20 14:44:02', 'f34e1811-8b04-47e2-9330-1f588d0d31d4'),
(167, 12, 101, NULL, 99, 1, '2015-11-20 14:44:02', '2015-11-20 14:44:02', '0d1bb346-52f5-4583-9b05-edecc1d51b77');

-- --------------------------------------------------------

--
-- Table structure for table `craft_routes`
--

CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_routes`
--

INSERT INTO `craft_routes` (`id`, `locale`, `urlParts`, `urlPattern`, `template`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, '["about",["page","\\\\d+"]]', 'about(?P<page>\\d+)', 'about', 1, '2015-11-17 12:08:24', '2015-11-17 12:08:24', 'ea8b0d39-ed7e-445a-9670-61e889582d5b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_searchindex`
--

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(1, 'username', 0, 'en_us', ' gbc law '),
(1, 'firstname', 0, 'en_us', ''),
(1, 'lastname', 0, 'en_us', ''),
(1, 'fullname', 0, 'en_us', ''),
(1, 'email', 0, 'en_us', ' javik live com '),
(1, 'slug', 0, 'en_us', ''),
(2, 'slug', 0, 'en_us', ' homepage '),
(2, 'title', 0, 'en_us', ' homepage gbenga biobaku co '),
(2, 'field', 1, 'en_us', ' it s true this site doesn t have a whole lot of content yet but don t worry our web developers have just installed the cms and they re setting things up for the content editors this very moment soon gbc dev will be an oasis of fresh perspectives sharp analyses and astute opinions that will keep you coming back again and again '),
(2, 'field', 5, 'en_us', ''),
(2, 'field', 6, 'en_us', ''),
(2, 'field', 13, 'en_us', ''),
(2, 'field', 7, 'en_us', ''),
(2, 'field', 3, 'en_us', ' gbc '),
(2, 'field', 8, 'en_us', ''),
(40, 'filename', 0, 'en_us', ' gbc corporate practice jpg '),
(40, 'extension', 0, 'en_us', ' jpg '),
(40, 'kind', 0, 'en_us', ' image '),
(2, 'field', 4, 'en_us', ''),
(2, 'field', 34, 'en_us', ' gbc corporate practice gbc modern law firm '),
(6, 'slug', 0, 'en_us', ' careers '),
(6, 'title', 0, 'en_us', ' careers '),
(21, 'field', 4, 'en_us', ''),
(21, 'field', 5, 'en_us', ''),
(6, 'field', 1, 'en_us', ' we believe that the key to our success is not only the knowledge of our client s industry and our general commercial awareness but our interest in recruiting highly capable individuals and providing a very conducive environment to nurture their ambitions to reach for the top we are constantly looking for individuals who are highly capable and motivated to meet the challenges of a growing industry if you meet this criteria please email your resume to careers gbc law com '),
(6, 'field', 14, 'en_us', ' careers '),
(6, 'field', 4, 'en_us', ''),
(6, 'field', 5, 'en_us', ''),
(6, 'field', 6, 'en_us', ''),
(6, 'field', 13, 'en_us', ''),
(6, 'field', 7, 'en_us', ''),
(6, 'field', 3, 'en_us', ''),
(6, 'field', 8, 'en_us', ''),
(6, 'field', 16, 'en_us', ' we believe that the key to our success is not only the knowledge of our client s industry and our general commercial awareness but our interest in recruiting highly capable individuals and providing a very conducive environment to nurture their ambitions to reach for the top we are constantly looking for individuals who are highly capable and motivated to meet the challenges of a growing industry if you meet this criteria please email your resume to careers gbc law com '),
(7, 'filename', 0, 'en_us', ' careers jpg '),
(7, 'extension', 0, 'en_us', ' jpg '),
(7, 'kind', 0, 'en_us', ' image '),
(7, 'slug', 0, 'en_us', ' careers '),
(7, 'title', 0, 'en_us', ' careers '),
(9, 'field', 14, 'en_us', ' contact bg '),
(9, 'title', 0, 'en_us', ' contact '),
(9, 'slug', 0, 'en_us', ' contact '),
(9, 'field', 16, 'en_us', ' office address 11 babafemi osoba crescentoff admiralty road lekki phase 1 p o box 72250 victoria island lagos t 234 1 2717769 dls 234 1 2706382 2706383fax 234 1 2707320e info gbc law com '),
(9, 'field', 4, 'en_us', ''),
(9, 'field', 5, 'en_us', ''),
(9, 'field', 6, 'en_us', ''),
(9, 'field', 13, 'en_us', ''),
(9, 'field', 7, 'en_us', ''),
(9, 'field', 3, 'en_us', ''),
(9, 'field', 8, 'en_us', ''),
(10, 'filename', 0, 'en_us', ' contact bg jpg '),
(10, 'extension', 0, 'en_us', ' jpg '),
(10, 'kind', 0, 'en_us', ' image '),
(10, 'slug', 0, 'en_us', ''),
(10, 'title', 0, 'en_us', ' contact bg '),
(9, 'field', 1, 'en_us', ' office address 11 babafemi osoba crescent off admiralty road lekki phase 1 p o box 72250 victoria island lagos t 234 0 1 899 0764 234 0 1 899 0765 e info gbc law com '),
(21, 'field', 6, 'en_us', ''),
(21, 'field', 13, 'en_us', ''),
(21, 'field', 3, 'en_us', ''),
(21, 'field', 7, 'en_us', ''),
(21, 'field', 10, 'en_us', ' exxon mobil exxon mobil statoil ngieria statoil baker hughes baker hughes bj services nigeria bj services nigeria limited parker drilling parker drilling oceaneering nigeria oceaneering nigeria african capital alliance african capital alliance rhino linings rhino linings pentagon petroleum limited pentagon petroleum limited taba nigeria taba nigeria '),
(21, 'field', 17, 'en_us', ' our client list spans the oil and gas construction banking and financial institutions here are a list of some of our clients past and present '),
(21, 'field', 14, 'en_us', ''),
(21, 'field', 15, 'en_us', ''),
(11, 'filename', 0, 'en_us', ' gbenga jpg '),
(11, 'extension', 0, 'en_us', ' jpg '),
(11, 'kind', 0, 'en_us', ' image '),
(11, 'slug', 0, 'en_us', ''),
(11, 'title', 0, 'en_us', ' gbenga '),
(12, 'filename', 0, 'en_us', ' gbenga biobaku jpg '),
(12, 'extension', 0, 'en_us', ' jpg '),
(12, 'kind', 0, 'en_us', ' image '),
(12, 'slug', 0, 'en_us', ''),
(12, 'title', 0, 'en_us', ' gbenga biobaku '),
(16, 'field', 14, 'en_us', ' gbenga biobaku '),
(16, 'field', 15, 'en_us', ' gbenga '),
(15, 'title', 0, 'en_us', ' gbenga biobaku '),
(15, 'slug', 0, 'en_us', ''),
(15, 'kind', 0, 'en_us', ' image '),
(15, 'extension', 0, 'en_us', ' jpg '),
(15, 'filename', 0, 'en_us', ' gbenga biobaku_1 jpg '),
(14, 'title', 0, 'en_us', ' gbenga '),
(14, 'slug', 0, 'en_us', ''),
(14, 'kind', 0, 'en_us', ' image '),
(14, 'extension', 0, 'en_us', ' jpg '),
(14, 'filename', 0, 'en_us', ' gbenga_1 jpg '),
(16, 'field', 19, 'en_us', ' gbenga has over 2 decades of legal practice experience in corporate commercial law predominantly in the oil and gas industry previously at jackson etti edu where he was the head of the energy corporate department for over 5 years prior to joining jackson etti edu gbenga was a member of the energy and corporate commercial practice group at irving and bonnar nigeria s oldest law firm whilst at irving bonnar gbenga worked on a variety of energy corporate and commercial transactions for both domestic and international clients '),
(16, 'field', 20, 'en_us', ''),
(16, 'field', 21, 'en_us', ''),
(16, 'field', 22, 'en_us', ''),
(16, 'field', 18, 'en_us', ''),
(16, 'field', 23, 'en_us', ''),
(16, 'field', 24, 'en_us', ''),
(16, 'field', 4, 'en_us', ''),
(16, 'field', 5, 'en_us', ''),
(16, 'field', 6, 'en_us', ''),
(16, 'field', 13, 'en_us', ''),
(16, 'field', 7, 'en_us', ''),
(16, 'field', 3, 'en_us', ''),
(16, 'field', 8, 'en_us', ''),
(16, 'slug', 0, 'en_us', ' gbenga biobaku '),
(16, 'title', 0, 'en_us', ' gbenga biobaku '),
(17, 'field', 15, 'en_us', ' gbenga '),
(17, 'field', 14, 'en_us', ' gbenga biobaku '),
(17, 'field', 19, 'en_us', ' gbenga has over 2 decades of legal practice experience in corporate commercial law predominantly in the oil and gas industry previously at jackson etti edu where he was the head of the energy corporate department for over 5 years prior to joining jackson etti edu gbenga was a member of the energy and corporate commercial practice group at irving and bonnar nigeria s oldest law firm whilst at irving bonnar gbenga worked on a variety of energy corporate and commercial transactions for both domestic and international clients '),
(17, 'field', 20, 'en_us', ''),
(17, 'field', 21, 'en_us', ''),
(17, 'field', 22, 'en_us', ''),
(17, 'field', 18, 'en_us', ''),
(17, 'field', 23, 'en_us', ''),
(17, 'field', 24, 'en_us', ''),
(17, 'field', 4, 'en_us', ''),
(17, 'field', 5, 'en_us', ''),
(17, 'field', 6, 'en_us', ''),
(17, 'field', 13, 'en_us', ''),
(17, 'field', 7, 'en_us', ''),
(17, 'field', 3, 'en_us', ''),
(17, 'field', 8, 'en_us', ''),
(17, 'slug', 0, 'en_us', ' about gbenga biobaku '),
(17, 'title', 0, 'en_us', ' gbenga biobaku '),
(18, 'field', 15, 'en_us', ' gbenga '),
(18, 'field', 14, 'en_us', ' gbenga biobaku '),
(18, 'field', 19, 'en_us', ' gbenga has over 2 decades of legal practice experience in corporate commercial law predominantly in the oil and gas industry previously at jackson etti edu where he was the head of the energy corporate department for over 5 years prior to joining jackson etti edu gbenga was a member of the energy and corporate commercial practice group at irving and bonnar nigeria s oldest law firm whilst at irving bonnar gbenga worked on a variety of energy corporate and commercial transactions for both domestic and international clients '),
(18, 'field', 20, 'en_us', ''),
(18, 'field', 21, 'en_us', ''),
(18, 'field', 22, 'en_us', ''),
(18, 'field', 18, 'en_us', ''),
(18, 'field', 23, 'en_us', ''),
(18, 'field', 24, 'en_us', ''),
(18, 'field', 4, 'en_us', ''),
(18, 'field', 5, 'en_us', ''),
(18, 'field', 6, 'en_us', ''),
(18, 'field', 13, 'en_us', ''),
(18, 'field', 7, 'en_us', ''),
(18, 'field', 3, 'en_us', ''),
(18, 'field', 8, 'en_us', ''),
(18, 'slug', 0, 'en_us', ' about gbenga biobaku '),
(18, 'title', 0, 'en_us', ' gbenga biobaku '),
(19, 'field', 15, 'en_us', ''),
(19, 'field', 14, 'en_us', ''),
(19, 'field', 19, 'en_us', ''),
(19, 'field', 20, 'en_us', ''),
(19, 'field', 21, 'en_us', ''),
(19, 'field', 22, 'en_us', ''),
(19, 'field', 18, 'en_us', ''),
(19, 'field', 23, 'en_us', ''),
(19, 'field', 24, 'en_us', ''),
(19, 'field', 4, 'en_us', ''),
(19, 'field', 5, 'en_us', ''),
(19, 'field', 6, 'en_us', ''),
(19, 'field', 13, 'en_us', ''),
(19, 'field', 7, 'en_us', ''),
(19, 'field', 3, 'en_us', ''),
(19, 'field', 8, 'en_us', ''),
(19, 'slug', 0, 'en_us', ' gbenga biobaku '),
(19, 'title', 0, 'en_us', ' gbenga biobaku '),
(21, 'field', 9, 'en_us', ' gbenga biobaku co gbc is a leading law firm in nigeria with primary practice in the business scene with focus on energy projects foreign investments banking capital markets and general corporate commercial law for over 20years our firm has demonstrated its expertise in handling challenging assignments for the most interesting clients we have achieved extraordinary results with a team of intensely focused members focused on solving our clients most important problems building strong client relationships is the compass of our business strategy with diverse experience and exceptional professionals with specialist skills we have continually delivered quality to our clients through innovative legal solutions our clients range from multinationals oil energy firms financial institutions and emerging companies we also advise governments and public bodies '),
(21, 'slug', 0, 'en_us', ' about gbc '),
(21, 'title', 0, 'en_us', ' about '),
(21, 'field', 8, 'en_us', ''),
(22, 'field', 18, 'en_us', ' managing partner '),
(22, 'field', 15, 'en_us', ' gbenga '),
(22, 'field', 14, 'en_us', ' gbenga biobaku '),
(22, 'field', 19, 'en_us', ' gbenga has over 2 decades of legal practice experience in corporate commercial law predominantly in the oil and gas industry previously at jackson etti edu where he was the head of the energy corporate department for over 5 years prior to joining jackson etti edu gbenga was a member of the energy and corporate commercial practice group at irving and bonnar nigeria s oldest law firm whilst at irving bonnar gbenga worked on a variety of energy corporate and commercial transactions for both domestic and international clients '),
(22, 'field', 20, 'en_us', ' university of ife llb 1986 university of ife llb 1986 nigerian bar association 1987 nigerian bar association 1987 '),
(22, 'field', 21, 'en_us', ' foreign investments foreign investments joint ventures joint ventures acquisitions disposals acquisitions disposals corporate restructuring corporate restructuring project development finance project development finance '),
(22, 'field', 22, 'en_us', ' nigerian bar association nigerian bar association energy natural resources section serl of the international bar association energy natural resources section serl of the international bar association association of international petroleum negotiators aipn association of international petroleum negotiators aipn '),
(22, 'field', 23, 'en_us', ' advising a multinational exploration and production company in relation to a proposed lng project in the niger delta region of nigeria advising a multinational exploration and production company in relation to a proposed lng project in the niger delta region of nigeria advising on the $785 million oso field development project jointly owned by mobil producing nigeria unlimited and the nigerian national petroleum corporation nnpc and partly financed by equity from the sponsors and debt capital from international institutions such as the world bank international finance corporation ifc us export import bank japan export import bank and the european investment bank advising on the $785 million oso field development project jointly owned by mobil producing nigeria unlimited and the nigerian national petroleum corporation nnpc and partly financed by equity from the sponsors and debt capital from international institutions such as the world bank international finance corporation ifc us export import bank japan export import bank and the european investment bank advising and negotiating the project financing documentation and designing of the investment vehicle of the us$810million oso ngl project a gas utilisation project which was sequel to the oso field development project and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the united states and europe advising and negotiating the project financing documentation and designing of the investment vehicle of the us$810million oso ngl project a gas utilisation project which was sequel to the oso field development project and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the united states and europe advising the norwegian exploration production company statoil in respect of several production sharing contracts with the nigerian national petroleum corporation nnpc and assisting with the negotiation advising the norwegian exploration production company statoil in respect of several production sharing contracts with the nigerian national petroleum corporation nnpc and assisting with the negotiation advising an international oil company in its bid for an oil block in the nigeria sao tome and principe jdz 2003 licensing round and conducting a detailed analysis of the treaty and the petroleum fiscal and contractual regime advising an international oil company in its bid for an oil block in the nigeria sao tome and principe jdz 2003 licensing round and conducting a detailed analysis of the treaty and the petroleum fiscal and contractual regime advising sonatrach the algerian state oil company in connection with its bid for an oil block in the 2005 licensing round and providing advice on the bidding regulations as well as detailed analysis of the petroleum fiscal and contractual regime advising sonatrach the algerian state oil company in connection with its bid for an oil block in the 2005 licensing round and providing advice on the bidding regulations as well as detailed analysis of the petroleum fiscal and contractual regime in collaboration with lawyers in a uk law firm acting for and advising a group of international banks on aspects of the financing of the eleme petrochemical plant in collaboration with lawyers in a uk law firm acting for and advising a group of international banks on aspects of the financing of the eleme petrochemical plant advising statoil on the establishment of several subsidiary companies in nigeria including processing and obtaining of all pre investment and regulatory approvals advising statoil on the establishment of several subsidiary companies in nigeria including processing and obtaining of all pre investment and regulatory approvals advising and assisting consolidated petroleum pty a south african company on the farm in arrangements into a marginal field including the drafting and review of the transaction documents including the purchase agreement farm in agreement joint operating agreement and the deed of assignment advising and assisting consolidated petroleum pty a south african company on the farm in arrangements into a marginal field including the drafting and review of the transaction documents including the purchase agreement farm in agreement joint operating agreement and the deed of assignment advising on several acquisitions and mergers involving oil service companies including the acquisition by baker hughes of a minority interest in a nigerian oil service company advising on several acquisitions and mergers involving oil service companies including the acquisition by baker hughes of a minority interest in a nigerian oil service company advising baker hughes on all legal aspects of the construction and development of a major facility in port harcourt from negotiation of the long lease for the property to negotiating and rendering advise on the construction contract advising on town planning regulatory issues as well as environmental issues and undertaking the registration and perfection of the long lease advising baker hughes on all legal aspects of the construction and development of a major facility in port harcourt from negotiation of the long lease for the property to negotiating and rendering advise on the construction contract advising on town planning regulatory issues as well as environmental issues and undertaking the registration and perfection of the long lease advising skye bank plc in relation to a usd75million syndicated petroleum products receivables pre financing facility advising skye bank plc in relation to a usd75million syndicated petroleum products receivables pre financing facility advising taba nigeria limited in respect of an engineering procurement and construction epc contract with nnpc relating to a power plant and advising and assisting with the structuring and documentation of the various subcontracting and the financing arrangements advising taba nigeria limited in respect of an engineering procurement and construction epc contract with nnpc relating to a power plant and advising and assisting with the structuring and documentation of the various subcontracting and the financing arrangements advising and assisting a private investor in connection with a joint venture arrangement with the government of ondo state of nigeria involving the privatization of the ondo state afforestation project which was initially funded by the african development bank advising and assisting a private investor in connection with a joint venture arrangement with the government of ondo state of nigeria involving the privatization of the ondo state afforestation project which was initially funded by the african development bank advising on the merger between the nigerian subsidiaries of smithkline beecham and sterling products advising on the merger between the nigerian subsidiaries of smithkline beecham and sterling products conducted legal due diligence and advised capital alliance a foremost international private equity firm in a $15million usd private equity investment in a leading cash in transit company in nigeria conducted legal due diligence and advised capital alliance a foremost international private equity firm in a $15million usd private equity investment in a leading cash in transit company in nigeria advising skye bank plc in connection with the negotiation of a trade finance facility from african export import bank afrexim advising skye bank plc in connection with the negotiation of a trade finance facility from african export import bank afrexim advising and assisting a private investor in connection with the acquisition of iwopin pulp and paper company from the bureau of public enterprises bpe federal government of nigeria advising and assisting a private investor in connection with the acquisition of iwopin pulp and paper company from the bureau of public enterprises bpe federal government of nigeria advising inlaks plc a conglomerate at that time on the separation and corporatisation of some of its division advising inlaks plc a conglomerate at that time on the separation and corporatisation of some of its division advising a leading aluminum company in nigeria on a scheme of arrangement involving the parent company and a subsidiary advising a leading aluminum company in nigeria on a scheme of arrangement involving the parent company and a subsidiary '),
(22, 'field', 24, 'en_us', ''),
(22, 'field', 4, 'en_us', ''),
(22, 'field', 5, 'en_us', ''),
(22, 'field', 6, 'en_us', ''),
(22, 'field', 13, 'en_us', ''),
(22, 'field', 7, 'en_us', ''),
(22, 'field', 3, 'en_us', ''),
(22, 'field', 8, 'en_us', ''),
(22, 'slug', 0, 'en_us', ' gbenga biobaku '),
(22, 'title', 0, 'en_us', ' gbenga biobaku '),
(23, 'filename', 0, 'en_us', ' 1 jpg '),
(23, 'extension', 0, 'en_us', ' jpg '),
(23, 'kind', 0, 'en_us', ' image '),
(23, 'slug', 0, 'en_us', ''),
(23, 'title', 0, 'en_us', ' 1 '),
(24, 'field', 18, 'en_us', ' of counsel '),
(24, 'field', 15, 'en_us', ' 1 '),
(24, 'field', 14, 'en_us', ' nkoyo rapu '),
(24, 'field', 19, 'en_us', ' nkoyo has over 20 years extensive experience and expertise in general law practice and advocacy she started her legal career as a government legal representative with the legal aid council and then roceeded to oshinowo co as a counsel in chambers before joining the prestigious allen and ogunkeye she is also involved in extensive work with non governmental organizations with particular emphasis on matters relating to women and children in the socio economic and political context of the nigerian society in this regard she has played a significant role at the national level in the area of women empowerment having been appointed to various committees she sits on the board of trustees of freedom foundation an umbrella organization of five ngo units committed to pioneering change in society through poverty alleviation and wealth creation she is also director of stone creek property investment company whose aim is to project a new way of community living nkoyo has led two trade missions to togo and more recently to south africa with the involvement of both the nigerian embassy and the embassies of the host countries she was amongst a select nigerian delegation appointed by the american embassy to attend the annual business global renaissance summit in washington d c their assignment focus being the creation of more business for more women across more borders she also served as a board member of the canadian and african business women s alliance caabwa '),
(24, 'field', 20, 'en_us', ' university of lagos llm university of lagos llm the city of london polytechnic diploma in english private law the city of london polytechnic diploma in english private law '),
(24, 'field', 21, 'en_us', ''),
(24, 'field', 22, 'en_us', ''),
(24, 'field', 23, 'en_us', ''),
(24, 'field', 24, 'en_us', ''),
(24, 'field', 4, 'en_us', ''),
(24, 'field', 5, 'en_us', ''),
(24, 'field', 6, 'en_us', ''),
(24, 'field', 13, 'en_us', ''),
(24, 'field', 7, 'en_us', ''),
(24, 'field', 3, 'en_us', ''),
(24, 'field', 8, 'en_us', ''),
(24, 'slug', 0, 'en_us', ' nkoyo rapu '),
(24, 'title', 0, 'en_us', ' nkoyo rapu '),
(25, 'slug', 0, 'en_us', ' expertise '),
(25, 'title', 0, 'en_us', ' expertise '),
(25, 'field', 19, 'en_us', ' gbenga biobaku co is a leading provider of business driven legal services with a team with vast and varied experience in the legal and business space our services continue to improve the way legal compliance and business is being done in nigerian '),
(25, 'field', 26, 'en_us', ' oil gas oil gas oil services oil services project finance project finance power projects power projects privatisation infrastructure developments privatisation infrastructure developments solid minerals solid minerals environmental law community relations environmental law community relations gbenga biobaku co has developed an extensive energy project development practice representing parties on both sides of the spectrum our expertise encompasses the oil and gas power mining and infrastructure sectors of the nigerian economy as counsel to some major and developing energy players gbc project scope has covered securing foreign investment project financing transactions advisory federal regulatory approvals operations and maintenance contracts site acquisitions and other related corporate and commercial transactions with the recent divestments and local participation law and the influx of foreign investment in the nigerian oil and gas industry gbc has been recognized for its ability to prescribe working business modules and joint venture arrangements that ensures return on investment roi for investors and the protection and sustainability of its indigenous clients our team has substantial experience in advising foreign and indigenous investors in nigeria on energy projects financing we also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy mining and oil and gas sectors energy projects mergers acquisitions mergers acquisitions capital markets capital markets banking finance banking finance private equity venture capital private equity venture capital privatization infrastructure development privatization infrastructure development business advisory business advisory international trade international trade foreign investments joint ventures foreign investments joint ventures telecommunications telecommunications information technology information technology immigration immigration commercial property development conveyancing commercial property development conveyancing taxation taxation employment labor relations employment labor relations aircraft ship financing aircraft ship financing company secretarial services company secretarial services the gbc s corporate and commercial practice department represents a broad range of corporate and business interests the group delivers responsive innovative and practical legal solutions in diverse areas including mergers acquisitions capital markets banking finance offshore acquisitions and investments trust arrangements estate planning private equity venture capital intellectual property foreign investments joint ventures privatization infrastructure developments telecommunications information technology immigration commercial property development conveyancing taxation employment labor relations aircraft ship financing business advisory company secretarial services gbc runs the gamut of corporate and commercial law practice with the aim of providing a seamless service integrating diverse clients business interests our work with our clients involves ensuring compliance with standard business practices procedures and operations within the national and local laws applicable to their specific industry additionally we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures general corporate commercial oil gas litigation oil gas litigation arbitration arbitration shipping international trade shipping international trade general commercial litigation general commercial litigation alternative dispute resolution alternative dispute resolution employment employment environmental litigation environmental litigation financial services litigation financial services litigation securities litigation and enforcement securities litigation and enforcement the gbc s litigation and arbitration practice is handled by the seasoned dispute resolution department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit commercial and financial disputes and litigations are often complex the department appreciates the need to conduct commercial and other litigation matters with business expediency in view in that regard we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients at gbenga biobaku co we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation consequently we advise on the use of alternative dispute resolution adr mediums including negotiation conciliation mediation and arbitration in deserving cases we have applied our expertise in litigation and different adr methods with good results across industries relating to disputes arising from the oil and gas sector claims for compensation taxation disputes arising from corporate governance breach of contracts employer employee industrial disputes breach of fundamental rights claims debt recovery winding up of companies land disputes claims for negligence judicial review of executive actions etc litigation arbitration copyright copyright ip litigation ip litigation ip due diligence ip due diligence patents trademarks patents trademarks technology transactions technology transactions antitrust law antitrust law gbc provides legal services to its clients on issues stemming from intellectual property ip our ip services include obtaining regulatory approval with the appropriate agencies such as the ministry of trade and investment we also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the national office for technology acquisition and promotion notap with the tripled growth in the nigerian economy in the last 10 years new ideas and innovations are now being introduced into the nation s business climate and these ideas and innovations have now become assets for various body corporates and small medium enterprises with this growth ensuring the proper exploitation and protection of intellectual property ip whether it be patents trade marks or designs is a primary commercial objective we provide practical and commercial legal advice at every stage in the life and development of an intellectual property right from creation and exploitation to protection and enforcement in addition we provide registration of ip rights such as patents trademarks and industrial designs and obtaining necessary business approvals from notap and the ministry of trade and investments intellectual property ip '),
(25, 'field', 29, 'en_us', ' advising on the $785 million oso field development project jointly owned by mobil producing nigeria unlimited and the nigerian national petroleum corporation nnpc and partly financed by equity from the sponsors and debt capital from international institutions such as the world bank international finance corporation ifc us export import bank japan export import bank and the european investment bank advising on the $785 million oso field development project jointly owned by mobil producing nigeria unlimited and the nigerian national petroleum corporation nnpc and partly financed by equity from the sponsors and debt capital from international institutions such as the world bank international finance corporation ifc us export import bank japan export import bank and the european investment bank advising and negotiating the project financing documentation and designing of the investment vehicle of the oso ngl project a gas utilisation project which was sequel to the oso field development project originally estimated at us$810 million and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the united states and europe advising and negotiating the project financing documentation and designing of the investment vehicle of the oso ngl project a gas utilisation project which was sequel to the oso field development project originally estimated at us$810 million and partly financed by equity from the sponsors and debt capital by a number of institutional investors in the united states and europe in collaboration with lawyers in a uk law firm acting for and advising a group of international banks on aspects of the financing of the eleme petrochemical plant in collaboration with lawyers in a uk law firm acting for and advising a group of international banks on aspects of the financing of the eleme petrochemical plant representing utc nigeria plc a publicly quoted company in a $14 million debt restructuring representing utc nigeria plc a publicly quoted company in a $14 million debt restructuring advising utc nigeria plc on a rights issue advising utc nigeria plc on a rights issue advising on the merger between the nigerian subsidiaries of smithkline beecham and sterling products advising on the merger between the nigerian subsidiaries of smithkline beecham and sterling products advising on the acquisition of a merchant banking subsidiary by union bank of nigeria plc advising on the acquisition of a merchant banking subsidiary by union bank of nigeria plc in collaboration with nextzon conducted legal due diligence for oceanic bank plc in relation to the acquisition of a bank in ghana in collaboration with nextzon conducted legal due diligence for oceanic bank plc in relation to the acquisition of a bank in ghana advising several multinational companies including statoil parker drilling vmonitor inc on the establishment of subsidiary companies in nigeria and the processing and procurement of relevant pre investment and operational permits and approvals advising several multinational companies including statoil parker drilling vmonitor inc on the establishment of subsidiary companies in nigeria and the processing and procurement of relevant pre investment and operational permits and approvals advising skye bank plc in connection with the negotiation of a trade finance facility from african export import bank afrexim advising skye bank plc in connection with the negotiation of a trade finance facility from african export import bank afrexim advising skye bank plc on a usd75million syndicated petroleum products receivables pre financing facility advising skye bank plc on a usd75million syndicated petroleum products receivables pre financing facility advising and assisting a private developer on the concession agreement with the lagos state government relating to the redevelopment of the balogun square market in the central business district of lagos advising and assisting a private developer on the concession agreement with the lagos state government relating to the redevelopment of the balogun square market in the central business district of lagos advising and assisting a private investor in connection with a joint venture arrangement with the government of ondo state of nigeria involving the privatization of the ondo state afforestation project which was initially funded by the african development bank advising and assisting a private investor in connection with a joint venture arrangement with the government of ondo state of nigeria involving the privatization of the ondo state afforestation project which was initially funded by the african development bank advising and assisting a private investor in connection with the acquisition of iwopin pulp and paper company from the bureau of public enterprises bpe federal government of nigeria advising and assisting a private investor in connection with the acquisition of iwopin pulp and paper company from the bureau of public enterprises bpe federal government of nigeria advising and documenting various syndicated facilities relating to peugeot automobile nigeria intel oil services g cappa international distillers victoria garden hotels and several other leading companies advising and documenting various syndicated facilities relating to peugeot automobile nigeria intel oil services g cappa international distillers victoria garden hotels and several other leading companies advising inlaks plc a conglomerate at that time on the separation and corporatisation of some of its division advising inlaks plc a conglomerate at that time on the separation and corporatisation of some of its division advising a leading aluminum company in nigeria on a scheme of arrangement involving the parent company and a subsidiary advising a leading aluminum company in nigeria on a scheme of arrangement involving the parent company and a subsidiary advising may and baker nigeria plc on several rights issues and offers for subscription advising may and baker nigeria plc on several rights issues and offers for subscription advising and assisting royal exchange assurance company limited on several capital market transactions for various domestic and multinational clients advising and assisting royal exchange assurance company limited on several capital market transactions for various domestic and multinational clients advising may and baker nigeria plc on several rights issues and offers for subscription advising may and baker nigeria plc on several rights issues and offers for subscription advising on several acquisitions and mergers involving oil service companies including the acquisition by baker hughes of a minority interest in a nigerian oil service company advising on several acquisitions and mergers involving oil service companies including the acquisition by baker hughes of a minority interest in a nigerian oil service company advising a potential investor in the acquisition of equity shareholding in nike lake resort under the proposed privatisation by the enugu state government advising a potential investor in the acquisition of equity shareholding in nike lake resort under the proposed privatisation by the enugu state government advising on the structuring and financing of a major hotel project in lagos involving the international hotel chain accor advising on the structuring and financing of a major hotel project in lagos involving the international hotel chain accor advising the international finance corporation on various aspects of financing of the re organisation of the federal palace hotels lagos nigeria advising the international finance corporation on various aspects of financing of the re organisation of the federal palace hotels lagos nigeria advising the international finance corporation on various aspects of financing of the re organisation of the federal palace hotels lagos nigeria advising the international finance corporation on various aspects of financing of the re organisation of the federal palace hotels lagos nigeria advising on the structuring and financing of a large cotton processing mill in which the international finance corporation ifc provided debt finance advising on the structuring and financing of a large cotton processing mill in which the international finance corporation ifc provided debt finance advising on various investment schemes for both individuals and companies involving the creation and operation of trust arrangements advising on various investment schemes for both individuals and companies involving the creation and operation of trust arrangements advising the federal government of nigeria and the bureau of public enterprises bpe on the privatisation of the abuja sheraton hotel advising the federal government of nigeria and the bureau of public enterprises bpe on the privatisation of the abuja sheraton hotel advising the federal government of nigeria and the bureau of public enterprises bpe on the privatisation of the abuja international hotel advising the federal government of nigeria and the bureau of public enterprises bpe on the privatisation of the abuja international hotel advising a south africa telecommunications group in its bid for a strategic stake in a nigerian mobile cellular network company advising a south africa telecommunications group in its bid for a strategic stake in a nigerian mobile cellular network company representing general telecom in the negotiation of a bot arrangement for the development of an hns wireless exchange operation in nigeria representing general telecom in the negotiation of a bot arrangement for the development of an hns wireless exchange operation in nigeria advising statoil on the production sharing contracts with the nigerian national petroleum corporation nnpc advising statoil on the production sharing contracts with the nigerian national petroleum corporation nnpc advising an international oil company in its bid for an oil block in the nigeria sao tome and principe jdz 2003 licensing round and conducting a detailed analysis of the treaty and the petroleum fiscal and contractual regime advising an international oil company in its bid for an oil block in the nigeria sao tome and principe jdz 2003 licensing round and conducting a detailed analysis of the treaty and the petroleum fiscal and contractual regime representing tenneco oil in the disposal of its nigerian oil and gas assets to british gas representing tenneco oil in the disposal of its nigerian oil and gas assets to british gas advising sonatrach the algerian state oil company in connection with its bid for an oil block in the 2005 licensing round and providing advice on the bidding regulations as well as detailed analysis of the petroleum fiscal and contractual regime advising sonatrach the algerian state oil company in connection with its bid for an oil block in the 2005 licensing round and providing advice on the bidding regulations as well as detailed analysis of the petroleum fiscal and contractual regime advising and assisting consolidated petroleum pty a south african company on the farm in arrangements into a marginal field including the drafting and review of the transaction documents including the purchase agreement farm in agreement joint operating agreement and the deed of assignment advising and assisting consolidated petroleum pty a south african company on the farm in arrangements into a marginal field including the drafting and review of the transaction documents including the purchase agreement farm in agreement joint operating agreement and the deed of assignment advising hudson petroleum in its bid for an oil block in the 2005 licensing round and assisting with the drafting and negotiation of the preliminary agreements including mous and heads of agreement advising hudson petroleum in its bid for an oil block in the 2005 licensing round and assisting with the drafting and negotiation of the preliminary agreements including mous and heads of agreement advising baker hughes on all legal aspects of the construction and development of a major facility in port harcourt from negotiation of the long lease for the property to negotiating and rendering advise on the construction contract advising on town planning regulatory issues as well as environmental issues and undertaking the registration and perfection of the long lease advising baker hughes on all legal aspects of the construction and development of a major facility in port harcourt from negotiation of the long lease for the property to negotiating and rendering advise on the construction contract advising on town planning regulatory issues as well as environmental issues and undertaking the registration and perfection of the long lease advising taba nigeria limited in respect of an engineering procurement and construction epc contract with nnpc relating to a power plant and advising and assisting with the structuring and documentation of the various subcontracting and the financing arrangements advising taba nigeria limited in respect of an engineering procurement and construction epc contract with nnpc relating to a power plant and advising and assisting with the structuring and documentation of the various subcontracting and the financing arrangements advising and assisting parker drilling in the negotiation and documentation of various support services agreements relating to drilling operations in nigeria advising and assisting parker drilling in the negotiation and documentation of various support services agreements relating to drilling operations in nigeria advising and assisting parker drilling in the processing of various regulatory approvals and permits relating to drilling operations in nigeria advising and assisting parker drilling in the processing of various regulatory approvals and permits relating to drilling operations in nigeria advising dwc drilling on a number of drilling contracts with operators in the nigerian oil and gas industry and assisting with the negotiation advising dwc drilling on a number of drilling contracts with operators in the nigerian oil and gas industry and assisting with the negotiation advising and assisting oil and gas operators and contractors on various procurement contracts such as drilling contracts drilling services contracts engineering procurement and construction epc contracts vessel charter parties helicopter service contracts and several other procurement contracts advising and assisting oil and gas operators and contractors on various procurement contracts such as drilling contracts drilling services contracts engineering procurement and construction epc contracts vessel charter parties helicopter service contracts and several other procurement contracts advising statoil on all legal aspects of the development of a number of residential and office complexes in prime areas of lagos nigeria advising statoil on all legal aspects of the development of a number of residential and office complexes in prime areas of lagos nigeria advising both landowners and developers on several commercial and residential property developments advising both landowners and developers on several commercial and residential property developments advising on a number of banking and financial transactions including structuring and drafting of equipment leases and sale lease back contracts and advising on the floatation of companies securities in the capital market advising on a number of banking and financial transactions including structuring and drafting of equipment leases and sale lease back contracts and advising on the floatation of companies securities in the capital market preparation of loan agreements advice on security documentation drafting and review of security documents including but not limited to legal mortgages debentures fixed and floating bills of sale mortgage debentures pledges guarantees and indemnities preparation of loan agreements advice on security documentation drafting and review of security documents including but not limited to legal mortgages debentures fixed and floating bills of sale mortgage debentures pledges guarantees and indemnities advising on the acquisition of flexcube banking software by union bank of nigeria plc and finnacle banking software by first atlantic bank ltd advising on the acquisition of flexcube banking software by union bank of nigeria plc and finnacle banking software by first atlantic bank ltd advising on the acquisition of an internet based money transfer facility by first atlantic bank ltd advising on the acquisition of an internet based money transfer facility by first atlantic bank ltd '),
(25, 'field', 30, 'en_us', ' our experience in the nigerian oil gas and financial sectors is vast and varied we have successfully advised firms financial institutions energy conglomerates and multinationals on several projections and transactions below are some relevant experiences garnered over the years '),
(25, 'field', 4, 'en_us', ''),
(25, 'field', 5, 'en_us', ''),
(25, 'field', 6, 'en_us', ''),
(25, 'field', 13, 'en_us', ''),
(25, 'field', 7, 'en_us', ''),
(25, 'field', 3, 'en_us', ''),
(25, 'field', 8, 'en_us', ''),
(26, 'field', 31, 'en_us', ' energy projects '),
(26, 'field', 27, 'en_us', ' gbenga biobaku co has developed an extensive energy project development practice representing parties on both sides of the spectrum our expertise encompasses the oil and gas power mining and infrastructure sectors of the nigerian economy as counsel to some major and developing energy players gbc project scope has covered securing foreign investment project financing transactions advisory federal regulatory approvals operations and maintenance contracts site acquisitions and other related corporate and commercial transactions with the recent divestments and local participation law and the influx of foreign investment in the nigerian oil and gas industry gbc has been recognized for its ability to prescribe working business modules and joint venture arrangements that ensures return on investment roi for investors and the protection and sustainability of its indigenous clients our team has substantial experience in advising foreign and indigenous investors in nigeria on energy projects financing we also provide the necessary framework for obtaining the necessary regulatory and business approval for doing business in the energy mining and oil and gas sectors '),
(26, 'field', 28, 'en_us', ' oil gas oil gas oil services oil services project finance project finance power projects power projects privatisation infrastructure developments privatisation infrastructure developments solid minerals solid minerals environmental law community relations environmental law community relations '),
(26, 'slug', 0, 'en_us', ''),
(27, 'field', 31, 'en_us', ' general corporate commercial '),
(27, 'field', 27, 'en_us', ' the gbc s corporate and commercial practice department represents a broad range of corporate and business interests the group delivers responsive innovative and practical legal solutions in diverse areas including mergers acquisitions capital markets banking finance offshore acquisitions and investments trust arrangements estate planning private equity venture capital intellectual property foreign investments joint ventures privatization infrastructure developments telecommunications information technology immigration commercial property development conveyancing taxation employment labor relations aircraft ship financing business advisory company secretarial services gbc runs the gamut of corporate and commercial law practice with the aim of providing a seamless service integrating diverse clients business interests our work with our clients involves ensuring compliance with standard business practices procedures and operations within the national and local laws applicable to their specific industry additionally we advice on finance and corporate decision making and act on behalf of public and private companies and partnerships in dealing with commercial transactions as well as advising on efficient business structures ');
INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(27, 'field', 28, 'en_us', ' mergers acquisitions mergers acquisitions capital markets capital markets banking finance banking finance private equity venture capital private equity venture capital privatization infrastructure development privatization infrastructure development business advisory business advisory international trade international trade foreign investments joint ventures foreign investments joint ventures telecommunications telecommunications information technology information technology immigration immigration commercial property development conveyancing commercial property development conveyancing taxation taxation employment labor relations employment labor relations aircraft ship financing aircraft ship financing company secretarial services company secretarial services '),
(27, 'slug', 0, 'en_us', ''),
(28, 'field', 31, 'en_us', ' litigation arbitration '),
(28, 'field', 27, 'en_us', ' the gbc s litigation and arbitration practice is handled by the seasoned dispute resolution department which has the primary object of achieving quick and satisfactory results in disputes while reducing the effects of a long drawn out lawsuit commercial and financial disputes and litigations are often complex the department appreciates the need to conduct commercial and other litigation matters with business expediency in view in that regard we ensure our litigation strategy is planned with the primary aim of securing the business objective and goals of our clients at gbenga biobaku co we recognize that remedies in commercial and other disputes are not necessarily achieved by embarking on litigation consequently we advise on the use of alternative dispute resolution adr mediums including negotiation conciliation mediation and arbitration in deserving cases we have applied our expertise in litigation and different adr methods with good results across industries relating to disputes arising from the oil and gas sector claims for compensation taxation disputes arising from corporate governance breach of contracts employer employee industrial disputes breach of fundamental rights claims debt recovery winding up of companies land disputes claims for negligence judicial review of executive actions etc '),
(28, 'field', 28, 'en_us', ' oil gas litigation oil gas litigation arbitration arbitration shipping international trade shipping international trade general commercial litigation general commercial litigation alternative dispute resolution alternative dispute resolution employment employment environmental litigation environmental litigation financial services litigation financial services litigation securities litigation and enforcement securities litigation and enforcement '),
(28, 'slug', 0, 'en_us', ''),
(29, 'field', 31, 'en_us', ' intellectual property ip '),
(29, 'field', 27, 'en_us', ' gbc provides legal services to its clients on issues stemming from intellectual property ip our ip services include obtaining regulatory approval with the appropriate agencies such as the ministry of trade and investment we also render transactional and advisory services in issues regarding technology transfer contracts and registration of such contracts with the national office for technology acquisition and promotion notap with the tripled growth in the nigerian economy in the last 10 years new ideas and innovations are now being introduced into the nation s business climate and these ideas and innovations have now become assets for various body corporates and small medium enterprises with this growth ensuring the proper exploitation and protection of intellectual property ip whether it be patents trade marks or designs is a primary commercial objective we provide practical and commercial legal advice at every stage in the life and development of an intellectual property right from creation and exploitation to protection and enforcement in addition we provide registration of ip rights such as patents trademarks and industrial designs and obtaining necessary business approvals from notap and the ministry of trade and investments '),
(29, 'field', 28, 'en_us', ' copyright copyright ip litigation ip litigation ip due diligence ip due diligence patents trademarks patents trademarks technology transactions technology transactions antitrust law antitrust law '),
(29, 'slug', 0, 'en_us', ''),
(31, 'extension', 0, 'en_us', ' pdf '),
(31, 'filename', 0, 'en_us', ' the exclusive jurisdiction of the national industrial court pdf '),
(31, 'kind', 0, 'en_us', ' pdf '),
(31, 'slug', 0, 'en_us', ''),
(31, 'title', 0, 'en_us', ' the exclusive jurisdiction of the national industrial court '),
(35, 'slug', 0, 'en_us', ' the exclusive jurisdiction of the national industrial court in labour and employment matters '),
(35, 'title', 0, 'en_us', ' the exclusive jurisdiction of the national industrial court in labour and employment matters '),
(36, 'field', 33, 'en_us', ' arbitrability of tax issues arising from production sharing contracts '),
(36, 'field', 32, 'en_us', ' the federal high court abuja in the case of federal inland revenue service vs nigerian national petroleum corporation others recently decided that an arbitration tribunal lacks jurisdiction to determine issues relating to taxation or connected with the federal government revenue as such jurisdiction is exclusively conferred on the fhc by the constitution of the federal republic of nigeria '),
(35, 'field', 33, 'en_us', ' the exclusive jurisdiction of the national industrial court '),
(35, 'field', 32, 'en_us', ' the national industrial court is vested with exclusive jurisdiction on all labour employment and related matters and as such all labour employment and allied matters pending before state high courts across nigeria are required to be transferred to the national industrial court this position was confirmed in the recent case of josiah madu vs solus schall nigeria ltd unrep '),
(33, 'filename', 0, 'en_us', ' arbitrability of tax issues arising from production sharing contracts pdf '),
(33, 'extension', 0, 'en_us', ' pdf '),
(33, 'kind', 0, 'en_us', ' pdf '),
(33, 'slug', 0, 'en_us', ''),
(33, 'title', 0, 'en_us', ' arbitrability of tax issues arising from production sharing contracts '),
(34, 'field', 33, 'en_us', ' arbitrability of tax issues arising from production sharing contracts '),
(34, 'field', 32, 'en_us', ' the federal high court abuja in the case of federal inland revenue service vs nigerian national petroleum corporation others recently decided that an arbitration tribunal lacks jurisdiction to determine issues relating to taxation or connected with the federal government revenue as such jurisdiction is exclusively conferred on the fhc by the constitution of the federal republic of nigeria '),
(34, 'slug', 0, 'en_us', ' arbitrability of tax issues arising from production sharing contracts firs v nnpc '),
(34, 'title', 0, 'en_us', ' arbitrability of tax issues arising from production sharing contracts firs v nnpc '),
(36, 'slug', 0, 'en_us', ' arbitrability of tax issues arising from production sharing contracts firs v nnpc '),
(36, 'title', 0, 'en_us', ' arbitrability of tax issues arising from production sharing contracts firs v nnpc '),
(37, 'filename', 0, 'en_us', ' investing_in_nigeria_oandg industry pdf '),
(37, 'extension', 0, 'en_us', ' pdf '),
(37, 'kind', 0, 'en_us', ' pdf '),
(37, 'slug', 0, 'en_us', ''),
(37, 'title', 0, 'en_us', ' investing in nigeria oand g industry '),
(38, 'field', 33, 'en_us', ' investing in nigeria oand g industry '),
(38, 'field', 32, 'en_us', ' nigeria is one of the world s largest producers of crude oil the country currently produces an average of 2 5 million barrels of crude oil per day this makes her the 10th largest producer of crude oil in the world and the 6th largest exporter among opec members production capacity currently stands at about 3 million barrels per day whilst reserves is about 35 billion barrels which the government intends to increase to 40 billion barrels by the year 2010 '),
(38, 'slug', 0, 'en_us', ' investing in nigerias oil and gas industry '),
(38, 'title', 0, 'en_us', ' investing in nigeria s oil and gas industry '),
(39, 'slug', 0, 'en_us', ' publications landing '),
(39, 'title', 0, 'en_us', ' publications '),
(39, 'field', 4, 'en_us', ''),
(39, 'field', 5, 'en_us', ''),
(39, 'field', 6, 'en_us', ''),
(39, 'field', 13, 'en_us', ''),
(39, 'field', 7, 'en_us', ''),
(39, 'field', 3, 'en_us', ''),
(39, 'field', 8, 'en_us', ''),
(40, 'slug', 0, 'en_us', ' gbc corporate practice banner '),
(40, 'title', 0, 'en_us', ' gbc corporate practice '),
(42, 'extension', 0, 'en_us', ' jpg '),
(42, 'filename', 0, 'en_us', ' gbc modern law firm jpg '),
(42, 'kind', 0, 'en_us', ' image '),
(42, 'slug', 0, 'en_us', ''),
(42, 'title', 0, 'en_us', ' gbc modern law firm '),
(43, 'filename', 0, 'en_us', ' ijeoma abalogu2 jpg '),
(43, 'extension', 0, 'en_us', ' jpg '),
(43, 'kind', 0, 'en_us', ' image '),
(43, 'slug', 0, 'en_us', ' 4 '),
(43, 'title', 0, 'en_us', ' ijeoma abalogu '),
(44, 'field', 18, 'en_us', ' senior associate '),
(44, 'field', 15, 'en_us', ' 4 '),
(44, 'field', 14, 'en_us', ' ijeoma abalogu '),
(44, 'field', 19, 'en_us', ' ijeoma is responsible for the firm s corporate compliance and regulatory matters she has advised several companies on the establishment of business entities in nigeria as well as completed registration and obtaining relevant licenses and approvals for corporate clients including statoil baker hughes parker drilling western atlas and petro explorer ltd she heads the business advisory and compliance unit in the firm and is also in charge of all company secretarial matters she also focuses on international investments and immigration practices and procedures which is a constantly evolving area with proven client satisfaction prior to joining gbc law ijeoma had a stint at another law firm where she was involved in the legal advisory and client representations on various aspects of corporate and commercial law '),
(44, 'field', 20, 'en_us', ' abia state university nigeria llb 2002 abia state university nigeria llb 2002 the nigerian bar association 2004 the nigerian bar association 2004 '),
(44, 'field', 21, 'en_us', ' corporate and commercial law corporate and commercial law legal advisory legal advisory company secretarial company secretarial regulatory compliance regulatory compliance intellectual property intellectual property business start ups business start ups international investments international investments private equity private equity tax tax '),
(44, 'field', 22, 'en_us', ''),
(44, 'field', 23, 'en_us', ' participated with the corporate team in the winding up of the subsidiary of a multi national oil servicing firm and assisted in ensuring that outstanding debts receivables are recovered on behalf of the company participated with the corporate team in the winding up of the subsidiary of a multi national oil servicing firm and assisted in ensuring that outstanding debts receivables are recovered on behalf of the company represented african capital alliance a leading african private equity company in conducting legal due diligence and structuring a management buy in culminating in a purchase of equities worth $15 million usd represented african capital alliance a leading african private equity company in conducting legal due diligence and structuring a management buy in culminating in a purchase of equities worth $15 million usd acted for a land drilling company in an $18 million private equity investment acted for a land drilling company in an $18 million private equity investment advising and assisting several clients on the establishment of nigerian subsidiaries and procuring relevant pre investment and operational approvals licenses and permits advising and assisting several clients on the establishment of nigerian subsidiaries and procuring relevant pre investment and operational approvals licenses and permits '),
(44, 'field', 24, 'en_us', ''),
(44, 'field', 4, 'en_us', ''),
(44, 'field', 5, 'en_us', ''),
(44, 'field', 6, 'en_us', ''),
(44, 'field', 13, 'en_us', ''),
(44, 'field', 7, 'en_us', ''),
(44, 'field', 3, 'en_us', ''),
(44, 'field', 8, 'en_us', ''),
(44, 'slug', 0, 'en_us', ' ijeoma abalogu '),
(44, 'title', 0, 'en_us', ' ijeoma abalogu '),
(45, 'name', 0, 'en_us', ' labour '),
(45, 'slug', 0, 'en_us', ' labour '),
(45, 'title', 0, 'en_us', ' labour '),
(46, 'name', 0, 'en_us', ' employment '),
(46, 'slug', 0, 'en_us', ' employment '),
(46, 'title', 0, 'en_us', ' employment '),
(35, 'field', 2, 'en_us', ' labour employment '),
(47, 'name', 0, 'en_us', ' arbitration '),
(47, 'slug', 0, 'en_us', ''),
(47, 'title', 0, 'en_us', ' arbitration '),
(48, 'name', 0, 'en_us', ' tax '),
(48, 'slug', 0, 'en_us', ''),
(48, 'title', 0, 'en_us', ' tax '),
(49, 'name', 0, 'en_us', ' energy '),
(49, 'slug', 0, 'en_us', ''),
(49, 'title', 0, 'en_us', ' energy '),
(36, 'field', 2, 'en_us', ' arbitration tax energy '),
(50, 'filename', 0, 'en_us', ' ijeoma abalogu jpg '),
(50, 'extension', 0, 'en_us', ' jpg '),
(50, 'kind', 0, 'en_us', ' image '),
(50, 'slug', 0, 'en_us', ' ijeoma abalogu '),
(50, 'title', 0, 'en_us', ' ijeoma abalogu '),
(52, 'filename', 0, 'en_us', ' nkoyo rapu jpg '),
(52, 'extension', 0, 'en_us', ' jpg '),
(52, 'kind', 0, 'en_us', ' image '),
(52, 'slug', 0, 'en_us', ''),
(52, 'title', 0, 'en_us', ' nkoyo rapu '),
(24, 'field', 35, 'en_us', ' federal government committees women s affirmative action committee december 1998 inaugurated by the federal ministry of women s affairs abuja nigeria assignment constitutional amendments for women constitution drafting committee january 2000 inaugurated by national centre for women s development abuja assignment prepare consensus on position of nigerian women on 1999 constitutionamerican embassy nigerian delegation selected to attend the annual business women s global renaissance summit in washington d c october 1999 assignment more business for more women across more borders canadian and african business women s alliance nigeria caabwa assignment forge business associations betweennigerian and canadian business women '),
(24, 'field', 36, 'en_us', ' norwegian human rights fund royal norwegian embassy lagos norwegian human rights fund royal norwegian embassy lagos united states agency information development usaid victoria island lagos united states agency information development usaid victoria island lagos centre for development and population activities cedpa lagos chapter centre for development and population activities cedpa lagos chapter jamaican high commission abuja nigeria jamaican high commission abuja nigeria '),
(53, 'filename', 0, 'en_us', ' 6 jpg '),
(53, 'extension', 0, 'en_us', ' jpg '),
(53, 'kind', 0, 'en_us', ' image '),
(53, 'slug', 0, 'en_us', ''),
(53, 'title', 0, 'en_us', ' 6 '),
(54, 'filename', 0, 'en_us', ' okey nwanya jpg '),
(54, 'extension', 0, 'en_us', ' jpg '),
(54, 'kind', 0, 'en_us', ' image '),
(54, 'slug', 0, 'en_us', ' okey nwanya '),
(54, 'title', 0, 'en_us', ' okey nwanya '),
(55, 'field', 18, 'en_us', ' senior associate '),
(55, 'field', 15, 'en_us', ' 6 '),
(55, 'field', 14, 'en_us', ' okey nwanya '),
(55, 'field', 19, 'en_us', ' okey has a good knowledge and understanding of the theory and practice of nigerian civil commercial and criminal laws he has experience in litigation practice and procedure from the magistrates court to the supreme court he has a good drafting and documentation skills his practice covers a broad range of contentious matters on behalf of corporate clients financial institutions and oil servicing companies okey has acted for clients in litigation both in state and federal levels as well as in several arbitrations principally conducted under icc rules he had been involved in matters from wide subject areas including energy employment credit and security commerce and real estate '),
(55, 'field', 20, 'en_us', ' university of benin llb university of benin llb nigerian bar association 2002 nigerian bar association 2002 '),
(55, 'field', 21, 'en_us', ' commercial litigation commercial litigation labour and employment labour and employment energy energy '),
(55, 'field', 22, 'en_us', ''),
(55, 'field', 23, 'en_us', ' acting as lead counsel representing an international professional services firm in a n1 4 billion action involving report by it on the issue of the incorrectly reported profit by a publicly quoted company in nigeria acting as lead counsel representing an international professional services firm in a n1 4 billion action involving report by it on the issue of the incorrectly reported profit by a publicly quoted company in nigeria represented pricewaterhousecoopers in an arbitration matter involving a long lease of its office facility represented pricewaterhousecoopers in an arbitration matter involving a long lease of its office facility conducted legal due diligence and provided pre investment advice in a $15 million usd private equity investment by african capital alliance in bankers warehouse limited foremost international private equity firm in a leading cash in transit company in nigeria conducted legal due diligence and provided pre investment advice in a $15 million usd private equity investment by african capital alliance in bankers warehouse limited foremost international private equity firm in a leading cash in transit company in nigeria represented baker hughes in several litigation matters in the niger delta region and other parts of nigeria represented baker hughes in several litigation matters in the niger delta region and other parts of nigeria represented exxonmobil in litigation matters in the niger delta region of nigeria represented exxonmobil in litigation matters in the niger delta region of nigeria represented a multi national oil service company in various labour disputes including actions at the high courts in the niger delta region represented a multi national oil service company in various labour disputes including actions at the high courts in the niger delta region advising and assisting a multi national company in respect of a tax dispute with the lagos state board of internal revenue advising and assisting a multi national company in respect of a tax dispute with the lagos state board of internal revenue '),
(55, 'field', 24, 'en_us', ''),
(55, 'field', 35, 'en_us', ''),
(55, 'field', 36, 'en_us', ''),
(55, 'field', 4, 'en_us', ''),
(55, 'field', 5, 'en_us', ''),
(55, 'field', 6, 'en_us', ''),
(55, 'field', 13, 'en_us', ''),
(55, 'field', 7, 'en_us', ''),
(55, 'field', 3, 'en_us', ''),
(55, 'field', 8, 'en_us', ''),
(55, 'slug', 0, 'en_us', ' okey nwaya '),
(55, 'title', 0, 'en_us', ' okey nwaya '),
(57, 'filename', 0, 'en_us', ' sogo akinola jpg '),
(57, 'extension', 0, 'en_us', ' jpg '),
(57, 'kind', 0, 'en_us', ' image '),
(57, 'slug', 0, 'en_us', ' 2 '),
(57, 'title', 0, 'en_us', ' sogo akinola '),
(58, 'filename', 0, 'en_us', ' sogo akinola_2 jpg '),
(58, 'extension', 0, 'en_us', ' jpg '),
(58, 'kind', 0, 'en_us', ' image '),
(58, 'slug', 0, 'en_us', ' sogo akinola '),
(58, 'title', 0, 'en_us', ' sogo akinola '),
(59, 'field', 18, 'en_us', ' associate '),
(59, 'field', 15, 'en_us', ' sogo akinola '),
(59, 'field', 14, 'en_us', ' sogo akinola '),
(59, 'field', 19, 'en_us', ' sogo has been engaged in a wide variety of transactions with special emphasis on corporate and commercial taxation power privatization foreign investment technology and emerging practice areas his commitment to exceeding expectations adding value and the assurance of success in any transaction with which he is identified places him above the ordinary lawyer '),
(59, 'field', 20, 'en_us', ' obafemi awolowo university ile ife llb obafemi awolowo university ile ife llb the nigerian bar the nigerian bar '),
(59, 'field', 21, 'en_us', ' corporate and commercial corporate and commercial taxation taxation foreign investment foreign investment '),
(59, 'field', 22, 'en_us', ''),
(59, 'field', 23, 'en_us', ''),
(59, 'field', 24, 'en_us', ''),
(59, 'field', 35, 'en_us', ''),
(59, 'field', 36, 'en_us', ''),
(59, 'field', 4, 'en_us', ''),
(59, 'field', 5, 'en_us', ''),
(59, 'field', 6, 'en_us', ''),
(59, 'field', 13, 'en_us', ''),
(59, 'field', 7, 'en_us', ''),
(59, 'field', 3, 'en_us', ''),
(59, 'field', 8, 'en_us', ''),
(59, 'slug', 0, 'en_us', ' sogo akinola '),
(59, 'title', 0, 'en_us', ' sogo akinola '),
(59, 'field', 37, 'en_us', ' jamaican jamaican chinese chinese '),
(61, 'filename', 0, 'en_us', ' sandra asuzu jpg '),
(61, 'extension', 0, 'en_us', ' jpg '),
(61, 'kind', 0, 'en_us', ' image '),
(61, 'slug', 0, 'en_us', ' 7 '),
(61, 'title', 0, 'en_us', ' sandra asuzu '),
(62, 'filename', 0, 'en_us', ' sandra asuzu_1 jpg '),
(62, 'extension', 0, 'en_us', ' jpg '),
(62, 'kind', 0, 'en_us', ' image '),
(62, 'slug', 0, 'en_us', ''),
(62, 'title', 0, 'en_us', ' sandra asuzu '),
(63, 'field', 18, 'en_us', ' associate '),
(63, 'field', 15, 'en_us', ' sandra asuzu '),
(63, 'field', 14, 'en_us', ' sandra asuzu '),
(63, 'field', 19, 'en_us', ' sandra focuses on the energy and projects practice of gbc law especially in gas to power projects she also participates actively in the corporate commercial and maritime areas of the firm she demonstrates remarkable competencies in project finance regulatory and compliance general corporate commercial practice '),
(63, 'field', 20, 'en_us', ' university of nigeria nsukka llm university of nigeria nsukka llm the nigerian bar 2012 the nigerian bar 2012 '),
(63, 'field', 21, 'en_us', ' energy and projects energy and projects regulatory and compliance regulatory and compliance maritime and intellectual property maritime and intellectual property '),
(63, 'field', 22, 'en_us', ' nigerian bar association nigerian bar association institute of chartered secretaries and administrators of nigeria institute of chartered secretaries and administrators of nigeria '),
(63, 'field', 37, 'en_us', ''),
(63, 'field', 36, 'en_us', ''),
(63, 'field', 23, 'en_us', ' successfully carrying out due diligence preparing transactional documents and was also involved in the negotiations for the project financing of a gas processing plant which pegged at the sum of $64m in a combination of equity and loan successfully carrying out due diligence preparing transactional documents and was also involved in the negotiations for the project financing of a gas processing plant which pegged at the sum of $64m in a combination of equity and loan analyzing and providing legal opinions in respect of nigerian content issues relating to oil and gas projects and petroleum operations analyzing and providing legal opinions in respect of nigerian content issues relating to oil and gas projects and petroleum operations '),
(63, 'field', 24, 'en_us', ''),
(63, 'field', 35, 'en_us', ''),
(63, 'field', 4, 'en_us', ''),
(63, 'field', 5, 'en_us', ''),
(63, 'field', 6, 'en_us', ''),
(63, 'field', 13, 'en_us', ''),
(63, 'field', 7, 'en_us', ''),
(63, 'field', 3, 'en_us', ''),
(63, 'field', 8, 'en_us', ''),
(63, 'slug', 0, 'en_us', ' sandra asuzu '),
(63, 'title', 0, 'en_us', ' sandra asuzu '),
(64, 'filename', 0, 'en_us', ' 3 jpg '),
(64, 'extension', 0, 'en_us', ' jpg '),
(64, 'kind', 0, 'en_us', ' image '),
(64, 'slug', 0, 'en_us', ''),
(64, 'title', 0, 'en_us', ' 3 '),
(65, 'filename', 0, 'en_us', ' ayoade oluwasanmi jpg '),
(65, 'extension', 0, 'en_us', ' jpg '),
(65, 'kind', 0, 'en_us', ' image '),
(65, 'slug', 0, 'en_us', ''),
(65, 'title', 0, 'en_us', ' ayoade oluwasanmi '),
(66, 'field', 18, 'en_us', ' associate '),
(66, 'field', 15, 'en_us', ' 3 '),
(66, 'field', 14, 'en_us', ' ayoade oluwasanmi '),
(66, 'field', 19, 'en_us', ' ayoade has over 10 years cognate experience advising on and litigating tax labour oil and gas company law and recovery of premises related matters he has a wide experience of the law on a range of issues but has a bias for commercial litigation and arbitration he has practical working knowledge in litigation matters on a wide range of issues as diverse as energy employment credit transactions commercial transactions and real estate he is a member of the litigation team at gbc law '),
(66, 'field', 20, 'en_us', ' ambrose alli university llb 2004 ambrose alli university llb 2004 the nigerian bar 2005 the nigerian bar 2005 '),
(66, 'field', 21, 'en_us', ' corporate commercial litigation corporate commercial litigation corporate and commercial law corporate and commercial law legal advisory legal advisory '),
(66, 'field', 22, 'en_us', ' the nigerian bar association the nigerian bar association the uk chartered institute of arbitrators the uk chartered institute of arbitrators '),
(66, 'field', 37, 'en_us', ''),
(66, 'field', 36, 'en_us', ''),
(66, 'field', 23, 'en_us', ' provided representation for an international professional services firm in a n1 4 billion action involving report by it on the issue of the incorrectly reported profit by a publicly quoted company in nigeria provided representation for an international professional services firm in a n1 4 billion action involving report by it on the issue of the incorrectly reported profit by a publicly quoted company in nigeria represented a multi national oil company at the citizens mediation centre in a labour related matter filed by its employees represented a multi national oil company at the citizens mediation centre in a labour related matter filed by its employees advised a multi national oil service company with regards to its liabilities and responsibilities in connection with the environmental impact of the company s drilling activities in the niger delta region of nigeria advised a multi national oil service company with regards to its liabilities and responsibilities in connection with the environmental impact of the company s drilling activities in the niger delta region of nigeria represented teleglobe in the enforcement of a foreign judgment in nigeria relating to the termination of internet subscription service agreement represented teleglobe in the enforcement of a foreign judgment in nigeria relating to the termination of internet subscription service agreement was the counsel in charge of the litigation on behalf of baker hughes nigeria limited a multinational oil services firm with regards to illegal tax levied against it was the counsel in charge of the litigation on behalf of baker hughes nigeria limited a multinational oil services firm with regards to illegal tax levied against it was part of the team that represented and advised african capital alliance a leading african private equity company in conducting legal due diligence and structuring a management buy in culminating in a purchase of majority shares in the dominant cash in transit services company in nigeria was part of the team that represented and advised african capital alliance a leading african private equity company in conducting legal due diligence and structuring a management buy in culminating in a purchase of majority shares in the dominant cash in transit services company in nigeria was part of the litigation team that represented pricewaterhousecooopers a multinational financial advisory and auditing firm with regards to the alleged misstatement of profits by cadbury nigeria limited which led to an increased shareholding by cadbury in the uk was part of the litigation team that represented pricewaterhousecooopers a multinational financial advisory and auditing firm with regards to the alleged misstatement of profits by cadbury nigeria limited which led to an increased shareholding by cadbury in the uk was part of the team that instituted an action against the lagos state government and obtained judgement in favour of a client obtaining a reversal of a purported revocation of both a certificate of occupancy and allocation by the new towns development authority was part of the team that instituted an action against the lagos state government and obtained judgement in favour of a client obtaining a reversal of a purported revocation of both a certificate of occupancy and allocation by the new towns development authority '),
(66, 'field', 24, 'en_us', ''),
(66, 'field', 35, 'en_us', ''),
(66, 'field', 4, 'en_us', ''),
(66, 'field', 5, 'en_us', ''),
(66, 'field', 6, 'en_us', ''),
(66, 'field', 13, 'en_us', ''),
(66, 'field', 7, 'en_us', ''),
(66, 'field', 3, 'en_us', ''),
(66, 'field', 8, 'en_us', ''),
(66, 'slug', 0, 'en_us', ' ayoade oluwasanmi '),
(66, 'title', 0, 'en_us', ' ayoade oluwasanmi '),
(68, 'extension', 0, 'en_us', ' jpg '),
(68, 'kind', 0, 'en_us', ' image '),
(68, 'filename', 0, 'en_us', ' edward vera cruz2 jpg '),
(68, 'slug', 0, 'en_us', ''),
(68, 'title', 0, 'en_us', ' edward vera cruz2 '),
(69, 'filename', 0, 'en_us', ' edward vera cruz jpg '),
(69, 'extension', 0, 'en_us', ' jpg '),
(69, 'kind', 0, 'en_us', ' image '),
(69, 'slug', 0, 'en_us', ' edward vera cruz '),
(69, 'title', 0, 'en_us', ' edward vera cruz '),
(70, 'field', 18, 'en_us', ' of counsel '),
(70, 'field', 15, 'en_us', ' edward vera cruz '),
(70, 'field', 14, 'en_us', ' edward vera cruz2 '),
(70, 'field', 19, 'en_us', ' edward s practice extends over 20 years and has covered a comprehensive range of international corporate and commercial transactions in particular he focuses on oil and gas law law of credit and security international business transactions law intellectual property and information technology law in the energy sector edward has acted for sponsors and a wide variety of other clients in major project finance general corporate and commercial transactions and regulatory matters edward has held various leadership positions in most of the firms he has worked with he was the head of chambers in the firm of lanre olaoluwa co now matrix solicitors and later managing partner in the firm of victor and charles solicitors now part of aelex partners a position he held for over 7 years he is a regular participant at local and international seminars and was for a number of years both a visiting lecturer on the nigerian institute of advanced legal studies advance legal drafting course and the contributing rapporteur for nigeria for the journal of energy and natural resources law '),
(70, 'field', 20, 'en_us', ' university of lagos llb university of lagos llb the nigerian bar association 1990 the nigerian bar association 1990 solicitor of the supreme court of england and wales solicitor of the supreme court of england and wales solicitor of the supreme court of england and wales solicitor of the supreme court of england and wales '),
(70, 'field', 21, 'en_us', ' oil and gas oil and gas energy energy international trade international trade public procurement public procurement project finance project finance '),
(70, 'field', 22, 'en_us', ' solicitor of the supreme court of england and wales solicitor of the supreme court of england and wales the law society of england wales the law society of england wales the procurement lawyers association the procurement lawyers association the association of british council fellows the association of british council fellows the association of british chevening scholars the association of british chevening scholars gideons international gideons international '),
(70, 'field', 37, 'en_us', ''),
(70, 'field', 36, 'en_us', ''),
(70, 'field', 23, 'en_us', ' representing texaco inc and providing general legal advice on the implementation in nigeria of an incorporated joint venture between chevron and texaco for the marketing internationally of marine fuels and lubricants representing texaco inc and providing general legal advice on the implementation in nigeria of an incorporated joint venture between chevron and texaco for the marketing internationally of marine fuels and lubricants representing enron international enron benin gas holdings ltd and enron west africa pipeline ltd and providing general legal advisory work and consultations on the structuring contract documentation and security issues on the acquisition by enron of the rights to all of the gas and condensate in the aje field of oml 113 and future rights in the gas and condensate produced from oml 113 outside the aje field representing enron international enron benin gas holdings ltd and enron west africa pipeline ltd and providing general legal advisory work and consultations on the structuring contract documentation and security issues on the acquisition by enron of the rights to all of the gas and condensate in the aje field of oml 113 and future rights in the gas and condensate produced from oml 113 outside the aje field rendered advice to total exploration nig ltd on the legal aspects of the proposed acquisition by total transferee of the interests of ashland nigeria exploration unlimited in various oil producing licences in nigeria rendered advice to total exploration nig ltd on the legal aspects of the proposed acquisition by total transferee of the interests of ashland nigeria exploration unlimited in various oil producing licences in nigeria advising and documentation for total upstream nigeria ltd on the unincorporated joint venture with a local and another international party for the joint prospecting for and exploitation of the oil deposits in a virgin offshore concession opl 246 advising and documentation for total upstream nigeria ltd on the unincorporated joint venture with a local and another international party for the joint prospecting for and exploitation of the oil deposits in a virgin offshore concession opl 246 preparing farm in agreement involving total upstream nigeria ltd on the acquisition by total farminee of 24% undivided interest in the deep offshore field opl 246 granted to south atlantic petroleum ltd preparing farm in agreement involving total upstream nigeria ltd on the acquisition by total farminee of 24% undivided interest in the deep offshore field opl 246 granted to south atlantic petroleum ltd completed legal regulatory and due diligence aspects of the acquisition by petroleum oil gas company of south africa nig ltd petrosa nigeria transferee of 50% non operating interest in the existing production fields of addax petroleum nigeria completed legal regulatory and due diligence aspects of the acquisition by petroleum oil gas company of south africa nig ltd petrosa nigeria transferee of 50% non operating interest in the existing production fields of addax petroleum nigeria one of the legal advisers nigeria to the project sponsors commercial group including chevron shell nigeria national petroleum corporation sobegaz sotogaz and the ghanaian national petroleum corporation which included project structuring project financing and environmental issues advise on the west african sub regional gas pipeline project one of the legal advisers nigeria to the project sponsors commercial group including chevron shell nigeria national petroleum corporation sobegaz sotogaz and the ghanaian national petroleum corporation which included project structuring project financing and environmental issues advise on the west african sub regional gas pipeline project team member pre project advisory team to mobil power inc and mobil producing nigeria unlimited project sponsor preliminary behind the scenes advisory work and consultations on the statutory and regulatory framework existing in nigeria for the setting up of an independent natural gas based power team member pre project advisory team to mobil power inc and mobil producing nigeria unlimited project sponsor preliminary behind the scenes advisory work and consultations on the statutory and regulatory framework existing in nigeria for the setting up of an independent natural gas based power '),
(70, 'field', 24, 'en_us', ''),
(70, 'field', 35, 'en_us', ''),
(70, 'field', 4, 'en_us', ''),
(70, 'field', 5, 'en_us', ''),
(70, 'field', 6, 'en_us', ''),
(70, 'field', 13, 'en_us', ''),
(70, 'field', 7, 'en_us', ''),
(70, 'field', 3, 'en_us', ''),
(70, 'field', 8, 'en_us', ''),
(70, 'slug', 0, 'en_us', ' edward o vera cruz '),
(70, 'title', 0, 'en_us', ' edward o vera cruz '),
(72, 'field', 15, 'en_us', ' blank '),
(72, 'field', 14, 'en_us', ' blank2 '),
(72, 'field', 18, 'en_us', ' partner '),
(72, 'field', 19, 'en_us', ' lola has over 19 years of hands on experience in corporate commercial law she has extensive experience and expertise in handling large scale commercial transactions particularly involving the banking and financial services industry she has worked with first atlantic bank limited as the legal adviser company secretary and in the legal department of union bank where she advised on a variety of legal matters whilst in these organisations she was involved in the negotiation and documentation of several banking transactions and the drafting of various commercial contracts such as the acquisition of a merchant banking subsidiary by union bank '),
(72, 'field', 20, 'en_us', ' ogun state university llb 1990 ogun state university llb 1990 nigerian bar association 1991 nigerian bar association 1991 university of lagos masters in law university of lagos masters in law iese university of navarra barcelona spain mba iese university of navarra barcelona spain mba '),
(72, 'field', 21, 'en_us', ' trade and investments trade and investments corporate law corporate law banking and finance banking and finance employment employment commercial contracts commercial contracts company secretarial practice company secretarial practice project finance project finance mergers and acquisitions mergers and acquisitions '),
(72, 'field', 22, 'en_us', ' nigerian bar association nigerian bar association '),
(72, 'field', 37, 'en_us', ' english and french english and french '),
(72, 'field', 36, 'en_us', ''),
(72, 'field', 23, 'en_us', ' advising on the acquisition of a merchant banking subsidiary by union bank of nigeria plc advising on the acquisition of a merchant banking subsidiary by union bank of nigeria plc advising on the acquisition of flexcube banking software by union bank of nigeria plc and finnacle banking software by first atlantic bank ltd advising on the acquisition of flexcube banking software by union bank of nigeria plc and finnacle banking software by first atlantic bank ltd advising on the acquisition of an internet based money transfer facility by first atlantic bank ltd advising on the acquisition of an internet based money transfer facility by first atlantic bank ltd advising on the setting up of a staff share investment scheme by first atlantic bank ltd advising on the setting up of a staff share investment scheme by first atlantic bank ltd advising and documenting various syndicated facilities relating to peugeot automobile nigeria intel oil services g cappa international distillers victoria garden hotels and several other leading companies advising and documenting various syndicated facilities relating to peugeot automobile nigeria intel oil services g cappa international distillers victoria garden hotels and several other leading companies drafting reviewing and advising on various security documentation including but not limited to legal mortgages debentures fixed floating and mortgage equipment leases including sale and lease back contracts pledges guarantees and indemnities drafting reviewing and advising on various security documentation including but not limited to legal mortgages debentures fixed floating and mortgage equipment leases including sale and lease back contracts pledges guarantees and indemnities conducting market research and putting together the business plan of venture partners a start up venture capital company focused on offering financial and managerial support to small and medium scale enterprises conducting market research and putting together the business plan of venture partners a start up venture capital company focused on offering financial and managerial support to small and medium scale enterprises '),
(72, 'field', 24, 'en_us', ''),
(72, 'field', 35, 'en_us', ''),
(72, 'field', 4, 'en_us', ''),
(72, 'field', 5, 'en_us', ''),
(72, 'field', 6, 'en_us', ''),
(72, 'field', 13, 'en_us', ''),
(72, 'field', 7, 'en_us', ''),
(72, 'field', 3, 'en_us', ''),
(72, 'field', 8, 'en_us', ''),
(72, 'slug', 0, 'en_us', ' lola ogunmodede '),
(72, 'title', 0, 'en_us', ' lola ogunmodede '),
(73, 'field', 18, 'en_us', ' partner '),
(73, 'field', 15, 'en_us', ' blank '),
(73, 'field', 14, 'en_us', ' blank2 '),
(73, 'field', 19, 'en_us', ' wole is responsible for intellectual property matters at gbc law he also focuses on real estate transactions and corporate commercial law he has over 19 years experience of legal practice and also has considerable expertise in e commerce he has also been involved in a number of transactions in the nigerian energy sector wole worked as an associate at sheikh co solicitors london before joining merrill lynch international bank london where he worked in the private banking department he worked as company secretary at dabis international company limited london also before a stint at irving bonnar where he worked with the corporate commercial group on a variety of transactions for both domestic and international clients '),
(73, 'field', 20, 'en_us', ' lagos state university llb 1990 lagos state university llb 1990 the nigerian bar 1991 the nigerian bar 1991 the washington college of law masters in law the washington college of law masters in law he qualified as a solicitor in england and wales in 1999 he qualified as a solicitor in england and wales in 1999 he qualified as a solicitor in england and wales in 1999 he qualified as a solicitor in england and wales in 1999 '),
(73, 'field', 21, 'en_us', ' intellectual property intellectual property energy energy banking and finance banking and finance banking and finance banking and finance real estate real estate '),
(73, 'field', 22, 'en_us', ' he qualified as a solicitor in england and wales in 1999 he qualified as a solicitor in england and wales in 1999 the international trademark association inta the international trademark association inta '),
(73, 'field', 37, 'en_us', ''),
(73, 'field', 36, 'en_us', ''),
(73, 'field', 23, 'en_us', ''),
(73, 'field', 24, 'en_us', ''),
(73, 'field', 35, 'en_us', ''),
(73, 'field', 4, 'en_us', ''),
(73, 'field', 5, 'en_us', ''),
(73, 'field', 6, 'en_us', ''),
(73, 'field', 13, 'en_us', ''),
(73, 'field', 7, 'en_us', ''),
(73, 'field', 3, 'en_us', ''),
(73, 'field', 8, 'en_us', ''),
(73, 'slug', 0, 'en_us', ' wole tejuoso '),
(73, 'title', 0, 'en_us', ' wole tejuoso '),
(74, 'filename', 0, 'en_us', ' blank jpg '),
(74, 'extension', 0, 'en_us', ' jpg '),
(74, 'kind', 0, 'en_us', ' image '),
(74, 'slug', 0, 'en_us', ''),
(74, 'title', 0, 'en_us', ' blank '),
(75, 'filename', 0, 'en_us', ' blank2 jpg '),
(75, 'extension', 0, 'en_us', ' jpg '),
(75, 'kind', 0, 'en_us', ' image '),
(75, 'slug', 0, 'en_us', ''),
(75, 'title', 0, 'en_us', ' blank2 '),
(76, 'filename', 0, 'en_us', ' blank2_1 jpg '),
(76, 'extension', 0, 'en_us', ' jpg '),
(76, 'kind', 0, 'en_us', ' image '),
(76, 'slug', 0, 'en_us', ''),
(76, 'title', 0, 'en_us', ' blank2 '),
(77, 'filename', 0, 'en_us', ' blank_1 jpg '),
(77, 'extension', 0, 'en_us', ' jpg '),
(77, 'kind', 0, 'en_us', ' image '),
(77, 'slug', 0, 'en_us', ''),
(77, 'title', 0, 'en_us', ' blank '),
(78, 'field', 18, 'en_us', ' consultant '),
(78, 'field', 15, 'en_us', ' blank '),
(78, 'field', 14, 'en_us', ' blank2 '),
(78, 'field', 19, 'en_us', ' dr egede phd international law has over 25 years extensive practice experience his expertise covers a range of subjects including international maritime and trade law foreign investment law enforcement of foreign judgments oil and gas law bilateral investment treaties bits claims state and diplomatic immunity law and the law on the regulation and management of offshore mineral and fisheries and all aspects of international law over the years he has acted and or provided advice to various multinational corporations mncs banks governments and government agencies he has provided advice in respect of the recognition and enforcement of the judgment of the court of a latin american country in nigeria and the application of the united states foreign corrupt practices act fcpa in nigeria he has also advised a state government in nigeria on its rights under international law to the offshore sea bed and the resources therein further he has provided advice on the impact of the european union common fisheries policy dr egede is currently engaged in interdisciplinary teaching and research in international law and international relations at the cardiff university and is a fellow of the higher education academy fhea united kingdom he has written and published books with renowned publishers and journal articles in peer reviewed international journals in the area of international law dr egede is a regular participant at local and international conferences seminars and has delivered papers in various places including the international hydrographic organisation international association of geodesy advisory board on the law of the sea ablos conference in monaco the african studies association of the uk asauk conference at the oxford university and the institute for international shipping and trade law swansea university '),
(78, 'field', 20, 'en_us', ' university of benin llb hons university of benin llb hons university of lagos llm university of lagos llm cardiff university cardiff wales united kingdom phd in international law cardiff university cardiff wales united kingdom phd in international law '),
(78, 'field', 21, 'en_us', ' international law international law international maritime and trade law international maritime and trade law foreign investment law foreign investment law enforcement of foreign judgments enforcement of foreign judgments oil and gas law oil and gas law bilateral investment treaties bilateral investment treaties state and diplomatic immunity law state and diplomatic immunity law '),
(78, 'field', 22, 'en_us', ' nigerian bar association nigerian bar association the international law association the international law association the academic council on the united nations systems the academic council on the united nations systems the legal economic regulatory section of gerson lehrman group the legal economic regulatory section of gerson lehrman group the welsh centre of international affairs wcia the welsh centre of international affairs wcia legal affairs committee wales united kingdom legal affairs committee wales united kingdom '),
(78, 'field', 37, 'en_us', ''),
(78, 'field', 36, 'en_us', ''),
(78, 'field', 23, 'en_us', ''),
(78, 'field', 24, 'en_us', ''),
(78, 'field', 35, 'en_us', ''),
(78, 'field', 4, 'en_us', ''),
(78, 'field', 5, 'en_us', ''),
(78, 'field', 6, 'en_us', ''),
(78, 'field', 13, 'en_us', ''),
(78, 'field', 7, 'en_us', ''),
(78, 'field', 3, 'en_us', ''),
(78, 'field', 8, 'en_us', ''),
(78, 'slug', 0, 'en_us', ' edwin egede '),
(78, 'title', 0, 'en_us', ' edwin egede '),
(79, 'filename', 0, 'en_us', ' exxon mobil jpg '),
(79, 'extension', 0, 'en_us', ' jpg '),
(79, 'kind', 0, 'en_us', ' image '),
(79, 'slug', 0, 'en_us', ''),
(79, 'title', 0, 'en_us', ' exxon mobil '),
(80, 'filename', 0, 'en_us', ' statoil ngieria jpg '),
(80, 'extension', 0, 'en_us', ' jpg '),
(80, 'kind', 0, 'en_us', ' image '),
(80, 'slug', 0, 'en_us', ''),
(80, 'title', 0, 'en_us', ' statoil ngieria '),
(81, 'filename', 0, 'en_us', ' baker hughes jpg '),
(81, 'extension', 0, 'en_us', ' jpg '),
(81, 'kind', 0, 'en_us', ' image '),
(81, 'slug', 0, 'en_us', ''),
(81, 'title', 0, 'en_us', ' baker hughes '),
(82, 'slug', 0, 'en_us', ''),
(82, 'field', 4, 'en_us', ' gbc law '),
(82, 'field', 5, 'en_us', ''),
(82, 'field', 6, 'en_us', ' a leading law firm in nigeria with an eye for business with focus on energy projects foreign investments and corporate commercial law '),
(82, 'field', 13, 'en_us', ' gbenga biobaku and co gbc '),
(82, 'field', 7, 'en_us', ''),
(82, 'field', 3, 'en_us', ''),
(82, 'field', 8, 'en_us', ''),
(83, 'filename', 0, 'en_us', ' gbenga biobaku and co gbc jpg '),
(83, 'extension', 0, 'en_us', ' jpg '),
(83, 'kind', 0, 'en_us', ' image '),
(83, 'slug', 0, 'en_us', ''),
(83, 'title', 0, 'en_us', ' gbenga biobaku and co gbc '),
(84, 'filename', 0, 'en_us', ' bj services nigeria jpg '),
(84, 'extension', 0, 'en_us', ' jpg '),
(84, 'kind', 0, 'en_us', ' image '),
(84, 'slug', 0, 'en_us', ''),
(84, 'title', 0, 'en_us', ' bj services nigeria '),
(85, 'filename', 0, 'en_us', ' parker drilling jpg '),
(85, 'extension', 0, 'en_us', ' jpg '),
(85, 'kind', 0, 'en_us', ' image '),
(85, 'slug', 0, 'en_us', ''),
(85, 'title', 0, 'en_us', ' parker drilling '),
(86, 'filename', 0, 'en_us', ' oceaneering nigeria jpg '),
(86, 'extension', 0, 'en_us', ' jpg '),
(86, 'kind', 0, 'en_us', ' image '),
(86, 'slug', 0, 'en_us', ''),
(86, 'title', 0, 'en_us', ' oceaneering nigeria '),
(87, 'filename', 0, 'en_us', ' african capital alliance jpg '),
(87, 'extension', 0, 'en_us', ' jpg '),
(87, 'kind', 0, 'en_us', ' image '),
(87, 'slug', 0, 'en_us', ' african capital alliance 1 '),
(87, 'title', 0, 'en_us', ' african capital alliance '),
(88, 'filename', 0, 'en_us', ' rhino linings nigeria jpg '),
(88, 'extension', 0, 'en_us', ' jpg '),
(88, 'kind', 0, 'en_us', ' image '),
(88, 'slug', 0, 'en_us', ' african capital alliance '),
(88, 'title', 0, 'en_us', ' rhino linings '),
(89, 'filename', 0, 'en_us', ' pentagon petroleum limited jpg '),
(89, 'extension', 0, 'en_us', ' jpg '),
(89, 'kind', 0, 'en_us', ' image '),
(89, 'slug', 0, 'en_us', ''),
(89, 'title', 0, 'en_us', ' pentagon petroleum limited '),
(100, 'field', 11, 'en_us', ' pentagon petroleum limited '),
(90, 'field', 11, 'en_us', ' exxon mobil '),
(90, 'field', 12, 'en_us', ' exxon mobil '),
(90, 'slug', 0, 'en_us', ''),
(91, 'field', 11, 'en_us', ' statoil '),
(91, 'field', 12, 'en_us', ' statoil ngieria '),
(91, 'slug', 0, 'en_us', ''),
(92, 'field', 11, 'en_us', ' baker hughes '),
(92, 'field', 12, 'en_us', ' baker hughes '),
(92, 'slug', 0, 'en_us', ''),
(93, 'field', 11, 'en_us', ' bj services nigeria limited '),
(93, 'field', 12, 'en_us', ' bj services nigeria '),
(93, 'slug', 0, 'en_us', ''),
(94, 'field', 11, 'en_us', ' parker drilling '),
(94, 'field', 12, 'en_us', ' parker drilling '),
(94, 'slug', 0, 'en_us', ''),
(95, 'field', 11, 'en_us', ' oceaneering nigeria '),
(95, 'field', 12, 'en_us', ' oceaneering nigeria '),
(95, 'slug', 0, 'en_us', ''),
(96, 'field', 11, 'en_us', ' african capital alliance '),
(96, 'field', 12, 'en_us', ' african capital alliance '),
(96, 'slug', 0, 'en_us', ''),
(97, 'field', 11, 'en_us', ' rhino linings ');
INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(97, 'field', 12, 'en_us', ' rhino linings '),
(97, 'slug', 0, 'en_us', ''),
(98, 'filename', 0, 'en_us', ' pentagon petroleum limited jpg '),
(98, 'extension', 0, 'en_us', ' jpg '),
(98, 'kind', 0, 'en_us', ' image '),
(98, 'slug', 0, 'en_us', ' pentagon petroleum limited '),
(98, 'title', 0, 'en_us', ' pentagon petroleum limited '),
(99, 'filename', 0, 'en_us', ' taba nigeria jpg '),
(99, 'extension', 0, 'en_us', ' jpg '),
(99, 'kind', 0, 'en_us', ' image '),
(99, 'slug', 0, 'en_us', ''),
(99, 'title', 0, 'en_us', ' taba nigeria '),
(100, 'field', 12, 'en_us', ' pentagon petroleum limited '),
(100, 'slug', 0, 'en_us', ''),
(101, 'field', 11, 'en_us', ' taba nigeria '),
(101, 'field', 12, 'en_us', ' taba nigeria '),
(101, 'slug', 0, 'en_us', ''),
(102, 'slug', 0, 'en_us', ''),
(102, 'title', 0, 'en_us', ' sitemap '),
(103, 'slug', 0, 'en_us', ''),
(103, 'title', 0, 'en_us', ' cases and results landing '),
(104, 'field', 38, 'en_us', ' mobil producing nigeria '),
(104, 'field', 41, 'en_us', ' the client did not have to retain the claimant in its company against its will the client was relieved from the exposure paying the n500million claim '),
(104, 'field', 15, 'en_us', ' employee for life '),
(104, 'field', 39, 'en_us', ' the defendant claimed to be a life employee of exxonmobil pursuant to an oral understanding between him and the company following the acquisition of his land for the construction of an airstrip by exxonmobil he brought the action claiming n500million in libel and breach of contract against the exxonmobil at the high court of akwa ibom state of nigeria in 2008 following the withdrawal of his services by the exxonmobil s contractor who engaged him '),
(104, 'field', 40, 'en_us', ' gbc team reviewed the facts of the case and the relevant laws and filed a strong defense on behalf of our client challenging the claims in their entirety the team further canvassed strong legal arguments in court on behalf of the client and urged the court to dismiss the suit the entire claims against the client n500million were eventually dismissed by the court '),
(104, 'field', 4, 'en_us', ''),
(104, 'field', 5, 'en_us', ''),
(104, 'field', 6, 'en_us', ''),
(104, 'field', 13, 'en_us', ''),
(104, 'field', 7, 'en_us', ''),
(104, 'field', 3, 'en_us', ''),
(104, 'field', 8, 'en_us', ''),
(104, 'slug', 0, 'en_us', ' employee for life udo atang vs exxonmobil '),
(104, 'title', 0, 'en_us', ' employee for life '),
(105, 'filename', 0, 'en_us', ' employee for life jpg '),
(104, 'field', 43, 'en_us', ' the defense of exxonmobil against a libel and breach case '),
(104, 'field', 42, 'en_us', ' suit no hek 81 2008 udo atang essien v mobil producing nigeria unlimited '),
(105, 'extension', 0, 'en_us', ' jpg '),
(105, 'kind', 0, 'en_us', ' image '),
(105, 'slug', 0, 'en_us', ''),
(105, 'title', 0, 'en_us', ' employee for life '),
(106, 'filename', 0, 'en_us', ' new minerals and mining regulations 2011 pdf '),
(106, 'extension', 0, 'en_us', ' pdf '),
(106, 'kind', 0, 'en_us', ' pdf '),
(106, 'slug', 0, 'en_us', ''),
(106, 'title', 0, 'en_us', ' new minerals and mining regulations 2011 '),
(107, 'field', 33, 'en_us', ' new minerals and mining regulations 2011 '),
(107, 'field', 32, 'en_us', ' the federal ministry of mines and steel development the ministry recently issued new mining regulations titled the nigerian minerals and mining regulations 2011 the regulations '),
(107, 'field', 2, 'en_us', ''),
(107, 'slug', 0, 'en_us', ' the new minerals and mining regulations 2011 '),
(107, 'title', 0, 'en_us', ' the new minerals and mining regulations 2011 '),
(108, 'filename', 0, 'en_us', ' nogicd act 2010 newsletter pdf '),
(108, 'extension', 0, 'en_us', ' pdf '),
(108, 'kind', 0, 'en_us', ' pdf '),
(108, 'slug', 0, 'en_us', ''),
(108, 'title', 0, 'en_us', ' nogicd act 2010 newsletter '),
(109, 'field', 33, 'en_us', ' nogicd act 2010 newsletter '),
(109, 'field', 32, 'en_us', ' the nigerian content development and monitoring board issues draft regulations for the implementation of the nigerian oil and gas industry content development act 2010 '),
(109, 'field', 2, 'en_us', ''),
(109, 'slug', 0, 'en_us', ' ncdmb issues draft regulations for implementation of the nigerian content act '),
(109, 'title', 0, 'en_us', ' ncdmb issues draft regulations for implementation of the nigerian content act '),
(110, 'filename', 0, 'en_us', ' employees compensation act 2010 pdf '),
(110, 'extension', 0, 'en_us', ' pdf '),
(110, 'kind', 0, 'en_us', ' pdf '),
(110, 'slug', 0, 'en_us', ''),
(110, 'title', 0, 'en_us', ' employees compensation act 2010 '),
(111, 'field', 33, 'en_us', ' employees compensation act 2010 '),
(111, 'field', 32, 'en_us', ' the federal government of nigeria in its bid to improve the welfare of nigerian employees recently enacted the employees compensation act 2010 eca or the act which introduces a new social security scheme for workers in the country '),
(111, 'field', 2, 'en_us', ''),
(111, 'slug', 0, 'en_us', ' employees compensation act 2010 '),
(111, 'title', 0, 'en_us', ' employees compensation act 2010 '),
(112, 'filename', 0, 'en_us', ' roadmap for power sector reform pdf '),
(112, 'extension', 0, 'en_us', ' pdf '),
(112, 'kind', 0, 'en_us', ' pdf '),
(112, 'slug', 0, 'en_us', ''),
(112, 'title', 0, 'en_us', ' roadmap for power sector reform '),
(113, 'field', 33, 'en_us', ' roadmap for power sector reform '),
(113, 'field', 32, 'en_us', ' president goodluck jonathan launched the most comprehensive plan which it tagged roadmap for power sector reform aimed at restructuring the power sector and achieve stable electricity in the country '),
(113, 'field', 2, 'en_us', ''),
(113, 'slug', 0, 'en_us', ' nigeria launches roadmap for power sector reform '),
(113, 'title', 0, 'en_us', ' nigeria launches roadmap for power sector reform '),
(114, 'filename', 0, 'en_us', ' investing_in_nigeria_oandg industry_1 pdf '),
(114, 'extension', 0, 'en_us', ' pdf '),
(114, 'kind', 0, 'en_us', ' pdf '),
(114, 'slug', 0, 'en_us', ''),
(114, 'title', 0, 'en_us', ' investing in nigeria oand g industry '),
(115, 'field', 33, 'en_us', ' investing in nigeria oand g industry '),
(115, 'field', 32, 'en_us', ' nigeria is one of the world s largest producers of crude oil the country currently produces an average of 2 5 million barrels of crude oil per day this makes her the 10th largest producer of crude oil in the world and the 6th largest exporter among opec members production capacity currently stands at about 3 million barrels per day whilst reserves is about 35 billion barrels which the government intends to increase to 40 billion barrels by the year 2010 '),
(115, 'field', 2, 'en_us', ''),
(115, 'slug', 0, 'en_us', ' investing in nigerias oil and gas industry '),
(115, 'title', 0, 'en_us', ' investing in nigeria s oil and gas industry '),
(116, 'filename', 0, 'en_us', ' taxation_of_expatriates_in_nigeria pdf '),
(116, 'extension', 0, 'en_us', ' pdf '),
(116, 'kind', 0, 'en_us', ' pdf '),
(116, 'slug', 0, 'en_us', ''),
(116, 'title', 0, 'en_us', ' taxation of expatriates in nigeria '),
(117, 'field', 33, 'en_us', ' taxation of expatriates in nigeria '),
(117, 'field', 32, 'en_us', ' this article examines in a very general way the existing framework for the taxation of expatriates in nigeria it considers in brief the applicable tax rate the portion of the expatriate income that is actually subject to tax how the tax is calculated when an expatriate would be deemed resident in nigeria and how the tax filing is carried out '),
(117, 'field', 2, 'en_us', ''),
(117, 'slug', 0, 'en_us', ' taxation of expatriate '),
(117, 'title', 0, 'en_us', ' taxation of expatriate '),
(118, 'filename', 0, 'en_us', ' mining_in_nigeria pdf '),
(118, 'extension', 0, 'en_us', ' pdf '),
(118, 'kind', 0, 'en_us', ' pdf '),
(118, 'slug', 0, 'en_us', ''),
(118, 'title', 0, 'en_us', ' mining in nigeria '),
(119, 'field', 33, 'en_us', ' mining in nigeria '),
(119, 'field', 32, 'en_us', ' the mining industry is now a global industry with many countries competing for exploration funds the fierce international competition suggests that mining companies and their investment funds would only go to those countries where the enabling environment would allow the private sector to flourish without hindrance '),
(119, 'field', 2, 'en_us', ''),
(119, 'slug', 0, 'en_us', ' mining in nigeria '),
(119, 'title', 0, 'en_us', ' mining in nigeria '),
(120, 'filename', 0, 'en_us', ' investors_guide pdf '),
(120, 'extension', 0, 'en_us', ' pdf '),
(120, 'kind', 0, 'en_us', ' pdf '),
(120, 'slug', 0, 'en_us', ''),
(120, 'title', 0, 'en_us', ' investors guide '),
(121, 'field', 33, 'en_us', ' investors guide '),
(121, 'field', 32, 'en_us', ' with a population of about 140 million people nigeria is undoubtedly africa s most populous country making it the african destination of choice for serious investors looking to take advantage of a potentially large market '),
(121, 'field', 2, 'en_us', ''),
(121, 'slug', 0, 'en_us', ' an investors guide to doing business in nigeria '),
(121, 'title', 0, 'en_us', ' an investor s guide to doing business in nigeria '),
(122, 'filename', 0, 'en_us', ' cabotage regime pdf '),
(122, 'extension', 0, 'en_us', ' pdf '),
(122, 'kind', 0, 'en_us', ' pdf '),
(122, 'slug', 0, 'en_us', ''),
(122, 'title', 0, 'en_us', ' cabotage regime '),
(123, 'field', 33, 'en_us', ' cabotage regime '),
(123, 'field', 32, 'en_us', ' the national assembly on 30th april 2003 passed the coastal and inland shipping cabotage act the cabotage act into law it was stipulated that the provisions of the cabotage act would become enforceable from 1st may 2004 the much awaited guidelines for the implementation of the provisions of the cabotage act were eventually released by the honourable minister of transport on 7th of june 2004 we intend to give an overview of the guidelines in this newsletter '),
(123, 'field', 2, 'en_us', ''),
(123, 'slug', 0, 'en_us', ' cabotage regime in nigeria the implementation guidelines '),
(123, 'title', 0, 'en_us', ' cabotage regime in nigeria the implementation guidelines '),
(124, 'filename', 0, 'en_us', ' recent bank regulations pdf '),
(124, 'extension', 0, 'en_us', ' pdf '),
(124, 'kind', 0, 'en_us', ' pdf '),
(124, 'slug', 0, 'en_us', ''),
(124, 'title', 0, 'en_us', ' recent bank regulations '),
(125, 'field', 33, 'en_us', ' recent bank regulations '),
(125, 'field', 32, 'en_us', ' as a result of international pressure particularly from the united states of america some european countries and the global ombudsman the financial action task force fatf based in paris france threatening to apply sanctions on nigeria and its banks for the rising cases of fraud and sharp practices in the financial system the federal government recently reinforced the country s laws in its bid to tackle the ugly trend '),
(125, 'field', 2, 'en_us', ''),
(125, 'slug', 0, 'en_us', ' recent regulations affecting banks '),
(125, 'title', 0, 'en_us', ' recent regulations affecting banks '),
(126, 'filename', 0, 'en_us', ' nigeria sao tome principe pdf '),
(126, 'extension', 0, 'en_us', ' pdf '),
(126, 'kind', 0, 'en_us', ' pdf '),
(126, 'slug', 0, 'en_us', ''),
(126, 'title', 0, 'en_us', ' nigeria sao tome principe '),
(127, 'field', 33, 'en_us', ' nigeria sao tome principe '),
(127, 'field', 32, 'en_us', ' after much waiting nigeria and sao tome on the 22nd of april 2003 flagged off the licensing round for nine oil blocks in the joint development zone jdz the jdz is an area of overlapping maritime boundary claims between nigeria and sao tome which both countries have agreed to jointly develop the area is estimated to hold crude reserves of about six billion barrels '),
(127, 'field', 2, 'en_us', ''),
(127, 'slug', 0, 'en_us', ' nigeria sao tome principe licensing rounds '),
(127, 'title', 0, 'en_us', ' nigeria sao tome principe licensing rounds '),
(128, 'field', 43, 'en_us', ' the reversal of the revocation of c of o '),
(128, 'field', 42, 'en_us', ' suit no ld 214 2008 mrs winifred ugborogho anor v governor of lagos state ors '),
(128, 'field', 38, 'en_us', ' mrs winifred ugborogho anor '),
(128, 'field', 15, 'en_us', ''),
(128, 'field', 39, 'en_us', ' lagos state government purportedly revoked the certificate of occupancy of our client mrs winifred ugborogho in the suit alleging that the clients owe some property levy in the region of n14million her property was valued at about n80million the clients had earlier made payments of this same property levy therefore considered the demand exploitative '),
(128, 'field', 40, 'en_us', ' gbc team held several meetings with the government officials for the purpose of resolving the matter amicably but the meetings could not lead to settlement as the government officials the team eventually instituted an action against the lagos state government seeking amongst others the reversal of the revocation of our clients certificate of occupancy '),
(128, 'field', 41, 'en_us', ' our client obtained a reversal of the revocation of their certificate of occupancy full title was restored '),
(128, 'field', 4, 'en_us', ''),
(128, 'field', 5, 'en_us', ''),
(128, 'field', 6, 'en_us', ''),
(128, 'field', 13, 'en_us', ''),
(128, 'field', 7, 'en_us', ''),
(128, 'field', 3, 'en_us', ''),
(128, 'field', 8, 'en_us', ''),
(128, 'slug', 0, 'en_us', ' suing the state '),
(128, 'title', 0, 'en_us', ' suing the state '),
(129, 'field', 43, 'en_us', ' the dismissal of claims against baker hughes '),
(129, 'field', 42, 'en_us', ' suit no phc 929 2008 lazer tech invest nig v baker hughes nigeria ltd '),
(129, 'field', 38, 'en_us', ' baker hughes nigeria '),
(129, 'field', 15, 'en_us', ''),
(129, 'field', 39, 'en_us', ' the claimant brought an action against our client baker hughes claiming the sum of n13million as fees for clearing the goods at the port in rivers state lazer tech did not provide any documents to justify the payment of this claim to it '),
(129, 'field', 40, 'en_us', ' the team eventually joined issues with the claimant at the high court in port harcourt and canvassed strong legal arguments on behalf of our client part of which is that the law requires a claimant to prove that which he is claiming we urged the court to follow established principles of law in this case and dismiss the case for lack of merit '),
(129, 'field', 41, 'en_us', ' the case against baker hughes was entirely dismissed they were spared the burden of paying the lazer tech s claim of n13million '),
(129, 'field', 4, 'en_us', ''),
(129, 'field', 5, 'en_us', ''),
(129, 'field', 6, 'en_us', ''),
(129, 'field', 13, 'en_us', ''),
(129, 'field', 7, 'en_us', ''),
(129, 'field', 3, 'en_us', ''),
(129, 'field', 8, 'en_us', ''),
(129, 'slug', 0, 'en_us', ' prove what you claim '),
(129, 'title', 0, 'en_us', ' prove what you claim '),
(130, 'field', 43, 'en_us', ' the dismissal of breach of employment contract against baker hughes '),
(130, 'field', 42, 'en_us', ' phc 384 2001 suobo clarkson ors v baker hughes nigeria ltd '),
(130, 'field', 38, 'en_us', ' baker hughes '),
(130, 'field', 15, 'en_us', ''),
(130, 'field', 39, 'en_us', ' 25 claimants who were former employees of baker hughes brought a claim of n30million against our client for breach of contract of employment since the claimants employments were lawfully terminated and terminal benefits were duly paid to all of them gbc law viewed the suit as frivolous and an attempt by the claimants to exploit our client '),
(130, 'field', 40, 'en_us', ' we filed a vigorous defense against the suit and joined issues with the claimants the team tendered evidence to show that the claimants case lacked merit strong legal arguments were further canvassed for the dismissal of the claimants claims against our client '),
(130, 'field', 41, 'en_us', ' the suit was dismissed in its entirety baker hughes did not have to make any payment to the claimant s '),
(130, 'field', 4, 'en_us', ''),
(130, 'field', 5, 'en_us', ''),
(130, 'field', 6, 'en_us', ''),
(130, 'field', 13, 'en_us', ''),
(130, 'field', 7, 'en_us', ''),
(130, 'field', 3, 'en_us', ''),
(130, 'field', 8, 'en_us', ''),
(130, 'slug', 0, 'en_us', ' no contract breached '),
(130, 'title', 0, 'en_us', ' no contract breached '),
(131, 'field', 43, 'en_us', ' dismissal of redundancy benefits claim against baker hughes '),
(131, 'field', 42, 'en_us', ' suit no phc 1476 2006 chief s c nwagbara v baker hughes nig ltd '),
(131, 'field', 38, 'en_us', ' baker hughes nig ltd '),
(131, 'field', 15, 'en_us', ''),
(131, 'field', 39, 'en_us', ' claimant brought a claim of n2 692 320 said to represent outstanding redundancy benefit against baker hughes at the high court of rivers state port harcourt meanwhile our client had made full payment by way of redundancy benefits to the claimant as documented and shown on records '),
(131, 'field', 40, 'en_us', ' chief nwagabara s claims were vehemently challenged in court by the gbc team documents were tendered and legal arguments were canvassed for the dismissal of his claims the team further urged the court to dismiss the claims as being frivolous '),
(131, 'field', 41, 'en_us', ' case against client was dismissed entirely our client was relieved from paying the claim of nearly n2 7million '),
(131, 'field', 4, 'en_us', ''),
(131, 'field', 5, 'en_us', ''),
(131, 'field', 6, 'en_us', ''),
(131, 'field', 13, 'en_us', ''),
(131, 'field', 7, 'en_us', ''),
(131, 'field', 3, 'en_us', ''),
(131, 'field', 8, 'en_us', ''),
(131, 'slug', 0, 'en_us', ' benefits paid already '),
(131, 'title', 0, 'en_us', ' benefits paid already '),
(132, 'field', 43, 'en_us', ' recovery of title and property '),
(132, 'field', 42, 'en_us', ' suit no id 1711 2009 sir john dozie maduike ors v auto spare parts and machinery dealers association ors '),
(132, 'field', 38, 'en_us', ' sir john dozie maduike '),
(132, 'field', 15, 'en_us', ''),
(132, 'field', 39, 'en_us', ' one of the defendants was a tenant to our client sir john maduike in respect of a shop in lagos who later challenged our clients title to the shop with forged documents gbc law attempted resolving the matter amicably without success the team eventually filed a suit claiming amongst others a declaration of title and possession in favour of our client '),
(132, 'field', 40, 'en_us', ' we assembled documentary and oral evidence and presented cogent legal argument on behalf of sir maduike before the court the defendants eventually contradicted their case before the court thereby dealing a blow to any chances of success in the suit '),
(132, 'field', 41, 'en_us', ' our clients suit succeeded in court title and possession of the property in dispute were restored damages were also awarded '),
(132, 'field', 4, 'en_us', ''),
(132, 'field', 5, 'en_us', ''),
(132, 'field', 6, 'en_us', ''),
(132, 'field', 13, 'en_us', ''),
(132, 'field', 7, 'en_us', ''),
(132, 'field', 3, 'en_us', ''),
(132, 'field', 8, 'en_us', ''),
(132, 'slug', 0, 'en_us', ' restored business '),
(132, 'title', 0, 'en_us', ' restored business ');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections`
--

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2015-11-13 22:54:20', '2015-11-13 22:54:20', '8cae83cc-de9e-44a1-ae11-b58ac1a58b75'),
(4, NULL, 'Careers', 'careers', 'single', 1, 'careers', 1, '2015-11-17 08:49:31', '2015-11-17 08:49:31', '239c0b70-dc95-4ffe-a9da-d2997d59235f'),
(5, NULL, 'Contact', 'contact', 'single', 1, 'contact', 0, '2015-11-17 09:31:39', '2015-11-17 09:55:28', '5c2ea6c4-cc25-49ad-bbd2-1264ac6a3b61'),
(7, 3, 'About', 'about', 'structure', 1, 'about/_entry', 1, '2015-11-17 11:41:27', '2015-11-17 11:41:27', '5a9c4a69-7319-42ba-83b1-a0a9c7ac5677'),
(8, NULL, 'About GBC', 'aboutGbc', 'single', 1, 'about', 1, '2015-11-17 12:09:53', '2015-11-17 12:09:53', 'af6a593f-ab7c-46ae-9de5-c246cce37a6d'),
(9, NULL, 'Expertise', 'expertise', 'single', 1, 'expertise', 1, '2015-11-17 13:15:13', '2015-11-17 13:15:13', '9a2bd9ef-be9e-4063-ab14-f4b81b216a6a'),
(11, 5, 'Publications', 'publications', 'structure', 1, 'publications/_entry', 1, '2015-11-17 14:16:15', '2015-11-17 14:16:15', 'bac84135-bbda-4d7f-8547-87a3f9f393aa'),
(12, NULL, 'Publications Landing', 'publicationsLanding', 'single', 1, 'publications', 1, '2015-11-17 14:19:56', '2015-11-17 14:19:56', 'c576b6d5-0f68-48d2-be41-2e216f725ba2'),
(13, NULL, 'Sitemap', 'sitemap', 'single', 1, 'sitemap', 1, '2015-11-20 10:26:21', '2015-11-20 10:26:21', '301dc578-f6a4-4383-a91a-df7062d94787'),
(14, 6, 'Cases and Results', 'casesAndResults', 'structure', 1, 'cases-and-results/_entry', 1, '2015-11-20 10:51:37', '2015-11-20 10:51:37', 'e433eb31-1526-4021-8297-76b64067fc32'),
(15, NULL, 'Cases and Results Landing', 'casesAndResultsLanding', 'single', 1, 'cases-and-results', 1, '2015-11-20 10:52:36', '2015-11-20 10:52:36', '6a1f383b-9cff-4374-9412-c240e05e02b2');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections_i18n`
--

CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', 1, '__home__', NULL, '2015-11-13 22:54:20', '2015-11-13 22:54:20', '0c35a43d-272f-489f-8bd5-0090b2c65d4b'),
(4, 4, 'en_us', 0, 'careers', NULL, '2015-11-17 08:49:31', '2015-11-17 08:49:31', 'b3a578f7-0b90-4d86-b2c4-297a65c56240'),
(5, 5, 'en_us', 0, 'contact', NULL, '2015-11-17 09:31:39', '2015-11-17 09:31:39', 'e390f2a8-8925-4d03-bb58-0306d3dc1ca2'),
(7, 7, 'en_us', 0, 'about/{slug}', '{parent.uri}/{slug}', '2015-11-17 11:41:27', '2015-11-17 11:41:27', '7d3a7ead-2a18-4005-8606-7adbf52b27e6'),
(8, 8, 'en_us', 0, 'about', NULL, '2015-11-17 12:09:53', '2015-11-17 12:09:53', '62c8c286-c747-4eb5-8511-1abb00a95c96'),
(9, 9, 'en_us', 0, 'expertise', NULL, '2015-11-17 13:15:13', '2015-11-17 13:15:13', '7a895221-9597-4f47-9df3-7be0b16552e5'),
(11, 11, 'en_us', 0, 'publications/{slug}', '{parent.uri}/{slug}', '2015-11-17 14:16:15', '2015-11-17 14:16:15', '0af03fc0-6926-4a3c-8520-ccce7d1f80cc'),
(12, 12, 'en_us', 0, 'publications', NULL, '2015-11-17 14:19:56', '2015-11-17 14:19:56', '6e950016-d148-4e48-a88e-6a7b19705717'),
(13, 13, 'en_us', 0, 'sitemap', NULL, '2015-11-20 10:26:21', '2015-11-20 10:26:21', 'd9b4f655-c82d-4729-a755-77c340df7352'),
(14, 14, 'en_us', 0, 'cases-and-results/{slug}', '{parent.uri}/{slug}', '2015-11-20 10:51:37', '2015-11-20 10:51:37', '0ac86e2d-df7f-4092-85ba-d19d1aa89c6a'),
(15, 15, 'en_us', 0, 'cases-and-results', NULL, '2015-11-20 10:52:36', '2015-11-20 10:52:36', '2cfe6c23-f9a9-4dc8-8034-ae88a85b26fb');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sessions`
--

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'd7262583be3a2bc835e9465e4298d2f2b75bdcb0czozMjoiaWRBQWVUdkdFX3FxbmU2NERuaERRRFNiU0hwamZ4NDIiOw==', '2015-11-13 22:54:20', '2015-11-13 22:54:20', '8432db90-3797-42a3-b5e6-8606eaa2c753'),
(2, 1, '4cda76f9696f9a7bcd5a5fffa751d58980b2c055czozMjoiZU11RkdGTktafk5MZXRQZWZpVl9obl9JZm15N015TVMiOw==', '2015-11-14 00:13:34', '2015-11-14 00:13:34', 'a13a0d70-9743-4245-8459-2b0a1a7858b1'),
(4, 1, '0ad9e7fad182b2c1523564763475318e17e12978czozMjoiUzZobn5QSzRkSUt0TDV3cWNPRTRFTmhKN3JIY0M3OUoiOw==', '2015-11-19 23:15:23', '2015-11-19 23:15:23', '5dc6191c-ff9b-489f-afe1-c307c380331d'),
(5, 1, '2cbc4c46343eb4ddbd57745fec87d8dbc8abebdeczozMjoiQUp1dXd2cVdTbFBweU81WGszMUl1dHMzaERKTE5VRkciOw==', '2015-11-20 00:43:40', '2015-11-20 00:43:40', '65fcdd6d-875d-4db7-bc94-09a187bdc67b'),
(6, 1, 'a177e3cc1eaa9339800bf7ff30c500173b91e4e6czozMjoidFh3ZGlCYnZCY3c2TlBUUzhpanZJVWI1SUtOM2xKd0EiOw==', '2015-11-20 02:40:38', '2015-11-20 02:40:38', 'e88c685b-1a22-4641-8b25-18694ab88886'),
(7, 1, '3c6b2d10a90023c67200a93349c76dc1f49ae9aeczozMjoiMzJxQkhvYjhOdXFiMlFvM291eGFBUVdLZkJBOURCQ2IiOw==', '2015-11-20 07:52:53', '2015-11-20 08:50:28', '089e942f-7f48-4b53-ac1e-c69c174e5418');

-- --------------------------------------------------------

--
-- Table structure for table `craft_shunnedmessages`
--

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_structureelements`
--

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_structureelements`
--

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 3, NULL, 5, 1, 24, 0, '2015-11-17 12:06:11', '2015-11-17 12:06:11', '8da70e9e-a67b-4859-b775-790d2f001be1'),
(7, 3, 22, 5, 2, 3, 1, '2015-11-17 12:20:17', '2015-11-17 12:20:17', 'ebecb52d-ae93-4ead-a8e1-1f74f2d8498d'),
(8, 3, 24, 5, 8, 9, 1, '2015-11-17 12:52:33', '2015-11-17 12:52:33', '7aec08c4-264f-42c4-8baf-a464c685f5e6'),
(12, 5, NULL, 12, 1, 30, 0, '2015-11-17 14:17:08', '2015-11-17 14:17:08', '0ed07330-a53e-4959-8670-022846818d0b'),
(13, 5, 35, 12, 2, 3, 1, '2015-11-17 14:17:08', '2015-11-17 14:17:08', '0299ba2b-8684-4cd5-afeb-866f021800a9'),
(14, 5, 36, 12, 4, 5, 1, '2015-11-17 14:18:00', '2015-11-17 14:18:00', 'f0412bd9-c0e0-400d-8a8c-e3360d7ce660'),
(15, 5, 38, 12, 6, 7, 1, '2015-11-17 14:18:50', '2015-11-17 14:18:50', '3c495809-a0f8-4e82-9553-9f3ebf617922'),
(16, 3, 44, 5, 16, 17, 1, '2015-11-17 17:01:56', '2015-11-17 17:01:56', '5fac922d-ae24-4cd7-9ee1-f3ffb15063dd'),
(17, 3, 55, 5, 14, 15, 1, '2015-11-17 18:22:08', '2015-11-17 18:22:08', 'ac896354-ae8d-4fa4-8780-51842fbdcc58'),
(18, 3, 59, 5, 22, 23, 1, '2015-11-17 18:39:36', '2015-11-17 18:39:36', '2d8d21a3-5a16-4143-b6c5-5e233436bb19'),
(19, 3, 63, 5, 20, 21, 1, '2015-11-17 18:56:23', '2015-11-17 18:56:23', 'd0271b00-9960-4355-adda-0186da20a40a'),
(20, 3, 66, 5, 18, 19, 1, '2015-11-17 19:12:29', '2015-11-17 19:12:29', 'd5ec7e90-a725-4917-9415-06917fc2ce69'),
(21, 3, 70, 5, 10, 11, 1, '2015-11-17 19:43:41', '2015-11-17 19:43:41', '3e6cbcbc-4adf-4be6-aa31-027e1cb63b21'),
(22, 3, 72, 5, 4, 5, 1, '2015-11-17 19:51:49', '2015-11-17 19:51:49', '8e0c3ff3-5a58-4ea3-b92d-052406a28528'),
(23, 3, 73, 5, 6, 7, 1, '2015-11-17 19:57:07', '2015-11-17 19:57:07', '979a6c49-5357-4fd0-be25-a66b923668d6'),
(24, 3, 78, 5, 12, 13, 1, '2015-11-17 20:17:48', '2015-11-17 20:17:48', '0518afbe-6ae4-456e-bf8c-fd50c8bb4256'),
(25, 6, NULL, 25, 1, 14, 0, '2015-11-20 11:45:09', '2015-11-20 11:45:09', '615062ec-a7c9-4bf5-976c-1a7a85dbe3f2'),
(26, 6, 104, 25, 2, 3, 1, '2015-11-20 11:45:09', '2015-11-20 11:45:09', '146550c2-1426-46d5-b631-99b8852d27f1'),
(27, 5, 107, 12, 8, 9, 1, '2015-11-20 14:17:55', '2015-11-20 14:17:55', 'a6123ae7-c101-495c-9bd9-7633e837e533'),
(28, 5, 109, 12, 10, 11, 1, '2015-11-20 14:18:10', '2015-11-20 14:18:10', 'ec5a9a49-02b2-4829-867c-ee4aace6cd7d'),
(29, 5, 111, 12, 12, 13, 1, '2015-11-20 14:19:09', '2015-11-20 14:19:09', 'c064859f-753c-461a-bf05-222ba8cc69a8'),
(30, 5, 113, 12, 14, 15, 1, '2015-11-20 14:19:38', '2015-11-20 14:19:38', '8ee17050-5e60-486a-817a-0bee38bfe32a'),
(31, 5, 115, 12, 16, 17, 1, '2015-11-20 14:20:05', '2015-11-20 14:20:05', '206a2c2c-4565-4e8e-8b43-8d0b0dfa945c'),
(32, 5, 117, 12, 18, 19, 1, '2015-11-20 14:20:46', '2015-11-20 14:20:46', '5304a632-5b41-41f8-9557-485f5a769ba1'),
(33, 5, 119, 12, 20, 21, 1, '2015-11-20 14:21:52', '2015-11-20 14:21:52', '00341de4-5490-4e63-be03-a95088f2c1c7'),
(34, 5, 121, 12, 22, 23, 1, '2015-11-20 14:22:44', '2015-11-20 14:22:44', '0ae409b1-22cd-4192-8b41-130940bc71cd'),
(35, 5, 123, 12, 24, 25, 1, '2015-11-20 14:23:38', '2015-11-20 14:23:38', '8ccb581a-452e-4423-8966-b4331911efc7'),
(36, 5, 125, 12, 26, 27, 1, '2015-11-20 14:24:26', '2015-11-20 14:24:26', '9fc3af41-baec-43a5-8a82-30bdd11c677c'),
(37, 5, 127, 12, 28, 29, 1, '2015-11-20 14:25:17', '2015-11-20 14:25:17', 'ab5e9bed-134b-4ab0-a31f-4ea31317c32e'),
(38, 6, 128, 25, 4, 5, 1, '2015-11-20 14:35:17', '2015-11-20 14:35:17', '66452855-150a-490b-ad22-f91e5d708640'),
(39, 6, 129, 25, 6, 7, 1, '2015-11-20 14:36:39', '2015-11-20 14:36:39', 'd058ab10-3e5d-4295-8e8b-4d118cac751b'),
(40, 6, 130, 25, 8, 9, 1, '2015-11-20 14:37:36', '2015-11-20 14:37:36', 'a6ce0ae3-93f3-4493-a78e-78587e25ebfb'),
(41, 6, 131, 25, 10, 11, 1, '2015-11-20 14:38:42', '2015-11-20 14:38:42', '70fc7226-63a5-4eb8-b015-edcb31ffc242'),
(42, 6, 132, 25, 12, 13, 1, '2015-11-20 14:42:05', '2015-11-20 14:42:05', 'c11a26d3-9482-45c3-bb69-ad921ba3ece6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_structures`
--

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_structures`
--

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, NULL, '2015-11-17 11:41:27', '2015-11-17 11:41:27', '9d1c7014-092b-4ffe-9eb2-817546771332'),
(5, NULL, '2015-11-17 14:16:15', '2015-11-17 14:16:15', 'fd306970-e1b5-4c71-8816-4ffaf574e78b'),
(6, NULL, '2015-11-20 10:51:37', '2015-11-20 10:51:37', 'ab8316d6-12a7-44e5-9c4b-34b8d77b4d7b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_systemsettings`
--

CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{"protocol":"php","emailAddress":"javik@live.com","senderName":"Gbenga Biobaku & Co. (GBC)"}', '2015-11-13 22:54:20', '2015-11-13 22:54:20', '2bb5e0ac-be92-431f-a97e-8a97bf6b12ea');

-- --------------------------------------------------------

--
-- Table structure for table `craft_taggroups`
--

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_taggroups`
--

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 1, '2015-11-13 22:54:20', '2015-11-13 22:54:20', '1d15cb29-b537-461c-a53b-2d4ea264a52d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_tags`
--

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_tags`
--

INSERT INTO `craft_tags` (`id`, `groupId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(45, 1, '2015-11-17 17:27:46', '2015-11-17 17:28:19', '256527f5-cb86-4a79-b16f-edc5751a12d3'),
(46, 1, '2015-11-17 17:27:53', '2015-11-17 17:28:26', '2f533e7a-b810-498d-a4f4-1e7c723d55a1'),
(47, 1, '2015-11-17 17:30:45', '2015-11-17 17:30:45', 'e4c06744-a1f1-4255-9748-d17aaf19d4e6'),
(48, 1, '2015-11-17 17:30:51', '2015-11-17 17:30:51', '0f7d5eb7-2d52-416f-968b-fc933624a2b5'),
(49, 1, '2015-11-17 17:30:56', '2015-11-17 17:30:56', 'be50a12a-d1f7-496b-b468-24f77c0049c3');

-- --------------------------------------------------------

--
-- Table structure for table `craft_tasks`
--

CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecachecriteria`
--

CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecacheelements`
--

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecaches`
--

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tokens`
--

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups`
--

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups_users`
--

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions`
--

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_usergroups`
--

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_users`
--

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_users`
--

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `suspended` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pending` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'gbc-law', NULL, NULL, NULL, 'javik@live.com', '$2y$13$/aIqZ3IAU3.e9jbT8yfsCeXysWw1HXi.BD1fvdF0mx8z2CvEBFTBa', NULL, 0, 1, 0, 0, 0, 0, 0, '2015-11-20 07:52:53', '::1', NULL, NULL, '2015-11-19 23:15:17', NULL, NULL, NULL, NULL, 0, '2015-11-13 22:54:17', '2015-11-13 22:54:17', '2015-11-20 07:52:53', '2d59969d-94b6-4610-b719-7a00e0ecb0bc');

-- --------------------------------------------------------

--
-- Table structure for table `craft_widgets`
--

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `colspan` tinyint(4) unsigned DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, NULL, 1, '2015-11-13 22:54:26', '2015-11-13 22:54:26', 'd90dbe2c-9bd6-4f8a-94e4-9a5c996da85a'),
(2, 1, 'GetHelp', 2, NULL, NULL, 1, '2015-11-13 22:54:26', '2015-11-13 22:54:26', '558d1083-9f2d-4e7d-afad-170d6882316f'),
(3, 1, 'Updates', 3, NULL, NULL, 1, '2015-11-13 22:54:26', '2015-11-13 22:54:26', '9a22bca8-9445-45cb-b44d-7ef8e9bcf3ae'),
(4, 1, 'Feed', 4, NULL, '{"url":"http:\\/\\/feeds.feedburner.com\\/blogandtonic","title":"Blog & Tonic"}', 1, '2015-11-13 22:54:26', '2015-11-13 22:54:26', '37bdb693-6e2a-41fa-b8d6-d99b229323f0'),
(5, 1, 'QuickPost', 5, NULL, '{"section":"2","entryType":""}', 1, '2015-11-13 22:54:39', '2015-11-13 22:54:39', 'facb2818-b2d5-4573-a67b-868d670bd2c1'),
(6, 1, 'RecentEntries', 6, NULL, '{"limit":"10"}', 1, '2015-11-13 22:54:51', '2015-11-13 22:54:51', '6faaaf2e-6cc9-4259-8d19-cd3c314d097a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `craft_amnav_navs`
--
ALTER TABLE `craft_amnav_navs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_amnav_navs_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_amnav_nodes`
--
ALTER TABLE `craft_amnav_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_amnav_nodes_elementId_elementType_locale_idx` (`elementId`,`elementType`,`locale`);

--
-- Indexes for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  ADD KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  ADD KEY `craft_assetfiles_folderId_fk` (`folderId`);

--
-- Indexes for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  ADD KEY `craft_assetfolders_parentId_fk` (`parentId`),
  ADD KEY `craft_assetfolders_sourceId_fk` (`sourceId`);

--
-- Indexes for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  ADD KEY `craft_assetindexdata_sourceId_fk` (`sourceId`);

--
-- Indexes for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  ADD KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`);

--
-- Indexes for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_categories_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_categorygroups_structureId_fk` (`structureId`),
  ADD KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  ADD KEY `craft_categorygroups_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_content_title_idx` (`title`),
  ADD KEY `craft_content_locale_fk` (`locale`);

--
-- Indexes for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indexes for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`);

--
-- Indexes for table `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_elements_type_idx` (`type`),
  ADD KEY `craft_elements_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`);

--
-- Indexes for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  ADD KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  ADD KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  ADD KEY `craft_emailmessages_locale_fk` (`locale`);

--
-- Indexes for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entries_sectionId_idx` (`sectionId`),
  ADD KEY `craft_entries_typeId_idx` (`typeId`),
  ADD KEY `craft_entries_postDate_idx` (`postDate`),
  ADD KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `craft_entries_authorId_fk` (`authorId`);

--
-- Indexes for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entrydrafts_locale_fk` (`locale`);

--
-- Indexes for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  ADD UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  ADD KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entryversions_locale_fk` (`locale`);

--
-- Indexes for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`);

--
-- Indexes for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  ADD KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`);

--
-- Indexes for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouts_type_idx` (`type`);

--
-- Indexes for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`);

--
-- Indexes for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `craft_fields_context_idx` (`context`),
  ADD KEY `craft_fields_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  ADD KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_locales`
--
ALTER TABLE `craft_locales`
  ADD PRIMARY KEY (`locale`),
  ADD KEY `craft_locales_sortOrder_idx` (`sortOrder`);

--
-- Indexes for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Indexes for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_matrixcontent_clients`
--
ALTER TABLE `craft_matrixcontent_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixcontent_clients_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_matrixcontent_clients_locale_fk` (`locale`);

--
-- Indexes for table `craft_matrixcontent_ex`
--
ALTER TABLE `craft_matrixcontent_ex`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixcontent_ex_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_matrixcontent_ex_locale_fk` (`locale`);

--
-- Indexes for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  ADD KEY `craft_migrations_pluginId_fk` (`pluginId`);

--
-- Indexes for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`);

--
-- Indexes for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  ADD KEY `craft_relations_sourceId_fk` (`sourceId`),
  ADD KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  ADD KEY `craft_relations_targetId_fk` (`targetId`);

--
-- Indexes for table `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_routes_urlPattern_unq_idx` (`urlPattern`),
  ADD KEY `craft_routes_locale_idx` (`locale`);

--
-- Indexes for table `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`),
  ADD FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`);

--
-- Indexes for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  ADD KEY `craft_sections_structureId_fk` (`structureId`);

--
-- Indexes for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  ADD KEY `craft_sections_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sessions_uid_idx` (`uid`),
  ADD KEY `craft_sessions_token_idx` (`token`),
  ADD KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `craft_sessions_userId_fk` (`userId`);

--
-- Indexes for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indexes for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `craft_structureelements_root_idx` (`root`),
  ADD KEY `craft_structureelements_lft_idx` (`lft`),
  ADD KEY `craft_structureelements_rgt_idx` (`rgt`),
  ADD KEY `craft_structureelements_level_idx` (`level`),
  ADD KEY `craft_structureelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`);

--
-- Indexes for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tags_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_tasks`
--
ALTER TABLE `craft_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tasks_root_idx` (`root`),
  ADD KEY `craft_tasks_lft_idx` (`lft`),
  ADD KEY `craft_tasks_rgt_idx` (`rgt`),
  ADD KEY `craft_tasks_level_idx` (`level`);

--
-- Indexes for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecachecriteria_type_idx` (`type`);

--
-- Indexes for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecacheelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecaches_expiryDate_cacheKey_locale_path_idx` (`expiryDate`,`cacheKey`,`locale`,`path`),
  ADD KEY `craft_templatecaches_locale_fk` (`locale`);

--
-- Indexes for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  ADD KEY `craft_tokens_expiryDate_idx` (`expiryDate`);

--
-- Indexes for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `craft_usergroups_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`);

--
-- Indexes for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `craft_userpermissions_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  ADD UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  ADD KEY `craft_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `craft_users_uid_idx` (`uid`),
  ADD KEY `craft_users_preferredLocale_fk` (`preferredLocale`);

--
-- Indexes for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_widgets_userId_fk` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `craft_amnav_navs`
--
ALTER TABLE `craft_amnav_navs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_amnav_nodes`
--
ALTER TABLE `craft_amnav_nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=420;
--
-- AUTO_INCREMENT for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_matrixcontent_clients`
--
ALTER TABLE `craft_matrixcontent_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `craft_matrixcontent_ex`
--
ALTER TABLE `craft_matrixcontent_ex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `craft_routes`
--
ALTER TABLE `craft_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_tasks`
--
ALTER TABLE `craft_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_matrixcontent_clients`
--
ALTER TABLE `craft_matrixcontent_clients`
  ADD CONSTRAINT `craft_matrixcontent_clients_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_clients_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_matrixcontent_ex`
--
ALTER TABLE `craft_matrixcontent_ex`
  ADD CONSTRAINT `craft_matrixcontent_ex_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_ex_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;
