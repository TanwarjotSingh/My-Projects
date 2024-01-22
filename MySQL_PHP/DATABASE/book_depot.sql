-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 06:26 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_depot`
--

-- --------------------------------------------------------

--
-- Table structure for table `additive_items`
--

CREATE TABLE `additive_items` (
  `additive_id` int(11) NOT NULL,
  `additive_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `additive_items`
--

INSERT INTO `additive_items` (`additive_id`, `additive_name`) VALUES
(1, 'CD');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`) VALUES
(5, 'Puneet Kumar'),
(7, 'Sushil Bharadwaj'),
(8, 'R. K. Narayan'),
(9, 'Satyajit Ray');

-- --------------------------------------------------------

--
-- Table structure for table `binding`
--

CREATE TABLE `binding` (
  `bind_id` int(11) NOT NULL,
  `bind_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `binding`
--

INSERT INTO `binding` (`bind_id`, `bind_name`) VALUES
(1, 'Soft Cover');

-- --------------------------------------------------------

--
-- Table structure for table `board`
--

CREATE TABLE `board` (
  `board_id` int(11) NOT NULL,
  `board_name` varchar(100) NOT NULL,
  `board_logo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `board`
--

INSERT INTO `board` (`board_id`, `board_name`, `board_logo`) VALUES
(4, 'CBSE', 'CBSE.png'),
(6, 'NCERT', 'NCERT.png'),
(8, 'ICSE', 'ICSE.png'),
(9, 'UBSE', 'UBSE.png'),
(10, 'Uttrakhand Board', 'uttrakhand-board.png');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `isbn` bigint(15) NOT NULL,
  `title` varchar(100) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `edition` year(4) NOT NULL,
  `print_id` int(11) NOT NULL,
  `bind_id` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `our_price` int(11) NOT NULL,
  `vol_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `feature` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `isbn`, `title`, `pub_id`, `edition`, `print_id`, `bind_id`, `pages`, `price`, `our_price`, `vol_id`, `language_id`, `description`, `keyword`, `feature`) VALUES
