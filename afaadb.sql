-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2020 at 02:02 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afaadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `slug`, `cover`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'First Album', 'first-album', 'albums\\July2020\\f7n0uMTXHMQTOGcOn6dR.png', NULL, 1, '2020-07-18 08:37:24', '2020-07-18 08:37:24', NULL),
(2, 'Secound album', 'secound-album', 'albums\\July2020\\CCGigu86hlgI9CeJ4dLG.png', 'Recently, the US Federal government banned online casinos from operating in America by making it illegal to transfer money to them through any US bank or payment system. As a result of this law, most of the popular online casino networks', 1, '2020-07-18 09:34:52', '2020-07-19 00:57:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `body_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body_weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body_height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hair_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `language_skill` text COLLATE utf8_unicode_ci NOT NULL,
  `experience` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `category`, `image`, `first_name`, `last_name`, `nic`, `gender`, `birthday`, `body_color`, `body_weight`, `body_height`, `hair_color`, `country`, `telephone_1`, `telephone_2`, `state`, `city`, `email`, `street`, `nationality`, `zip`, `language_skill`, `experience`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Costume Designing', '2020_07_08_06_17_39.JPG', 'Isuru', 'Sadish', '930951315V', 'Male', '2020-07-16', 'White', '120', '5\' 10\"', 'Black', 'Andorra', '0712569874', '0712569875', 'Matara', 'Moratuwa', 'admin@codealent.com', 'Mugunumula', 'Sinhala', 92502, 'English (Near Native).', '1981-1987, Dean of Faculty of Design, Harvard University, BOSTON/USA.\r\n1981-1987, Dean of Faculty of Design, Harvard University, BOSTON/USA.', '2020-07-08 00:47:39', '2020-07-08 00:47:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `applicant_id`, `director_id`, `file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '5ee4c7c02bc3e.JPG', '2020-06-13 07:04:08', '2020-06-13 07:04:08', NULL),
(2, 1, NULL, '5ee4c7c02d081.jpg', '2020-06-13 07:04:08', '2020-06-13 07:04:08', NULL),
(3, 1, NULL, '5ee4c7c02e314.JPG', '2020-06-13 07:04:08', '2020-06-13 07:04:08', NULL),
(4, 2, NULL, '5ee8be2a236bf.png', '2020-06-16 07:12:18', '2020-06-16 07:12:18', NULL),
(5, 2, NULL, '5ee8be2a24764.docx', '2020-06-16 07:12:18', '2020-06-16 07:12:18', NULL),
(6, NULL, 3, '5f05624b9fa1e.JPG', '2020-07-08 00:36:03', '2020-07-08 00:36:03', NULL),
(7, NULL, 3, '5f05624ba0c2d.JPG', '2020-07-08 00:36:03', '2020-07-08 00:36:03', NULL),
(8, 1, NULL, '5f05650355d99.JPG', '2020-07-08 00:47:39', '2020-07-08 00:47:39', NULL),
(9, 1, NULL, '5f05650357b87.JPG', '2020-07-08 00:47:39', '2020-07-08 00:47:39', NULL),
(10, 1, NULL, '5f056503589c2.JPG', '2020-07-08 00:47:39', '2020-07-08 00:47:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commenter_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commenter_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guest_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guest_email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commentable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `commentable_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `child_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"100%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"1500\",\"height\":\"700\"}}]}', 2),
(24, 4, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 4),
(26, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(27, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(28, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(29, 5, 'logo', 'image', 'Logo', 1, 1, 1, 1, 1, 1, '{}', 2),
(30, 5, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(31, 5, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 4),
(32, 5, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 5),
(33, 5, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 6),
(34, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 7),
(35, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(36, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(37, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 6, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(39, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(40, 6, 'subtitle', 'text', 'Subtitle', 0, 1, 1, 1, 1, 1, '{}', 4),
(41, 6, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 5),
(42, 6, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 6),
(43, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 7),
(44, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(45, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(46, 6, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 4),
(47, 6, 'highlight', 'checkbox', 'Highlight', 1, 1, 1, 1, 1, 1, '{}', 4),
(54, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(55, 14, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(56, 14, 'cover', 'image', 'Cover', 1, 1, 1, 1, 1, 1, '{}', 3),
(57, 14, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 4),
(58, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 5),
(59, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(60, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(91, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 19, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(93, 19, 'url', 'text_area', 'Url', 1, 1, 1, 1, 1, 1, '{}', 3),
(94, 19, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 4),
(95, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 5),
(96, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(97, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(98, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(99, 20, 'avatar', 'image', 'Avatar', 1, 1, 1, 1, 1, 1, '{}', 2),
(100, 20, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(101, 20, 'country', 'text', 'Country', 0, 1, 1, 1, 1, 1, '{}', 4),
(102, 20, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 5),
(103, 20, 'body', 'text_area', 'Body', 1, 1, 1, 1, 1, 1, '{}', 6),
(104, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 7),
(105, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(106, 20, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(107, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(108, 21, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(109, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 3),
(110, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(111, 21, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 5),
(112, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 22, 'section_id', 'text', 'Section Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(114, 22, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(115, 22, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 5),
(116, 22, 'body', 'text_area', 'Body', 0, 1, 1, 1, 1, 1, '{}', 6),
(117, 22, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 7),
(118, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 8),
(119, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(120, 22, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(121, 22, 'party_belongsto_section_relationship', 'relationship', 'Choose Section', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Section\",\"table\":\"sections\",\"type\":\"belongsTo\",\"column\":\"section_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"albums\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(168, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(169, 26, 'first_name', 'text', 'First Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(170, 26, 'last_name', 'text', 'Last Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(171, 26, 'nic', 'text', 'Nic', 1, 1, 1, 1, 1, 1, '{}', 4),
(172, 26, 'gender', 'text', 'Gender', 1, 1, 1, 1, 1, 1, '{}', 5),
(173, 26, 'birthday', 'text', 'Birthday', 1, 1, 1, 1, 1, 1, '{}', 6),
(174, 26, 'body_color', 'text', 'Body Color', 0, 1, 1, 1, 1, 1, '{}', 7),
(175, 26, 'body_weight', 'text', 'Body Weight', 0, 1, 1, 1, 1, 1, '{}', 8),
(176, 26, 'body_height', 'text', 'Body Height', 0, 1, 1, 1, 1, 1, '{}', 9),
(177, 26, 'hair_color', 'text', 'Hair Color', 0, 1, 1, 1, 1, 1, '{}', 10),
(178, 26, 'country', 'text', 'Country', 1, 1, 1, 1, 1, 1, '{}', 11),
(179, 26, 'telephone_1', 'text', 'Telephone 1', 1, 1, 1, 1, 1, 1, '{}', 12),
(180, 26, 'telephone_2', 'text', 'Telephone 2', 0, 1, 1, 1, 1, 1, '{}', 13),
(181, 26, 'state', 'text', 'State', 1, 1, 1, 1, 1, 1, '{}', 14),
(182, 26, 'city', 'text', 'City', 1, 1, 1, 1, 1, 1, '{}', 15),
(183, 26, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 16),
(184, 26, 'street', 'text', 'Street', 1, 1, 1, 1, 1, 1, '{}', 17),
(185, 26, 'nationality', 'text', 'Nationality', 1, 1, 1, 1, 1, 1, '{}', 18),
(186, 26, 'zip', 'text', 'Zip', 1, 1, 1, 1, 1, 1, '{}', 19),
(187, 26, 'language_skill', 'text', 'Language Skill', 1, 1, 1, 1, 1, 1, '{}', 20),
(188, 26, 'year', 'text', 'Year', 0, 1, 1, 1, 1, 1, '{}', 21),
(189, 26, 'university', 'text', 'University', 0, 1, 1, 1, 1, 1, '{}', 22),
(190, 26, 'degree', 'text', 'Degree', 0, 1, 1, 1, 1, 1, '{}', 23),
(191, 26, 'experience', 'text', 'Experience', 0, 1, 1, 1, 1, 1, '{}', 24),
(192, 26, 'attachment', 'text', 'Attachment', 0, 1, 1, 1, 1, 1, '{}', 25),
(193, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 26),
(194, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 27),
(195, 26, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 28),
(196, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(197, 27, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(198, 27, 'first_name', 'text', 'First Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(199, 27, 'last_name', 'text', 'Last Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(200, 27, 'nic', 'text', 'Nic', 0, 1, 1, 1, 1, 1, '{}', 5),
(201, 27, 'gender', 'text', 'Gender', 0, 1, 1, 1, 1, 1, '{}', 6),
(202, 27, 'birthday', 'text', 'Birthday', 0, 1, 1, 1, 1, 1, '{}', 7),
(203, 27, 'country', 'text', 'Country', 0, 1, 1, 1, 1, 1, '{}', 8),
(204, 27, 'telephone_1', 'text', 'Telephone 1', 0, 1, 1, 1, 1, 1, '{}', 9),
(205, 27, 'telephone_2', 'text', 'Telephone 2', 0, 1, 1, 1, 1, 1, '{}', 10),
(206, 27, 'state', 'text', 'State', 0, 1, 1, 1, 1, 1, '{}', 11),
(207, 27, 'city', 'text', 'City', 0, 1, 1, 1, 1, 1, '{}', 12),
(208, 27, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 13),
(209, 27, 'street', 'text', 'Street', 0, 1, 1, 1, 1, 1, '{}', 14),
(210, 27, 'nationality', 'text', 'Nationality', 0, 1, 1, 1, 1, 1, '{}', 15),
(211, 27, 'zip', 'text', 'Zip', 0, 1, 1, 1, 1, 1, '{}', 16),
(212, 27, 'language_skill', 'text', 'Language Skill', 0, 1, 1, 1, 1, 1, '{}', 17),
(213, 27, 'experience', 'text', 'Experience', 0, 1, 1, 1, 1, 1, '{}', 18),
(214, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 19),
(215, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 20),
(216, 27, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 21),
(217, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(218, 28, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(219, 28, 'position', 'text', 'Position', 1, 1, 1, 1, 1, 1, '{}', 3),
(220, 28, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(221, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(222, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(223, 28, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(224, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(225, 29, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(226, 29, 'link', 'text', 'Link', 1, 1, 1, 1, 1, 1, '{}', 3),
(227, 29, 'body', 'text_area', 'Body', 0, 1, 1, 1, 1, 1, '{}', 4),
(228, 29, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 5),
(229, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 6),
(230, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(231, 29, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(232, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(233, 30, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(234, 30, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 3),
(235, 30, 'cover', 'image', 'Cover', 1, 1, 1, 1, 1, 1, '{}', 4),
(236, 30, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 5),
(237, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(238, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(239, 30, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(240, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(241, 31, 'album_id', 'text', 'Album Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(242, 31, 'image', 'multiple_images', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(243, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(244, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(245, 31, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(246, 31, 'image_belongsto_album_relationship', 'relationship', 'albums', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Album\",\"table\":\"albums\",\"type\":\"belongsTo\",\"column\":\"album_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"albums\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(247, 30, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(4, 'slides', 'slides', 'Slide', 'Slides', 'voyager-play', 'App\\Slide', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-07 05:33:44', '2020-02-07 05:54:40'),
(5, 'partners', 'partners', 'Partner', 'Partners', 'voyager-magnet', 'App\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-07 07:08:41', '2020-02-07 07:08:41'),
(6, 'news', 'news', 'News', 'News', 'voyager-news', 'App\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-07 07:41:33', '2020-02-08 15:00:47'),
(14, 'galleries', 'galleries', 'Gallery', 'Galleries', 'voyager-photo', 'App\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-08 17:04:25', '2020-02-08 17:04:25'),
(19, 'videos', 'videos', 'Video', 'Videos', 'voyager-video', 'App\\Video', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-08 18:52:05', '2020-02-08 18:52:05'),
(20, 'judges', 'judges', 'Judge', 'Judges', 'voyager-certificate', 'App\\Judge', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-10 21:20:53', '2020-02-10 21:20:53'),
(21, 'sections', 'sections', 'Section', 'Sections', 'voyager-backpack', 'App\\Section', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-11 14:51:04', '2020-02-11 14:51:04'),
(22, 'parties', 'parties', 'Party', 'Parties', 'voyager-smile', 'App\\Party', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-11 14:52:42', '2020-02-11 14:59:10'),
(26, 'applicants', 'applicants', 'Applicant', 'Applicants', 'voyager-people', 'App\\Applicant', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-29 00:14:52', '2020-02-29 00:14:52'),
(27, 'directors', 'directors', 'Director', 'Directors', 'voyager-treasure', 'App\\Director', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-07-07 06:33:45', '2020-07-07 06:33:45'),
(28, 'speakers', 'speakers', 'Speaker', 'Speakers', 'voyager-star', 'App\\Speaker', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-07-16 05:31:16', '2020-07-16 05:31:16'),
(29, 'icons', 'icons', 'Icon', 'Icons', 'voyager-bubble-hear', 'App\\Icon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-07-18 05:31:36', '2020-07-18 05:31:36'),
(30, 'albums', 'albums', 'Album', 'Albums', 'voyager-photo', 'App\\Album', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-18 08:34:27', '2020-07-19 00:57:04'),
(31, 'images', 'images', 'Image', 'Images', 'voyager-photos', 'App\\Image', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-18 08:36:28', '2020-07-18 09:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` int(10) UNSIGNED NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `university` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `applicant_id`, `director_id`, `year`, `university`, `degree`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 2020, 'UOM', 'Bsc. IT', '2020-07-07 05:07:21', '2020-07-07 05:07:21', NULL),
(2, 1, NULL, 2012, 'UOC', 'Bsc. MIT', '2020-07-07 05:07:21', '2020-07-07 05:07:21', NULL),
(3, 2, NULL, 1993, 'UOR', 'Unknown', '2020-07-07 05:10:12', '2020-07-07 05:10:12', NULL),
(4, 2, NULL, 1995, 'USJP', 'Unknown', '2020-07-07 05:10:12', '2020-07-07 05:10:12', NULL),
(6, NULL, 3, 1993, 'UOC', 'Unknown', '2020-07-08 00:36:03', '2020-07-08 00:36:03', NULL),
(7, NULL, 3, 2020, 'UOM', 'Unknown', '2020-07-08 00:36:03', '2020-07-08 00:36:03', NULL),
(8, NULL, 3, 1995, 'UOR', 'Bsc. MIT', '2020-07-08 00:36:03', '2020-07-08 00:36:03', NULL),
(9, 1, NULL, 2012, 'UOC', 'Bsc. MIT', '2020-07-08 00:47:39', '2020-07-08 00:47:39', NULL),
(10, 1, NULL, 1993, 'UOR', 'Unknown', '2020-07-08 00:47:39', '2020-07-08 00:47:39', NULL),
(11, 1, NULL, 1995, 'UOM', 'Bsc. MIT', '2020-07-08 00:47:39', '2020-07-08 00:47:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `nic` varchar(255) DEFAULT NULL,
  `gender` tinytext,
  `birthday` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `telephone_1` varchar(255) DEFAULT NULL,
  `telephone_2` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `language_skill` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `image`, `first_name`, `last_name`, `nic`, `gender`, `birthday`, `country`, `telephone_1`, `telephone_2`, `state`, `city`, `email`, `street`, `nationality`, `zip`, `language_skill`, `experience`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, '2020_07_08_06_06_03.JPG', 'Chamathka', 'Disanayaka', '856958693V', 'Female', '1983-07-13', 'Azerbaijan', '0712569874', '0712569875', 'Matara', 'Moratuwa', 'admin@admin.com', 'Mugunumula', 'Sinhala', 92502, 'English (Near Native).', '1981-1987, Dean of Faculty of Design, Harvard University, BOSTON/USA. \r\n1981-1987, Dean of Faculty of Design, Harvard University, BOSTON/USA.', '2020-07-08 00:36:03', '2020-07-08 00:36:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `name`, `link`, `body`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tom Ford', 'https://en.wikipedia.org/wiki/Tom_Ford', NULL, 'icons\\July2020\\BGQXcKwVizjoNLW7Kklx.png', '2020-07-18 05:36:21', '2020-07-18 05:37:32', NULL),
(2, 'Adriana Lima', 'https://en.wikipedia.org/wiki/Adriana_Lima', NULL, 'icons\\July2020\\FRyhtTuecon6jFJuZzcb.png', '2020-07-18 05:37:26', '2020-07-18 05:37:26', NULL),
(3, 'Jacqueline Fernandez', 'https://en.wikipedia.org/wiki/Jacqueline_Fernandez', NULL, 'icons\\July2020\\8HLP4yS09p4hyNBxzZuW.png', '2020-07-18 05:38:08', '2020-07-18 05:38:08', NULL),
(4, 'Ellen DeGeneres', 'https://en.wikipedia.org/wiki/Ellen_DeGeneres', NULL, 'icons\\July2020\\cdX6oowE0CZfSL8CdJSd.png', '2020-07-18 05:38:43', '2020-07-18 05:38:43', NULL),
(5, 'Manish Malhotra', 'https://en.wikipedia.org/wiki/Manish_Malhotra', NULL, 'icons\\July2020\\beLfo4qvDeiwdsDBWCtb.png', '2020-07-18 05:39:06', '2020-07-18 05:39:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `album_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '[\"images\\\\July2020\\\\ftlSUU5O2WKKnOvE2WfV.png\",\"images\\\\July2020\\\\cRjuNGOBO5eD8Y9ZrrCi.png\",\"images\\\\July2020\\\\1OxfsIj6U1xGhAx1CQQ3.png\"]', '2020-07-18 08:39:48', '2020-07-18 08:39:48', NULL),
(2, 2, '[\"images\\\\July2020\\\\2mFugEOBQR3o4UAYzQ5S.png\",\"images\\\\July2020\\\\ILHWF25baU7esubdsEWv.png\",\"images\\\\July2020\\\\lovDt9ZxTKUfIyiOYUqC.png\",\"images\\\\July2020\\\\Avooe73nwcXlSD0oErPt.png\",\"images\\\\July2020\\\\yn5n9QCOgMyQNM4Byk9T.png\",\"images\\\\July2020\\\\lHY2CKfCx7YrRspIbO6a.png\",\"images\\\\July2020\\\\lROLF4NBbxiD8NzRmP3f.png\",\"images\\\\July2020\\\\d84vy8MtqYoqq971zM4k.png\",\"images\\\\July2020\\\\MXFyFyDzf0JQUPgE59WX.png\",\"images\\\\July2020\\\\Aj8LXQcprBzQqmHzIl8o.png\",\"images\\\\July2020\\\\9AHaNTeNLAKUARdraTro.png\",\"images\\\\July2020\\\\VkdZyQ1b1UQ0wuUVWRs2.png\",\"images\\\\July2020\\\\h20AqBEE4o7misZ7Z6bI.png\",\"images\\\\July2020\\\\6Ru2ajntI9VborxWz90a.png\",\"images\\\\July2020\\\\ljtjjxgMrNwITo7X6xPY.png\",\"images\\\\July2020\\\\b4s72o3qvbD2FDHLCtRP.png\",\"images\\\\July2020\\\\qS1ehqFa4dZZ21RfUZRv.png\",\"images\\\\July2020\\\\ohERtHz3bxNGOkzfCW8f.png\",\"images\\\\July2020\\\\Mz88AhAGPT6Kkv3fhNci.png\",\"images\\\\July2020\\\\I6UqlGJ4hkixzLD3KHf8.png\"]', '2020-07-18 09:35:10', '2020-07-18 09:35:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`id`, `avatar`, `name`, `country`, `status`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'judges\\July2020\\t4GNLONDThqeTHoeeq9s.png', 'Mr.Senaka De Silva', NULL, 1, 'Veteran Designer, choreographer senaka de silva in collaboration with the International Academy of Beauticians (IAB ) has launched a diploma in modeling with hope of building and developing the industry as a whole.', '2020-07-17 04:16:28', '2020-07-17 04:16:28', NULL),
(2, 'judges\\July2020\\3A07Z5VDjBxMaY6CkQzL.png', 'Mr.Hariss Wijesinghe', NULL, 1, 'Hariss Wijesinghe is the most popular beauty expert and bridal dresser. Harris Wijesinghe, as he is known throughout the country as well as the world started his career way back in  1972. He is as he started his career thrives upon simplicity  and always says that traditions are important.', '2020-07-17 04:20:47', '2020-07-17 04:20:47', NULL),
(3, 'judges\\July2020\\9OnYLasV1jM2KKJsQZS0.png', 'Mr.Michael Wijesuriya', NULL, 1, 'He has been ‘enjoying’ his career as a couture designer. Almost over the last two decades. So much so, that he often wonders if this is a job. Hardly so, for one who has fun with every design he creates. No small wonder he has won so much recognition both in Sri Lanka and overseas.', '2020-07-17 04:21:30', '2020-07-17 04:21:37', NULL),
(4, 'judges\\July2020\\V7VRbG45Bc0QlBr0VFoB.png', 'Mrs.Sangeetha Weerarathne', NULL, 1, 'Film actress in Sri Lanka. Dian Hemamali sangeethaa weerarathne in Sri Lanka film actress in the Sri Lanka Cinema. she born in 1973 on December 13. she awarded many awards those are sarasaviya best actress award, sarasaviya most popular actress award.', '2020-07-17 04:22:40', '2020-07-17 04:22:40', NULL),
(5, 'judges\\July2020\\YA6SnvHGJlrImzLswWj9.png', 'Mr.Jackson Anthony', NULL, 1, 'Konganige joseph malsi jakson Anthony, commonly known as Jackson Anthony is an award-wining actor in Sri Lanka cinema. Though he has become popular from his career as an actor .He is a Winning actor in Sri Lanka. He is Born in 1985 on July 08. He educated from university of sri jayawardenapura and University of Colombo.', '2020-07-17 04:23:59', '2020-07-17 04:23:59', NULL),
(6, 'judges\\July2020\\064qPGBcrzZtZLsOOtbn.png', 'Mr.Prishan Pandithage', NULL, 1, 'Pinthari solutions is cutting edge photography and video production studio. The team is headed by professional photographer prishan pandithage a graduate of the prestigious Hallmark Institute of photography, Massachusetts U.S.A.', '2020-07-17 04:24:53', '2020-07-17 04:24:53', NULL),
(7, 'judges\\July2020\\iMTkA1UFIqD1Qx0stSYW.png', 'Mrs.Yolanda Aluwihare', NULL, 1, 'fame is indeed a truly amazing journey. Her success as a designer and her runway shows in the fashion capitals is a story that illustrates her undying perfectionism and Unquestionable talent for couture fashion. Inspired by colors of nature each of her creations are elegant and unique due to the fabric and designs being hard crafted.', '2020-07-17 04:25:51', '2020-07-17 04:25:51', NULL),
(8, 'judges\\July2020\\APNipdOAfnVtFeRJg0Iw.png', 'Mrs.Otara Gunewardene', NULL, 1, 'Otara Gunewardene is a Sri Lankan business person and philanthropist. She challenges the boundaries of philanthropists. complacency and forges new ground for women, entrepreneurship, and philanthropy in Sri Lanka.', '2020-07-17 04:26:55', '2020-07-17 04:26:55', NULL),
(9, 'judges\\July2020\\g6ErQ3tkHsPofM1YHElH.png', 'Mr.Prasanna Andharaweera', NULL, 1, 'Manager central Distribution center Institutional Sales and export at Bata.', '2020-07-17 04:28:12', '2020-07-17 04:28:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(2, 'social', '2020-02-07 23:57:14', '2020-02-07 23:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-02-07 04:32:34', '2020-02-07 04:32:34', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2020-02-07 04:32:34', '2020-02-08 17:14:00', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-02-07 04:32:34', '2020-02-07 04:32:34', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-02-07 04:32:34', '2020-02-07 04:32:34', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2020-02-07 04:32:34', '2020-02-08 17:14:01', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-02-07 04:32:34', '2020-02-08 17:14:01', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-02-07 04:32:34', '2020-02-08 17:14:01', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-02-07 04:32:34', '2020-02-08 17:14:02', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-02-07 04:32:34', '2020-02-08 17:14:02', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2020-02-07 04:32:34', '2020-02-08 17:14:03', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-02-07 04:32:34', '2020-02-08 17:14:03', 'voyager.hooks', NULL),
(12, 1, 'Slides', '', '_self', 'voyager-play', NULL, NULL, 7, '2020-02-07 05:33:44', '2020-02-08 17:14:04', 'voyager.slides.index', NULL),
(13, 1, 'Partners', '', '_self', 'voyager-magnet', NULL, NULL, 8, '2020-02-07 07:08:41', '2020-02-08 17:14:04', 'voyager.partners.index', NULL),
(14, 1, 'News', '', '_self', 'voyager-news', NULL, NULL, 9, '2020-02-07 07:41:33', '2020-02-08 17:14:04', 'voyager.news.index', NULL),
(15, 2, 'facebook-f', '', '_self', NULL, '#000000', NULL, 1, '2020-02-07 23:58:14', '2020-07-19 01:31:24', NULL, ''),
(16, 2, 'twitter', '', '_self', NULL, '#000000', NULL, 2, '2020-02-07 23:58:32', '2020-07-19 01:31:24', NULL, ''),
(17, 2, 'youtube', '', '_self', NULL, '#000000', NULL, 3, '2020-02-07 23:58:55', '2020-07-19 01:31:24', NULL, ''),
(18, 2, 'instagram', '', '_self', NULL, '#000000', NULL, 4, '2020-02-07 23:59:19', '2020-07-19 01:31:24', NULL, ''),
(28, 1, 'Videos', '', '_self', 'voyager-video', NULL, 34, 3, '2020-02-08 18:52:09', '2020-07-18 09:34:24', 'voyager.videos.index', NULL),
(29, 1, 'Judges', '', '_self', 'voyager-certificate', NULL, NULL, 11, '2020-02-10 21:20:58', '2020-02-21 13:29:16', 'voyager.judges.index', NULL),
(30, 1, 'Sections', '', '_self', 'voyager-backpack', NULL, NULL, 12, '2020-02-11 14:51:09', '2020-02-21 13:29:16', 'voyager.sections.index', NULL),
(31, 1, 'Parties', '', '_self', 'voyager-smile', NULL, NULL, 13, '2020-02-11 14:52:50', '2020-02-21 13:29:16', 'voyager.parties.index', NULL),
(34, 1, 'Gallery', '', '_self', 'voyager-tv', '#000000', NULL, 10, '2020-02-21 13:28:58', '2020-02-21 13:29:12', NULL, ''),
(36, 1, 'Applicants', '', '_self', 'voyager-people', NULL, NULL, 14, '2020-02-29 00:14:52', '2020-07-18 06:52:36', 'voyager.applicants.index', NULL),
(37, 1, 'Directors', '', '_self', 'voyager-treasure', NULL, NULL, 15, '2020-07-07 06:33:45', '2020-07-18 06:52:36', 'voyager.directors.index', NULL),
(38, 1, 'Speakers', '', '_self', 'voyager-star', NULL, NULL, 16, '2020-07-16 05:31:16', '2020-07-18 06:52:36', 'voyager.speakers.index', NULL),
(39, 1, 'Icons', '', '_self', 'voyager-bubble-hear', NULL, NULL, 17, '2020-07-18 05:31:36', '2020-07-18 06:52:36', 'voyager.icons.index', NULL),
(40, 1, 'Albums', '', '_self', 'voyager-photo', NULL, 34, 1, '2020-07-18 08:34:27', '2020-07-18 09:34:21', 'voyager.albums.index', NULL),
(41, 1, 'Images', '', '_self', 'voyager-photos', NULL, 34, 2, '2020-07-18 08:36:28', '2020-07-18 09:34:24', 'voyager.images.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2018_06_30_113500_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlight` tinyint(4) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `image`, `title`, `highlight`, `slug`, `subtitle`, `body`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'news\\July2020\\4VPPQoPQQjDlOlev0LTx.png', 'Google inks pact for new 35-storey office', 1, 'google-inks-pact-for-new-35-storey-office', NULL, '<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>', 1, '2020-07-17 09:01:42', '2020-07-17 09:01:42', NULL),
(2, 'news\\July2020\\JWIniZVvkxzPrc7MkfX0.png', 'Google inks pact for new 35-storey office', 1, 'google-inks-pact-for-new-35-storey-office', NULL, '<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>\r\n<p>&nbsp;</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>\r\n<p>&nbsp;</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>\r\n<p>&nbsp;</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>', 1, '2020-07-17 09:03:19', '2020-07-17 09:03:19', NULL),
(3, 'news\\July2020\\IQti1HA8XDaw07VZEwil.png', 'Google inks pact for new 35-storey office', 1, 'google-inks-pact-for-new-35-storey-office', NULL, '<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>', 1, '2020-07-17 09:03:45', '2020-07-17 09:03:45', NULL),
(4, 'news\\July2020\\1Y4LjNfEZUAM1VQh7CAb.png', 'Google inks pact for new 35-storey office', 1, 'google-inks-pact-for-new-35-storey-office', NULL, '<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>', 1, '2020-07-17 09:04:01', '2020-07-17 09:04:01', NULL),
(5, 'news\\July2020\\j4BqORXU0Z85ThH2uRxb.png', 'Google inks pact for new 35-storey office', 1, 'google-inks-pact-for-new-35-storey-office', NULL, '<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>', 1, '2020-07-17 09:04:51', '2020-07-17 09:04:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` int(10) UNSIGNED NOT NULL,
  `section_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `logo`, `name`, `slug`, `link`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'partners\\July2020\\zgOTZZcqvpEVd4NVM1lt.png', 'Mediaalent', 'mediaalent', NULL, 1, '2020-07-19 07:38:28', '2020-07-19 07:46:33', NULL),
(2, 'partners\\July2020\\QsJmbIO6y6RCI6UUgex0.png', 'Codealent', 'codealent', NULL, 1, '2020-07-19 07:38:40', '2020-07-19 07:46:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(2, 'browse_bread', NULL, '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(3, 'browse_database', NULL, '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(4, 'browse_media', NULL, '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(5, 'browse_compass', NULL, '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(6, 'browse_menus', 'menus', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(7, 'read_menus', 'menus', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(8, 'edit_menus', 'menus', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(9, 'add_menus', 'menus', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(10, 'delete_menus', 'menus', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(11, 'browse_roles', 'roles', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(12, 'read_roles', 'roles', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(13, 'edit_roles', 'roles', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(14, 'add_roles', 'roles', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(15, 'delete_roles', 'roles', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(16, 'browse_users', 'users', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(17, 'read_users', 'users', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(18, 'edit_users', 'users', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(19, 'add_users', 'users', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(20, 'delete_users', 'users', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(21, 'browse_settings', 'settings', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(22, 'read_settings', 'settings', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(23, 'edit_settings', 'settings', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(24, 'add_settings', 'settings', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(25, 'delete_settings', 'settings', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(26, 'browse_hooks', NULL, '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(27, 'browse_slides', 'slides', '2020-02-07 05:33:44', '2020-02-07 05:33:44'),
(28, 'read_slides', 'slides', '2020-02-07 05:33:44', '2020-02-07 05:33:44'),
(29, 'edit_slides', 'slides', '2020-02-07 05:33:44', '2020-02-07 05:33:44'),
(30, 'add_slides', 'slides', '2020-02-07 05:33:44', '2020-02-07 05:33:44'),
(31, 'delete_slides', 'slides', '2020-02-07 05:33:44', '2020-02-07 05:33:44'),
(32, 'browse_partners', 'partners', '2020-02-07 07:08:41', '2020-02-07 07:08:41'),
(33, 'read_partners', 'partners', '2020-02-07 07:08:41', '2020-02-07 07:08:41'),
(34, 'edit_partners', 'partners', '2020-02-07 07:08:41', '2020-02-07 07:08:41'),
(35, 'add_partners', 'partners', '2020-02-07 07:08:41', '2020-02-07 07:08:41'),
(36, 'delete_partners', 'partners', '2020-02-07 07:08:41', '2020-02-07 07:08:41'),
(37, 'browse_news', 'news', '2020-02-07 07:41:33', '2020-02-07 07:41:33'),
(38, 'read_news', 'news', '2020-02-07 07:41:33', '2020-02-07 07:41:33'),
(39, 'edit_news', 'news', '2020-02-07 07:41:33', '2020-02-07 07:41:33'),
(40, 'add_news', 'news', '2020-02-07 07:41:33', '2020-02-07 07:41:33'),
(41, 'delete_news', 'news', '2020-02-07 07:41:33', '2020-02-07 07:41:33'),
(57, 'browse_galleries', 'galleries', '2020-02-08 17:04:27', '2020-02-08 17:04:27'),
(58, 'read_galleries', 'galleries', '2020-02-08 17:04:28', '2020-02-08 17:04:28'),
(59, 'edit_galleries', 'galleries', '2020-02-08 17:04:28', '2020-02-08 17:04:28'),
(60, 'add_galleries', 'galleries', '2020-02-08 17:04:28', '2020-02-08 17:04:28'),
(61, 'delete_galleries', 'galleries', '2020-02-08 17:04:29', '2020-02-08 17:04:29'),
(82, 'browse_videos', 'videos', '2020-02-08 18:52:07', '2020-02-08 18:52:07'),
(83, 'read_videos', 'videos', '2020-02-08 18:52:08', '2020-02-08 18:52:08'),
(84, 'edit_videos', 'videos', '2020-02-08 18:52:08', '2020-02-08 18:52:08'),
(85, 'add_videos', 'videos', '2020-02-08 18:52:08', '2020-02-08 18:52:08'),
(86, 'delete_videos', 'videos', '2020-02-08 18:52:08', '2020-02-08 18:52:08'),
(87, 'browse_judges', 'judges', '2020-02-10 21:20:56', '2020-02-10 21:20:56'),
(88, 'read_judges', 'judges', '2020-02-10 21:20:56', '2020-02-10 21:20:56'),
(89, 'edit_judges', 'judges', '2020-02-10 21:20:56', '2020-02-10 21:20:56'),
(90, 'add_judges', 'judges', '2020-02-10 21:20:57', '2020-02-10 21:20:57'),
(91, 'delete_judges', 'judges', '2020-02-10 21:20:57', '2020-02-10 21:20:57'),
(92, 'browse_sections', 'sections', '2020-02-11 14:51:07', '2020-02-11 14:51:07'),
(93, 'read_sections', 'sections', '2020-02-11 14:51:07', '2020-02-11 14:51:07'),
(94, 'edit_sections', 'sections', '2020-02-11 14:51:08', '2020-02-11 14:51:08'),
(95, 'add_sections', 'sections', '2020-02-11 14:51:08', '2020-02-11 14:51:08'),
(96, 'delete_sections', 'sections', '2020-02-11 14:51:08', '2020-02-11 14:51:08'),
(97, 'browse_parties', 'parties', '2020-02-11 14:52:47', '2020-02-11 14:52:47'),
(98, 'read_parties', 'parties', '2020-02-11 14:52:47', '2020-02-11 14:52:47'),
(99, 'edit_parties', 'parties', '2020-02-11 14:52:47', '2020-02-11 14:52:47'),
(100, 'add_parties', 'parties', '2020-02-11 14:52:48', '2020-02-11 14:52:48'),
(101, 'delete_parties', 'parties', '2020-02-11 14:52:48', '2020-02-11 14:52:48'),
(117, 'browse_applicants', 'applicants', '2020-02-29 00:14:52', '2020-02-29 00:14:52'),
(118, 'read_applicants', 'applicants', '2020-02-29 00:14:52', '2020-02-29 00:14:52'),
(119, 'edit_applicants', 'applicants', '2020-02-29 00:14:52', '2020-02-29 00:14:52'),
(120, 'add_applicants', 'applicants', '2020-02-29 00:14:52', '2020-02-29 00:14:52'),
(121, 'delete_applicants', 'applicants', '2020-02-29 00:14:52', '2020-02-29 00:14:52'),
(122, 'browse_directors', 'directors', '2020-07-07 06:33:45', '2020-07-07 06:33:45'),
(123, 'read_directors', 'directors', '2020-07-07 06:33:45', '2020-07-07 06:33:45'),
(124, 'edit_directors', 'directors', '2020-07-07 06:33:45', '2020-07-07 06:33:45'),
(125, 'add_directors', 'directors', '2020-07-07 06:33:45', '2020-07-07 06:33:45'),
(126, 'delete_directors', 'directors', '2020-07-07 06:33:45', '2020-07-07 06:33:45'),
(127, 'browse_speakers', 'speakers', '2020-07-16 05:31:16', '2020-07-16 05:31:16'),
(128, 'read_speakers', 'speakers', '2020-07-16 05:31:16', '2020-07-16 05:31:16'),
(129, 'edit_speakers', 'speakers', '2020-07-16 05:31:16', '2020-07-16 05:31:16'),
(130, 'add_speakers', 'speakers', '2020-07-16 05:31:16', '2020-07-16 05:31:16'),
(131, 'delete_speakers', 'speakers', '2020-07-16 05:31:16', '2020-07-16 05:31:16'),
(132, 'browse_icons', 'icons', '2020-07-18 05:31:36', '2020-07-18 05:31:36'),
(133, 'read_icons', 'icons', '2020-07-18 05:31:36', '2020-07-18 05:31:36'),
(134, 'edit_icons', 'icons', '2020-07-18 05:31:36', '2020-07-18 05:31:36'),
(135, 'add_icons', 'icons', '2020-07-18 05:31:36', '2020-07-18 05:31:36'),
(136, 'delete_icons', 'icons', '2020-07-18 05:31:36', '2020-07-18 05:31:36'),
(137, 'browse_albums', 'albums', '2020-07-18 08:34:27', '2020-07-18 08:34:27'),
(138, 'read_albums', 'albums', '2020-07-18 08:34:27', '2020-07-18 08:34:27'),
(139, 'edit_albums', 'albums', '2020-07-18 08:34:27', '2020-07-18 08:34:27'),
(140, 'add_albums', 'albums', '2020-07-18 08:34:27', '2020-07-18 08:34:27'),
(141, 'delete_albums', 'albums', '2020-07-18 08:34:27', '2020-07-18 08:34:27'),
(142, 'browse_images', 'images', '2020-07-18 08:36:28', '2020-07-18 08:36:28'),
(143, 'read_images', 'images', '2020-07-18 08:36:28', '2020-07-18 08:36:28'),
(144, 'edit_images', 'images', '2020-07-18 08:36:28', '2020-07-18 08:36:28'),
(145, 'add_images', 'images', '2020-07-18 08:36:28', '2020-07-18 08:36:28'),
(146, 'delete_images', 'images', '2020-07-18 08:36:28', '2020-07-18 08:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-02-07 04:32:34', '2020-02-07 04:32:34'),
(2, 'user', 'Normal User', '2020-02-07 04:32:34', '2020-02-07 04:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(16, 'site.telephone1', 'Site Telephone 1', '+94 71 71 51 691', NULL, 'text', 7, 'Site'),
(17, 'site.telephone2', 'Site Telephone 2', '+94 71 71 51 111', NULL, 'text', 8, 'Site'),
(18, 'site.email1', 'Site Email 1', 'afaa.asianawards@gmail.com', NULL, 'text', 9, 'Site'),
(19, 'site.email2', 'Site Email 2', 'afaaawards@yahoo.com', NULL, 'text', 10, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'slides\\July2020\\C8HIhx6SyAUyChHWPYc8.jpg', 1, '2020-07-15 07:20:11', '2020-07-15 07:20:11', NULL),
(2, 'slides\\July2020\\3VnhNy7PmFlZ2G1tiES5.jpg', 1, '2020-07-15 07:20:37', '2020-07-15 07:20:37', NULL),
(3, 'slides\\July2020\\apUWfNw5GAO4OkXaNt9Z.jpg', 1, '2020-07-15 07:21:01', '2020-07-15 07:21:01', NULL),
(4, 'slides\\July2020\\DUvH5mUis43km2Ma5C2E.jpg', 1, '2020-07-15 07:21:49', '2020-07-15 07:21:49', NULL),
(5, 'slides\\July2020\\hV5HXf9DrxIZ10EPTV47.jpg', 1, '2020-07-15 07:23:27', '2020-07-15 07:23:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `speakers`
--

CREATE TABLE `speakers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `speakers`
--

INSERT INTO `speakers` (`id`, `name`, `position`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bathiya & Santhush (BNS)', 'Official Music Director', 'speakers\\July2020\\Hu1G7u4aJI9U1tFlvc7v.jpg', '2020-07-16 05:35:09', '2020-07-16 05:35:09', NULL),
(2, 'Jananath Warakagoda', 'Official Music Director', 'speakers\\July2020\\d36juDFo8s3Wgjq8TICF.jpg', '2020-07-16 05:38:05', '2020-07-16 05:38:05', NULL),
(3, 'Channa Wijewardena', 'Official Dancing Choreography', 'speakers\\July2020\\85ExOPv8mBn21rKRMDaF.jpg', '2020-07-16 05:43:00', '2020-07-16 05:44:58', NULL),
(4, 'Gayan Srimal', 'Official Dancing Choreography', 'speakers\\July2020\\Z26E14pBs0S5OnvAJ2wM.png', '2020-07-16 05:45:00', '2020-07-16 06:46:51', NULL),
(5, 'Arantha Sirimanne', 'Official Fashion Photography', 'speakers\\July2020\\uN2M6070UkxJ7cVOGKMm.png', '2020-07-16 05:54:00', '2020-07-16 06:50:52', NULL),
(6, 'Brain Kerkoven', 'Official Fashion Choreography', 'speakers\\July2020\\8kVXUej9xPQXvIF3c3PJ.png', '2020-07-16 06:52:00', '2020-07-16 07:00:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'AFFA Admin', 'afaa@admin.com', 'users/default.png', NULL, '$2y$10$Bybl/k2Awy3R83g1bpzlMOnZrkkHQ5HNyTPK3Jsc0JQiG4aoqxRL2', '5tJsSCRR8tpCHn4wsyba1ftbjr8cS6W4ZVVaSVVkRXQjKGgju2vT8BGg3mLM', NULL, '2020-02-07 04:33:27', '2020-02-07 04:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `url`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'පෙම් පුරවපු හිත | Chamara Weerasinghe | Flashback | Mathugama 2019 | IDEAL Abhiyogaya Stage 09', 'https://www.youtube.com/embed/uRoeOhLxXBw', 1, '2020-07-19 01:20:09', '2020-07-19 01:20:17', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applicants_email_uindex` (`email`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commenter_id_commenter_type_index` (`commenter_id`,`commenter_type`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `comments_child_id_foreign` (`child_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directors_email_uindex` (`email`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speakers`
--
ALTER TABLE `speakers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `speakers`
--
ALTER TABLE `speakers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
