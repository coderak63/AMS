-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 12, 2020 at 10:30 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usersdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `2019ca96`
--

DROP TABLE IF EXISTS `2019ca96`;
CREATE TABLE IF NOT EXISTS `2019ca96` (
  `day` int(11) DEFAULT NULL,
  `subject_code` int(11) DEFAULT NULL,
  `tab` int(11) DEFAULT NULL,
  `r` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL,
  `runned_classes` int(11) DEFAULT NULL,
  `attended_classes` int(11) DEFAULT NULL,
  `class_hour` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2019ca96`
--

INSERT INTO `2019ca96` (`day`, `subject_code`, `tab`, `r`, `c`, `runned_classes`, `attended_classes`, `class_hour`) VALUES
(1, 33101, 1, 1, 3, 1, 1, 2),
(1, 33204, 1, 1, 6, 1, 1, 3),
(2, 33104, 1, 2, 3, 1, 1, 1),
(2, 33101, 1, 2, 4, 1, 1, 2),
(2, 33102, 1, 2, 7, 1, 1, 2),
(3, 33104, 1, 3, 2, -1, -1, 2),
(3, 33105, 1, 3, 4, -1, -1, 1),
(3, 33102, 1, 3, 7, -1, -1, 2),
(4, 33201, 1, 4, 1, 1, 1, 3),
(4, 33103, 1, 4, 2, 1, 1, 2),
(4, 33202, 1, 4, 5, 1, 1, 3),
(5, 33203, 1, 5, 2, 1, 1, 3),
(5, 33103, 1, 5, 5, 1, 1, 1),
(5, 33105, 1, 5, 7, 1, 1, 2),
(8, 33101, 2, 1, 3, 1, 1, 2),
(8, 33204, 2, 1, 6, 1, 1, 3),
(9, 33104, 2, 2, 3, 1, 1, 1),
(9, 33101, 2, 2, 4, 1, 1, 2),
(9, 33102, 2, 2, 7, 1, 1, 2),
(10, 33104, 2, 3, 2, 1, 1, 2),
(10, 33105, 2, 3, 4, 1, 1, 1),
(10, 33102, 2, 3, 7, 1, 1, 2),
(11, 33201, 2, 4, 1, 1, 1, 3),
(11, 33103, 2, 4, 2, 1, 1, 2),
(11, 33202, 2, 4, 5, 1, 1, 3),
(12, 33203, 2, 5, 2, 1, 1, 3),
(12, 33103, 2, 5, 5, 1, 1, 1),
(12, 33105, 2, 5, 7, 1, 1, 2),
(15, 33101, 3, 1, 3, 1, 1, 2),
(15, 33204, 3, 1, 6, 1, 1, 3),
(16, 33104, 3, 2, 3, 1, 1, 1),
(16, 33101, 3, 2, 4, 1, 1, 2),
(16, 33102, 3, 2, 7, 1, 1, 2),
(17, 33104, 3, 3, 2, 1, 1, 2),
(17, 33105, 3, 3, 4, 1, 1, 1),
(17, 33102, 3, 3, 7, 1, 1, 2),
(18, 33201, 3, 4, 1, 1, 1, 3),
(18, 33103, 3, 4, 2, 1, 1, 2),
(18, 33202, 3, 4, 5, 1, 1, 3),
(19, 33203, 3, 5, 2, 1, 1, 3),
(19, 33103, 3, 5, 5, 1, 1, 1),
(19, 33105, 3, 5, 7, 1, 1, 2),
(22, 33101, 4, 1, 3, 1, 1, 2),
(22, 33204, 4, 1, 6, 1, 1, 3),
(23, 33104, 4, 2, 3, 1, 1, 1),
(23, 33101, 4, 2, 4, 1, 1, 2),
(23, 33102, 4, 2, 7, 1, 1, 2),
(24, 33104, 4, 3, 2, 1, 1, 2),
(24, 33105, 4, 3, 4, 1, 1, 1),
(24, 33102, 4, 3, 7, 1, 1, 2),
(25, 33201, 4, 4, 1, 1, 1, 3),
(25, 33103, 4, 4, 2, 1, 1, 2),
(25, 33202, 4, 4, 5, 1, 1, 3),
(26, 33203, 4, 5, 2, 1, 1, 3),
(26, 33103, 4, 5, 5, 1, 1, 1),
(26, 33105, 4, 5, 7, 1, 1, 2),
(29, 33101, 5, 1, 3, 1, 1, 2),
(29, 33204, 5, 1, 6, 1, 1, 3),
(30, 33104, 5, 2, 3, 1, 1, 1),
(30, 33101, 5, 2, 4, 1, 1, 2),
(30, 33102, 5, 2, 7, 1, 1, 2),
(31, 33104, 5, 3, 2, 1, 1, 2),
(31, 33105, 5, 3, 4, 1, 1, 1),
(31, 33102, 5, 3, 7, 1, 1, 2),
(32, 33201, 5, 4, 1, 1, 1, 3),
(32, 33103, 5, 4, 2, 1, 1, 2),
(32, 33202, 5, 4, 5, 1, 1, 3),
(33, 33203, 5, 5, 2, 1, 1, 3),
(33, 33103, 5, 5, 5, 1, 1, 1),
(33, 33105, 5, 5, 7, 1, 1, 2),
(36, 33101, 6, 1, 3, 1, 1, 2),
(36, 33204, 6, 1, 6, 1, 1, 3),
(37, 33104, 6, 2, 3, 1, 1, 1),
(37, 33101, 6, 2, 4, 1, 1, 2),
(37, 33102, 6, 2, 7, 1, 1, 2),
(38, 33104, 6, 3, 2, 1, 1, 2),
(38, 33105, 6, 3, 4, 1, 1, 1),
(38, 33102, 6, 3, 7, 1, 1, 2),
(39, 33201, 6, 4, 1, 1, 1, 3),
(39, 33103, 6, 4, 2, 1, 1, 2),
(39, 33202, 6, 4, 5, 1, 1, 3),
(40, 33203, 6, 5, 2, 1, 1, 3),
(40, 33103, 6, 5, 5, 1, 1, 1),
(40, 33105, 6, 5, 7, 1, 1, 2),
(43, 33101, 7, 1, 3, 1, 1, 2),
(43, 33204, 7, 1, 6, 1, 1, 3),
(44, 33104, 7, 2, 3, 1, 1, 1),
(44, 33101, 7, 2, 4, 1, 1, 2),
(44, 33102, 7, 2, 7, 1, 1, 2),
(45, 33104, 7, 3, 2, 1, 1, 2),
(45, 33105, 7, 3, 4, 1, 1, 1),
(45, 33102, 7, 3, 7, 1, 1, 2),
(46, 33201, 7, 4, 1, 1, 1, 3),
(46, 33103, 7, 4, 2, 1, 1, 2),
(46, 33202, 7, 4, 5, 1, 1, 3),
(47, 33203, 7, 5, 2, 1, 1, 3),
(47, 33103, 7, 5, 5, 1, 1, 1),
(47, 33105, 7, 5, 7, 1, 1, 2),
(50, 33101, 8, 1, 3, 1, 1, 2),
(50, 33204, 8, 1, 6, 1, 1, 3),
(51, 33104, 8, 2, 3, 1, 1, 1),
(51, 33101, 8, 2, 4, 1, 1, 2),
(51, 33102, 8, 2, 7, 1, 1, 2),
(52, 33104, 8, 3, 2, 1, 1, 2),
(52, 33105, 8, 3, 4, 1, 1, 1),
(52, 33102, 8, 3, 7, 1, 1, 2),
(53, 33201, 8, 4, 1, 1, 1, 3),
(53, 33103, 8, 4, 2, 1, 1, 2),
(53, 33202, 8, 4, 5, 1, 1, 3),
(54, 33203, 8, 5, 2, -1, -1, 3),
(54, 33103, 8, 5, 5, -1, -1, 1),
(54, 33105, 8, 5, 7, -1, -1, 2),
(57, 33101, 9, 1, 3, 1, 1, 2),
(57, 33204, 9, 1, 6, 1, 1, 3),
(58, 33104, 9, 2, 3, 1, 1, 1),
(58, 33101, 9, 2, 4, 1, 1, 2),
(58, 33102, 9, 2, 7, 1, 1, 2),
(59, 33104, 9, 3, 2, 1, 1, 2),
(59, 33105, 9, 3, 4, 1, 1, 1),
(59, 33102, 9, 3, 7, 1, 1, 2),
(60, 33201, 9, 4, 1, 1, 1, 3),
(60, 33103, 9, 4, 2, 1, 1, 2),
(60, 33202, 9, 4, 5, 1, 1, 3),
(61, 33203, 9, 5, 2, 1, 1, 3),
(61, 33103, 9, 5, 5, 1, 1, 1),
(61, 33105, 9, 5, 7, 1, 1, 2),
(64, 33101, 10, 1, 3, 1, 1, 2),
(64, 33204, 10, 1, 6, 1, 1, 3),
(65, 33104, 10, 2, 3, 1, 1, 1),
(65, 33101, 10, 2, 4, 1, 1, 2),
(65, 33102, 10, 2, 7, 1, 1, 2),
(66, 33104, 10, 3, 2, 1, 1, 2),
(66, 33105, 10, 3, 4, 1, 1, 1),
(66, 33102, 10, 3, 7, 1, 1, 2),
(67, 33201, 10, 4, 1, 1, 1, 3),
(67, 33103, 10, 4, 2, 1, 1, 2),
(67, 33202, 10, 4, 5, 1, 1, 3),
(68, 33203, 10, 5, 2, 1, 1, 3),
(68, 33103, 10, 5, 5, 1, 1, 1),
(68, 33105, 10, 5, 7, 1, 1, 2),
(71, 33101, 11, 1, 3, 1, 1, 2),
(71, 33204, 11, 1, 6, 1, 1, 3),
(72, 33104, 11, 2, 3, 1, 1, 1),
(72, 33101, 11, 2, 4, 1, 1, 2),
(72, 33102, 11, 2, 7, 1, 1, 2),
(73, 33104, 11, 3, 2, 1, 1, 2),
(73, 33105, 11, 3, 4, 1, 1, 1),
(73, 33102, 11, 3, 7, 1, 1, 2),
(74, 33201, 11, 4, 1, 1, 1, 3),
(74, 33103, 11, 4, 2, 1, 1, 2),
(74, 33202, 11, 4, 5, 1, 1, 3),
(75, 33203, 11, 5, 2, 1, 1, 3),
(75, 33103, 11, 5, 5, 1, 1, 1),
(75, 33105, 11, 5, 7, 1, 1, 2),
(78, 33101, 12, 1, 3, 1, 1, 2),
(78, 33204, 12, 1, 6, 1, 1, 3),
(79, 33104, 12, 2, 3, 1, 1, 1),
(79, 33101, 12, 2, 4, 1, 1, 2),
(79, 33102, 12, 2, 7, 1, 1, 2),
(80, 33104, 12, 3, 2, 1, 1, 2),
(80, 33105, 12, 3, 4, 1, 1, 1),
(80, 33102, 12, 3, 7, 1, 1, 2),
(81, 33201, 12, 4, 1, 1, 1, 3),
(81, 33103, 12, 4, 2, 1, 1, 2),
(81, 33202, 12, 4, 5, 1, 1, 3),
(82, 33203, 12, 5, 2, -1, -1, 3),
(82, 33103, 12, 5, 5, -1, -1, 1),
(82, 33105, 12, 5, 7, -1, -1, 2),
(85, 33101, 13, 1, 3, 1, 1, 2),
(85, 33204, 13, 1, 6, 1, 1, 3),
(86, 33104, 13, 2, 3, 1, 1, 1),
(86, 33101, 13, 2, 4, 1, 1, 2),
(86, 33102, 13, 2, 7, 1, 1, 2),
(87, 33104, 13, 3, 2, 1, 1, 2),
(87, 33105, 13, 3, 4, 1, 1, 1),
(87, 33102, 13, 3, 7, 1, 1, 2),
(88, 33201, 13, 4, 1, 1, 1, 3),
(88, 33103, 13, 4, 2, 1, 1, 2),
(88, 33202, 13, 4, 5, 1, 1, 3),
(89, 33203, 13, 5, 2, 1, 1, 3),
(89, 33103, 13, 5, 5, 1, 1, 1),
(89, 33105, 13, 5, 7, 1, 1, 2),
(92, 33101, 14, 1, 3, 1, 1, 2),
(92, 33204, 14, 1, 6, 1, 1, 3),
(93, 33104, 14, 2, 3, 1, 1, 1),
(93, 33101, 14, 2, 4, 1, 1, 2),
(93, 33102, 14, 2, 7, 1, 1, 2),
(94, 33104, 14, 3, 2, 1, 1, 2),
(94, 33105, 14, 3, 4, 1, 1, 1),
(94, 33102, 14, 3, 7, 1, 1, 2),
(95, 33201, 14, 4, 1, 1, 1, 3),
(95, 33103, 14, 4, 2, 1, 1, 2),
(95, 33202, 14, 4, 5, 1, 1, 3),
(96, 33203, 14, 5, 2, 1, 1, 3),
(96, 33103, 14, 5, 5, 1, 1, 1),
(96, 33105, 14, 5, 7, 1, 1, 2),
(99, 33101, 15, 1, 3, 1, 1, 2),
(99, 33204, 15, 1, 6, 1, 1, 3),
(100, 33104, 15, 2, 3, 1, 1, 1),
(100, 33101, 15, 2, 4, 1, 1, 2),
(100, 33102, 15, 2, 7, 1, 1, 2),
(101, 33104, 15, 3, 2, 1, 1, 2),
(101, 33105, 15, 3, 4, 1, 1, 1),
(101, 33102, 15, 3, 7, 1, 1, 2),
(102, 33201, 15, 4, 1, 1, 1, 3),
(102, 33103, 15, 4, 2, 1, 1, 2),
(102, 33202, 15, 4, 5, 1, 1, 3),
(103, 33203, 15, 5, 2, 1, 1, 3),
(103, 33103, 15, 5, 5, 1, 1, 1),
(103, 33105, 15, 5, 7, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `day` int(11) NOT NULL,
  `subject_code` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `r` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `runned_classes` int(11) NOT NULL,
  `attended_classes` int(11) NOT NULL,
  `class_hour` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`day`, `subject_code`, `tab`, `r`, `c`, `runned_classes`, `attended_classes`, `class_hour`) VALUES
(1, 33101, 1, 1, 3, 1, 1, 2),
(1, 33204, 1, 1, 6, 1, 1, 3),
(2, 33104, 1, 2, 3, 1, 1, 1),
(2, 33101, 1, 2, 4, 1, 1, 2),
(2, 33102, 1, 2, 7, 1, 1, 2),
(3, 33104, 1, 3, 2, -1, -1, 2),
(3, 33105, 1, 3, 4, -1, -1, 1),
(3, 33102, 1, 3, 7, -1, -1, 2),
(4, 33201, 1, 4, 1, 1, 1, 3),
(4, 33103, 1, 4, 2, 1, 1, 2),
(4, 33202, 1, 4, 5, 1, 1, 3),
(5, 33203, 1, 5, 2, 1, 1, 3),
(5, 33103, 1, 5, 5, 1, 1, 1),
(5, 33105, 1, 5, 7, 1, 1, 2),
(8, 33101, 2, 1, 3, 1, 1, 2),
(8, 33204, 2, 1, 6, 1, 1, 3),
(9, 33104, 2, 2, 3, 1, 1, 1),
(9, 33101, 2, 2, 4, 1, 1, 2),
(9, 33102, 2, 2, 7, 1, 1, 2),
(10, 33104, 2, 3, 2, 1, 1, 2),
(10, 33105, 2, 3, 4, 1, 1, 1),
(10, 33102, 2, 3, 7, 1, 1, 2),
(11, 33201, 2, 4, 1, 1, 1, 3),
(11, 33103, 2, 4, 2, 1, 1, 2),
(11, 33202, 2, 4, 5, 1, 1, 3),
(12, 33203, 2, 5, 2, 1, 1, 3),
(12, 33103, 2, 5, 5, 1, 1, 1),
(12, 33105, 2, 5, 7, 1, 1, 2),
(15, 33101, 3, 1, 3, 1, 1, 2),
(15, 33204, 3, 1, 6, 1, 1, 3),
(16, 33104, 3, 2, 3, 1, 1, 1),
(16, 33101, 3, 2, 4, 1, 1, 2),
(16, 33102, 3, 2, 7, 1, 1, 2),
(17, 33104, 3, 3, 2, 1, 1, 2),
(17, 33105, 3, 3, 4, 1, 1, 1),
(17, 33102, 3, 3, 7, 1, 1, 2),
(18, 33201, 3, 4, 1, 1, 1, 3),
(18, 33103, 3, 4, 2, 1, 1, 2),
(18, 33202, 3, 4, 5, 1, 1, 3),
(19, 33203, 3, 5, 2, 1, 1, 3),
(19, 33103, 3, 5, 5, 1, 1, 1),
(19, 33105, 3, 5, 7, 1, 1, 2),
(22, 33101, 4, 1, 3, 1, 1, 2),
(22, 33204, 4, 1, 6, 1, 1, 3),
(23, 33104, 4, 2, 3, 1, 1, 1),
(23, 33101, 4, 2, 4, 1, 1, 2),
(23, 33102, 4, 2, 7, 1, 1, 2),
(24, 33104, 4, 3, 2, 1, 1, 2),
(24, 33105, 4, 3, 4, 1, 1, 1),
(24, 33102, 4, 3, 7, 1, 1, 2),
(25, 33201, 4, 4, 1, 1, 1, 3),
(25, 33103, 4, 4, 2, 1, 1, 2),
(25, 33202, 4, 4, 5, 1, 1, 3),
(26, 33203, 4, 5, 2, 1, 1, 3),
(26, 33103, 4, 5, 5, 1, 1, 1),
(26, 33105, 4, 5, 7, 1, 1, 2),
(29, 33101, 5, 1, 3, 1, 1, 2),
(29, 33204, 5, 1, 6, 1, 1, 3),
(30, 33104, 5, 2, 3, 1, 1, 1),
(30, 33101, 5, 2, 4, 1, 1, 2),
(30, 33102, 5, 2, 7, 1, 1, 2),
(31, 33104, 5, 3, 2, 1, 1, 2),
(31, 33105, 5, 3, 4, 1, 1, 1),
(31, 33102, 5, 3, 7, 1, 1, 2),
(32, 33201, 5, 4, 1, 1, 1, 3),
(32, 33103, 5, 4, 2, 1, 1, 2),
(32, 33202, 5, 4, 5, 1, 1, 3),
(33, 33203, 5, 5, 2, 1, 1, 3),
(33, 33103, 5, 5, 5, 1, 1, 1),
(33, 33105, 5, 5, 7, 1, 1, 2),
(36, 33101, 6, 1, 3, 1, 1, 2),
(36, 33204, 6, 1, 6, 1, 1, 3),
(37, 33104, 6, 2, 3, 1, 1, 1),
(37, 33101, 6, 2, 4, 1, 1, 2),
(37, 33102, 6, 2, 7, 1, 1, 2),
(38, 33104, 6, 3, 2, 1, 1, 2),
(38, 33105, 6, 3, 4, 1, 1, 1),
(38, 33102, 6, 3, 7, 1, 1, 2),
(39, 33201, 6, 4, 1, 1, 1, 3),
(39, 33103, 6, 4, 2, 1, 1, 2),
(39, 33202, 6, 4, 5, 1, 1, 3),
(40, 33203, 6, 5, 2, 1, 1, 3),
(40, 33103, 6, 5, 5, 1, 1, 1),
(40, 33105, 6, 5, 7, 1, 1, 2),
(43, 33101, 7, 1, 3, 1, 1, 2),
(43, 33204, 7, 1, 6, 1, 1, 3),
(44, 33104, 7, 2, 3, 1, 1, 1),
(44, 33101, 7, 2, 4, 1, 1, 2),
(44, 33102, 7, 2, 7, 1, 1, 2),
(45, 33104, 7, 3, 2, 1, 1, 2),
(45, 33105, 7, 3, 4, 1, 1, 1),
(45, 33102, 7, 3, 7, 1, 1, 2),
(46, 33201, 7, 4, 1, 1, 1, 3),
(46, 33103, 7, 4, 2, 1, 1, 2),
(46, 33202, 7, 4, 5, 1, 1, 3),
(47, 33203, 7, 5, 2, 1, 1, 3),
(47, 33103, 7, 5, 5, 1, 1, 1),
(47, 33105, 7, 5, 7, 1, 1, 2),
(50, 33101, 8, 1, 3, 1, 1, 2),
(50, 33204, 8, 1, 6, 1, 1, 3),
(51, 33104, 8, 2, 3, 1, 1, 1),
(51, 33101, 8, 2, 4, 1, 1, 2),
(51, 33102, 8, 2, 7, 1, 1, 2),
(52, 33104, 8, 3, 2, 1, 1, 2),
(52, 33105, 8, 3, 4, 1, 1, 1),
(52, 33102, 8, 3, 7, 1, 1, 2),
(53, 33201, 8, 4, 1, 1, 1, 3),
(53, 33103, 8, 4, 2, 1, 1, 2),
(53, 33202, 8, 4, 5, 1, 1, 3),
(54, 33203, 8, 5, 2, -1, -1, 3),
(54, 33103, 8, 5, 5, -1, -1, 1),
(54, 33105, 8, 5, 7, -1, -1, 2),
(57, 33101, 9, 1, 3, 1, 1, 2),
(57, 33204, 9, 1, 6, 1, 1, 3),
(58, 33104, 9, 2, 3, 1, 1, 1),
(58, 33101, 9, 2, 4, 1, 1, 2),
(58, 33102, 9, 2, 7, 1, 1, 2),
(59, 33104, 9, 3, 2, 1, 1, 2),
(59, 33105, 9, 3, 4, 1, 1, 1),
(59, 33102, 9, 3, 7, 1, 1, 2),
(60, 33201, 9, 4, 1, 1, 1, 3),
(60, 33103, 9, 4, 2, 1, 1, 2),
(60, 33202, 9, 4, 5, 1, 1, 3),
(61, 33203, 9, 5, 2, 1, 1, 3),
(61, 33103, 9, 5, 5, 1, 1, 1),
(61, 33105, 9, 5, 7, 1, 1, 2),
(64, 33101, 10, 1, 3, 1, 1, 2),
(64, 33204, 10, 1, 6, 1, 1, 3),
(65, 33104, 10, 2, 3, 1, 1, 1),
(65, 33101, 10, 2, 4, 1, 1, 2),
(65, 33102, 10, 2, 7, 1, 1, 2),
(66, 33104, 10, 3, 2, 1, 1, 2),
(66, 33105, 10, 3, 4, 1, 1, 1),
(66, 33102, 10, 3, 7, 1, 1, 2),
(67, 33201, 10, 4, 1, 1, 1, 3),
(67, 33103, 10, 4, 2, 1, 1, 2),
(67, 33202, 10, 4, 5, 1, 1, 3),
(68, 33203, 10, 5, 2, 1, 1, 3),
(68, 33103, 10, 5, 5, 1, 1, 1),
(68, 33105, 10, 5, 7, 1, 1, 2),
(71, 33101, 11, 1, 3, 1, 1, 2),
(71, 33204, 11, 1, 6, 1, 1, 3),
(72, 33104, 11, 2, 3, 1, 1, 1),
(72, 33101, 11, 2, 4, 1, 1, 2),
(72, 33102, 11, 2, 7, 1, 1, 2),
(73, 33104, 11, 3, 2, 1, 1, 2),
(73, 33105, 11, 3, 4, 1, 1, 1),
(73, 33102, 11, 3, 7, 1, 1, 2),
(74, 33201, 11, 4, 1, 1, 1, 3),
(74, 33103, 11, 4, 2, 1, 1, 2),
(74, 33202, 11, 4, 5, 1, 1, 3),
(75, 33203, 11, 5, 2, 1, 1, 3),
(75, 33103, 11, 5, 5, 1, 1, 1),
(75, 33105, 11, 5, 7, 1, 1, 2),
(78, 33101, 12, 1, 3, 1, 1, 2),
(78, 33204, 12, 1, 6, 1, 1, 3),
(79, 33104, 12, 2, 3, 1, 1, 1),
(79, 33101, 12, 2, 4, 1, 1, 2),
(79, 33102, 12, 2, 7, 1, 1, 2),
(80, 33104, 12, 3, 2, 1, 1, 2),
(80, 33105, 12, 3, 4, 1, 1, 1),
(80, 33102, 12, 3, 7, 1, 1, 2),
(81, 33201, 12, 4, 1, 1, 1, 3),
(81, 33103, 12, 4, 2, 1, 1, 2),
(81, 33202, 12, 4, 5, 1, 1, 3),
(82, 33203, 12, 5, 2, -1, -1, 3),
(82, 33103, 12, 5, 5, -1, -1, 1),
(82, 33105, 12, 5, 7, -1, -1, 2),
(85, 33101, 13, 1, 3, 1, 1, 2),
(85, 33204, 13, 1, 6, 1, 1, 3),
(86, 33104, 13, 2, 3, 1, 1, 1),
(86, 33101, 13, 2, 4, 1, 1, 2),
(86, 33102, 13, 2, 7, 1, 1, 2),
(87, 33104, 13, 3, 2, 1, 1, 2),
(87, 33105, 13, 3, 4, 1, 1, 1),
(87, 33102, 13, 3, 7, 1, 1, 2),
(88, 33201, 13, 4, 1, 1, 1, 3),
(88, 33103, 13, 4, 2, 1, 1, 2),
(88, 33202, 13, 4, 5, 1, 1, 3),
(89, 33203, 13, 5, 2, 1, 1, 3),
(89, 33103, 13, 5, 5, 1, 1, 1),
(89, 33105, 13, 5, 7, 1, 1, 2),
(92, 33101, 14, 1, 3, 1, 1, 2),
(92, 33204, 14, 1, 6, 1, 1, 3),
(93, 33104, 14, 2, 3, 1, 1, 1),
(93, 33101, 14, 2, 4, 1, 1, 2),
(93, 33102, 14, 2, 7, 1, 1, 2),
(94, 33104, 14, 3, 2, 1, 1, 2),
(94, 33105, 14, 3, 4, 1, 1, 1),
(94, 33102, 14, 3, 7, 1, 1, 2),
(95, 33201, 14, 4, 1, 1, 1, 3),
(95, 33103, 14, 4, 2, 1, 1, 2),
(95, 33202, 14, 4, 5, 1, 1, 3),
(96, 33203, 14, 5, 2, 1, 1, 3),
(96, 33103, 14, 5, 5, 1, 1, 1),
(96, 33105, 14, 5, 7, 1, 1, 2),
(99, 33101, 15, 1, 3, 1, 1, 2),
(99, 33204, 15, 1, 6, 1, 1, 3),
(100, 33104, 15, 2, 3, 1, 1, 1),
(100, 33101, 15, 2, 4, 1, 1, 2),
(100, 33102, 15, 2, 7, 1, 1, 2),
(101, 33104, 15, 3, 2, 1, 1, 2),
(101, 33105, 15, 3, 4, 1, 1, 1),
(101, 33102, 15, 3, 7, 1, 1, 2),
(102, 33201, 15, 4, 1, 1, 1, 3),
(102, 33103, 15, 4, 2, 1, 1, 2),
(102, 33202, 15, 4, 5, 1, 1, 3),
(103, 33203, 15, 5, 2, 1, 1, 3),
(103, 33103, 15, 5, 5, 1, 1, 1),
(103, 33105, 15, 5, 7, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `reg_no` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`reg_no`, `password`) VALUES
('2019ca96', '12345'),
('admin', 'abhi321');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;