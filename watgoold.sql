-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2018 at 10:00 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watgo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bonuses`
--

CREATE TABLE `bonuses` (
  `id` int(11) NOT NULL,
  `bonusName` varchar(50) NOT NULL,
  `Amount` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(45) DEFAULT NULL,
  `town` varchar(45) DEFAULT NULL,
  `lga` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch_name`, `town`, `lga`, `state`, `country`) VALUES
(1, 'Watgo Group Okutukutu-Yenagoa', 'Yenagoa', 'Yenagoa', 'Bayelsa', 'Nigeria'),
(2, 'Watgo Petroleum-Odi', 'Odi', 'Kolokuma Opokuma', 'Bayelsa', 'Nigeria'),
(3, 'Watgo Gas Akenfa-Yenagoa', 'Yenagoa', 'Yenagoa', 'Bayelsa', 'Nigeria');

-- --------------------------------------------------------

--
-- Table structure for table `calibration`
--

CREATE TABLE `calibration` (
  `id` int(11) NOT NULL,
  `calibration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calibration`
--

INSERT INTO `calibration` (`id`, `calibration`) VALUES
(1, 30),
(2, 35),
(3, 50),
(4, 60),
(5, 150);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `branch_id`) VALUES
(1, 'Drinks-Bottle', 1),
(2, 'Petrol', 1),
(3, 'Gas', 1),
(4, 'Trucks', 1),
(5, 'Drinks-Canned', 1),
(6, 'Drinks-Case', 1),
(7, 'Drinks-PET', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `weight` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data_parent`
--

CREATE TABLE `data_parent` (
  `pid` int(11) NOT NULL,
  `did` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` int(11) NOT NULL,
  `noabsentDays` int(11) NOT NULL,
  `companySavings` decimal(20,2) NOT NULL,
  `personnelTax` decimal(20,2) NOT NULL,
  `nodaysLate` int(11) NOT NULL,
  `user_accountID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `name` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`name`, `id`) VALUES
('PEPSI', 1),
('MIR Orange', 2),
('MIR PINEAPPLE', 3),
('MIR SODA', 4),
('MIR TONIC', 5),
('MIR TROPICAL', 6),
('TEEM BITTER LEMON', 7),
('TEEM LEMON', 8),
('MOUNTAIN DEW', 9),
('MANGO TANGO', 10),
('7UP', 11),
('AQUAFINA', 12);

-- --------------------------------------------------------

--
-- Table structure for table `drinks_category`
--

CREATE TABLE `drinks_category` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drinks_category`
--

INSERT INTO `drinks_category` (`id`, `type`) VALUES
(1, 'Full'),
(2, 'Empty'),
(3, 'PACK');

-- --------------------------------------------------------

--
-- Table structure for table `drinks_cat_branch`
--

CREATE TABLE `drinks_cat_branch` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `drinks_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drinks_cat_branch`
--

INSERT INTO `drinks_cat_branch` (`id`, `branch_id`, `cat_id`, `drinks_id`) VALUES
(25, 1, 1, 1),
(27, 1, 1, 1),
(2, 1, 1, 2),
(26, 1, 1, 2),
(3, 1, 1, 3),
(28, 1, 1, 3),
(35, 1, 1, 3),
(4, 1, 1, 4),
(5, 1, 1, 4),
(6, 1, 1, 5),
(29, 1, 1, 5),
(30, 1, 1, 6),
(7, 1, 1, 7),
(8, 1, 1, 8),
(9, 1, 1, 9),
(10, 1, 1, 10),
(11, 1, 1, 11),
(12, 1, 1, 12),
(13, 1, 5, 1),
(14, 1, 5, 2),
(15, 1, 5, 3),
(16, 1, 5, 4),
(19, 1, 5, 5),
(34, 1, 5, 5),
(17, 1, 5, 6),
(18, 1, 5, 7),
(20, 1, 5, 8),
(31, 1, 5, 8),
(21, 1, 5, 9),
(22, 1, 5, 10),
(23, 1, 5, 11),
(24, 1, 5, 12),
(32, 1, 6, 9),
(33, 1, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `drinks_price`
--

CREATE TABLE `drinks_price` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `d_c_b_id` int(11) NOT NULL,
  `cal_id` int(11) NOT NULL,
  `drinks_catId` int(11) NOT NULL,
  `quantity` int(20) NOT NULL,
  `pPricePerUnit` decimal(20,2) NOT NULL,
  `sPricePerUnit` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drinks_price`
--

INSERT INTO `drinks_price` (`id`, `date`, `date_modified`, `d_c_b_id`, `cal_id`, `drinks_catId`, `quantity`, `pPricePerUnit`, `sPricePerUnit`) VALUES
(11, '2018-08-21', '2018-08-23', 35, 4, 1, 6754, '70.00', '89.00');

-- --------------------------------------------------------

--
-- Table structure for table `drink_sales`
--

CREATE TABLE `drink_sales` (
  `id` int(11) NOT NULL,
  `drinks_c_bID` int(11) NOT NULL,
  `c_ID` int(11) NOT NULL,
  `d_catID` int(11) NOT NULL,
  `opening_q` int(20) NOT NULL,
  `opening_t` time NOT NULL,
  `closing_q` int(20) DEFAULT NULL,
  `closing_t` time DEFAULT NULL,
  `quantity_sold` int(20) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `date` date NOT NULL,
  `manual_r` int(11) DEFAULT NULL,
  `manualReason` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drink_sales`
--

INSERT INTO `drink_sales` (`id`, `drinks_c_bID`, `c_ID`, `d_catID`, `opening_q`, `opening_t`, `closing_q`, `closing_t`, `quantity_sold`, `amount`, `date`, `manual_r`, `manualReason`) VALUES
(1, 25, 1, 1, 4567, '05:59:33', 453, '09:33:49', 4114, '82280.00', '2018-08-09', NULL, NULL),
(2, 26, 1, 1, 4673, '12:00:00', 345, '06:00:00', 4344, '23453.00', '2018-08-09', NULL, NULL),
(3, 25, 2, 1, 4673, '11:00:00', 4763, '11:00:00', 4673, '3762.00', '2018-08-09', NULL, NULL),
(10, 25, 1, 1, 78695, '08:54:03', 4345, '08:54:15', 74350, '1487000.00', '2018-08-16', NULL, NULL),
(11, 19, 1, 1, 5763, '09:41:53', 0, '09:42:04', 5763, '0.00', '2018-08-16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `description` text,
  `amount` decimal(20,2) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `description`, `amount`, `branch_id`, `date`, `section_id`) VALUES
(1, 'Salaries Paid for the month of July', '100000.00', 1, '2018-08-18', 2),
(2, 'Tax Payment', '1000.00', 1, '2018-08-17', 2),
(3, 'fjdhhd', '2.00', 1, '2018-08-18', 4),
(4, 'fjdhhd', '2.00', 1, '2018-08-17', 4),
(5, 'rthgdf', '2.00', 1, '2018-08-18', 4),
(6, 'Fuel', NULL, 1, '2018-08-17', 1),
(8, 'Good One', '567489.00', 1, '2018-08-18', 1),
(9, 'Generator Repair', '56746.00', 1, '2018-08-17', 5),
(10, 'Tested', '1000.00', 1, '2018-08-18', 5),
(11, 'Petrol', '200.00', 1, '2018-08-17', 2);

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` int(11) NOT NULL,
  `loanDescription` varchar(50) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `amountRepaid` decimal(20,2) NOT NULL,
  `date` date NOT NULL,
  `userAccount_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payslip`
--

CREATE TABLE `payslip` (
  `id` int(11) NOT NULL,
  `basic_salary` double DEFAULT NULL,
  `no_days_absent` double DEFAULT NULL,
  `lateness_to_work` double DEFAULT NULL,
  `personnel_tax` double DEFAULT NULL,
  `company_savings` double DEFAULT NULL,
  `salary_advance` double DEFAULT NULL,
  `Staff_Bio_Data_id` int(11) NOT NULL,
  `Staff_Bio_Data_branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `previuos_work`
--

CREATE TABLE `previuos_work` (
  `id` int(11) NOT NULL,
  `organisation_name` varchar(45) DEFAULT NULL,
  `position_held` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `job_description` text,
  `Staff_Bio_Data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `previuos_work`
--

INSERT INTO `previuos_work` (`id`, `organisation_name`, `position_held`, `start_date`, `end_date`, `job_description`, `Staff_Bio_Data_id`) VALUES
(21, 'Amada owei place', 'manager', '2017-03-15', '2018-08-09', 'gjfgfds', 15),
(23, 'dskdnskos', 'sdnksndk', '2018-08-22', '2018-08-31', 'ksdnskdisjdois', 17),
(24, 'Watgogroup', 'general manager', '1998-04-07', '2018-08-18', 'waiter', 18);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `branch_id` int(11) NOT NULL,
  `purchase_price_per_unit` double DEFAULT NULL,
  `selling_price_unit` double DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `quantity` decimal(20,5) NOT NULL,
  `modified_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `date`, `branch_id`, `purchase_price_per_unit`, `selling_price_unit`, `category_id`, `quantity`, `modified_date`) VALUES
(5, 'RETAIL GAS', '2018-08-23 23:00:00', 1, 150, 250, 3, '99999.99999', NULL),
(6, 'BULK GAS', '2018-08-23 23:00:00', 1, 500, 600, 3, '99999.99999', NULL),
(7, 'DIESEL', '2018-08-23 23:00:00', 1, 140, 145, 2, '500000.00000', NULL),
(8, 'KEROSEN', '2018-08-23 23:00:00', 1, 200, 220, 2, '500000.00000', NULL),
(9, 'FUEL', '2018-08-23 23:00:00', 1, 145, 150, 2, '500000.00000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_has_pump`
--

CREATE TABLE `products_has_pump` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_branch_id` int(11) NOT NULL,
  `pump_id` int(11) NOT NULL,
  `pump_opening_reading` decimal(10,5) NOT NULL,
  `opening_reading_time` time DEFAULT NULL,
  `pump_closing_reading` decimal(10,5) DEFAULT NULL,
  `closing_reading_time` time DEFAULT NULL,
  `sold_quantity_pump` float DEFAULT NULL,
  `sold_quantity_tank` decimal(10,5) DEFAULT NULL,
  `amount` double(10,9) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `manual_pump_opening_r` decimal(10,5) DEFAULT NULL,
  `tank_opening_reading` decimal(10,5) DEFAULT NULL,
  `tank_closing_reading` decimal(10,5) DEFAULT NULL,
  `manual_tank_opening_r` decimal(10,5) DEFAULT NULL,
  `manual_tank_reason` text,
  `manual_pump_reason` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pump`
--

CREATE TABLE `pump` (
  `id` int(11) NOT NULL,
  `pump_num` int(11) NOT NULL,
  `tank_number` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pump`
--

INSERT INTO `pump` (`id`, `pump_num`, `tank_number`, `branch_id`, `product_id`) VALUES
(1, 1, 4, 1, 1),
(2, 2, 4, 1, 1),
(3, 3, 2, 1, 1),
(4, 4, 3, 1, 1),
(5, 1, 1, 1, 4),
(6, 1, 5, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pump1`
--

CREATE TABLE `pump1` (
  `id` int(11) NOT NULL,
  `pump_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pump1`
--

INSERT INTO `pump1` (`id`, `pump_num`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `pump_readings`
--

CREATE TABLE `pump_readings` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `opening_reading` decimal(10,2) NOT NULL,
  `manual_opening_r` decimal(10,2) DEFAULT NULL,
  `manual_reason` text,
  `opening_reading_time` time NOT NULL,
  `closing_reading` decimal(10,2) DEFAULT NULL,
  `closing_reading_time` time DEFAULT NULL,
  `quantity_sold` decimal(10,2) DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `tank_has_pumps_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pump_readings`
--

INSERT INTO `pump_readings` (`id`, `date`, `opening_reading`, `manual_opening_r`, `manual_reason`, `opening_reading_time`, `closing_reading`, `closing_reading_time`, `quantity_sold`, `amount`, `tank_has_pumps_id`) VALUES
(1, '2018-08-24', '100.00', NULL, NULL, '15:15:27', NULL, NULL, NULL, NULL, 16);

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `id` int(11) NOT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `reply` tinyint(1) DEFAULT NULL,
  `q_read` tinyint(1) DEFAULT NULL,
  `issuer_user_account_id` int(11) NOT NULL,
  `issuer_user_account_Staff_Bio_Data_id` int(11) NOT NULL,
  `reiver_user_account_id` int(11) NOT NULL,
  `receiver_user_account_Staff_Bio_Data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `basicSalary` decimal(20,2) NOT NULL,
  `position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `basicSalary`, `position`) VALUES
(1, '20000.00', 'Sales Personnel'),
(2, '40000.00', 'Driver');

-- --------------------------------------------------------

--
-- Table structure for table `salaryrecords`
--

CREATE TABLE `salaryrecords` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `absent` int(11) NOT NULL,
  `late` int(11) NOT NULL,
  `personalTax` decimal(20,2) NOT NULL,
  `companySavings` decimal(20,2) NOT NULL,
  `grosspay` decimal(20,2) NOT NULL,
  `totalDeductions` decimal(20,2) NOT NULL,
  `netPay` decimal(20,2) NOT NULL,
  `user_acount_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salaryrecords`
--

INSERT INTO `salaryrecords` (`id`, `date`, `absent`, `late`, `personalTax`, `companySavings`, `grosspay`, `totalDeductions`, `netPay`, `user_acount_id`) VALUES
(3, '2018-08-16', 2400, 1000, '500.00', '5000.00', '40000.00', '8900.00', '31100.00', 1),
(4, '2018-08-16', 2400, 1000, '500.00', '5000.00', '20000.00', '8900.00', '11100.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff_bio_data`
--

CREATE TABLE `staff_bio_data` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(70) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `lga` varchar(45) DEFAULT NULL,
  `town` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `marital_status` tinyint(1) NOT NULL,
  `Next_of_kin` varchar(50) NOT NULL,
  `next_of_kin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_bio_data`
--

INSERT INTO `staff_bio_data` (`id`, `name`, `sex`, `dob`, `country`, `state`, `lga`, `town`, `street`, `photo`, `branch_id`, `marital_status`, `Next_of_kin`, `next_of_kin_address`) VALUES
(1, 'Don Marcery', 'Male', '2018-08-16', 'Nigeria', 'Bayelsa', 'Kolokuma Opokuma', 'Odi', 'Odioma ', 'don.jpg', 1, 0, 'Amaowei Ofoni', 'Odi Town'),
(2, 'Favour Johnson', 'Female', '2018-08-23', 'Nigeria', 'Bayelsa', 'Southern Ijaw', 'Yenagoa', 'Akenfa bolou', 'favour.jpg', 1, 0, 'Event Okoli', 'Akenfa One house'),
(10, 'Thompson Ibiodo', 'Male', '2018-08-26', '', 'Bayelsa', 'SILGA', 'Ekeremo', 'Okadi House, Okadi Street', 'eledo pics.png', 1, 1, 'Okolo Okoko', 'Ekeremo Town'),
(12, 'Okoro Marian', 'Female', '2018-08-26', '', 'Norfolk Island', 'Okara', 'Ogboibo', 'Okoloo House', 'eledo pics.jpg', 1, 0, 'God\\''stime', 'Rforoad'),
(13, 'Mark Daniels', 'Male', '2018-08-26', '', 'DibÃ«r', 'joaja', 'hasjak', 'ajaiia', 'eledo pics (Custom).jpg', 1, 0, 'shsgaajaka', 'sjssksls'),
(14, 'Mike Ozekhome', 'Male', '2018-08-26', '', 'Bayelsa', 'SILGA', 'Yenagoa', 'yenagoa', 'eledo pics.png', 1, 0, 'sldjsdos', 'aodaokoaa'),
(15, 'Malachi Ozigbo', 'Female', '2018-08-27', '', 'Bayelsa', 'YELGA', 'Ogboinbiri', 'Okininwari', 'eledo pics (Custom).jpg', 1, 0, 'hdijoos', 'reorjoejoe'),
(17, 'Okologba Okolo', 'Male', '2018-08-27', '', 'Badghis', 'dhshis', 'sdnhisjdos', 'sdhsiios', 'eledo pics (Custom).jpg', 1, 0, 'skssssljs', 'djfodjodod'),
(18, 'sanu momodu kabiru', 'Male', '2018-08-27', '', 'Bayelsa', 'silga', 'agudama', 'opolo', 'chidinma (Custom).jpg', 3, 1, 'umar', 'agudama');

-- --------------------------------------------------------

--
-- Table structure for table `staff_contacts`
--

CREATE TABLE `staff_contacts` (
  `id` int(11) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `Staff_Bio_Data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_contacts`
--

INSERT INTO `staff_contacts` (`id`, `phone`, `email`, `Staff_Bio_Data_id`) VALUES
(6, '0906784652', 'ibiodo@gmail.com', 10),
(8, '09094847323', 'olokjjdfag@yahoo.com', 12),
(9, '598477332098', 'ibiodo@gmail.com', 13),
(10, '059848332', 'ibiodo@gmail.com', 14),
(11, '4093938383', 'kabiru@gmail.com', 15),
(13, '098877666', 'iniakpothompson@gmail.com', 17),
(14, '08069748732', 'kabiruproject@gmail.com', 18);

-- --------------------------------------------------------

--
-- Table structure for table `staff_education`
--

CREATE TABLE `staff_education` (
  `id` int(11) NOT NULL,
  `institution_name` varchar(70) DEFAULT NULL,
  `education_level` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `certificate_obtained` varchar(45) DEFAULT NULL,
  `ceritificate` varchar(45) DEFAULT NULL,
  `Staff_Bio_Data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_education`
--

INSERT INTO `staff_education` (`id`, `institution_name`, `education_level`, `start_date`, `end_date`, `certificate_obtained`, `ceritificate`, `Staff_Bio_Data_id`) VALUES
(2, 'Niger Delta University', 'First Degree', '2006-11-15', '2010-10-10', 'B.Sc', NULL, 15),
(3, 'University of Port-Harcourt', 'O level', '2014-02-12', '2016-05-05', 'M.Sc', NULL, 15),
(5, 'sdmskdjos', 'O level', '2018-08-16', '2018-08-31', 'ksksdosjdos', NULL, 17),
(6, 'community ', 'First Degree', '2018-08-15', '2018-08-17', 'BSc', NULL, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tank`
--

CREATE TABLE `tank` (
  `id` int(11) NOT NULL,
  `tank_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tank`
--

INSERT INTO `tank` (`id`, `tank_num`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tankall_pumpstotal`
--

CREATE TABLE `tankall_pumpstotal` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `tank_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `pumps_total` decimal(20,2) NOT NULL,
  `pumps_total_reading` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tankall_pumpstotal`
--

INSERT INTO `tankall_pumpstotal` (`id`, `date`, `tank_id`, `section_id`, `branch_id`, `pumps_total`, `pumps_total_reading`) VALUES
(3, '2018-07-29', 4, 2, 1, '30131.00', '2078.00'),
(7, '2018-08-12', 4, 2, 1, '30131.00', '2078.00'),
(8, '2018-08-16', 4, 2, 1, '29014.50', '2001.00');

-- --------------------------------------------------------

--
-- Table structure for table `tank_has_pums`
--

CREATE TABLE `tank_has_pums` (
  `id` int(11) NOT NULL,
  `pump_id` int(11) NOT NULL,
  `tank_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tank_has_pums`
--

INSERT INTO `tank_has_pums` (`id`, `pump_id`, `tank_id`, `products_id`, `category_id`, `branch_id`) VALUES
(16, 1, 1, 5, 3, 1),
(17, 2, 1, 5, 3, 1),
(19, 1, 2, 6, 3, 1),
(20, 2, 2, 6, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tank_readings`
--

CREATE TABLE `tank_readings` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `opening_reading` decimal(10,2) NOT NULL,
  `manual_opening_r` decimal(10,2) DEFAULT NULL,
  `manual_reason` text,
  `opening_reading_time` time NOT NULL,
  `closing_reading` decimal(10,2) DEFAULT NULL,
  `closing_reading_time` time DEFAULT NULL,
  `quantity_sold` decimal(10,2) DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `tank_has_pumps_id` int(11) NOT NULL,
  `tank_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tank_readings`
--

INSERT INTO `tank_readings` (`id`, `date`, `opening_reading`, `manual_opening_r`, `manual_reason`, `opening_reading_time`, `closing_reading`, `closing_reading_time`, `quantity_sold`, `amount`, `tank_has_pumps_id`, `tank_id`) VALUES
(1, '2018-08-24', '100.00', NULL, NULL, '15:15:27', NULL, NULL, NULL, NULL, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `totals`
--

CREATE TABLE `totals` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `totalQuantity` decimal(20,2) NOT NULL,
  `amount` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `totals`
--

INSERT INTO `totals` (`id`, `date`, `branch_id`, `cat_id`, `truck_id`, `totalQuantity`, `amount`) VALUES
(2, '2018-08-18', 1, 1, NULL, '0.00', '82280.00'),
(8, '2018-08-18', 2, 2, NULL, '2078.00', '30131.00'),
(12, '2018-08-18', 2, 6, NULL, '78687.00', '6575543.00'),
(18, '2018-08-18', 2, 1, NULL, '74350.00', '1487000.00'),
(21, '2018-08-18', 1, 5, NULL, '5763.00', '0.00'),
(22, '2018-08-18', 1, 2, NULL, '2001.00', '29014.50'),
(23, '2018-08-18', 1, 4, 2, '5000.00', '400000.00');

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `id` int(11) NOT NULL,
  `truck_name` varchar(45) DEFAULT NULL,
  `products_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `products_branch_id` int(11) NOT NULL,
  `user_account_id` int(11) NOT NULL,
  `user_account_Staff_Bio_Data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`id`, `truck_name`, `products_id`, `section_id`, `products_branch_id`, `user_account_id`, `user_account_Staff_Bio_Data_id`) VALUES
(2, 'Pay loader', 1, 2, 1, 1, 1),
(3, 'Diesel Loader', 7, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `truck_jobs`
--

CREATE TABLE `truck_jobs` (
  `id` int(11) NOT NULL,
  `job_description` text NOT NULL,
  `product_quantity` varchar(100) NOT NULL,
  `product_value` decimal(20,2) NOT NULL,
  `trucks_id` int(11) NOT NULL,
  `trucks_products_id` int(11) NOT NULL,
  `trucks_products_branch_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `truck_jobs`
--

INSERT INTO `truck_jobs` (`id`, `job_description`, `product_quantity`, `product_value`, `trucks_id`, `trucks_products_id`, `trucks_products_branch_id`, `date`) VALUES
(1, 'Goodhdg', '200 liters', '40000.00', 2, 1, 1, '2018-08-02'),
(3, 'Loading of Crates', '5000', '780098.00', 2, 1, 1, '2018-07-26'),
(8, 'yhgf', '78687', '6575543.00', 2, 1, 1, '2018-08-12'),
(10, 'Opolo to Yenagoa', '5000 Liters', '400000.00', 2, 1, 1, '2018-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `truck_jobs_has_expenses`
--

CREATE TABLE `truck_jobs_has_expenses` (
  `id` int(11) NOT NULL,
  `truck_jobs_id` int(11) NOT NULL,
  `expenses_id` int(11) NOT NULL,
  `expenses_branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `truck_jobs_has_expenses`
--

INSERT INTO `truck_jobs_has_expenses` (`id`, `truck_jobs_id`, `expenses_id`, `expenses_branch_id`) VALUES
(1, 1, 5, 1),
(2, 3, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `Staff_Bio_Data_id` int(11) NOT NULL,
  `time_in` timestamp NULL DEFAULT NULL,
  `time_out` timestamp NULL DEFAULT NULL,
  `login_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`id`, `position`, `username`, `password`, `role`, `section_id`, `Staff_Bio_Data_id`, `time_in`, `time_out`, `login_status`) VALUES
(30, 'ACCOUNTANT', 'reg', 'dbbc27c0ef1094b64513cae4601a26ff', 3, 2, 10, NULL, NULL, 1),
(31, 'DRIVER', 'take', 'de50282d069cbc83c6764f28077119a7', 6, 2, 14, NULL, NULL, 0),
(32, 'SALES OFFICER', 'ten', '2b3e397278d7724496cf9e75f0037969', 5, 2, 12, NULL, NULL, 0),
(33, 'SALES OFFICER', 'sellforwatgo', '19cd0b671113ed0a2f5244388bbb1b02', 5, 7, 18, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calibration`
--
ALTER TABLE `calibration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_branch` (`branch_id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_parent`
--
ALTER TABLE `data_parent`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `did` (`did`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_accountID` (`user_accountID`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drinks_category`
--
ALTER TABLE `drinks_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drinks_cat_branch`
--
ALTER TABLE `drinks_cat_branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_cat_drink_id` (`branch_id`,`cat_id`,`drinks_id`),
  ADD KEY `fkdrinksID` (`drinks_id`),
  ADD KEY `fkcatID` (`cat_id`);

--
-- Indexes for table `drinks_price`
--
ALTER TABLE `drinks_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dCbID` (`d_c_b_id`),
  ADD KEY `cal_id` (`cal_id`),
  ADD KEY `dcid` (`drinks_catId`);

--
-- Indexes for table `drink_sales`
--
ALTER TABLE `drink_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drinks_c_bID` (`drinks_c_bID`),
  ADD KEY `c_ID` (`c_ID`),
  ADD KEY `d_catID` (`d_catID`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`,`branch_id`),
  ADD KEY `fk_expenses_branch1_idx` (`branch_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userAccount_ID` (`userAccount_ID`);

--
-- Indexes for table `payslip`
--
ALTER TABLE `payslip`
  ADD PRIMARY KEY (`id`,`Staff_Bio_Data_id`,`Staff_Bio_Data_branch_id`),
  ADD KEY `fk_payslip_Staff_Bio_Data1_idx` (`Staff_Bio_Data_id`,`Staff_Bio_Data_branch_id`);

--
-- Indexes for table `previuos_work`
--
ALTER TABLE `previuos_work`
  ADD PRIMARY KEY (`id`,`Staff_Bio_Data_id`),
  ADD KEY `fk_previuos_work_Staff_Bio_Data1_idx` (`Staff_Bio_Data_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`,`branch_id`),
  ADD KEY `fk_products_branch_idx` (`branch_id`),
  ADD KEY `fk_prod_cat` (`category_id`);

--
-- Indexes for table `products_has_pump`
--
ALTER TABLE `products_has_pump`
  ADD PRIMARY KEY (`id`,`products_id`,`products_branch_id`,`pump_id`),
  ADD KEY `fk_products_has_pump_pump1_idx` (`pump_id`),
  ADD KEY `fk_products_has_pump_products1_idx` (`products_id`,`products_branch_id`),
  ADD KEY `cat_id` (`category_id`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `pump`
--
ALTER TABLE `pump`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pump1`
--
ALTER TABLE `pump1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pump_readings`
--
ALTER TABLE `pump_readings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tank_pum_id` (`tank_has_pumps_id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`,`issuer_user_account_id`,`issuer_user_account_Staff_Bio_Data_id`,`reiver_user_account_id`,`receiver_user_account_Staff_Bio_Data_id`),
  ADD KEY `fk_query_user_account1_idx` (`issuer_user_account_id`,`issuer_user_account_Staff_Bio_Data_id`),
  ADD KEY `fk_query_user_account2_idx` (`reiver_user_account_id`,`receiver_user_account_Staff_Bio_Data_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaryrecords`
--
ALTER TABLE `salaryrecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_acount_id` (`user_acount_id`);

--
-- Indexes for table `staff_bio_data`
--
ALTER TABLE `staff_bio_data`
  ADD PRIMARY KEY (`id`,`branch_id`),
  ADD KEY `fk_Staff_Bio_Data_branch1_idx` (`branch_id`);

--
-- Indexes for table `staff_contacts`
--
ALTER TABLE `staff_contacts`
  ADD PRIMARY KEY (`id`,`Staff_Bio_Data_id`),
  ADD KEY `fk_staff_contact_Staff_Bio_Data1_idx` (`Staff_Bio_Data_id`);

--
-- Indexes for table `staff_education`
--
ALTER TABLE `staff_education`
  ADD PRIMARY KEY (`id`,`Staff_Bio_Data_id`),
  ADD KEY `fk_staff_education_Staff_Bio_Data1_idx` (`Staff_Bio_Data_id`);

--
-- Indexes for table `tank`
--
ALTER TABLE `tank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tankall_pumpstotal`
--
ALTER TABLE `tankall_pumpstotal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tank_allpumpsId` (`tank_id`,`section_id`,`branch_id`);

--
-- Indexes for table `tank_has_pums`
--
ALTER TABLE `tank_has_pums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pump_tank_prod_id` (`pump_id`,`tank_id`,`products_id`),
  ADD KEY `fktank_id` (`tank_id`),
  ADD KEY `fkprod_id` (`products_id`),
  ADD KEY `cat_id` (`category_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `tank_readings`
--
ALTER TABLE `tank_readings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tank_has_pums` (`tank_has_pumps_id`),
  ADD KEY `tank_id` (`tank_id`);

--
-- Indexes for table `totals`
--
ALTER TABLE `totals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`id`,`products_id`,`products_branch_id`),
  ADD KEY `fk_trucks_products1_idx` (`products_id`,`products_branch_id`),
  ADD KEY `fk_trucks_user_account1_idx` (`user_account_id`,`user_account_Staff_Bio_Data_id`),
  ADD KEY `sect_id` (`section_id`);

--
-- Indexes for table `truck_jobs`
--
ALTER TABLE `truck_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_truck_jobs_trucks1_idx` (`trucks_id`,`trucks_products_id`,`trucks_products_branch_id`);

--
-- Indexes for table `truck_jobs_has_expenses`
--
ALTER TABLE `truck_jobs_has_expenses`
  ADD PRIMARY KEY (`id`,`truck_jobs_id`,`expenses_id`,`expenses_branch_id`),
  ADD KEY `fk_truck_jobs_has_expenses_expenses1_idx` (`expenses_id`,`expenses_branch_id`),
  ADD KEY `fk_truck_jobs_has_expenses_truck_jobs1_idx` (`truck_jobs_id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`,`Staff_Bio_Data_id`),
  ADD KEY `fk_user_account_Staff_Bio_Data1_idx` (`Staff_Bio_Data_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bonuses`
--
ALTER TABLE `bonuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `calibration`
--
ALTER TABLE `calibration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_parent`
--
ALTER TABLE `data_parent`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `drinks_cat_branch`
--
ALTER TABLE `drinks_cat_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `drinks_price`
--
ALTER TABLE `drinks_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `drink_sales`
--
ALTER TABLE `drink_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payslip`
--
ALTER TABLE `payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `previuos_work`
--
ALTER TABLE `previuos_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `products_has_pump`
--
ALTER TABLE `products_has_pump`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pump`
--
ALTER TABLE `pump`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pump1`
--
ALTER TABLE `pump1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pump_readings`
--
ALTER TABLE `pump_readings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salaryrecords`
--
ALTER TABLE `salaryrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `staff_bio_data`
--
ALTER TABLE `staff_bio_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `staff_contacts`
--
ALTER TABLE `staff_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `staff_education`
--
ALTER TABLE `staff_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tank`
--
ALTER TABLE `tank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tankall_pumpstotal`
--
ALTER TABLE `tankall_pumpstotal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tank_has_pums`
--
ALTER TABLE `tank_has_pums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tank_readings`
--
ALTER TABLE `tank_readings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `totals`
--
ALTER TABLE `totals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `truck_jobs`
--
ALTER TABLE `truck_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `truck_jobs_has_expenses`
--
ALTER TABLE `truck_jobs_has_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_parent`
--
ALTER TABLE `data_parent`
  ADD CONSTRAINT `data_parent_ibfk_1` FOREIGN KEY (`did`) REFERENCES `data` (`id`);

--
-- Constraints for table `drinks_cat_branch`
--
ALTER TABLE `drinks_cat_branch`
  ADD CONSTRAINT `fkbranchID` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  ADD CONSTRAINT `fkcatID` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `fkdrinksID` FOREIGN KEY (`drinks_id`) REFERENCES `drinks` (`id`);

--
-- Constraints for table `drinks_price`
--
ALTER TABLE `drinks_price`
  ADD CONSTRAINT `calID` FOREIGN KEY (`cal_id`) REFERENCES `calibration` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dCbID` FOREIGN KEY (`d_c_b_id`) REFERENCES `drinks_cat_branch` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dcID` FOREIGN KEY (`drinks_catId`) REFERENCES `drinks_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `fk_expenses_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkcategory_id` FOREIGN KEY (`section_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payslip`
--
ALTER TABLE `payslip`
  ADD CONSTRAINT `fk_payslip_Staff_Bio_Data1` FOREIGN KEY (`Staff_Bio_Data_id`,`Staff_Bio_Data_branch_id`) REFERENCES `staff_bio_data` (`id`, `branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `previuos_work`
--
ALTER TABLE `previuos_work`
  ADD CONSTRAINT `fk_previuos_work_Staff_Bio_Data1` FOREIGN KEY (`Staff_Bio_Data_id`) REFERENCES `staff_bio_data` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_has_pump`
--
ALTER TABLE `products_has_pump`
  ADD CONSTRAINT `fk_prod_has_pump_cat_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `fk_products_has_pump_products1` FOREIGN KEY (`products_id`,`products_branch_id`) REFERENCES `products` (`id`, `branch_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_products_has_pump_pump1` FOREIGN KEY (`pump_id`) REFERENCES `pump` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pump_readings`
--
ALTER TABLE `pump_readings`
  ADD CONSTRAINT `fktank_has_pumps_id` FOREIGN KEY (`tank_has_pumps_id`) REFERENCES `tank_has_pums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_contacts`
--
ALTER TABLE `staff_contacts`
  ADD CONSTRAINT `fk_staff_contact_Staff_Bio_Data1` FOREIGN KEY (`Staff_Bio_Data_id`) REFERENCES `staff_bio_data` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `staff_education`
--
ALTER TABLE `staff_education`
  ADD CONSTRAINT `fk_staff_education_Staff_Bio_Data1` FOREIGN KEY (`Staff_Bio_Data_id`) REFERENCES `staff_bio_data` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tank_has_pums`
--
ALTER TABLE `tank_has_pums`
  ADD CONSTRAINT `fkbranch_id` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkcateg_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkprod_id` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkpum_id` FOREIGN KEY (`pump_id`) REFERENCES `pump1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fktank_id` FOREIGN KEY (`tank_id`) REFERENCES `tank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tank_readings`
--
ALTER TABLE `tank_readings`
  ADD CONSTRAINT `fktank_pumps_id` FOREIGN KEY (`tank_has_pumps_id`) REFERENCES `tank_has_pums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tank_id` FOREIGN KEY (`tank_id`) REFERENCES `tank_has_pums` (`tank_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `totals`
--
ALTER TABLE `totals`
  ADD CONSTRAINT `fkb` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`);

--
-- Constraints for table `trucks`
--
ALTER TABLE `trucks`
  ADD CONSTRAINT `fksecID` FOREIGN KEY (`section_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `truck_jobs`
--
ALTER TABLE `truck_jobs`
  ADD CONSTRAINT `fk_truck_jobs_trucks1` FOREIGN KEY (`trucks_id`,`trucks_products_id`,`trucks_products_branch_id`) REFERENCES `trucks` (`id`, `products_id`, `products_branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `truck_jobs_has_expenses`
--
ALTER TABLE `truck_jobs_has_expenses`
  ADD CONSTRAINT `fk_truck_jobs_has_expenses_expenses1` FOREIGN KEY (`expenses_id`,`expenses_branch_id`) REFERENCES `expenses` (`id`, `branch_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_truck_jobs_has_expenses_truck_jobs1` FOREIGN KEY (`truck_jobs_id`) REFERENCES `truck_jobs` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
