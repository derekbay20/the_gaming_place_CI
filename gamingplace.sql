-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 05:54 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamingplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Xbox One Games'),
(2, 'PS4 Games'),
(3, 'Nintendo Wii Games'),
(4, 'Xbox 360 Games'),
(5, 'PS3 Games');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `transaction_id`, `qty`, `price`, `address`, `address2`, `city`, `state`, `zipcode`) VALUES
(1, 1, 1, '0', 1, '59.99', '55 Main St', '', 'Boston', 'Massachusetts', '01951'),
(2, 1, 4, '0', 1, '59.99', 'MtDid20', '', 'Bridy', 'local', '021345'),
(3, 2, 4, '0', 2, '119.98', 'MtDid20', '', 'Bridy', 'local', '021345'),
(4, 1, 4, '0', 1, '59.99', '', '', '', '', ''),
(5, 2, 4, '0', 1, '59.99', '', '', '', '', ''),
(6, 3, 4, '0', 1, '49.99', '', '', '', '', ''),
(7, 4, 4, '0', 1, '49.99', '', '', '', '', ''),
(8, 1, 4, '0', 1, '59.99', '', '', '', '', ''),
(9, 2, 4, '0', 2, '119.98', '', '', '', '', ''),
(10, 1, 4, '0', 1, '59.99', '', '', '', '', ''),
(11, 2, 4, '0', 2, '119.98', '', '', '', '', ''),
(12, 1, 4, '0', 1, '59.99', '', '', '', '', ''),
(13, 2, 4, '0', 1, '59.99', '', '', '', '', ''),
(14, 1, 4, '0', 1, '59.99', '', '', '', '', ''),
(15, 2, 4, '0', 1, '59.99', '', '', '', '', ''),
(16, 1, 4, '0', 1, '59.99', '', '', '', '', ''),
(17, 2, 4, '0', 1, '59.99', '', '', '', '', ''),
(18, 1, 4, '0', 1, '59.99', '', '', '', '', ''),
(19, 3, 4, '0', 1, '49.99', '', '', '', '', ''),
(20, 1, 4, '0', 1, '59.99', 'MtDid20', '', 'Bridy', 'local', '021345'),
(21, 3, 4, '0', 1, '49.99', 'MtDid20', '', 'Bridy', 'local', '021345');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `description`, `image`, `price`) VALUES
(1, 1, 'Destiny', 'Destiny is an action game from the creators of Halo, set in a mysterious future. Create a unique and powerful character, customize the way you look and fight, and explore what remains of the solar system. Destiny features a compelling storyline, competitive multiplayer, cooperative gameplay choices, wide open public combat destinations, and third-person community spaces where you can repair and rearm before going out on your next adventure.', 'game1.jpg', '59.99'),
(2, 1, 'Call of Duty: Ghosts', 'Call of Duty: Ghosts is an extraordinary step forward for one of the largest entertainment franchises of all-time. This new chapter in the Call of Duty franchise features a new dynamic where players are on the side of a crippled nation fighting not for freedom, or liberty, but simply to survive.', 'game2.jpg', '59.99'),
(3, 5, 'Watch Dogs', 'Today, all major cities are networked. Urban infrastructures are monitored and controlled by complex operating systems. In Watch Dogs, this system is called the Central Operating System (ctOS) - and it controls almost every piece of the city\'s technology and holds key information on all of the city\'s residents. You play as Aiden Pearce, a brilliant hacker and former thug, whose criminal past led to a violent family tragedy. Now on the hunt for those who hurt your family, you\'ll be able to monitor and hack all who surround you by manipulating everything connected to the city\'s network. Access omnipresent security cameras, download personal information to locate a target, control traffic lights and public transportation to stop the enemy... and more!', 'game3.jpg', '49.99'),
(4, 1, 'Sniper Elite', 'Sniper Elite 3 takes players to the unforgiving yet exotic terrain of WW2\'s North Africa conflict in a battle against a deadly new foe. Equipped with Tiger tanks and the latest weaponry, Germany\'s infamous Afrika Korps have the Allies outnumbered and outgunned.', 'game4.jpg', '49.99'),
(5, 2, 'Batman Arkham Night', 'Face a unified roster of villains in the explosive finale to the legendary series', 'game5.jpg', '59.99'),
(6, 2, 'Shadow of Mordor', 'Seek revenge and redemption in an epic new chronicle of Middle-earth', 'game6.jpg', '49.99');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `join_date`) VALUES
(1, 'Brad', 'Traversy', 'techguyinfo@gmail.com', 'brad', '12345', '2014-07-05 17:17:35'),
(2, 'Brad', 'Teversy', 'somthing@somthing.com', 'bradT', '8525a6e0df090e3aeeb695d52f1e9377', '2021-03-22 13:13:33'),
(3, 'Brad', 'Teversy', 'somthing@somthing.com', 'bradT', '8525a6e0df090e3aeeb695d52f1e9377', '2021-03-22 13:14:40'),
(4, 'John', 'Doe', 'john_d136@gmail.com', 'johnD136', '4741b2c6c8740159c14d64be0404efcc', '2021-03-23 06:48:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
