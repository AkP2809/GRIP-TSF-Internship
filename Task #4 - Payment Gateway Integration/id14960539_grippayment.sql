-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 30, 2020 at 05:06 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id14960539_grippayment`
--

-- --------------------------------------------------------

--
-- Table structure for table `donationinfo`
--

CREATE TABLE `donationinfo` (
  `payment_ID` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `donor_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `donor_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `donor_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `donation_amount` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donationinfo`
--

INSERT INTO `donationinfo` (`payment_ID`, `donor_name`, `donor_email`, `donor_phone`, `donation_amount`) VALUES
('MOJO0925K05A56404903', 'Rusheel Dalal', 'rusheelxyz@gmail.com', '+917894569874', 105.75),
('MOJO0926205A84034311', 'Armaan Khan', 'armaanabcxyz@gmail.com', '+917894569874', 500.00),
('MOJO0929V05A35116819', 'armaan', 'akp.xyz@gmail.com', '+917894569874', 4545.00),
('MOJO0930205A42118248', 'Armaan', 'bhaimast53@gmail.com', '+917856945879', 1500.00),
('MOJO0930405A42118133', 'Rusheel', 'test.123xyz@gmail.com', '+917896587451', 5412.00),
('MOJO0930B05A42118252', 'Brijraj', 'bhaimast53@gmail.com', '+917854965421', 4578.00),
('MOJO0930I05A42117799', 'akp', 'abc.xyz@gmail.com', '+917557699845', 1000.00),
('MOJO0930Q05A42117822', 'Legend', 'bhaimast53@gmail.com', '+917598465231', 489.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donationinfo`
--
ALTER TABLE `donationinfo`
  ADD PRIMARY KEY (`payment_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
