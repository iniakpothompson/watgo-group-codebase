-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 11:13 AM
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
-- Table structure for table `additions`
--

CREATE TABLE `additions` (
  `id` int(11) NOT NULL,
  `description` varchar(70) NOT NULL,
  `amount` double(20,2) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `additions`
--

INSERT INTO `additions` (`id`, `description`, `amount`, `date`, `user_id`, `branch_id`) VALUES
(1, 'LOAN', 10000.00, '2019-01-07', 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `cat_id`, `branch_id`) VALUES
(1, 'Stay Block', 10, 1);

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
(5, 150),
(6, 75);

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
(2, 'Hydrocabon', 1),
(3, 'Gas', 1),
(4, 'Trucks', 1),
(5, 'Drinks-Canned', 1),
(6, 'Drinks-Case', 1),
(7, 'Drinks-PET', 1),
(8, 'Poles', 1),
(9, 'General Products', 1),
(10, 'Blocks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `debtors`
--

CREATE TABLE `debtors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debtors`
--

INSERT INTO `debtors` (`id`, `name`, `phone_number`, `branch_id`) VALUES
(14, 'Ogoriba watson', '08035200886', 1),
(15, 'Prof Adis', '08033130301', 1),
(16, 'David Oluwatoyin', '09078163598', 1),
(17, 'Gogonte Tobiah', '09037426132', 1),
(18, 'Chukwuma Isaac', '08167862519', 1),
(19, 'Joshua Gas Gede', '07086289758', 1),
(20, 'Aniebiet Eyo Benson', '07061292382', 1),
(21, 'Gogonte Tobiah', '0', 1),
(22, 'Daniel Eni-iyem', '07035668948', 1),
(23, 'Abdullah Abubakar', '07038160423', 1),
(24, 'Sinclair Onyingbo', '08103960742', 1),
(25, 'Judge Barivino', '000000', 1),
(26, 'Chibuike Emeiwe', '000', 1),
(27, 'Muse Oluwawaleyinmi Oluwafemi', '000', 1),
(28, 'Agashi Nelson Sunday', '000', 1),
(29, 'Monday Etukudor', '00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `debts`
--

CREATE TABLE `debts` (
  `id` int(11) NOT NULL,
  `debtors_id` int(11) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debts`
--

INSERT INTO `debts` (`id`, `debtors_id`, `amount`, `date`, `description`) VALUES
(1, 15, '35000.00', '2018-11-05', 'Purchase One LT RD pole @ 30,000 & Transport of Po'),
(2, 16, '5000.00', '2018-11-07', 'Collected Salary Advance'),
(3, 17, '50000.00', '2018-11-08', 'Collected Salary Advance'),
(4, 18, '200825.00', '2018-11-08', 'Total Company Ownings'),
(5, 19, '32040.00', '2018-11-08', 'Total Company ownings'),
(6, 20, '10000.00', '2018-11-08', ' Pepsi Breakages '),
(7, 21, '10000.00', '2018-11-08', 'Refund of Pepsi Breakage'),
(8, 22, '10000.00', '2018-11-08', 'Refund of Pepsi Breakages'),
(9, 23, '22000.00', '2018-11-08', 'Refund of Pepsi Breakages'),
(10, 23, '70000.00', '0000-00-00', 'Loan Repayment'),
(11, 24, '21000.00', '2018-11-08', 'Salary Advance'),
(12, 25, '50000.00', '2018-11-08', 'Total Salary Advance'),
(13, 26, '25000.00', '2018-11-08', 'Unpaid Hire'),
(14, 27, '100000.00', '2018-11-08', 'Truck Repair Refund'),
(15, 28, '120000.00', '2018-11-08', 'Pos Refund'),
(16, 29, '39360.00', '2018-01-02', 'Collected Pepsi Product ');

-- --------------------------------------------------------

--
-- Table structure for table `debt_payments`
--

CREATE TABLE `debt_payments` (
  `id` int(11) NOT NULL,
  `debtors_id` int(11) NOT NULL,
  `amount_paid` decimal(20,2) DEFAULT NULL,
  `balance` decimal(20,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debt_payments`
--

INSERT INTO `debt_payments` (`id`, `debtors_id`, `amount_paid`, `balance`, `date`) VALUES
(25, 14, '10000.00', '0.00', '2018-11-07'),
(26, 15, NULL, '35000.00', '2018-11-05'),
(27, 16, NULL, '5000.00', '2018-11-07'),
(28, 17, NULL, '50000.00', '2018-11-08'),
(29, 18, NULL, '200825.00', '2018-11-08'),
(30, 19, NULL, '32040.00', '2018-11-08'),
(31, 20, NULL, '10000.00', '2018-11-08'),
(32, 21, NULL, '10000.00', '2018-11-08'),
(33, 22, NULL, '10000.00', '2018-11-08'),
(34, 23, NULL, '92000.00', '0000-00-00'),
(35, 24, NULL, '21000.00', '2018-11-08'),
(36, 25, NULL, '50000.00', '2018-11-08'),
(37, 26, NULL, '25000.00', '2018-11-08'),
(38, 27, NULL, '100000.00', '2018-11-08'),
(39, 28, NULL, '120000.00', '2018-11-08'),
(40, 29, NULL, '39360.00', '2018-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `deduction`
--

CREATE TABLE `deduction` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` double(20,2) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deduction`
--

INSERT INTO `deduction` (`id`, `description`, `amount`, `date`, `user_id`, `branch_id`) VALUES
(73, 'OTHERS', 300.00, '2018-09-20', 10, 1);

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
('AQUAFINA', 12),
('Coke', 13),
('Eva Water', 14),
('FIVE ALIVE', 16),
('ENERGY DRINK', 17);

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
(3, 'PLASTIC');

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
(40, 1, 1, 1),
(43, 1, 1, 2),
(44, 1, 1, 3),
(45, 1, 1, 4),
(46, 1, 7, 1),
(47, 1, 7, 12);

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
  `pPricePerUnit` double(20,2) DEFAULT NULL,
  `sPricePerUnit` double(20,2) DEFAULT NULL,
  `incentive` int(20) NOT NULL,
  `totalQuantity` decimal(10,2) NOT NULL,
  `incentValue` double(20,2) DEFAULT NULL,
  `totalValue` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drink_sales`
--

CREATE TABLE `drink_sales` (
  `id` int(11) NOT NULL,
  `drinks_c_bID` int(11) NOT NULL,
  `c_ID` int(11) NOT NULL,
  `d_catID` int(11) NOT NULL,
  `quantity_sold` int(20) NOT NULL,
  `sellingPrice` double(20,2) NOT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drink_sales`
--

INSERT INTO `drink_sales` (`id`, `drinks_c_bID`, `c_ID`, `d_catID`, `quantity_sold`, `sellingPrice`, `amount`, `date`) VALUES
(45, 40, 3, 1, 570, 1400.00, '44887.50', '2018-01-02'),
(46, 40, 3, 1, 13, 1500.00, '2323.75', '2018-01-03'),
(47, 40, 3, 1, 143, 1450.00, '18411.25', '2018-01-03'),
(48, 40, 3, 1, 104, 1400.00, '8190.00', '2018-01-03'),
(49, 40, 3, 1, 17, 1500.00, '3038.75', '2018-01-04'),
(50, 40, 3, 1, 314, 1450.00, '40427.50', '2018-01-04'),
(51, 40, 3, 1, 20, 1500.00, '3575.00', '2018-01-05'),
(52, 40, 3, 1, 609, 1450.00, '78408.75', '2018-01-05'),
(53, 40, 3, 1, 100, 1450.00, '12875.00', '2018-01-03');

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
(64, '1. Tickets : =N=4500\r\n2. Tyre Valve =N=1000\r\n3. 4pcs of Tyres : =N=300000', '305500.00', 1, '2018-10-09', 4),
(65, '1. bearing : =N=12000\r\n2.Ticket : =N=4500\r\n3.Volucanizer ; =N=3000', '19500.00', 1, '2018-10-02', 4),
(66, '07/10/2018; \r\n1. Ticket : =N=4500\r\n2. Tyre repair; =N=3000\r\n3.Others; =N=3500', '11000.00', 1, '2018-10-07', 4),
(67, '1.wheel Drum & hub : =N=27,000.00\r\n2.Oil Seal : =N=3000.00\r\n3.Set of Bearing : =N= 10,000.00\r\n4. Blue Gum : =N=500.00\r\n5.Side Pan : =N=5000.00\r\n6. 2pcs Slippers: =N= 2000.00\r\n7.7pcs Nuts : =N=3500.00\r\n8.Fan Belt :=N=500.00\r\n9. Break Pot: =N=6000.00\r\n10. Mechanic :=N=15,000\r\nTotal : =N=72,500', '72500.00', 1, '2018-01-01', 4),
(68, '1.Set of Clutch Plate :=N=32,000.00\r\n2.Clutch Noon & pipe: =N=10,000.00\r\n3.MRS Grease : =N=800.00\r\n4. 2Sheet Sand paper: =N=200.00\r\n5.Set of in & out BRG super 30;=n=12,000.00\r\n6. Spindle Nut: =N=4000.00\r\n7. Hub Seal: =N=1000.00\r\n8. 2pcs MRS grease: =N=1600.00\r\n9.Spindle Pin: =N=1500.00\r\n10.Mechanic =N=25,000\r\nTotal: =N=88,100.00', '88100.00', 1, '2018-10-06', 4),
(69, '10/10/2017.\r\nvolucanizer Payment for Repair of tyre: =N=3000.00', '3000.00', 1, '2018-10-10', 4),
(70, '03/10/2018. DIESEL USED; =N=625', '6250.00', 1, '2018-10-03', 4),
(71, '04/10/2018.Purchase adaptor for repairs . =N=1000', '1000.00', 1, '0000-00-00', 4),
(72, '05/10/2018.Purchase of diesel used for work. =N=6250', '6250.00', 1, '2018-10-05', 4),
(73, '03/10/2018. Purchase 25litres of Diesel for truck use.=N=6250', '6250.00', 1, '2018-10-03', 4),
(74, '05/10/2018. Purchase 25litres of Diesel for truck use. =N=6250', '6250.00', 1, '2018-10-05', 4),
(75, '09/10/2018.Purchase 25litres of Diesel for truck use. =N=6250', '6250.00', 1, '2018-10-09', 4),
(76, '09/10/2018.Purchase 25litres of Diesel for truck use. =N=6250', '6250.00', 1, '2018-10-09', 4),
(77, '09/10/2018. Purchase 25litres of Diesel for truck  use =N=6250.', '6250.00', 1, '2018-10-09', 4),
(78, '01/10/2018. Payment for mechanic for truck repairs.=N=15,000.00', '15000.00', 1, '2018-10-01', 4),
(79, '01/10/2018. 1. Feeding for hired truck driver; =N=3000\r\n2. Trip allowance: =N= 20,000\r\n3. Clip & Bolts =N=1000.00\r\n4.Turbo charger repairs: =N=15,000\r\nTotal:', '39000.00', 1, '2018-10-01', 4),
(80, '02/10/2018. transportation .=N=10,000', '10000.00', 1, '2018-10-02', 4),
(81, '03/10/2018. Payment for turbo charger and Mechanic workmanship. =N=8000', '8000.00', 1, '2018-10-03', 4),
(82, '04/10/2018. Payment for Diesel to warri   9 =N=54,500 ) & Renewal of Particullars =N=10,000\r\nTotal =N=64,500', '64500.00', 1, '2018-10-04', 4),
(83, '12/10/2018; DRIVERS ALLOWANCE TO SUPPLY IN PH.\r\nAllowance for Hired Truck.', '13000.00', 1, '2018-10-12', 4),
(84, '12/10/2018.\r\nPayment for Diesel Used for work.', '5000.00', 1, '2018-10-12', 4),
(85, '12/10/2018: Welding of carryer =N=7000\r\nElecrode,Fuel, Cutting Stone =N=4725\r\nRepair of Hub plus other =N=46600\r\nWorkmanship ;=N=25,000\r\nTotal: =N=83,325', '83325.00', 1, '2018-10-12', 4),
(86, '185litres of Diesel used to Warri & Back.', '40700.00', 1, '2018-01-03', 4),
(87, 'Trip Allowance', '10000.00', 1, '2018-01-04', 4),
(90, 'Diesel used', '15400.00', 1, '2018-01-15', 4),
(91, 'Repairs, Mirrow plus Others Purchase and Fixing.', '76500.00', 1, '2018-01-17', 4),
(92, 'Kick  & injector Repairs ', '58000.00', 1, '2018-01-18', 4),
(93, 'Tyre Repairs', '1500.00', 1, '2018-01-19', 4),
(94, 'Diesel & 2trip Allowance', '26000.00', 1, '2018-01-21', 4),
(95, 'Diesel and trip allowance', '28500.00', 1, '2018-01-23', 4),
(96, 'Compressor Repairs', '6000.00', 1, '2018-01-24', 4),
(97, 'Fuel;=880, Servicing oil , Filters :35,000\r\nSeal 3500, Workmanship; 8,000\r\nDiesel 17,000.\r\nTotal 64,380', '64380.00', 1, '2018-01-25', 4),
(98, 'Diesel 4250,\r\nAllowance10,000\r\nSalary:70,000\r\nTotal : 84,250', '84250.00', 1, '2018-01-30', 4),
(99, 'Trip Allowance', '10000.00', 1, '2018-02-02', 4),
(100, 'Trip Allowance 10,000\r\nDiesel 9,000\r\nTotal :19,000', '19000.00', 1, '2018-02-10', 4),
(101, ' Local trip allowance', '5000.00', 1, '2018-02-07', 4),
(102, 'Diesel Used', '10200.00', 1, '2018-02-15', 4),
(103, 'Trip allowance', '10000.00', 1, '2018-02-16', 4),
(104, 'Diesel 15,000\r\nTrip allowance 10,000\r\nTotal; 25,000', '25000.00', 1, '2018-02-17', 4),
(105, 'Trip Allowance 10,000\r\nDiesel 9000\r\nCan of oil 3500\r\nTotal;22500', '22500.00', 1, '2018-02-21', 4),
(106, 'Diesel 28000\r\nAllowance 10,000\r\nSalary: 70,000\r\nTotal;108,000', '108000.00', 1, '2018-02-27', 4),
(107, 'FO Supply Trip Allowance 10,000\r\nDiesel 9000\r\nTotal 19000', '19000.00', 1, '2018-03-04', 4),
(108, 'Diesel used for trip', '33000.00', 1, '2018-03-06', 4),
(109, 'Trip Allowance', '10000.00', 1, '2018-03-07', 4),
(110, 'Diesel Used', '11000.00', 1, '2018-03-08', 4),
(111, 'Trip Allowance', '10000.00', 1, '2018-03-15', 4),
(112, 'Trip Allowance', '20000.00', 1, '2018-03-11', 4),
(113, 'Diesel Used for Trip', '44000.00', 1, '2018-03-09', 4),
(114, 'Diesel used for trip 33000\r\nTrip Allowance 10,000\r\nTotal 43000', '43000.00', 1, '2018-03-17', 4),
(115, 'FO supply Diesel 9000\r\nAllowance 10000\r\nTotal 19000', '19000.00', 1, '2018-03-20', 4),
(116, 'Diesel used 18000\r\nAlowance 10000\r\nTotal: 28,000', '28000.00', 1, '2018-03-21', 4),
(117, 'Engine Repair', '5000.00', 1, '2018-03-22', 4),
(118, 'Diesel used for Supply', '11000.00', 1, '2018-03-23', 4),
(119, 'Diesel used for supply 11000\r\nAllowance 10000\r\nTotal 21000', '21000.00', 1, '2018-03-24', 4),
(120, 'Diesel used for trip 22000\r\nAllowance 10,000\r\nTotal 32000', '32000.00', 1, '2018-03-26', 4),
(121, 'Dieselused for trip 68450\r\nAllowance 10,000\r\nSalary 70,00\r\nTotal 148,450', '148450.00', 1, '2018-03-28', 4),
(122, 'Diesel used (26.36litres) 5275\r\nAllowance 10000\r\noil 3500\r\nTotal; 18775', '18775.00', 1, '2018-04-03', 4),
(123, 'Diesel used for trip', '30400.00', 1, '2018-04-09', 4),
(124, 'Diesel used for trip 22000\r\nAllowance 20000\r\nTotal 42000', '42000.00', 1, '2018-04-10', 4),
(125, 'Diesel used for trip 30,000\r\nAllowance 10000\r\nTotal : 40000', '40000.00', 1, '2018-04-11', 4),
(126, 'Diesel used 15400\r\nAllowance 10000\r\nTotal 25,400', '25400.00', 1, '2018-04-12', 4),
(127, 'Diesel & Allowance', '40000.00', 1, '2018-04-14', 4),
(128, 'oil', '7000.00', 1, '2018-04-13', 4),
(129, 'Diesed used', '4400.00', 1, '2018-04-15', 4),
(130, 'Diesel used', '47190.00', 1, '2018-04-17', 4),
(131, 'Diesel uesd, Trip Allowance & Repairs', '34000.00', 1, '2018-04-21', 4),
(132, 'Allowance 20000\r\nDiesel used 43460\r\nTotal ; 63460', '63460.00', 1, '2018-04-26', 4),
(133, 'Salary', '70000.00', 1, '2018-04-28', 4),
(134, 'Allowance', '10000.00', 1, '0000-00-00', 4),
(135, 'Allowance', '10000.00', 1, '2018-05-03', 4),
(136, 'Diesel used for trip (176litres ) 38290\r\nAllowance 10000\r\nTotal 48,290', '48290.00', 1, '2018-05-05', 4),
(137, 'Diesel used for trip (176litres ) 38290\r\nAllowance 10000\r\nTotal 48,290', '48290.00', 1, '2018-05-05', 4),
(138, 'Nuts & Bolts', '6000.00', 1, '2018-05-09', 4),
(139, 'Mechanic 10000\r\nWelder 8000\r\nbaloom 12500\r\nTotal ; 30,500', '30500.00', 1, '2018-05-10', 4),
(140, 'Allowance 8000\r\nWaybill 1000\r\nTotal 9000', '9000.00', 1, '2018-05-11', 4),
(141, 'Diesel Used 33000\r\nAllowance 10000\r\nTotal 43000', '43000.00', 1, '2018-05-14', 4),
(142, 'Diesel Used 33000\r\nAllowance 10000\r\nTotal:43000', '43000.00', 1, '2018-05-19', 4),
(143, 'Tyre repair 1000\r\nAllowance 3000\r\nDiesel 33000\r\nTotal; 37000', '37000.00', 1, '2018-05-22', 4),
(144, 'Pump Servicing 20,000\r\nAllowance 10000\r\nTotal; 30,000', '30000.00', 1, '2018-05-25', 4),
(145, 'Allowance 8000\r\n', '8000.00', 1, '2018-05-28', 4),
(146, 'Diesel used 41,000\r\nAllowance 10,000\r\nSalary: 70,000\r\nTotal 121,000', '121000.00', 1, '2018-05-30', 4),
(147, 'Diesel for trip 44810\r\nAllowance 10,000\r\nTotal 54810', '54810.00', 1, '2018-06-04', 4),
(148, 'Allowance', '10000.00', 1, '2018-06-05', 4),
(149, 'Diesel used 42800\r\nAllowance 10,000\r\nTotal: 52800', '52800.00', 1, '2018-06-06', 4),
(150, 'Expenses 2700\r\nAllowance 10000\r\noil 7000\r\nTotal 19700', '19700.00', 1, '2018-06-07', 4),
(151, 'Allowance', '10000.00', 1, '2018-06-09', 4),
(152, 'Diesel 43785\r\nAllowance 10000\r\nTotal 53785', '53785.00', 1, '2018-06-12', 4),
(153, 'Allowance 10000\r\noil 3500\r\nTotal 13500', '13500.00', 1, '2018-06-15', 4),
(154, 'Diesel used (240.61litres)', '48125.00', 1, '2018-06-16', 4),
(155, 'oil,Diesel & Allowance', '47200.00', 1, '2018-06-20', 4),
(156, 'Repairs', '15000.00', 1, '2018-06-23', 4),
(157, 'Allowance', '10000.00', 1, '2018-06-24', 4),
(158, 'Allowance', '10000.00', 1, '2018-06-25', 4),
(159, 'Diesel 46800\r\nAllowance 10000\r\nOil 3500\r\nTotal 60300', '60300.00', 1, '2018-06-26', 4),
(160, 'Expenses & Allowance 11000\r\nDiesel 88000\r\nSalary 70000\r\nTotal 169000', '169000.00', 1, '2018-06-30', 4),
(161, 'Diesel used', '22000.00', 1, '2018-07-05', 4),
(162, 'Allowance', '10000.00', 1, '2018-07-06', 4),
(163, 'Diesel used 20000\r\nAllowance 10000\r\nTotal 30,000', '30000.00', 1, '2018-07-07', 4),
(164, 'Diesel used 44000\r\nAllowance 10000\r\nTotal 54000', '54000.00', 1, '2018-07-09', 4),
(165, 'Diesel Used 38975\r\nAllowance 25000\r\nEngine oil 3500\r\nTotal 98975', '98975.00', 1, '2018-07-11', 4),
(166, 'Accident Expenses', '130000.00', 1, '2018-07-14', 4),
(167, 'Pannel beater &  Adv firber work ', '10000.00', 1, '2018-07-16', 4),
(168, 'Diesel used, Allowances 35000,\r\nRediator Repairs + oil 12000\r\nTotal 47000', '47000.00', 1, '2018-07-18', 4),
(169, 'Diesel used 40000\r\nFirberman 5000\r\nTotal 45000', '45000.00', 1, '2018-07-20', 4),
(170, 'Allowance', '10000.00', 1, '2018-07-21', 4),
(171, 'Fuel for cleaning 2900\r\noil 6500\r\nTotal; 9400', '9400.00', 1, '2018-07-23', 4),
(172, 'Damaged Light Purchase & Repairs 55000\r\nDiesel used & Allowance: 25000\r\nTotal 80000\r\n', '80000.00', 1, '2018-07-25', 4),
(173, 'Allowance 10000\r\nMechanic workmanship , Replacement of Bulbs 10000\r\nTotal 20,000', '20000.00', 1, '2018-07-26', 4),
(174, 'Diesel & Allowance 16200', '16200.00', 1, '2018-07-27', 4),
(175, 'Engine oil', '3500.00', 1, '2018-07-28', 4),
(176, 'Allowance 10,000\r\nMatels & other 42000\r\nHaft Engine, Transportation 570000\r\nCrankshaft work 12000\r\nSalary 70000\r\nTotal 704000', '704000.00', 1, '2018-07-31', 4),
(177, 'Fuel,oil,bolts + others ', '67800.00', 1, '2018-08-01', 4),
(178, 'Clip & other repairs ', '54640.00', 1, '2018-08-02', 4),
(179, 'Engine Repair workmanship + others', '35290.00', 1, '2018-08-03', 4),
(180, 'Allowances ', '13000.00', 1, '2018-08-05', 4),
(181, 'Allowance & Diesel Used for local suply.', '21500.00', 1, '2018-08-07', 4),
(182, 'Allowance and diesel used for local supply', '35300.00', 1, '2018-08-08', 4),
(183, 'Allowance and diesel used for local supply', '35000.00', 1, '2018-08-10', 4),
(184, 'Repair of 2nd Engine', '75000.00', 1, '2018-08-11', 4),
(185, 'Allowance ', '10000.00', 1, '2018-08-12', 4),
(186, 'Fuel Engine cleaning & Gum', '1950.00', 1, '2018-08-13', 4),
(187, 'Engine oil & diesel used for local supply', '19000.00', 1, '2018-08-14', 4),
(188, 'Allowance , Engine oil & Engine  Repairs', '28500.00', 1, '2018-08-15', 4),
(189, 'Diesel used for local supply', '11000.00', 1, '2018-08-21', 4),
(190, 'Diesel used for local supply', '5500.00', 1, '2018-08-22', 4),
(191, 'Diesel used for local supply', '40245.00', 1, '2018-08-25', 4),
(192, 'Allowance and diesel used for local supply', '22500.00', 1, '2018-08-26', 4),
(193, 'Allowance and 1st Engine repairs', '85000.00', 1, '2018-08-27', 4),
(194, 'Fuel & Mechanic workmanship', '10320.00', 1, '2018-08-28', 4),
(195, 'Diesel , Oil & others', '82500.00', 1, '2018-08-29', 4),
(196, 'Clips, Bolts ,Fuel + others', '19080.00', 1, '2018-08-30', 4),
(197, 'Hydrolic, Center case, Airwork + others Salary 70000', '119400.00', 1, '2018-08-31', 4),
(198, 'Compressor Repair 24000\r\nHub Repair 7000\r\nDiesel for Local supply 45000\r\nTotal 76000', '76000.00', 1, '2018-09-01', 4),
(199, 'Allowance ( 15000) & Diesel for local Supply ( 25000)\r\nTotal 40,000', '40000.00', 1, '2018-09-04', 4),
(200, 'Purchase of two new tyres 70000 each', '140000.00', 1, '2018-09-05', 4),
(201, 'Mechanic Payment, Fuel, 2 can oil, Vulcanizer 12900\r\nInjector repairs 18000\r\nTotal 30900', '30900.00', 1, '2018-09-06', 4),
(202, 'Allowance and Diesel used for local supply', '27000.00', 1, '2018-09-10', 4),
(203, 'Particullars renewal', '8000.00', 1, '2018-09-12', 4),
(204, 'Serving, Oil, Greasing, hydrolic, Diesel & Mechanic', '35500.00', 1, '2018-09-13', 4),
(205, 'Gasket, Allowance + others', '18450.00', 1, '2018-09-14', 4),
(206, 'Compressor Repairs', '7000.00', 1, '2018-09-15', 4),
(207, 'Gasket & bolts', '3500.00', 1, '2018-09-17', 4),
(208, 'Allowance and  Oil, tyre Repair', '24000.00', 1, '2018-09-18', 4),
(209, 'Allowance ( 15,000) and Diesel (15000 ) used for local supply', '30000.00', 1, '2018-09-20', 4),
(210, 'Air system Repair', '3000.00', 1, '2018-09-22', 4),
(211, 'Allowance and Diesel used for local supply', '60270.00', 1, '2018-09-22', 4),
(212, 'Engine oil and Diesel used for local supply', '23000.00', 1, '2018-09-24', 4),
(213, 'Allowance', '10000.00', 1, '2018-09-25', 4),
(214, 'Hired truck driver Allowance', '3000.00', 1, '2018-09-27', 4),
(215, ' Clutch Disc & Plate, Clutch Moon ', '60000.00', 1, '2018-09-29', 4),
(216, 'Mechanic Payment 16000\r\nSalary 80,000\r\nTotal: 96000', '96000.00', 1, '2018-09-30', 4),
(217, 'Allowance 10,000\r\nHired Truck allowance :12,000\r\nDiesel 7,500\r\nLub oil 10,500\r\nTotal : 40,,000', '40000.00', 1, '2018-10-16', 4),
(218, 'Hub + slippers + bolts 22,500\r\nVulcanizer 2,500\r\nFuel 290\r\nTotal 25,290', '25290.00', 1, '2018-10-16', 4),
(219, 'Diesel used 25,000\r\nTrip Allowance 5000\r\nTotal 30,000', '30000.00', 1, '2018-10-16', 4),
(220, 'Diesel used 25,000\r\nTrip Allowance 5000\r\nTotal 30,000', '30000.00', 1, '2018-10-17', 4),
(223, 'Diesel used : 11000\r\nTrip Allowance : 5000\r\nTotal : 16,000', '16000.00', 1, '2018-01-10', 4),
(224, 'Diesel Used for Trip : 44,000\r\nAllowance : 10,000\r\nTotal: 54,000', '54000.00', 1, '2018-01-11', 4),
(225, 'Carry Forward From December 2017', '51000.00', 1, '2018-01-01', 4),
(226, 'Diesel used for work 11,000\r\nAllowance 2000\r\nTotal: 13,000', '13000.00', 1, '2018-01-09', 4),
(227, 'Diesel used for Job', '16500.00', 1, '2018-01-10', 4),
(228, 'Diesel and Expenses', '23500.00', 1, '2018-01-14', 4),
(229, 'Diesel used for the Job', '5500.00', 1, '2018-01-16', 4),
(230, 'Diesel used for the Job.', '5500.00', 1, '2018-01-18', 4),
(231, 'Diesel used for Job.', '5500.00', 1, '2018-01-20', 4),
(232, 'Diesel 6600\r\nTransport: 1500\r\nTotal: 8,100', '8100.00', 1, '2018-01-21', 4),
(233, 'Diesel Used', '8500.00', 1, '2018-01-23', 4),
(234, 'Diesel 11000\r\nTyre : 2000\r\nTotal 13,000', '13000.00', 1, '2018-01-24', 4),
(235, 'Diesel Used for work 4250\r\nOil 1100\r\nTotal 5250', '5250.00', 1, '2018-01-29', 4),
(236, 'Salary:30% of workdone', '133965.00', 1, '2018-01-31', 4),
(237, 'Diesel used 6600\r\nbattary Terminal Head + other: 4000\r\nTotal : 10,600', '10600.00', 1, '2018-01-17', 4),
(238, ' Replacement of Hydrolic Hose', '20000.00', 1, '2018-01-20', 4),
(239, 'Diesel Used', '5500.00', 1, '2018-01-19', 4),
(240, 'Diesel Used', '40000.00', 1, '2018-01-23', 4),
(241, 'Diesel used 5500\r\nAir Valve 1500\r\nTotal 7000', '7000.00', 1, '2018-01-26', 4),
(242, 'Salary: 30% of Workdone.', '190900.00', 1, '2018-01-31', 4),
(244, 'Diesel used for Job', '41285.00', 1, '2018-10-19', 4),
(245, 'Allowance 20,000\r\nOil 3100\r\nTotal 23,100', '23100.00', 1, '2018-10-21', 4),
(246, 'Allowance 10,000\r\nEng oil 9,100\r\nDiesel used for trip; 24,085\r\nTotal 43,185', '43185.00', 1, '2018-10-22', 4),
(247, 'Trip allowance ', '13000.00', 1, '2018-10-24', 4),
(248, 'Diesel used 12,500\r\nEng oil 6100\r\nTotal 18600', '18600.00', 1, '2018-10-27', 4),
(250, 'transport fare for Mechanic from Ibadam&#39;', '5000.00', 1, '2018-10-25', 4),
(251, 'Diesel used for trip', '6145.00', 1, '2018-10-26', 4),
(252, 'Spanner 1000\r\nSeal & transport fare to PH 30,000\r\nMechanic 4000\r\nDIESEL 6250\r\nTotal 41250', '41250.00', 1, '2018-10-27', 4),
(253, 'Mechanic 5500\r\nTyre work 3000\r\nTickets 9500\r\nGear oil 4000\r\nTotal 22000', '22000.00', 1, '2018-10-17', 4),
(254, 'Off loading 8000\r\nBearing 6000\r\nTicket 4000\r\nTotal 18,000', '18000.00', 1, '2018-10-20', 4),
(255, 'Mechanic Payment 6000', '6000.00', 1, '2018-10-21', 4),
(256, 'Various Repairs 67300\r\nMechanic Payment 15000\r\nTotal82300', '82300.00', 1, '2018-10-22', 4),
(257, 'Ticket 4500\r\n', '4500.00', 1, '2018-10-24', 4),
(258, 'Off loading 8000\r\nYenagoa to Odi transport 3000\r\nTotal 11000\r\n', '11000.00', 1, '2018-10-26', 4),
(259, 'Tractor back Maint 110000', '110000.00', 1, '2018-10-27', 4),
(260, 'Air system repair 4000', '4000.00', 1, '2018-10-18', 4),
(261, 'Diesel used', '6250.00', 1, '2018-10-19', 4),
(262, 'Diesel use', '6250.00', 1, '2018-10-20', 4),
(263, 'Diesel use', '7500.00', 1, '2018-10-22', 4),
(264, 'Diesel Use', '6250.00', 1, '2018-10-23', 4),
(266, ' Carry forward of Various expence for of January 2018', '3415550.00', 1, '2018-01-31', 8),
(267, 'Blinding of 13 pcs of Piles @ 700 = 9100\r\nPayment for Moulding of 22poles @ 1500 = 33000\r\nTOTAL 42100', '42100.00', 1, '2018-02-03', 8),
(268, 'Purchase of 50pcs of 12mm Rod @ 1950 = 97500\r\n', '97500.00', 1, '2018-02-04', 8),
(269, 'Purchase of 10pcs of 3 x 4 wood @ 700 = 7000\r\n', '7000.00', 1, '2018-02-05', 8),
(270, 'Blinding of 13pillars @ 700 = 9100', '9100.00', 1, '2018-02-07', 8),
(271, 'Purchase of 50pcs of 12mm rod @ 1950 = 97500', '97500.00', 1, '2018-02-08', 8),
(272, 'Payment for Moulding of 19 pole @ 1500 = 28500\r\nPurchase of 15pcs of 2 x4 wood @ 700 =10500\r\nTotal 39,000', '39000.00', 1, '2018-02-10', 8),
(273, 'Payment for blinding of 13 pillars  @ 700 = 9100', '9100.00', 1, '2018-02-13', 8),
(274, 'Payment for Purchase of 50pcs of 12mm rod @ 1950 = 97500', '97500.00', 1, '2018-02-12', 8),
(275, 'Payment for Moulding of 25 pole @ 1500 = 37500\r\nPayment for Purchase of 50pcs of 12mm rod @ 1950 = 97500\r\nPayment for the Blinding of 16 pillars @ 700 = 11200\r\nTotal = 146200', '146200.00', 1, '2018-02-17', 8),
(276, 'Advance Payment for Mould welder', '40000.00', 1, '2018-02-19', 8),
(277, 'Payment for Moulding of 16 pole @ 1500 = 23500\r\n', '23500.00', 1, '2018-02-24', 8),
(278, '', '1000.00', 1, '2018-03-10', 8),
(279, 'Payment for Moulding of 8 pole @ 1500 = 12000\r\n', '12000.00', 1, '2018-03-31', 8),
(280, ' Purchase of cutting disk 1100,Black oil 3500\r\nBolts & Nuts 5000\r\npipes 2100\r\nBrush 200\r\nPayment for Purchase of 60tons of chipping of 250000 = 500000\r\nPayment for Purchase of 50pcs of 12mm rod @ 1950 = 97500\r\nTotal =604,400\r\n', '604400.00', 1, '2018-04-02', 8),
(281, 'Grass Cutting 2500', '2500.00', 1, '2018-04-02', 8),
(282, 'Payment for Moulding of 8 pole @ 1500 = 12000', '12000.00', 1, '2018-04-01', 8),
(283, 'Advance Payment for mould welder 50,000\r\nPayment for Purchase of Fuel & Diesel 2950\r\nPayment for the Blinding of 13 pillars @ 500 = 6500\r\nTotal = 59450', '59450.00', 1, '2018-04-03', 8),
(284, 'Payment for Purchase of 100bags of Cement  @ 2600 = 260,000\r\nPayment for Purchase of 50pcs of 12mm rod @ 1950 = 97500\r\nPayment for Purchase of 25pcs of  8mm rod   @ 1000= 25000\r\nTotal = 382500', '382500.00', 1, '2018-04-04', 8),
(285, '\r\nPayment for the Blinding of 16 pillars @ 700 = 8000\r\n', '8000.00', 1, '2018-04-05', 8),
(286, 'Site filling 25,000\r\nPayment for the Blinding of 4 pillars @ 500 = 2000\r\nDiesel for Moulding 2000\r\nTotal = 29,000', '29000.00', 1, '2018-04-06', 8),
(287, 'Positioning of Poles ', '47300.00', 1, '2018-04-07', 8),
(288, 'Payment for inches for stayblock mould 2500\r\nPayment for Purchase of 100pcs of 12mm rod @ 2050 = 205000\r\nPayment for the Blinding of 16 pillars @ 500 = 8000\r\nsite clearing 7000\r\nTotal = 222500', '222500.00', 1, '2018-04-10', 8),
(289, '\r\nPayment for the Blinding of 16 pillars @ 500 = 7500', '7500.00', 1, '2018-04-11', 8),
(290, 'Payment for Moulding of 30 pole @ 1500 = 46000\r\nPayment for the Blinding wire : 9000\r\nTotal = 55000', '55000.00', 1, '2018-04-14', 8),
(291, 'Payment for the purchase of wood 9000\r\nFinal payment for mould welder 50,000\r\nTotal 59000', '59000.00', 1, '2018-04-18', 8),
(292, 'Arrangement of poles 2000', '2000.00', 1, '2018-04-19', 8),
(293, 'Packing of hard core 10,000', '10000.00', 1, '2018-04-20', 8),
(294, 'Payment for Moulding of 12 pole @ 1500 = 20,000\r\nPayment for Purchase of 50pcs of 12mm rod @ 2150 = 215000\r\nPayment for the purchase of 30pcs of 8mm rod @ 1000 = 30,000\r\nPayment for the Blinding of 32 pillars @ 500 = 16000\r\nTotal = 281000', '281000.00', 1, '2018-04-21', 8),
(295, 'one trip of sand', '22000.00', 1, '2018-04-26', 8),
(296, 'Site clearing', '3000.00', 1, '2018-04-27', 8),
(297, 'Payment for Moulding of 31pole @ 1500 = 48500', '0.00', 1, '2018-04-28', 8),
(298, 'Diesel used', '6250.00', 1, '2018-10-26', 4),
(299, 'Diesel Used', '6250.00', 1, '2018-10-28', 4),
(307, 'Diesel Used 6750,\r\nHiab Repair 30,500\r\nConductor Salary 20,000\r\nDriver Salary : 35% of 327,250 = 114,537.50 ', '171787.50', 1, '2018-10-31', 4),
(308, 'Trip Transport to Odi 3000\r\n', '0.00', 1, '2018-10-26', 4),
(309, 'Trip transport to Odi', '3000.00', 1, '2018-10-26', 4),
(310, 'Wheel bolt & Nuts 11500', '0.00', 1, '2018-10-27', 4),
(311, 'Air work 2000', '0.00', 1, '2018-10-28', 4),
(312, 'Renewal of Particulars 24,000\r\nRegulator 1500\r\nTickets 4500\r\nTotal 30,000', '30000.00', 1, '2018-10-29', 4),
(313, 'Ticket 4500\r\n', '4500.00', 1, '2018-10-31', 4),
(314, 'Repairs 27,000\r\nDiesel used other Mark 37,500\r\nTotal 64,500', '64500.00', 1, '2018-11-01', 4),
(315, 'Ticket 4500\r\n', '4500.00', 1, '2018-11-02', 4),
(316, 'Tipping oil \r\n', '10000.00', 1, '2018-10-29', 4),
(318, 'Diesel Used 6750\r\nWelding carrier 5000\r\nTotal 11750', '11750.00', 1, '2018-10-31', 4),
(319, 'Ticket 1500\r\nDiesel used 6750\r\nTotal ', '8250.00', 1, '2018-10-22', 4),
(320, 'Hiab Repair Balance : 22000', '22000.00', 1, '2018-10-30', 4),
(321, 'Driver Salary : 35% of Work Done 20,855\r\n= 7,299.25', '7299.25', 1, '2018-10-31', 4),
(322, 'Diesel Used ', '12425.00', 1, '2018-11-01', 4),
(323, 'Welding of inches in Tailboard 15,000\r\nTipping oil 10,000\r\nTotal 25,000', '25000.00', 1, '0000-00-00', 4),
(324, 'Diesel used ', '6250.00', 1, '2018-11-03', 4),
(325, 'Diesel used  15,000\r\nTrip allowance 5000\r\nTotal 20,000', '20000.00', 1, '2018-11-06', 4),
(326, 'Diesel Use', '12250.00', 1, '2018-11-03', 4),
(327, 'Diesel Used 10,000\r\nTrip Allowance 5000\r\nTotal 15,000', '15000.00', 1, '2018-11-05', 4),
(328, 'Diesel Used 15,000\r\nTrip allowance 5000\r\nTotal 20,000', '20000.00', 1, '2018-11-06', 4),
(329, 'Two energy bulb & transport', '900.00', 1, '2019-01-01', 9);

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
-- Table structure for table `other_products`
--

CREATE TABLE `other_products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_products`
--

INSERT INTO `other_products` (`id`, `name`, `cat_id`, `branch_id`) VALUES
(1, 'High Tension Square Pole', 9, 1),
(2, 'High Tension Round Pole', 9, 1),
(3, 'Low Tension Square Pole', 9, 1),
(4, 'Low Tension Round Pole', 9, 1),
(5, 'Stay Block', 9, 1);

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
-- Table structure for table `petrols`
--

CREATE TABLE `petrols` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `petrols`
--

INSERT INTO `petrols` (`id`, `name`, `cat_id`) VALUES
(1, 'PMS', 2),
(2, 'DIESEL', 2),
(3, 'KEROSEN', 2),
(4, 'RETAIL GAS', 3),
(5, 'BULK GAS', 3),
(6, 'General Goods', 8);

-- --------------------------------------------------------

--
-- Table structure for table `petrol_cat_branch`
--

CREATE TABLE `petrol_cat_branch` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `petrol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `petrol_cat_branch`
--

INSERT INTO `petrol_cat_branch` (`id`, `branch_id`, `cat_id`, `petrol_id`) VALUES
(3, 1, 2, 1),
(4, 1, 2, 2),
(5, 1, 3, 2),
(6, 1, 3, 5),
(11, 1, 2, 3),
(16, 1, 8, 1),
(17, 1, 8, 2),
(18, 1, 10, 1),
(19, 1, 8, 4),
(20, 1, 3, 4),
(21, 1, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `poles`
--

CREATE TABLE `poles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poles`
--

INSERT INTO `poles` (`id`, `name`, `cat_id`, `branch_id`) VALUES
(1, 'High Tension Sqaure Pole', 8, 1),
(2, 'Low Tension Sqaure Pole', 8, 1),
(3, 'High Tension Round Pole', 8, 1),
(4, 'Low Tension Round Pole', 8, 1);

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
(26, 'Watgo Nig Ltd', 'MD', '1999-11-30', '2018-10-10', 'Managing', 31),
(27, 'WATGO NIG LTD', 'SUPERVIOR', '2013-08-01', '2018-10-10', 'SUPERVISING', 32),
(28, 'WATGO NIG LTD', ' SENIOR TRUCK  DRIVER', '2018-01-16', '2018-10-11', 'DRIVING/MARKETING', 33),
(29, 'Watgo Nigeria limited', 'Gas truck one driver', '0000-00-00', '0000-00-00', 'Gas truck 1 driver', 34);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `petrol_cat_branch_id` int(11) NOT NULL,
  `purchase_price_per_unit` double DEFAULT NULL,
  `selling_price_unit` double DEFAULT NULL,
  `quantity` decimal(20,2) NOT NULL,
  `newQuantity` decimal(20,2) DEFAULT NULL,
  `totalCostPrice` double(20,2) NOT NULL,
  `modified_date` date DEFAULT NULL,
  `quantity_mod_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `products_stock`
--

CREATE TABLE `products_stock` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(20,2) NOT NULL,
  `selling_price` double(20,2) DEFAULT NULL,
  `purchase_price` double(20,2) DEFAULT NULL,
  `date` date NOT NULL,
  `modified_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `pumpconfig`
--

CREATE TABLE `pumpconfig` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `pump_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pumpconfig`
--

INSERT INTO `pumpconfig` (`id`, `branch_id`, `cat_id`, `product_id`, `pump_id`) VALUES
(1, 1, 2, 1, 1),
(2, 1, 2, 1, 2),
(3, 1, 2, 1, 3),
(5, 1, 2, 2, 1),
(6, 1, 2, 3, 1),
(7, 1, 3, 4, 1),
(8, 1, 3, 5, 1),
(10, 1, 2, 1, 4);

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
  `Description` text,
  `closing_reading` decimal(10,2) DEFAULT NULL,
  `closing_reading_time` time DEFAULT NULL,
  `quantity_sold` decimal(10,2) DEFAULT NULL,
  `sellingP` decimal(20,2) NOT NULL,
  `grossAmount` decimal(20,2) NOT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `tank_has_pumps_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `issuer_id` varchar(45) DEFAULT NULL,
  `recipient_id` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `reply` varchar(200) DEFAULT NULL,
  `q_read` varchar(45) DEFAULT NULL,
  `msgCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `basicSalary` decimal(20,2) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `basicSalary`, `user_id`) VALUES
(6, '50000.00', 31),
(7, '26000.00', 32);

-- --------------------------------------------------------

--
-- Table structure for table `salaryrecords`
--

CREATE TABLE `salaryrecords` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `companySavings` decimal(20,2) DEFAULT NULL,
  `totalAdditions` double(20,2) DEFAULT NULL,
  `totalDeductions` decimal(20,2) DEFAULT NULL,
  `netPay` decimal(20,2) NOT NULL,
  `user_acount_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `prod_cat_b` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `quantity_sold` decimal(20,2) DEFAULT NULL,
  `sellingP` decimal(20,2) NOT NULL,
  `grossAmount` decimal(20,2) NOT NULL,
  `amount_sold` double(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(31, 'Watson Ben Ogoriba', 'Male', '2018-10-10', '', 'Bayelsa', 'Kolokuma/Opokuma', 'Odi', 'No 71B Emekuku Street Dline Port-Hourcour', 'camera pictures watgo 131.jpg', 1, 1, 'Ngokemie-ebi Watson Ogoriba', 'No 71B Emekuku Street Dline Port-Hourcour'),
(32, 'FAVOUR BEKE', 'Female', '2018-10-10', '', 'Bayelsa', 'SAGBAMA', 'ODONI', 'OPP TONIMAS FILLING STATION EDEPIE, YENAGOA.', '017.jpg', 1, 0, 'EBI BEKE', 'NO 31 OKUMAGBA AVENUE, WARRI, DELTA STATE.'),
(33, 'EMEIWE CHIBUIKE ', 'Male', '2018-10-11', '', 'Abia', 'ISUKWUATO', 'UMUNNEKWU AGBO COMMUNITY', 'EDEPIE PRIMARY SCHOOL BY MADIGA ROAD,EDEPIE, ', '023.jpg', 0, 1, 'CHIDARE CHIBUIKE', 'EDEPIE PRIMARY SCHOOL BY MADIGA ROAD,EDEPIE, YENAGOA.'),
(34, 'Mathais Isaiah', 'Male', '2019-01-04', '', 'Benue', 'Obi ', 'Beune', 'Ede-epie', '010.jpg', 0, 0, 'Mathias Sege', 'Ondo');

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
(27, '08035200886', 'watgogroup@gmail.com', 31),
(28, '07038000114', 'bekefavour000@gmail.com', 32),
(29, '08133091575', 'CHYIBUKE@GMAIL.COM', 33),
(30, '07031142422', 'Isaiahmathias@gmail.com', 34);

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
(8, 'GTC Ahoada', 'O level', '1979-07-30', '1985-07-30', 'ND', NULL, 31),
(9, 'NIGER DELTA UNIVERSITY', 'First Degree', '2006-11-01', '2010-08-22', 'BSC', NULL, 32),
(10, 'CCSS,RUMKURUSHI,PH', 'O level', '2000-06-30', '2006-06-30', 'WASC', NULL, 33);

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
(11, '2018-01-07', 1, 3, 1, '-1044078.00', '8851.00'),
(12, '2018-01-11', 1, 3, 1, '36000.00', '1750.00'),
(13, '2018-01-12', 1, 3, 1, '-1175849.14', '8264.00'),
(14, '2018-01-08', 1, 3, 1, '106560.00', '960.00');

-- --------------------------------------------------------

--
-- Table structure for table `tankconfig`
--

CREATE TABLE `tankconfig` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tank_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tankconfig`
--

INSERT INTO `tankconfig` (`id`, `branch_id`, `cat_id`, `product_id`, `tank_id`) VALUES
(1, 1, 2, 1, 1),
(2, 1, 2, 1, 2),
(3, 1, 2, 1, 3),
(4, 1, 2, 3, 1),
(5, 1, 2, 2, 1),
(6, 1, 3, 5, 1),
(7, 1, 3, 4, 1),
(8, 1, 3, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tank_has_pumps`
--

CREATE TABLE `tank_has_pumps` (
  `id` int(11) NOT NULL,
  `tankConfig_id` int(11) NOT NULL,
  `pumpConfig_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tank_has_pumps`
--

INSERT INTO `tank_has_pumps` (`id`, `tankConfig_id`, `pumpConfig_id`, `branch_id`) VALUES
(1, 1, 3, 1),
(2, 2, 10, 1),
(3, 3, 1, 1),
(4, 3, 2, 1),
(5, 5, 5, 1),
(6, 4, 6, 1),
(7, 7, 7, 1),
(8, 8, 7, 1),
(9, 6, 8, 1);

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
(32, 3, 2, 1, 2, 1),
(33, 2, 4, 1, 2, 1),
(34, 1, 1, 3, 2, 1),
(35, 5, 1, 3, 2, 1),
(36, 3, 2, 2, 2, 1),
(37, 4, 2, 1, 2, 1),
(38, 1, 2, 1, 2, 1),
(39, 1, 1, 4, 3, 1),
(40, 1, 2, 4, 3, 1),
(41, 1, 1, 5, 3, 1);

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
  `Description` text,
  `closing_reading` decimal(10,2) DEFAULT NULL,
  `closing_reading_time` time DEFAULT NULL,
  `quantity_sold` decimal(10,2) DEFAULT NULL,
  `sellingP` decimal(20,2) DEFAULT NULL,
  `grossAmount` decimal(20,2) DEFAULT NULL,
  `amount` decimal(30,2) DEFAULT NULL,
  `tank_has_pumps_id` int(11) NOT NULL,
  `tank_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(155, '2018-01-03', 1, 4, 2, '1.00', '200000.00'),
(156, '2018-01-11', 1, 4, 2, '1.00', '200000.00'),
(157, '2018-01-19', 1, 4, 2, '1.00', '200000.00'),
(159, '2018-01-29', 1, 4, 2, '1.00', '100000.00'),
(160, '2018-02-09', 1, 4, 2, '1.00', '100000.00'),
(161, '2018-02-17', 1, 4, 2, '1.00', '200000.00'),
(162, '2018-02-21', 1, 4, 2, '1.00', '200000.00'),
(163, '2018-02-27', 1, 4, 2, '1.00', '200000.00'),
(164, '2018-01-18', 1, 4, 16, '1.00', '6000.00'),
(165, '2018-01-19', 1, 4, 16, '2.00', '13000.00'),
(166, '2018-01-20', 1, 4, 16, '1.00', '7000.00'),
(167, '2018-01-23', 1, 4, 16, '1.00', '25000.00'),
(168, '2018-01-26', 1, 4, 16, '1.00', '30000.00'),
(169, '2018-01-27', 1, 4, 16, '1.00', '10000.00'),
(170, '2018-01-29', 1, 4, 16, '2.00', '17000.00'),
(171, '2018-01-30', 1, 4, 16, '1.00', '10000.00'),
(172, '2018-01-31', 1, 4, 16, '2.00', '270900.00'),
(173, '2018-04-26', 1, 4, 2, '400.00', '200000.00'),
(185, '2018-10-22', 1, 4, 9, '2.00', '37000.00'),
(186, '2018-10-26', 1, 4, 9, '1.00', '14000.00'),
(187, '2018-10-20', 1, 4, 14, '960.00', '75600.00'),
(188, '2018-10-24', 1, 4, 14, '950.00', '75600.00'),
(189, '2018-10-26', 1, 4, 14, '960.00', '75600.00'),
(190, '2018-10-19', 1, 4, 16, '1.00', '23000.00'),
(191, '2018-10-20', 1, 4, 16, '2.00', '45000.00'),
(192, '2018-10-23', 1, 4, 16, '1.00', '15000.00'),
(193, '2018-10-26', 1, 4, 16, '1.00', '20000.00'),
(194, '0000-00-00', 1, 4, 0, '0.00', '0.00'),
(195, '2018-10-11', 1, 4, 16, '1.00', '25000.00'),
(196, '2018-10-18', 1, 4, 16, '1.00', '30000.00'),
(197, '2018-10-28', 1, 4, 16, '2.00', '23000.00'),
(198, '2018-10-30', 1, 4, 16, '1.00', '7000.00'),
(199, '2018-10-31', 1, 4, 16, '2.00', '45000.00'),
(203, '2018-10-28', 1, 4, 2, '2.00', '15000.00'),
(204, '2018-10-31', 1, 4, 2, '1.00', '19465.00'),
(205, '2018-11-01', 1, 4, 2, '1.00', '10000.00'),
(206, '2018-11-03', 1, 4, 2, '2.00', '38000.00'),
(207, '2018-11-05', 1, 4, 2, '1.00', '22635.00'),
(208, '2018-11-06', 1, 4, 2, '1.00', '5000.00'),
(209, '2018-11-07', 1, 4, 2, '1.00', '10000.00'),
(210, '2018-10-31', 1, 4, 9, '1.00', '15000.00'),
(211, '2018-11-03', 1, 4, 9, '1.00', '50000.00'),
(212, '2018-11-06', 1, 4, 9, '1.00', '70000.00'),
(213, '2018-11-01', 1, 4, 16, '1.00', '10000.00'),
(214, '0000-00-00', 1, 4, 16, '1.00', '20000.00'),
(215, '2018-11-05', 1, 4, 16, '1.00', '5000.00'),
(216, '2018-11-06', 1, 4, 16, '1.00', '60.00'),
(217, '2018-11-05', 1, 4, 9, '160000.00', '60000.00'),
(222, '2018-01-11', 1, 3, NULL, '1750.00', '36000.00'),
(223, '2018-01-12', 1, 3, NULL, '8264.00', '-1175849.14');

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `id` int(11) NOT NULL,
  `truck_name` varchar(45) DEFAULT NULL,
  `truk_number` varchar(50) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `products_id` int(11) DEFAULT NULL,
  `products_branch_id` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `user_account_Staff_Bio_Data_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`id`, `truck_name`, `truk_number`, `section_id`, `products_id`, `products_branch_id`, `user_account_id`, `user_account_Staff_Bio_Data_id`) VALUES
(2, 'DAF', 'KHE 404 XA', 3, 0, 1, 0, 0),
(9, 'MAN DIESEL TRUCK', 'KNE 92 SA', 2, 7, 1, 0, 0),
(11, 'MACK TRUCK', 'KMK 361 XZ', 0, 0, 1, 0, 0),
(14, 'MACK TRUCK', '700XA', 0, 0, 1, 0, 0),
(16, 'M/BENZ SELF LOADER TRUCK', 'LSD 960 XC', 0, 0, 1, 0, 0);

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
(25, '09/10/2018: carry pepsi product from Aba to watgo Depot Yenagoa.', '960', '75600.00', 14, 6, 1, '2018-10-09'),
(26, '02/10/2018: CARRIED PEPSI PRODUCT FROM ABA TO WATGO DEPOT YENAGOA', '960', '75600.00', 14, 6, 1, '2018-10-02'),
(27, '07/10/2018:CARRIED PEPSI PRODUCT FROM ABA TO WATGO DEPOT YENAGOA', '960', '75600.00', 14, 6, 1, '2018-10-07'),
(28, '03/10/2017.CARRIED GOODS WITH YENAGOA.', '1', '20000.00', 16, 6, 1, '2018-10-03'),
(29, '04/10/2018. CARRIED GOODS WITHIN YENAGOA.', '1', '20000.00', 16, 6, 1, '2018-10-04'),
(30, '05/10/2018:CARRIED OUT WORK WITHIN YENAGOA. 1.=N= 7000, 2.=N=15,000 3. =N=6000.00', '1', '28000.00', 16, 6, 1, '2018-10-05'),
(31, '09/10/2018. CARRIED OUT WORK WITHIN YENAGOA.', '1', '30000.00', 16, 6, 1, '2018-10-09'),
(32, '10/10/2017. CARRIED OUT WORK WITHIN YENAGOA,', '1', '30000.00', 16, 6, 1, '2018-10-10'),
(34, '02/10/2018; CARRIED OUT WORK WITHIN YENAGOA', '1', '30000.00', 9, 6, 1, '2018-10-02'),
(35, '03/10/2018. CARRIED OUT WITHIN YENAGOA.', '1', '15000.00', 9, 6, 1, '2018-10-03'),
(36, '05/10/2018. CARRIED OUT WORK WITHIN YENAGOA.', '1', '15000.00', 9, 6, 1, '2018-10-05'),
(37, '11/10/2018: CARRIED OUT WORK WITHIN YENAGOA.', '1', '25000.00', 16, 6, 1, '0000-00-00'),
(38, '12/10/2018;Carried Pepsi Product fron Aba to Watgo Depot Yenagoa.', '960', '75600.00', 14, 6, 1, '2018-10-12'),
(39, '04/10/2010: Carried Product from Warri to PH to Yenagoa for Supply.', '1', '150000.00', 2, 5, 1, '2018-10-04'),
(40, '', '', '0.00', 0, 0, 1, '0000-00-00'),
(41, '09/10/2018;Carried Product from Warri to PH to Yenagoa for Supply.', '1', '150000.00', 2, 5, 1, '2018-10-09'),
(42, 'Carry forward from December 2017', '1', '173000.00', 9, 6, 1, '2018-01-01'),
(43, 'Carried out work within Yenagoa.', '1', '85000.00', 9, 0, 1, '2018-01-09'),
(44, 'Erection Pole near by.', '1', '4000.00', 9, 6, 1, '2018-01-08'),
(45, 'Worked within Yenagoa', '1', '20000.00', 9, 6, 1, '2018-01-11'),
(46, 'Worked from yenagoa to Kaiama and back', '1', '53000.00', 9, 6, 1, '2018-01-14'),
(47, 'Worked within Yenagoa', '1', '7000.00', 9, 6, 1, '2018-01-14'),
(48, 'Two Jobs: worked within Yenagoa and Pole Erection.', '2', '16000.00', 9, 6, 1, '2018-01-16'),
(49, 'Worked within Yenagoa1', '1', '20000.00', 9, 0, 1, '2018-01-18'),
(50, 'Worked within Yenagoa.', '1', '10000.00', 9, 6, 1, '2018-01-20'),
(51, 'Worked outside Yenagoa', '1', '30000.00', 9, 6, 1, '2018-01-21'),
(52, 'Worked outside Yenagoa', '1', '50000.00', 0, 6, 1, '2018-01-23'),
(53, 'Two Jobs: Carried Gas Tank from Odi to Yenagoa.\r\nWorked within Yenagoa', '2', '40000.00', 9, 6, 1, '2018-01-24'),
(54, 'Erected 3 poles within Yenagoa', '1', '15000.00', 9, 6, 1, '2018-01-27'),
(55, 'worked within Yenagoa', '1', '17000.00', 9, 6, 1, '2018-01-27'),
(56, 'Worked within Yenagoa', '1', '12000.00', 9, 6, 1, '2018-01-29'),
(57, 'Two Jobs: worked within Yenagoa', '2', '40000.00', 9, 6, 1, '2018-01-30'),
(58, ' Worked Within Yenagoa,\r\n', '1', '10000.00', 9, 0, 1, '2018-01-31'),
(59, 'Convey Product from Warri to Yenagoa.1', '1', '200000.00', 2, 5, 1, '2018-01-03'),
(60, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-01-11'),
(61, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-01-19'),
(62, 'Convey Product from Yenagoa to PH', '1', '100000.00', 2, 5, 1, '2018-01-23'),
(63, 'Convey Product from Yenagoa to PH', '1', '100000.00', 2, 5, 1, '2018-01-29'),
(67, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-02-27'),
(68, '', '', '0.00', 0, 0, 1, '0000-00-00'),
(69, '', '', '0.00', 0, 0, 1, '0000-00-00'),
(70, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-03-06'),
(71, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-03-09'),
(72, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-03-17'),
(73, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-03-21'),
(74, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-03-26'),
(75, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-03-28'),
(76, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-04-03'),
(77, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-04-09'),
(78, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-04-11'),
(79, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-04-14'),
(80, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-04-17'),
(81, 'Convey Product from Yenagoa to PH', '1', '100000.00', 2, 5, 1, '2018-04-21'),
(82, 'Convey Product from Yenagoa to PH', '1', '100000.00', 2, 5, 1, '2018-04-26'),
(83, 'Convey Product from Yenagoa to PH', '1', '100000.00', 2, 5, 1, '2018-05-03'),
(84, 'Convey Product from Yenagoa to PH', '1', '100000.00', 2, 5, 1, '2018-05-05'),
(85, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-05-14'),
(86, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-05-19'),
(87, 'Convey Product from Yenagoa to PH', '1', '100000.00', 2, 5, 1, '2018-05-24'),
(88, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-06-04'),
(89, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-06-05'),
(90, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-06-07'),
(91, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-06-11'),
(92, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-06-15'),
(93, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-06-19'),
(94, 'Convey Product from Yenagoa to calaba to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-06-30'),
(95, 'Correct Calaba trip amount balance', '1', '100000.00', 2, 5, 1, '2018-06-30'),
(96, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-07-04'),
(97, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-07-05'),
(98, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-07-09'),
(99, 'Convey Product from Warri to Yenagoa.', '1', '200000.00', 2, 5, 1, '2018-07-21'),
(100, 'Truck Hired to convey product from Ahoada to Yenagoa Timikongas plant', '1', '70000.00', 2, 5, 1, '2018-07-27'),
(101, 'Convey Product from Warri to Yenagoa', '1', '150000.00', 2, 5, 1, '2018-09-22'),
(102, 'Convey Product from Warri to Yenagoa', '1', '150000.00', 2, 5, 1, '2018-09-25'),
(103, 'Worked within Yenagoa ', '1', '30000.00', 16, 6, 1, '2018-10-13'),
(104, 'Travel to PH to pick up Empty Gas tank to Watgo Workshop Yenagoa.', '1', '60000.00', 16, 6, 1, '2018-10-16'),
(105, 'Travel to PH to pick up Empty Gas tank to Watgo Workshop Yenagoa.', '1', '60000.00', 16, 6, 1, '2018-10-17'),
(106, 'Convey Pepsi Product from Aba to Watgo Yenagoa Depot', '1337', '75600.00', 14, 6, 1, '2018-10-16'),
(112, 'Convey LPG from PH to  Yen', '1', '100000.00', 2, 5, 1, '2018-02-09'),
(113, 'Convey LPG from Warri to Yen', '1', '200000.00', 2, 5, 1, '2018-02-17'),
(114, 'Convey LPG from Warri to Yen', '1', '200000.00', 2, 5, 1, '2018-02-21'),
(116, 'work done within Yenagoa', '1', '6000.00', 16, 6, 1, '2018-01-18'),
(117, 'workdone within Yenagoa\r\nTwo Jobs done', '2', '13000.00', 16, 6, 1, '2018-01-19'),
(118, 'workdone within Yenagoa', '1', '7000.00', 16, 6, 1, '2018-01-20'),
(119, 'workdone within Yenagoa', '1', '25000.00', 16, 6, 1, '2018-01-23'),
(120, 'workdone within Yenagoa', '1', '30000.00', 16, 6, 1, '2018-01-26'),
(121, 'workdone within Yenagoa', '1', '10000.00', 16, 6, 1, '2018-01-27'),
(122, 'workdone within Yenagoa,\r\nTwo Jobs', '2', '17000.00', 16, 6, 1, '2018-01-29'),
(123, 'workdone within Yenagoa', '1', '10000.00', 16, 6, 1, '2018-01-30'),
(125, 'Workdone', '1', '40000.00', 16, 6, 1, '2018-01-31'),
(126, 'Work done within Yenagoa', '2', '37000.00', 9, 6, 1, '2018-10-22'),
(127, 'Worked within YENAGOA', '1', '14000.00', 9, 6, 1, '2018-10-26'),
(128, 'Convey Pepsi Product to watgo Yen Depot from Aba.', '960', '75600.00', 14, 6, 1, '2018-10-20'),
(129, 'Convey Pepsi Product from Aba to watgo Yen Depot,', '950', '75600.00', 14, 6, 1, '2018-10-24'),
(130, 'Convey Pepsi Product from Aba to  watgo Yen Depot.', '960', '75600.00', 14, 6, 1, '2018-10-26'),
(131, 'worked within Yenagoa', '1', '23000.00', 16, 6, 1, '2018-10-19'),
(132, 'worked within Yenagoa \r\n2Jobs, 15000 + 30000=45000', '2', '45000.00', 16, 6, 1, '2018-10-20'),
(133, 'worked within Yenagoa', '1', '15000.00', 16, 6, 1, '2018-10-23'),
(134, 'worked within Yenagoa', '1', '20000.00', 16, 0, 1, '2018-10-26'),
(135, '', '', '0.00', 0, 0, 1, '0000-00-00'),
(136, 'Carried out work with in Yen', '1', '25000.00', 16, 6, 1, '2018-10-11'),
(137, 'work carried out within Yenagoa', '1', '30000.00', 16, 6, 1, '2018-10-18'),
(138, 'worked on 27/10/2018 8,000\r\nplus 28/10/2018 15,000 Total 23000', '2', '23000.00', 16, 6, 1, '2018-10-28'),
(139, 'carried out work within Yenagoa', '1', '7000.00', 16, 6, 1, '2018-10-30'),
(141, 'carried out work with Yenagoa\r\ntwo job 30,000 + 15000 =45,000', '2', '45000.00', 16, 6, 1, '2018-10-31'),
(142, 'Trip Allowance 15,000', '2', '15000.00', 2, 5, 1, '2018-10-28'),
(143, 'Diesel Used ', '1', '19465.00', 2, 5, 1, '2018-10-31'),
(144, 'Trip Allowance \r\n', '1', '10000.00', 2, 5, 1, '2018-11-01'),
(145, 'Trip Allowance 13,000\r\nDiesel used 25,000\r\nTotal 38,000', '2', '38000.00', 2, 5, 1, '2018-11-03'),
(146, 'Diesel used ', '1', '22635.00', 2, 5, 1, '2018-11-05'),
(147, 'Trip Allowance Hired truck', '1', '5000.00', 2, 5, 1, '2018-11-06'),
(148, 'Trip Allowance ', '1', '10000.00', 2, 5, 1, '2018-11-07'),
(149, 'Worked within Yenagoa', '1', '15000.00', 9, 6, 1, '2018-10-31'),
(150, 'Carried !0pcs of Electric  Poles to Imerigi town', '1', '50000.00', 9, 6, 1, '2018-11-03'),
(151, 'Carried U channels to Warri Village', '1', '70000.00', 9, 6, 1, '2018-11-06'),
(152, 'Hanging of Engine @ Opolo Payment Throught tranfer to company account.', '1', '10000.00', 16, 6, 1, '2018-11-01'),
(153, 'Convey Suspened Fish Pond from Azikoro village to Tombia Road.', '1', '20000.00', 16, 6, 1, '0000-00-00'),
(154, 'Convey One LT RD pole to Baybridge Road.', '1', '5000.00', 16, 6, 1, '2018-11-05'),
(155, 'Convey one unit of 5ton Gas Skid to Rumuodamaya, PH', '1', '60.00', 16, 6, 1, '2018-11-06'),
(157, 'Convey One Unit of Gas Skid to Elingbu PH', '160000', '60000.00', 9, 6, 1, '2018-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `truck_jobs_has_expenses`
--

CREATE TABLE `truck_jobs_has_expenses` (
  `id` int(11) NOT NULL,
  `truck_jobs_id` int(11) DEFAULT NULL,
  `expenses_id` int(11) NOT NULL,
  `expenses_branch_id` int(11) NOT NULL,
  `truck_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `truck_jobs_has_expenses`
--

INSERT INTO `truck_jobs_has_expenses` (`id`, `truck_jobs_id`, `expenses_id`, `expenses_branch_id`, `truck_id`) VALUES
(8, 25, 64, 1, 14),
(9, 25, 65, 1, 14),
(10, 25, 66, 1, 14),
(11, 25, 67, 1, 14),
(12, 25, 68, 1, 14),
(13, 25, 69, 1, 14),
(14, 34, 70, 1, 9),
(15, 34, 71, 1, 9),
(16, 34, 72, 1, 9),
(17, 28, 73, 1, 16),
(18, 28, 74, 1, 16),
(19, NULL, 76, 1, 0),
(20, 28, 77, 1, 16),
(21, NULL, 78, 1, 2),
(22, NULL, 79, 1, 2),
(23, NULL, 80, 1, 2),
(24, NULL, 81, 1, 2),
(25, NULL, 82, 1, 2),
(26, NULL, 83, 1, 2),
(27, 28, 84, 1, 16),
(28, 25, 85, 1, 14),
(29, 39, 86, 1, 2),
(30, 39, 87, 1, 2),
(31, 39, 88, 1, 2),
(32, 39, 89, 1, 2),
(33, 39, 90, 1, 2),
(34, 39, 91, 1, 2),
(35, 39, 92, 1, 2),
(36, 39, 93, 1, 2),
(37, 39, 94, 1, 2),
(38, 39, 95, 1, 2),
(39, 39, 96, 1, 2),
(40, 39, 97, 1, 2),
(41, 39, 98, 1, 2),
(42, 39, 99, 1, 2),
(43, 39, 100, 1, 2),
(44, 39, 101, 1, 2),
(45, 39, 102, 1, 2),
(46, 39, 103, 1, 2),
(47, 39, 104, 1, 2),
(48, 39, 105, 1, 2),
(49, 39, 106, 1, 2),
(50, 39, 107, 1, 2),
(51, 39, 108, 1, 2),
(52, 39, 109, 1, 2),
(53, 39, 110, 1, 2),
(54, 39, 111, 1, 2),
(55, 39, 112, 1, 2),
(56, 39, 113, 1, 2),
(57, 39, 114, 1, 2),
(58, 39, 115, 1, 2),
(59, 39, 116, 1, 2),
(60, 39, 117, 1, 2),
(61, 39, 118, 1, 2),
(62, 39, 119, 1, 2),
(63, 39, 120, 1, 2),
(64, 39, 121, 1, 2),
(65, 39, 122, 1, 2),
(66, 39, 123, 1, 2),
(67, 39, 124, 1, 2),
(68, 39, 125, 1, 2),
(69, 39, 126, 1, 2),
(70, 39, 127, 1, 2),
(71, 39, 128, 1, 2),
(72, 39, 129, 1, 2),
(73, 39, 130, 1, 2),
(74, 39, 131, 1, 2),
(75, 39, 132, 1, 2),
(76, 39, 133, 1, 2),
(77, 39, 134, 1, 2),
(78, 39, 135, 1, 2),
(79, 39, 136, 1, 2),
(80, 39, 137, 1, 2),
(81, 39, 138, 1, 2),
(82, 39, 139, 1, 2),
(83, 39, 140, 1, 2),
(84, 39, 141, 1, 2),
(85, 39, 142, 1, 2),
(86, 39, 143, 1, 2),
(87, 39, 144, 1, 2),
(88, 39, 145, 1, 2),
(89, 39, 146, 1, 2),
(90, 39, 147, 1, 2),
(91, 39, 148, 1, 2),
(92, 39, 149, 1, 2),
(93, 39, 150, 1, 2),
(94, 39, 151, 1, 2),
(95, 39, 152, 1, 2),
(96, 40, 153, 1, 0),
(97, 39, 154, 1, 2),
(98, 39, 155, 1, 2),
(99, 39, 156, 1, 2),
(100, 39, 157, 1, 2),
(101, 39, 158, 1, 2),
(102, 39, 159, 1, 2),
(103, 39, 160, 1, 2),
(104, 39, 161, 1, 2),
(105, 39, 162, 1, 2),
(106, 39, 163, 1, 2),
(107, 39, 164, 1, 2),
(108, 39, 165, 1, 2),
(109, 39, 166, 1, 2),
(110, 39, 167, 1, 2),
(111, 39, 168, 1, 2),
(112, 39, 169, 1, 2),
(113, 39, 170, 1, 2),
(114, 39, 171, 1, 2),
(115, 39, 172, 1, 2),
(116, 39, 173, 1, 2),
(117, 39, 174, 1, 2),
(118, 39, 175, 1, 2),
(119, 39, 176, 1, 2),
(120, 39, 177, 1, 2),
(121, 39, 178, 1, 2),
(122, 39, 179, 1, 2),
(123, 39, 180, 1, 2),
(124, 39, 181, 1, 2),
(125, 39, 182, 1, 2),
(126, 39, 183, 1, 2),
(127, 39, 184, 1, 2),
(128, 39, 185, 1, 2),
(129, 39, 186, 1, 2),
(130, 39, 187, 1, 2),
(131, 39, 188, 1, 2),
(132, 39, 189, 1, 2),
(133, 39, 190, 1, 2),
(134, 39, 191, 1, 2),
(135, 39, 192, 1, 2),
(136, 39, 193, 1, 2),
(137, 39, 194, 1, 2),
(138, 39, 195, 1, 2),
(139, 39, 196, 1, 2),
(140, 39, 197, 1, 2),
(141, 39, 198, 1, 2),
(142, 39, 199, 1, 2),
(143, 39, 200, 1, 2),
(144, 39, 201, 1, 2),
(145, 39, 202, 1, 2),
(146, 39, 203, 1, 2),
(147, 39, 204, 1, 2),
(148, 39, 205, 1, 2),
(149, 39, 206, 1, 2),
(150, 39, 207, 1, 2),
(151, 39, 208, 1, 2),
(152, 39, 209, 1, 2),
(153, 39, 210, 1, 2),
(154, 39, 211, 1, 2),
(155, 39, 212, 1, 2),
(156, 39, 213, 1, 2),
(157, 39, 214, 1, 2),
(158, 39, 215, 1, 2),
(159, 39, 216, 1, 2),
(160, 39, 217, 1, 2),
(161, 25, 218, 1, 14),
(162, 28, 219, 1, 16),
(163, 28, 220, 1, 16),
(164, 39, 221, 1, 2),
(165, 39, 222, 1, 2),
(166, 39, 223, 1, 2),
(167, 39, 224, 1, 2),
(168, 43, 225, 1, 9),
(169, 43, 226, 1, 9),
(170, 43, 227, 1, 9),
(171, 39, 228, 1, 2),
(172, 43, 229, 1, 9),
(173, 43, 230, 1, 9),
(174, 43, 231, 1, 9),
(175, 43, 232, 1, 9),
(176, 43, 233, 1, 9),
(177, 43, 234, 1, 9),
(178, 43, 235, 1, 9),
(179, 43, 236, 1, 9),
(180, 28, 237, 1, 16),
(181, 28, 238, 1, 16),
(182, 28, 239, 1, 16),
(183, 28, 240, 1, 16),
(184, 28, 241, 1, 16),
(185, 28, 242, 1, 16),
(186, 39, 243, 1, 2),
(187, 39, 243, 1, 2),
(188, 39, 244, 1, 2),
(189, 39, 245, 1, 2),
(190, 39, 246, 1, 2),
(191, 39, 247, 1, 2),
(192, 39, 248, 1, 2),
(193, 43, 249, 1, 9),
(194, 43, 250, 1, 9),
(195, 43, 251, 1, 9),
(196, 43, 252, 1, 9),
(197, 25, 253, 1, 14),
(198, 25, 254, 1, 14),
(199, 25, 255, 1, 14),
(200, 25, 256, 1, 14),
(201, 25, 257, 1, 14),
(202, 25, 258, 1, 14),
(203, 25, 259, 1, 14),
(204, 134, 260, 1, 16),
(205, 134, 261, 1, 16),
(206, 134, 262, 1, 16),
(207, 134, 263, 1, 16),
(208, 134, 264, 1, 16),
(209, 134, 265, 1, 16),
(210, 40, 266, 1, 0),
(211, 40, 267, 1, 0),
(212, 40, 268, 1, 0),
(213, 40, 269, 1, 0),
(214, 40, 270, 1, 0),
(215, 40, 271, 1, 0),
(216, 40, 272, 1, 0),
(217, 40, 273, 1, 0),
(218, 40, 274, 1, 0),
(219, 40, 275, 1, 0),
(220, 40, 276, 1, 0),
(221, 40, 277, 1, 0),
(222, 40, 278, 1, 0),
(223, 40, 279, 1, 0),
(224, 40, 280, 1, 0),
(225, 40, 281, 1, 0),
(226, 40, 282, 1, 0),
(227, 40, 283, 1, 0),
(228, 40, 284, 1, 0),
(229, 40, 285, 1, 0),
(230, 40, 286, 1, 0),
(231, 40, 287, 1, 0),
(232, 40, 288, 1, 0),
(233, 40, 289, 1, 0),
(234, 40, 290, 1, 0),
(235, 40, 291, 1, 0),
(236, 40, 292, 1, 0),
(237, 40, 293, 1, 0),
(238, 40, 294, 1, 0),
(239, 40, 295, 1, 0),
(240, 40, 296, 1, 0),
(241, 40, 297, 1, 0),
(242, 134, 298, 1, 16),
(243, 134, 299, 1, 16),
(244, 134, 301, 1, 16),
(245, 134, 302, 1, 16),
(246, 134, 303, 1, 16),
(247, 134, 304, 1, 16),
(248, 134, 305, 1, 16),
(249, 134, 306, 1, 16),
(250, 134, 307, 1, 16),
(251, 25, 308, 1, 14),
(252, 25, 309, 1, 14),
(253, 25, 310, 1, 14),
(254, 25, 311, 1, 14),
(255, 25, 312, 1, 14),
(256, 25, 313, 1, 14),
(257, 25, 314, 1, 14),
(258, 25, 315, 1, 14),
(259, 43, 316, 1, 9),
(260, 43, 317, 1, 9),
(261, 39, 318, 1, 2),
(262, 43, 319, 1, 9),
(263, 43, 320, 1, 9),
(264, 43, 321, 1, 9),
(265, 134, 322, 1, 16),
(266, 134, 323, 1, 16),
(267, 134, 324, 1, 16),
(268, 134, 325, 1, 16),
(269, 43, 326, 1, 9),
(270, 43, 327, 1, 9),
(271, 43, 328, 1, 9),
(272, 40, 329, 1, 0);

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
(36, 'CHAIRMAN', 'watgo1', '37c013cce883114721a5f563dd07cccb', 1, 0, 31, NULL, NULL, 1),
(37, 'DATA ENTRY OFFICER', 'watgo2', '4f46b1934340c56c0bb3438e0d88aa17', 2, 0, 32, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additions`
--
ALTER TABLE `additions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debtors`
--
ALTER TABLE `debtors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debts`
--
ALTER TABLE `debts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debt_payments`
--
ALTER TABLE `debt_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction`
--
ALTER TABLE `deduction`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `fkcatID` (`cat_id`),
  ADD KEY `fkdrinksID` (`drinks_id`);

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
-- Indexes for table `other_products`
--
ALTER TABLE `other_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip`
--
ALTER TABLE `payslip`
  ADD PRIMARY KEY (`id`,`Staff_Bio_Data_id`,`Staff_Bio_Data_branch_id`),
  ADD KEY `fk_payslip_Staff_Bio_Data1_idx` (`Staff_Bio_Data_id`,`Staff_Bio_Data_branch_id`);

--
-- Indexes for table `petrols`
--
ALTER TABLE `petrols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petrol_cat_branch`
--
ALTER TABLE `petrol_cat_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poles`
--
ALTER TABLE `poles`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products_stock`
--
ALTER TABLE `products_stock`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pumpconfig`
--
ALTER TABLE `pumpconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pump_readings`
--
ALTER TABLE `pump_readings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tank_pum_id` (`tank_has_pumps_id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tankconfig`
--
ALTER TABLE `tankconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tank_has_pumps`
--
ALTER TABLE `tank_has_pumps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tank_has_pums`
--
ALTER TABLE `tank_has_pums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pump_tank_prod_id` (`pump_id`,`tank_id`,`products_id`),
  ADD KEY `cat_id` (`category_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `fktank_id` (`tank_id`),
  ADD KEY `fkprod_id` (`products_id`);

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
  ADD PRIMARY KEY (`id`,`products_branch_id`),
  ADD KEY `fk_trucks_products1_idx` (`products_branch_id`),
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
  ADD PRIMARY KEY (`id`) USING BTREE;

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
-- AUTO_INCREMENT for table `additions`
--
ALTER TABLE `additions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `debtors`
--
ALTER TABLE `debtors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `debts`
--
ALTER TABLE `debts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `debt_payments`
--
ALTER TABLE `debt_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `deduction`
--
ALTER TABLE `deduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `drinks_cat_branch`
--
ALTER TABLE `drinks_cat_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `drinks_price`
--
ALTER TABLE `drinks_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drink_sales`
--
ALTER TABLE `drink_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;
--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `other_products`
--
ALTER TABLE `other_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `payslip`
--
ALTER TABLE `payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `petrols`
--
ALTER TABLE `petrols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `petrol_cat_branch`
--
ALTER TABLE `petrol_cat_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `poles`
--
ALTER TABLE `poles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `previuos_work`
--
ALTER TABLE `previuos_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products_has_pump`
--
ALTER TABLE `products_has_pump`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products_stock`
--
ALTER TABLE `products_stock`
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
-- AUTO_INCREMENT for table `pumpconfig`
--
ALTER TABLE `pumpconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pump_readings`
--
ALTER TABLE `pump_readings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `salaryrecords`
--
ALTER TABLE `salaryrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff_bio_data`
--
ALTER TABLE `staff_bio_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `staff_contacts`
--
ALTER TABLE `staff_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `staff_education`
--
ALTER TABLE `staff_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tank`
--
ALTER TABLE `tank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tankall_pumpstotal`
--
ALTER TABLE `tankall_pumpstotal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tankconfig`
--
ALTER TABLE `tankconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tank_has_pumps`
--
ALTER TABLE `tank_has_pumps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tank_has_pums`
--
ALTER TABLE `tank_has_pums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tank_readings`
--
ALTER TABLE `tank_readings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `totals`
--
ALTER TABLE `totals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `truck_jobs`
--
ALTER TABLE `truck_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `truck_jobs_has_expenses`
--
ALTER TABLE `truck_jobs_has_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `drinks_cat_branch`
--
ALTER TABLE `drinks_cat_branch`
  ADD CONSTRAINT `fkbranchID` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkcatID` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkdrinksID` FOREIGN KEY (`drinks_id`) REFERENCES `drinks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `drinks_price`
--
ALTER TABLE `drinks_price`
  ADD CONSTRAINT `calID` FOREIGN KEY (`cal_id`) REFERENCES `calibration` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `dCbID` FOREIGN KEY (`d_c_b_id`) REFERENCES `drinks_cat_branch` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `dcID` FOREIGN KEY (`drinks_catId`) REFERENCES `drinks_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `fk_expenses_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkcategory_id` FOREIGN KEY (`section_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Constraints for table `products_has_pump`
--
ALTER TABLE `products_has_pump`
  ADD CONSTRAINT `fk_prod_has_pump_cat_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_products_has_pump_pump1` FOREIGN KEY (`pump_id`) REFERENCES `pump` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fkcateg_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkprod_id` FOREIGN KEY (`products_id`) REFERENCES `petrols` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkpum_id` FOREIGN KEY (`pump_id`) REFERENCES `pump1` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fktank_id` FOREIGN KEY (`tank_id`) REFERENCES `tank` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `totals`
--
ALTER TABLE `totals`
  ADD CONSTRAINT `fkb` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
