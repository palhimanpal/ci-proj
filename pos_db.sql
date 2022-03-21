-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 06, 2022 at 11:17 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `assetID` int NOT NULL,
  `itemCategory` varchar(100) NOT NULL,
  `itemSubCategory` varchar(100) DEFAULT NULL,
  `quantity` int NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `uatDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`assetID`, `itemCategory`, `itemSubCategory`, `quantity`, `companyName`, `uatDate`) VALUES
(2, 'Air Conditioner', ' Split (LG)', 12, 'Bluestar', '2022-03-02'),
(3, 'Almirah', 'Steel Almirah big', 4, 'Godrej', '2022-03-01'),
(4, 'Air Conditioner', ' Split (LG)', 12, 'Bluestar', '2022-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemCategory` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `itemSubCategory` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemCategory`, `itemSubCategory`) VALUES
('12-TB EMC San', ''),
('A-100TB HP Nas', ''),
('A.D.C', ''),
('Air Conditioner', ' Split (LG)'),
('Air Conditioner', 'AC  Plant'),
('Air Conditioner', 'Others(Duct)'),
('Air Conditioner', 'Split (Carrier)'),
('Air Conditioner', 'Split (Hitachi)'),
('Air Conditioner', 'Windows AC'),
('Almirah', 'Book Shelf'),
('Almirah', 'Glass Almirah '),
('Almirah', 'Steel Almirah big'),
('Almirah', 'Steel Almirah Small'),
('Almirah', 'Woooden Almirah'),
('Biometric machine', ''),
('Blower Heater', ''),
('Central Table', ''),
('Chair', 'Officer Chair'),
('Chair', 'Operator Chair (New)'),
('Chair', 'Operator Chair (Old)'),
('Chair', 'Steel Chair '),
('Chair', 'Visitor Chair (Exe)'),
('Chair', 'Visitor Chair (New)'),
('Chair', 'Visitor Chair (Ord)'),
('Chair', 'Wooden Chair'),
('Compactor', '               Double Side'),
('Compactor', '              Single Side'),
('Computer System', 'New (HP)'),
('Computer System', 'Old (ACER/Other)'),
('Computer Table', 'Godrej'),
('Computer Table', 'Others'),
('Computer Table', 'Wooden Medium'),
('Computer Table', 'Wooden Small'),
('Conference Room chair', ''),
('Conference Room Table', ''),
('Conica minolta bizhub 363', ''),
('CPU  ', ''),
('CPU Trolly', ''),
('Curtains', 'Door'),
('Curtains', 'Partition'),
('D.C', ''),
('DG Set', '180 KVA'),
('DG Set', '50 KVA'),
('Display Board', ''),
('EPBAX', ''),
('Extension Board', ''),
('Fan', 'Pedestal Fan'),
('Fan', 'Wall / Table Fan'),
('Fax machine', ''),
('File Cabinet', ''),
('Fire Alarm System', ''),
('Fire Extinguisher', 'ABC Type (5KG)'),
('Fire Extinguisher', 'Clean Agent (2KG)'),
('Fire Extinguisher', 'Clean Agent (4KG)'),
('Fire Extinguisher', 'Foam Type (9Ltd)'),
('Foot Rest', ''),
('Godrej CD Locker New', ''),
('Heater', ''),
('Hot case', ''),
('HP Color Leser Jet C.P 5225', ''),
('HPM2727NF', ''),
('Intercom', 'Display  '),
('Intercom', 'Normal'),
('Inverter', ''),
('Keyboard', ''),
('Microfone set', 'Ceiling Speaker'),
('Microfone set', 'Mike'),
('Microfone set', 'Wall Speaker'),
('Monitor', ''),
('Mouse', ''),
('Notice Board', ''),
('Photocopier(All in One)', ''),
('Printer', '4015N'),
('Printer', 'HPLJ P1007'),
('Printer', 'HPLJ P1606dn'),
('Printer', 'HPLJ P2055dn'),
('Printer', 'Laser 4050'),
('Printer', 'LASER DL 1200'),
('Projector ', ''),
('Projector Screen', ''),
('Reading stand', ''),
('Roller Blinds', ''),
('Rubber Matt (Plant Room)', ''),
('S.P 1200 SF Reco', ''),
('Sand Buket Stand (4 Bucket)', ''),
('Scanner', ''),
('Server C.P.U', ''),
('Server Set', ''),
('Side Rack (big)', 'Covered'),
('Side Rack (big)', 'Open'),
('Side Rack (small)', 'Steel Rack (New)'),
('Side Rack (small)', 'Steel rack (old)'),
('Side Rack (small)', 'Wooden Rack'),
('Side Screen', ''),
('Sofa Set (3+1+1)', ''),
('Stablizer(4KVA)', ''),
('Steel Locker (12 Slot)', ''),
('Steel Trolley', ''),
('Stool Small', ''),
('Storage Unit', ''),
('switch', ''),
('Swith H.P Procurve', ''),
('Table', ' Wooden Small Table'),
('Table', 'Others'),
('Table', 'Steel Big'),
('Table', 'Steel Small'),
('Table', 'Wooden BigTable'),
('Temperature Meter', ''),
('UPS ', '0.6KVA'),
('UPS ', '20 KVA'),
('UPS ', '40 KVA'),
('UPS ', '50KVA'),
('UPS ', '650VA'),
('Vaccum Cleaner', ''),
('Vertical Blinds', 'Large Window'),
('Vertical Blinds', 'Medium Window'),
('Video Conference Set', ''),
('Wall Clock', ''),
('Wall paintings', ''),
('Water Dispensor', ''),
('White Board', ''),
('Wi Fi', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`) VALUES
(1, 'Macbook Pro', 90000),
(2, 'Redmi Note 9 Promax', 19000),
(3, 'Dell XPS 13', 45900),
(4, 'iPhone 13X', 63000),
(5, 'Alienware', 120000),
(6, 'Redmi Smartwatch', 12000),
(8, 'Type C Adapter + USB cable', 1500),
(9, 'Google Pixel 4', 67000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`assetID`),
  ADD KEY `itemConstraint` (`itemCategory`,`itemSubCategory`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD KEY `itemCategory` (`itemCategory`,`itemSubCategory`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `assetID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `itemConstraint` FOREIGN KEY (`itemCategory`,`itemSubCategory`) REFERENCES `items` (`itemCategory`, `itemSubCategory`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
