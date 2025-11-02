-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 25, 2023 at 07:13 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `csv_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `User_Id` varchar(20) NOT NULL,
  `Product_Id` varchar(20) NOT NULL,
  `Product_Name` varchar(20) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Quantity` int(20) NOT NULL,
  `Total_amt` varchar(20) NOT NULL,
  `Image` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`User_Id`, `Product_Id`, `Product_Name`, `Price`, `Quantity`, `Total_amt`, `Image`, `Status`) VALUES
('1890', 'cr004', 'Muticolor Printed Co', '358', 1, '358', 'cr004.jpg', 'na'),
('1890', 'cr004', 'Muticolor Printed Co', '358', 1, '358', 'cr004.jpg', 'na'),
('1023', 'tp005', 'Trendy Fashionable T', '181', 1, '181', 'tp005.jpg', 'na'),
('1023', 'sr003', 'Banita Refined Saree', '303', 1, '303', 'sr003.jpg', 'na'),
('1023', 'tp010', 'Puff Sleeves Peplum ', '175', 1, '175', 'tp010.jpg', 'na');

-- --------------------------------------------------------

--
-- Table structure for table `data_2`
--

CREATE TABLE IF NOT EXISTS `data_2` (
  `User_Id` varchar(20) NOT NULL,
  `Password` varchar(11) NOT NULL,
  `Mobile` int(10) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_2`
--

INSERT INTO `data_2` (`User_Id`, `Password`, `Mobile`, `Address`) VALUES
('1023', '2208', 2147483647, 'fatehabad'),
('1234567', '2208', 67868709, 'hsojdpo'),
('12345678', '2208', 67868709, 'hsojdpo'),
('1234', 'gh', 789, 'fkg'),
('1890', '1234', 6565656, 'gfgghfgh'),
('10', '123', 2147483647, 'fatehabad'),
('234', '1', 5647568, 'dlvmf;lg');

-- --------------------------------------------------------

--
-- Table structure for table `website_data`
--

CREATE TABLE IF NOT EXISTS `website_data` (
  `Sr_No` int(2) DEFAULT NULL,
  `Category` varchar(16) DEFAULT NULL,
  `Product_ID` varchar(5) DEFAULT NULL,
  `Product_Name` varchar(28) DEFAULT NULL,
  `Description` varchar(106) DEFAULT NULL,
  `Price` int(4) DEFAULT NULL,
  `Image` varchar(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website_data`
--

INSERT INTO `website_data` (`Sr_No`, `Category`, `Product_ID`, `Product_Name`, `Description`, `Price`, `Image`) VALUES
(1, 'Ethnic_Wear', 'sr001', 'Women Art Printed Saree', 'Saree fabric: Georgette;Pattern: Printed;Blouse fabric: Georgette;Blouse: Running blouse', 486, 'sr001.jpg'),
(2, 'Ethnic_Wear', 'sr002', 'Aagam Sensational Saree', 'Saree fabric: Satin silk;Pattern: Solid;Blouse fabric: Art silk;Blouse: Printed', 499, 'sr002.jpg'),
(3, 'Ethnic_Wear', 'sr003', 'Banita Refined Saree', 'Saree fabric: Georgette; Pattern: Striped;Blouse fabric: Dupion silk;Blouse: Solid', 303, 'sr003.jpg'),
(4, 'Ethnic_Wear', 'sr004', 'Festive Wear Satin Saree', 'Saree fabric: Satin silk;Pattern: Zari woven;Blouse fabric: Satin;Blouse: Self design', 414, 'sr004.jpg'),
(5, 'Ethnic_Wear', 'sr005', 'Marble Wine Saree', 'Saree fabric: Net;Pattern: Solid;Blouse fabric: Net;Blouse: Running blouse', 268, 'sr005.jpg'),
(6, 'Ethnic_Wear', 'sr006', 'Flower Net Saree', 'Saree fabric: Net;Pattern: Printed;Blouse fabric: Dupion silk;Blouse: Solid', 304, 'sr006.jpg'),
(7, 'Ethnic_Wear', 'sr007', 'Partywear Sequence Lehnga ', 'Bottomwear fabric: Satin;Pattern: Embroidered;Type: Unstitched;Dupatta pattern: Embroidered', 620, 'sr007.jpg'),
(8, 'Ethnic_Wear', 'sr008', 'Organza Floral Lehnga', 'Bottomwear fabric: Soft silk;Pattern: Floral;Type: Semi-stiched;Dupatta pattern: Floral', 831, 'sr008.jpg'),
(9, 'Ethnic_Wear', 'sr009', 'Coding Work Lehnga', 'Bottomwear fabric: Georgette;Pattern: Solid;Type: Unstitched;Dupatta pattern: Floral', 942, 'sr009.jpg'),
(10, 'Ethnic_Wear', 'sr010', 'Digital Printed Lehnga', 'Bottomwear fabric: Soft silk;Pattern: Micro;Type: Stitched;Dupatta pattern: Ethnic motif', 714, 'sr010.jpg'),
(11, 'Ethnic_Wear', 'sr011', 'Fabulous Women Lehnga', 'Bottomwear fabric: Silk blend;Pattern: Ruffle;Type: Stitched;Dupatta pattern: Embroidered', 413, 'sr011.jpg'),
(12, 'Ethnic_Wear', 'sr012', 'Mirror Embroidery Lehnga', 'Bottomwear fabric: Silk blend;Pattern: Applique;Type: Semi-stiched;Dupatta pattern: Checked', 865, 'sr012.jpg'),
(13, 'Western_Wear', 'wr001', 'Women Two-piece Set', 'Fabric: Poly blend;Sleeve length: Short sleeves;Pattern: Self-design;Size: XS,S,M,L,XL,XXL', 392, 'wr001.jpg'),
(14, 'Western_Wear', 'wr002', 'Women Fashionable Dress', 'Fabric: Lycra;Sleeve length: Half sleeves;Pattern: Solid;Size: S,M,L,XL', 292, 'wr002.jpg'),
(15, 'Western_Wear', 'wr003', 'Comfy Sensational Dress', 'Fabric: Crepe;Sleeve length: Sleeveless;Pattern: Solid;Size: S,M,L,XXL', 285, 'wr003.jpg'),
(16, 'Western_Wear', 'wr004', 'V-neck Pink Gown', 'Fabric: Georgette;Sleeve length: Three-quarter sleeves;Pattern: Dyed;Size: S,M,L,XL,XXL', 449, 'wr004.jpg'),
(17, 'Western_Wear', 'wr005', 'Dazeel Women Wrap Dress', 'Fabric: Lycra;Sleeve length: Long sleeves;Pattern: Solid;Size: S,M,L,XL', 367, 'wr005.jpg'),
(18, 'Western_Wear', 'wr006', 'Chicken Kadhai Middi', 'Fabric: Cotton cambric;Sleeve length: Long sleeves;Pattern: Embellished;Size: ,S,M,L', 591, 'wr006.jpg'),
(19, 'Western_Wear', 'wr007', 'Stylish One Piece Dress', 'Fabric: Crepe;Sleeve length: Short sleeves;Pattern: Printed;Size: S,M,L,XL,XXL', 244, 'wr007.jpg'),
(20, 'Western_Wear', 'wr008', 'Partywear Printed Dress', 'Fabric: Crepe;Sleeve length: Long sleeves;Pattern: Printed;Size: M,L,XL', 354, 'wr008.jpg'),
(21, 'Western_Wear', 'wr009', 'Casual A-line Middi', 'Fabric: Crepe;Sleeve length: Three-quarter sleeves;Pattern: Striped;Size: S,M,L,XL,XXL', 228, 'wr009.jpg'),
(22, 'Western_Wear', 'wr010', 'Fancy Rose Dress', 'Fabric: Polyester;Sleeve length: Sleeveless;Pattern: Solid;Size: S,M', 489, 'wr010.jpg'),
(23, 'Western_Wear', 'wr011', 'Stylish Feminine Dress', 'Fabric: Crepe;Sleeve length: Three-quarter sleeves;Pattern: Printed;Size: M,L,XL', 262, 'wr011.jpg'),
(24, 'Western_Wear', 'wr012', 'White Chicken Style Dress', 'Fabric: Cotton cambric;Sleeve length: Long sleeves;Pattern: Embroidered;Size: S,M,L', 477, 'wr012.jpg'),
(25, 'Kurta_Sets', 'ks001', 'Stylish Maroon Kurta Set', 'Kurta fabric: Cotton;Bottomwear fabric: Cotton;Sleeve length: Three-quarter;Pattern: Printed', 464, 'ks001.jpg'),
(26, 'Kurta_Sets', 'ks002', 'Aishani Pretty Kurta Set', 'Kurta fabric: Silk;Bottomwear fabric: Cotton;Sleeve length: Half sleeves;Pattern: Floral', 482, 'ks002.jpg'),
(27, 'Kurta_Sets', 'ks003', 'Pakistani Wedding Suit', 'Kurta fabric: Georgette;Bottomwear fabric: Shantoon;Sleeve length: Full sleeves;Pattern:Embroidered', 1589, 'ks003.jpg'),
(28, 'Kurta_Sets', 'ks004', 'Stylish Grey Suit', 'Kurta fabric: Net;Bottomwear fabric: Shantoon;Sleeve length: Full sleeves;Pattern:Embroidered', 1630, 'ks004.jpg'),
(29, 'Kurta_Sets', 'ks005', 'Pretty Pink Kurta Set', 'Kurta fabric: Georgette;Bottomwear fabric: Shantoon;Sleeve length: Umbrella sleeves;Pattern:Embroidered', 1751, 'ks005.jpg'),
(30, 'Kurta_Sets', 'ks006', 'Fancy Jacquard Dress', 'Kurta fabric: Georgette;Bottomwear fabric: Taffeta silk;Sleeve length: Sleeveless;Pattern:Painted', 404, 'ks006.jpg'),
(31, 'Kurta_Sets', 'ks007', 'Alluring White Kurta Set', 'Kurta fabric: Georgette;Bottomwear fabric: Georgette;Sleeve length: Long sleeves;Pattern:Embroidered', 1128, 'ks007.jpg'),
(32, 'Kurta_Sets', 'ks008', 'Women Casual Wear', 'Kurta fabric: Cotton;Bottomwear fabric: Cotton;Sleeve length: Three-quarter sleeves;Pattern:Printed', 620, 'ks008.jpg'),
(33, 'Kurta_Sets', 'ks009', 'Cotton Blend Kurta Set', 'Kurta fabric: Cotton blend;Bottomwear fabric: Cotton;Sleeve length: Three-quarter sleeves;Pattern:Printed', 403, 'ks009.jpg'),
(34, 'Kurta_Sets', 'ks010', 'Stylish Ravishing Women Suit', 'Kurta fabric: Georgette;Bottomwear fabric: Georgetete;Sleeve length: Sleeveless;Pattern: Solid', 780, 'ks010.jpg'),
(35, 'Kurta_Sets', 'ks011', 'Designer Party Wear Suit', 'Kurta fabric: Georgette;Bottomwear fabric: Cotton;Sleeve length: Three-quarter sleeves;Pattern:Embroidered', 1374, 'ks011.jpg'),
(36, 'Kurta_Sets', 'ks012', 'Comfortable Daily Wear', 'Kurta fabric: Art silk;Bottomwear fabric: Art silk;Sleeve length: Long sleeves;Pattern:Printed', 1212, 'ks012.jpg'),
(37, 'Tops_Tunics', 'tp001', 'Jacket Plus Crop Top', 'Fabric: Crepe;Sleeve length: Three-quarter sleeves;Pattern: Solid;Size: S,M', 270, 'tp001.jpg'),
(38, 'Tops_Tunics', 'tp002', 'Yellow Bandhej Top', 'Fabric: Rayon;Sleeve length: Sleeveless;Pattern: Printed;Size: XS,S,M,L,XL,XXL', 203, 'tp002.jpg'),
(39, 'Tops_Tunics', 'tp003', 'Western Georgette Top', 'Fabric: Georgette;Sleeve length: Long sleeves;Pattern: Solid;Size: XS,S,M,L', 202, 'tp003.jpg'),
(40, 'Tops_Tunics', 'tp004', 'Regular Fit Top', 'Fabric: Georgette;Sleeve length: Short sleeves;Pattern: Solid;Size: S,M,L,XL', 192, 'tp004.jpg'),
(41, 'Tops_Tunics', 'tp005', 'Trendy Fashionable Top', 'Fabric: Lycra;Sleeve length: Short sleeves;Pattern: Solid;Size: XS,S,M,L', 181, 'tp005.jpg'),
(42, 'Tops_Tunics', 'tp006', 'Bell Sleeves Rainbow Top', 'Fabric: Georgette;Sleeve length: Three-quarter sleeves;Pattern: Rainbow;Size: S,M,L,XL', 295, 'tp006.jpg'),
(43, 'Tops_Tunics', 'tp007', 'Checkered Square Neck Top', 'Fabric: Cotton;Sleeve length: Short sleeves;Pattern: Checked;Size: S,M,L,XL,XXL', 300, 'tp007.jpg'),
(44, 'Tops_Tunics', 'tp008', 'Casual Sleeveless Top', 'Fabric: Georgette;Sleeve length: Sleeveless;Pattern: Solid;Size: S,M,L,XL', 267, 'tp008.jpg'),
(45, 'Tops_Tunics', 'tp009', 'Ravishing White Crop Top', 'Fabric: Crepe;Sleeve length: Short sleeves;Pattern: Floral;Size: XS,M,L,XL', 225, 'tp009.jpg'),
(46, 'Tops_Tunics', 'tp010', 'Puff Sleeves Peplum Top', 'Fabric: Polyester;Sleeve length: Three-quarter sleeves;Pattern: Solid;Size: S,M,L,XL', 175, 'tp010.jpg'),
(47, 'Tops_Tunics', 'tp011', 'Casual Slub Cotton Top', 'Fabric: Poly crepe;Sleeve length: Short sleeves;Pattern: Solid;Size: S,M,L,XL', 216, 'tp011.jpg'),
(48, 'Tops_Tunics', 'tp012', 'Trendy Flared Top', 'Fabric: Poly crepe;Sleeve length: Short sleeves;Pattern: Solid;Size: S,M,L,XL', 254, 'tp012.jpg'),
(49, 'Jeans_Trousers', 'jt001', 'Fancy Sensational Trouser', 'Fabric: Polyester;Pattern: Solid;Type: Trouser;Size:28,30,32,34,36,38', 265, 'jt001.jpg'),
(50, 'Jeans_Trousers', 'jt002', 'Stretchable Women''s Capree', 'Fabric: Lycra;Pattern: Solid;Type: Capree;Size:28,30,32,34,36,38,40', 248, 'jt002.jpg'),
(51, 'Jeans_Trousers', 'jt003', 'Light Blue Jogger', 'Fabric: Denim;Pattern: Solid;Type: Jean;Size:32,34,36', 529, 'jt003.jpg'),
(52, 'Jeans_Trousers', 'jt004', 'Purple Cargo Trouser', 'Fabric: Poly blend;Pattern: Solid;Type: Trouser;Size:28,30,32,34', 399, 'jt004.jpg'),
(53, 'Jeans_Trousers', 'jt005', 'Feminine Women Trouser', 'Fabric: Cotton blend;Pattern: Checked;Type: Trouser;Size:28,30,32,34,36,38,40', 172, 'jt005.jpg'),
(54, 'Jeans_Trousers', 'jt006', 'Knee Cut Denim', 'Fabric: Polyester;Pattern: Solid;Type: Jean;Size:32,34,36,38', 401, 'jt006.jpg'),
(55, 'Jeans_Trousers', 'jt007', 'Black Cargo Jean', 'Fabric: Poly blend;Pattern: Solid;Type: Jean;Size:28,30,32', 408, 'jt007.jpg'),
(56, 'Jeans_Trousers', 'jt008', 'Stylish Bell Bottom Jean', 'Fabric: Denim;Pattern: Solid;Type: Jean;Size:28,30,32,34,36', 188, 'jt008.jpg'),
(57, 'Jeans_Trousers', 'jt009', 'DKG Denim Skirt', 'Fabric: Denim;Pattern: Solid;Type: Skirt;Size:28,30', 277, 'jt009.jpg'),
(58, 'Jeans_Trousers', 'jt010', 'Comfy Gym Wear', 'Fabric: Polyester;Pattern: Solid;Type: Trouser;Size:28,30,32,34,36,38,40', 329, 'jt010.jpg'),
(59, 'Jeans_Trousers', 'jt011', 'Black Cotton Palazzo', 'Fabric: Cotton;Pattern: Solid;Type: Palazzo;Size:34,36,38,40', 254, 'jt011.jpg'),
(60, 'Jeans_Trousers', 'jt012', 'Wide Leg Cargo Jean', 'Fabric: Poly blend;Pattern: Solid;Type: Jean;Size:28,30,32,34', 692, 'jt012.jpg'),
(61, 'Co-ord_Sets', 'cr001', 'Lavender Co-ord Set', 'Fabric: Crepe;Sleeve length: Shoulder straps;Pattern: Self-design;Size: XS,S,M,L,XL', 460, 'cr001.jpg'),
(62, 'Co-ord_Sets', 'cr002', 'Classy Co-ord Set', 'Fabric: Polyester;Sleeve length: Long sleeves;Pattern: Solid;Size: L,XL,XXL', 576, 'cr002.jpg'),
(63, 'Co-ord_Sets', 'cr003', 'Black Co-ord Set', 'Fabric: Rayon;Sleeve length: Half sleeves;Pattern: Painted;Size: S,M,L,XL', 971, 'cr003.jpg'),
(64, 'Co-ord_Sets', 'cr004', 'Muticolor Printed Co-ord Set', 'Fabric: Crepe;Sleeve length: Short sleeves;Pattern: Printed;Size: XS,S,M,L,XL,XXL', 358, 'cr004.jpg'),
(65, 'Co-ord_Sets', 'cr005', 'Cotton Printed Co-ord Set', 'Fabric: Cotton cambric;Sleeve length: Three-quarter sleeves;Pattern: Printed;Size: XS,S,M', 487, 'cr005.jpg'),
(66, 'Co-ord_Sets', 'cr006', 'Effortless Chic Co-ord Set', 'Fabric: Crepe;Sleeve length: Three-quarter sleeves;Pattern: Striped;Size: XS,S,M,L,XL', 363, 'cr006.jpg'),
(67, 'Co-ord_Sets', 'cr007', 'Stylish Co-ord Set', 'Fabric: Crepe;Sleeve length: Long sleeves;Pattern: Floral;Size: S,M,L,XL', 542, 'cr007.jpg'),
(68, 'Co-ord_Sets', 'cr008', 'Jaipuri Co-ord Set', 'Fabric: Cotton blend;Sleeve length: Half sleeves;Pattern: Printed;Size: XS,S,M,L', 821, 'cr008.jpg'),
(69, 'Co-ord_Sets', 'cr009', 'Blazer Co-ord Set', 'Fabric: Polyester;Sleeve length: Long sleeves;Pattern: Solid;Size: S,M,L', 679, 'cr009.jpg'),
(70, 'Co-ord_Sets', 'cr010', 'Floral Co-ord Set', 'Fabric: Rayon;Sleeve length: Three-quarter sleeves;Pattern: Floral;Size: S,M,L,XL', 770, 'cr010.jpg'),
(71, 'Co-ord_Sets', 'cr011', 'Feminine Co-ord Set', 'Fabric: Georgette;Sleeve length: Short sleeves;Pattern: Self-design;Size: L,XL', 558, 'cr011.jpg'),
(72, 'Co-ord_Sets', 'cr012', 'Denim Co-ord Set', 'Fabric: Denim;Sleeve length: Three-quarter sleeves;Pattern: striped;Size: S,M', 443, 'cr012.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `website_data2`
--

CREATE TABLE IF NOT EXISTS `website_data2` (
  `Sr_No` int(2) DEFAULT NULL,
  `Product_Id` varchar(5) DEFAULT NULL,
  `Image_1` varchar(11) DEFAULT NULL,
  `Image_2` varchar(11) DEFAULT NULL,
  `Image_3` varchar(11) DEFAULT NULL,
  `Image_4` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website_data2`
--

INSERT INTO `website_data2` (`Sr_No`, `Product_Id`, `Image_1`, `Image_2`, `Image_3`, `Image_4`) VALUES
(1, 'sr001', 'sr001_1.jpg', 'sr001_2.jpg', 'sr001_3.jpg', 'sr001_4.jpg'),
(2, 'sr002', 'sr002_1.jpg', 'sr002_2.jpg', 'sr002_3.jpg', 'sr002_4.jpg'),
(3, 'sr003', 'sr003_1.jpg', 'sr003_2.jpg', 'sr003_3.jpg', 'sr003_4.jpg'),
(4, 'sr004', 'sr004_1.jpg', 'sr004_2.jpg', 'sr004_3.jpg', 'sr004_4.jpg'),
(5, 'sr005', 'sr005_1.jpg', 'sr005_2.jpg', 'sr005_3.jpg', 'sr005_4.jpg'),
(6, 'sr006', 'sr006_1.jpg', 'sr006_2.jpg', 'sr006_3.jpg', 'sr006_4.jpg'),
(7, 'sr007', 'sr007_1.jpg', 'sr007_2.jpg', 'sr007_3.jpg', 'sr007_4.jpg'),
(8, 'sr008', 'sr008_1.jpg', 'sr008_2.jpg', 'sr008_3.jpg', 'sr008_4.jpg'),
(9, 'sr009', 'sr009_1.jpg', 'sr009_2.jpg', 'sr009_3.jpg', 'sr009_4.jpg'),
(10, 'sr010', 'sr010_1.jpg', 'sr010_2.jpg', 'sr010_3.jpg', 'sr010_4.jpg'),
(11, 'sr011', 'sr011_1.jpg', 'sr011_2.jpg', 'sr011_3.jpg', 'sr011_4.jpg'),
(12, 'sr012', 'sr012_1.jpg', 'sr012_2.jpg', 'sr012_3.jpg', 'sr012_4.jpg'),
(13, 'wr001', 'wr001_1.jpg', 'wr001_2.jpg', 'wr001_3.jpg', 'wr001_4.jpg'),
(14, 'wr002', 'wr002_1.jpg', 'wr002_2.jpg', 'wr002_3.jpg', 'wr002_4.jpg'),
(15, 'wr003', 'wr003_1.jpg', 'wr003_2.jpg', 'wr003_3.jpg', 'wr003_4.jpg'),
(16, 'wr004', 'wr004_1.jpg', 'wr004_2.jpg', 'wr004_3.jpg', 'wr004_4.jpg'),
(17, 'wr005', 'wr005_1.jpg', 'wr005_2.jpg', 'wr005_3.jpg', 'wr005_4.jpg'),
(18, 'wr006', 'wr006_1.jpg', 'wr006_2.jpg', 'wr006_3.jpg', 'wr006_4.jpg'),
(19, 'wr007', 'wr007_1.jpg', 'wr007_2.jpg', 'wr007_3.jpg', 'wr007_4.jpg'),
(20, 'wr008', 'wr008_1.jpg', 'wr008_2.jpg', 'wr008_3.jpg', 'wr008_4.jpg'),
(21, 'wr009', 'wr009_1.jpg', 'wr009_2.jpg', 'wr009_3.jpg', 'wr009_4.jpg'),
(22, 'wr010', 'wr010_1.jpg', 'wr010_2.jpg', 'wr010_3.jpg', 'wr010_4.jpg'),
(23, 'wr011', 'wr011_1.jpg', 'wr011_2.jpg', 'wr011_3.jpg', 'wr011_4.jpg'),
(24, 'wr012', 'wr012_1.jpg', 'wr012_2.jpg', 'wr012_3.jpg', 'wr012_4.jpg'),
(25, 'ks001', 'ks001_1.jpg', 'ks001_2.jpg', 'ks001_3.jpg', 'ks001_4.jpg'),
(26, 'ks002', 'ks002_1.jpg', 'ks002_2.jpg', 'ks002_3.jpg', 'ks002_4.jpg'),
(27, 'ks003', 'ks003_1.jpg', 'ks003_2.jpg', 'ks003_3.jpg', 'ks003_4.jpg'),
(28, 'ks004', 'ks004_1.jpg', 'ks004_2.jpg', 'ks004_3.jpg', 'ks004_4.jpg'),
(29, 'ks005', 'ks005_1.jpg', 'ks005_2.jpg', 'ks005_3.jpg', 'ks005_4.jpg'),
(30, 'ks006', 'ks006_1.jpg', 'ks006_2.jpg', 'ks006_3.jpg', 'ks006_4.jpg'),
(31, 'ks007', 'ks007_1.jpg', 'ks007_2.jpg', 'ks007_3.jpg', 'ks007_4.jpg'),
(32, 'ks008', 'ks008_1.jpg', 'ks008_2.jpg', 'ks008_3.jpg', 'ks008_4.jpg'),
(33, 'ks009', 'ks009_1.jpg', 'ks009_2.jpg', 'ks009_3.jpg', 'ks009_4.jpg'),
(34, 'ks010', 'ks010_1.jpg', 'ks010_2.jpg', 'ks010_3.jpg', 'ks010_4.jpg'),
(35, 'ks011', 'ks011_1.jpg', 'ks011_2.jpg', 'ks011_3.jpg', 'ks011_4.jpg'),
(36, 'ks012', 'ks012_1.jpg', 'ks012_2.jpg', 'ks012_3.jpg', 'ks012_4.jpg'),
(37, 'tp001', 'tp001_1.jpg', 'tp001_2.jpg', 'tp001_3.jpg', 'tp001_4.jpg'),
(38, 'tp002', 'tp002_1.jpg', 'tp002_2.jpg', 'tp002_3.jpg', 'tp002_4.jpg'),
(39, 'tp003', 'tp003_1.jpg', 'tp003_2.jpg', 'tp003_3.jpg', 'tp003_4.jpg'),
(40, 'tp004', 'tp004_1.jpg', 'tp004_2.jpg', 'tp004_3.jpg', 'tp004_4.jpg'),
(41, 'tp005', 'tp005_1.jpg', 'tp005_2.jpg', 'tp005_3.jpg', 'tp005_4.jpg'),
(42, 'tp006', 'tp006_1.jpg', 'tp006_2.jpg', 'tp006_3.jpg', 'tp006_4.jpg'),
(43, 'tp007', 'tp007_1.jpg', 'tp007_2.jpg', 'tp007_3.jpg', 'tp007_4.jpg'),
(44, 'tp008', 'tp008_1.jpg', 'tp008_2.jpg', 'tp008_3.jpg', 'tp008_4.jpg'),
(45, 'tp009', 'tp009_1.jpg', 'tp009_2.jpg', 'tp009_3.jpg', 'tp009_4.jpg'),
(46, 'tp010', 'tp010_1.jpg', 'tp010_2.jpg', 'tp010_3.jpg', 'tp010_4.jpg'),
(47, 'tp011', 'tp011_1.jpg', 'tp011_2.jpg', 'tp011_3.jpg', 'tp011_4.jpg'),
(48, 'tp012', 'tp012_1.jpg', 'tp012_2.jpg', 'tp012_3.jpg', 'tp012_4.jpg'),
(49, 'jt001', 'jt001_1.jpg', 'jt001_2.jpg', 'jt001_3.jpg', 'jt001_4.jpg'),
(50, 'jt002', 'jt002_1.jpg', 'jt002_2.jpg', 'jt002_3.jpg', 'jt002_4.jpg'),
(51, 'jt003', 'jt003_1.jpg', 'jt003_2.jpg', 'jt003_3.jpg', 'jt003_4.jpg'),
(52, 'jt004', 'jt004_1.jpg', 'jt004_2.jpg', 'jt004_3.jpg', 'jt004_4.jpg'),
(53, 'jt005', 'jt005_1.jpg', 'jt005_2.jpg', 'jt005_3.jpg', 'jt005_4.jpg'),
(54, 'jt006', 'jt006_1.jpg', 'jt006_2.jpg', 'jt006_3.jpg', 'jt006_4.jpg'),
(55, 'jt007', 'jt007_1.jpg', 'jt007_2.jpg', 'jt007_3.jpg', 'jt007_4.jpg'),
(56, 'jt008', 'jt008_1.jpg', 'jt008_2.jpg', 'jt008_3.jpg', 'jt008_4.jpg'),
(57, 'jt009', 'jt009_1.jpg', 'jt009_2.jpg', 'jt009_3.jpg', 'jt009_4.jpg'),
(58, 'jt010', 'jt010_1.jpg', 'jt010_2.jpg', 'jt010_3.jpg', 'jt010_4.jpg'),
(59, 'jt011', 'jt011_1.jpg', 'jt011_2.jpg', 'jt011_3.jpg', 'jt011_4.jpg'),
(60, 'jt012', 'jt012_1.jpg', 'jt012_2.jpg', 'jt012_3.jpg', 'jt012_4.jpg'),
(61, 'cr001', 'cr001_1.jpg', 'cr001_2.jpg', 'cr001_3.jpg', 'cr001_4.jpg'),
(62, 'cr002', 'cr002_1.jpg', 'cr002_2.jpg', 'cr002_3.jpg', 'cr002_4.jpg'),
(63, 'cr003', 'cr003_1.jpg', 'cr003_2.jpg', 'cr003_3.jpg', 'cr003_4.jpg'),
(64, 'cr004', 'cr004_1.jpg', 'cr004_2.jpg', 'cr004_3.jpg', 'cr004_4.jpg'),
(65, 'cr005', 'cr005_1.jpg', 'cr005_2.jpg', 'cr005_3.jpg', 'cr005_4.jpg'),
(66, 'cr006', 'cr006_1.jpg', 'cr006_2.jpg', 'cr006_3.jpg', 'cr006_4.jpg'),
(67, 'cr007', 'cr007_1.jpg', 'cr007_2.jpg', 'cr007_3.jpg', 'cr007_4.jpg'),
(68, 'cr008', 'cr008_1.jpg', 'cr008_2.jpg', 'cr008_3.jpg', 'cr008_4.jpg'),
(69, 'cr009', 'cr009_1.jpg', 'cr009_2.jpg', 'cr009_3.jpg', 'cr009_4.jpg'),
(70, 'cr010', 'cr010_1.jpg', 'cr010_2.jpg', 'cr010_3.jpg', 'cr010_4.jpg'),
(71, 'cr011', 'cr011_1.jpg', 'cr011_2.jpg', 'cr011_3.jpg', 'cr011_4.jpg'),
(72, 'cr012', 'cr012_1.jpg', 'cr012_2.jpg', 'cr012_3.jpg', 'cr012_4.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
