-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2021 at 03:22 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
CREATE TABLE IF NOT EXISTS `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
CREATE TABLE IF NOT EXISTS `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'backtotheFutureCover.jpg', 'Back to the Future', '1985', '1h 56min', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.', 'backtotheFuture.mp4', ''),
(2, 'scarfaceCover.jpg', 'Scarface', '1983', '2h 50min', 'In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.', 'scarface.mp4', ''),
(3, 'aliensCover.jpg', 'Aliens', '1986', '2h 17min', 'Fifty-seven years after surviving an apocalyptic attack aboard her space vessel by merciless space creatures, Officer Ripley awakens from hyper-sleep and tries to warn anyone who will listen about the predators.', 'aliens.mp4', ''),
(4, 'gremlinsCover.jpg', 'Gremlins', '1984', '1h 46min', 'A young man inadvertently breaks three important rules concerning his new pet and unleashes a horde of malevolently mischievous monsters on a small town.', 'gremlins.mp4', ''),
(5, 'ghostbustersCover.jpg', 'Ghostbusters', '1984', '1h 45min', 'Three former parapsychology professors set up shop as a unique ghost removal service.', 'ghostbusters.mp4', ''),
(6, 'jackCover.jpg', 'Jack', '1996', '1h 53min', 'Jack, a 10-year-old boy, suffers from a condition that makes him look much older than he really is. This leads to him facing a lot of difficulties in school but he soon wins over his classmates.', 'jack.mp4', ''),
(7, 'sevenCover.jpg', 'Seven', '1995', '2h 8min', 'A serial killer begins murdering people according to the seven deadly sins. Two detectives, one new to the city and the other about to retire, are tasked with apprehending the criminal.', 'seven.jpg', ''),
(8, 'theMaskCover.jpg', 'The Mask', '1994', '1h 41min', 'Stanley, a meek bank employee, turns into an eccentric and maniacal green-skinned superhero who can bend reality, after wearing a wooden mask that was created by Loki, the Norse god of mischief.', 'theMask.mp4', ''),
(9, 'schindlersListCover.jpg', 'Schindler\'s List', '1993', '3h 17min', 'Oskar Schindler, a German industrialist and member of the Nazi party, tries to save his Jewish employees after witnessing the persecution of Jews in Poland.', 'schindlersList.mp4', ''),
(10, 'theFifthElementCover.jpg', 'The Fifth Element', '1997', '2h 7min', 'Korben Dallas, a cab driver, tries to secure four mystical stones and a mysterious fifth element that alone can defeat a cosmic evil force during an apocalyptic war.', 'theFifthElement.mp4', ''),
(11, 'theExorcistCover.jpg', 'The Exorcist', '1973', '2h 12min', 'An actress notices dangerous changes in the behavior and physical make-up of her 12-year-old daughter. Meanwhile, a young priest begins to doubt his faith while dealing with his mother\'s sickness.', 'theExorcist.mp4', ''),
(12, 'watershipDownCover.jpg', 'Watership Down', '1978', '1h 43min', 'When a young rabbit named Fiver (Richard Briers) has a prophetic vision that the end of his warren is near, he persuades seven other rabbits to leave with him in search of a new home.', 'watershipDown.mp4', ''),
(13, 'willyWonkaCover.jpg', 'Willy Wonka & the Chocolate Factory', '1971', '1h 29min', 'A factory owner gives 5 children a chance to win a lifetime supply of sweets. Charlie, along with four odious children enter the factory. Disasters befall each of the children. Will Charlie survive?', 'willyWonka.mp4', ''),
(14, 'dirtyHarryCover.jpg', 'Dirty Harry', '1971', '1h 43min', 'In the year 1971, a police detective ignores the orders of his superiors and gambles with innocent lives to capture a sniper terrorizing San Francisco.', 'dirtyHarry.mp4', ''),
(15, 'logansRunCover.jpg', 'Logan\'s Run', '1976', '2h 02min', 'In the year 2274, young residents enjoy an idyllic, hedonistic lifestyle within the protective confines of a domed city. The general belief is that when each person turns 30, they are reincarnated for another blissful life cycle.', 'logansRun.mp4', ''),
(16, 'westSideStoryCover.jpg', 'West Side Story', '1961', '2h 33min', 'Lovers Maria and Tony find themselves entangled in the bitter battle between their gangster families. Knowing this feud will lead to disastrous consequences, Maria sends Tony to end the fight.', 'westSideStory.mp4', ''),
(17, 'breakfastAtTiffanysCover.jpg', 'Breakfast at Tiffany\'s', '1961', '1h 55min', 'Paul is a struggling writer who recently moves into a new apartment in New York. When he meets Holly, an eccentric but beautiful socialite, he hopelessly falls in love with her.', 'breakfastAtTiffanys.mp4', ''),
(18, 'chittyChittyBangBangCover.jpg', 'Chitty Chitty Bang Bang', '1968', '2h 25min', 'Inventor Caractacus Potts transforms an old Grand Prix car into a magical flying vehicle that teleports him and his family to a kingdom ruled by the evil Baron Bomburst.', 'chittyChittyBangBang.mp4', ''),
(19, 'theSoundOfMusicCover.jpg', 'The Sound of Music', '1965', '2h 55min', 'A tuneful, heartwarming story, it is based on the real life story of the Von Trapp Family singers, one of the world\'s best-known concert groups in the era immediately preceding World War II. ', 'theSoundOfMusic.mp4', ''),
(20, 'theGraduate.jpg', 'The Graduate', '1967', '1h 47min', 'While he is lured into a seductive affair with the wife of his father\'s business partner, college graduate Benjamin also falls in love with her daughter, Elaine.', 'theGraduate.mp4', ''),
(21, 'themCover.jpg', 'Them!', '1954', '1h 34m', 'While investigating a series of mysterious deaths, Sergeant Ben Peterson (James Whitmore) finds a young girl (Sandy Descher) who is unable to speak. As Peterson joins forces with FBI agent Robert Graham (James Arness) and scientist Dr. Harold Medford (Edmund Gwenn), he discovers that all the incidents are due to giant ants that have been mutated by atomic radiation. Peterson and Graham, with the aid of the military, attempt to find the queen ants and destroy the nests before the danger spreads.', 'them.mp4', ''),
(22, 'cinderellaCover.jpg', 'Cinderella', '1957', '1h 30m', 'Rodgers and Hammerstein\'s Cinderella is a musical written for television, but later played on stage, with music by Richard Rodgers and a book and lyrics by Oscar Hammerstein II. It is based upon the fairy tale Cinderella, particularly the French version Cendrillon, ou la petite pantoufle de verre, by Charles Perrault.', 'cinderella.mp4', ''),
(23, 'peterPanCover.jpg', 'Peter Pan', '1953', '1h 17m', 'In this Disney animated film, Wendy (Kathryn Beaumont) and her two brothers are amazed when a magical boy named Peter Pan (Bobby Driscoll) flies into their bedroom, supposedly in pursuit of his rebellious shadow. He and his fairy friend, Tinkerbell, come from a far-off place called Neverland, where children stay perpetually young. Enchanted, the kids follow him back. But when Pan\'s nemesis, the pirate Captain Hook (Hans Conried), causes trouble, the kids begin to miss their old life.', 'peterPan.mp4', ''),
(24, 'forbiddenPlanetCover.jpg', 'Forbidden Planet', '1956', '1h 39m', 'In this sci-fi classic, a spacecraft travels to the distant planet Altair IV to discover the fate of a group of scientists sent there decades earlier. When Commander John J. Adams (Leslie Nielsen) and his crew arrive, they discover only two people: Dr. Morbius (Walter Pidgeon) and his daughter, Altaira (Anne Francis), who was born on the remote planet. Soon, Adams begins to uncover the mystery of what happened on Altair IV, and why Morbius and Altaira are the sole survivors.', 'forbiddenPlanet.mp4', ''),
(25, 'harveyCover.jpg', 'Harvey', '1950', '1h 46m', 'Elwood P. Dowd (James Stewart) is a wealthy drunk who starts having visions of a giant rabbit named Harvey. Elwood lives with his sister Veta (Josephine Hull) and her daughter (Victoria Horne), and Veta worries that Elwood has gone insane. In the process of trying to have him committed, Veta admits that she occasionally sees Harvey herself. The director of the mental home, Dr. Chumley (Cecil Kellaway), tries to reconcile his duty to help Elwood with his own growing experiences with Harvey.', 'harvey.mp4', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_country`
--

DROP TABLE IF EXISTS `tbl_mov_country`;
CREATE TABLE IF NOT EXISTS `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
CREATE TABLE IF NOT EXISTS `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `movie_ID` mediumint(9) NOT NULL,
  `genre_ID` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`ID`, `movie_ID`, `genre_ID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 1, 13),
