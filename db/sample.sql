-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2018 at 06:26 PM
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
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `c_code` int(11) NOT NULL,
  `c_name` varchar(10) NOT NULL,
  `visible` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`c_code`, `c_name`, `visible`) VALUES
(1, 'black', 1),
(2, 'white', 1),
(3, 'red', 1),
(4, 'grey', 1),
(5, 'green', 1),
(6, 'blue', 1),
(7, 'gold', 1),
(8, 'orange', 1),
(9, 'lightgrey', 1),
(10, 'brown', 1),
(11, 'yellow', 1),
(12, 'purple', 1),
(13, 'pink', 1),
(14, 'maroon', 1),
(15, 'chocolate', 1),
(16, 'skyblue', 1),
(17, 'violet', 1),
(18, 'khaki', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `news` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `news`) VALUES
(1, 'news1', 'We have updated our all products with new modern style and fashion, check it out.'),
(2, 'news2', 'Its a great news our sales reach 150% more than last year.'),
(3, 'news3', 'Come On be Quick 30% off on every product this offer is only limited for this week.'),
(4, 'news4', 'We are upgrading our machinery for fast, reliable, effective, quality and first grad class production.');

-- --------------------------------------------------------

--
-- Table structure for table `inqry`
--

CREATE TABLE `inqry` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `country` varchar(20) NOT NULL,
  `agreement` varchar(15) NOT NULL,
  `shipment` varchar(15) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(100) NOT NULL
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
  `pic` varchar(50) NOT NULL,
  `tags` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `name`, `link`) VALUES
(1, 'Facebook', 'https://www.facebook.com'),
(2, 'Twitter', 'https://www.twitter.com'),
(3, 'Google', 'https://www.google.com'),
(4, 'Linkedin', 'https://www.linkedin.com'),
(5, 'Instagram', 'https://www.instagram.com');

-- --------------------------------------------------------

--
-- Table structure for table `m_cat`
--

CREATE TABLE `m_cat` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `rank` int(10) NOT NULL,
  `mcat` int(10) NOT NULL,
  `subcat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_cat`
--

INSERT INTO `m_cat` (`id`, `name`, `visible`, `rank`, `mcat`, `subcat`) VALUES
(1, 'Design', 1, 1, 1, 1),
(2, 'Programming', 1, 2, 2, 1),
(3, 'Food', 1, 3, 3, 1),
(4, 'Furniture', 1, 4, 4, 1),
(5, 'Dressing', 1, 5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `total` int(15) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `total`, `date`, `file`) VALUES
(1, 'It is to inform all ...', 1, '2018-02-10 08:04:53', 'news/1.txt'),
(2, 'We have updated our ...', 1, '2018-02-10 08:07:00', 'news/4.txt'),
(3, 'Latest news about Sa...', 1, '2018-02-10 08:32:28', 'news/5.txt');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`) VALUES
(1, 'about_us.txt', 'About Us'),
(2, 'contact_us.txt', 'Contact Us'),
(3, 'help.txt', 'Help'),
(4, 'production_tour.txt', 'Copyrights');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `street1` varchar(30) NOT NULL,
  `street2` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `title`, `domain`, `phone`, `email`, `street1`, `street2`, `country`, `city`) VALUES
(1, 'Sample', 'Sample Inc', 'sample.com', '0302-4567888', 'info@sample.com', 'Sample street ', 'B new Road', 'NY', 'US');

-- --------------------------------------------------------

--
-- Table structure for table `p_tour`
--

CREATE TABLE `p_tour` (
  `id` int(11) NOT NULL,
  `detail` varchar(300) NOT NULL,
  `pic` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_tour`
--

INSERT INTO `p_tour` (`id`, `detail`, `pic`) VALUES
(1, 'Building or factory images where the production actually happening.', 'images/pt1.png'),
(2, 'Machines or tools that are essential for production.', 'images/pt2.jpg'),
(3, 'Best views of material that is being use for quality production.', 'images/pt3.jpg'),
(4, 'How worker work hard to produce valuable output for clients.', 'images/pt4.jpg'),
(5, 'How products are packed and launched for delivery.', 'images/pt5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) NOT NULL,
  `slider` tinyint(1) NOT NULL,
  `info` tinyint(1) NOT NULL,
  `tour` tinyint(1) NOT NULL,
  `price` tinyint(1) NOT NULL,
  `msgtime` float NOT NULL,
  `ipp` int(11) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `slider`, `info`, `tour`, `price`, `msgtime`, `ipp`, `color`) VALUES
(1, 0, 1, 1, 0, 4.2, 12, 'dark');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `s_code` int(11) NOT NULL,
  `s_name` varchar(10) NOT NULL,
  `visible` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`s_code`, `s_name`, `visible`) VALUES
(1, 'XS', 1),
(2, 'S', 1),
(3, 'M', 1),
(4, 'L', 1),
(5, 'XL', 1),
(6, 'XXL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `rank` int(11) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `visible`, `rank`, `address`) VALUES
(1, 'image1', 1, 1, 'slider/1.jpg'),
(2, 'image2', 1, 2, 'slider/2.jpg'),
(3, 'image3', 1, 3, 'slider/3.jpg'),
(4, 'image4', 1, 4, 'slider/4.jpg'),
(5, 'image5', 1, 5, 'slider/5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`) VALUES
(1, 'M.AdeelApple@gmail.com');

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
(23, 'Tables', 1, 1, 4, 1),
(24, 'Chairs', 1, 2, 4, 2),
(25, 'Sofa', 1, 3, 4, 3),
(26, 'Beds', 1, 4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `uname`, `pass`) VALUES
(1, 'Muhammad Adeel', 'adeel', 'adeel');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`c_code`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_cat`
--
ALTER TABLE `m_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_tour`
--
ALTER TABLE `p_tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`s_code`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD UNIQUE KEY `main_id` (`main_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `c_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `inqry`
--
ALTER TABLE `inqry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `m_cat`
--
ALTER TABLE `m_cat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `p_tour`
--
ALTER TABLE `p_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `s_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
