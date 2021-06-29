-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 08:12 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`) VALUES
(1, 'Vitamins'),
(2, 'Antipyretics'),
(3, 'Analgesics'),
(4, 'Antibiotics'),
(5, 'Antiseptics'),
(6, 'Mood stabilizers'),
(7, 'CNS'),
(8, 'Sample Category'),
(9, 'sample'),
(10, 'sample1'),
(11, 'mateline'),
(12, 'Pain killer');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(230) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `creator`, `date_created`, `changed_by`, `date_changed`) VALUES
(1, 'juma shabani', 1, '2021-05-02 15:18:20', NULL, NULL),
(2, 'mwajuma ndala ndefu', 1, '0000-00-00 00:00:00', NULL, NULL),
(3, 'kaka mkubwa', 1, '0000-00-00 00:00:00', NULL, NULL),
(4, 'ASHA BARAKA', 1, '0000-00-00 00:00:00', NULL, NULL),
(5, 'bonge bonge', 1, '0000-00-00 00:00:00', NULL, NULL),
(6, '', 1, '0000-00-00 00:00:00', NULL, NULL),
(7, 'isaya', 1, '0000-00-00 00:00:00', NULL, NULL),
(8, 'AKILIMALI', 1, '0000-00-00 00:00:00', NULL, NULL),
(9, 'kam', 1, '0000-00-00 00:00:00', NULL, NULL),
(10, 'jui,ma', 1, '0000-00-00 00:00:00', NULL, NULL),
(11, 'juma abdala', 1, '0000-00-00 00:00:00', NULL, NULL),
(12, 'jauamu', 1, '0000-00-00 00:00:00', NULL, NULL),
(13, 'jui,ma', 1, '0000-00-00 00:00:00', NULL, NULL),
(14, 'kkk', 1, '0000-00-00 00:00:00', NULL, NULL),
(15, '', 1, '0000-00-00 00:00:00', NULL, NULL),
(16, '', 1, '0000-00-00 00:00:00', NULL, NULL),
(17, 'monaco pharmacy', 1, '0000-00-00 00:00:00', NULL, NULL),
(18, 'noel', 1, '0000-00-00 00:00:00', NULL, NULL),
(19, 'monaco pharmacy', 1, '0000-00-00 00:00:00', NULL, NULL),
(20, 'mwajuma ndala ndefu', 1, '0000-00-00 00:00:00', NULL, NULL),
(21, 'lkiukna', 1, '0000-00-00 00:00:00', NULL, NULL),
(22, 'noel nyemo', 1, '0000-00-00 00:00:00', NULL, NULL),
(23, 'juma shabani', 1, '0000-00-00 00:00:00', NULL, NULL),
(24, 'eric', 1, '0000-00-00 00:00:00', NULL, NULL),
(25, 'mwanakama', 1, '0000-00-00 00:00:00', NULL, NULL),
(26, 'monaco pharmacy', 1, '0000-00-00 00:00:00', NULL, NULL),
(27, 'monaco pharmacy', 1, '0000-00-00 00:00:00', NULL, NULL),
(28, 'mwkimomo', 1, '0000-00-00 00:00:00', NULL, NULL),
(29, 'monaco pharmacy', 1, '0000-00-00 00:00:00', NULL, NULL),
(30, 'monaco pharmacy', 1, '0000-00-00 00:00:00', NULL, NULL),
(31, 'jui,ma', 1, '0000-00-00 00:00:00', NULL, NULL),
(32, 'juma shabani', 1, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_list`
--

CREATE TABLE `customer_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_list`
--

INSERT INTO `customer_list` (`id`, `name`, `contact`, `address`) VALUES
(1, 'Sample Customer', '+123456789', 'Sample address');

-- --------------------------------------------------------

--
-- Table structure for table `drug_group`
--

CREATE TABLE `drug_group` (
  `drug_group_id` int(11) NOT NULL,
  `drug_group_name` varchar(200) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `creator` int(11) NOT NULL,
  `date_changed` datetime DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='store group of the drugs';

--
-- Dumping data for table `drug_group`
--

INSERT INTO `drug_group` (`drug_group_id`, `drug_group_name`, `date_created`, `creator`, `date_changed`, `changed_by`) VALUES
(1, 'Vitamins', '2021-03-29 02:55:32', 1, NULL, NULL),
(2, 'Antipyretics', '2021-03-29 02:55:32', 1, NULL, NULL),
(3, 'Analgesics', '2021-03-29 02:56:15', 1, NULL, NULL),
(4, '	\r\nAntibiotics', '2021-03-29 02:56:15', 1, NULL, NULL),
(5, 'Antiseptics', '2021-03-29 02:56:50', 1, NULL, NULL),
(6, 'Mood stabilizers', '2021-03-29 02:56:50', 1, NULL, NULL),
(8, 'Sample Category', '2021-03-29 02:57:40', 1, NULL, NULL),
(10, 'Pain killer', '2021-04-06 07:57:25', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expired_product`
--

CREATE TABLE `expired_product` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `batch_no` varchar(230) NOT NULL,
  `qty` int(30) NOT NULL,
  `date_expired` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expired_product`
--

INSERT INTO `expired_product` (`id`, `product_id`, `batch_no`, `qty`, `date_expired`, `date_created`) VALUES
(3, 6, '', 5, '2020-10-05', '2020-10-09 08:20:08'),
(4, 13, '', 300, '2021-04-05', '2021-04-05 12:56:38'),
(5, 7, '', 1000, '2021-03-27', '2021-05-13 08:01:58'),
(6, 8, '', 500, '2021-04-29', '2021-05-13 08:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `batch_no` varchar(25) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` double DEFAULT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1= stockin , 2 = stockout',
  `stock_from` varchar(100) NOT NULL COMMENT 'sales/receiving',
  `form_id` int(30) NOT NULL,
  `expiry_date` date NOT NULL,
  `expired_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `other_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`other_details`)),
  `remarks` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `batch_no`, `qty`, `price`, `type`, `stock_from`, `form_id`, `expiry_date`, `expired_confirmed`, `other_details`, `remarks`, `date_updated`) VALUES
