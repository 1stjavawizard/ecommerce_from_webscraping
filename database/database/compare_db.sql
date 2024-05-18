-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 06:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `compare_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--
CREATE DATABASE compare_db;
use compare_db;
CREATE TABLE `prices` (
  `price_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `price` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`price_id`, `product_id`, `site_id`, `price`, `date`) VALUES
(1, 2, 2, '£549.00', '2023-12-03 22:53:47'),
(2, 3, 3, '£549.00', '2023-12-03 22:53:47'),
(3, 4, 4, '£649.00', '2023-12-03 22:53:47'),
(4, 5, 5, '£549.00', '2023-12-03 22:53:47'),
(5, 6, 6, '£549.00', '2023-12-03 22:53:47'),
(6, 7, 7, '£549.00', '2023-12-03 22:53:47'),
(7, 8, 8, '£199.99', '2023-12-03 22:53:47'),
(17, 20, 19, '$223.19', '2023-12-03 23:03:39'),
(18, 21, 20, '$144.14', '2023-12-03 23:03:39'),
(19, 22, 21, '$244.95', '2023-12-03 23:03:39'),
(20, 23, 22, '$179.95', '2023-12-03 23:03:39'),
(21, 24, 23, '$177.00', '2023-12-03 23:03:39'),
(22, 25, 24, '$416.00', '2023-12-03 23:03:39'),
(23, 26, 25, '$259.95', '2023-12-03 23:03:39'),
(24, 27, 26, '$93.00', '2023-12-03 23:03:39'),
(25, 28, 27, '$301.00', '2023-12-03 23:03:39'),
(26, 29, 28, '$299.99', '2023-12-03 23:03:39'),
(27, 30, 29, '$149.94', '2023-12-03 23:03:39'),
(28, 31, 30, '$179.94', '2023-12-03 23:03:39'),
(29, 32, 31, '$229.99', '2023-12-03 23:03:39'),
(30, 33, 32, '$229.95', '2023-12-03 23:03:39'),
(31, 34, 33, '$296.00', '2023-12-03 23:03:39'),
(32, 35, 34, '$144.95', '2023-12-03 23:03:39'),
(33, 36, 35, '$172.00', '2023-12-03 23:03:39'),
(34, 37, 36, '$38.00', '2023-12-03 23:03:39'),
(35, 38, 37, '$189.99', '2023-12-03 23:03:39'),
(36, 39, 38, '$37.00', '2023-12-03 23:03:39'),
(37, 40, 39, '$517.00', '2023-12-03 23:03:39'),
(38, 41, 40, '$204.00', '2023-12-03 23:03:39'),
(39, 42, 41, '$449.99', '2023-12-03 23:03:39'),
(40, 43, 42, '$474.00', '2023-12-03 23:03:39'),
(41, 44, 43, '$609.00', '2023-12-03 23:03:39'),
(42, 45, 44, '$47.00', '2023-12-03 23:03:39'),
(43, 46, 45, '$379.99', '2023-12-03 23:03:39'),
(44, 47, 46, '$349.99', '2023-12-03 23:03:39'),
(45, 48, 47, '$204.95', '2023-12-03 23:03:39'),
(46, 49, 48, '$380.00', '2023-12-03 23:03:39'),
(47, 50, 49, '$139.95', '2023-12-03 23:03:39'),
(48, 51, 50, '$879.00', '2023-12-03 23:03:39'),
(49, 52, 51, '$799.99', '2023-12-03 23:03:39'),
(50, 53, 52, '$242.50', '2023-12-03 23:03:39'),
(51, 54, 53, '$229.95', '2023-12-03 23:03:39'),
(52, 55, 54, '$544.99', '2023-12-03 23:03:39'),
(53, 56, 55, '$344.99', '2023-12-03 23:03:39'),
(54, 57, 56, '$89.99', '2023-12-03 23:03:39'),
(55, 58, 57, '$194.95', '2023-12-03 23:03:39'),
(56, 59, 58, '$199.99', '2023-12-03 23:03:39'),
(57, 60, 59, '$32.99', '2023-12-03 23:03:39'),
(58, 61, 60, '$318.00', '2023-12-03 23:03:39'),
(59, 62, 61, '$239.95', '2023-12-03 23:03:39'),
(60, 63, 62, '$279.95', '2023-12-03 23:03:39'),
(61, 64, 63, '$259.95', '2023-12-03 23:03:39'),
(62, 65, 64, '$24.00', '2023-12-03 23:03:39'),
(63, 66, 65, '$389.95', '2023-12-03 23:03:39'),
(64, 67, 66, 'Now$31995', '2023-12-03 23:07:52'),
(65, 71, 67, '$179.95', '2023-12-04 02:48:05'),
(66, 72, 68, '$244.95', '2023-12-04 02:48:06'),
(67, 73, 69, '$177.00', '2023-12-04 02:48:06'),
(68, 74, 70, '$229.95', '2023-12-04 02:48:06'),
(69, 75, 71, '$416.00', '2023-12-04 02:48:06'),
(70, 76, 72, '$259.95', '2023-12-04 02:48:06'),
(71, 77, 73, '$93.00', '2023-12-04 02:48:06'),
(72, 78, 74, '$179.94', '2023-12-04 02:48:06'),
(73, 79, 75, '$299.99', '2023-12-04 02:48:06'),
(74, 80, 76, '$301.00', '2023-12-04 02:48:06'),
(75, 81, 77, '$229.99', '2023-12-04 02:48:06'),
(76, 82, 78, '$172.00', '2023-12-04 02:48:06'),
(77, 83, 79, '$149.94', '2023-12-04 02:48:06'),
(78, 84, 80, '$144.95', '2023-12-04 02:48:06'),
(79, 85, 81, '$296.00', '2023-12-04 02:48:06'),
(80, 86, 82, '$204.95', '2023-12-04 02:48:06'),
(81, 87, 83, '$38.00', '2023-12-04 02:48:06'),
(82, 88, 84, '$189.99', '2023-12-04 02:48:06'),
(83, 89, 85, '$279.95', '2023-12-04 02:48:06'),
(84, 90, 86, '$517.00', '2023-12-04 02:48:06'),
(85, 91, 87, '$474.00', '2023-12-04 02:48:06'),
(86, 92, 88, '$37.00', '2023-12-04 02:48:06'),
(87, 93, 89, '$242.50', '2023-12-04 02:48:06'),
(88, 94, 90, '$449.99', '2023-12-04 02:48:06'),
(89, 95, 91, '$204.00', '2023-12-04 02:48:06'),
(90, 96, 92, '$47.00', '2023-12-04 02:48:06'),
(91, 97, 93, '$379.99', '2023-12-04 02:48:06'),
(92, 98, 94, '$879.00', '2023-12-04 02:48:06'),
(93, 99, 95, '$139.95', '2023-12-04 02:48:06'),
(94, 100, 96, '$380.00', '2023-12-04 02:48:06'),
(95, 101, 97, '$194.95', '2023-12-04 02:48:06'),
(96, 102, 98, '$89.99', '2023-12-04 02:48:06'),
(97, 103, 99, '$544.99', '2023-12-04 02:48:06'),
(98, 104, 100, '$144.99', '2023-12-04 02:48:06'),
(99, 105, 101, '$199.99', '2023-12-04 02:48:06'),
(100, 106, 102, '$32.99', '2023-12-04 02:48:06'),
(101, 107, 103, '$799.99', '2023-12-04 02:48:06'),
(102, 108, 104, '$318.00', '2023-12-04 02:48:06'),
(103, 109, 105, '$349.99', '2023-12-04 02:48:06'),
(104, 110, 106, '$174.00', '2023-12-04 02:48:06'),
(105, 111, 107, '$609.00', '2023-12-04 02:48:06'),
(106, 112, 108, '$239.95', '2023-12-04 02:48:06'),
(107, 113, 109, '$384.99', '2023-12-04 02:48:06'),
(108, 114, 110, '$279.95', '2023-12-04 02:48:06'),
(109, 115, 111, '$589.95', '2023-12-04 02:48:06'),
(110, 116, 112, '$24.00', '2023-12-04 02:48:06'),
(111, 117, 113, '$259.95', '2023-12-04 02:48:06'),
(112, 118, 114, '$389.95', '2023-12-04 02:48:06'),
(113, 119, 115, '£549.00', '2023-12-04 02:48:14'),
(114, 120, 116, '£549.00', '2023-12-04 02:48:14'),
(115, 121, 117, '£649.00', '2023-12-04 02:48:14'),
(116, 122, 118, '£549.00', '2023-12-04 02:48:14'),
(117, 123, 119, '£549.00', '2023-12-04 02:48:14'),
(118, 124, 120, '£549.00', '2023-12-04 02:48:14'),
(119, 125, 121, '£199.99', '2023-12-04 02:48:14'),
(120, 126, 122, 'Now$32495', '2023-12-04 03:10:36'),
(121, 127, 123, '$179.95', '2023-12-04 03:11:05'),
(122, 128, 124, '$244.95', '2023-12-04 03:11:05'),
(123, 129, 125, '$177.00', '2023-12-04 03:11:05'),
(124, 130, 126, '$229.95', '2023-12-04 03:11:05'),
(125, 131, 127, '$416.00', '2023-12-04 03:11:05'),
(126, 132, 128, '$93.00', '2023-12-04 03:11:05'),
(127, 133, 129, '$259.95', '2023-12-04 03:11:05'),
(128, 134, 130, '$301.00', '2023-12-04 03:11:05'),
(129, 135, 131, '$229.99', '2023-12-04 03:11:05'),
(130, 136, 132, '$299.99', '2023-12-04 03:11:05'),
(131, 137, 133, '$38.00', '2023-12-04 03:11:05'),
(132, 138, 134, '$189.99', '2023-12-04 03:11:05'),
(133, 139, 135, '$179.94', '2023-12-04 03:11:05'),
(134, 140, 136, '$172.00', '2023-12-04 03:11:05'),
(135, 141, 137, '$144.95', '2023-12-04 03:11:05'),
(136, 142, 138, '$296.00', '2023-12-04 03:11:05'),
(137, 143, 139, '$517.00', '2023-12-04 03:11:05'),
(138, 144, 140, '$474.00', '2023-12-04 03:11:05'),
(139, 145, 141, '$149.94', '2023-12-04 03:11:05'),
(140, 146, 142, '$279.95', '2023-12-04 03:11:05'),
(141, 147, 143, '$204.00', '2023-12-04 03:11:05'),
(142, 148, 144, '$37.00', '2023-12-04 03:11:05'),
(143, 149, 145, '$449.99', '2023-12-04 03:11:05'),
(144, 150, 146, '$245.00', '2023-12-04 03:11:05'),
(145, 151, 147, '$879.00', '2023-12-04 03:11:05'),
(146, 152, 148, '$379.99', '2023-12-04 03:11:05'),
(147, 153, 149, '$544.99', '2023-12-04 03:11:05'),
(148, 154, 150, '$47.00', '2023-12-04 03:11:05'),
(149, 155, 151, '$139.95', '2023-12-04 03:11:05'),
(150, 156, 152, '$194.95', '2023-12-04 03:11:05'),
(151, 157, 153, '$204.95', '2023-12-04 03:11:05'),
(152, 158, 154, '$380.00', '2023-12-04 03:11:05'),
(153, 159, 155, '$799.99', '2023-12-04 03:11:05'),
(154, 160, 156, '$144.99', '2023-12-04 03:11:05'),
(155, 161, 157, '$318.00', '2023-12-04 03:11:05'),
(156, 162, 158, '$32.99', '2023-12-04 03:11:05'),
(157, 163, 159, '$199.99', '2023-12-04 03:11:05'),
(158, 164, 160, '$24.00', '2023-12-04 03:11:05'),
(159, 165, 161, '$89.99', '2023-12-04 03:11:05'),
(160, 166, 162, '$349.99', '2023-12-04 03:11:05'),
(161, 167, 163, '$384.99', '2023-12-04 03:11:05'),
(162, 168, 164, '$589.95', '2023-12-04 03:11:05'),
(163, 169, 165, '$389.95', '2023-12-04 03:11:05'),
(164, 170, 166, '$500.00', '2023-12-04 03:11:05'),
(165, 171, 167, '$369.95', '2023-12-04 03:11:05'),
(166, 172, 168, '$569.95', '2023-12-04 03:11:05'),
(167, 173, 169, '$839.99', '2023-12-04 03:11:05'),
(168, 174, 170, '$59.99', '2023-12-04 03:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `image`) VALUES
(1, 'SIM Free iPhone 13 5G 128GB Mobile Phone - Midnight', 'https://media.4rgos.it/s/Argos/9520062_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(2, 'SIM Free iPhone 13 5G 128GB Mobile Phone - Midnight', 'https://media.4rgos.it/s/Argos/9520062_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(3, 'SIM Free iPhone 13 5G 128GB Mobile Phone - Blue', 'https://media.4rgos.it/s/Argos/9520055_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(4, 'SIM Free iPhone 14 5G 128GB Mobile Phone - Midnight', 'https://media.4rgos.it/s/Argos/1186947_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(5, 'SIM Free iPhone 13 5G 128GB Mobile Phone - Starlight', 'https://media.4rgos.it/s/Argos/9520141_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(6, 'SIM Free iPhone 13 5G 128GB Mobile Phone - Pink', 'https://media.4rgos.it/s/Argos/9520103_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(7, 'SIM Free iPhone 13 5G 128GB Mobile Phone - Green', 'https://media.4rgos.it/s/Argos/1959143_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(8, 'SIM Free Refurbished iPhone SE 2020 64GB Mobile Phone Black', 'https:https://media.4rgos.it/i/Argos/new_badge?h=25&qlt=90&fmt.jpeg.interlaced=true'),
(20, 'Apple iPhone 8 (Excellent Condition) Factory Unlocked, ATT, TMobile, Verizon GSM', 'https://i.ebayimg.com/thumbs/images/g/4EsAAOSwd35lZLZS/s-l300.jpg'),
(21, 'Apple iPhone 8 (Great Condition) Factory Unlocked, AT&T, T-Mobile or Verizon', 'https://i.ebayimg.com/thumbs/images/g/hNYAAOSwrY9lZLaY/s-l300.jpg'),
(22, 'Apple iPhone 11 - 64GB | 128GB - (Unlocked) A2111 (CDMA + GSM) Smartphone - Good', 'https://i.ebayimg.com/thumbs/images/g/6A4AAOSwhQdlFFO2/s-l300.jpg'),
(23, 'Apple iPhone X | XR | XS | XS Max - 64GB 128GB 256GB - Verizon GSM Unlocked AT&T', 'https://i.ebayimg.com/thumbs/images/g/roEAAOSwi7tlNsQi/s-l300.jpg'),
(24, 'Apple iPhone 11 - 128GB - A2111 Fully Unlocked - Pristine Condition - Smartphone', 'https://i.ebayimg.com/thumbs/images/g/yCsAAOSwpOxifmnV/s-l300.jpg'),
(25, 'Apple iPhone 13 - 128GB 256GB 512GB - All Colors - Good Condition', 'https://i.ebayimg.com/thumbs/images/g/rqsAAOSwLwZiar2B/s-l300.jpg'),
(26, 'Apple iPhone 11 - 64GB - Purple (Unlocked) A2111 (CDMA + GSM)', 'https://i.ebayimg.com/thumbs/images/g/B2MAAOSwiFVlZlIA/s-l300.jpg'),
(27, 'Apple iPhone 8/8 Plus (64GB 128GB 256GB) Unlocked Verizon At&t GSM/CDMA LTE 4G', 'https://i.ebayimg.com/thumbs/images/g/fZwAAOSwxHFjiMsh/s-l300.jpg'),
(28, 'Apple iPhone 12 - 64GB 128GB 256GB - All Colors - Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(29, 'Apple iPhone 12 Pro 128 GB - Good Conditions -All Colors- No Face ID', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(30, 'Apple iPhone 8 Plus - 64GB - Space Gray (Unlocked) A1864 (CDMA + GSM)', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(31, 'Apple iPhone X Space Gray - 64GB - Factory Unlocked - Good', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(32, 'Apple iPhone 11 A2111 Unlocked 64GB Purple Good', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(33, 'Apple iPhone 11 - 64GB | 128GB - Black (Unlocked) A2111 (CDMA + GSM) All Colors', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(34, 'Apple iPhone 12 64GB Black / Red / Blue / White T-Mobile Smartphone 5G', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(35, 'Apple iPhone X | XR | XS | XS Max - 64GB 128GB 256GB - Verizon GSM Unlocked AT&T', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(36, 'Apple iPhone 11 64GB 128GB Verizon T-Mobile AT&T Unlocked Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(37, 'Apple iPhone 6 16GB 64GB 128GB Factory Unlocked AT&T Verizon TMobile Sprint Mint', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(38, 'Apple iPhone SE 3rd Gen 2022 5G AT&T/Verizon/T-Mobile/Unlocked 64GB/128GB/256GB', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(39, 'Apple iPhone 6 16GB- 64GB- 128GB Gold Gray Silver Unlocked/Verizon/AT&T/Tmobile', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(40, 'Apple iPhone 13 Pro - 128GB 256GB 512GB 1TB - All Colors - Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(41, 'Apple iPhone XR - 64GB 128GB 256GB - All Colors - Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(42, 'Apple iPhone 14 - 128GB/256GB/512GB - All Colors - Choose your Network', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(43, 'Apple iPhone 13 - 128GB 256GB 512GB - All Colors - Excellent Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(44, 'Apple iPhone 13 Pro Max 256gb Unlocked - Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(45, 'Apple iPhone 6S (Excellent Condition) Factory Unlocked, Verizon, AT&T, T-Mobile', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(46, 'Apple iPhone 13 A2482 Unlocked 128GB Pink C', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(47, 'Apple iPhone 12 Pro Max 128GB - Good Condition - All Colors- No Face ID', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(48, 'Apple iPhone 11 64GB | 128GB - Verizon GSM Unlocked AT&T T-Mobile Metro Cricket', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(49, 'Apple iPhone 12 Pro Max - 128 GB-Unlocked-Has Display Message-Grade AB-All Color', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(50, 'Apple iPhone 8 | 8 Plus 64GB 128GB 256GB (GSM Unlocked) Smartphone - Very Good', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(51, 'Apple - iPhone 15 - 128GB - Unlocked - Factory Warranty - All Colors', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(52, 'Apple iPhone 14 Pro Max 128GB ( Unlocked) US E Sim - Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(53, 'Apple iPhone 12 - 64GB - Purple (Unlocked) (Read Description) EE1031', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(54, 'Apple iPhone 11 - 64GB Black - 4G LTE Factory Unlocked (GOOD)', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(55, 'Apple iPhone 14 128GB (Unlocked) US E-Sim Version Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(56, 'Apple iPhone 12 64GB 128GB Unlocked Bundle with MagSafe - All Colors - Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(57, 'Apple iPhone 7 32GB 64GB 128GB 256GB 4G LTE 4.7 Verizon Unlocked T-Mobile AT&T', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(58, 'Apple iPhone X | XR | XS | XS Max - 64GB 128GB 256GB - Verizon GSM Unlocked AT&T', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(59, 'Apple iPhone SE 3rd Gen 128GB 256GB Verizon AT&T T-Mobile Unlocked (Excellent)', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(60, '99%N ew Apple iphone 4s 8-16-32-64GB Black/White UNlocked(GSM+CDMA) Grade A+', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(61, 'Apple iPhone 12 - 64GB 128GB 256GB - All Colors - Very Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(62, 'Apple iPhone 11 (PRODUCT) RED - 64GB (Factory Unlocked)', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(63, 'Apple iPhone 12 - 64GB - Red - Unlocked Smartphone - Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(64, 'Apple iPhone 12 mini - 64GB - Blue (Unlocked) - Very Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(65, '📱 Apple iPhone 5C 8/16/32GB - Unlocked Multiple Colors Grade A IOS10📱', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(66, 'Apple iPhone 11 Pro Max 256GB Unlocked AT&T T-Mobile Verizon Very Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(67, '', 'https://i5.walmartimages.com/seo/Restored-Apple-iPhone-12-Carrier-Unlocked-128GB-Black-Refurbished_6b0fb38c-1982-4a77-9760-eefba5f3115c.a953827bacdfa9d782fce4d9cdc24525.jpeg?odnHeight=784&odnWidth=580&odnBg=FFFFFF'),
(68, 'iPhone', 'http://placeholder.com/200'),
(69, 'iPhone', 'http://placeholder.com/200'),
(70, 'iPhone', 'http://placeholder.com/200'),
(71, 'Apple iPhone X | XR | XS | XS Max - 64GB 128GB 256GB - Verizon GSM Unlocked AT&T', 'https://i.ebayimg.com/thumbs/images/g/roEAAOSwi7tlNsQi/s-l300.jpg'),
(72, 'Apple iPhone 11 - 64GB | 128GB - (Unlocked) A2111 (CDMA + GSM) Smartphone - Good', 'https://i.ebayimg.com/thumbs/images/g/6A4AAOSwhQdlFFO2/s-l300.jpg'),
(73, 'Apple iPhone 11 - 128GB - A2111 Fully Unlocked - Pristine Condition - Smartphone', 'https://i.ebayimg.com/thumbs/images/g/yCsAAOSwpOxifmnV/s-l300.jpg'),
(74, 'Apple iPhone 11 - 64GB | 128GB - Black (Unlocked) A2111 (CDMA + GSM) All Colors', 'https://i.ebayimg.com/thumbs/images/g/gF8AAOSw0z1lHxrq/s-l300.jpg'),
(75, 'Apple iPhone 13 - 128GB 256GB 512GB - All Colors - Good Condition', 'https://i.ebayimg.com/thumbs/images/g/rqsAAOSwLwZiar2B/s-l300.jpg'),
(76, 'Apple iPhone 11 - 64GB - Purple (Unlocked) A2111 (CDMA + GSM)', 'https://i.ebayimg.com/thumbs/images/g/B2MAAOSwiFVlZlIA/s-l300.jpg'),
(77, 'Apple iPhone 8/8 Plus (64GB 128GB 256GB) Unlocked Verizon At&t GSM/CDMA LTE 4G', 'https://i.ebayimg.com/thumbs/images/g/fZwAAOSwxHFjiMsh/s-l300.jpg'),
(78, 'Apple iPhone X Space Gray - 64GB - Factory Unlocked - Good', 'https://i.ebayimg.com/thumbs/images/g/LgkAAOSwqtNlZknY/s-l300.jpg'),
(79, 'Apple iPhone 12 Pro 128 GB - Good Conditions -All Colors- No Face ID', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(80, 'Apple iPhone 12 - 64GB 128GB 256GB - All Colors - Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(81, 'Apple iPhone 11 A2111 Unlocked 64GB Purple Good', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(82, 'Apple iPhone 11 64GB 128GB Verizon T-Mobile AT&T Unlocked Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(83, 'Apple iPhone 8 Plus - 64GB - Space Gray (Unlocked) A1864 (CDMA + GSM)', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(84, 'Apple iPhone X | XR | XS | XS Max - 64GB 128GB 256GB - Verizon GSM Unlocked AT&T', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(85, 'Apple iPhone 12 64GB Black / Red / Blue / White T-Mobile Smartphone 5G', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(86, 'Apple iPhone 11 64GB | 128GB - Verizon GSM Unlocked AT&T T-Mobile Metro Cricket', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(87, 'Apple iPhone 6 16GB 64GB 128GB Factory Unlocked AT&T Verizon TMobile Sprint Mint', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(88, 'Apple iPhone SE 3rd Gen 2022 5G AT&T/Verizon/T-Mobile/Unlocked 64GB/128GB/256GB', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(89, 'Apple iPhone 12 Blue 64GB Factory Unlocked - GOOD Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(90, 'Apple iPhone 13 Pro - 128GB 256GB 512GB 1TB - All Colors - Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(91, 'Apple iPhone 13 - 128GB 256GB 512GB - All Colors - Excellent Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(92, 'Apple iPhone 6 16GB- 64GB- 128GB Gold Gray Silver Unlocked/Verizon/AT&T/Tmobile', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(93, 'Apple iPhone 12 - 64GB - Purple (Unlocked) (Read Description) EE1031', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(94, 'Apple iPhone 14 - 128GB/256GB/512GB - All Colors - Choose your Network', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(95, 'Apple iPhone XR - 64GB 128GB 256GB - All Colors - Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(96, 'Apple iPhone 6S (Excellent Condition) Factory Unlocked, Verizon, AT&T, T-Mobile', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(97, 'Apple iPhone 13 A2482 Unlocked 128GB Pink C', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(98, 'Apple - iPhone 15 - 128GB - Unlocked - Factory Warranty - All Colors', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(99, 'Apple iPhone 8 | 8 Plus 64GB 128GB 256GB (GSM Unlocked) Smartphone - Very Good', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(100, 'Apple iPhone 12 Pro Max - 128 GB-Unlocked-Has Display Message-Grade AB-All Color', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(101, 'Apple iPhone X | XR | XS | XS Max - 64GB 128GB 256GB - Verizon GSM Unlocked AT&T', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(102, 'Apple iPhone 7 32GB 64GB 128GB 256GB 4G LTE 4.7 Verizon Unlocked T-Mobile AT&T', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(103, 'Apple iPhone 14 128GB (Unlocked) US E-Sim Version Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(104, 'Apple iPhone SE 2020 - 64GB - All Colors - Fully Unlocked - Excellent Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(105, 'Apple iPhone SE 3rd Gen 128GB 256GB Verizon AT&T T-Mobile Unlocked (Excellent)', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(106, '99%N ew Apple iphone 4s 8-16-32-64GB Black/White UNlocked(GSM+CDMA) Grade A+', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(107, 'Apple iPhone 14 Pro Max 128GB ( Unlocked) US E Sim - Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(108, 'Apple iPhone 12 - 64GB 128GB 256GB - All Colors - Very Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(109, 'Apple iPhone 12 Pro Max 128GB - Good Condition - All Colors- No Face ID', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(110, 'Apple iPhone 11 - 128GB - Black. Unlocked A2111 (CDMA + GSM) Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(111, 'Apple iPhone 13 Pro Max 256gb Unlocked - Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(112, 'Apple iPhone 11 (PRODUCT) RED - 64GB (Factory Unlocked)', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(113, 'Apple iPhone 12 64GB 128GB Unlocked Bundle with MagSafe - All Colors - Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(114, 'Apple iPhone 12 - 64GB - Red - Unlocked Smartphone - Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(115, 'Apple iPhone 13 Pro Max 128GB Unlocked AT&T T-Mobile Verizon Very Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(116, '📱 Apple iPhone 5C 8/16/32GB - Unlocked Multiple Colors Grade A IOS10📱', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(117, 'Apple iPhone 12 mini - 64GB - Blue (Unlocked) - Very Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(118, 'Apple iPhone 11 Pro Max 256GB Unlocked AT&T T-Mobile Verizon Very Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(119, 'SIM Free iPhone 13 5G 128GB Mobile Phone - Midnight', 'https://media.4rgos.it/s/Argos/9520062_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(120, 'SIM Free iPhone 13 5G 128GB Mobile Phone - Blue', 'https://media.4rgos.it/s/Argos/9520055_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(121, 'SIM Free iPhone 14 5G 128GB Mobile Phone - Midnight', 'https://media.4rgos.it/s/Argos/1186947_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(122, 'SIM Free iPhone 13 5G 128GB Mobile Phone - Starlight', 'https://media.4rgos.it/s/Argos/9520141_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(123, 'SIM Free iPhone 13 5G 128GB Mobile Phone - Pink', 'https://media.4rgos.it/s/Argos/9520103_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(124, 'SIM Free iPhone 13 5G 128GB Mobile Phone - Green', 'https://media.4rgos.it/s/Argos/1959143_R_SET?w=270&h=270&qlt=75&fmt.jpeg.interlaced=true'),
(125, 'SIM Free Refurbished iPhone SE 2020 64GB Mobile Phone Black', 'https:https://media.4rgos.it/i/Argos/new_badge?h=25&qlt=90&fmt.jpeg.interlaced=true'),
(126, '', 'https://i5.walmartimages.com/seo/Restored-Apple-iPhone-12-Carrier-Unlocked-128GB-Black-Refurbished_6b0fb38c-1982-4a77-9760-eefba5f3115c.a953827bacdfa9d782fce4d9cdc24525.jpeg?odnHeight=784&odnWidth=580&odnBg=FFFFFF'),
(127, 'Apple iPhone X | XR | XS | XS Max - 64GB 128GB 256GB - Verizon GSM Unlocked AT&T', 'https://i.ebayimg.com/thumbs/images/g/roEAAOSwi7tlNsQi/s-l300.jpg'),
(128, 'Apple iPhone 11 - 64GB | 128GB - (Unlocked) A2111 (CDMA + GSM) Smartphone - Good', 'https://i.ebayimg.com/thumbs/images/g/6A4AAOSwhQdlFFO2/s-l300.jpg'),
(129, 'Apple iPhone 11 - 128GB - A2111 Fully Unlocked - Pristine Condition - Smartphone', 'https://i.ebayimg.com/thumbs/images/g/yCsAAOSwpOxifmnV/s-l300.jpg'),
(130, 'Apple iPhone 11 - 64GB | 128GB - Black (Unlocked) A2111 (CDMA + GSM) All Colors', 'https://i.ebayimg.com/thumbs/images/g/gF8AAOSw0z1lHxrq/s-l300.jpg'),
(131, 'Apple iPhone 13 - 128GB 256GB 512GB - All Colors - Good Condition', 'https://i.ebayimg.com/thumbs/images/g/rqsAAOSwLwZiar2B/s-l300.jpg'),
(132, 'Apple iPhone 8/8 Plus (64GB 128GB 256GB) Unlocked Verizon At&t GSM/CDMA LTE 4G', 'https://i.ebayimg.com/thumbs/images/g/fZwAAOSwxHFjiMsh/s-l300.jpg'),
(133, 'Apple iPhone 11 - 64GB - Purple (Unlocked) A2111 (CDMA + GSM)', 'https://i.ebayimg.com/thumbs/images/g/B2MAAOSwiFVlZlIA/s-l300.jpg'),
(134, 'Apple iPhone 12 - 64GB 128GB 256GB - All Colors - Good Condition', 'https://i.ebayimg.com/thumbs/images/g/KK8AAOSwg4FiawAp/s-l300.jpg'),
(135, 'Apple iPhone 11 A2111 Unlocked 64GB Purple Good', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(136, 'Apple iPhone 12 Pro 128 GB - Good Conditions -All Colors- No Face ID', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(137, 'Apple iPhone 6 16GB 64GB 128GB Factory Unlocked AT&T Verizon TMobile Sprint Mint', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(138, 'Apple iPhone SE 3rd Gen 2022 5G AT&T/Verizon/T-Mobile/Unlocked 64GB/128GB/256GB', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(139, 'Apple iPhone X Space Gray - 64GB - Factory Unlocked - Good', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(140, 'Apple iPhone 11 64GB 128GB Verizon T-Mobile AT&T Unlocked Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(141, 'Apple iPhone X | XR | XS | XS Max - 64GB 128GB 256GB - Verizon GSM Unlocked AT&T', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(142, 'Apple iPhone 12 64GB Black / Red / Blue / White T-Mobile Smartphone 5G', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(143, 'Apple iPhone 13 Pro - 128GB 256GB 512GB 1TB - All Colors - Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(144, 'Apple iPhone 13 - 128GB 256GB 512GB - All Colors - Excellent Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(145, 'Apple iPhone 8 Plus - 64GB - Space Gray (Unlocked) A1864 (CDMA + GSM)', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(146, 'Apple iPhone 12 Blue 64GB Factory Unlocked - GOOD Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(147, 'Apple iPhone XR - 64GB 128GB 256GB - All Colors - Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(148, 'Apple iPhone 6 16GB- 64GB- 128GB Gold Gray Silver Unlocked/Verizon/AT&T/Tmobile', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(149, 'Apple iPhone 14 - 128GB/256GB/512GB - All Colors - Choose your Network', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(150, 'Apple iPhone 12 - 64GB - Purple (Unlocked) (Read Description) EE1031', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(151, 'Apple - iPhone 15 - 128GB - Unlocked - Factory Warranty - All Colors', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(152, 'Apple iPhone 13 A2482 Unlocked 128GB Pink C', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(153, 'Apple iPhone 14 128GB (Unlocked) US E-Sim Version Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(154, 'Apple iPhone 6S (Excellent Condition) Factory Unlocked, Verizon, AT&T, T-Mobile', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(155, 'Apple iPhone 8 | 8 Plus 64GB 128GB 256GB (GSM Unlocked) Smartphone - Very Good', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(156, 'Apple iPhone X | XR | XS | XS Max - 64GB 128GB 256GB - Verizon GSM Unlocked AT&T', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(157, 'Apple iPhone 11 64GB | 128GB - Verizon GSM Unlocked AT&T T-Mobile Metro Cricket', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(158, 'Apple iPhone 12 Pro Max - 128 GB-Unlocked-Has Display Message-Grade AB-All Color', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(159, 'Apple iPhone 14 Pro Max 128GB ( Unlocked) US E Sim - Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(160, 'Apple iPhone SE 2020 - 64GB - All Colors - Fully Unlocked - Excellent Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(161, 'Apple iPhone 12 - 64GB 128GB 256GB - All Colors - Very Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(162, '99%N ew Apple iphone 4s 8-16-32-64GB Black/White UNlocked(GSM+CDMA) Grade A+', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(163, 'Apple iPhone SE 3rd Gen 128GB 256GB Verizon AT&T T-Mobile Unlocked (Excellent)', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(164, '📱 Apple iPhone 5C 8/16/32GB - Unlocked Multiple Colors Grade A IOS10📱', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(165, 'Apple iPhone 7 32GB 64GB 128GB 256GB 4G LTE 4.7 Verizon Unlocked T-Mobile AT&T', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(166, 'Apple iPhone 12 Pro Max 128GB - Good Condition - All Colors- No Face ID', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(167, 'Apple iPhone 12 64GB 128GB Unlocked Bundle with MagSafe - All Colors - Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(168, 'Apple iPhone 13 Pro Max 128GB Unlocked AT&T T-Mobile Verizon Very Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(169, 'Apple iPhone 11 Pro Max 256GB Unlocked AT&T T-Mobile Verizon Very Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(170, 'Apple iPhone 13 Pro Max - 256GB - Gold (Unlocked) (Read Description) DJ1057', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(171, 'Apple iPhone 11 Pro Max 64GB Unlocked AT&T T-Mobile Verizon Excellent Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(172, 'Apple iPhone 14 Plus 128GB Unlocked AT&T T-Mobile Verizon Very Good Condition', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(173, 'Apple iPhone 14 Pro Max 256GB ( Unlocked) US E Sim - Excellent', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif'),
(174, 'Apple iPhone 7 -32GB - Black Unlocked -Verizon AT&T T-Mobile 4G LTE READ*', 'https://ir.ebaystatic.com/cr/v/c1/s_1x2.gif');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`site_id`, `site_name`, `site_url`) VALUES
(1, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(2, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(3, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(4, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(5, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(6, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(7, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(8, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(19, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(20, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(21, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(22, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(23, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(24, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(25, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(26, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(27, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(28, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(29, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(30, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(31, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(32, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(33, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(34, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(35, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(36, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(37, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(38, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(39, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(40, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(41, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(42, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(43, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(44, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(45, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(46, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(47, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(48, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(49, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(50, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(51, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(52, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(53, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(54, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(55, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(56, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(57, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(58, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(59, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(60, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(61, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(62, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(63, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(64, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(65, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(66, 'walmart', 'https://www.walmart.com/search?q=iphone&facet=cell_phone_type%3AUnlocked+Cell+Phones'),
(67, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(68, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(69, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(70, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(71, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(72, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(73, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(74, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(75, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(76, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(77, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(78, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(79, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(80, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(81, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(82, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(83, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(84, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(85, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(86, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(87, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(88, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(89, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(90, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(91, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(92, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(93, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(94, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(95, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(96, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(97, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(98, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(99, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(100, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(101, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(102, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(103, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(104, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(105, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(106, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(107, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(108, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(109, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(110, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(111, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(112, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(113, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(114, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(115, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(116, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(117, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(118, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(119, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(120, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(121, 'argos', 'https://www.argos.co.uk/list/shop-for-apple-family-devices/category:798630/?tag=ar:shop:apple-iphone:shop-for-apple-family-devices'),
(122, 'walmart', 'https://www.walmart.com/search?q=iphone&facet=cell_phone_type%3AUnlocked+Cell+Phones'),
(123, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(124, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(125, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(126, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(127, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(128, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(129, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(130, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(131, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(132, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(133, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(134, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(135, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(136, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(137, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(138, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(139, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(140, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(141, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(142, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(143, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(144, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(145, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(146, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(147, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(148, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(149, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(150, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(151, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(152, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(153, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(154, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(155, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(156, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(157, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(158, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(159, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(160, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(161, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(162, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(163, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(164, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(165, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(166, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(167, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(168, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(169, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682'),
(170, 'ebay', 'https://www.ebay.com/b/Apple-Cell-Phones-Smartphones/9355/bn_319682');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`site_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `prices_ibfk_2` FOREIGN KEY (`site_id`) REFERENCES `sites` (`site_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