(5, 2, 1),
(6, 2, 4),
(7, 3, 1),
(8, 3, 7),
(9, 3, 9),
(10, 4, 3),
(11, 4, 13),
(12, 5, 3),
(13, 5, 13),
(14, 6, 5),
(15, 6, 13),
(16, 7, 1),
(17, 7, 5),
(18, 7, 7),
(19, 8, 3),
(20, 8, 13),
(21, 9, 6),
(22, 9, 10),
(23, 10, 1),
(24, 10, 2),
(25, 10, 9),
(26, 11, 7),
(27, 11, 5),
(28, 12, 2),
(29, 12, 12),
(30, 12, 13),
(31, 13, 8),
(32, 13, 13),
(33, 14, 1),
(34, 14, 4),
(35, 15, 1),
(36, 15, 2),
(39, 15, 9),
(40, 16, 4),
(41, 16, 5),
(42, 16, 8),
(43, 16, 13),
(44, 17, 3),
(45, 17, 5),
(46, 17, 13),
(47, 17, 15),
(48, 18, 2),
(49, 18, 13),
(50, 18, 14),
(51, 18, 8),
(52, 19, 5),
(53, 19, 13),
(54, 19, 8),
(55, 19, 15),
(56, 20, 3),
(57, 20, 5),
(58, 20, 15),
(59, 21, 12),
(60, 21, 13),
(61, 21, 8),
(62, 21, 15),
(63, 23, 12),
(64, 23, 2),
(65, 23, 13),
(66, 24, 1),
(67, 24, 2),
(68, 24, 9),
(69, 25, 3),
(70, 25, 5),
(71, 25, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_lang`
--

DROP TABLE IF EXISTS `tbl_mov_lang`;
CREATE TABLE IF NOT EXISTS `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_studio`
--

DROP TABLE IF EXISTS `tbl_mov_studio`;
CREATE TABLE IF NOT EXISTS `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

DROP TABLE IF EXISTS `tbl_music`;
CREATE TABLE IF NOT EXISTS `tbl_music` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cover` varchar(75) NOT NULL DEFAULT 'Cover.jpg',
  `music_artist` varchar(125) NOT NULL,
  `music_title` varchar(125) NOT NULL,
  `music_runtime` varchar(25) NOT NULL,
  `music_track` varchar(75) NOT NULL DEFAULT '.mp3',
  `music_year` varchar(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`ID`, `cover`, `music_artist`, `music_title`, `music_runtime`, `music_track`, `music_year`) VALUES
(1, 'nevermindCover.jpg', 'Nirvana', 'Nevermind', '42:38', 'Nevermind.mp3', '1991'),
(2, 'OKComputerCover.jpg', 'Radiohead', 'OK Computer', '53:21', 'OKComputer.mp3', '1997'),
(3, 'siameseDreamCover.jpg', 'The Smashing Pumpkins', 'Siamese Dream', '62:16', 'siameseDream.mp3', '1993'),
(4, 'babyOneMoreTimeCover.jpg', 'Britney Spears', '...Baby One More Time', '42:20', 'babyOneMoreTime.mp3', '1999'),
(5, 'astroLoungeCover.jpg', 'Smash Mouth', 'Astro Lounge', '46:24', 'astroLounge.mp3', '1999'),
(6, 'theJoshuaTree.jpg', 'U2', 'The Joshua Tree', '50:11', 'theJoshuaTreeCover.mp3', '1987'),
(7, 'remainInLightCover.jpg', 'Talking Heads', 'Remain in Light', '40:10', 'remainInLight.mp3', '1980'),
(8, 'appetiteForDestructionCover.jpg', 'Guns N\' Roses', 'Appetite for Destruction', '53:52', 'appetiteForDestruction.mp3', '1987'),
(9, 'thrillerCover.jpg', 'Michael Jackson', 'Thriller', '42:19', 'thriller.mp3', '1982'),
(10, 'doolittleCover.jpg', 'Pixies', 'Doolittle', '38:38', 'doolittle.mp3', '1989'),
(11, 'theDarkSideOfTheMoonCover.jpg', 'Pink Floyd', 'The Dark Side of the Moon', '43:09', 'theDarkSideOfTheMoon.mp3', '1973'),
(12, 'rumoursCover.jpg', 'Fleetwood Mac', 'Rumours', '39:43', 'rumours.mp3', '1977'),
(13, 'goodbyeYellowBrickRoadCover.jpg', 'Elton John', 'Goodbye Yellow Brick Road', '76:20', 'goodbyeYellowBrickRoad.mp3', '1973'),
(14, 'offTheWallCover.jpg', 'Michael Jackson', 'Off the Wall', '42:28', 'offTheWall.mp3', '1979'),
(15, 'aNightAtTheOperaCover.jpg', 'Queen', 'A Night at the Opera', '43:08', 'aNightAtTheOpera.mp3', '1975'),
(16, 'petSoundsCover.jpg', 'The Beach Boys', 'Pet Sounds', '35:57', 'petSounds.mp3', '1966'),
(17, 'abbeyRoadCover.jpg', 'The Beatles', 'Abbey Road', '47:03', 'abbeyRoad.mp3', '1969'),
(18, 'areYouExperiencedCover.jpg', 'The Jimi Hendrix Experience', 'Are You Experienced', '38:34', 'areYouExperienced.mp3', '1967'),
(19, 'ledZeppelinCover.jpg', 'Led Zeppelin', 'Led Zeppelin II', '41:38', 'ledZeppelin.mp3', '1969'),
(20, 'tommyCover.jpg', 'The Who', 'Tommy', '75:15', 'tommy.mp3', '1969'),
(21, 'kindOfBlueCover.jpg', 'Miles Davis', 'Kind of Blue', '45:44', 'kindOfBlue.mp3', '1959'),
(22, 'inTheWeeSmallHoursCover.jpg', 'Frank Sinatra', 'In the Wee Small Hours', '48:41', 'inTheWeeSmallHours.mp3', '1955'),
(23, 'elvisPresleyCover.jpg', 'Elvis Presley', 'Elvis Presley', '28:03', 'elvisPresley.mp3', '1956'),
(24, 'blueTrainCover.jpg', 'John Coltrane', 'Blue Train', '42:50', 'blueTrain.mp3', '1958'),
(25, 'theFabulousJohnnyCashCover.jpg', 'Johnny Cash', 'The Fabulous Johnny Cash', '42:20', 'theFabulousJohnnyCash.mp3', '1958');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_musicgenres`
--

DROP TABLE IF EXISTS `tbl_musicgenres`;
CREATE TABLE IF NOT EXISTS `tbl_musicgenres` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_musicgenres`
--

INSERT INTO `tbl_musicgenres` (`ID`, `genre_name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Urban'),
(4, 'Country'),
(5, 'Dance'),
(6, 'Jazz'),
(7, 'Family');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mus_genre`
--

DROP TABLE IF EXISTS `tbl_mus_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mus_genre` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `music_ID` mediumint(9) NOT NULL,
  `genre_ID` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mus_genre`
--

INSERT INTO `tbl_mus_genre` (`ID`, `music_ID`, `genre_ID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 4, 5),
(6, 4, 7),
(7, 5, 2),
(8, 5, 7),
(9, 6, 1),
(10, 6, 7),
(11, 7, 1),
(12, 8, 1),
(13, 9, 2),
(14, 9, 5),
(15, 9, 7),
(16, 10, 1),
(17, 11, 1),
(18, 12, 1),
(19, 13, 2),
(20, 13, 1),
(21, 13, 7),
(22, 14, 2),
(23, 14, 5),
(24, 14, 7),
(25, 15, 1),
(26, 15, 2),
(27, 15, 7),
(28, 16, 1),
(29, 16, 2),
(30, 16, 7),
(31, 17, 1),
(32, 17, 7),
(33, 18, 1),
(34, 19, 1),
(35, 20, 1),
(36, 20, 7),
(37, 21, 6),
(38, 21, 7),
(39, 22, 6),
(40, 23, 1),
(41, 23, 7),
(42, 24, 6),
(43, 24, 7),
(44, 25, 4),
(45, 25, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

DROP TABLE IF EXISTS `tbl_studio`;
CREATE TABLE IF NOT EXISTS `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_television`
--

DROP TABLE IF EXISTS `tbl_television`;
CREATE TABLE IF NOT EXISTS `tbl_television` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cover` varchar(75) NOT NULL DEFAULT 'Cover.jpg',
  `television_title` varchar(125) NOT NULL,
  `television_year` varchar(5) NOT NULL,
  `television_runtime` varchar(25) NOT NULL,
  `television_storyline` text NOT NULL,
  `television_trailer` varchar(75) NOT NULL DEFAULT '.mp4',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_television`
--

INSERT INTO `tbl_television` (`ID`, `cover`, `television_title`, `television_year`, `television_runtime`, `television_storyline`, `television_trailer`) VALUES
(1, 'homeImprovementCover.jpg', 'Home Improvement', '1991', '8 seasons', 'The daily trials and tribulations of Tim Taylor, a TV show host raising three mischievous boys with help from his loyal co-host, domineering wife, and genius neighbor.', 'homeImprovement.mp4'),
(2, 'freshPrinceCover.jpg', 'The Fresh Prince of Bel-Air', '1990', '6 seasons', 'Will Smith more or less plays himself in this good-natured NBC sitcom. As the show\'s popular theme song explains, fictional Will\'s mom sends him away from his rough Philadelphia neighborhood to live with wealthy Uncle Phil and Aunt Vivian in Bel-Air. Will often has fun at the expense of stuck-up cousins Carlton and Hilary.', 'freshPrince.mp4'),
(3, 'friendsCover.jpg', 'Friends', '1994', '10 seasons', 'Follow the lives of six reckless adults living in Manhattan, as they indulge in adventures which make their lives both troublesome and happening.', 'friends.mp4'),
(4, '3rdRockCover.jpg', '3rd Rock from the Sun', '1996', '6 seasons', 'Four extraterrestrials who are on an expedition to Earth, taken on human form in order to observe the behavior of human beings. The fun begins when they try to live as a normal human family.', '3rdRock.mp4'),
(5, 'rugratsCover.jpg', 'Rugrats', '1991', '9 seasons', '`Rugrats\' reveals the world from a baby\'s point of view. Everything looks bigger, more mysterious and uncontrollable. Angelica, the oldest, likes to terrorise her cousin, Tommy, and his friends, and is famous for screaming, \"You stupid babies!\" The adults in the series are often clueless.', 'rugrats.mp4'),
(6, 'knightRiderCover.jpg', 'Knight Rider', '1982', '4 seasons', 'Michael Knight is a man on a mission. Reborn, so to speak, after getting shot in the face, Knight decides to dedicate his life to fighting for justice. Self-made billionaire Wilton Knight hires Michael to be the lead field agent in his Knight Foundation\'s public justice organization, part of which includes the developoing of KITT (Knight Industries Two Thousand), a superpowered, intelligent souped-up Pontiac Trans-Am. KITT can drive 300 miles an hour, is bulletproof, fireproof, can talk, and helps Michael fight injustices in the world.', 'knightRider.mp4'),
(7, 'growingPainsCover.jpg', 'Growing Pains', '1985', '7 seasons', 'The \"Father Knows Best\" of the 1980s, Dr. Jason Seaver is a psychiatrist who has moved his practice into his Long Island, N.Y., home so that his wife, Maggie, can resume her career. Their children are girl-crazy Mike, brainiac Carol and cute little Ben (later, precocious Chrissie was born). This series, however, tackles issues that \"Father Knows Best\" wouldn\'t have: drugs, suicide, peer pressure, alcohol. But the Seavers pull through problems with a sense of humor and usually emerge stronger than before.', 'growingPains.mp4'),
(8, 'babarCover.jpg', 'Babar', '1989', '6 seasons', 'King Babar recounts the story of his life and adventures in this animated adaptation of Jean de Brunhoff\'s (and after his death, his son, Laurent\'s) charming children\'s books. This long-running series has been broadcast in 30 languages in more than 150 countries around the world.', 'babar.mp4'),
(9, 'goldenGirlsCover.jpg', 'The Golden Girls', '1985', '7 seasons', 'Girls from different parts of the country participate in a series of contests and demonstrate their unique skills and talent to win the coveted title.', 'goldenGirls.mp4'),
(10, 'perfectStrangersCover.jpg', 'Perfect Strangers', '1986', '8 seasons', 'When Wisconsin native Larry Appleton moves into his first apartment in Chicago, he enjoys his newfound privacy. But that privacy quickly vanishes when Balki Bartokomous, a previously unknown cousin from Mediterranean island of Mypos, shows up wanting to move in. Larry decides to act as a mentor to Balki and help teach him about life in America, which is vastly different than what Balki is used to in his homeland. The two grow close as time goes on, going on many wacky adventures. Over time, both have relationships that eventually end in marriage.', 'perfectStrangers.mp4'),
(11, 'battlestarGalacticaCover.jpg', 'Battlestar Galactica', '1978', '1 season', 'In the seventh millennium, AD, Galactica is the only surviving battleship after an attack by the evil Cylons. As a result of the attack, peace is destroyed and most of humankind have been wiped out. Led by Commander Adama, Galactica and a hundred or so smaller ships flee to try to find refuge on the legendary but unknown planet Earth. The Cylons, with the help of the equally evil Count Baltar, are in hot pursuit.', 'battlestarGalactica.mp4'),
(12, 'theWaltonsCover.jpg', 'The Waltons', '1972', '9 seasons', 'Follow the life and hardships of the Walton family consisting of John, Olivia, their seven children and their parents through the Great Depression and World War II.', 'theWaltons.mp4'),
(13, 'shazamCover.jpg', 'Shazam!', '1974', '3 seasons', 'Teenager Billy Batson and his adult companion, Mentor, travel in an RV, helping people in need.', 'shazam.mp4'),
(14, 'theIncredibleHulkCover.jpg', 'The Incredible Hulk', '1977', '5 seasons', 'Dr. David Banner is a widowed scientist caught in the middle of an experiment gone bad. As a result, whenever Banner gets extremely upset or stressed out, he turns into a huge green monster called the Incredible Hulk, with awesome strength and rage to match. To keep from being discovered, Banner lives a nomadic life, traveling from town to town in search of a cure and helping people where he can, all the while trying to avoid suspicious reporter Jack McGee, who wants to expose Banner and the Hulk. \"Don\'t make me angry. You wouldn\'t like me when I\'m angry,\" Banner warns McGee in more than one episode.', 'theIncredibleHulk.mp4'),
(15, 'theMuppetShowCover.jpg', 'The Muppet Show', '1976', '5 seasons', 'A fantastic medley of sweet and mischievous, Jim Henson\'s Muppets, including Kermit the Frog and Miss Piggy, produce a weekly variety show with a range of famous guests. Along for the ride are Gonzo, Fozzie the bear and Scooter -- who is the closest thing to a human puppet this series has.', 'theMuppetShow.mp4'),
(16, 'batmanCover.jpg', 'Batman', '1966', '1 season', 'Eccentric Gotham City tycoon Bruce Wayne dons tights to fight crime as Batman, aided by pal Dick Ward as equally Spandex-clad Robin, in this \'60s camp classic. Together, they fight evildoers such as the Penguin, the Joker, the Riddler, Egghead, Catwoman and Mr. Freeze.', 'batman.mp4'),
(17, 'lostInSpaceCover.jpg', 'Lost In Space', '1965', '3 seasons', 'The Robinson family was supposed to set off on a five-year mission to explore a distant planet, but an act of sabotage by the scheming Dr. Zachary Smith -- who managed to get himself trapped aboard the spaceship -- leaves them adrift in space for three years. The Robinsons, pilot Don West, Dr. Smith and their trusty robot move from planet to planet, always searching for a way to return to Earth.', 'lostInSpace.mp4'),
(18, 'theAddamsFamilyCover.jpg', 'The Addams Family', '1964', '2 seasons', 'Morticia and Gomez Addams head a perplexingly macabre family whose members include a giant named Lurch, who acts as doorman, a disembodied hand named Thing, not-quite-right son Pugsley and morose daughter Wednesday.', 'theAddamsFamily.mp4'),
(19, 'starTrekCover.jpg', 'Star Trek', '1966', '3 seasons', 'James T Kirk, who is the captain of the Starship Enterprise, explores the whole galaxy with his crew and goes on several adventures as they fight evil forces together.', 'starTrek.mp4'),
(20, 'theFlintstonesCover.jpg', 'The Flintstones', '1960', '6 seasons', 'Fred Flintsone, a modern stone-age man, always finds himself thrown into a series of misadventures.', 'theFlintstones.mp4'),
(21, 'iLoveLucyCover.jpg', 'I Love Lucy', '1951', '6 seasons', 'Lucy Ricardo is the wacky wife of Cuban bandleader Ricky Ricardo. Living in New York, Ricky tries to succeed in show business while Lucy -- always trying to help -- usually manages to get in some kind of trouble that drives Ricky crazy. Their best friends are Fred and Ethel Mertz, who are also their landlords. Usually, Ethel becomes Lucy\'s less-than-willing partner in crime. Ricky and Lucy welcomed little Ricky in 1953, whose birth was a national TV event. Later in the show\'s run, the Ricardos (and the Mertzes) moved to Hollywood, where Ricky tried to become a movie star.', 'iLoveLucy.mp4'),
(22, 'theCiscoKidCover.jpg', 'The Cisco Kid', '1950', '6 seasons', 'The Cisco Kid and his English-mangling sidekick Pancho travel the old west in the grand tradition of the Lone Ranger, righting wrongs and fighting injustice wherever they find it.', 'theCiscoKid.mp4'),
(23, 'alfredHitchcockPresentsCover.jpg', 'Alfred Hitchcock Presents', '1955', '7 seasons', 'The familiar \"plink, plink\" of the theme song, accompanied by the line drawing of a man in profile immediately identifies the show as \"Alfred Hitchcock Presents.\" The famed director opens almost every episode with the words \"Good evening ...\" After a joke -- usually about the evening\'s sponsor -- Hitchcock lays the groundwork for that episode\'s freestanding story of suspense and terror.', 'alfredHitchcockPresents.mp4'),
(24, 'adventuresOfSupermanCover.jpg', 'Adventures of Superman', '1952', '6 seasons', 'It\'s a bird! It\'s a plane! It\'s a syndicated TV adaptation of the beloved DC Comics superhero! You know the drill: When he isn\'t fighting for truth, justice and the American way, the man in tights dons a suit and glasses for his secret identity as Daily Planet newspaper reporter Clark Kent, who works alongside friends Lois Lane and Jimmy Olsen for gruff boss Perry White.', 'adventuresOfSuperman.mp4'),
(25, 'sherlockHolmesCover.jpg', 'Sherlock Holmes', '1954', '2 seasons', 'A television adaptation of some of Sir Arthur Conan Doyle\'s popular stories.', 'sherlockHolmes.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tel_genre`
--

DROP TABLE IF EXISTS `tbl_tel_genre`;
CREATE TABLE IF NOT EXISTS `tbl_tel_genre` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `television_ID` mediumint(9) NOT NULL,
  `genre_ID` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tel_genre`
--

INSERT INTO `tbl_tel_genre` (`ID`, `television_ID`, `genre_ID`) VALUES
(1, 1, 3),
(2, 1, 13),
(3, 2, 3),
(4, 3, 3),
(5, 3, 15),
(6, 4, 3),
(7, 4, 9),
(8, 4, 13),
(9, 5, 2),
(10, 5, 12),
(11, 5, 13),
(12, 6, 1),
(13, 6, 4),
(14, 6, 5),
(15, 7, 3),
(16, 7, 13),
(17, 8, 12),
(18, 8, 3),
(19, 8, 13),
(20, 9, 3),
(21, 9, 5),
(22, 10, 3),
(23, 10, 13),
(24, 11, 1),
(25, 11, 2),
(26, 11, 9),
(27, 12, 5),
(28, 12, 15),
(29, 13, 1),
(30, 13, 13),
(31, 13, 14),
(32, 14, 1),
(33, 14, 2),
(34, 14, 5),
(35, 15, 3),
(36, 15, 13),
(37, 15, 8),
(38, 16, 1),
(39, 16, 4),
(40, 16, 13),
(41, 17, 2),
(42, 17, 3),
(43, 17, 13),
(44, 17, 9),
(45, 18, 3),
(46, 18, 7),
(47, 18, 13),
(48, 19, 1),
(49, 19, 2),
(50, 19, 9),
(51, 20, 12),
(52, 20, 13),
(53, 20, 3),
(54, 21, 3),
(55, 21, 13),
(56, 22, 11),
(57, 22, 2),
(58, 22, 4),
(59, 23, 3),
(60, 23, 7),
(61, 24, 1),
(62, 24, 13),
(63, 24, 4),
(64, 25, 4),
(65, 25, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

DROP TABLE IF EXISTS `tbl_urating`;
CREATE TABLE IF NOT EXISTS `tbl_urating` (
  `rating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating_number` tinyint(4) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_admin` tinyint(4) DEFAULT NULL,
  `user_access` tinyint(4) DEFAULT NULL,
  `user_avatar` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_admin`, `user_access`, `user_avatar`) VALUES
(1, 'trevor', 'user1', 'password', 't@t.com', '2019-02-01 19:07:35', '::1', 1, 5, 'userProfilePic.png'),
(2, 'Jess', 'user2', 'password', 'j@j.com', '2021-03-23 18:11:09', 'no', 3, 0, 'kidsProfilePic.png'),
(3, 'Jon', 'user3', 'password', 'jo@j.com', '2021-03-23 18:11:09', 'no', 0, 3, 'teddy.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
