-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 02:53 PM
-- Server version: 10.1.31-MariaDBz
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('MAPHNE SIBUGAL', 'sibugal.maphne@auf.edu.ph', '09611234561', 'sa', ''),
('MIGUEL FLORES', 'flores.miguel@auf.edu.ph', '9487810674', 'sa', ''),
('CHRISTIAN SIRON', 'siron@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('MAREIYA MUNOZ', 'munoz@gmail.com', '9487810674', 'asd', 'hfgdsfsx');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('Maphne01', 'Maphne Sibugal', 'sibugal.maphne@auf.edu.ph', '09611234561', 'Angeles City', 'maphne123');

-- --------------------------------------------------------

--
-- Table structure for table `Pâtisserie`
--

CREATE TABLE `pâtisserie` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Pâtisserie`
--

INSERT INTO `pâtisserie` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Baguette', 108, 'A long, thin loaf of French bread with a characteristic golden crust and soft, airy interior.', 1, 'images\baguette.jpg', 'ENABLE'),
(59, 'Pain de Campagne', 150, 'A rustic French bread, often round and crusty, made with a mix of white and whole grain flour.', 1, 'images/Meurig.jpg', 'ENABLE'),
(60, 'Fougasse', 120, 'A traditional Provencal bread, often shaped like an ear of wheat, and can be flavored with olives, cheese, or herbs.', 1, 'images/Chocolate_Hazelnut_Truffle.jpg', 'ENABLE'),
(61, 'Pain au Levain', 160, 'A French sourdough bread, known for its hearty texture and tangy flavor.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg', 'ENABLE'),
(62, 'Brioche', 100, 'A rich, soft, and sweet French bread made with eggs, milk, and butter.', 1, 'images/Spring_Rolls.jpg', 'ENABLE'),
(63, 'Croissant', 60, 'A flaky and buttery pastry, crescent-shaped, known for its layered texture and golden-brown crust.', 1, 'images/Baahubali_Thali.jpg', 'ENABLE'),
(65, 'Pain au Chocolat', 70, 'A rectangular pastry similar to a croissant but filled with delicious chocolate.', 1, 'images/coffee.jpg', 'DISABLE'),
(66, 'Macaron', 50, 'A delicate and colorful French cookie made from almond flour, sugar, and egg whites, filled with ganache or buttercream.', 1, 'images/tea.jpg', 'DISABLE'),
(68, 'Eclair', 80, 'A long, thin pastry filled with cream and topped with icing, traditionally chocolate.', 1, 'images/paneer pakora.jpg', 'DISABLE'),
(69, 'Tarte Tatin', 200, 'An upside-down caramelized apple tart, a classic of French cuisine.', 1, 'images/coffee.jpg', 'ENABLE'),
(70, 'Opera Cake', 250, 'A rich French dessert with layers of almond sponge cake, coffee syrup, ganache, and coffee buttercream.', 1, 'images/tea.jpg', 'ENABLE'),
(71, 'Madeleine', 40, 'A small, shell-shaped sponge cake from the Lorraine region in northeastern France.', 1, 'images/samosa.jpg', 'ENABLE'),
(72, 'Charlotte Russe', 250, 'A dessert made of ladyfinger biscuits and creamy filling, typically flavored with fruit.', 1, 'images/paneer pakora.jpg', 'ENABLE'),
(73, 'Bûche de Noël', 350, 'A traditional French Christmas dessert shaped and decorated to look like a Yule log.', 1, 'images/puff.jpg', 'ENABLE'),
(74, 'Dacquoise', 300, 'A dessert cake made with layers of almond or hazelnut meringue and whipped cream or buttercream.', 1, 'frenchfries.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('Maphne01', 'Maphne Sibugal', 'sibugal.maphne@auf.edu.ph', '09611234561', 'Angeles City', 'maphne123'),
('Dale01', 'Dale Siron', 'siron.dale@auf.edu.ph', '09123456789', 'Angeles City', 'dale123'),
('Mig12', 'Miguel Carlo Flores', 'rhythmcore14@gmail.com', '0969346031', '30-D 13th Ave. Cubao, Q.C.', 'mig123'),
('Mari01', 'Mareiya Munoz', 'munoz.mareiya@auf.edu.ph', '09678912345', 'Balibago', 'mari123');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `pâtisseriename` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `pâtisseriename`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 58, 'Baguette', 108, 1, '2023-03-03', 'Maphne01', 1),
(2, 61, 'Pain au Levain', 160, 2, '2023-03-03', 'Maphne01', 1),
(3, 61, 'Pain au Levain', 160, 2, '2023-03-03', 'Maphne01', 1),
(4, 65, 'Pain au Chocolat', 70, 4, '2023-03-03', 'Maphne01', 1),
(5, 58, 'Baguette', 108, 7, '2023-03-03', 'Maphne01', 1),
(6, 65, 'Pain au Chocolat', 70, 2, '2023-03-03', 'Maphne01', 1),
(7, 58, 'Baguette', 108, 7, '2023-03-03', 'Maphne01', 1),
(8, 65, 'Pain au Chocolat', 70, 2, '2023-03-03', 'Maphne01', 1),
(9, 60, 'Fougasse', 120, 1, '2023-03-03', 'Maphne01', 1),
(10, 59, 'Pain de Campagne', 150, 1, '2023-03-05', 'Maphne01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bakery`
--

CREATE TABLE `bakery` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bakery`
--

INSERT INTO `bakery` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Charmant Pâtisserie', 'sibugal.maphne@auf.edu.ph', '09611234561', 'Angeles City', 'Maphne01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pâtisserie`
--
ALTER TABLE `pâtisserie`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `bakery`
--
ALTER TABLE `bakery`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pâtisserie`
--
ALTER TABLE `pâtisserie`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `bakery`
--
ALTER TABLE `bakery`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Pâtisserie`
--
ALTER TABLE `pâtisserie`
  ADD CONSTRAINT `pâtisserie_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `bakery` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `pâtisserie` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `bakery` (`R_ID`);

--
-- Constraints for table `bakery`
--
ALTER TABLE `bakery`
  ADD CONSTRAINT `bakery_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
