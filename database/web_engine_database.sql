-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2020 at 03:14 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_engine`
--

-- --------------------------------------------------------

--
-- Table structure for table `searchuserindex`
--

CREATE TABLE `searchuserindex` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `keywords` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `searchuserindex`
--

INSERT INTO `searchuserindex` (`id`, `user_id`, `keywords`) VALUES
(251, 706, 'Armstrong;Lilian;Armstrong Lilian;Lilian Armstrong'),
(252, 704, 'Bartell;Drake;Bartell Drake;Drake Bartell'),
(253, 743, 'Bartoletti;Octavia;Bartoletti Octavia;Octavia Bartoletti'),
(254, 730, 'Berge;Alison;Berge Alison;Alison Berge'),
(255, 703, 'Breitenberg;Judd;Breitenberg Judd;Judd Breitenberg'),
(256, 718, 'Buckridge;Callie;Buckridge Callie;Callie Buckridge'),
(257, 707, 'Buckridge;Gustave;Buckridge Gustave;Gustave Buckridge'),
(258, 736, 'Donnelly;Deanna;Donnelly Deanna;Deanna Donnelly'),
(259, 720, 'Douglas;Jettie;Douglas Jettie;Jettie Douglas'),
(260, 738, 'DuBuque;Ardella;DuBuque Ardella;Ardella DuBuque'),
(261, 732, 'Eichmann;Clara;Eichmann Clara;Clara Eichmann'),
(262, 727, 'Friesen;Jennings;Friesen Jennings;Jennings Friesen'),
(263, 750, 'Greenfelder;Lyda;Greenfelder Lyda;Lyda Greenfelder'),
(264, 717, 'Haag;Aylin;Haag Aylin;Aylin Haag'),
(265, 723, 'Heaney;Chanel;Heaney Chanel;Chanel Heaney'),
(266, 722, 'Hill;Jason;Hill Jason;Jason Hill'),
(267, 737, 'Hoppe;Major;Hoppe Major;Major Hoppe'),
(268, 701, 'Jaskolski;Tillman;Jaskolski Tillman;Tillman Jaskolski'),
(269, 709, 'Keebler;Freeda;Keebler Freeda;Freeda Keebler'),
(270, 705, 'Kessler;Alycia;Kessler Alycia;Alycia Kessler'),
(271, 714, 'Kulas;Jerrod;Kulas Jerrod;Jerrod Kulas'),
(272, 711, 'Leannon;Maida;Leannon Maida;Maida Leannon'),
(273, 744, 'Little;Kariane;Little Kariane;Kariane Little'),
(274, 731, 'Lubowitz;Tyreek;Lubowitz Tyreek;Tyreek Lubowitz'),
(275, 710, 'Marvin;Dina;Marvin Dina;Dina Marvin'),
(276, 728, 'Metz;Camryn;Metz Camryn;Camryn Metz'),
(277, 721, 'Moore;Dino;Moore Dino;Dino Moore'),
(278, 724, 'Oberbrunner;Kaci;Oberbrunner Kaci;Kaci Oberbrunner'),
(279, 746, 'Paucek;Keyshawn;Paucek Keyshawn;Keyshawn Paucek'),
(280, 719, 'Pfannerstill;Felicity;Pfannerstill Felicity;Felicity Pfannerstill'),
(281, 747, 'Pfannerstill;Opal;Pfannerstill Opal;Opal Pfannerstill'),
(282, 745, 'Pouros;Eden;Pouros Eden;Eden Pouros'),
(283, 740, 'Prohaska;Kenneth;Prohaska Kenneth;Kenneth Prohaska'),
(284, 708, 'Rau;Maddison;Rau Maddison;Maddison Rau'),
(285, 702, 'Reinger;Alayna;Reinger Alayna;Alayna Reinger'),
(286, 748, 'Renner;Myra;Renner Myra;Myra Renner'),
(287, 739, 'Russel;Devante;Russel Devante;Devante Russel'),
(288, 715, 'Schroeder;Gayle;Schroeder Gayle;Gayle Schroeder'),
(289, 749, 'Simonis;Rosina;Simonis Rosina;Rosina Simonis'),
(290, 712, 'Smitham;Joe;Smitham Joe;Joe Smitham'),
(291, 726, 'Sporer;Earline;Sporer Earline;Earline Sporer'),
(292, 734, 'Stark;Elijah;Stark Elijah;Elijah Stark'),
(293, 741, 'Stark;Travis;Stark Travis;Travis Stark'),
(294, 735, 'Torp;Frida;Torp Frida;Frida Torp'),
(295, 742, 'Volkman;Camilla;Volkman Camilla;Camilla Volkman'),
(296, 733, 'Volkman;Edgardo;Volkman Edgardo;Edgardo Volkman'),
(297, 725, 'Wiegand;Wade;Wiegand Wade;Wade Wiegand'),
(298, 729, 'Wilkinson;Annabel;Wilkinson Annabel;Annabel Wilkinson'),
(299, 713, 'Willms;Tillman;Willms Tillman;Tillman Willms'),
(300, 716, 'Witting;Camylle;Witting Camylle;Camylle Witting');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `surname`) VALUES
(701, 'Jaskolski', 'Tillman'),
(702, 'Reinger', 'Alayna'),
(703, 'Breitenberg', 'Judd'),
(704, 'Bartell', 'Drake'),
(705, 'Kessler', 'Alycia'),
(706, 'Armstrong', 'Lilian'),
(707, 'Buckridge', 'Gustave'),
(708, 'Rau', 'Maddison'),
(709, 'Keebler', 'Freeda'),
(710, 'Marvin', 'Dina'),
(711, 'Leannon', 'Maida'),
(712, 'Smitham', 'Joe'),
(713, 'Willms', 'Tillman'),
(714, 'Kulas', 'Jerrod'),
(715, 'Schroeder', 'Gayle'),
(716, 'Witting', 'Camylle'),
(717, 'Haag', 'Aylin'),
(718, 'Buckridge', 'Callie'),
(719, 'Pfannerstill', 'Felicity'),
(720, 'Douglas', 'Jettie'),
(721, 'Moore', 'Dino'),
(722, 'Hill', 'Jason'),
(723, 'Heaney', 'Chanel'),
(724, 'Oberbrunner', 'Kaci'),
(725, 'Wiegand', 'Wade'),
(726, 'Sporer', 'Earline'),
(727, 'Friesen', 'Jennings'),
(728, 'Metz', 'Camryn'),
(729, 'Wilkinson', 'Annabel'),
(730, 'Berge', 'Alison'),
(731, 'Lubowitz', 'Tyreek'),
(732, 'Eichmann', 'Clara'),
(733, 'Volkman', 'Edgardo'),
(734, 'Stark', 'Elijah'),
(735, 'Torp', 'Frida'),
(736, 'Donnelly', 'Deanna'),
(737, 'Hoppe', 'Major'),
(738, 'DuBuque', 'Ardella'),
(739, 'Russel', 'Devante'),
(740, 'Prohaska', 'Kenneth'),
(741, 'Stark', 'Travis'),
(742, 'Volkman', 'Camilla'),
(743, 'Bartoletti', 'Octavia'),
(744, 'Little', 'Kariane'),
(745, 'Pouros', 'Eden'),
(746, 'Paucek', 'Keyshawn'),
(747, 'Pfannerstill', 'Opal'),
(748, 'Renner', 'Myra'),
(749, 'Simonis', 'Rosina'),
(750, 'Greenfelder', 'Lyda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `searchuserindex`
--
ALTER TABLE `searchuserindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `searchuserindex`
--
ALTER TABLE `searchuserindex`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=751;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `searchuserindex`
--
ALTER TABLE `searchuserindex`
  ADD CONSTRAINT `fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