(6, 1324564545454, 'Book Title', 1, 2021, 1, 1, 200, 100, 100, 2, 2, 'Description', 'New Edition', 'feature'),
(7, 1324564545455, 'Book Name', 1, 2021, 1, 1, 200, 100, 100, 2, 14, 'Description of book', 'New', 'new'),
(11, 1324564545457, 'History Book 1', 5, 2021, 1, 1, 200, 100, 50, 2, 14, 'Book Descriptoin.', 'New', 'feature'),
(12, 1324564545458, 'History Book 2', 4, 2021, 1, 1, 200, 100, 100, 2, 14, 'Book Description.', 'New', 'feature'),
(13, 1324564545459, 'History Book 3', 4, 2021, 1, 1, 200, 100, 50, 2, 14, 'Book Description.', 'New', 'new'),
(15, 1324564545460, 'Accountancy', 3, 2021, 1, 1, 200, 100, 100, 2, 14, 'Descriptoin.', 'New', 'hot'),
(16, 1324564545461, 'Accountancy 1', 3, 2021, 1, 1, 200, 500, 250, 2, 14, 'Book Description.', 'New', 'hot'),
(17, 1324564545462, 'Accountancy 2', 3, 2021, 1, 1, 200, 800, 100, 2, 14, 'Description', 'New', 'feature'),
(18, 1324564545465, 'History Book 4', 3, 2021, 1, 1, 200, 100, 100, 2, 14, 'This is the description of book.', 'New', 'hot'),
(19, 132456454549, 'Book Name', 6, 2021, 1, 1, 200, 100, 100, 3, 14, 'This Will be the book description', 'New', 'new'),
(22, 132456454550, 'Science Book', 6, 2021, 1, 1, 200, 500, 100, 2, 14, 'This is the description of the book', 'New', 'new'),
(27, 132456454551, 'Book Title Programming ', 6, 2021, 1, 1, 200, 500, 450, 2, 14, 'This is book description.', '', ''),
(28, 132456454552, 'Book Name Litrature', 3, 2021, 1, 1, 200, 100, 100, 2, 2, 'This is the description', '', ''),
(29, 132456454553, 'Book Name', 1, 2021, 1, 1, 200, 500, 450, 2, 3, 'This is book description', '', ''),
(30, 132456454554, 'New Book Name', 4, 2021, 1, 1, 200, 500, 450, 2, 14, 'Description', '', ''),
(31, 132456454555, 'Testing Title', 1, 2021, 1, 1, 200, 100, 50, 2, 14, 'This is description of book', '', ''),
(32, 132456454556, 'Testing 2', 4, 2021, 1, 1, 200, 100, 50, 2, 14, 'This is description', '', ''),
(33, 132456454557, 'Something', 1, 2021, 1, 1, 200, 100, 50, 2, 14, 'Description', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `book_additive`
--

CREATE TABLE `book_additive` (
  `book_additive_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `additive_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_additive`
--

INSERT INTO `book_additive` (`book_additive_id`, `book_id`, `additive_id`) VALUES
(2, 6, 1),
(3, 7, 1),
(4, 11, 1),
(5, 12, 1),
(6, 13, 1),
(7, 15, 1),
(8, 16, 1),
(9, 17, 1),
(11, 19, 1),
(13, 22, 1),
(19, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`book_id`, `author_id`) VALUES
(6, 5),
(7, 7),
(11, 9),
(12, 9),
(13, 8),
(15, 7),
(16, 5),
(16, 8),
(17, 5),
(17, 7),
(17, 8),
(17, 9),
(18, 5),
(18, 7),
(18, 8),
(18, 9),
(19, 5),
(19, 7),
(22, 7),
(22, 8),
(27, 7),
(27, 8),
(28, 5),
(28, 7),
(29, 7),
(29, 9),
(31, 5),
(31, 7),
(31, 8),
(32, 5),
(32, 7);

-- --------------------------------------------------------

--
-- Table structure for table `book_board`
--

CREATE TABLE `book_board` (
  `book_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_board`
--

INSERT INTO `book_board` (`book_id`, `board_id`) VALUES
(7, 6),
(11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `book_genres`
--

CREATE TABLE `book_genres` (
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_genres`
--

INSERT INTO `book_genres` (`book_id`, `genre_id`) VALUES
(6, 1),
(7, 3),
(11, 5),
(12, 5),
(13, 5),
(15, 1),
(16, 1),
(17, 1),
(18, 5),
(19, 8),
(22, 8),
(27, 3),
(28, 4),
(29, 4),
(30, 6),
(31, 6),
(32, 6),
(33, 7);

-- --------------------------------------------------------

--
-- Table structure for table `catalogues`
--

CREATE TABLE `catalogues` (
  `catalogue_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `catalogue_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalogues`
--

INSERT INTO `catalogues` (`catalogue_id`, `pub_id`, `catalogue_name`) VALUES
(6, 1, 'SHEET.xlsx'),
(7, 1, 'sample-pdf-file.pdf'),
(11, 3, 'sample-pdf-with-images.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES
(1, 'Accountancy'),
(3, 'Programming'),
(4, 'Litrature'),
(5, 'History'),
(6, 'Medical'),
(7, 'Politics'),
(8, 'Science'),
(9, 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `book_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `front` varchar(50) NOT NULL,
  `back` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`book_id`, `image_id`, `front`, `back`) VALUES
(6, 1, 'front_cover.png', 'sample_cover.png'),
(7, 2, 'cover 02.png', 'sample_cover.png'),
(11, 3, 'book_cover.png', 'sample_cover.png'),
(12, 4, 'cover 3 .png', 'sample_cover.png'),
(13, 5, 'cover 7.png', 'sample_cover.png'),
(15, 6, 'cover 6.png', 'sample_cover.png'),
(16, 7, 'cover 5.png', 'sample_cover.png'),
(17, 8, 'cover 4.png', 'sample_cover.png'),
(18, 9, 'cover 4.png', 'sample_cover.png'),
(19, 10, 'cover 6.png', 'sample_cover.png'),
(22, 12, 'cover 4.png', 'sample_cover.png'),
(27, 13, 'cover 4.png', 'sample_cover.png'),
(28, 14, 'cover 4.png', 'sample_cover.png'),
(29, 15, 'cover 5.png', 'sample_cover.png'),
(30, 16, 'cover 4.png', 'sample_cover.png'),
(31, 17, 'cover 5.png', 'sample_cover.png'),
(32, 18, 'cover 7.png', 'sample_cover.png'),
(33, 19, 'cover 5.png', 'sample_cover.png');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`) VALUES
(14, 'English'),
(2, 'Hindi'),
(3, 'Punjabi');

-- --------------------------------------------------------

--
-- Table structure for table `notebook`
--

CREATE TABLE `notebook` (
  `notebook_id` int(11) NOT NULL,
  `notebook_name` varchar(50) NOT NULL,
  `notebook_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notebook`
--

INSERT INTO `notebook` (`notebook_id`, `notebook_name`, `notebook_price`) VALUES
(3, 'Single Line Copy', 25),
(4, 'English Copy', 25),
(5, 'Math Copy', 30);

-- --------------------------------------------------------

--
-- Table structure for table `print`
--

CREATE TABLE `print` (
  `print_id` int(11) NOT NULL,
  `print_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `print`
--

INSERT INTO `print` (`print_id`, `print_name`) VALUES
(1, 'Original Print');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `pub_id` int(11) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `pub_contact` bigint(12) DEFAULT NULL,
  `pub_email` varchar(30) NOT NULL,
  `pub_address` varchar(35) NOT NULL,
  `pub_logo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`pub_id`, `publisher_name`, `pub_contact`, `pub_email`, `pub_address`, `pub_logo`) VALUES
(1, 'Kalyani Publisher', 0, '', '', ''),
(3, 'S. Chand Publishing', 0, '', '', ''),
(4, 'Laxmi Publications', 0, '', '', ''),
(5, 'Arihant Publications', 0, '', '', ''),
(6, 'Evergreen Publishers', 0, '', '', ''),
(7, 'Goyal Publisher', 0, '', '', ''),
(8, 'Dhanpat Rai Publishers', 0, 'email@email.com', 'Publisher Address', ''),
(9, 'NCERT', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `school_address` varchar(150) NOT NULL,
  `school_logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `school_name`, `school_address`, `school_logo`) VALUES
(1, 'Army Public School', '', 'APS-clement-town.png'),
(2, 'Canfield School', '', 'canfield-clement-town.png'),
(3, 'Kendriya Vidyalaya', '', 'kv-clement-town.png'),
(4, 'Lovedale Academy', '', 'lovedale-clement-town.png'),
(5, 'St. Joseph School', '', 'st-joseph-dehradun.png'),
(6, 'St. Mary School', '', 'st-mary-vikas-nagar.png'),
(7, 'St. Patrick School', '', 'st-patrick-clement-town.png'),
(8, 'Universal Academy', '', 'universal-academy-dehradun.png');

-- --------------------------------------------------------

--
-- Table structure for table `school_book`
--

CREATE TABLE `school_book` (
  `school_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_book`
--

INSERT INTO `school_book` (`school_id`, `book_id`) VALUES
(3, 31),
(3, 32),
(4, 32),
(5, 32),
(6, 32),
(7, 32),
(8, 32),
(1, 33),
(1, 30),
(1, 28),
(3, 33);

-- --------------------------------------------------------

--
-- Table structure for table `school_kit`
--

CREATE TABLE `school_kit` (
  `book_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_kit`
--

INSERT INTO `school_kit` (`book_id`, `school_id`, `class`) VALUES
(16, 1, '2'),
(17, 1, '2'),
(7, 1, '2'),
(19, 1, '2'),
(6, 1, '2'),
(11, 1, '2'),
(12, 1, '2'),
(18, 1, '2'),
(22, 1, '1'),
(7, 1, 'Nursery'),
(15, 1, 'Nursery'),
(33, 1, '1'),
(31, 3, '1');

-- --------------------------------------------------------

--
-- Table structure for table `school_notebook`
--

CREATE TABLE `school_notebook` (
  `notebook_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_notebook`
--

INSERT INTO `school_notebook` (`notebook_id`, `school_id`, `class`, `quantity`) VALUES
(3, 1, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `school_stationary`
--

CREATE TABLE `school_stationary` (
  `stationary_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_stationary`
--

INSERT INTO `school_stationary` (`stationary_id`, `school_id`, `class`, `quantity`) VALUES
(1, 1, 1, 4),
(3, 1, 1, 1),
(1, 1, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `stationary`
--

CREATE TABLE `stationary` (
  `stationary_id` int(11) NOT NULL,
  `stationary_name` varchar(50) NOT NULL,
  `stationary_type` varchar(50) NOT NULL,
  `stationary_brand` varchar(50) NOT NULL,
  `stationary_quantiy` int(11) NOT NULL,
  `stationary_cost` int(11) NOT NULL,
  `stationary_discount` int(11) NOT NULL,
  `stationary_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stationary`
--

INSERT INTO `stationary` (`stationary_id`, `stationary_name`, `stationary_type`, `stationary_brand`, `stationary_quantiy`, `stationary_cost`, `stationary_discount`, `stationary_price`) VALUES
(1, 'Pencil', '', 'DOOMS', 0, 0, 0, 10),
(2, 'Sharpners', '', 'Natraj', 0, 0, 0, 5),
(3, 'Pencil Color', '', 'Apsara', 0, 0, 0, 50),
(4, 'Pencil HB', 'Pencil', 'Apsara', 1, 34, 0, 34);

-- --------------------------------------------------------

--
-- Table structure for table `stationary_brand`
--

CREATE TABLE `stationary_brand` (
  `stationary_brand_id` int(11) NOT NULL,
  `stationary_brand_name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stationary_brand`
--

INSERT INTO `stationary_brand` (`stationary_brand_id`, `stationary_brand_name`) VALUES
(2, 'Apsara'),
(1, 'DOOMS'),
(3, 'Natraj');

-- --------------------------------------------------------

--
-- Table structure for table `stationary_type`
--

CREATE TABLE `stationary_type` (
  `stationary_type_id` int(11) NOT NULL,
  `stationary_type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stationary_type`
--

INSERT INTO `stationary_type` (`stationary_type_id`, `stationary_type_name`) VALUES
(1, 'Pencil'),
(3, 'Ruler'),
(2, 'Sharpener');

-- --------------------------------------------------------

--
-- Table structure for table `sub_genre`
--

CREATE TABLE `sub_genre` (
  `sub_genre_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `sub_genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_genre`
--

INSERT INTO `sub_genre` (`sub_genre_id`, `genre_id`, `sub_genre_name`) VALUES
(1, 1, 'Tally'),
(8, 3, 'C++');

-- --------------------------------------------------------

--
-- Table structure for table `volume`
--

CREATE TABLE `volume` (
  `vol_id` int(11) NOT NULL,
  `volume_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volume`
--

INSERT INTO `volume` (`vol_id`, `volume_name`) VALUES
(2, 'Vol 1'),
(3, 'Vol 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additive_items`
--
ALTER TABLE `additive_items`
  ADD PRIMARY KEY (`additive_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `binding`
--
ALTER TABLE `binding`
  ADD PRIMARY KEY (`bind_id`);

--
-- Indexes for table `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`board_id`),
  ADD UNIQUE KEY `board_name` (`board_name`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `bind_id` (`bind_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `print_id` (`print_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `vol_id` (`vol_id`);

--
-- Indexes for table `book_additive`
--
ALTER TABLE `book_additive`
  ADD PRIMARY KEY (`book_additive_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `additive_id` (`additive_id`);

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD KEY `book_id` (`book_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `book_board`
--
ALTER TABLE `book_board`
  ADD UNIQUE KEY `board_id` (`board_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `book_genres`
--
ALTER TABLE `book_genres`
  ADD KEY `book_id` (`book_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `catalogues`
--
ALTER TABLE `catalogues`
  ADD PRIMARY KEY (`catalogue_id`),
  ADD KEY `pub_id` (`pub_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Indexes for table `notebook`
--
ALTER TABLE `notebook`
  ADD PRIMARY KEY (`notebook_id`);

--
-- Indexes for table `print`
--
ALTER TABLE `print`
  ADD PRIMARY KEY (`print_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`pub_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `school_book`
--
ALTER TABLE `school_book`
  ADD KEY `school_id` (`school_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `school_kit`
--
ALTER TABLE `school_kit`
  ADD KEY `book_id` (`book_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `school_notebook`
--
ALTER TABLE `school_notebook`
  ADD KEY `notebook_id` (`notebook_id`);

--
-- Indexes for table `school_stationary`
--
ALTER TABLE `school_stationary`
  ADD KEY `stationary_id` (`stationary_id`) USING BTREE;

--
-- Indexes for table `stationary`
--
ALTER TABLE `stationary`
  ADD PRIMARY KEY (`stationary_id`);

--
-- Indexes for table `stationary_brand`
--
ALTER TABLE `stationary_brand`
  ADD PRIMARY KEY (`stationary_brand_id`),
  ADD KEY `stationary_brand_name` (`stationary_brand_name`);

--
-- Indexes for table `stationary_type`
--
ALTER TABLE `stationary_type`
  ADD PRIMARY KEY (`stationary_type_id`),
  ADD KEY `stationary_type_name` (`stationary_type_name`);

--
-- Indexes for table `sub_genre`
--
ALTER TABLE `sub_genre`
  ADD PRIMARY KEY (`sub_genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `volume`
--
ALTER TABLE `volume`
  ADD PRIMARY KEY (`vol_id`),
  ADD UNIQUE KEY `volume_name` (`volume_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additive_items`
--
ALTER TABLE `additive_items`
  MODIFY `additive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `binding`
--
ALTER TABLE `binding`
  MODIFY `bind_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `board`
--
ALTER TABLE `board`
  MODIFY `board_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `book_additive`
--
ALTER TABLE `book_additive`
  MODIFY `book_additive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `catalogues`
--
ALTER TABLE `catalogues`
  MODIFY `catalogue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notebook`
--
ALTER TABLE `notebook`
  MODIFY `notebook_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stationary`
--
ALTER TABLE `stationary`
  MODIFY `stationary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stationary_brand`
--
ALTER TABLE `stationary_brand`
  MODIFY `stationary_brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stationary_type`
--
ALTER TABLE `stationary_type`
  MODIFY `stationary_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_genre`
--
ALTER TABLE `sub_genre`
  MODIFY `sub_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `volume`
--
ALTER TABLE `volume`
  MODIFY `vol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`bind_id`) REFERENCES `binding` (`bind_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publishers` (`pub_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_4` FOREIGN KEY (`print_id`) REFERENCES `print` (`print_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_5` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_6` FOREIGN KEY (`vol_id`) REFERENCES `volume` (`vol_id`) ON UPDATE CASCADE;

--
-- Constraints for table `book_additive`
--
ALTER TABLE `book_additive`
  ADD CONSTRAINT `book_additive_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_additive_ibfk_3` FOREIGN KEY (`additive_id`) REFERENCES `additive_items` (`additive_id`) ON UPDATE CASCADE;

--
-- Constraints for table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_board`
--
ALTER TABLE `book_board`
  ADD CONSTRAINT `book_board_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_board_ibfk_3` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_genres`
--
ALTER TABLE `book_genres`
  ADD CONSTRAINT `book_genres_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogues`
--
ALTER TABLE `catalogues`
  ADD CONSTRAINT `catalogues_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publishers` (`pub_id`) ON UPDATE CASCADE;

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `school_book`
--
ALTER TABLE `school_book`
  ADD CONSTRAINT `school_book_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `school_book_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `school_kit`
--
ALTER TABLE `school_kit`
  ADD CONSTRAINT `school_kit_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `school_kit_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON UPDATE CASCADE;

--
-- Constraints for table `sub_genre`
--
ALTER TABLE `sub_genre`
  ADD CONSTRAINT `sub_genre_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
