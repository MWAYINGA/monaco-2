-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 07:56 PM
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
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
(7, 'CNS', '2021-03-29 02:57:40', 1, NULL, NULL),
(8, 'Sample Category', '2021-03-29 02:57:40', 1, NULL, NULL),
(10, 'Pain killer', '2021-04-06 07:57:25', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expired_product`
--

CREATE TABLE `expired_product` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `date_expired` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expired_product`
--

INSERT INTO `expired_product` (`id`, `product_id`, `qty`, `date_expired`, `date_created`) VALUES
(3, 6, 5, '2020-10-05', '2020-10-09 08:20:08'),
(4, 13, 300, '2021-04-05', '2021-04-05 12:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1= stockin , 2 = stockout',
  `stock_from` varchar(100) NOT NULL COMMENT 'sales/receiving',
  `form_id` int(30) NOT NULL,
  `expiry_date` date NOT NULL,
  `expired_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `other_details` text NOT NULL,
  `remarks` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `qty`, `type`, `stock_from`, `form_id`, `expiry_date`, `expired_confirmed`, `other_details`, `remarks`, `date_updated`) VALUES
(1, 3, 500, 1, 'receiving', 1, '2021-12-03', 0, '{\"price\":\"5\",\"qty\":\"500\"}', 'Stock from Receiving-83386962\r\n', '2020-10-08 10:55:21'),
(2, 2, 500, 1, 'receiving', 1, '2021-11-11', 0, '{\"price\":\"5\",\"qty\":\"500\"}', 'Stock from Receiving-83386962\r\n', '2020-10-08 10:55:21'),
(3, 6, 300, 1, 'receiving', 1, '2021-10-06', 0, '{\"price\":\"20\",\"qty\":\"300\"}', 'Stock from Receiving-83386962\r\n', '2020-10-08 10:55:21'),
(4, 5, 300, 1, 'receiving', 1, '2021-11-09', 0, '{\"price\":\"10\",\"qty\":\"300\"}', 'Stock from Receiving-83386962\r\n', '2020-10-08 10:55:21'),
(5, 4, 500, 1, 'receiving', 2, '2022-10-14', 0, '{\"price\":\"8\",\"qty\":\"500\"}', 'Stock from Receiving-00000000\r\n', '2021-04-05 00:00:06'),
(6, 6, 10, 1, 'receiving', 2, '2020-10-05', 1, '{\"price\":\"18\",\"qty\":\"10\"}', 'Stock from Receiving-00000000\r\n', '2021-04-05 00:00:06'),
(8, 3, 1, 2, 'Sales', 2, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"1\"}', 'Stock out from Sales-00000000\n', '2020-10-08 13:23:13'),
(9, 5, 20, 2, 'Sales', 2, '0000-00-00', 0, '{\"price\":\"15\",\"qty\":\"20\"}', 'Stock out from Sales-00000000\n', '2020-10-08 13:23:13'),
(10, 3, 20, 2, 'Sales', 3, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"20\"}', 'Stock out from Sales-74800422\n', '2020-10-08 13:42:29'),
(11, 3, 10, 2, 'Sales', 4, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"10\"}', 'Stock out from Sales-01966403\n', '2020-10-08 13:43:08'),
(12, 8, 500, 1, 'receiving', 3, '2021-04-29', 0, '{\"price\":\"10\",\"qty\":\"500\"}', 'Stock from Receiving-95300488\n', '2020-10-09 08:17:29'),
(13, 8, 10, 2, 'Sales', 5, '0000-00-00', 0, '{\"price\":\"15\",\"qty\":\"10\"}', 'Stock out from Sales-16232790\n', '2020-10-09 08:19:04'),
(14, 3, 10, 2, 'Sales', 5, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"10\"}', 'Stock out from Sales-16232790\n', '2020-10-09 08:19:04'),
(15, 2, 23, 2, 'Sales', 6, '0000-00-00', 0, '{\"price\":\"7\",\"qty\":\"23\"}', 'Stock out from Sales-21170008\n', '2021-03-28 00:54:34'),
(16, 4, 23, 2, 'Sales', 6, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"23\"}', 'Stock out from Sales-21170008\n', '2021-03-28 00:54:34'),
(17, 8, 1, 2, 'Sales', 6, '0000-00-00', 0, '{\"price\":\"15\",\"qty\":\"1\"}', 'Stock out from Sales-21170008\n', '2021-03-28 00:54:34'),
(18, 8, 1000, 1, 'receiving', 4, '2021-03-28', 1, '{\"price\":\"500\",\"qty\":\"1000\"}', 'Stock from Receiving-53281868\r\n', '2021-03-29 13:38:14'),
(19, 7, 1000, 1, 'receiving', 5, '2021-03-27', 0, '{\"price\":\"400\",\"qty\":\"1000\"}', 'Stock from Receiving-10603121\r\n', '2021-03-28 08:11:26'),
(20, 3, 6, 2, 'Sales', 7, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"6\"}', 'Stock out from Sales-43098642\n', '2021-03-28 15:34:31'),
(21, 3, 3, 2, 'Sales', 8, '0000-00-00', 0, '{\"price\":\"10\",\"qty\":\"3\"}', 'Stock out from Sales-91222506\n', '2021-04-01 18:16:52'),
(22, 6, 3, 2, 'Sales', 9, '0000-00-00', 0, '{\"price\":\"30\",\"qty\":\"3\"}', 'Stock out from Sales-50593372\n', '2021-04-02 16:38:17'),
(23, 12, 500, 1, 'receiving', 6, '2022-02-28', 0, '{\"price\":\"7000\",\"qty\":\"500\"}', 'Stock from Receiving-45696416\n', '2021-04-05 10:35:27'),
(24, 13, 300, 1, 'receiving', 7, '2021-04-05', 1, '{\"price\":\"250\",\"qty\":\"300\"}', 'Stock from Receiving-25240605\n', '2021-04-05 12:56:35'),
(25, 12, 400, 1, 'receiving', 7, '0000-00-00', 0, '{\"price\":\"250\",\"qty\":\"400\"}', 'Stock from Receiving-25240605\r\n', '2021-04-05 10:37:30'),
(26, 7, 100, 1, 'receiving', 8, '2022-03-31', 0, '{\"price\":\"300\",\"qty\":\"100\"}', 'Stock from Receiving-61488916\n', '2021-04-06 15:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `item_category_id` int(11) NOT NULL,
  `item_category_name` varchar(200) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `item_category_id` int(11) NOT NULL,
  `drug_group_id` int(11) NOT NULL,
  `item_units_id` int(11) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `price` double NOT NULL,
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
(2, 1, 4, 2, '32563070', 7, 5, 'Amoxicillin 250', '250mg', 'sample', 1, 1, '2021-04-03 12:31:35', 1, '2021-04-05 11:41:58'),
(3, 1, 4, 2, '59118534', 15, 9, 'Cephalexin 250', '250mg', 'Sample', 0, 1, '2021-04-03 12:31:38', 1, '2021-04-05 11:40:18'),
(4, 1, 3, 5, '89612125', 10, 7, 'Hydromorphone 2', '2mg', 'Sample', 0, 1, '2021-04-03 12:31:40', NULL, NULL),
(5, 1, 3, 5, '90433847', 15, 10, 'Demerol 50', '50mg', 'Sample', 0, 1, '2021-04-03 12:31:42', NULL, NULL),
(6, 1, 3, 5, '30410592', 30, 25, 'Demerol 100', '100mg', 'Sample', 1, 1, '2021-04-03 12:31:44', NULL, NULL),
(7, 2, 1, 5, '15196587\n', 50, 40, 'Pyridoxine 50', '50mg', 'Sample', 0, 1, '2021-04-03 12:31:47', NULL, NULL),
(8, 1, 8, 6, '57429604', 15, 10, 'Sample Med', '500mg', 'Sample only', 1, 1, '2021-04-03 12:31:49', 1, '2021-04-06 08:20:33'),
(12, 1, 4, 5, '17115663', 400, 250, 'AMITRIPTYLINE 25MG ', '25mg', 'doagnostic', 1, 1, '2021-04-04 07:13:27', NULL, NULL),
(13, 1, 3, 5, '85914541', 10000, 7500, 'prenisolin', 'tablets', 'sample', 1, 1, '2021-04-05 11:24:38', 1, '2021-04-05 11:24:38'),
(14, 1, 7, 1, '74584656', 15000, 10000, 'LISTERINE', 'bottle', 'mounth wash', 1, 1, '2021-04-05 11:17:39', 1, '2021-04-05 11:17:39'),
(21, 3, 8, 11, '43419277', 10000, 8000, 'perfume', 'bottle', 'for men', 0, 1, '2021-04-06 08:18:18', 1, '2021-04-06 08:19:46');

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
  `changed_by` int(11) NOT NULL,
  `date_changed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(8, '61488916\n', 3, 30000, '2021-04-06 15:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `sales_list`
--

CREATE TABLE `sales_list` (
  `id` int(30) NOT NULL,
  `ref_no` varchar(30) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `amount_tendered` double NOT NULL,
  `amount_change` double NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_list`
--

INSERT INTO `sales_list` (`id`, `ref_no`, `customer_id`, `total_amount`, `amount_tendered`, `amount_change`, `date_updated`) VALUES
(2, '00000000\n', 0, 310, 400, 90, '2020-10-08 13:23:13'),
(3, '74800422\n', 0, 200, 200, 0, '2020-10-08 13:42:29'),
(4, '01966403\n', 0, 100, 100, 0, '2020-10-08 13:43:08'),
(5, '16232790\n', 1, 250, 300, 50, '2020-10-09 08:19:04'),
(6, '21170008\n', 1, 406, 406, 0, '2021-03-28 00:54:34'),
(7, '43098642\n', 0, 60, 20, -40, '2021-03-28 15:34:31'),
(8, '91222506\n', 0, 30, 40, 10, '2021-04-01 18:16:52'),
(9, '50593372\n', 0, 90, 60, -30, '2021-04-02 16:38:17');

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
(3, 'Supplier 2', '6546531', 'Supplier2 Address'),
(4, 'Supplier 3', '85655466', 'Sample supplier address');

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
  `description` varchar(250) NOT NULL,
  `rate_price` double NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_list_creator` (`creator`),
  ADD KEY `fk_product_list_chnaged_by` (`changed_by`),
  ADD KEY `fk_product_list_type_id` (`item_units_id`),
  ADD KEY `fk_product_list_drug_group_id` (`drug_group_id`),
  ADD KEY `fk_product_list_item_category_id` (`item_category_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `wholesale_invoice_creator` (`creator`),
  ADD KEY `wholesale_invoice_changed_by` (`changed_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer_list`
--
ALTER TABLE `customer_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `drug_group`
--
ALTER TABLE `drug_group`
  MODIFY `drug_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `expired_product`
--
ALTER TABLE `expired_product`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `item_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item_units`
--
ALTER TABLE `item_units`
  MODIFY `item_units_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `profroma_invoice`
--
ALTER TABLE `profroma_invoice`
  MODIFY `profroma_invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receiving_list`
--
ALTER TABLE `receiving_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales_list`
--
ALTER TABLE `sales_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `wholesale_invoive_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `fk_product_list_category_id` FOREIGN KEY (`drug_group_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_list_chnaged_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_list_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_list_drug_group_id` FOREIGN KEY (`drug_group_id`) REFERENCES `drug_group` (`drug_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_list_item_category_id` FOREIGN KEY (`item_category_id`) REFERENCES `item_categories` (`item_category_id`),
  ADD CONSTRAINT `fk_products_item_units` FOREIGN KEY (`item_units_id`) REFERENCES `item_units` (`item_units_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profroma_invoice`
--
ALTER TABLE `profroma_invoice`
  ADD CONSTRAINT `profroma_invoice_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profroma_invoice_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profroma_invoice_invoice_number` FOREIGN KEY (`invoice_number`) REFERENCES `wholesale_invoices` (`invoice_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wholesale_invoices`
--
ALTER TABLE `wholesale_invoices`
  ADD CONSTRAINT `wholesale_invoice_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wholesale_invoice_creator` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
