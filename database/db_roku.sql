-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2021 at 02:53 AM
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