(1, 3, '', 500, 5, 1, 'receiving', 1, '2021-12-03', 0, '{\"price\":\"5\",\"qty\":\"500\"}', 'Stock from Receiving-83386962\r\n', '2021-04-11 12:52:34'),
(2, 2, '', 500, 5, 1, 'receiving', 1, '2021-11-11', 0, '{\"price\":\"5\",\"qty\":\"500\"}', 'Stock from Receiving-83386962\r\n', '2021-04-11 12:52:29'),
(3, 6, '', 300, 20, 1, 'receiving', 1, '2021-10-06', 0, '{\"price\":\"20\",\"qty\":\"300\"}', 'Stock from Receiving-83386962\r\n', '2021-04-11 12:52:26'),
(4, 5, '', 300, 10, 1, 'receiving', 1, '2021-11-09', 0, '{\"price\":\"10\",\"qty\":\"300\"}', 'Stock from Receiving-83386962\r\n', '2021-04-11 12:52:20'),
(5, 4, '', 500, 8, 1, 'receiving', 2, '2022-10-14', 0, '{\"price\":\"8\",\"qty\":\"500\"}', 'Stock from Receiving-00000000\r\n', '2021-04-11 12:52:15'),
(6, 6, '', 10, 18, 1, 'receiving', 2, '2020-10-05', 1, '{\"price\":\"18\",\"qty\":\"10\"}', 'Stock from Receiving-00000000\r\n', '2021-04-11 12:52:10'),
(8, 3, '', 1, 10, 2, 'Sales', 2, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"1\"}', 'Stock out from Sales-00000000\n', '2021-04-11 12:52:05'),
(9, 5, '', 20, 15, 2, 'Sales', 2, '0000-00-00', 0, '{\"price\":\"15\",\"qty\":\"20\"}', 'Stock out from Sales-00000000\n', '2021-04-11 12:52:00'),
(10, 3, '', 20, 10, 2, 'Sales', 3, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"20\"}', 'Stock out from Sales-74800422\n', '2021-04-11 12:51:56'),
(11, 3, '', 10, 10, 2, 'Sales', 4, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"10\"}', 'Stock out from Sales-01966403\n', '2021-04-11 12:51:52'),
(12, 8, '', 500, 10, 1, 'receiving', 3, '2021-04-29', 1, '{\"price\":\"10\",\"qty\":\"500\"}', 'Stock from Receiving-95300488\n', '2021-05-13 08:02:27'),
(13, 8, '', 10, 15, 2, 'Sales', 5, '0000-00-00', 0, '{\"price\":\"15\",\"qty\":\"10\"}', 'Stock out from Sales-16232790\n', '2021-04-11 12:51:41'),
(14, 3, '', 10, 10, 2, 'Sales', 5, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"10\"}', 'Stock out from Sales-16232790\n', '2021-04-11 12:51:36'),
(15, 2, '', 23, 7, 2, 'Sales', 6, '0000-00-00', 0, '{\"price\":\"7\",\"qty\":\"23\"}', 'Stock out from Sales-21170008\n', '2021-04-11 12:51:30'),
(16, 4, '', 23, 10, 2, 'Sales', 6, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"23\"}', 'Stock out from Sales-21170008\n', '2021-04-11 12:51:26'),
(17, 8, '', 1, 15, 2, 'Sales', 6, '0000-00-00', 0, '{\"price\":\"15\",\"qty\":\"1\"}', 'Stock out from Sales-21170008\n', '2021-04-11 12:51:21'),
(18, 8, '', 1000, 500, 1, 'receiving', 4, '2021-03-28', 1, '{\"price\":\"500\",\"qty\":\"1000\"}', 'Stock from Receiving-53281868\r\n', '2021-04-11 12:51:17'),
(19, 7, 'BB-OO', 1000, 400, 1, 'receiving', 5, '2021-03-27', 0, '{\"price\":\"400\",\"qty\":\"1000\"}', 'Stock from Receiving-10603121\r\n', '2021-05-14 08:47:50'),
(20, 3, '', 6, 10, 2, 'Sales', 7, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"6\"}', 'Stock out from Sales-43098642\n', '2021-04-11 12:51:06'),
(21, 3, '', 3, 10, 2, 'Sales', 8, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"3\"}', 'Stock out from Sales-91222506\n', '2021-04-11 12:51:02'),
(22, 6, '', 3, 30, 2, 'Sales', 9, '0000-00-00', 0, '{\"price\":\"30\",\"qty\":\"3\"}', 'Stock out from Sales-50593372\n', '2021-04-11 12:50:56'),
(23, 12, '', 500, 7000, 1, 'receiving', 6, '2022-02-28', 0, '{\"price\":\"7000\",\"qty\":\"500\"}', 'Stock from Receiving-45696416\n', '2021-04-11 12:50:52'),
(24, 13, '', 300, 250, 1, 'receiving', 7, '2021-04-05', 1, '{\"price\":\"250\",\"qty\":\"300\"}', 'Stock from Receiving-25240605\n', '2021-04-11 12:50:44'),
(25, 12, '', 400, 250, 1, 'receiving', 7, '0000-00-00', 0, '{\"price\":\"250\",\"qty\":\"400\"}', 'Stock from Receiving-25240605\r\n', '2021-04-11 12:50:36'),
(26, 7, '', 100, 300, 1, 'receiving', 8, '2022-03-31', 0, '{\"price\":\"300\",\"qty\":\"100\"}', 'Stock from Receiving-61488916\n', '2021-04-11 12:50:31'),
(27, 3, '', 10, 15, 2, 'Sales', 10, '0000-00-00', 0, '{\"price\":\"15\",\"qty\":\"10\"}', 'Stock out from Sales-19644592\n', '2021-04-11 12:50:26'),
(34, 3, '', 50, 0, 1, 'receiving', 14, '2022-12-02', 0, '{\"price\":\"200\",\"qty\":\"50\"}', 'Stock from Receiving-11603789\n', '2021-04-11 18:48:57'),
(39, 22, '', 12, 400, 1, 'receiving', 19, '2023-12-01', 0, '{\"price\":\"400\",\"qty\":\"12\"}', 'Stock from Receiving-14480460\n', '2021-04-12 15:00:08'),
(40, 21, '', 20, 5500, 1, 'receiving', 20, '2023-10-19', 0, '{\"price\":\"5500\",\"qty\":\"20\"}', 'Stock from Receiving-94137840\n', '2021-04-12 15:05:59'),
(41, 3, '', 400, 600, 1, 'receiving', 21, '2023-12-08', 0, '{\"price\":\"600\",\"qty\":\"400\"}', 'Stock from Receiving-17251123\n', '2021-04-12 15:37:51'),
(42, 14, '', 100, 8000, 1, 'receiving', 22, '2023-02-24', 0, '{\"price\":\"8000\",\"qty\":\"100\"}', 'Stock from Receiving-94834113\n', '2021-04-25 18:48:28'),
(43, 12, '', 10, NULL, 2, 'Sales', 11, '0000-00-00', 0, '{\"price\":\"400\",\"qty\":\"10\"}', 'Stock out from Sales-64403959\n', '2021-04-28 16:14:31'),
(44, 6, '', 5, NULL, 2, 'Sales', 11, '0000-00-00', 0, '{\"price\":\"30\",\"qty\":\"5\"}', 'Stock out from Sales-64403959\n', '2021-04-28 16:14:31'),
(45, 12, '', 1000, 400, 1, 'receiving', 23, '2022-10-27', 0, '{\"price\":\"400\",\"qty\":\"1000\"}', 'Stock from Receiving-10424208\n', '2021-04-28 16:20:31'),
(46, 2, '', 1, NULL, 2, 'Sales', 13, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"1\"}', 'Stock out from Sales-15329997\n', '2021-05-01 17:55:14'),
(47, 2, '', 1, NULL, 2, 'Sales', 14, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"1\"}', 'Stock out from Sales-22422554\n', '2021-05-01 17:58:00'),
(48, 3, '', 1, NULL, 2, 'Sales', 15, '0000-00-00', 0, '{\"price\":\"900\",\"qty\":\"1\"}', 'Stock out from Sales-89113793\n', '2021-05-01 17:59:25'),
(49, 12, '', 1, 1000, 2, 'Sales', 16, '0000-00-00', 0, '{\"price\":\"1000\",\"qty\":\"1\"}', 'Stock out from Sales-85553758\n', '2021-05-01 18:01:28'),
(50, 3, '', 1, 900, 2, 'Sales', 17, '0000-00-00', 0, '{\"price\":\"900\",\"qty\":\"1\"}', 'Stock out from Sales-21387804\n', '2021-05-01 18:08:35'),
(51, 2, '', 1, 700, 2, 'Sales', 18, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"1\"}', 'Stock out from Sales-74091651\n', '2021-05-01 18:11:16'),
(52, 2, '', 1, 700, 2, 'Sales', 19, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"1\"}', 'Stock out from Sales-18716052\n', '2021-05-01 18:12:08'),
(53, 3, '', 1, 900, 2, 'Sales', 19, '0000-00-00', 0, '{\"price\":\"900\",\"qty\":\"1\"}', 'Stock out from Sales-18716052\n', '2021-05-01 18:12:08'),
(54, 2, '', 2, 700, 2, 'Sales', 20, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"2\"}', 'Stock out from Sales-80225630\n', '2021-05-01 18:17:06'),
(55, 2, '', 1, 700, 2, 'Sales', 0, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"1\"}', 'Stock out from Sales-31850811\n', '2021-05-02 11:45:36'),
(56, 2, '', 2, 700, 2, 'Sales', 22, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"2\"}', 'Stock out from Sales-40721080\n', '2021-05-02 11:49:22'),
(57, 2, '', 1, 700, 2, 'Sales', 23, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"1\"}', 'Stock out from Sales-52942055\n', '2021-05-02 12:21:52'),
(58, 2, '', 1, 700, 2, 'Sales', 24, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"1\"}', 'Stock out from Sales-70346757\n', '2021-05-02 12:27:31'),
(59, 2, '', 1, 700, 2, 'Sales', 25, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"1\"}', 'Stock out from Sales-44228916\n', '2021-05-02 12:48:56'),
(60, 2, '', 1, 700, 2, 'Sales', 26, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"1\"}', 'Stock out from Sales-61297885\n', '2021-05-02 12:50:17'),
(61, 2, '', 1, 700, 2, 'Sales', 27, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"1\"}', 'Stock out from Sales-35534192\n', '2021-05-02 14:03:18'),
(62, 2, '', 2, 700, 2, 'Sales', 28, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"2\"}', 'Stock out from Sales-37517922\n', '2021-05-02 14:06:49'),
(63, 12, '', 1, 1000, 2, 'Sales', 28, '0000-00-00', 0, '{\"price\":\"1000\",\"qty\":\"1\"}', 'Stock out from Sales-37517922\n', '2021-05-02 14:06:49'),
(64, 12, '', 2, 1000, 2, 'Sales', 29, '0000-00-00', 0, '{\"price\":\"1000\",\"qty\":\"2\"}', 'Stock out from Sales-56309362\n', '2021-05-02 14:22:49'),
(65, 2, '', 3, 700, 2, 'Sales', 29, '0000-00-00', 0, '{\"price\":\"700\",\"qty\":\"3\"}', 'Stock out from Sales-56309362\n', '2021-05-02 14:22:49'),
(66, 12, '', 1, 1000, 2, 'Sales', 30, '0000-00-00', 0, '{\"price\":\"1000\",\"qty\":\"1\"}', 'Stock out from Sales-72083579\n', '2021-05-02 18:17:53'),
(67, 3, '', 1, 900, 2, 'Sales', 30, '0000-00-00', 0, '{\"price\":\"900\",\"qty\":\"1\"}', 'Stock out from Sales-72083579\n', '2021-05-02 18:17:53'),
(68, 12, '', 100, 500, 1, 'receiving', 24, '2023-06-14', 0, '{\"price\":\"500\",\"qty\":\"100\"}', 'Stock from Receiving-89743668\n', '2021-05-06 20:51:02'),
(69, 2, '', 100, 600, 1, 'receiving', 25, '2023-11-07', 0, '{\"price\":\"600\",\"qty\":\"100\"}', 'Stock from Receiving-27800124\n', '2021-05-07 10:49:15'),
(70, 3, '', 5, 500, 1, 'receiving', 26, '2023-11-08', 0, '{\"price\":\"500\",\"qty\":\"5\"}', 'Stock from Receiving-91033325\n', '2021-05-07 10:51:18'),
(71, 6, '', 30, 0, 1, 'receiving', 26, '2024-12-31', 0, '{\"price\":\"p\",\"qty\":\"30\"}', 'Stock from Receiving-91033325\n', '2021-05-07 10:51:18'),
(72, 12, '', 1, 1000, 2, 'Sales', 31, '0000-00-00', 0, '{\"price\":\"1000\",\"qty\":\"1\"}', 'Stock out from Sales-62857066\n', '2021-05-07 16:25:07'),
(73, 2, '', 2, 1000, 2, 'Sales', 31, '0000-00-00', 0, '{\"price\":\"1000\",\"qty\":\"2\"}', 'Stock out from Sales-62857066\n', '2021-05-07 16:25:07'),
(74, 12, '', 5, 1000, 2, 'Sales', 32, '0000-00-00', 0, '{\"price\":\"1000\",\"qty\":\"5\"}', 'Stock out from Sales-85977310\n', '2021-05-13 08:07:56'),
(75, 6, '', 6, 750, 2, 'Sales', 32, '0000-00-00', 0, '{\"price\":\"750\",\"qty\":\"6\"}', 'Stock out from Sales-85977310\n', '2021-05-13 08:07:56'),
(76, 2, '', 10000, 400, 1, 'receiving', 27, '2022-06-09', 0, '{\"price\":\"400\",\"qty\":\"10000\"}', 'Stock from Receiving-52897540\n', '2021-05-13 08:12:23'),
(77, 12, 'BB-00', 20, 400, 1, 'receiving', 30, '2021-05-27', 0, '{\"price\":\"400\",\"qty\":\"20\"}', 'Stock from Receiving-92868976\n', '2021-05-15 15:09:18'),
(78, 2, 'B0-B', 2, 700, 1, 'receiving', 31, '2021-08-07', 0, '{\"price\":\"700\",\"qty\":\"2\"}', 'Stock from Receiving-91592546\n', '2021-05-15 15:45:20'),
(79, 12, 'A00', 10, 250, 1, 'receiving', 32, '2021-11-05', 0, '{\"price\":null,\"qty\":\"10\"}', 'Stock from Receiving-22537172\n', '2021-05-15 23:22:23'),
(80, 3, 'AB-67', 20, 500, 1, 'receiving', 33, '2021-05-28', 0, '{\"price\":\"500\",\"qty\":\"20\"}', 'Stock from Receiving-15207006\n', '2021-05-15 23:26:57'),
(81, 2, 'H0', 200, 500, 1, 'receiving', 34, '2022-01-07', 0, '{\"price\":\"500\",\"qty\":\"200\"}', 'Stock from Receiving-79416323\n', '2021-05-15 23:47:51'),
(82, 6, 'H7', 200, 500, 1, 'receiving', 34, '2022-02-05', 0, '{\"price\":\"500\",\"qty\":\"200\"}', 'Stock from Receiving-79416323\n', '2021-05-15 23:47:51'),
(83, 2, 'H0', 300, 400, 1, 'receiving', 35, '2024-12-16', 0, '{\"price\":\"400\",\"qty\":\"300\"}', 'Stock from Receiving-86196537\n', '2021-05-16 11:30:40'),
(84, 4, 'H7', 30, 500, 1, 'receiving', 35, '2023-11-16', 0, '{\"price\":\"500\",\"qty\":\"30\"}', 'Stock from Receiving-86196537\n', '2021-05-16 11:30:41'),
(85, 4, 'H7', 30, 200, 1, 'receiving', 36, '2023-11-16', 0, '{\"price\":\"200\",\"qty\":\"30\"}', 'Stock from Receiving-66453790\n', '2021-05-16 18:17:24'),
(86, 2, 'H0', 20, 1000, 1, 'receiving', 36, '2024-12-16', 0, '{\"price\":\"1000\",\"qty\":\"20\"}', 'Stock from Receiving-66453790\n', '2021-05-16 18:17:24'),
(87, 12, '', 1, 1000, 2, 'Sales', 33, '0000-00-00', 0, '{\"price\":\"1000\",\"qty\":\"1\"}', 'Stock out from Sales-04704160\n', '2021-05-23 12:24:05'),
(88, 2, '', 1, 3500, 2, 'Sales', 33, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"1\"}', 'Stock out from Sales-04704160\n', '2021-05-23 12:24:05'),
(89, 12, '', 1, 1000, 2, 'Sales', 34, '0000-00-00', 0, '{\"price\":\"1000\",\"qty\":\"1\"}', 'Stock out from Sales-90251999\n', '2021-05-23 12:30:39'),
(90, 6, '', 2, 3250, 2, 'Sales', 34, '0000-00-00', 0, '{\"price\":\"3250\",\"qty\":\"2\"}', 'Stock out from Sales-90251999\n', '2021-05-23 12:30:39'),
(91, 2, '', 1, 3500, 2, 'Sales', 35, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"1\"}', 'Stock out from Sales-47854301\n', '2021-05-23 12:34:40'),
(92, 3, '', 2, 3000, 2, 'Sales', 35, '0000-00-00', 0, '{\"price\":\"3000\",\"qty\":\"2\"}', 'Stock out from Sales-47854301\n', '2021-05-23 12:34:40'),
(93, 12, '', 1, 1000, 2, 'Sales', 36, '0000-00-00', 0, '{\"price\":\"1000\",\"qty\":\"1\"}', 'Stock out from Sales-11815045\n', '2021-05-23 12:36:12'),
(94, 14, '', 1, 10000, 2, 'Sales', 36, '0000-00-00', 0, '{\"price\":\"10000\",\"qty\":\"1\"}', 'Stock out from Sales-11815045\n', '2021-05-23 12:36:12'),
(95, 2, '', 2, 3500, 2, 'Sales', 50, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"2\"}', 'Stock out from Sales-99755642\n', '2021-06-04 10:04:15'),
(96, 2, '', 20, 3500, 2, 'Sales', 51, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"20\"}', 'Stock out from Sales-78276108\n', '2021-06-04 21:07:13'),
(97, 4, '', 33, 4000, 2, 'Sales', 51, '0000-00-00', 0, '{\"price\":\"4000\",\"qty\":\"33\"}', 'Stock out from Sales-78276108\n', '2021-06-04 21:07:13'),
(98, 2, 'H0', 20, 3500, 2, 'Sales', 52, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"20\"}', 'Stock out from Sales-65792072\n', '2021-06-04 21:30:04'),
(99, 4, 'H7', 4, 4000, 2, 'Sales', 52, '0000-00-00', 0, '{\"price\":\"4000\",\"qty\":\"4\"}', 'Stock out from Sales-65792072\n', '2021-06-04 21:30:04'),
(100, 2, 'H0', 10, 3500, 2, 'Sales', 53, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"10\"}', 'Stock out from Sales-10408119\n', '2021-06-05 16:07:25'),
(101, 4, 'H7', 10, 4000, 2, 'Sales', 53, '0000-00-00', 0, '{\"price\":\"4000\",\"qty\":\"10\"}', 'Stock out from Sales-10408119\n', '2021-06-05 16:07:25'),
(102, 2, 'H0', 10, 3500, 2, 'Sales', 54, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"10\"}', 'Stock out from Sales-82351504\n', '2021-06-05 16:11:07'),
(103, 4, 'H7', 10, 4000, 2, 'Sales', 54, '0000-00-00', 0, '{\"price\":\"4000\",\"qty\":\"10\"}', 'Stock out from Sales-82351504\n', '2021-06-05 16:11:07'),
(104, 2, 'H0', 10, 3500, 2, 'Sales', 55, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"10\"}', 'Stock out from Sales-79656511\n', '2021-06-05 16:14:12'),
(105, 4, 'H7', 10, 4000, 2, 'Sales', 55, '0000-00-00', 0, '{\"price\":\"4000\",\"qty\":\"10\"}', 'Stock out from Sales-79656511\n', '2021-06-05 16:14:12'),
(106, 2, 'H0', 2, 3500, 2, 'Sales', 56, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"2\"}', 'Stock out from Sales-21342184\n', '2021-06-05 16:21:55'),
(107, 4, 'H7', 3, 4000, 2, 'Sales', 56, '0000-00-00', 0, '{\"price\":\"4000\",\"qty\":\"3\"}', 'Stock out from Sales-21342184\n', '2021-06-05 16:21:55'),
(108, 2, 'H0', 5, 3500, 2, 'Sales', 57, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"5\"}', 'Stock out from Sales-62941898\n', '2021-06-05 17:17:13'),
(109, 4, 'H7', 4, 4000, 2, 'Sales', 57, '0000-00-00', 0, '{\"price\":\"4000\",\"qty\":\"4\"}', 'Stock out from Sales-62941898\n', '2021-06-05 17:17:13'),
(110, 2, 'H0', 1, 3500, 2, 'Sales', 58, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"1\"}', 'Stock out from Sales-72998875\n', '2021-06-05 17:19:19'),
(111, 4, 'H7', 1, 4000, 2, 'Sales', 58, '0000-00-00', 0, '{\"price\":\"4000\",\"qty\":\"1\"}', 'Stock out from Sales-72998875\n', '2021-06-05 17:19:19'),
(112, 2, 'H0', 1, 3500, 2, 'Sales', 59, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"1\"}', 'Stock out from Sales-83543610\n', '2021-06-06 16:09:42'),
(113, 4, 'H8', 1, 4000, 2, 'Sales', 59, '0000-00-00', 0, '{\"price\":\"4000\",\"qty\":\"1\"}', 'Stock out from Sales-83543610\n', '2021-06-06 16:09:42'),
(114, 2, 'H0', 1, 3500, 2, 'Sales', 60, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"1\"}', 'Stock out from Sales-64900395\n', '2021-06-06 16:14:57'),
(115, 4, 'H8', 1, 4000, 2, 'Sales', 60, '0000-00-00', 0, '{\"price\":\"4000\",\"qty\":\"1\"}', 'Stock out from Sales-64900395\n', '2021-06-06 16:14:57'),
(116, 2, 'H0', 10, 3500, 2, 'Sales', 61, '0000-00-00', 0, '{\"price\":\"3500\",\"qty\":\"10\"}', 'Stock out from Sales-89138386\n', '2021-06-07 19:01:47'),
(117, 4, '', 2, 4000, 2, 'Sales', 61, '0000-00-00', 0, '{\"price\":\"4000\",\"qty\":\"2\"}', 'Stock out from Sales-89138386\n', '2021-06-07 19:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `item_category_id` int(11) NOT NULL,
  `item_category_name` varchar(200) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `creator` int(11) NOT NULL,
  `date_changed` datetime DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='used to store the item categories either is drug or non drug';

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`item_category_id`, `item_category_name`, `date_created`, `creator`, `date_changed`, `changed_by`) VALUES
(1, 'Drug', '2021-03-19 16:53:28', 1, NULL, NULL),
(2, 'Medical Aids', '2021-03-28 14:56:06', 1, NULL, NULL),
(3, 'Cosmetics', '2021-03-28 14:56:30', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_units`
--

CREATE TABLE `item_units` (
  `item_units_id` int(11) NOT NULL,
  `item_units_name` varchar(200) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `creator` int(11) NOT NULL,
  `date_changed` datetime DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='store the units of measurements of the item eg capsules';

--
-- Dumping data for table `item_units`
--

INSERT INTO `item_units` (`item_units_id`, `item_units_name`, `date_created`, `creator`, `date_changed`, `changed_by`) VALUES
(1, 'Capsule(s)', '0000-00-00 00:00:00', 1, NULL, NULL),
(2, 'Tablet(s)', '0000-00-00 00:00:00', 1, NULL, NULL),
(3, 'ml', '0000-00-00 00:00:00', 1, NULL, NULL),
(4, 'mg', '0000-00-00 00:00:00', 1, NULL, NULL),
(5, 'injectable', '0000-00-00 00:00:00', 1, NULL, NULL),
(6, 'IU', '0000-00-00 00:00:00', 1, NULL, NULL),
(7, 'Drop', '0000-00-00 00:00:00', 1, NULL, NULL),
(8, 'Puff(s)', '0000-00-00 00:00:00', 1, NULL, NULL),
(9, 'Suspension', '0000-00-00 00:00:00', 1, NULL, NULL),
(10, 'Tubes', '0000-00-00 00:00:00', 1, NULL, NULL),
(11, 'Bottle', '0000-00-00 00:00:00', 1, NULL, NULL),
(12, 'Pessary', '0000-00-00 00:00:00', 1, NULL, NULL),
(13, 'Granules', '0000-00-00 00:00:00', 1, NULL, NULL),
(14, 'Suppositories', '0000-00-00 00:00:00', 1, NULL, NULL),
(15, 'Bar', '0000-00-00 00:00:00', 1, NULL, NULL),
(16, 'Powder', '0000-00-00 00:00:00', 1, NULL, NULL),
(17, 'Sachet(s)', '0000-00-00 00:00:00', 1, NULL, NULL),
(18, 'Each', '0000-00-00 00:00:00', 1, NULL, NULL),
(19, 'Roll', '0000-00-00 00:00:00', 1, NULL, NULL),
(20, 'Litre', '0000-00-00 00:00:00', 1, NULL, NULL),
(21, 'Pairs', '2021-04-06 08:20:01', 1, '2021-04-06 11:20:01', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pharmacy_stock_sales`
-- (See below for the actual view)
--
CREATE TABLE `pharmacy_stock_sales` (
`product_id` int(30)
,`product_name` varchar(150)
,`item_category_id` int(11)
,`item_category_name` varchar(200)
,`sku` varchar(50)
,`drug_group_id` int(11)
,`drug_group_name` varchar(200)
,`item_units_id` int(11)
,`item_units_name` varchar(200)
,`creator` int(11)
,`product_creator` varchar(200)
,`products_date_created` datetime
,`product_sales_product_id` int(11)
,`product_qty` int(11)
,`product_buying_price` int(11)
,`product_rate_price` double
,`product_rate_profit` double
,`product_total_profit` double
,`product_total_amount` double
,`product_sales_invoice_number` varchar(250)
,`product_sales_creator_id` int(11)
,`product_sales_creator` varchar(200)
,`product_sales_date_created` timestamp
,`customer_id` int(11)
,`product_sales_customer` varchar(230)
);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `prescription_id` int(11) NOT NULL,
  `prescription_source` varchar(300) NOT NULL,
  `prescriber` varchar(230) NOT NULL,
  `prescribed_date` datetime NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `prescription_source`, `prescriber`, `prescribed_date`, `creator`, `date_created`, `changed_by`, `date_changed`) VALUES
(4, 'chief asili', 'dr hasini', '2021-05-22 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL),
(5, 'DODOMA REGIONAL HOSPITAL', 'DR SHESHE', '2021-05-23 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL),
(6, 'mirembe hospital', 'dr hasini', '2021-05-22 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL),
(7, 'chief asili', 'dr christine', '2021-05-23 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL),
(8, 'mwatex', 'dr mwayinga', '2021-05-23 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL),
(9, 'mirembe hospital', 'dr hasini', '2021-05-13 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL),
(10, 'mirembe hospital', 'dr christine', '2021-05-13 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL),
(11, 'mirembe hospital', 'dr christine', '2021-05-13 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL),
(12, 'mirembe hospital', 'dr christine', '2021-05-15 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL),
(13, 'mirembe hospital', 'dr hasini', '2021-05-15 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL),
(14, 'dori', 'white house', '2021-05-26 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL),
(15, 'dr mwayinga hospital', 'dr mwayinga', '2021-06-03 00:00:00', 1, '2021-06-04 06:21:30', NULL, NULL),
(16, 'chief asili', 'dr chinene', '2021-06-04 00:00:00', 1, '2021-06-04 06:24:31', NULL, NULL),
(17, 'mirembe hospital', 'dr christine', '2021-06-05 00:00:00', 1, '2021-06-04 07:02:26', NULL, NULL),
(18, 'mirembe hospital', 'dr hasini', '2021-06-03 00:00:00', 1, '2021-06-04 07:04:15', NULL, NULL),
(19, 'mirembe hospital', 'dr hasini', '2021-06-03 00:00:00', 1, '2021-06-04 18:07:13', NULL, NULL),
(20, 'mirembe hospital', 'dr christine', '2021-06-03 00:00:00', 1, '2021-06-04 18:30:03', NULL, NULL),
(21, 'mwanji hspt', 'mwayinga', '2021-06-05 00:00:00', 1, '2021-06-05 13:07:25', NULL, NULL),
(22, 'mwanji hspt', 'mwayinga', '2021-06-05 00:00:00', 1, '2021-06-05 13:11:07', NULL, NULL),
(23, 'mirembe hospital', 'dr christine', '2021-06-05 00:00:00', 1, '2021-06-05 13:14:12', NULL, NULL),
(24, 'mea', 'dr hasini', '2021-06-04 00:00:00', 1, '2021-06-05 13:21:55', NULL, NULL),
(25, 'chrispirin', 'dr hasini', '2021-06-04 00:00:00', 1, '2021-06-05 14:17:13', NULL, NULL),
(26, 'mirembe hospital', 'dr christine', '2021-06-05 00:00:00', 1, '2021-06-05 14:19:19', NULL, NULL),
(27, 'mwanji hspt', 'dr christine', '2021-06-05 00:00:00', 1, '2021-06-06 13:09:42', NULL, NULL),
(28, 'mwanji hspt', 'dr hasini', '2021-06-06 00:00:00', 1, '2021-06-06 13:14:57', NULL, NULL),
(29, 'mwanji hspt', 'mwayinga', '2021-06-04 00:00:00', 1, '2021-06-07 16:01:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `price_list`
--

CREATE TABLE `price_list` (
  `price_list_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_list_buying_pice` int(11) NOT NULL,
  `price_list_selling_price` double NOT NULL,
  `price_list_wholesale_price` double DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `voided` tinyint(1) NOT NULL DEFAULT 0,
  `voided_by` int(11) DEFAULT NULL,
  `voided_date` datetime DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price_list`
--

INSERT INTO `price_list` (`price_list_id`, `product_id`, `price_list_buying_pice`, `price_list_selling_price`, `price_list_wholesale_price`, `creator`, `date_created`, `voided`, `voided_by`, `voided_date`, `changed_by`, `date_changed`) VALUES
(1, 2, 500, 700, 600, 1, '2021-05-06 16:31:44', 1, 1, '2021-05-16 06:17:24', NULL, NULL),
(2, 3, 600, 900, 750, 1, '2021-05-06 16:31:44', 1, 1, '2021-05-15 11:26:57', NULL, NULL),
(3, 4, 5, 10, 7, 1, '2021-05-06 16:31:44', 1, 1, '2021-05-16 06:17:24', NULL, NULL),
(4, 12, 500, 1000, 700, 1, '2021-05-06 17:51:02', 1, 1, '2021-05-15 11:22:23', NULL, NULL),
(5, 2, 450, 1000, 750, 1, '2021-05-07 07:49:15', 1, 1, '2021-05-16 06:17:24', NULL, NULL),
(6, 3, 500, 1000, 700, 1, '2021-05-07 07:51:18', 1, 1, '2021-05-15 11:26:57', NULL, NULL),
(7, 6, 350, 750, 500, 1, '2021-05-07 07:51:18', 1, 1, '2021-05-15 11:47:51', NULL, NULL),
(8, 2, 0, 800, 550, 1, '2021-05-13 05:12:23', 1, 1, '2021-05-16 06:17:24', NULL, NULL),
(9, 12, 0, 1000, 700, 1, '2021-05-15 12:09:18', 1, 1, '2021-05-15 11:22:23', NULL, NULL),
(10, 2, 0, 3000, 1500, 1, '2021-05-15 12:45:20', 1, 1, '2021-05-16 06:17:24', NULL, NULL),
(11, 12, 250, 1000, 700, 1, '2021-05-15 20:22:23', 0, NULL, NULL, NULL, NULL),
(12, 3, 500, 3000, 1500, 1, '2021-05-15 20:26:57', 0, NULL, NULL, NULL, NULL),
(13, 2, 500, 3000, 1400, 1, '2021-05-15 20:47:51', 1, 1, '2021-05-16 06:17:24', NULL, NULL),
(14, 6, 500, 3250, 1450, 1, '2021-05-15 20:47:51', 0, NULL, NULL, NULL, NULL),
(15, 2, 400, 1500, 600, 1, '2021-05-16 08:30:40', 1, 1, '2021-05-16 06:17:24', NULL, NULL),
(16, 4, 500, 4000, 1500, 1, '2021-05-16 08:30:41', 1, 1, '2021-05-16 06:17:24', NULL, NULL),
(17, 4, 200, 4000, 1000, 1, '2021-05-16 15:17:24', 0, NULL, NULL, NULL, NULL),
(18, 2, 500, 3500, 2000, 1, '2021-05-16 15:17:24', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_by_batch`
--

CREATE TABLE `product_by_batch` (
  `product_by_batch_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(230) NOT NULL,
  `qty` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `transaction_type_id` int(11) NOT NULL DEFAULT 1,
  `expiredate` datetime NOT NULL,
  `batch_preference` int(11) NOT NULL,
  `expired_confirmed` int(11) NOT NULL DEFAULT 0,
  `expired_confirmed_by` int(11) DEFAULT NULL,
  `expired_confirmed_date` datetime DEFAULT NULL,
  `os_confirmed` int(11) NOT NULL DEFAULT 0,
  `os_confirmed_by` int(11) DEFAULT NULL,
  `os_confirmed_date` datetime DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_by_batch`
--

INSERT INTO `product_by_batch` (`product_by_batch_id`, `product_id`, `batch_no`, `qty`, `inventory_id`, `transaction_type_id`, `expiredate`, `batch_preference`, `expired_confirmed`, `expired_confirmed_by`, `expired_confirmed_date`, `os_confirmed`, `os_confirmed_by`, `os_confirmed_date`, `creator`, `date_created`, `changed_by`, `date_changed`) VALUES
(1, 2, 'H0', 200, 81, 1, '2024-12-16 00:00:00', 1, 0, NULL, NULL, 0, NULL, NULL, 1, '2021-05-15 20:47:51', NULL, NULL),
(2, 6, 'H7', 200, 82, 1, '2022-02-05 00:00:00', 0, 0, NULL, NULL, 0, NULL, NULL, 1, '2021-05-15 20:47:51', NULL, NULL),
(3, 2, 'H0', 300, 83, 1, '2024-12-16 00:00:00', 0, 0, NULL, NULL, 0, NULL, NULL, 1, '2021-05-16 08:30:40', NULL, NULL),
(4, 4, 'H7', 30, 84, 1, '2023-11-16 00:00:00', 0, 0, NULL, NULL, 1, NULL, NULL, 1, '2021-05-16 08:30:41', NULL, NULL),
(5, 4, 'H8', 30, 85, 1, '2023-11-16 00:00:00', 0, 0, NULL, NULL, 1, NULL, NULL, 1, '2021-05-16 15:17:24', NULL, NULL),
(6, 2, 'H0', 20, 86, 1, '2024-12-16 00:00:00', 0, 0, NULL, NULL, 0, NULL, NULL, 1, '2021-05-16 15:17:24', NULL, NULL),
(7, 4, 'H7', 30, 84, 1, '2023-11-16 00:00:00', 0, 0, NULL, NULL, 1, NULL, NULL, 4, '2021-05-16 08:30:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `item_category_id` int(11) NOT NULL,
  `drug_group_id` int(11) NOT NULL,
  `item_units_id` int(11) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `price` double DEFAULT NULL,
  `wholesale_price` double DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `measurement` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prescription` tinyint(1) NOT NULL DEFAULT 0,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `item_category_id`, `drug_group_id`, `item_units_id`, `sku`, `price`, `wholesale_price`, `name`, `measurement`, `description`, `prescription`, `creator`, `date_created`, `changed_by`, `date_changed`) VALUES
(2, 1, 4, 2, '32563070', 3500, 2000, 'Amoxicillin 250', '250mg', 'sample', 1, 1, '2021-04-03 12:31:35', 1, '2021-04-28 04:30:42'),
(3, 1, 4, 2, '59118534', 3000, 1500, 'Cephalexin 250', '250mg', 'Sample', 0, 1, '2021-04-03 12:31:38', 1, '2021-04-05 11:40:18'),
(4, 1, 3, 5, '89612125', 4000, 1000, 'Hydromorphone 2', '2mg', 'Sample', 0, 1, '2021-04-03 12:31:40', NULL, NULL),
(5, 1, 3, 5, '90433847', 15, 10, 'Demerol 50', '50mg', 'Sample', 0, 1, '2021-04-03 12:31:42', NULL, NULL),
(6, 1, 3, 5, '30410592', 3250, 1450, 'Demerol 100', '100mg', 'Sample', 1, 1, '2021-04-03 12:31:44', NULL, NULL),
(7, 2, 1, 5, '15196587', 50, 40, 'Pyridoxine 50', '50mg', 'Sample', 0, 1, '2021-04-03 12:31:47', 1, '2021-04-11 05:12:32'),
(8, 1, 8, 6, '57429604', 15, 10, 'Sample Med', '500mg', 'Sample only', 1, 1, '2021-04-03 12:31:49', 1, '2021-04-06 08:20:33'),
(12, 2, 4, 5, '17115663', 1000, 700, 'AMITRIPTYLINE 25MG ', '25mg', 'doagnostic', 1, 1, '2021-04-04 07:13:27', NULL, NULL),
(13, 1, 3, 5, '85914541', 10000, 7500, 'prenisolin', 'tablets', 'sample', 1, 1, '2021-04-05 11:24:38', 1, '2021-04-05 11:24:38'),
(14, 1, 3, 5, '85914541', 10000, 7500, 'predinisolins', 'tablets', 'sample', 1, 1, '2021-04-05 11:24:38', 1, '2021-04-05 11:24:38'),
(21, 3, 8, 11, '43419277', 8000, 7000, 'perfume', 'bottle', 'for men', 0, 1, '2021-04-06 08:18:18', 1, '2021-04-28 04:24:11'),
(22, 1, 4, 2, '11527582', 750, 550, 'Metronidazole', '25mg', 'sample', 0, 1, '2021-04-11 05:23:18', 1, '2021-04-11 06:16:09'),
(23, 1, 3, 18, '68759440', NULL, NULL, 'kjha', 'iua', 'iuuga', 0, 1, '2021-05-01 12:13:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_on_hand`
--

CREATE TABLE `product_on_hand` (
  `product_on_hand_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty_before` int(11) NOT NULL,
  `qty_consumed` int(11) NOT NULL,
  `qty_after` int(11) NOT NULL,
  `sales_list_id` int(11) DEFAULT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `transaction_type` int(11) DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_on_hand`
--

INSERT INTO `product_on_hand` (`product_on_hand_id`, `product_id`, `qty_before`, `qty_consumed`, `qty_after`, `sales_list_id`, `inventory_id`, `transaction_type`, `creator`, `date_created`, `changed_by`, `date_changed`) VALUES
(1, 2, 464, 1, 463, 27, NULL, 2, 1, '2021-05-02 11:03:18', NULL, NULL),
(2, 2, 463, 2, 461, 28, NULL, 2, 1, '2021-05-02 11:06:49', NULL, NULL),
(3, 12, 1888, 1, 1887, 28, NULL, 2, 1, '2021-05-02 11:06:49', NULL, NULL),
(4, 12, 1888, 2, 1886, 29, NULL, 2, 1, '2021-05-02 11:22:49', NULL, NULL),
(5, 2, 461, 3, 458, 29, NULL, 2, 1, '2021-05-02 11:22:49', NULL, NULL),
(6, 12, 1886, 1, 1885, 30, NULL, 2, 1, '2021-05-02 15:17:53', NULL, NULL),
(7, 3, 887, 1, 886, 30, NULL, 2, 1, '2021-05-02 15:17:53', NULL, NULL),
(8, 12, 1985, 1, 1984, 31, NULL, 2, 1, '2021-05-07 13:25:07', NULL, NULL),
(9, 2, 558, 2, 556, 31, NULL, 2, 1, '2021-05-07 13:25:07', NULL, NULL),
(10, 12, 1984, 5, 1979, 32, NULL, 2, 1, '2021-05-13 05:07:56', NULL, NULL),
(11, 6, 327, 6, 321, 32, NULL, 2, 1, '2021-05-13 05:07:56', NULL, NULL),
(12, 12, 2009, 1, 2008, 33, NULL, 2, 1, '2021-05-23 09:24:05', NULL, NULL),
(13, 2, 11078, 1, 11077, 33, NULL, 2, 1, '2021-05-23 09:24:05', NULL, NULL),
(14, 12, 2008, 1, 2007, 34, NULL, 2, 1, '2021-05-23 09:30:39', NULL, NULL),
(15, 6, 521, 2, 519, 34, NULL, 2, 1, '2021-05-23 09:30:39', NULL, NULL),
(16, 2, 11077, 1, 11076, 35, NULL, 2, 1, '2021-05-23 09:34:40', NULL, NULL),
(17, 3, 911, 2, 909, 35, NULL, 2, 1, '2021-05-23 09:34:40', NULL, NULL),
(18, 12, 2007, 1, 2006, 36, NULL, 2, 1, '2021-05-23 09:36:12', NULL, NULL),
(19, 14, 100, 1, 99, 36, NULL, 2, 1, '2021-05-23 09:36:12', NULL, NULL),
(20, 12, 2006, 12, 1994, 37, NULL, 2, 1, '2021-05-23 17:08:23', NULL, NULL),
(21, 2, 11076, 1, 11075, 37, NULL, 2, 1, '2021-05-23 17:08:23', NULL, NULL),
(22, 12, 2006, 1, 2005, 38, NULL, 2, 1, '2021-05-23 17:38:57', NULL, NULL),
(23, 2, 11076, 11, 11065, 38, NULL, 2, 1, '2021-05-23 17:38:57', NULL, NULL),
(24, 12, 2006, 1, 2005, 39, NULL, 2, 1, '2021-05-23 17:43:28', NULL, NULL),
(25, 5, 280, 2, 278, 39, NULL, 2, 1, '2021-05-23 17:43:28', NULL, NULL),
(26, 2, 11076, 1, 11075, 40, NULL, 2, 1, '2021-05-23 17:47:32', NULL, NULL),
(27, 4, 537, 1, 536, 40, NULL, 2, 1, '2021-05-23 17:47:32', NULL, NULL),
(28, 2, 11076, 1, 11075, 41, NULL, 2, 1, '2021-05-23 17:50:16', NULL, NULL),
(29, 2, 11076, 1, 11075, 42, NULL, 2, 1, '2021-05-23 17:52:49', NULL, NULL),
(30, 2, 11076, 1, 11075, 43, NULL, 2, 1, '2021-05-23 17:59:20', NULL, NULL),
(31, 2, 11076, 1, 11075, 44, NULL, 2, 1, '2021-05-23 20:28:16', NULL, NULL),
(32, 2, 11076, 2, 11074, 45, NULL, 2, 1, '2021-05-23 20:45:24', NULL, NULL),
(33, 2, 11076, 1, 11075, 46, NULL, 2, 1, '2021-05-28 17:16:57', NULL, NULL),
(34, 3, 909, 1, 908, 46, NULL, 2, 1, '2021-05-28 17:16:57', NULL, NULL),
(35, 2, 11076, 1, 11075, 47, NULL, 2, 1, '2021-06-04 06:21:30', NULL, NULL),
(36, 5, 280, 2, 278, 47, NULL, 2, 1, '2021-06-04 06:21:30', NULL, NULL),
(37, 2, 11076, 1, 11075, 48, NULL, 2, 1, '2021-06-04 06:24:31', NULL, NULL),
(38, 4, 537, 3, 534, 48, NULL, 2, 1, '2021-06-04 06:24:31', NULL, NULL),
(39, 2, 11076, 10, 11066, 49, NULL, 2, 1, '2021-06-04 07:02:26', NULL, NULL),
(40, 2, 11076, 2, 11074, 50, NULL, 2, 1, '2021-06-04 07:04:15', NULL, NULL),
(41, 2, 11074, 20, 11054, 51, NULL, 2, 1, '2021-06-04 06:07:13', NULL, NULL),
(42, 4, 537, 33, 504, 51, NULL, 2, 1, '2021-06-04 06:07:13', NULL, NULL),
(43, 2, 11054, 20, 11034, 52, NULL, 2, 1, '2021-06-04 06:30:04', NULL, NULL),
(44, 4, 504, 4, 500, 52, NULL, 2, 1, '2021-06-04 06:30:04', NULL, NULL),
(45, 2, 11034, 10, 11024, 53, NULL, 2, 1, '2021-06-05 01:07:25', NULL, NULL),
(46, 4, 500, 10, 490, 53, NULL, 2, 1, '2021-06-05 01:07:25', NULL, NULL),
(47, 2, 11024, 10, 11014, 54, NULL, 2, 1, '2021-06-05 01:11:07', NULL, NULL),
(48, 4, 490, 10, 480, 54, NULL, 2, 1, '2021-06-05 01:11:07', NULL, NULL),
(49, 2, 11014, 10, 11004, 55, NULL, 2, 1, '2021-06-05 01:14:12', NULL, NULL),
(50, 4, 480, 10, 470, 55, NULL, 2, 1, '2021-06-05 01:14:12', NULL, NULL),
(51, 2, 11004, 2, 11002, 56, NULL, 2, 1, '2021-06-05 01:21:55', NULL, NULL),
(52, 4, 470, 3, 467, 56, NULL, 2, 1, '2021-06-05 01:21:55', NULL, NULL),
(53, 2, 11002, 5, 10997, 57, NULL, 2, 1, '2021-06-05 02:17:13', NULL, NULL),
(54, 4, 467, 4, 463, 57, NULL, 2, 1, '2021-06-05 02:17:13', NULL, NULL),
(55, 2, 10997, 1, 10996, 58, NULL, 2, 1, '2021-06-05 02:19:19', NULL, NULL),
(56, 4, 463, 1, 462, 58, NULL, 2, 1, '2021-06-05 02:19:19', NULL, NULL),
(57, 2, 10996, 1, 10995, 59, NULL, 2, 1, '2021-06-06 01:09:42', NULL, NULL),
(58, 4, 462, 1, 461, 59, NULL, 2, 1, '2021-06-06 01:09:42', NULL, NULL),
(59, 2, 10995, 1, 10994, 60, NULL, 2, 1, '2021-06-06 01:14:57', NULL, NULL),
(60, 4, 461, 1, 460, 60, NULL, 2, 1, '2021-06-06 01:14:57', NULL, NULL),
(61, 2, 10994, 10, 10984, 61, NULL, 2, 1, '2021-06-07 04:01:46', NULL, NULL),
(62, 4, 460, 2, 458, 61, NULL, 2, 1, '2021-06-07 04:01:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_on_hand_after_transaction`
--

CREATE TABLE `product_on_hand_after_transaction` (
  `product_on_hand_after_transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(50) DEFAULT NULL,
  `qty_remaained` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_on_hand_by_batch`
--

CREATE TABLE `product_on_hand_by_batch` (
  `product_on_hand_by_batch_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(230) NOT NULL,
  `qty_before` int(11) NOT NULL,
  `qty_consumed` int(11) NOT NULL,
  `qty_after` int(11) NOT NULL,
  `sales_list_id` int(11) DEFAULT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `transaction_type` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_on_hand_by_batch`
--

INSERT INTO `product_on_hand_by_batch` (`product_on_hand_by_batch_id`, `product_id`, `batch_no`, `qty_before`, `qty_consumed`, `qty_after`, `sales_list_id`, `inventory_id`, `transaction_type`, `creator`, `date_created`, `changed_by`, `date_changed`) VALUES
(1, 2, 'H0', 0, 300, 300, NULL, NULL, 1, 1, '2021-05-16 08:30:41', NULL, NULL),
(2, 4, 'H7', 0, 30, 30, NULL, NULL, 1, 1, '2021-05-16 08:30:41', NULL, NULL),
(3, 4, 'H7', 60, 30, 90, NULL, NULL, 1, 1, '2021-05-16 15:17:24', NULL, NULL),
(4, 2, 'H0', 520, 20, 540, NULL, NULL, 1, 1, '2021-05-16 15:17:24', NULL, NULL),
(5, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(6, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(7, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(8, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(9, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(10, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(11, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(12, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(13, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(14, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(15, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(16, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(17, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(18, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(19, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(20, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(21, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(22, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(23, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(24, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(25, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(26, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(27, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(28, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(29, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(30, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(31, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(32, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(33, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(34, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(35, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(36, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(37, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(38, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(39, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(40, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(41, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(42, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(43, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(44, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(45, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(46, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(47, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(48, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(49, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(50, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(51, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(52, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(53, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(54, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(55, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(56, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(57, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(58, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(59, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(60, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(61, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(62, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(63, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(64, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(65, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(66, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(67, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(68, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(69, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(70, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(71, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(72, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(73, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(74, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(75, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(76, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(77, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(78, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(79, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(80, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(81, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(82, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(83, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(84, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(85, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(86, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(87, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(88, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(89, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(90, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(91, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(92, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(93, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(94, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(95, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(96, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(97, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(98, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(99, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(100, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(101, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(102, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(103, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(104, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(105, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(106, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(107, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(108, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(109, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(110, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(111, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(112, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(113, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(114, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(115, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(116, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(117, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(118, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(119, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(120, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(121, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(122, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(123, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(124, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(125, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(126, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(127, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(128, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(129, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(130, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(131, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(132, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(133, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(134, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(135, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(136, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(137, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(138, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(139, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(140, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(141, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(142, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(143, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(144, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(145, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(146, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(147, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(148, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(149, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(150, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(151, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(152, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(153, 2, 'H0', 520, 520, 0, 41, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(154, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(155, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(156, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(157, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(158, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(159, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(160, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(161, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(162, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(163, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(164, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(165, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(166, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(167, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(168, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(169, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(170, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(171, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(172, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(173, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(174, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(175, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(176, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(177, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(178, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(179, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(180, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(181, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(182, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(183, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(184, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(185, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(186, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(187, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(188, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(189, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(190, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(191, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(192, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(193, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(194, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(195, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(196, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(197, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(198, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(199, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(200, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(201, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(202, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(203, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(204, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(205, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(206, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(207, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(208, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(209, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(210, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(211, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(212, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(213, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(214, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(215, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(216, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(217, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(218, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(219, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(220, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(221, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(222, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(223, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(224, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(225, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(226, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(227, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(228, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(229, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(230, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(231, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(232, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(233, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(234, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(235, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(236, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(237, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(238, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(239, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(240, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(241, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(242, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(243, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(244, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(245, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(246, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(247, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(248, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(249, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(250, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(251, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(252, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(253, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(254, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(255, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(256, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(257, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(258, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(259, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(260, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(261, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(262, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(263, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(264, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(265, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(266, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(267, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(268, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(269, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(270, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(271, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(272, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(273, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(274, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(275, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(276, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(277, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(278, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(279, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(280, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(281, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(282, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(283, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(284, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(285, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(286, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(287, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(288, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(289, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(290, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(291, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(292, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(293, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(294, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(295, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(296, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(297, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(298, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(299, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(300, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(301, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(302, 2, 'H0', 520, 520, 0, 42, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(303, 2, 'H0', 520, 520, 518, 50, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(304, 2, 'H0', 520, 520, 500, 51, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(305, 4, 'H7', 60, 60, 27, 51, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(306, 2, 'H0', 520, 520, 500, 52, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(307, 4, 'H7', 60, 60, 56, 52, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(308, 2, 'H0', 500, 500, 490, 53, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(309, 4, 'H7', 56, 56, 46, 53, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(310, 2, 'H0', 490, 490, 480, 54, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(311, 4, 'H7', 46, 46, 36, 54, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(312, 2, 'H0', 480, 480, 470, 55, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(313, 4, 'H7', 36, 36, 26, 55, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(314, 2, 'H0', 470, 470, 468, 56, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(315, 4, 'H7', 26, 26, 23, 56, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(316, 2, 'H0', 468, 468, 463, 57, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(317, 4, 'H7', 23, 23, 19, 57, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(318, 2, 'H0', 463, 463, 462, 58, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(319, 4, 'H7', 19, 19, 18, 58, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL),
(329, 2, 'H0', 3, 3, 0, 56, NULL, 4, 4, '2021-06-06 05:51:22', NULL, '2021-06-06 07:50:49'),
(337, 4, 'H7', 3, 3, 0, 56, NULL, 4, 4, '2021-06-06 06:54:46', NULL, '2021-06-06 08:54:07'),
(338, 4, 'H7', 3, 3, 0, 56, NULL, 4, 4, '2021-06-06 06:54:46', NULL, '0000-00-00 00:00:00'),
(340, 4, 'H7', 3, 3, 0, 56, NULL, 4, 4, '2021-06-06 06:54:46', NULL, '0000-00-00 00:00:00'),
(341, 2, 'H0', 462, 462, 461, 59, NULL, 2, 1, '0000-00-00 00:00:00', NULL, NULL),
(342, 4, 'H8', 0, 1, -1, 59, NULL, 2, 1, '2021-06-06 01:09:42', NULL, NULL),
(343, 2, 'H0', 461, 461, 460, 60, NULL, 2, 1, '0000-00-00 00:00:00', NULL, NULL),
(344, 4, 'H8', -1, 1, -2, 60, NULL, 4, 1, '2021-06-06 01:14:57', NULL, NULL),
(345, 2, 'H0', 460, 10, 450, 61, NULL, 2, 1, '2021-06-07 04:01:46', NULL, NULL),
(346, 4, 'H8', -2, -2, 0, 61, NULL, 4, 1, '0000-00-00 00:00:00', NULL, NULL);

--
-- Triggers `product_on_hand_by_batch`
--
DELIMITER $$
CREATE TRIGGER `set_new_preference_after_product_on_hand_by_batch_end_to_zero` AFTER INSERT ON `product_on_hand_by_batch` FOR EACH ROW IF NEW.qty_after=0 THEN
UPDATE product_by_batch SET os_confirmed=1,batch_preference=0 WHERE product_id=NEW.product_id AND transaction_type_id=1 AND expired_confirmed=0 AND batch_no=NEW.batch_no;
UPDATE product_by_batch SET batch_preference=0 WHERE product_id=NEW.product_id AND transaction_type_id=1 AND expired_confirmed=0 AND os_confirmed=0; 
UPDATE product_by_batch SET batch_preference=1 WHERE product_id=NEW.product_id AND expired_confirmed=0 AND os_confirmed=0 AND transaction_type_id=1 AND expiredate=(SELECT MIN(date(expiredate)) FROM product_by_batch WHERE product_id=NEW.product_id AND os_confirmed=0);
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `set_qty_consumed_correct_on_product_on_hand_by_batch` BEFORE INSERT ON `product_on_hand_by_batch` FOR EACH ROW IF NEW.inventory_id=NULL THEN
SET NEW.qty_consumed=qty_before-qty_after;
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `set_transaction_after_insert_product_on_hand_by_batch` BEFORE INSERT ON `product_on_hand_by_batch` FOR EACH ROW IF NEW.qty_after<=0 THEN
SET NEW.transaction_type=4;
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `product_on_sales_lists`
--

CREATE TABLE `product_on_sales_lists` (
  `product_on_sales_list_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `rate_price` double NOT NULL,
  `total_amount` double NOT NULL,
  `sales_invoice_number` varchar(250) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_on_sales_lists`
--

INSERT INTO `product_on_sales_lists` (`product_on_sales_list_id`, `product_id`, `qty`, `rate_price`, `total_amount`, `sales_invoice_number`, `creator`, `date_created`, `changed_by`, `date_changed`) VALUES
(1, 2, 1, 700, 700, '20210501-74091651\n', 1, '2021-05-01 03:11:16', NULL, NULL),
(2, 2, 1, 700, 700, '20210501-18716052\n', 1, '2021-05-01 03:12:08', NULL, NULL),
(3, 3, 1, 900, 900, '20210501-18716052\n', 1, '2021-05-01 03:12:08', NULL, NULL),
(4, 2, 2, 700, 1400, '20210501-80225630\n', 4, '2021-05-01 03:17:06', NULL, NULL),
(6, 2, 2, 700, 1400, '20210502-40721080\n', 4, '2021-05-02 08:49:22', NULL, NULL),
(7, 2, 1, 700, 700, '20210502-52942055\n', 1, '2021-05-02 09:21:52', NULL, NULL),
(8, 2, 1, 700, 700, '20210502-70346757\n', 1, '2021-05-02 09:27:31', NULL, NULL),
(9, 2, 1, 700, 700, '20210502-44228916\n', 1, '2021-05-02 09:48:56', NULL, NULL),
(10, 2, 1, 700, 700, '20210502-61297885\n', 1, '2021-05-02 09:50:17', NULL, NULL),
(11, 2, 1, 700, 700, '20210502-35534192\n', 1, '2021-05-01 23:03:18', NULL, NULL),
(12, 2, 2, 700, 1400, '20210502-37517922\n', 4, '2021-05-01 23:06:49', NULL, NULL),
(13, 12, 1, 1000, 1000, '20210502-37517922\n', 1, '2021-05-01 23:06:49', NULL, NULL),
(14, 12, 2, 1000, 2000, '20210502-56309362\n', 1, '2021-05-01 23:22:49', NULL, NULL),
(15, 2, 3, 700, 2100, '20210502-56309362\n', 1, '2021-05-01 23:22:49', NULL, NULL),
(16, 12, 1, 1000, 1000, '20210502-72083579\n', 1, '2021-05-02 03:17:53', NULL, NULL),
(17, 3, 1, 900, 900, '20210502-72083579\n', 1, '2021-05-02 03:17:53', NULL, NULL),
(18, 12, 1, 1000, 1000, '20210507-62857066\n', 1, '2021-05-07 01:25:07', NULL, NULL),
(19, 2, 2, 1000, 2000, '20210507-62857066\n', 4, '2021-05-07 01:25:07', NULL, NULL),
(20, 12, 5, 1000, 5000, '20210513-85977310\n', 1, '2021-05-13 05:07:56', NULL, NULL),
(21, 6, 6, 750, 4500, '20210513-85977310\n', 1, '2021-05-13 05:07:56', NULL, NULL),
(22, 12, 1, 1000, 1000, '20210523-04704160\n', 1, '2021-05-23 09:24:05', NULL, NULL),
(23, 2, 1, 3500, 3500, '20210523-04704160\n', 1, '2021-05-23 09:24:05', NULL, NULL),
(24, 12, 1, 1000, 1000, '20210523-90251999\n', 1, '2021-05-23 09:30:39', NULL, NULL),
(25, 6, 2, 3250, 6500, '20210523-90251999\n', 1, '2021-05-23 09:30:39', NULL, NULL),
(26, 2, 1, 3500, 3500, '20210523-47854301\n', 1, '2021-05-23 09:34:40', NULL, NULL),
(27, 3, 2, 3000, 6000, '20210523-47854301\n', 1, '2021-05-23 09:34:40', NULL, NULL),
(28, 12, 1, 1000, 1000, '20210523-11815045\n', 1, '2021-05-23 09:36:12', NULL, NULL),
(29, 14, 1, 10000, 10000, '20210523-11815045\n', 1, '2021-05-23 09:36:12', NULL, NULL),
(30, 2, 2, 3500, 7000, '20210604-99755642\n', 1, '2021-06-04 07:04:15', NULL, NULL),
(31, 2, 20, 3500, 70000, '20210604-78276108\n', 1, '2021-06-04 06:07:13', NULL, NULL),
(32, 4, 33, 4000, 132000, '20210604-78276108\n', 1, '2021-06-04 06:07:13', NULL, NULL),
(33, 2, 20, 3500, 70000, '20210604-65792072\n', 1, '2021-06-04 06:30:04', NULL, NULL),
(34, 4, 4, 4000, 16000, '20210604-65792072\n', 1, '2021-06-04 06:30:04', NULL, NULL),
(35, 2, 10, 3500, 35000, '20210605-10408119\n', 1, '2021-06-05 01:07:25', NULL, NULL),
(36, 4, 10, 4000, 40000, '20210605-10408119\n', 1, '2021-06-05 01:07:25', NULL, NULL),
(37, 2, 10, 3500, 35000, '20210605-82351504\n', 1, '2021-06-05 01:11:07', NULL, NULL),
(38, 4, 10, 4000, 40000, '20210605-82351504\n', 1, '2021-06-05 01:11:07', NULL, NULL),
(39, 2, 10, 3500, 35000, '20210605-79656511\n', 1, '2021-06-05 01:14:12', NULL, NULL),
(40, 4, 10, 4000, 40000, '20210605-79656511\n', 1, '2021-06-05 01:14:12', NULL, NULL),
(41, 2, 2, 3500, 7000, '20210605-21342184\n', 1, '2021-06-05 01:21:55', NULL, NULL),
(42, 4, 3, 4000, 12000, '20210605-21342184\n', 1, '2021-06-05 01:21:55', NULL, NULL),
(43, 2, 5, 3500, 17500, '20210605-62941898\n', 1, '2021-06-05 02:17:13', NULL, NULL),
(44, 4, 4, 4000, 16000, '20210605-62941898\n', 1, '2021-06-05 02:17:13', NULL, NULL),
(45, 2, 1, 3500, 3500, '20210605-72998875\n', 1, '2021-06-05 02:19:19', NULL, NULL),
(46, 4, 1, 4000, 4000, '20210605-72998875\n', 1, '2021-06-05 02:19:19', NULL, NULL),
(47, 2, 1, 3500, 3500, '20210606-83543610\n', 1, '2021-06-06 01:09:42', NULL, NULL),
(48, 4, 1, 4000, 4000, '20210606-83543610\n', 1, '2021-06-06 01:09:42', NULL, NULL),
(49, 2, 1, 3500, 3500, '20210606-64900395\n', 1, '2021-06-06 01:14:57', NULL, NULL),
(50, 4, 1, 4000, 4000, '20210606-64900395\n', 1, '2021-06-06 01:14:57', NULL, NULL),
(51, 2, 10, 3500, 35000, '20210607-89138386\n', 1, '2021-06-07 04:01:47', NULL, NULL),
(52, 4, 2, 4000, 8000, '20210607-89138386\n', 1, '2021-06-07 04:01:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profroma_invoice`
--

CREATE TABLE `profroma_invoice` (
  `profroma_invoice_id` int(11) NOT NULL,
  `profroma_invoice_name` varchar(250) NOT NULL,
  `profroma_invoice_to` varchar(250) NOT NULL,
  `invoice_number` varchar(250) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profroma_invoice`
--

INSERT INTO `profroma_invoice` (`profroma_invoice_id`, `profroma_invoice_name`, `profroma_invoice_to`, `invoice_number`, `creator`, `date_created`, `changed_by`, `date_changed`) VALUES
(8, '-36391445\n', '', '36391445\n', 1, '2021-04-14 09:51:23', NULL, NULL),
(9, 'juma-85729639\n', 'juma', '85729639\n', 1, '2021-04-14 09:59:26', NULL, NULL),
(10, '-00000000\n', '', '00000000\n', 1, '2021-04-14 10:25:58', NULL, NULL),
(11, 'mwaajuma-72264346\n', 'mwaajuma', '72264346\n', 1, '2021-04-14 10:30:01', NULL, NULL),
(12, 'asha-76159681\n', 'asha', '76159681\n', 1, '2021-04-14 10:31:55', NULL, NULL),
(13, 'june-29652797\n', 'june', '29652797\n', 1, '2021-04-14 10:40:49', NULL, NULL),
(14, 'jumaukuku-40889810\n', 'jumaukuku', '40889810\n', 1, '2021-04-14 11:02:56', NULL, NULL),
(15, '-07943059\n', '', '07943059\n', 1, '2021-04-15 12:14:35', NULL, NULL),
(16, '-05517048\n', '', '05517048\n', 1, '2021-04-15 12:16:03', NULL, NULL),
(17, '-99417145\n', '', '99417145\n', 1, '2021-04-15 12:19:54', NULL, NULL),
(18, '-29414269\n', '', '29414269\n', 1, '2021-04-15 12:26:33', NULL, NULL),
(19, '-01040188\n', '', '01040188\n', 1, '2021-04-15 10:05:34', NULL, NULL),
(20, '-82370284\n', '', '82370284\n', 1, '2021-04-15 10:16:37', NULL, NULL),
(21, '-57494540\n', 'juma mwmasha', '57494540\n', 1, '2021-04-15 10:18:52', NULL, NULL),
(22, '-79306017\n', '', '79306017\n', 1, '2021-04-15 10:20:26', NULL, NULL),
(23, 'ahsa-66802129\n', 'ahsa', '66802129\n', 1, '2021-04-15 04:35:32', NULL, NULL),
(24, 'ahsaaa-06556900\n', 'ahsaaa', '06556900\n', 1, '2021-04-15 04:37:20', NULL, NULL),
(25, '-74120184\n', '', '74120184\n', 1, '2021-04-15 08:41:47', NULL, NULL),
(26, '-51537988\n', '', '51537988\n', 1, '2021-04-15 08:42:08', NULL, NULL),
(27, '555565-14526936\n', '555565', '14526936\n', 1, '2021-04-16 02:39:14', NULL, NULL),
(28, '1121111-47053051\n', '1121111', '47053051\n', 1, '2021-04-16 02:44:23', NULL, NULL),
(29, 'hyakabj-45657729\n', 'hyakabj', '45657729\n', 1, '2021-04-16 03:27:24', NULL, NULL),
(30, '-67700574\n', '', '67700574\n', 1, '2021-04-16 03:30:59', NULL, NULL),
(31, '-98661363\n', '', '98661363\n', 1, '2021-04-16 04:15:44', NULL, NULL),
(32, 'jjj-08625906\n', 'jjj', '08625906\n', 1, '2021-04-16 04:29:20', NULL, NULL),
(33, '-83725483\n', '', '83725483\n', 1, '2021-04-16 04:31:48', NULL, NULL),
(34, 'kuku-17064422\n', 'kuku', '17064422\n', 1, '2021-04-17 03:21:44', NULL, NULL),
(35, '122eda-44102305\n', '122eda', '44102305\n', 1, '2021-04-18 01:02:26', NULL, NULL),
(36, 'hfhfbf-71141533\n', 'hfhfbf', '71141533\n', 1, '2021-04-18 01:08:21', NULL, NULL),
(37, 'jhbjbabja-69346071\n', 'jhbjbabja', '69346071\n', 1, '2021-04-18 01:17:00', NULL, NULL),
(38, 'khaua-16341426\n', 'khaua', '16341426\n', 1, '2021-04-18 01:18:30', NULL, NULL),
(39, 'knaj-98979846\n', 'knaj', '98979846\n', 1, '2021-04-18 01:26:18', NULL, NULL),
(40, 'lkjha-15960292\n', 'lkjha', '15960292\n', 1, '2021-04-18 01:28:04', NULL, NULL),
(41, 'mwajuma ndara ndefu-48817313\n', 'mwajuma ndara ndefu', '48817313\n', 1, '2021-04-18 01:30:59', NULL, NULL),
(42, 'mwasha-27440333\n', 'mwasha', '27440333\n', 1, '2021-04-18 01:32:34', NULL, NULL),
(43, 'jhjgbh-25252858\n', 'jhjgbh', '25252858\n', 1, '2021-04-18 01:34:43', NULL, NULL),
(44, 'gjfc-18696771\n', 'gjfc', '18696771\n', 1, '2021-04-18 01:37:08', NULL, NULL),
(45, 'kjhghvgf-97086345\n', 'kjhghvgf', '97086345\n', 1, '2021-04-18 01:38:46', NULL, NULL),
(46, 'jbhjbaabjh-18299826\n', 'jbhjbaabjh', '18299826\n', 1, '2021-04-18 01:42:40', NULL, NULL),
(47, 'kbjhbuabhbh-12330000\n', 'kbjhbuabhbh', '12330000\n', 1, '2021-04-18 01:43:58', NULL, NULL),
(48, '-69004445\n', '', '69004445\n', 1, '2021-04-18 01:44:52', NULL, NULL),
(49, '-12961571\n', '', '12961571\n', 1, '2021-04-18 01:45:38', NULL, NULL),
(50, '-11918727\n', '', '11918727\n', 1, '2021-04-18 01:49:05', NULL, NULL),
(51, '-63062002\n', '', '63062002\n', 1, '2021-04-18 01:50:03', NULL, NULL),
(52, '-34237282\n', '', '34237282\n', 1, '2021-04-18 01:51:03', NULL, NULL),
(53, '-60628616\n', '', '60628616\n', 1, '2021-04-18 01:51:40', NULL, NULL),
(54, '-05964671\n', '', '05964671\n', 1, '2021-04-18 01:52:27', NULL, NULL),
(55, 'kuku-44230771\n', 'kuku', '44230771\n', 1, '2021-04-18 10:38:08', NULL, NULL),
(56, 'kjiaua-75137225\n', 'kjiaua', '75137225\n', 1, '2021-04-18 10:39:49', NULL, NULL),
(57, 'mr kakuku-38162721\n', 'mr kakuku', '38162721\n', 1, '2021-04-18 10:41:06', NULL, NULL),
(58, 'mt kakuaku-79010526\n', 'mt kakuaku', '79010526\n', 1, '2021-04-18 10:43:26', NULL, NULL),
(59, '-65606269\n', '', '65606269\n', 1, '2021-04-18 11:17:49', NULL, NULL),
(60, 'khguya-03469052\n', 'khguya', '03469052\n', 1, '2021-04-18 11:49:03', NULL, NULL),
(61, '-95112155\n', '', '95112155\n', 1, '2021-04-18 12:18:51', NULL, NULL),
(62, '-42682075\n', '', '42682075\n', 1, '2021-04-18 12:19:45', NULL, NULL),
(63, '-18766077\n', '', '18766077\n', 1, '2021-04-18 12:22:01', NULL, NULL),
(64, '-66021005\n', '', '66021005\n', 1, '2021-04-18 12:22:54', NULL, NULL),
(65, '-85885597\n', '', '85885597\n', 1, '2021-04-18 12:23:54', NULL, NULL),
(66, '-72774902\n', '', '72774902\n', 1, '2021-04-18 12:40:16', NULL, NULL),
(67, '-09755242\n', '', '09755242\n', 1, '2021-04-18 12:46:44', NULL, NULL),
(68, '-57497099\n', '', '57497099\n', 1, '2021-04-18 10:04:02', NULL, NULL),
(69, '-25511166\n', '', '25511166\n', 1, '2021-04-18 10:07:19', NULL, NULL),
(70, '-14472860\n', '', '14472860\n', 1, '2021-04-18 10:07:53', NULL, NULL),
(71, 'kuakhgyga-09217745\n', 'kuakhgyga', '09217745\n', 1, '2021-04-22 06:42:53', NULL, NULL),
(72, 'jui,ma-94870082\n', 'jui,ma', '94870082\n', 1, '2021-04-24 07:03:38', NULL, NULL),
(73, 'lkiukna-19009998\n', 'lkiukna', '19009998\n', 1, '2021-04-24 07:05:24', NULL, NULL),
(78, 'mwajuma ndara ndefu-20893848\n', 'mwajuma ndara ndefu', '20893848\n', 1, '2021-04-25 11:24:24', NULL, NULL),
(79, 'monaco pharmacy-06528334\n', 'monaco pharmacy', '06528334\n', 1, '2021-04-25 06:50:06', NULL, NULL),
(80, '-09041709\n', '', '09041709\n', 1, '2021-04-28 04:17:56', NULL, NULL),
(81, '-36613557\n', '', '36613557\n', 1, '2021-05-13 08:09:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receiving_list`
--

CREATE TABLE `receiving_list` (
  `id` int(30) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `supplier_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receiving_list`
--

INSERT INTO `receiving_list` (`id`, `ref_no`, `supplier_id`, `total_amount`, `date_added`) VALUES
(1, '83386962\n', 1, 14000, '2020-10-08 10:52:05'),
(2, '00000000\n', 3, 4180, '2020-10-08 11:03:36'),
(3, '95300488\n', 3, 5000, '2020-10-09 08:17:29'),
(4, '53281868\n', 3, 500000, '2021-03-28 08:09:54'),
(5, '10603121\n', 4, 400000, '2021-03-28 08:10:55'),
(6, '45696416\n', 0, 3500000, '2021-04-05 10:35:27'),
(7, '25240605\n', 0, 100000, '2021-04-05 10:36:39'),
(8, '61488916\n', 3, 30000, '2021-04-06 15:24:43'),
(14, '11603789\n', 0, 130000, '2021-04-11 18:48:57'),
(16, '27773173\n', 0, 40000, '2021-04-12 09:17:44'),
(17, '72604872\n', 0, 40000, '2021-04-12 10:30:31'),
(18, '89224223\n', 0, 4800, '2021-04-12 14:56:34'),
(19, '14480460\n', 0, 4800, '2021-04-12 15:00:08'),
(20, '94137840\n', 0, 110000, '2021-04-12 15:05:59'),
(21, '17251123\n', 0, 240000, '2021-04-12 15:37:51'),
(22, '94834113\n', 4, 800000, '2021-04-25 18:48:28'),
(23, '10424208\n', 3, 400000, '2021-04-28 16:20:31'),
(24, '89743668\n', 3, 50000, '2021-05-06 20:51:02'),
(25, '27800124\n', 0, 60000, '2021-05-07 10:49:15'),
(26, '91033325\n', 3, 13000, '2021-05-07 10:51:18'),
(27, '52897540\n', 0, 4000000, '2021-05-13 08:12:23'),
(28, '82983196\n', 0, 0, '2021-05-15 09:11:44'),
(29, '90478885\n', 0, 0, '2021-05-15 09:12:21'),
(30, '92868976\n', 3, 8000, '2021-05-15 15:09:18'),
(31, '91592546\n', 3, 1400, '2021-05-15 15:45:20'),
(32, '22537172\n', 3, 2500, '2021-05-15 23:22:23'),
(33, '15207006\n', 3, 10000, '2021-05-15 23:26:57'),
(34, '79416323\n', 0, 200000, '2021-05-15 23:47:51'),
(35, '86196537\n', 3, 135000, '2021-05-16 11:30:40'),
(36, '66453790\n', 1, 26000, '2021-05-16 18:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `sales_list`
--

CREATE TABLE `sales_list` (
  `id` int(30) NOT NULL,
  `ref_no` varchar(30) NOT NULL,
  `sales_invoice_number` varchar(259) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `sales_type` int(11) NOT NULL,
  `amount_tendered` double NOT NULL,
  `amount_change` double NOT NULL,
  `prescription` int(11) DEFAULT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp(),
  `creator` int(11) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_list`
--

INSERT INTO `sales_list` (`id`, `ref_no`, `sales_invoice_number`, `customer_id`, `total_amount`, `sales_type`, `amount_tendered`, `amount_change`, `prescription`, `date_updated`, `creator`, `changed_by`, `date_changed`) VALUES
(2, '00000000\n', '1', 1, 310, 1, 400, 90, NULL, '2021-05-02 11:15:49', 1, NULL, NULL),
(3, '74800422\n', '2', 1, 200, 1, 200, 0, NULL, '2021-05-02 11:15:53', 1, NULL, NULL),
(4, '01966403\n', '11', 1, 100, 1, 100, 0, NULL, '2021-05-02 11:15:57', 1, NULL, NULL),
(5, '16232790\n', '22', 1, 250, 1, 300, 50, NULL, '2021-05-02 11:16:00', 1, NULL, NULL),
(6, '21170008\n', '3', 1, 406, 2, 406, 0, NULL, '2021-05-02 11:16:05', 1, NULL, NULL),
(7, '43098642\n', '33', 1, 60, 2, 20, -40, NULL, '2021-05-02 11:16:08', 1, NULL, NULL),
(8, '91222506\n', '4', 1, 30, 2, 40, 10, NULL, '2021-05-02 11:16:10', 1, NULL, NULL),
(9, '50593372\n', '44', 1, 90, 2, 60, -30, NULL, '2021-05-02 11:16:13', 1, NULL, NULL),
(10, '19644592\n', '5', 1, 150, 2, 1000, 850, NULL, '2021-05-02 11:16:15', 1, NULL, NULL),
(11, '64403959\n', '', 1, 4150, 2, 5000, 850, NULL, '2021-05-02 11:18:48', 1, NULL, NULL),
(13, '15329997\n', '20210501-15329997\n', 1, 700, 2, 700, 0, NULL, '2021-05-02 11:18:52', 1, NULL, NULL),
(14, '22422554\n', '20210501-22422554\n', 1, 700, 2, 4000, 3300, NULL, '2021-05-02 11:19:08', 1, NULL, NULL),
(15, '89113793\n', '20210501-89113793\n', 1, 900, 2, 10000, 9100, NULL, '2021-05-02 11:19:05', 1, NULL, NULL),
(16, '85553758\n', '20210501-85553758\n', 1, 1000, 2, 20000, 19000, NULL, '2021-05-02 11:19:01', 1, NULL, NULL),
(17, '21387804\n', '20210501-21387804\n', 1, 900, 2, 1000, 100, NULL, '2021-05-02 11:19:15', 1, NULL, NULL),
(18, '74091651\n', '20210501-74091651\n', 1, 700, 2, 1000, 300, NULL, '2021-05-02 11:20:12', 1, NULL, NULL),
(19, '18716052\n', '20210501-18716052\n', 1, 1600, 2, 2000, 400, NULL, '2021-05-02 11:19:20', 1, NULL, NULL),
(20, '80225630\n', '20210501-80225630\n', 1, 1400, 2, 1500, 100, NULL, '2021-05-02 11:19:17', 1, NULL, NULL),
(22, '40721080\n', '20210502-40721080\n', 1, 1400, 2, 1500, 100, NULL, '2021-05-02 11:49:22', 1, NULL, NULL),
(23, '52942055\n', '20210502-52942055\n', 1, 700, 2, 1000, 300, NULL, '2021-05-02 12:21:52', 1, NULL, NULL),
(24, '70346757\n', '20210502-70346757\n', 1, 700, 2, 9000, 8300, NULL, '2021-05-02 12:27:31', 1, NULL, NULL),
(25, '44228916\n', '20210502-44228916\n', 1, 700, 2, 1000, 300, NULL, '2021-05-02 12:48:56', 1, NULL, NULL),
(26, '61297885\n', '20210502-61297885\n', 1, 700, 2, 1000, 300, NULL, '2021-05-02 12:50:17', 1, NULL, NULL),
(27, '35534192\n', '20210502-35534192\n', 1, 700, 2, 1000, 300, NULL, '2021-05-02 14:03:18', 1, NULL, NULL),
(28, '37517922\n', '20210502-37517922\n', 1, 2400, 2, 2500, 100, NULL, '2021-05-02 14:06:49', 1, NULL, NULL),
(29, '56309362\n', '20210502-56309362\n', 1, 4100, 2, 4500, 400, NULL, '2021-05-02 14:22:49', 1, NULL, NULL),
(30, '72083579\n', '20210502-72083579\n', 1, 1900, 2, 2000, 100, NULL, '2021-05-02 18:17:53', 1, NULL, NULL),
(31, '62857066\n', '20210507-62857066\n', 2, 3000, 2, 4000, 1000, NULL, '2021-05-07 16:25:07', 1, NULL, NULL),
(32, '85977310\n', '20210513-85977310\n', 3, 9500, 2, 10000, 500, NULL, '2021-05-13 08:07:56', 1, NULL, NULL),
(33, '04704160\n', '20210523-04704160\n', 4, 4500, 2, 4500, 0, NULL, '2021-05-23 12:24:05', 1, NULL, NULL),
(34, '90251999\n', '20210523-90251999\n', 5, 7500, 2, 8000, 500, NULL, '2021-05-23 12:30:39', 1, NULL, NULL),
(35, '47854301\n', '20210523-47854301\n', 6, 9500, 2, 10000, 500, NULL, '2021-05-23 12:34:40', 1, NULL, NULL),
(36, '11815045\n', '20210523-11815045\n', 7, 11000, 2, 12000, 1000, 4, '2021-05-23 12:36:12', 1, NULL, NULL),
(37, '97739102\n', '20210523-97739102\n', 8, 15500, 2, 16000, 500, 5, '2021-05-23 20:08:23', 1, NULL, NULL),
(38, '48783027\n', '20210523-48783027\n', 9, 39500, 2, 40000, 500, 6, '2021-05-23 20:38:57', 1, NULL, NULL),
(39, '43417000\n', '20210523-43417000\n', 10, 1030, 2, 1250, 220, 7, '2021-05-23 20:43:28', 1, NULL, NULL),
(40, '14058345\n', '20210523-14058345\n', 11, 7500, 2, 8000, 500, 8, '2021-05-23 20:47:32', 1, NULL, NULL),
(41, '51706920\n', '20210523-51706920\n', 12, 3500, 2, 4000, 500, 9, '2021-05-23 20:50:16', 1, NULL, NULL),
(42, '58304568\n', '20210523-58304568\n', 13, 3500, 2, 4000, 500, 10, '2021-05-23 20:52:49', 1, NULL, NULL),
(43, '33820769\n', '20210523-33820769\n', 14, 3500, 2, 3500, 0, 11, '2021-05-23 20:59:20', 1, NULL, NULL),
(44, '93838466\n', '20210523-93838466\n', 15, 3500, 2, 5000, 1500, 12, '2021-05-23 23:28:16', 1, NULL, NULL),
(45, '67606943\n', '20210523-67606943\n', 16, 7000, 2, 8000, 1000, 13, '2021-05-23 23:45:24', 1, NULL, NULL),
(46, '23511268\n', '20210528-23511268\n', 17, 6500, 2, 7000, 500, 14, '2021-05-28 20:16:57', 1, NULL, NULL),
(47, '99550234\n', '20210604-99550234\n', 18, 3530, 2, 4000, 470, 15, '2021-06-04 09:21:30', 1, NULL, NULL),
(48, '98900283\n', '20210604-98900283\n', 19, 15500, 2, 16000, 500, 16, '2021-06-04 09:24:31', 1, NULL, NULL),
(49, '23472667\n', '20210604-23472667\n', 20, 35000, 2, 40000, 5000, 17, '2021-06-04 10:02:26', 1, NULL, NULL),
(50, '99755642\n', '20210604-99755642\n', 21, 7000, 2, 10000, 3000, 18, '2021-06-04 10:04:15', 1, NULL, NULL),
(51, '78276108\n', '20210604-78276108\n', 22, 202000, 2, 210000, 8000, 19, '2021-06-04 21:07:13', 1, NULL, NULL),
(52, '65792072\n', '20210604-65792072\n', 23, 86000, 2, 90000, 4000, 20, '2021-06-04 21:30:04', 1, NULL, NULL),
(53, '10408119\n', '20210605-10408119\n', 24, 75000, 2, 80000, 5000, 21, '2021-06-05 16:07:25', 1, NULL, NULL),
(54, '82351504\n', '20210605-82351504\n', 25, 75000, 2, 80000, 5000, 22, '2021-06-05 16:11:07', 1, NULL, NULL),
(55, '79656511\n', '20210605-79656511\n', 26, 75000, 2, 100000, 25000, 23, '2021-06-05 16:14:12', 1, NULL, NULL),
(56, '21342184\n', '20210605-21342184\n', 27, 19000, 2, 20000, 1000, 24, '2021-06-05 16:21:55', 1, NULL, NULL),
(57, '62941898\n', '20210605-62941898\n', 28, 33500, 2, 35000, 1500, 25, '2021-06-05 17:17:13', 1, NULL, NULL),
(58, '72998875\n', '20210605-72998875\n', 29, 7500, 2, 8000, 500, 26, '2021-06-05 17:19:19', 1, NULL, NULL),
(59, '83543610\n', '20210606-83543610\n', 30, 7500, 2, 8000, 500, 27, '2021-06-06 16:09:42', 1, NULL, NULL),
(60, '64900395\n', '20210606-64900395\n', 31, 7500, 2, 9000, 1500, 28, '2021-06-06 16:14:57', 1, NULL, NULL),
(61, '89138386\n', '20210607-89138386\n', 32, 43000, 2, 45000, 2000, 29, '2021-06-07 19:01:46', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_type`
--

CREATE TABLE `sales_type` (
  `sales_type_id` int(11) NOT NULL,
  `sales_type_name` varchar(230) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_type`
--

INSERT INTO `sales_type` (`sales_type_id`, `sales_type_name`, `creator`, `date_created`, `changed_by`, `date_changed`) VALUES
(1, 'Wholesale Sales', 1, '2021-05-02 08:15:34', NULL, '2021-05-02 10:14:49'),
(2, 'Normal sales', 1, '2021-05-02 08:15:34', NULL, '2021-05-02 10:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_list`
--

CREATE TABLE `supplier_list` (
  `id` int(30) NOT NULL,
  `supplier_name` text NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier_list`
--

INSERT INTO `supplier_list` (`id`, `supplier_name`, `contact`, `address`) VALUES
(1, 'Supplier 1', '65524556', 'Sample Address'),
(3, 'Supplier 2', '6546531', 'Supplier2 Address');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Online Food Ordering System', 'info@sample.com', '+6948 8542 623', '1600654680_photo-1504674900247-0877df9cc836.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;ABOUT US&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/b&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#x2019;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;h2 style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;Where does it come from?&lt;/h2&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400;&quot;&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE `transaction_type` (
  `transaction_type_id` int(11) NOT NULL,
  `transaction_type_name` varchar(250) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_type`
--

INSERT INTO `transaction_type` (`transaction_type_id`, `transaction_type_name`, `creator`, `date_created`, `changed_by`, `date_changed`) VALUES
(1, 'Transaction In', 1, '2021-05-01 15:30:27', NULL, NULL),
(2, 'Transaction Out', 1, '2021-05-01 15:30:27', NULL, NULL),
(3, 'Expired', 1, '2021-05-01 15:35:19', NULL, NULL),
(4, 'Out of stock', 4, '2021-05-16 06:31:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type_list`
--

CREATE TABLE `type_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_list`
--

INSERT INTO `type_list` (`id`, `name`) VALUES
(1, 'Liquid'),
(2, 'Capsule'),
(3, 'Drops'),
(4, 'Inhalers'),
(5, 'Tablet'),
(6, 'Sample Type');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = cashier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1),
(4, 'John Smith', 'jsmith', 'jsmith123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wholesale_invoices`
--

CREATE TABLE `wholesale_invoices` (
  `wholesale_invoive_id` int(11) NOT NULL,
  `invoice_number` varchar(230) NOT NULL,
  `product_id` int(11) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `rate_price` double NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wholesale_invoices`
--

INSERT INTO `wholesale_invoices` (`wholesale_invoive_id`, `invoice_number`, `product_id`, `description`, `rate_price`, `item_quantity`, `total_amount`, `creator`, `date_created`, `changed_by`, `date_changed`) VALUES
(9, '36391445\n', 7, NULL, 40, 1, 40, 1, '2021-04-14 09:51:23', NULL, NULL),
(10, '85729639\n', 5, NULL, 10, 3, 30, 1, '2021-04-14 09:59:26', NULL, NULL),
(12, '00000000\n', 6, NULL, 25, 2, 50, 1, '2021-04-14 10:25:58', NULL, NULL),
(13, '72264346\n', 6, NULL, 25, 1, 25, 1, '2021-04-14 10:30:01', NULL, NULL),
(14, '72264346\n', 5, NULL, 10, 2, 20, 1, '2021-04-14 10:30:01', NULL, NULL),
(15, '76159681\n', 12, NULL, 250, 1, 250, 1, '2021-04-14 10:31:55', NULL, NULL),
(16, '76159681\n', 2, NULL, 5, 1, 5, 1, '2021-04-14 10:31:55', NULL, NULL),
(17, '29652797\n', 12, NULL, 250, 1, 250, 1, '2021-04-14 10:40:49', NULL, NULL),
(18, '29652797\n', 2, NULL, 5, 1, 5, 1, '2021-04-14 10:40:49', NULL, NULL),
(19, '29652797\n', 3, NULL, 750, 2, 1500, 1, '2021-04-14 10:40:49', NULL, NULL),
(20, '29652797\n', 6, NULL, 25, 3, 75, 1, '2021-04-14 10:40:49', NULL, NULL),
(21, '40889810\n', 6, NULL, 25, 1, 25, 1, '2021-04-14 11:02:56', NULL, NULL),
(22, '07943059\n', 2, NULL, 5, 1, 5, 1, '2021-04-15 12:14:35', NULL, NULL),
(23, '05517048\n', 3, NULL, 750, 1, 750, 1, '2021-04-15 12:16:03', NULL, NULL),
(24, '05517048\n', 6, NULL, 25, 2, 50, 1, '2021-04-15 12:16:03', NULL, NULL),
(25, '05517048\n', 5, NULL, 10, 1, 10, 1, '2021-04-15 12:16:03', NULL, NULL),
(26, '99417145\n', 3, NULL, 750, 1, 750, 1, '2021-04-15 12:19:54', NULL, NULL),
(27, '99417145\n', 4, NULL, 7, 1, 7, 1, '2021-04-15 12:19:54', NULL, NULL),
(28, '99417145\n', 6, NULL, 25, 10, 250, 1, '2021-04-15 12:19:54', NULL, NULL),
(29, '99417145\n', 5, NULL, 10, 1, 10, 1, '2021-04-15 12:19:54', NULL, NULL),
(30, '29414269\n', 2, NULL, 5, 1, 5, 1, '2021-04-15 12:26:33', NULL, NULL),
(31, '29414269\n', 3, NULL, 750, 1, 750, 1, '2021-04-15 12:26:33', NULL, NULL),
(32, '01040188\n', 3, NULL, 750, 1, 750, 1, '2021-04-15 10:05:34', NULL, NULL),
(33, '82370284\n', 2, NULL, 5, 1, 5, 1, '2021-04-15 10:16:37', NULL, NULL),
(34, '82370284\n', 3, NULL, 750, 1, 750, 1, '2021-04-15 10:16:37', NULL, NULL),
(35, '57494540\n', 2, NULL, 5, 1, 5, 1, '2021-04-15 10:18:52', NULL, NULL),
(36, '57494540\n', 3, NULL, 750, 1, 750, 1, '2021-04-15 10:18:52', NULL, NULL),
(37, '57494540\n', 6, NULL, 25, 1, 25, 1, '2021-04-15 10:18:52', NULL, NULL),
(38, '57494540\n', 5, NULL, 10, 1, 10, 1, '2021-04-15 10:18:52', NULL, NULL),
(39, '57494540\n', 7, NULL, 40, 1, 40, 1, '2021-04-15 10:18:52', NULL, NULL),
(40, '79306017\n', 12, NULL, 250, 1, 250, 1, '2021-04-15 10:20:26', NULL, NULL),
(41, '79306017\n', 2, NULL, 5, 1, 5, 1, '2021-04-15 10:20:26', NULL, NULL),
(42, '66802129\n', 2, NULL, 5, 1, 5, 1, '2021-04-15 04:35:32', NULL, NULL),
(43, '06556900\n', 2, NULL, 5, 1, 5, 1, '2021-04-15 04:37:20', NULL, NULL),
(44, '06556900\n', 12, NULL, 250, 2, 500, 1, '2021-04-15 04:37:20', NULL, NULL),
(45, '06556900\n', 6, NULL, 25, 1, 25, 1, '2021-04-15 04:37:20', NULL, NULL),
(46, '74120184\n', 2, NULL, 5, 1, 5, 1, '2021-04-15 08:41:47', NULL, NULL),
(47, '51537988\n', 3, NULL, 750, 1, 750, 1, '2021-04-15 08:42:08', NULL, NULL),
(48, '51537988\n', 12, NULL, 250, 1, 250, 1, '2021-04-15 08:42:08', NULL, NULL),
(49, '14526936\n', 2, NULL, 5, 1, 5, 1, '2021-04-16 02:39:14', NULL, NULL),
(50, '47053051\n', 2, NULL, 5, 1, 5, 1, '2021-04-16 02:44:23', NULL, NULL),
(51, '45657729\n', 2, NULL, 5, 1, 5, 1, '2021-04-16 03:27:24', NULL, NULL),
(52, '67700574\n', 6, NULL, 25, 1, 25, 1, '2021-04-16 03:30:59', NULL, NULL),
(53, '98661363\n', 2, NULL, 5, 1, 5, 1, '2021-04-16 04:15:44', NULL, NULL),
(54, '08625906\n', 8, NULL, 10, 1, 10, 1, '2021-04-16 04:29:20', NULL, NULL),
(55, '83725483\n', 3, NULL, 750, 1, 750, 1, '2021-04-16 04:31:48', NULL, NULL),
(56, '17064422\n', 6, NULL, 25, 1, 25, 1, '2021-04-17 03:21:44', NULL, NULL),
(57, '44102305\n', 2, NULL, 5, 1, 5, 1, '2021-04-18 01:02:26', NULL, NULL),
(58, '71141533\n', 3, NULL, 750, 1, 750, 1, '2021-04-18 01:08:21', NULL, NULL),
(59, '69346071\n', 3, NULL, 750, 1, 750, 1, '2021-04-18 01:17:00', NULL, NULL),
(60, '16341426\n', 22, NULL, 550, 1, 550, 1, '2021-04-18 01:18:30', NULL, NULL),
(61, '98979846\n', 6, NULL, 25, 1, 25, 1, '2021-04-18 01:26:18', NULL, NULL),
(62, '15960292\n', 22, NULL, 550, 1, 550, 1, '2021-04-18 01:28:04', NULL, NULL),
(63, '48817313\n', 12, NULL, 250, 1, 250, 1, '2021-04-18 01:30:59', NULL, NULL),
(64, '48817313\n', 3, NULL, 750, 2, 1500, 1, '2021-04-18 01:30:59', NULL, NULL),
(65, '48817313\n', 5, NULL, 10, 1, 10, 1, '2021-04-18 01:30:59', NULL, NULL),
(66, '48817313\n', 6, NULL, 25, 2, 50, 1, '2021-04-18 01:30:59', NULL, NULL),
(67, '48817313\n', 7, NULL, 40, 1, 40, 1, '2021-04-18 01:30:59', NULL, NULL),
(68, '48817313\n', 8, NULL, 10, 1, 10, 1, '2021-04-18 01:30:59', NULL, NULL),
(69, '27440333\n', 2, NULL, 5, 1, 5, 1, '2021-04-18 01:32:34', NULL, NULL),
(70, '27440333\n', 12, NULL, 250, 1, 250, 1, '2021-04-18 01:32:34', NULL, NULL),
(71, '27440333\n', 3, NULL, 750, 1, 750, 1, '2021-04-18 01:32:34', NULL, NULL),
(72, '25252858\n', 2, NULL, 5, 1, 5, 1, '2021-04-18 01:34:43', NULL, NULL),
(73, '18696771\n', 2, NULL, 5, 1, 5, 1, '2021-04-18 01:37:08', NULL, NULL),
(74, '97086345\n', 2, NULL, 5, 1, 5, 1, '2021-04-18 01:38:46', NULL, NULL),
(75, '18299826\n', 6, NULL, 25, 1, 25, 1, '2021-04-18 01:42:40', NULL, NULL),
(76, '18299826\n', 3, NULL, 750, 1, 750, 1, '2021-04-18 01:42:40', NULL, NULL),
(77, '12330000\n', 5, NULL, 10, 1, 10, 1, '2021-04-18 01:43:58', NULL, NULL),
(78, '12330000\n', 22, NULL, 550, 1, 550, 1, '2021-04-18 01:43:58', NULL, NULL),
(79, '69004445\n', 2, NULL, 5, 1, 5, 1, '2021-04-18 01:44:52', NULL, NULL),
(80, '69004445\n', 6, NULL, 25, 1, 25, 1, '2021-04-18 01:44:52', NULL, NULL),
(81, '12961571\n', 3, NULL, 750, 1, 750, 1, '2021-04-18 01:45:38', NULL, NULL),
(82, '11918727\n', 5, NULL, 10, 1, 10, 1, '2021-04-18 01:49:05', NULL, NULL),
(83, '63062002\n', 4, NULL, 7, 1, 7, 1, '2021-04-18 01:50:03', NULL, NULL),
(84, '34237282\n', 6, NULL, 25, 1, 25, 1, '2021-04-18 01:51:03', NULL, NULL),
(85, '60628616\n', 5, NULL, 10, 1, 10, 1, '2021-04-18 01:51:40', NULL, NULL),
(86, '60628616\n', 4, NULL, 7, 1, 7, 1, '2021-04-18 01:51:40', NULL, NULL),
(87, '05964671\n', 5, NULL, 10, 1, 10, 1, '2021-04-18 01:52:27', NULL, NULL),
(88, '05964671\n', 3, NULL, 750, 1, 750, 1, '2021-04-18 01:52:27', NULL, NULL),
(89, '44230771\n', 4, NULL, 7, 1, 7, 1, '2021-04-18 10:38:08', NULL, NULL),
(90, '75137225\n', 2, NULL, 5, 1, 5, 1, '2021-04-18 10:39:49', NULL, NULL),
(91, '38162721\n', 6, NULL, 25, 1, 25, 1, '2021-04-18 10:41:06', NULL, NULL),
(92, '79010526\n', 6, NULL, 25, 1, 25, 1, '2021-04-18 10:43:26', NULL, NULL),
(93, '65606269\n', 6, NULL, 25, 1, 25, 1, '2021-04-18 11:17:49', NULL, NULL),
(94, '03469052\n', 3, NULL, 750, 1, 750, 1, '2021-04-18 11:49:03', NULL, NULL),
(95, '95112155\n', 6, NULL, 25, 1, 25, 1, '2021-04-18 12:18:51', NULL, NULL),
(96, '42682075\n', 4, NULL, 7, 1, 7, 1, '2021-04-18 12:19:45', NULL, NULL),
(97, '18766077\n', 5, NULL, 10, 1, 10, 1, '2021-04-18 12:22:01', NULL, NULL),
(98, '66021005\n', 22, NULL, 550, 1, 550, 1, '2021-04-18 12:22:54', NULL, NULL),
(99, '85885597\n', 22, NULL, 550, 1, 550, 1, '2021-04-18 12:23:54', NULL, NULL),
(100, '72774902\n', 22, NULL, 550, 1, 550, 1, '2021-04-18 12:40:16', NULL, NULL),
(101, '09755242\n', 12, NULL, 250, 1, 250, 1, '2021-04-18 12:46:44', NULL, NULL),
(102, '57497099\n', 4, NULL, 7, 1, 7, 1, '2021-04-18 10:04:02', NULL, NULL),
(103, '25511166\n', 6, NULL, 25, 1, 25, 1, '2021-04-18 10:07:19', NULL, NULL),
(104, '14472860\n', 5, NULL, 10, 1, 10, 1, '2021-04-18 10:07:53', NULL, NULL),
(105, '09217745\n', 6, NULL, 25, 1, 25, 1, '2021-04-22 06:42:53', NULL, NULL),
(106, '94870082\n', 2, NULL, 5, 1, 5, 1, '2021-04-24 07:03:38', NULL, NULL),
(107, '19009998\n', 2, NULL, 5, 1, 5, 1, '2021-04-24 07:05:24', NULL, NULL),
(108, '19009998\n', 3, NULL, 750, 1, 750, 1, '2021-04-24 07:05:24', NULL, NULL),
(139, '06528334\n', 12, NULL, 250, 1, 250, 1, '2021-04-25 06:50:06', NULL, NULL),
(140, '06528334\n', 2, NULL, 5, 1, 5, 1, '2021-04-25 06:50:06', NULL, NULL),
(141, '06528334\n', 3, NULL, 750, 1, 750, 1, '2021-04-25 06:50:06', NULL, NULL),
(142, '06528334\n', 6, NULL, 25, 1, 25, 1, '2021-04-25 06:50:06', NULL, NULL),
(143, '06528334\n', 5, NULL, 10, 1, 10, 1, '2021-04-25 06:50:06', NULL, NULL),
(144, '06528334\n', 4, NULL, 7, 1, 7, 1, '2021-04-25 06:50:06', NULL, NULL),
(146, '06528334\n', 22, NULL, 550, 1, 550, 1, '2021-04-25 06:50:06', NULL, NULL),
(147, '06528334\n', 21, NULL, 6000, 1, 6000, 1, '2021-04-25 06:50:06', NULL, NULL),
(148, '06528334\n', 7, NULL, 40, 1, 40, 1, '2021-04-25 06:50:06', NULL, NULL),
(149, '06528334\n', 8, NULL, 10, 1, 10, 1, '2021-04-25 06:50:06', NULL, NULL),
(150, '09041709\n', 12, NULL, 250, 10, 2500, 1, '2021-04-28 04:17:56', NULL, NULL),
(151, '36613557\n', 12, NULL, 700, 100, 70000, 1, '2021-05-13 08:09:08', NULL, NULL),
(152, '36613557\n', 2, NULL, 750, 10, 7500, 1, '2021-05-13 08:09:08', NULL, NULL),
(153, '36613557\n', 3, NULL, 700, 1, 700, 1, '2021-05-13 08:09:08', NULL, NULL),
(154, '36613557\n', 6, NULL, 500, 2, 1000, 1, '2021-05-13 08:09:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `pharmacy_stock_sales`
--
DROP TABLE IF EXISTS `pharmacy_stock_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pharmacy_stock_sales`  AS SELECT `p`.`id` AS `product_id`, `p`.`name` AS `product_name`, `p`.`item_category_id` AS `item_category_id`, `c`.`item_category_name` AS `item_category_name`, `p`.`sku` AS `sku`, `p`.`drug_group_id` AS `drug_group_id`, `g`.`drug_group_name` AS `drug_group_name`, `p`.`item_units_id` AS `item_units_id`, `u`.`item_units_name` AS `item_units_name`, `p`.`creator` AS `creator`, `us`.`name` AS `product_creator`, `p`.`date_created` AS `products_date_created`, `psl`.`product_id` AS `product_sales_product_id`, `psl`.`qty` AS `product_qty`, `pl`.`price_list_buying_pice` AS `product_buying_price`, `psl`.`rate_price` AS `product_rate_price`, `psl`.`rate_price`- `pl`.`price_list_buying_pice` AS `product_rate_profit`, `psl`.`qty`* (`psl`.`rate_price` - `pl`.`price_list_buying_pice`) AS `product_total_profit`, `psl`.`total_amount` AS `product_total_amount`, `psl`.`sales_invoice_number` AS `product_sales_invoice_number`, `psl`.`creator` AS `product_sales_creator_id`, `uss`.`name` AS `product_sales_creator`, `psl`.`date_created` AS `product_sales_date_created`, `sl`.`customer_id` AS `customer_id`, `cu`.`customer_name` AS `product_sales_customer` FROM ((((((((((`product_list` `p` join `drug_group` `g` on(`g`.`drug_group_id` = `p`.`drug_group_id`)) join `item_categories` `c` on(`c`.`item_category_id` = `p`.`item_category_id`)) join `item_units` `u` on(`u`.`item_units_id` = `p`.`item_units_id`)) join `product_on_sales_lists` `psl` on(`psl`.`product_id` = `p`.`id`)) join `sales_list` `sl` on(`sl`.`sales_invoice_number` = `psl`.`sales_invoice_number`)) join `sales_type` `st` on(`st`.`sales_type_id` = `sl`.`sales_type`)) join `customers` `cu` on(`cu`.`customer_id` = `sl`.`customer_id`)) join `users` `us` on(`p`.`creator` = `us`.`id`)) join `users` `uss` on(`psl`.`creator` = `uss`.`id`)) join `price_list` `pl` on(`pl`.`product_id` = `p`.`id`)) WHERE `pl`.`voided` = 0 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customers_creator` (`creator`),
  ADD KEY `customers_changed_by` (`changed_by`);

--
-- Indexes for table `customer_list`
--
ALTER TABLE `customer_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_group`
--
ALTER TABLE `drug_group`
  ADD PRIMARY KEY (`drug_group_id`),
  ADD KEY `fk_drug_group_creator` (`creator`),
  ADD KEY `fk_drug_group_changed_by` (`changed_by`);

--
-- Indexes for table `expired_product`
--
ALTER TABLE `expired_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`item_category_id`),
  ADD KEY `fk_item_categories_changed_by` (`changed_by`),
  ADD KEY `fk_item_categories_creator` (`creator`) USING BTREE;

--
-- Indexes for table `item_units`
--
ALTER TABLE `item_units`
  ADD PRIMARY KEY (`item_units_id`),
  ADD KEY `fk_item_units_creator` (`creator`),
  ADD KEY `fk_item_units_changed_by` (`changed_by`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescription_id`),
  ADD KEY `fk_prescription_creator` (`creator`),
  ADD KEY `fk_prescription_changed_by` (`changed_by`);

--
-- Indexes for table `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`price_list_id`),
  ADD KEY `fk_price_list_product_id` (`product_id`),
  ADD KEY `fk_price_list_creator` (`creator`),
  ADD KEY `fk_price_list_changed_by` (`changed_by`),
  ADD KEY `fk_price_list_voided_by` (`voided_by`);

--
-- Indexes for table `product_by_batch`
--
ALTER TABLE `product_by_batch`
  ADD PRIMARY KEY (`product_by_batch_id`),
  ADD KEY `fk_product_by_batch_product_id` (`product_id`),
  ADD KEY `fk_product_by_batch_inventory_id` (`inventory_id`),
  ADD KEY `fk_product_by_batch_creator` (`creator`),
  ADD KEY `fk_product_by_batch_changed_by` (`changed_by`),
  ADD KEY `fk_product_by_batch_expired_confirmed_by` (`expired_confirmed_by`),
  ADD KEY `fk_product_by_batch_transaction_type_id` (`transaction_type_id`),
  ADD KEY `fk_product_by_batch_os_confirmed_by` (`os_confirmed_by`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk_product_list_creator` (`creator`),
  ADD KEY `fk_product_list_chnaged_by` (`changed_by`),
  ADD KEY `fk_product_list_type_id` (`item_units_id`),
  ADD KEY `fk_product_list_drug_group_id` (`drug_group_id`),
  ADD KEY `fk_product_list_item_category_id` (`item_category_id`);

--
-- Indexes for table `product_on_hand`
--
ALTER TABLE `product_on_hand`
  ADD PRIMARY KEY (`product_on_hand_id`),
  ADD KEY `product_on_hand_product-id` (`product_id`),
  ADD KEY `product_on_hand_sales_list_id` (`sales_list_id`),
  ADD KEY `product_on_hand_inventory_id` (`inventory_id`),
  ADD KEY `product_on_hand_transaction_type` (`transaction_type`),
  ADD KEY `product_on_hand_creator` (`creator`),
  ADD KEY `product_on_hand_changed_by` (`changed_by`);

--
-- Indexes for table `product_on_hand_after_transaction`
--
ALTER TABLE `product_on_hand_after_transaction`
  ADD PRIMARY KEY (`product_on_hand_after_transaction_id`);

--
-- Indexes for table `product_on_hand_by_batch`
--
ALTER TABLE `product_on_hand_by_batch`
  ADD PRIMARY KEY (`product_on_hand_by_batch_id`),
  ADD KEY `fk_product_on_hand_by_batch_product_id` (`product_id`),
  ADD KEY `fk_product_on_hand_by_batch_sales_list_id` (`sales_list_id`),
  ADD KEY `fk_product_on_hand_by_batch_invetory_id` (`inventory_id`),
  ADD KEY `fk_product_on_hand_by_batch_creator` (`creator`),
  ADD KEY `fk_product_on_hand_by_batch_changed_by` (`changed_by`),
  ADD KEY `fk_product_on_hand_by_batch_transaction_type` (`transaction_type`);

--
-- Indexes for table `product_on_sales_lists`
--
ALTER TABLE `product_on_sales_lists`
  ADD PRIMARY KEY (`product_on_sales_list_id`),
  ADD KEY `product_on_sales_lists_product_id` (`product_id`),
  ADD KEY `product_on_sales_lists_creator` (`creator`),
  ADD KEY `product_on_sales_lists_changed_by` (`changed_by`),
  ADD KEY `product_on_sales_lists_sales_invoive_number` (`sales_invoice_number`);

--
-- Indexes for table `profroma_invoice`
--
ALTER TABLE `profroma_invoice`
  ADD PRIMARY KEY (`profroma_invoice_id`),
  ADD KEY `profroma_invoice_invoice_number` (`invoice_number`),
  ADD KEY `profroma_invoice_creator` (`creator`),
  ADD KEY `profroma_invoice_changed_by` (`changed_by`);

--
-- Indexes for table `receiving_list`
--
ALTER TABLE `receiving_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_list`
--
ALTER TABLE `sales_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_invoice_number` (`sales_invoice_number`),
  ADD KEY `fk_sales_list_creator` (`creator`),
  ADD KEY `fk_sales_list_customer_id` (`customer_id`),
  ADD KEY `fk_sales_list_sales_type` (`sales_type`),
  ADD KEY `fk_sales_list_prescription` (`prescription`);

--
-- Indexes for table `sales_type`
--
ALTER TABLE `sales_type`
  ADD PRIMARY KEY (`sales_type_id`),
  ADD KEY `sales_type_creator` (`creator`),
  ADD KEY `sales_type_changed_by` (`changed_by`);

--
-- Indexes for table `supplier_list`
--
ALTER TABLE `supplier_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_type`
--
ALTER TABLE `transaction_type`
  ADD PRIMARY KEY (`transaction_type_id`),
  ADD KEY `transaction_type_creator` (`creator`),
  ADD KEY `transaction_type_changed_by` (`changed_by`);

--
-- Indexes for table `type_list`
--
ALTER TABLE `type_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wholesale_invoices`
--
ALTER TABLE `wholesale_invoices`
  ADD PRIMARY KEY (`wholesale_invoive_id`),
  ADD KEY `wholesale_invoice_creator` (`creator`),
  ADD KEY `wholesale_invoice_changed_by` (`changed_by`),
  ADD KEY `wholesale_invoice_product_id` (`product_id`),
  ADD KEY `wholesale_invoice_invoice_number` (`invoice_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `customer_list`
--
ALTER TABLE `customer_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `drug_group`
--
ALTER TABLE `drug_group`
  MODIFY `drug_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `expired_product`
--
ALTER TABLE `expired_product`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `item_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item_units`
--
ALTER TABLE `item_units`
  MODIFY `item_units_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `prescription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `price_list`
--
ALTER TABLE `price_list`
  MODIFY `price_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_by_batch`
--
ALTER TABLE `product_by_batch`
  MODIFY `product_by_batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_on_hand`
--
ALTER TABLE `product_on_hand`
  MODIFY `product_on_hand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `product_on_hand_after_transaction`
--
ALTER TABLE `product_on_hand_after_transaction`
  MODIFY `product_on_hand_after_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_on_hand_by_batch`
--
ALTER TABLE `product_on_hand_by_batch`
  MODIFY `product_on_hand_by_batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `product_on_sales_lists`
--
ALTER TABLE `product_on_sales_lists`
  MODIFY `product_on_sales_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `profroma_invoice`
--
ALTER TABLE `profroma_invoice`
  MODIFY `profroma_invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `receiving_list`
--
ALTER TABLE `receiving_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sales_list`
--
ALTER TABLE `sales_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `sales_type`
--
ALTER TABLE `sales_type`
  MODIFY `sales_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier_list`
--
ALTER TABLE `supplier_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction_type`
--
ALTER TABLE `transaction_type`
  MODIFY `transaction_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `type_list`
--
ALTER TABLE `type_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wholesale_invoices`
--
ALTER TABLE `wholesale_invoices`
  MODIFY `wholesale_invoive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customers_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drug_group`
--
ALTER TABLE `drug_group`
  ADD CONSTRAINT `fk_drug_group_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_drug_group_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD CONSTRAINT `	fk_item_categories_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_item_categories_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_units`
--
ALTER TABLE `item_units`
  ADD CONSTRAINT `fk_item_units_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_item_units_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `fk_prescription_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prescription_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `price_list`
--
ALTER TABLE `price_list`
  ADD CONSTRAINT `fk_price_list_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_price_list_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_price_list_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_price_list_voided_by` FOREIGN KEY (`voided_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_by_batch`
--
ALTER TABLE `product_by_batch`
  ADD CONSTRAINT `fk_product_by_batch_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_by_batch_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_by_batch_expired_confirmed_by` FOREIGN KEY (`expired_confirmed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_by_batch_inventory_id` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_by_batch_os_confirmed_by` FOREIGN KEY (`os_confirmed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_by_batch_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_by_batch_transaction_type_id` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_type` (`transaction_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `fk_product_list_chnaged_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_list_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_list_drug_group_id` FOREIGN KEY (`drug_group_id`) REFERENCES `drug_group` (`drug_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_list_item_category_id` FOREIGN KEY (`item_category_id`) REFERENCES `item_categories` (`item_category_id`),
  ADD CONSTRAINT `fk_products_item_units` FOREIGN KEY (`item_units_id`) REFERENCES `item_units` (`item_units_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_on_hand`
--
ALTER TABLE `product_on_hand`
  ADD CONSTRAINT `product_on_hand_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_on_hand_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_on_hand_inventory_id` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_on_hand_product-id` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_on_hand_sales_list_id` FOREIGN KEY (`sales_list_id`) REFERENCES `sales_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_on_hand_transaction_type` FOREIGN KEY (`transaction_type`) REFERENCES `transaction_type` (`transaction_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_on_hand_by_batch`
--
ALTER TABLE `product_on_hand_by_batch`
  ADD CONSTRAINT `fk_product_on_hand_by_batch_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_on_hand_by_batch_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_on_hand_by_batch_invetory_id` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_on_hand_by_batch_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_on_hand_by_batch_sales_list_id` FOREIGN KEY (`sales_list_id`) REFERENCES `sales_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_on_hand_by_batch_transaction_type` FOREIGN KEY (`transaction_type`) REFERENCES `transaction_type` (`transaction_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_on_sales_lists`
--
ALTER TABLE `product_on_sales_lists`
  ADD CONSTRAINT `product_on_sales_lists_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_on_sales_lists_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_on_sales_lists_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_on_sales_lists_sales_invoive_number` FOREIGN KEY (`sales_invoice_number`) REFERENCES `sales_list` (`sales_invoice_number`);

--
-- Constraints for table `profroma_invoice`
--
ALTER TABLE `profroma_invoice`
  ADD CONSTRAINT `profroma_invoice_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profroma_invoice_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_list`
--
ALTER TABLE `sales_list`
  ADD CONSTRAINT `fk_sales_list_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_sales_list_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sales_list_prescription` FOREIGN KEY (`prescription`) REFERENCES `prescription` (`prescription_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sales_list_sales_type` FOREIGN KEY (`sales_type`) REFERENCES `sales_type` (`sales_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_type`
--
ALTER TABLE `sales_type`
  ADD CONSTRAINT `sales_type_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_type_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_type`
--
ALTER TABLE `transaction_type`
  ADD CONSTRAINT `transaction_type_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_type_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wholesale_invoices`
--
ALTER TABLE `wholesale_invoices`
  ADD CONSTRAINT `wholesale_invoice_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wholesale_invoice_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wholesale_invoice_invoice_number` FOREIGN KEY (`invoice_number`) REFERENCES `profroma_invoice` (`invoice_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wholesale_invoice_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
