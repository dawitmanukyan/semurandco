-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 15, 2023 at 09:11 PM
-- Server version: 8.0.24
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `semur_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int NOT NULL,
  `infoarm` text NOT NULL,
  `inforu` text NOT NULL,
  `infoeng` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `infoarm`, `inforu`, `infoeng`) VALUES
(7, '«Սեմուր ընդ Կո» ընկերությունն այսօր Հայաստանի շինանյութերի արտադրության արդյունաբերության ոլորտի ամենախոշոր ձեռնարկություններից մեկն է: Այն հիմնադրվել է 2000 թվականին։\r\n', 'Сегодня \"Семур и Ко\" - это стройматериалы Армении является одним из крупнейших предприятий обрабатывающей промышленности. Он был основан в 2003 году.\r\n', '\"Semur & Co\" is today one of the largest enterprises in the building materials industry in Armenia. It was founded in 2003.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'semur_admin', 'semur123');

-- --------------------------------------------------------

--
-- Table structure for table `assortment`
--

CREATE TABLE `assortment` (
  `id` int NOT NULL,
  `type-arm` varchar(255) NOT NULL,
  `type-ru` varchar(255) NOT NULL,
  `type-eng` varchar(255) NOT NULL,
  `img` varchar(30) NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `assortment`
--

INSERT INTO `assortment` (`id`, `type-arm`, `type-ru`, `type-eng`, `img`, `category_id`) VALUES
(28, 'Կղմինդր', 'Плитка', 'Metal tile', 'k1.png', 8347406),
(29, 'Կատեգորիա 2', 'Категория 2', 'Category 2', 'tesakani2.png', 1656033);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `namearm` varchar(255) NOT NULL,
  `nameru` varchar(255) NOT NULL,
  `nameeng` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `descriptionarm` text NOT NULL,
  `descriptionru` text NOT NULL,
  `descriptioneng` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `namearm`, `nameru`, `nameeng`, `img`, `descriptionarm`, `descriptionru`, `descriptioneng`) VALUES
(2, 'Նոր նյութ', 'Новости', 'News', 'Снимок экрана 2023-01-06 162746.png', 'News', 'News', 'News'),
(4, 'Նոր նյութ', 'Новости', 'News', 'item-blog2.png', 'մենք արդեն բացվել ենք', 'մենք արդեն բացվել ենք', 'մենք արդեն բացվել ենք'),
(5, 'Կայքը շուտով կբացվի', 'Сайт скоро откроется', 'The site will open soon', 'tesakani7.png', 'Կայքը շուտով կբացվի,Կայքը շուտով կբացվի', 'Сайт скоро откроется,Сайт скоро откроется', 'The site will open soon,The site will open soon'),
(6, 'Կայքը շուտով կբացվի', 'Сайт скоро откроется', 'The site will open soon', 'tesakani7.png', 'Կայքը շուտով կբացվի,Կայքը շուտով կբացվի', 'Сайт скоро откроется,Сайт скоро откроется', 'The site will open soon,The site will open soon');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `img`) VALUES
(13, 'bachground3.png'),
(14, 'tesakani7.png');

-- --------------------------------------------------------

--
-- Table structure for table `home_info`
--

CREATE TABLE `home_info` (
  `id` int NOT NULL,
  `infoarm` text NOT NULL,
  `inforu` text NOT NULL,
  `infoeng` text NOT NULL,
  `titlearm` text NOT NULL,
  `titleru` text NOT NULL,
  `titleeng` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `home_info`
--

INSERT INTO `home_info` (`id`, `infoarm`, `inforu`, `infoeng`, `titlearm`, `titleru`, `titleeng`) VALUES
(3, 'Տեղեկություններ', 'Տեղեկություններ', 'Տեղեկություններ', 'Տեղեկություններ', 'Տեղեկություններ', 'Տեղեկություններ');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_info`
--

CREATE TABLE `home_page_info` (
  `id` int NOT NULL,
  `info` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `lang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `home_page_info`
--

INSERT INTO `home_page_info` (`id`, `info`, `title`, `lang`) VALUES
(1, 'Առաքում, երաշխավորված որակ, ապառիկ վաճառք', 'Հուսալի և ամուր տանիք ապագա սերունդներին', 'arm'),
(2, 'Delivery, guaranteed quality, sale on credit', 'Reliable and durable roof for future generations', 'en'),
(3, 'Доставка, гарантированное качество, продажа в кредит', 'Надежная и прочная крыша для будущих поколений', 'ru');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int NOT NULL,
  `namearm` varchar(255) NOT NULL,
  `nameru` varchar(255) NOT NULL,
  `nameeng` varchar(255) NOT NULL,
  `ownimage` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `descriptionarm` text NOT NULL,
  `descriptionru` text NOT NULL,
  `descriptioneng` text NOT NULL,
  `thickness` varchar(255) NOT NULL,
  `width` varchar(255) NOT NULL,
  `useful_width` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `incategory` int NOT NULL,
  `colored` varchar(255) NOT NULL,
  `inhomepage` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `namearm`, `nameru`, `nameeng`, `ownimage`, `image2`, `image3`, `image4`, `descriptionarm`, `descriptionru`, `descriptioneng`, `thickness`, `width`, `useful_width`, `length`, `incategory`, `colored`, `inhomepage`) VALUES
(31, 'Պրոֆնաստիլ', 'Profnastil', 'Profnastil', 'tesakani9.png', 'k1.png', 'k1.png', 'k1.png', 'ադսդ', 'ասդաս', 'ասդա', '10', '10', '5', '100', 8347406, 'on', 'on'),
(33, 'Բանգա', 'Банга', 'Banga', 'tesakani9.png', 'tesakani9.png', 'tesakani9.png', 'tesakani9.png', 'das', 'das', 'ad', '10', '10', '5', '40', 5821445, 'on', 'on'),
(34, 'Նոր նյութ', 'Նոր նյութ', 'Նոր նյութ', 'tesakani7.png', 'tesakani7.png', 'tesakani7.png', 'tesakani7.png', 'sfd', 'sdfsd', 'sdfds', '10', '10', '5', '100', 1656033, 'on', 'on'),
(35, 'Բանգա', 'Банга', 'Banga', 'tesakani9.png', 'tesakani9.png', 'tesakani9.png', 'tesakani9.png', 'xz  ', 'Zx', 'zxc', '10', '10', '10', '70', 4376547, 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `opening_number`
--

CREATE TABLE `opening_number` (
  `id` int NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `opening_number`
--

INSERT INTO `opening_number` (`id`, `date`) VALUES
(23, 'January 15, 2023, 8:58 pm');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int NOT NULL,
  `date` int NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int NOT NULL,
  `type-arm` varchar(255) NOT NULL,
  `type-ru` varchar(255) NOT NULL,
  `type-eng` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `incategory` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `type-arm`, `type-ru`, `type-eng`, `img`, `category_id`, `incategory`) VALUES
(11, 'Ցանցեր', 'Сетка', 'Meshes', 'tesakani7.png', 4376547, 8347406),
(12, 'subcategorie', 'subcategorie', 'subcategorie', 'tesakani8.png', 5821445, 4376547);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assortment`
--
ALTER TABLE `assortment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_info`
--
ALTER TABLE `home_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_info`
--
ALTER TABLE `home_page_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening_number`
--
ALTER TABLE `opening_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assortment`
--
ALTER TABLE `assortment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `home_info`
--
ALTER TABLE `home_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_page_info`
--
ALTER TABLE `home_page_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `opening_number`
--
ALTER TABLE `opening_number`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
