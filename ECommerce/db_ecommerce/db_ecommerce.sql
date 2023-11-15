-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2020 at 07:39 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2017', 1, 75, 'PROID', 10),
(2, '0', 1, 108, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(31, 'Opel Cars', 0),
(32, 'Mercedes Cars', 0),
(39, 'Opel Maintenance', 0),
(40, 'Mercedes Maintenance', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `CUSHOMENUM` varchar(90) NOT NULL,
  `STREETADD` text NOT NULL,
  `BRGYADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `ZIPCODE` int(6) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `CUSHOMENUM`, `STREETADD`, `BRGYADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `ZIPCODE`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `TERMS`, `DATEJOIN`) VALUES
(10, 'assem', 'saleh', '', '', '', '', 'cairo', '', '', '0000-00-00', 'Male', '01002888511', '', 0, 'assem', 'f4a547e8c951015e88b1a6e793bee8b18dca19db', '', 1, '2020-07-06'),
(12, 'saleh', 'eldessouky', '', '', '', '', 'cairo', '', '', '0000-00-00', 'Male', '01002888511', '', 0, 'saleh', 'b43b645d80b134230d7731132d83396c10075a26', 'customer_image/product2.jpg', 1, '2020-07-09'),
(13, 'Shady', 'yasser', '', '', '', '', 'cairo', '', '', '0000-00-00', 'Male', '01147017892', '', 0, 'shady', 'bb2774711798a827a6dfffed4d776df1ac4e454e', '', 1, '2020-07-09'),
(14, 'Amir', 'Muhamed', '', '', '', '', 'cdd', '', '', '0000-00-00', 'Male', '1155454', '', 0, 'amir', 'a5f6684309aac0e065e78f559531c8c6bb62f605', 'customer_image/download.jpg', 1, '2020-07-14'),
(15, 'youssef', 'akef', '', '', '', '', 'cdd', '', '', '0000-00-00', 'Male', '01000091044', '', 0, 'youssef akef', '0926e74a32bfd68787f1797f518d2fda1d021f56', '', 1, '2020-07-14'),
(16, 'youssef', 'akef', '', '', '', '', 'cdd', '', '', '0000-00-00', 'Male', '01000091044', '', 0, 'youssef akef', '0926e74a32bfd68787f1797f518d2fda1d021f56', '', 1, '2020-07-14'),
(17, 'youssef', 'akef', '', '', '', '', 'cdd', '', '', '0000-00-00', 'Male', '01000091044', '', 0, 'youssef akef', '0926e74a32bfd68787f1797f518d2fda1d021f56', '', 1, '2020-07-14'),
(18, 'menna', 'menna', '', '', '', '', 'cairo', '', '', '0000-00-00', 'Female', '0100000000', '', 0, 'menna', '8e417f5a7449c0e2a77963d2bb07c2ce2a9f831b', '', 1, '2020-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(21, 201755, 1, 250000, 107, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `INGREDIENTS` varchar(255) NOT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `INGREDIENTS`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `OWNERPHONE`) VALUES
(201747, 'AAS', '', 1, 10, 10, 30, 'uploaded_photos/download.jpg', 'Available', 'Menna', '10155323656'),
(201750, 'Anti-lock brakes\r\nABS brakes automatically sense when a tire has stopped rotating under extreme braking, and will modulate the brake pressure to allow the tire to rotate. This increases the vehicles ability to turn while braking.\r\nStability control\r\nStabi', '', 10, 2210000, 2210000, 0, 'uploaded_photos/USC90MBS231A021001.jpg', 'Available', 'Mercedes Benz', ''),
(201751, 'Anti-lock brakes+ABS brakes automatically sense when a tire has stopped rotating under extreme braking+will modulate the brake pressure to allow the tire to rotate+This increases the vehicles ability to turn while braking.\r\nStability control\r\nStabi       ', '', 10, 2210000, 2210000, 32, 'uploaded_photos/USC90MBS231A021001.jpg', 'Available', 'G Class', ''),
(201752, 'Simply gorgeous in design, the mid-size 2019 Mercedes-Benz E-Class has quite a long list of virtues. Smooth, suave, versatile, and confident, it\'s also an athletic performer. It\'s sold in four body styles, including a wagon.\r\nTwo new engines have been add', '', 10, 1133552, 1133552, 0, 'uploaded_photos/USD00MBC682A021001.jpg', 'Available', 'Mercedes Benz', ''),
(201753, 'Simply gorgeous in design, the mid-size 2019 Mercedes-Benz E-Class has quite a long list of virtues. Smooth, suave, versatile, and confident, it\'s also an athletic performer. It\'s sold in four body styles, including a wagon.\r\nTwo new engines have been add', '', 10, 1133552, 1133552, 0, 'uploaded_photos/USD00MBC682A021001.jpg', 'Available', 'Mercedes Benz', ''),
(201754, 'Simply gorgeous in design, the mid-size 2019 Mercedes-Benz E-Class has quite a long list of virtues. Smooth, suave, versatile, and confident, it\'s also an athletic performer. It\'s sold in four body styles, including a wagon.\r\nTwo new engines have been add', '', 10, 1133552, 1133552, 32, 'uploaded_photos/USD00MBC682A021001.jpg', 'Available', 'E-Class', ''),
(201755, 'Features & Equipments:\r\n4 Airbags\r\nABS\r\nEBD\r\nESP\r\nTraction Control\r\nHill Start Assist\r\nEngine Immobilizer\r\nAuto Power Windows\r\nElectric Adjustable + Folding + Heated Mirrors\r\nTiltable and Telescopic Steering Wheel\r\nSpeed Sensitive Electric Power Steering\r', '', 9, 250000, 250000, 31, 'uploaded_photos/big-up_2640ab87263ff9ba11f7201ec0cf11bb.png', 'Available', 'Astra Turbo', ''),
(201756, 'Features & Equipments:6 Airbags+ABS+EBD+ESP+Traction Control  +Hill +Start Assist+Active Hood+ISO Fix+Tiltable and Telescopic Steering Wheel+Front and Rear Arm Rest+ Electric Power Steering+Central Lock                      ', '', 10, 500000, 500000, 31, 'uploaded_photos/big-up_87809ff5f5673b866bd272b1ebadc5fd.png', 'Available', 'Insignia Grand Sport', ''),
(201757, 'Features & Equipments:+Rain Sensor+SRVM Dimmer+Light Sensor+Lamp Interior Luggage Compartment+Rear Split Seats 60/40\r\n+Front & Rear Arm Rest+Leather/Cloth Seats+8 Way Manual AGR Ergonomic Driver Seat\r\n+6 Way Manual Ergonom                      ', '', 10, 484990, 484990, 31, 'uploaded_photos/big-up_cc9acc08cb94659517479995129b5a51.png', 'Available', 'The GrandLand X', ''),
(201758, '*Mercedes*\r\n1-Trim :	CLS 450 /CLS 450 4MATIC\r\n2-Engine:	3.0-liter Turbo Inline-6 / Hybrid 3.0-liter Turbo Inline-6 Hybrid\r\n3-Transmission:	9-Speed Automatic / 9-Speed Automatic\r\n4-Drivetrain:	Rear-Wheel Drive / All-Wheel Drive\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r', '', 50, 1200000, 1200000, 32, 'uploaded_photos/USD00MBC682A021001.jpg', 'Available', 'Mercedes Benz', '01000000000'),
(201763, 'Air Filter', '', 10, 800, 800, 40, 'uploaded_photos/22435647-e96a-4e78-85c9-2b87291a4d77.jpg', 'Available', 'Mercedes Benz', ''),
(201764, 'Batteries+A vehicle’s battery supplies constant power to all the electrical systems even when it’s not running. All batteries have a service life and as the battery in your vehicle ages, its performance deteriorates affecting the starting ability and the ', '', 10, 2500, 2500, 0, 'uploaded_photos/mer c.jpg', 'Available', 'Battery', ''),
(201765, 'Battery', '', 10, 2500, 2500, 40, 'uploaded_photos/mer c.jpg', 'Available', 'Mercedes Benz', ''),
(201766, 'Fuel Filter', '', 10, 450, 450, 40, 'uploaded_photos/oil.jpg', 'Available', 'Mercedes Benz', ''),
(201767, 'Break Pads', '', 10, 1000, 1000, 40, 'uploaded_photos/brakes.jpg', 'Available', 'Mercedes Benz', ''),
(201768, 'Oil Filter', '', 10, 350, 350, 40, 'uploaded_photos/filter.jpg', 'Available', 'Mercedes Benz', ''),
(201769, 'Dynamo Belt Tensioner', '', 10, 840, 840, 39, 'uploaded_photos/opel.png', 'Available', 'Opel', ''),
(201770, 'Fuel Pump', '', 10, 3390, 3390, 39, 'uploaded_photos/trob.jpeg', 'Available', 'Opel', ''),
(201771, 'Break Pads', '', 10, 400, 400, 39, 'uploaded_photos/BREAK.png', 'Available', 'Opel', ''),
(201772, 'Oil Filter', '', 10, 150, 150, 39, 'uploaded_photos/0007863_filtron-oil-filter-astra-j.jpeg', 'Available', 'Opel', ''),
(201774, 'Fuel Filters                ', '', 10, 100, 100, 39, 'uploaded_photos/0003548_fuel-filter-astra-j.jpeg', 'Available', 'Opel', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(7, 201743, 10, 8550, 1, 0),
(8, 201744, 0, 18000, 0, 0),
(9, 201745, 0, 20000, 0, 0),
(10, 201746, 10, 18000, 1, 0),
(11, 201747, 50, 5, 1, 0),
(14, 201750, 0, 2210000, 0, 0),
(15, 201751, 0, 2210000, 0, 0),
(16, 201752, 0, 1133552, 0, 0),
(17, 201753, 0, 1133552, 0, 0),
(18, 201754, 0, 1133552, 0, 0),
(19, 201755, 0, 250000, 0, 0),
(20, 201756, 0, 500000, 0, 0),
(21, 201757, 0, 484990, 0, 0),
(22, 201758, 0, 1200000, 0, 0),
(27, 201763, 0, 800, 0, 0),
(28, 201764, 0, 2500, 0, 0),
(29, 201765, 0, 2500, 0, 0),
(30, 201766, 0, 450, 0, 0),
(31, 201767, 0, 1000, 0, 0),
(32, 201768, 0, 350, 0, 0),
(33, 201769, 0, 840, 0, 0),
(34, 201770, 0, 3390, 0, 0),
(35, 201771, 0, 400, 0, 0),
(36, 201772, 0, 150, 0, 0),
(38, 201774, 0, 100, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting`
--

CREATE TABLE `tblsetting` (
  `SETTINGID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` varchar(90) NOT NULL,
  `DELPRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsetting`
--

INSERT INTO `tblsetting` (`SETTINGID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(1, 'Cairo City', '1', 50),
(2, 'Giza City', '2', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tblstockin`
--

CREATE TABLE `tblstockin` (
  `STOCKINID` int(11) NOT NULL,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`) VALUES
(21, '2020-07-16 12:31:34', 18, 107, 50, 250050, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(128, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/Canal Sugar New Logo.png'),
(129, 'sales', 'sales', '59248c4dae276a021cb296d2ee0e6a0c962a8d7f', 'Staff', ''),
(130, 'encoder', 'encoder', '50f63d56bc459eda4a28a617b9aa0d9944a9032a', 'Encoder', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `id` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwishlist`
--

INSERT INTO `tblwishlist` (`id`, `CUSID`, `PROID`, `WISHDATE`, `WISHSTATS`) VALUES
(4, 14, 201748, '2020-07-14', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Indexes for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Indexes for table `tblsetting`
--
ALTER TABLE `tblsetting`
  ADD PRIMARY KEY (`SETTINGID`);

--
-- Indexes for table `tblstockin`
--
ALTER TABLE `tblstockin`
  ADD PRIMARY KEY (`STOCKINID`),
  ADD KEY `PROID` (`PROID`,`USERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
