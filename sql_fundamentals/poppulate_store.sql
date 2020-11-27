-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2014 at 08:32 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar` varchar(150) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `password`, `avatar`, `join_date`) VALUES
(1, 'Michelle', 'Smith', 'michelle@gmail.com', '1234', 'images/sandy.jpg', '2014-02-18 20:17:26'),
(2, 'Ben', 'Barro', 'ben@gmail.com', '1234', 'images/ben.jpg', '2014-02-18 20:17:26'),
(3, 'William', 'Terry', 'william@gmail.com', '1234', 'images/william.jpg', '2014-02-18 20:17:26'),
(4, 'Sarah', 'Thompson', 'sarah@gmail.com', '1234', 'images/sarah.jpg', '2014-02-18 20:17:26'),
(5, 'Donald', 'Duck', 'donald@gmail.com', '1234', 'images/donald.jpg', '2014-02-18 20:17:26'),
(6, 'Beth', 'McAdams', 'beth@gmail.com', '1234', 'images/beth.jpg', '2014-02-18 20:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE IF NOT EXISTS `customer_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `customer`, `address`, `address2`, `city`, `state`, `zipcode`) VALUES
(1, 1, '10 Main st', '', 'Boston', 'MA', '01929'),
(2, 2, '20 Main st', 'Apt 3', 'New York', 'NY', '01929'),
(3, 3, '30 Main st', '', 'Seaside Heights', 'NJ', '01929'),
(4, 4, '40 Main st', 'Unit 10', 'Baltimore', 'MD', '01929'),
(5, 5, '50 Main st', 'Apt 18', 'Miami', 'FL', '01929'),
(6, 6, '60 Main st', '', 'Chicago', 'IL', '01929');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`),
  KEY `product` (`product`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer`, `product`) VALUES
(1, 1, 5),
(2, 2, 6),
(3, 1, 12),
(4, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `category` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `body`, `category`, `create_date`) VALUES
(1, 'About Us', 'This is the body for the about us page', 3, '2014-02-18 20:23:31'),
(2, 'Our Work', 'This is the body for the our work page', 2, '2014-02-18 20:23:31'),
(3, 'Testimonials', 'This is the body for the testimonials page', 2, '2014-02-18 20:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `page_categories`
--

CREATE TABLE IF NOT EXISTS `page_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `page_categories`
--

INSERT INTO `page_categories` (`id`, `name`, `description`, `image`) VALUES
(1, 'Services', 'Service pages', 'images/services.jpg'),
(2, 'Portfolio', 'Portfolio pages', 'images/portfolio.jpg'),
(3, 'Company', 'Company pages', 'images/company.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `image`, `create_date`) VALUES
(1, 'Android Phone', 'This is an Android based smartphone', '300', 1, '', '2014-02-18 12:34:13'),
(3, 'Microsoft Surface Tablet', 'Microsoft Surface Pro with 128GB Memory', '500', 1, 'images/surface.jpg', '2014-02-18 19:51:47'),
(4, 'Nextbook Tablet', 'Nextbook 7 inch Tablet 8GB Memory', '100', 1, 'images/nextbook.jpg', '2014-02-18 19:51:47'),
(5, 'Philips BTM2180/37 Micro Music System', 'Wireless music streaming via Bluetooth', '150', 1, 'images/stereo.jpg', '2014-02-18 19:51:47'),
(6, 'Memorex Boombox', 'Memorex MP3142 - Boombox', '46', 1, 'images/boombox.jpg', '2014-02-18 19:51:47'),
(7, 'Mossy Oak Infinity Seat Cover', 'High quality, heavy Mossy Oak Infinity Seat Cover', '20', 6, 'images/seatcover1.jpg', '2014-02-18 19:51:47'),
(8, 'Remington Floor Mat Set', 'Remington Best Fashion Carpet Floor Mat Set Tan 4pc', '30', 1, 'images/floormat1.jpg', '2014-02-18 19:51:47'),
(9, 'Rawlings RBG36 Baseball Glove', 'Rawlings RBG36 Baseball Glove 12 inch', '30', 5, 'images/glove1.jpg', '2014-02-18 19:51:47'),
(10, 'Franklin Pro Batting Gloves', 'Franklin Sports MLB Shok-Sorb Pro Batting Glove Pair', '20', 5, 'images/glove2.jpg', '2014-02-18 19:51:47'),
(11, 'Golds Gym Trainer 420', 'NEW Gold''s Gym Trainer 420 Treadmill with Bonus Puzzle Mat', '377', 5, 'images/treadmill1.jpg', '2014-02-18 19:51:47'),
(12, 'Weslo Cadence G 5.9 Treadmill', 'Weslo Cadence G 5.9 Treadmill', '287', 5, 'images/treadmill2.jpg', '2014-02-18 19:51:47'),
(13, 'Golds Gym Trainer 315 Treadmill', 'Gold''s Gym Trainer 315 New Model Treadmill', '258', 5, 'images/treadmill3.jpg', '2014-02-18 19:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `image`) VALUES
(1, 'Electronics', 'This is the electronics category', 'images/electronics.jpg'),
(3, 'Fashion', 'The latest fashions and accessories', 'images/fashion.jpg'),
(4, 'Music', 'Music instruments and albums', 'images/music.jpg'),
(5, 'Sporting Goods', 'Jerseys, equipment and more', 'images/sports.jpg'),
(6, 'Auto', 'Auto parts and accessories', 'images/auto.jpg'),
(7, 'Home & Garden', 'Products for your home', 'images/home.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `rating` int(2) NOT NULL,
  `customer` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`),
  KEY `product` (`product`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `body`, `rating`, `customer`, `product`, `review_date`) VALUES
(9, 'Great Product', 'This product was great', 9, 1, 1, '2014-02-18 20:22:33'),
(10, 'Okay Product', 'This product was okay', 6, 1, 5, '2014-02-18 20:22:33'),
(11, 'Decent Product', 'This product was decent', 8, 3, 4, '2014-02-18 20:22:33'),
(12, 'Bad Product', 'This product was really bad', 2, 5, 4, '2014-02-18 20:22:33');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`category`) REFERENCES `page_categories` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
