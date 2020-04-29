-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2017 at 07:10 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `inqry`
--

CREATE TABLE `inqry` (
  `id` int(25) NOT NULL,
  `item_id` int(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `art_num` varchar(25) NOT NULL,
  `descript` varchar(150) NOT NULL,
  `color` varchar(25) NOT NULL,
  `size` varchar(25) NOT NULL,
  `quantity` int(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `art_num` varchar(50) DEFAULT 'none',
  `price` varchar(25) NOT NULL,
  `descript` varchar(150) DEFAULT 'none',
  `detail` varchar(300) DEFAULT 'none',
  `mcat` varchar(50) DEFAULT NULL,
  `subcat` varchar(50) DEFAULT NULL,
  `rank` int(20) DEFAULT NULL,
  `feature` tinyint(1) NOT NULL,
  `multi` tinyint(1) NOT NULL,
  `vari` tinyint(1) NOT NULL,
  `vari_id` int(5) NOT NULL,
  `size` varchar(6) NOT NULL,
  `color` varchar(18) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `multi_pic` varchar(300) NOT NULL,
  `pic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `art_num`, `price`, `descript`, `detail`, `mcat`, `subcat`, `rank`, `feature`, `multi`, `vari`, `vari_id`, `size`, `color`, `visible`, `date`, `multi_pic`, `pic`) VALUES
(3, 'Adeel', '00892', '', 'Its more smellfull', '', '1', '1', -6, 0, 1, 1, 1, '111111', '111000000000000000', 1, '2017-10-31 14:29:09', 'images/1_a.jpg|images/1_b.jpg|images/1_c.jpg', 'images/1.jpg'),
(4, 'mountain', '00893', '0', 'Mountain powder', '', '1', '1', -5, 0, 1, 1, 1, 'off', '111000000000000000', 1, '2017-10-31 14:31:50', 'images/2_a.jpg|images/2_b.jpg', 'images/2.jpg'),
(19, 'panels', '', '', '', '', '1', '1', -4, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 03:41:07', 'none', 'images/3.jpg'),
(20, 'mountain', '', '', '', '', '1', '1', -3, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 03:41:51', 'none', 'images/4.jpg'),
(23, 'Adeel', '', '', '', '', '1', '1', -2, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 03:48:48', 'none', 'images/nop.jpg'),
(24, 'adeel', '', '', '', '', '1', '1', -1, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 03:50:57', 'none', 'images/nop.jpg'),
(25, 'bell', '', '', '', '', '1', '1', 0, 0, 1, 0, 1, 'off', 'off', 1, '2017-11-03 03:57:39', 'images/5_a.|images/5_b.|images/5_c.jpg', 'images/5.jpg'),
(26, 'Adeel', '', '', '', '', '1', '1', 1, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 03:59:50', 'none', 'images/6.jpg'),
(27, 'bell', '', '', '', '', '1', '1', 2, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 04:01:22', 'none', 'images/nop.jpg'),
(28, 'mountain', '', '', '', '', '1', '1', 3, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 04:02:12', 'none', 'images/nop.jpg'),
(29, 'ss12', '', '', '', '', '1', '1', 4, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 04:05:21', 'none', 'images/nop.jpg'),
(30, 'Adeel', '', '', '', '', '1', '1', 5, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 04:06:43', 'none', 'images/nop.jpg'),
(31, 'Adeel', '', '', '', '', '1', '1', 6, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 04:14:07', 'none', 'images/nop.jpg'),
(32, 'Adeel', '', '', '', '', '1', '1', 7, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 13:02:14', 'none', 'images/7.jpg'),
(33, 'nbell1', '', '', '', '', '1', '1', 8, 0, 0, 0, 1, 'off', 'off', 1, '2017-11-03 13:04:13', 'none', 'images/8.jpg'),
(400, 'adeel_item_1', '55', '55', 'adeel', 'dt', '6', '1', 1, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:31', 'none', 'images/nop.jpg'),
(401, 'adeel_item_2', '55', '55', 'adeel', 'dt', '6', '1', 2, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(402, 'adeel_item_3', '55', '55', 'adeel', 'dt', '6', '1', 3, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(403, 'adeel_item_4', '55', '55', 'adeel', 'dt', '6', '1', 4, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(404, 'adeel_item_5', '55', '55', 'adeel', 'dt', '6', '1', 5, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(405, 'adeel_item_6', '55', '55', 'adeel', 'dt', '6', '1', 6, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(406, 'adeel_item_7', '55', '55', 'adeel', 'dt', '6', '1', 7, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(407, 'adeel_item_8', '55', '55', 'adeel', 'dt', '6', '1', 8, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(408, 'adeel_item_9', '55', '55', 'adeel', 'dt', '6', '1', 9, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(409, 'adeel_item_10', '55', '55', 'adeel', 'dt', '6', '1', 10, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(410, 'adeel_item_11', '55', '55', 'adeel', 'dt', '6', '1', 11, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(411, 'adeel_item_12', '55', '55', 'adeel', 'dt', '6', '1', 12, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(412, 'adeel_item_13', '55', '55', 'adeel', 'dt', '6', '1', 13, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(413, 'adeel_item_14', '55', '55', 'adeel', 'dt', '6', '1', 14, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(414, 'adeel_item_15', '55', '55', 'adeel', 'dt', '6', '1', 15, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(415, 'adeel_item_16', '55', '55', 'adeel', 'dt', '6', '1', 16, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(416, 'adeel_item_17', '55', '55', 'adeel', 'dt', '6', '1', 17, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(417, 'adeel_item_18', '55', '55', 'adeel', 'dt', '6', '1', 18, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(418, 'adeel_item_19', '55', '55', 'adeel', 'dt', '6', '1', 19, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(419, 'adeel_item_20', '55', '55', 'adeel', 'dt', '6', '1', 20, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(420, 'adeel_item_21', '55', '55', 'adeel', 'dt', '6', '1', 21, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(421, 'adeel_item_22', '55', '55', 'adeel', 'dt', '6', '1', 22, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(422, 'adeel_item_23', '55', '55', 'adeel', 'dt', '6', '1', 23, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(423, 'adeel_item_24', '55', '55', 'adeel', 'dt', '6', '1', 24, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(424, 'adeel_item_25', '55', '55', 'adeel', 'dt', '6', '1', 25, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(425, 'adeel_item_26', '55', '55', 'adeel', 'dt', '6', '1', 26, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(426, 'adeel_item_27', '55', '55', 'adeel', 'dt', '6', '1', 27, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:32', 'none', 'images/nop.jpg'),
(427, 'adeel_item_28', '55', '55', 'adeel', 'dt', '6', '1', 28, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(428, 'adeel_item_29', '55', '55', 'adeel', 'dt', '6', '1', 29, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(429, 'adeel_item_30', '55', '55', 'adeel', 'dt', '6', '1', 30, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(430, 'adeel_item_31', '55', '55', 'adeel', 'dt', '6', '1', 31, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(431, 'adeel_item_32', '55', '55', 'adeel', 'dt', '6', '1', 32, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(432, 'adeel_item_33', '55', '55', 'adeel', 'dt', '6', '1', 33, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(433, 'adeel_item_34', '55', '55', 'adeel', 'dt', '6', '1', 34, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(434, 'adeel_item_35', '55', '55', 'adeel', 'dt', '6', '1', 35, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(435, 'adeel_item_36', '55', '55', 'adeel', 'dt', '6', '1', 36, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(436, 'adeel_item_37', '55', '55', 'adeel', 'dt', '6', '1', 37, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(437, 'adeel_item_38', '55', '55', 'adeel', 'dt', '6', '1', 38, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(438, 'adeel_item_39', '55', '55', 'adeel', 'dt', '6', '1', 39, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(439, 'adeel_item_40', '55', '55', 'adeel', 'dt', '6', '1', 40, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(440, 'adeel_item_41', '55', '55', 'adeel', 'dt', '6', '1', 41, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(441, 'adeel_item_42', '55', '55', 'adeel', 'dt', '6', '1', 42, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(442, 'adeel_item_43', '55', '55', 'adeel', 'dt', '6', '1', 43, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(443, 'adeel_item_44', '55', '55', 'adeel', 'dt', '6', '1', 44, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(444, 'adeel_item_45', '55', '55', 'adeel', 'dt', '6', '1', 45, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(445, 'adeel_item_46', '55', '55', 'adeel', 'dt', '6', '1', 46, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(446, 'adeel_item_47', '55', '55', 'adeel', 'dt', '6', '1', 47, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(447, 'adeel_item_48', '55', '55', 'adeel', 'dt', '6', '1', 48, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(448, 'adeel_item_49', '55', '55', 'adeel', 'dt', '6', '1', 49, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(449, 'adeel_item_50', '55', '55', 'adeel', 'dt', '6', '1', 50, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(450, 'adeel_item_51', '55', '55', 'adeel', 'dt', '6', '1', 51, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(451, 'adeel_item_52', '55', '55', 'adeel', 'dt', '6', '1', 52, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(452, 'adeel_item_53', '55', '55', 'adeel', 'dt', '6', '1', 53, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:33', 'none', 'images/nop.jpg'),
(453, 'adeel_item_54', '55', '55', 'adeel', 'dt', '6', '1', 54, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(454, 'adeel_item_55', '55', '55', 'adeel', 'dt', '6', '1', 55, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(455, 'adeel_item_56', '55', '55', 'adeel', 'dt', '6', '1', 56, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(456, 'adeel_item_57', '55', '55', 'adeel', 'dt', '6', '1', 57, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(457, 'adeel_item_58', '55', '55', 'adeel', 'dt', '6', '1', 58, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(458, 'adeel_item_59', '55', '55', 'adeel', 'dt', '6', '1', 59, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(459, 'adeel_item_60', '55', '55', 'adeel', 'dt', '6', '1', 60, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(460, 'adeel_item_61', '55', '55', 'adeel', 'dt', '6', '1', 61, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(461, 'adeel_item_62', '55', '55', 'adeel', 'dt', '6', '1', 62, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(462, 'adeel_item_63', '55', '55', 'adeel', 'dt', '6', '1', 63, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(463, 'adeel_item_64', '55', '55', 'adeel', 'dt', '6', '1', 64, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(464, 'adeel_item_65', '55', '55', 'adeel', 'dt', '6', '1', 65, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(465, 'adeel_item_66', '55', '55', 'adeel', 'dt', '6', '1', 66, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(466, 'adeel_item_67', '55', '55', 'adeel', 'dt', '6', '1', 67, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(467, 'adeel_item_68', '55', '55', 'adeel', 'dt', '6', '1', 68, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(468, 'adeel_item_69', '55', '55', 'adeel', 'dt', '6', '1', 69, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(469, 'adeel_item_70', '55', '55', 'adeel', 'dt', '6', '1', 70, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(470, 'adeel_item_71', '55', '55', 'adeel', 'dt', '6', '1', 71, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(471, 'adeel_item_72', '55', '55', 'adeel', 'dt', '6', '1', 72, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(472, 'adeel_item_73', '55', '55', 'adeel', 'dt', '6', '1', 73, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(473, 'adeel_item_74', '55', '55', 'adeel', 'dt', '6', '1', 74, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(474, 'adeel_item_75', '55', '55', 'adeel', 'dt', '6', '1', 75, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(475, 'adeel_item_76', '55', '55', 'adeel', 'dt', '6', '1', 76, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(476, 'adeel_item_77', '55', '55', 'adeel', 'dt', '6', '1', 77, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(477, 'adeel_item_78', '55', '55', 'adeel', 'dt', '6', '1', 78, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(478, 'adeel_item_79', '55', '55', 'adeel', 'dt', '6', '1', 79, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(479, 'adeel_item_80', '55', '55', 'adeel', 'dt', '6', '1', 80, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(480, 'adeel_item_81', '55', '55', 'adeel', 'dt', '6', '1', 81, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(481, 'adeel_item_82', '55', '55', 'adeel', 'dt', '6', '1', 82, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:34', 'none', 'images/nop.jpg'),
(482, 'adeel_item_83', '55', '55', 'adeel', 'dt', '6', '1', 83, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(483, 'adeel_item_84', '55', '55', 'adeel', 'dt', '6', '1', 84, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(484, 'adeel_item_85', '55', '55', 'adeel', 'dt', '6', '1', 85, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(485, 'adeel_item_86', '55', '55', 'adeel', 'dt', '6', '1', 86, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(486, 'adeel_item_87', '55', '55', 'adeel', 'dt', '6', '1', 87, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(487, 'adeel_item_88', '55', '55', 'adeel', 'dt', '6', '1', 88, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(488, 'adeel_item_89', '55', '55', 'adeel', 'dt', '6', '1', 89, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(489, 'adeel_item_90', '55', '55', 'adeel', 'dt', '6', '1', 90, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(490, 'adeel_item_91', '55', '55', 'adeel', 'dt', '6', '1', 91, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(491, 'adeel_item_92', '55', '55', 'adeel', 'dt', '6', '1', 92, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(492, 'adeel_item_93', '55', '55', 'adeel', 'dt', '6', '1', 93, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(493, 'adeel_item_94', '55', '55', 'adeel', 'dt', '6', '1', 94, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(494, 'adeel_item_95', '55', '55', 'adeel', 'dt', '6', '1', 95, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(495, 'adeel_item_96', '55', '55', 'adeel', 'dt', '6', '1', 96, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(496, 'adeel_item_97', '55', '55', 'adeel', 'dt', '6', '1', 97, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(497, 'adeel_item_98', '55', '55', 'adeel', 'dt', '6', '1', 98, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(498, 'adeel_item_99', '55', '55', 'adeel', 'dt', '6', '1', 99, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(499, 'adeel_item_100', '55', '55', 'adeel', 'dt', '6', '1', 100, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(500, 'adeel_item_101', '55', '55', 'adeel', 'dt', '6', '1', 101, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(501, 'adeel_item_102', '55', '55', 'adeel', 'dt', '6', '1', 102, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(502, 'adeel_item_103', '55', '55', 'adeel', 'dt', '6', '1', 103, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(503, 'adeel_item_104', '55', '55', 'adeel', 'dt', '6', '1', 104, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(504, 'adeel_item_105', '55', '55', 'adeel', 'dt', '6', '1', 105, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(505, 'adeel_item_106', '55', '55', 'adeel', 'dt', '6', '1', 106, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(506, 'adeel_item_107', '55', '55', 'adeel', 'dt', '6', '1', 107, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(507, 'adeel_item_108', '55', '55', 'adeel', 'dt', '6', '1', 108, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(508, 'adeel_item_109', '55', '55', 'adeel', 'dt', '6', '1', 109, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(509, 'adeel_item_110', '55', '55', 'adeel', 'dt', '6', '1', 110, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:35', 'none', 'images/nop.jpg'),
(510, 'adeel_item_111', '55', '55', 'adeel', 'dt', '6', '1', 111, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(511, 'adeel_item_112', '55', '55', 'adeel', 'dt', '6', '1', 112, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(512, 'adeel_item_113', '55', '55', 'adeel', 'dt', '6', '1', 113, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(513, 'adeel_item_114', '55', '55', 'adeel', 'dt', '6', '1', 114, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(514, 'adeel_item_115', '55', '55', 'adeel', 'dt', '6', '1', 115, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(515, 'adeel_item_116', '55', '55', 'adeel', 'dt', '6', '1', 116, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(516, 'adeel_item_117', '55', '55', 'adeel', 'dt', '6', '1', 117, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(517, 'adeel_item_118', '55', '55', 'adeel', 'dt', '6', '1', 118, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(518, 'adeel_item_119', '55', '55', 'adeel', 'dt', '6', '1', 119, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(519, 'adeel_item_120', '55', '55', 'adeel', 'dt', '6', '1', 120, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(520, 'adeel_item_121', '55', '55', 'adeel', 'dt', '6', '1', 121, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(521, 'adeel_item_122', '55', '55', 'adeel', 'dt', '6', '1', 122, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(522, 'adeel_item_123', '55', '55', 'adeel', 'dt', '6', '1', 123, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(523, 'adeel_item_124', '55', '55', 'adeel', 'dt', '6', '1', 124, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(524, 'adeel_item_125', '55', '55', 'adeel', 'dt', '6', '1', 125, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(525, 'adeel_item_126', '55', '55', 'adeel', 'dt', '6', '1', 126, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(526, 'adeel_item_127', '55', '55', 'adeel', 'dt', '6', '1', 127, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(527, 'adeel_item_128', '55', '55', 'adeel', 'dt', '6', '1', 128, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(528, 'adeel_item_129', '55', '55', 'adeel', 'dt', '6', '1', 129, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(529, 'adeel_item_130', '55', '55', 'adeel', 'dt', '6', '1', 130, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(530, 'adeel_item_131', '55', '55', 'adeel', 'dt', '6', '1', 131, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(531, 'adeel_item_132', '55', '55', 'adeel', 'dt', '6', '1', 132, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(532, 'adeel_item_133', '55', '55', 'adeel', 'dt', '6', '1', 133, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(533, 'adeel_item_134', '55', '55', 'adeel', 'dt', '6', '1', 134, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(534, 'adeel_item_135', '55', '55', 'adeel', 'dt', '6', '1', 135, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(535, 'adeel_item_136', '55', '55', 'adeel', 'dt', '6', '1', 136, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(536, 'adeel_item_137', '55', '55', 'adeel', 'dt', '6', '1', 137, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(537, 'adeel_item_138', '55', '55', 'adeel', 'dt', '6', '1', 138, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:36', 'none', 'images/nop.jpg'),
(538, 'adeel_item_139', '55', '55', 'adeel', 'dt', '6', '1', 139, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(539, 'adeel_item_140', '55', '55', 'adeel', 'dt', '6', '1', 140, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(540, 'adeel_item_141', '55', '55', 'adeel', 'dt', '6', '1', 141, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(541, 'adeel_item_142', '55', '55', 'adeel', 'dt', '6', '1', 142, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(542, 'adeel_item_143', '55', '55', 'adeel', 'dt', '6', '1', 143, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(543, 'adeel_item_144', '55', '55', 'adeel', 'dt', '6', '1', 144, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(544, 'adeel_item_145', '55', '55', 'adeel', 'dt', '6', '1', 145, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(545, 'adeel_item_146', '55', '55', 'adeel', 'dt', '6', '1', 146, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(546, 'adeel_item_147', '55', '55', 'adeel', 'dt', '6', '1', 147, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(547, 'adeel_item_148', '55', '55', 'adeel', 'dt', '6', '1', 148, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(548, 'adeel_item_149', '55', '55', 'adeel', 'dt', '6', '1', 149, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(549, 'adeel_item_150', '55', '55', 'adeel', 'dt', '6', '1', 150, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(550, 'adeel_item_151', '55', '55', 'adeel', 'dt', '6', '1', 151, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(551, 'adeel_item_152', '55', '55', 'adeel', 'dt', '6', '1', 152, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(552, 'adeel_item_153', '55', '55', 'adeel', 'dt', '6', '1', 153, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(553, 'adeel_item_154', '55', '55', 'adeel', 'dt', '6', '1', 154, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(554, 'adeel_item_155', '55', '55', 'adeel', 'dt', '6', '1', 155, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(555, 'adeel_item_156', '55', '55', 'adeel', 'dt', '6', '1', 156, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(556, 'adeel_item_157', '55', '55', 'adeel', 'dt', '6', '1', 157, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(557, 'adeel_item_158', '55', '55', 'adeel', 'dt', '6', '1', 158, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(558, 'adeel_item_159', '55', '55', 'adeel', 'dt', '6', '1', 159, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(559, 'adeel_item_160', '55', '55', 'adeel', 'dt', '6', '1', 160, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(560, 'adeel_item_161', '55', '55', 'adeel', 'dt', '6', '1', 161, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(561, 'adeel_item_162', '55', '55', 'adeel', 'dt', '6', '1', 162, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(562, 'adeel_item_163', '55', '55', 'adeel', 'dt', '6', '1', 163, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(563, 'adeel_item_164', '55', '55', 'adeel', 'dt', '6', '1', 164, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(564, 'adeel_item_165', '55', '55', 'adeel', 'dt', '6', '1', 165, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(565, 'adeel_item_166', '55', '55', 'adeel', 'dt', '6', '1', 166, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(566, 'adeel_item_167', '55', '55', 'adeel', 'dt', '6', '1', 167, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:37', 'none', 'images/nop.jpg'),
(567, 'adeel_item_168', '55', '55', 'adeel', 'dt', '6', '1', 168, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(568, 'adeel_item_169', '55', '55', 'adeel', 'dt', '6', '1', 169, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(569, 'adeel_item_170', '55', '55', 'adeel', 'dt', '6', '1', 170, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(570, 'adeel_item_171', '55', '55', 'adeel', 'dt', '6', '1', 171, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(571, 'adeel_item_172', '55', '55', 'adeel', 'dt', '6', '1', 172, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(572, 'adeel_item_173', '55', '55', 'adeel', 'dt', '6', '1', 173, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(573, 'adeel_item_174', '55', '55', 'adeel', 'dt', '6', '1', 174, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(574, 'adeel_item_175', '55', '55', 'adeel', 'dt', '6', '1', 175, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(575, 'adeel_item_176', '55', '55', 'adeel', 'dt', '6', '1', 176, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(576, 'adeel_item_177', '55', '55', 'adeel', 'dt', '6', '1', 177, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(577, 'adeel_item_178', '55', '55', 'adeel', 'dt', '6', '1', 178, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(578, 'adeel_item_179', '55', '55', 'adeel', 'dt', '6', '1', 179, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(579, 'adeel_item_180', '55', '55', 'adeel', 'dt', '6', '1', 180, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(580, 'adeel_item_181', '55', '55', 'adeel', 'dt', '6', '1', 181, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(581, 'adeel_item_182', '55', '55', 'adeel', 'dt', '6', '1', 182, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(582, 'adeel_item_183', '55', '55', 'adeel', 'dt', '6', '1', 183, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(583, 'adeel_item_184', '55', '55', 'adeel', 'dt', '6', '1', 184, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(584, 'adeel_item_185', '55', '55', 'adeel', 'dt', '6', '1', 185, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(585, 'adeel_item_186', '55', '55', 'adeel', 'dt', '6', '1', 186, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(586, 'adeel_item_187', '55', '55', 'adeel', 'dt', '6', '1', 187, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(587, 'adeel_item_188', '55', '55', 'adeel', 'dt', '6', '1', 188, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(588, 'adeel_item_189', '55', '55', 'adeel', 'dt', '6', '1', 189, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(589, 'adeel_item_190', '55', '55', 'adeel', 'dt', '6', '1', 190, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(590, 'adeel_item_191', '55', '55', 'adeel', 'dt', '6', '1', 191, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(591, 'adeel_item_192', '55', '55', 'adeel', 'dt', '6', '1', 192, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(592, 'adeel_item_193', '55', '55', 'adeel', 'dt', '6', '1', 193, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(593, 'adeel_item_194', '55', '55', 'adeel', 'dt', '6', '1', 194, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(594, 'adeel_item_195', '55', '55', 'adeel', 'dt', '6', '1', 195, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(595, 'adeel_item_196', '55', '55', 'adeel', 'dt', '6', '1', 196, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:38', 'none', 'images/nop.jpg'),
(596, 'adeel_item_197', '55', '55', 'adeel', 'dt', '6', '1', 197, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(597, 'adeel_item_198', '55', '55', 'adeel', 'dt', '6', '1', 198, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(598, 'adeel_item_199', '55', '55', 'adeel', 'dt', '6', '1', 199, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(599, 'adeel_item_200', '55', '55', 'adeel', 'dt', '6', '1', 200, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(600, 'adeel_item_201', '55', '55', 'adeel', 'dt', '6', '1', 201, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(601, 'adeel_item_202', '55', '55', 'adeel', 'dt', '6', '1', 202, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(602, 'adeel_item_203', '55', '55', 'adeel', 'dt', '6', '1', 203, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(603, 'adeel_item_204', '55', '55', 'adeel', 'dt', '6', '1', 204, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(604, 'adeel_item_205', '55', '55', 'adeel', 'dt', '6', '1', 205, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(605, 'adeel_item_206', '55', '55', 'adeel', 'dt', '6', '1', 206, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(606, 'adeel_item_207', '55', '55', 'adeel', 'dt', '6', '1', 207, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(607, 'adeel_item_208', '55', '55', 'adeel', 'dt', '6', '1', 208, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(608, 'adeel_item_209', '55', '55', 'adeel', 'dt', '6', '1', 209, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(609, 'adeel_item_210', '55', '55', 'adeel', 'dt', '6', '1', 210, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(610, 'adeel_item_211', '55', '55', 'adeel', 'dt', '6', '1', 211, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(611, 'adeel_item_212', '55', '55', 'adeel', 'dt', '6', '1', 212, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(612, 'adeel_item_213', '55', '55', 'adeel', 'dt', '6', '1', 213, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(613, 'adeel_item_214', '55', '55', 'adeel', 'dt', '6', '1', 214, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(614, 'adeel_item_215', '55', '55', 'adeel', 'dt', '6', '1', 215, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(615, 'adeel_item_216', '55', '55', 'adeel', 'dt', '6', '1', 216, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(616, 'adeel_item_217', '55', '55', 'adeel', 'dt', '6', '1', 217, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(617, 'adeel_item_218', '55', '55', 'adeel', 'dt', '6', '1', 218, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(618, 'adeel_item_219', '55', '55', 'adeel', 'dt', '6', '1', 219, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(619, 'adeel_item_220', '55', '55', 'adeel', 'dt', '6', '1', 220, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(620, 'adeel_item_221', '55', '55', 'adeel', 'dt', '6', '1', 221, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(621, 'adeel_item_222', '55', '55', 'adeel', 'dt', '6', '1', 222, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:39', 'none', 'images/nop.jpg'),
(622, 'adeel_item_223', '55', '55', 'adeel', 'dt', '6', '1', 223, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(623, 'adeel_item_224', '55', '55', 'adeel', 'dt', '6', '1', 224, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(624, 'adeel_item_225', '55', '55', 'adeel', 'dt', '6', '1', 225, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(625, 'adeel_item_226', '55', '55', 'adeel', 'dt', '6', '1', 226, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(626, 'adeel_item_227', '55', '55', 'adeel', 'dt', '6', '1', 227, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(627, 'adeel_item_228', '55', '55', 'adeel', 'dt', '6', '1', 228, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(628, 'adeel_item_229', '55', '55', 'adeel', 'dt', '6', '1', 229, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(629, 'adeel_item_230', '55', '55', 'adeel', 'dt', '6', '1', 230, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(630, 'adeel_item_231', '55', '55', 'adeel', 'dt', '6', '1', 231, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(631, 'adeel_item_232', '55', '55', 'adeel', 'dt', '6', '1', 232, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(632, 'adeel_item_233', '55', '55', 'adeel', 'dt', '6', '1', 233, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(633, 'adeel_item_234', '55', '55', 'adeel', 'dt', '6', '1', 234, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(634, 'adeel_item_235', '55', '55', 'adeel', 'dt', '6', '1', 235, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(635, 'adeel_item_236', '55', '55', 'adeel', 'dt', '6', '1', 236, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(636, 'adeel_item_237', '55', '55', 'adeel', 'dt', '6', '1', 237, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(637, 'adeel_item_238', '55', '55', 'adeel', 'dt', '6', '1', 238, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(638, 'adeel_item_239', '55', '55', 'adeel', 'dt', '6', '1', 239, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(639, 'adeel_item_240', '55', '55', 'adeel', 'dt', '6', '1', 240, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(640, 'adeel_item_241', '55', '55', 'adeel', 'dt', '6', '1', 241, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(641, 'adeel_item_242', '55', '55', 'adeel', 'dt', '6', '1', 242, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(642, 'adeel_item_243', '55', '55', 'adeel', 'dt', '6', '1', 243, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(643, 'adeel_item_244', '55', '55', 'adeel', 'dt', '6', '1', 244, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(644, 'adeel_item_245', '55', '55', 'adeel', 'dt', '6', '1', 245, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(645, 'adeel_item_246', '55', '55', 'adeel', 'dt', '6', '1', 246, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(646, 'adeel_item_247', '55', '55', 'adeel', 'dt', '6', '1', 247, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(647, 'adeel_item_248', '55', '55', 'adeel', 'dt', '6', '1', 248, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(648, 'adeel_item_249', '55', '55', 'adeel', 'dt', '6', '1', 249, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(649, 'adeel_item_250', '55', '55', 'adeel', 'dt', '6', '1', 250, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(650, 'adeel_item_251', '55', '55', 'adeel', 'dt', '6', '1', 251, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:40', 'none', 'images/nop.jpg'),
(651, 'adeel_item_252', '55', '55', 'adeel', 'dt', '6', '1', 252, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(652, 'adeel_item_253', '55', '55', 'adeel', 'dt', '6', '1', 253, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(653, 'adeel_item_254', '55', '55', 'adeel', 'dt', '6', '1', 254, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(654, 'adeel_item_255', '55', '55', 'adeel', 'dt', '6', '1', 255, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(655, 'adeel_item_256', '55', '55', 'adeel', 'dt', '6', '1', 256, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(656, 'adeel_item_257', '55', '55', 'adeel', 'dt', '6', '1', 257, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(657, 'adeel_item_258', '55', '55', 'adeel', 'dt', '6', '1', 258, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(658, 'adeel_item_259', '55', '55', 'adeel', 'dt', '6', '1', 259, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(659, 'adeel_item_260', '55', '55', 'adeel', 'dt', '6', '1', 260, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(660, 'adeel_item_261', '55', '55', 'adeel', 'dt', '6', '1', 261, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(661, 'adeel_item_262', '55', '55', 'adeel', 'dt', '6', '1', 262, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(662, 'adeel_item_263', '55', '55', 'adeel', 'dt', '6', '1', 263, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(663, 'adeel_item_264', '55', '55', 'adeel', 'dt', '6', '1', 264, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(664, 'adeel_item_265', '55', '55', 'adeel', 'dt', '6', '1', 265, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(665, 'adeel_item_266', '55', '55', 'adeel', 'dt', '6', '1', 266, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(666, 'adeel_item_267', '55', '55', 'adeel', 'dt', '6', '1', 267, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(667, 'adeel_item_268', '55', '55', 'adeel', 'dt', '6', '1', 268, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(668, 'adeel_item_269', '55', '55', 'adeel', 'dt', '6', '1', 269, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(669, 'adeel_item_270', '55', '55', 'adeel', 'dt', '6', '1', 270, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(670, 'adeel_item_271', '55', '55', 'adeel', 'dt', '6', '1', 271, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(671, 'adeel_item_272', '55', '55', 'adeel', 'dt', '6', '1', 272, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(672, 'adeel_item_273', '55', '55', 'adeel', 'dt', '6', '1', 273, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(673, 'adeel_item_274', '55', '55', 'adeel', 'dt', '6', '1', 274, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(674, 'adeel_item_275', '55', '55', 'adeel', 'dt', '6', '1', 275, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(675, 'adeel_item_276', '55', '55', 'adeel', 'dt', '6', '1', 276, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(676, 'adeel_item_277', '55', '55', 'adeel', 'dt', '6', '1', 277, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(677, 'adeel_item_278', '55', '55', 'adeel', 'dt', '6', '1', 278, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(678, 'adeel_item_279', '55', '55', 'adeel', 'dt', '6', '1', 279, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(679, 'adeel_item_280', '55', '55', 'adeel', 'dt', '6', '1', 280, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:41', 'none', 'images/nop.jpg'),
(680, 'adeel_item_281', '55', '55', 'adeel', 'dt', '6', '1', 281, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(681, 'adeel_item_282', '55', '55', 'adeel', 'dt', '6', '1', 282, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(682, 'adeel_item_283', '55', '55', 'adeel', 'dt', '6', '1', 283, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(683, 'adeel_item_284', '55', '55', 'adeel', 'dt', '6', '1', 284, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(684, 'adeel_item_285', '55', '55', 'adeel', 'dt', '6', '1', 285, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(685, 'adeel_item_286', '55', '55', 'adeel', 'dt', '6', '1', 286, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(686, 'adeel_item_287', '55', '55', 'adeel', 'dt', '6', '1', 287, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(687, 'adeel_item_288', '55', '55', 'adeel', 'dt', '6', '1', 288, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(688, 'adeel_item_289', '55', '55', 'adeel', 'dt', '6', '1', 289, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(689, 'adeel_item_290', '55', '55', 'adeel', 'dt', '6', '1', 290, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(690, 'adeel_item_291', '55', '55', 'adeel', 'dt', '6', '1', 291, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(691, 'adeel_item_292', '55', '55', 'adeel', 'dt', '6', '1', 292, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(692, 'adeel_item_293', '55', '55', 'adeel', 'dt', '6', '1', 293, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(693, 'adeel_item_294', '55', '55', 'adeel', 'dt', '6', '1', 294, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(694, 'adeel_item_295', '55', '55', 'adeel', 'dt', '6', '1', 295, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(695, 'adeel_item_296', '55', '55', 'adeel', 'dt', '6', '1', 296, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(696, 'adeel_item_297', '55', '55', 'adeel', 'dt', '6', '1', 297, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(697, 'adeel_item_298', '55', '55', 'adeel', 'dt', '6', '1', 298, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(698, 'adeel_item_299', '55', '55', 'adeel', 'dt', '6', '1', 299, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(699, 'adeel_item_300', '55', '55', 'adeel', 'dt', '6', '1', 300, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(700, 'adeel_item_301', '55', '55', 'adeel', 'dt', '6', '1', 301, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(701, 'adeel_item_302', '55', '55', 'adeel', 'dt', '6', '1', 302, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(702, 'adeel_item_303', '55', '55', 'adeel', 'dt', '6', '1', 303, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(703, 'adeel_item_304', '55', '55', 'adeel', 'dt', '6', '1', 304, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:42', 'none', 'images/nop.jpg'),
(704, 'adeel_item_305', '55', '55', 'adeel', 'dt', '6', '1', 305, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(705, 'adeel_item_306', '55', '55', 'adeel', 'dt', '6', '1', 306, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(706, 'adeel_item_307', '55', '55', 'adeel', 'dt', '6', '1', 307, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(707, 'adeel_item_308', '55', '55', 'adeel', 'dt', '6', '1', 308, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(708, 'adeel_item_309', '55', '55', 'adeel', 'dt', '6', '1', 309, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(709, 'adeel_item_310', '55', '55', 'adeel', 'dt', '6', '1', 310, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(710, 'adeel_item_311', '55', '55', 'adeel', 'dt', '6', '1', 311, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(711, 'adeel_item_312', '55', '55', 'adeel', 'dt', '6', '1', 312, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(712, 'adeel_item_313', '55', '55', 'adeel', 'dt', '6', '1', 313, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(713, 'adeel_item_314', '55', '55', 'adeel', 'dt', '6', '1', 314, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(714, 'adeel_item_315', '55', '55', 'adeel', 'dt', '6', '1', 315, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(715, 'adeel_item_316', '55', '55', 'adeel', 'dt', '6', '1', 316, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(716, 'adeel_item_317', '55', '55', 'adeel', 'dt', '6', '1', 317, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(717, 'adeel_item_318', '55', '55', 'adeel', 'dt', '6', '1', 318, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(718, 'adeel_item_319', '55', '55', 'adeel', 'dt', '6', '1', 319, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(719, 'adeel_item_320', '55', '55', 'adeel', 'dt', '6', '1', 320, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(720, 'adeel_item_321', '55', '55', 'adeel', 'dt', '6', '1', 321, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(721, 'adeel_item_322', '55', '55', 'adeel', 'dt', '6', '1', 322, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(722, 'adeel_item_323', '55', '55', 'adeel', 'dt', '6', '1', 323, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(723, 'adeel_item_324', '55', '55', 'adeel', 'dt', '6', '1', 324, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(724, 'adeel_item_325', '55', '55', 'adeel', 'dt', '6', '1', 325, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(725, 'adeel_item_326', '55', '55', 'adeel', 'dt', '6', '1', 326, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(726, 'adeel_item_327', '55', '55', 'adeel', 'dt', '6', '1', 327, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(727, 'adeel_item_328', '55', '55', 'adeel', 'dt', '6', '1', 328, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(728, 'adeel_item_329', '55', '55', 'adeel', 'dt', '6', '1', 329, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(729, 'adeel_item_330', '55', '55', 'adeel', 'dt', '6', '1', 330, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(730, 'adeel_item_331', '55', '55', 'adeel', 'dt', '6', '1', 331, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:43', 'none', 'images/nop.jpg'),
(731, 'adeel_item_332', '55', '55', 'adeel', 'dt', '6', '1', 332, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(732, 'adeel_item_333', '55', '55', 'adeel', 'dt', '6', '1', 333, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(733, 'adeel_item_334', '55', '55', 'adeel', 'dt', '6', '1', 334, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(734, 'adeel_item_335', '55', '55', 'adeel', 'dt', '6', '1', 335, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg');
INSERT INTO `items` (`id`, `name`, `art_num`, `price`, `descript`, `detail`, `mcat`, `subcat`, `rank`, `feature`, `multi`, `vari`, `vari_id`, `size`, `color`, `visible`, `date`, `multi_pic`, `pic`) VALUES
(735, 'adeel_item_336', '55', '55', 'adeel', 'dt', '6', '1', 336, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(736, 'adeel_item_337', '55', '55', 'adeel', 'dt', '6', '1', 337, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(737, 'adeel_item_338', '55', '55', 'adeel', 'dt', '6', '1', 338, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(738, 'adeel_item_339', '55', '55', 'adeel', 'dt', '6', '1', 339, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(739, 'adeel_item_340', '55', '55', 'adeel', 'dt', '6', '1', 340, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(740, 'adeel_item_341', '55', '55', 'adeel', 'dt', '6', '1', 341, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(741, 'adeel_item_342', '55', '55', 'adeel', 'dt', '6', '1', 342, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(742, 'adeel_item_343', '55', '55', 'adeel', 'dt', '6', '1', 343, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(743, 'adeel_item_344', '55', '55', 'adeel', 'dt', '6', '1', 344, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(744, 'adeel_item_345', '55', '55', 'adeel', 'dt', '6', '1', 345, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(745, 'adeel_item_346', '55', '55', 'adeel', 'dt', '6', '1', 346, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(746, 'adeel_item_347', '55', '55', 'adeel', 'dt', '6', '1', 347, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(747, 'adeel_item_348', '55', '55', 'adeel', 'dt', '6', '1', 348, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(748, 'adeel_item_349', '55', '55', 'adeel', 'dt', '6', '1', 349, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(749, 'adeel_item_350', '55', '55', 'adeel', 'dt', '6', '1', 350, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(750, 'adeel_item_351', '55', '55', 'adeel', 'dt', '6', '1', 351, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(751, 'adeel_item_352', '55', '55', 'adeel', 'dt', '6', '1', 352, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(752, 'adeel_item_353', '55', '55', 'adeel', 'dt', '6', '1', 353, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(753, 'adeel_item_354', '55', '55', 'adeel', 'dt', '6', '1', 354, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(754, 'adeel_item_355', '55', '55', 'adeel', 'dt', '6', '1', 355, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(755, 'adeel_item_356', '55', '55', 'adeel', 'dt', '6', '1', 356, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(756, 'adeel_item_357', '55', '55', 'adeel', 'dt', '6', '1', 357, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(757, 'adeel_item_358', '55', '55', 'adeel', 'dt', '6', '1', 358, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(758, 'adeel_item_359', '55', '55', 'adeel', 'dt', '6', '1', 359, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:44', 'none', 'images/nop.jpg'),
(759, 'adeel_item_360', '55', '55', 'adeel', 'dt', '6', '1', 360, 1, 0, 0, 0, 'off', 'off', 1, '2017-11-10 06:09:45', 'none', 'images/nop.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `m_cat`
--

CREATE TABLE `m_cat` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `rank` int(10) NOT NULL,
  `mcat` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_cat`
--

INSERT INTO `m_cat` (`id`, `name`, `visible`, `rank`, `mcat`) VALUES
(1, 'Design', 1, 1, 1),
(2, 'Programming', 1, 2, 2),
(3, 'Food', 1, 3, 3),
(4, 'Dressing', 1, 4, 4),
(5, 'Furniture', 1, 5, 5),
(6, 'Temp', 1, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

CREATE TABLE `sub_cat` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `rank` int(10) NOT NULL,
  `mcat` int(10) NOT NULL,
  `subcat` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`id`, `name`, `visible`, `rank`, `mcat`, `subcat`) VALUES
(3, 'Logo', 1, 1, 1, 1),
(4, 'Brouture', 1, 2, 1, 2),
(5, 'Web Interface', 1, 3, 1, 3),
(6, 'Business Card', 1, 4, 1, 4),
(7, 'JavaScript', 1, 1, 2, 1),
(8, 'Php', 1, 2, 2, 2),
(9, 'C#', 1, 3, 2, 3),
(10, 'Java', 1, 4, 2, 4),
(11, 'Pizza', 1, 1, 3, 1),
(12, 'Burger', 1, 2, 3, 2),
(13, 'Broast', 1, 3, 3, 3),
(14, 'Fries', 1, 4, 3, 4),
(15, 'Shirts', 1, 1, 5, 1),
(16, 'watches', 1, 2, 5, 2),
(17, 'Jeans', 1, 3, 5, 3),
(18, 'Shoose', 1, 4, 5, 4),
(30, 'test1', 1, 1, 6, 1),
(31, 'test2', 1, 2, 6, 2),
(32, 'test3', 1, 3, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `main_id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`main_id`, `name`) VALUES
(1, 'Size'),
(2, 'Color');

-- --------------------------------------------------------

--
-- Table structure for table `vari_opt`
--

CREATE TABLE `vari_opt` (
  `id` int(10) NOT NULL,
  `main_id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vari_opt`
--

INSERT INTO `vari_opt` (`id`, `main_id`, `name`, `visible`) VALUES
(1, 1, 'XS', 1),
(2, 1, 'S', 1),
(3, 1, 'M', 1),
(4, 1, 'L', 1),
(5, 1, 'XL', 1),
(6, 1, 'XXL', 1),
(7, 2, 'black', 1),
(8, 2, 'white', 1),
(9, 2, 'red', 1),
(10, 2, 'grey', 1),
(11, 2, 'green', 1),
(12, 2, 'blue', 1),
(13, 2, 'gold', 1),
(14, 2, 'orange', 1),
(15, 2, 'lightgrey', 1),
(16, 2, 'brown', 1),
(17, 2, 'yellow', 1),
(18, 2, 'purple', 1),
(19, 2, 'pink', 1),
(20, 2, 'maroon', 1),
(21, 2, 'chocolate', 1),
(22, 2, 'skyblue', 1),
(23, 2, 'violet', 1),
(24, 2, 'khaki', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inqry`
--
ALTER TABLE `inqry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_cat`
--
ALTER TABLE `m_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD UNIQUE KEY `main_id` (`main_id`);

--
-- Indexes for table `vari_opt`
--
ALTER TABLE `vari_opt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inqry`
--
ALTER TABLE `inqry`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=760;
--
-- AUTO_INCREMENT for table `m_cat`
--
ALTER TABLE `m_cat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `vari_opt`
--
ALTER TABLE `vari_opt`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
