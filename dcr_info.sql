-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 04 déc. 2018 à 09:36
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dcr_info`
--

-- --------------------------------------------------------

--
-- Structure de la table `anomalie_tripratik`
--

CREATE TABLE `anomalie_tripratik` (
  `id` int(11) NOT NULL,
  `Dates` date NOT NULL,
  `Commune` text COLLATE utf8_bin NOT NULL,
  `Adresse` text COLLATE utf8_bin NOT NULL,
  `OM` text COLLATE utf8_bin NOT NULL,
  `CS` text COLLATE utf8_bin NOT NULL,
  `BIO` text COLLATE utf8_bin NOT NULL,
  `OM_WEB` text COLLATE utf8_bin NOT NULL,
  `CS_WEB` text COLLATE utf8_bin NOT NULL,
  `BIO_WEB` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `anomalie_tripratik`
--

INSERT INTO `anomalie_tripratik` (`id`, `Dates`, `Commune`, `Adresse`, `OM`, `CS`, `BIO`, `OM_WEB`, `CS_WEB`, `BIO_WEB`) VALUES
(1, '2018-12-04', 'LE HAVRE', '92 RUE JEAN WEBER', 'OUI', 'OUI', 'OUI', 'OUI', 'OUI', 'OUI');

-- --------------------------------------------------------

--
-- Structure de la table `azerty`
--

CREATE TABLE `azerty` (
  `id` int(11) NOT NULL,
  `datess` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `azerty`
--

INSERT INTO `azerty` (`id`, `datess`) VALUES
(1, '0000-00-00'),
(2, '0000-00-00'),
(3, '0000-00-00'),
(4, '0000-00-00'),
(5, '0000-00-00'),
(6, '0000-00-00'),
(7, '0000-00-00'),
(8, '2018-10-03'),
(9, '2018-10-03'),
(10, '2018-10-10');

-- --------------------------------------------------------

--
-- Structure de la table `bom`
--

CREATE TABLE `bom` (
  `id` int(11) NOT NULL,
  `codification` text COLLATE utf8_bin NOT NULL,
  `immatriculation` text COLLATE utf8_bin NOT NULL,
  `chassis_equip` text COLLATE utf8_bin NOT NULL,
  `secteur` text COLLATE utf8_bin NOT NULL,
  `cubage` text COLLATE utf8_bin NOT NULL,
  `type_benne` text COLLATE utf8_bin NOT NULL,
  `num_benne` text COLLATE utf8_bin NOT NULL,
  `Chassis` text COLLATE utf8_bin NOT NULL,
  `PF` text COLLATE utf8_bin NOT NULL,
  `MEC` text COLLATE utf8_bin NOT NULL,
  `BOM_remplacer` text COLLATE utf8_bin NOT NULL,
  `PTAC` text COLLATE utf8_bin NOT NULL,
  `PV` text COLLATE utf8_bin NOT NULL,
  `CU` text COLLATE utf8_bin NOT NULL,
  `CU_reel` text COLLATE utf8_bin NOT NULL,
  `Empattement` text COLLATE utf8_bin NOT NULL,
  `LONGEUR` text COLLATE utf8_bin NOT NULL,
  `longu` text COLLATE utf8_bin NOT NULL,
  `larg_retro` text COLLATE utf8_bin NOT NULL,
  `haut_ech` text COLLATE utf8_bin NOT NULL,
  `Type` text COLLATE utf8_bin NOT NULL,
  `N_BASC` text COLLATE utf8_bin NOT NULL,
  `marque_LC` text COLLATE utf8_bin NOT NULL,
  `Pesee` text COLLATE utf8_bin NOT NULL,
  `RFID` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `bom`
--

INSERT INTO `bom` (`id`, `codification`, `immatriculation`, `chassis_equip`, `secteur`, `cubage`, `type_benne`, `num_benne`, `Chassis`, `PF`, `MEC`, `BOM_remplacer`, `PTAC`, `PV`, `CU`, `CU_reel`, `Empattement`, `LONGEUR`, `longu`, `larg_retro`, `haut_ech`, `Type`, `N_BASC`, `marque_LC`, `Pesee`, `RFID`) VALUES
(1, 'N212', '9494YB', 'MULTICAR-PB', 'ROT', '4M3', '?', '', '26231AHK26', '9CV', '14/12/05', '', '3500', '2700', '800', '', '2100', '4950', '1590', '2830', 'MP', '', 'LABOR HAKO', '9361', 'non', 'non'),
(2, 'N221', '7808 ZW', 'RENAULT-PB', 'SAT', '4,5M3', 'M50TB', '38111', 'MAXITY', '8CV', '01/02/08', 'N180', '4500', '2880', '1620', '', '2500', '4860', '1850', '2710', 'SAD-MP', '', 'PB', '9484', 'non', 'non'),
(3, 'N222', '7793 ZX', 'RENAULT-MANJOT GRUE', 'PAV', '', '', '', 'PR280-26', '19CV', '20/02/08', 'CS82', '26000', '16910', '9090', '', '', '9640', '2520', '3900', '', '', '', '9763', 'oui', 'non'),
(4, 'N227', 'BD 835 GY', 'RENAULT-OMB', 'D4', '20M3', 'C337', '14581', 'PR280-26', '19CV', '06/10/08', 'N193', '25500', '14180', '11320', '', '', '9400', '2500', '3750', 'TCH-OEL', '806200645', '\"\"\"semi auto\"\"\"', '9363', 'oui', 'oui'),
(5, 'N228', '938 AEX 76', 'RENAULT-OMB', 'ROT', '14M3', 'C333', '', 'PR280-19', '19CV', '21/10/08', 'N192', '19000', '12380', '6620', '', '', '', '2500', '3650', 'TCA-DEL', '', '', '9128', 'oui', 'oui'),
(6, 'N229', '947 AEX', 'RENAULT-OMB', 'ROT', '8M3', 'C112', '', 'MIDLUM 240-12', '13CV', '21/10/08', 'N190', '11990', '8320', '3670', '', '3070', '7050', '2280', '3650', 'LC maxi', '', 'OMB LC maxi', '9330', 'oui', 'oui'),
(7, 'N230', '160 AFD', 'RENAULT-MANJOT GRUE', 'PAV', '18M3', '', '', 'PR280-26', '19CV', '29/10/08', '', '26000', '16910', '9090', '', '', '', '2500', '3890', '', '', '', '8155', 'oui', 'non'),
(8, 'N231', 'AW-705-DJ', 'RENAULT PB', 'PAV', '4,5', '?', '', 'MAXITY', '10CV', '02/07/10', 'N198', '3500', '2455', '1045', '', '2450', '4960', '1850', '2400', 'PB', '', '', '9785', 'non', 'non'),
(9, 'N232', 'BA-649-XD', 'IVECO-SEMAT', 'D1', '20M3', 'C338.06', '141553', 'STRALIS 310 E5', '16CV', '30/09/10', 'N195', '26000', '14500', '11500', '', 'F=3800 F\'1395', '9330', '2500', '3600', 'TCH-OEL TMID TMDM', '1009100538', '\"TERBERG \"\"RFID\"\"\"', '9264', 'oui', 'oui'),
(10, 'N233', 'BB-073-KY', 'IVECO-SEMAT', 'ROT', '14M3', 'C225', '141509', 'EUROCARGO 190-EL-30', '16CV', '12/10/10', 'N199', '18600', '11580', '7020', '', '3690', '8040', '2390', '3540', 'TCH-OEL', '141509', '\"TERBERG \"\"manuel\"\"\"', '4118', 'oui', 'oui'),
(11, 'N234', 'BB-487-KY', 'IVECO-SEMAT', 'B3', '14M3', 'C225', '141543', 'EUROCARGO 190-EL-30', '16CV', '12/10/10', '', '18500', '11580', '6920', '', '3690', '8043', '2390', '3380', 'TCA-DEL', '141543', '\"TERBERG \"\"semi auto\"\"\"', '9253', 'oui', 'oui'),
(12, 'N235', 'BD-689-BZ', 'IVECO-SEMAT', 'ROT', '20M3', 'C338.06', '', 'STRALIS 310 E5', '21CV', '15/11/10', '', '26000', '14360', '11640', '', 'F=5195 F\' 3800', '9390', '2500', '3720', 'LC maxi 33', '3144', 'SEMAT', '9337', 'oui', 'oui'),
(13, 'N236', 'BD-260-LX', 'IVECO-SEMAT', 'SAT', '20M3', 'C338.06', '141582', 'STRALIS 310 E5', '21CV', '22/11/10', '', '26000', '14360', '11640', '', 'F=5195 F\' 3800', '9390', '2500', '3720', 'LC maxi 33', '', 'SEMAT', '9406', 'oui', 'oui'),
(14, 'N237', 'BE-554-JP', 'IVECO-SEMAT', 'ROT', '12M3', 'C214.06', '141628', 'EUROCARGO 160E28', '16CV', '08/12/10', 'N200', '16000', '9960', '6040', '', '3690', '7760', '2360', '3350', 'TCH-OEL', '1004280392', '\"TERBERG \"\"manuel\"\"\"', '9370', 'oui', 'oui'),
(15, 'N238', 'BE-680-ND', 'IVECO-SEMAT', 'D2', '14M3', 'C225.06', '141620', 'EUROCARGO 190-EL-30', '16CV', '10/12/10', 'N202', '18600', '11580', '7020', '', '3690', '8040', '2390', '3400', 'TCH-OEL I-M', '1009030537', '\"TERBERG \"\"RFID\"\"\"', '9651', 'oui', 'oui'),
(16, 'N239', 'BK-807-KG', 'PIAGGIO', 'COUR', '3,5M3', '?', '', 'PORTER TIPPER', '7CV', '16/03/11', '', '2200', '1416', '784', '', '2180', '3700', '1460', '2200', '', '', '', '4212', 'non', 'non'),
(17, 'N240', 'BK-795-KG', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER TIPPER', '7CV', '16/03/11', '', '2200', '1416', '784', '', '2180', '4100', '1560', '2200', '', '', '', '9082', 'non', 'non'),
(18, 'N241', 'BL-909-MY', 'IVECO-SEMAT', 'C4', '12M3', 'C214.06', '141490', 'EUROCARGO 160E28', '16CV', '05/04/11', 'N196', '16000', '10035', '5965', '', '3690', '8043', '2390', '3350', 'TCH-OEL I-TM', '1005070394', '\"TERBERG \"\"manuel\"\"\"', '3895', 'oui', 'oui'),
(19, 'N242', 'CH-437-NX', 'IVECO-SEMAT', 'A1', '20M3', 'C338.06', '142358', 'STRALIS 310 E5', '21CV', '11/07/12', '', '26000', '14920', '11080', '', 'F=3800 F\'1395', '9730', '2500', '3750', '', '1204060365', '\"TERBERG RFID \"\"automatique\"\"\"', '4034', 'oui', 'oui'),
(20, 'N243', 'CH-590-MX', 'IVECO-SEMAT', 'A2', '14M3', 'C225.06', '142378', 'EUROCARGO 160E28', '16CV', '10/07/12', '', '18600', '12020', '6580', '', '4180', '8050', '2420', '3650', '', '1204060367', '\"TERBERG RFID \"\" manuel\"\"\"', '4036', 'oui', 'oui'),
(21, 'N244', 'CH-729-NX', 'IVECO-SEMAT', 'B1', '14M3', 'C225.06', '142388', 'EUROCARGO 160E28', '16CV', '11/07/12', '', '18500', '12340', '6160', '', '4180', '8410', '2420', '3800', '', '1204060364', '\"TERBERG RFID \"\"automatique\"\"\"', '', 'oui', 'oui'),
(22, 'N245', 'CK-733-GE', 'PIAGGIO', 'SAT 1', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', '2200', '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '3207', 'non', 'non'),
(23, 'N246', 'CK-749-GE', 'PIAGGIO', 'SAT 2', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', '2200', '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '8185', 'non', 'non'),
(24, 'N248', 'CK-713-GE', 'PIAGGIO', 'ROT', '3,5M2', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', '2200', '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '8495', 'non', 'non'),
(25, 'N247', 'CK-246-LE', 'PIAGGIO', 'SAT 3', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '06/09/12', '', '2200', '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '8486', 'non', 'non'),
(26, 'N249', 'CK-769-GE', 'PIAGGIO', 'CS PAP', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', '2200', '1500', '700', '', '2180', '4300', '1560', '2200', '', '', '', '9428', 'non', 'non'),
(27, 'N250', 'CP-842-KF', 'IVECO-SEMAT', 'A3', '10M3', 'C222.05', '14253', 'EUROCARGO 160E25', '16CV', '31/12/12', 'N220', '15400', '10040', '5360', '', '3105', '7250', '2360', '3400', 'TCH-OEL I- TM', '1207060754', '\"TERBERG RFID \"\"manuel\"\"\"', '4086', 'oui', 'oui'),
(28, 'N251', 'CQ-623-LB', 'IVECO-PB', 'C5', '7M3', '?', '1537', 'EUROCARGO 90E22', '16CV', '04/02/13', '', '9000', '5450', '3550', '', '3105', '6170', '2200', '2700', 'PB', '', '', '3767', 'oui', 'oui'),
(29, 'N252', 'CT-822-VK', 'IVECO-SEMAT', 'D5', '14M3', 'C225', '142799', 'EUROCARGO ML190', '16CV', '16/05/13', '', '18500', '12280', '6220', '', '3800', '8390', '2420', '', 'TCA-DEL-TDMI-DM', '1211301090', 'TERBERG OMNIDEL', '20121709', 'oui', 'oui'),
(30, 'N253', 'CT-034-VL', 'IVECO-SEMAT', 'B2', '14M3', 'C225', '142812', 'EUROCARGO ML190', '16CV', '16/05/13', '', '18500', '12280', '6220', '', '3800', '8390', '2420', '', 'TCA-DEL-TDMI-DM', '1211301091', 'TERBERG OMNIDEL', '20121711', 'oui', 'oui'),
(31, 'N254', 'CT-293-VL', 'IVECO-SEMAT', 'ROT', '14M3', 'C225', '', 'EUROCARGO ML190', '16CV', '16/05/13', '', '18500', '12280', '6220', '', '3800', '8390', '2420', '3600', 'THC-OEL I-TM', '', '\"TERBERG \"\"manuel\"\"\"', '4110', 'oui', 'oui'),
(32, 'N255', 'CV-259-KT', 'IVECO-SEMAT', 'C1', '20M3', 'C338', '142786', 'STRALIS 310 E5', '21CV', '04/06/13', '', '26000', '14800', '11200', '', 'F=3805 F\' 1395', '9710', '2500', '', 'TCA-DEL-TDMI-DM', '1211231089', 'TERBERG OMNIDEL', '4001', 'oui', 'oui'),
(33, 'N256', 'CV-993-KS', 'IVECO-SEMAT', 'B1/C3', '20M3', 'C338', '142756', 'STRALIS 310 E5', '21CV', '04/06/13', '', '26000', '14800', '11200', '', 'F=3805 F\' 1395', '9710', '2500', '', 'TCA-DEL-TDMI-DM', '1211231088', 'TERBERG OMNIDEL', '20121719', 'oui', 'oui'),
(34, 'N257', 'DD-819-MA', 'IVECO-SEMAT', 'C2', '20M3', 'C338', '143121', 'STRALIS 310 E6', '21CV', '27/02/14', 'N218', '26000', '15000', '11000', '', 'F=3805 F\' 1395', '9660', '2500', '3600', 'TCA-DEL-TDMI-DM', '1310110993', 'TERBERG OMNIDEL', '9058', 'oui', 'oui'),
(35, 'N258', 'DD-780-MA', 'IVECO-SEMAT', 'D3', '14M3', 'C225', '143119', 'EUROCARGO ML190', '16CV', '27/02/14', 'N219', '18500', '12280', '6220', '', '3805', '8400', '2420', '3700', 'TCA-DEL-TDMI-DM', '1310180994', 'TERBERG OMNIDEL', '9241', 'oui', 'oui'),
(36, 'N259', 'DD-799-MA', 'IVECO-SEMAT', 'B4', '14M3', 'C225', '143088', 'EUROCARGO ML190', '16CV', '27/02/14', 'N223', '18500', '12280', '6220', '', '3805', '8400', '2420', '3700', 'TCA-DEL-TDMI-DM', '1310110992', 'TERBERG OMNIDEL', '9540', 'oui', 'oui'),
(37, 'N260', 'DD-836-MA', 'IVECO-SEMAT', 'A1', '20M3', 'C338', '143028', 'STRALIS 310 E5', '21CV', '27/02/14', 'N224', '26000', '15000', '11000', '', 'F=3805 F\' 1395', '9660', '2500', '3600', 'TCA-DEL-TDMI-DM', '1310180995', 'TERBERG OMNIDEL', '9805', 'oui', 'oui'),
(38, 'N261', 'DE-169-AZ', 'IVECO-MANJOT GRUE', '', '18M3', '', '', '', '21CV', '19/03/14', '', '2600', '', '', '', '', '', '', '', '', '', '', '9736', '', ''),
(39, 'N262', 'DH-622-PB', 'IVECO-ZOELLER', 'C5', '8M3', '', '', '', '16CV', '11/07/14', 'N220', '11990', '7140', '4850', '4300', '3300', '7100', '2200', '2800', 'ZOELLER', '', 'LIFTER 202', '4149', 'oui', ''),
(40, 'N263', 'DN-896-XY', 'PIAGGIO', 'CS06', '3,5M3', '?', '', 'PORTER MAXXI', '7CV', '10/02/15', '', '2200', '1405', '795', '', '2180', '4100', '1500', '', 'CONCEPT COLLECTI', '', '', '4170', 'non', 'non'),
(41, 'N264', 'DN-711-XY', 'PIAGGIO', 'S2', '3,5 M3', '?', '', 'PORTER MAXXI', '7CV', '10/02/15', '', '2200', '1405', '795', '', '2180', '4100', '1500', '', 'CONCEPT COLLECTI', '', '', '4171', 'non', 'non'),
(42, 'N265', 'DT-706-NW', 'IVECO-SEMAT', 'D4', '20M3', 'C338', '143804', 'STRALIS 310 E6', '23CV', '24/07/15', '', '26000', '15050', '10950', '', '', '9700', '2500', '3600', 'TCA-DEL-TDMI-DM', '1505080347', 'TERBERG OMNIDEL', '4195', 'oui', 'oui'),
(43, 'N266', 'DW-906-JF', 'IVECO-SEMAT', 'B3', '14M3', 'C224,06', '143857', 'EUROCARGO 190-EL-30', '18CV', '07/10/15', '', '18700', '12020', '6680', '', '', '8200', '2380', '3600', 'TCA-DEL-TDMI-DM', '', '', '3040', 'oui', 'oui'),
(44, 'N267', 'DW-773-MR', 'IVECO-SEMAT', 'D2', '14M3', 'C224,06', '143865', 'EUROCARGO 190-EL-30', '18CV', '13/10/15', '', '18700', '12020', '6680', '', '3690', '8200', '238', '3600', 'TCA-DEL-TDMI-DM', '1506260624', '', '', 'oui', 'oui'),
(45, 'N268', 'DW-893-JE', 'IVECO-SEMAT', 'D1', '20M3', ' ', '', 'STRALIS 310 E6', '23CV', '07/10/15', '', '26000', '15050', '10950', '', '', '9700', '2500', '', 'TCA-DEL3-TDMI-DM', '1505080348', '', '3936', 'oui', 'oui'),
(46, 'N269', 'DW-178-JG', 'IVECO-SEMAT', 'ROT', '14M3', '', '', 'EUROCARGO 190-EL-30', '18CV', '07/10/15', '', '19000', '11785', '7215', '', '', '', '', '', 'THC-OEL I-TM', '', '\"TERBERG \"\"manuel\"\"\"', '3795', 'oui', 'oui'),
(47, 'N270', 'DW-913-JC', 'IVECO-ZOELLER', 'ROT', '8M3', 'XL8', '35193', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', '11990', '7100', '4890', '', '3330', '7100', '2270', '2800', 'ZOELLER', '', 'LIFTER 202', '8442', 'oui', 'oui'),
(48, 'N271', 'DW-162-ZA', 'IVECO-ZOELLER', 'CSPAP', '8M3', 'XL8', '35200', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', '11990', '7100', '4890', '', '3330', '7100', '2270', '2800', 'ZOELLER', '', 'LIFTER 202', '4214', 'oui', 'oui'),
(49, 'N272', 'DW-911-YZ', 'IVECO-ZOELLER', 'A3', '8M3', 'XL8', '35199', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', '11990', '7100', '4890', '', '3330', '7100', '2270', '2800', 'ZOELLER', '', 'LIFTER 202', '4215', 'oui', 'oui'),
(50, 'N273', 'EE-940-QG', 'IVECO-ZOELLER', 'A2', '14M3', 'C224,06', '144276', 'EUROCARGO 190-EL-30', '18CV', '17/08/16', '', '18700', '11860', '6840', '', '', '8290', '2430', '3650', 'TCA-DEL-TDMI-DM', '1603180295', 'TERBERG OMNIDEL', '8607', 'oui', 'oui'),
(51, 'N274', 'EF-879-WW', 'IRIDE', 'D6OM', '5M3', 'VRR', '', 'RENAULT MAXITY', '7CV', '07/10/16', 'N221', '4500', '3140', '1360', '', '2500', '5140', '1930', '2500', '', '', '', '18758', 'non', 'non'),
(52, 'N275', 'EJ-003-WY', 'IVECO-ZOELLER', 'B1/C3', '14M3', 'C224,06', '144453', 'EUROCARGO 190-EL-28P', '18CV', '07/02/17', 'N244', '18550', '12080', '6470', '', '3700', '8270', '2400', '', 'TCA-DEL3-TDMI-DM', '160905000873', 'TERBERG OMNIDEL', '41590', 'oui', 'oui'),
(53, 'N276', 'EQ-667-CV', 'IVECO-ZOELLER', 'C4', '8M3', 'MICROPAC8', '35272', 'EUROCARGO 120-EL-10', '12CV', '30/08/17', 'N237', '11990', '7140', '4850', '', '', '7280', '2300', '2995', 'ZOELLER', '', 'LIFTER 202', '', 'oui', 'oui'),
(54, 'N277', 'ES-056-GY', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER MULTITECH E6', '7CV', '28/11/17', 'N239', '2200', '1448', '752', '', '2180', '4300', '1560', '', 'CONCEPT COLLECTI', '', '', '8080', 'non', 'non,'),
(55, 'N278', 'ET-851-HX', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER  MUL TITECHE6', '7CV', '12/01/18', 'N240', '2200', '1448', '752', '', '2180', '4300', '1560', '', 'CONCEPT COLLECTI', '', '', '4233', 'non', 'non'),
(56, 'N283', 'EV-898-BM', 'IVECO-SEMAT', 'A1', '20M3', '?', '?', '?', '?', '?', 'N242', '14980', '26000', '11020', '', '', '', '', '', 'TCA-DEL3-TDMI-DM', '', 'TERBERG OMNIDEL', '9621', 'oui', 'non'),
(57, 'N284', 'EV-001-BY', 'IVECO-SEMAT', 'D5', '14M3', 'C224', '144958', 'EUROCARGO 190-280L', '18CV', '16/02/18', 'N252', '18550', '11900', '6650', '', '3800', '', '', '3600', 'TCA-DEL3-TDMI-DM', '', 'TERBERG OMNIDEL', '8420', 'oui', 'non'),
(58, 'N285', 'EV-092-LZ', 'IVECO-ZOELLER', '?', '8M3', 'C224', '35291', 'EUROCARGO 120-EL-10', '12CV', '05/03/18', '', '11990', '7045', '4945', '', '', '7280', '2250', '2800', 'ZOELLER', '', 'LIFTER 202', '8430', 'oui', 'non');

-- --------------------------------------------------------

--
-- Structure de la table `boms`
--

CREATE TABLE `boms` (
  `COL 1` varchar(7) DEFAULT NULL,
  `COL2` varchar(4) DEFAULT NULL,
  `COL3` varchar(5) DEFAULT NULL,
  `COL4` varchar(12) DEFAULT NULL,
  `COL5` varchar(10) DEFAULT NULL,
  `COL 6` varchar(13) DEFAULT NULL,
  `COL 7` varchar(7) DEFAULT NULL,
  `COL 8` varchar(5) DEFAULT NULL,
  `COL 9` varchar(5) DEFAULT NULL,
  `COL 10` varchar(13) DEFAULT NULL,
  `COL 11` varchar(11) DEFAULT NULL,
  `COL 12` varchar(14) DEFAULT NULL,
  `COL 13` varchar(18) DEFAULT NULL,
  `COL 14` varchar(14) DEFAULT NULL,
  `COL 15` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `boms`
--

INSERT INTO `boms` (`COL 1`, `COL2`, `COL3`, `COL4`, `COL5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`) VALUES
('', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('DATE', 'CODE', 'VOL.', 'HEURE DEPART', 'KMS DEPART', 'CONDUCTEURS', 'SECTEUR', 'CODE2', 'VOL.2', 'HEURE ARRIVEE', 'KMS ARRIVEE', 'OBSERVATIONS', 'ANOMALIES / PANNES', 'CONSTATEES PAR', ''),
('01-août', 'N285', '8m?', '', '2025', '', '', '', '', '', '2025', '', '', '', ''),
('01-août', 'N284', '14m?', 'P', '6652', '', '', 'N233', '14m?', '', '6652', '', '', '', ''),
('01-août', 'N283', '20m?', '05:10', '6112', 'TACHEFINE A', 'A1', '', '', '08:45', '6162', '', '', '', ''),
('01-août', 'N278', '3,5m?', '', '7545', '', '', '', '', '', '7545', '', '', '', ''),
('01-août', 'N277', '3,5m?', 'p', '8612', '', '', '', '', '', '8612', '', '', '', ''),
('01-août', 'N276', '8m?', '05:05', '12627', 'HEBERT L', 'C4', '', '', '09:40', '12682', '', '', '', ''),
('01-août', 'N275', '14m?', '05:00', '22640', 'LOISEL E', 'B1', '', '', '09:15', '22708', '', '', '', ''),
('01-août', 'N274', '5m?', '', '10735', '', '', '', '', '', '10735', '', '', '', ''),
('01-août', 'N273', '14m?', 'p', '33198', '', '', 'N252', '14m?', '', '33198', '', '', '', ''),
('01-août', 'N272', '8m?', '05:15', '23180', 'HERVALET J', 'A3', '', '', '09:25', '23218', '', '', '', ''),
('01-août', 'N271', '8m?', '', '26375', '', '', '', '', '', '26375', '', '', '', ''),
('01-août', 'N270', '8m?', '05:30', '19251', 'EL BOUROUMI B', 'DIVERS', '', '', '08:20', '19301', '', '', '', ''),
('01-août', 'N269', '14m?', '05:10', '29497', 'LAMBOLEY B', 'C3', '', '', '08:45', '29537', '', '', '', ''),
('01-août', 'N268', '20m?', '05:20', '30519', 'LEDOUX G', 'D1', '', '', '09:35', '30563', '', '', '', ''),
('01-août', 'N267', '14m?', '05:00', '37934', 'CHAUVIN F', 'D2', '', '', '08:50', '37970', '', '', '', ''),
('01-août', 'N266', '14m?', '05:00', '41563', 'VERGÉ-DÉPRÉ J', 'B3', '', '', '08:30', '41609', '', '', '', ''),
('01-août', 'N265', '20m?', '05:20', '29864', 'RIBERO P', 'D4', '', '', '09:40', '29907', '', '', '', ''),
('01-août', 'N264', '3,5m?', '05:10', '48493', 'TACHEFINE H', 'S2', '', '', '09:15', '48536', '', '', '', ''),
('01-août', 'N263', '3,5m?', '05:20', '50848', 'DERRAZ A', 'SUP 2', '', '', '09:30', '50907', '', '', '', ''),
('01-août', 'N262', '8m?', '05:15', '48377', 'POUPEL P', 'C5', '', '', '10:20', '48430', '', '', '', ''),
('01-août', 'N260', '20m?', '05:05', '52778', 'LEFRANCOIS S', 'A4', '', '', '08:40', '52823', '', '.', '', ''),
('01-août', 'N259', '14m?', '05:10', '69736', 'COTÉ C', 'D3', '', '', '08:25', '69769', '', '', '', ''),
('01-août', 'N258', '14m?', 'P', '77219', '', '', 'N244', '14m?', '', '77219', '', '', '', ''),
('01-août', 'N257', '20m?', '05:10', '65740', 'BELLET G', 'C2', '', '', '10:10', '65808', '', '', '', ''),
('01-août', 'N256', '20m?', '', '59078', '', '', '', '', '', '59078', '', '', '', ''),
('01-août', 'N255', '20m?', '05:10', '62128', 'JEANNE D', 'C1', '', '', '09:30', '62189', '', '', '', ''),
('01-août', 'N254', '14m?', '', '80897', '', '', '', '', '', '80897', '', '', '', ''),
('01-août', 'N253', '14m?', '05:20', '98826', 'ANSQUER Y', 'COUR', '', '', '09:15', '98879', '', '', '', ''),
('01-août', 'N252', '14m?', '05:10', '78524', 'LORAY N', 'A2', '', '', '08:25', '78565', '', '', '', ''),
('01-août', 'N251', '7m?', '', '22615', '', '', '', '', '', '22615', '', '', '', ''),
('01-août', 'N250', '10m?', '05:20', '64859', 'SENASNI F', 'SUP 1', '', '', '08:30', '64898', '', '', '', ''),
('01-août', 'N249', '3,5m?', '05:20', '2829', 'MEREAU A', 'S1', '', '', '09:40', '2875', 'panne', '', '', ''),
('01-août', 'N248', '3,5m?', '05:15', '37452', 'HAUGUEL S', 'SUP 3', '', '', '09:30', '37519', '', '', '', ''),
('01-août', 'N247', '3,5m?', 'p', '57193', '', '', '', '', '', '57193', '', '', '', ''),
('01-août', 'N245', '3,5m?', '05:20', '23417', 'LEMERY L', 'S3', '', '', '09:15', '23463', '', '', '', ''),
('01-août', 'N244', '14m?', '05:10', '90020', 'DEBAIN A', 'B4', '', '', '09:10', '90063', '', '', '', ''),
('01-août', 'N243', '14m?', '05:15', '92745', 'DONO C', 'D6', '', '', '10:05', '92784', '', '', '', ''),
('01-août', 'N242', '20m?', '09:00', '76901', 'VASSEUR F', 'ESSAI', '', '', '10:20', '76935', 'PASSAGE DE RUE', '', '', ''),
('01-août', 'N236', '20m?', '05:25', '96869', 'CHAIF F', 'REC', '', '', '10:00', '96900', '', '', '', ''),
('01-août', 'N235', '20m?', '', '41271', '', '', '', '', '', '41271', '', '', '', ''),
('01-août', 'N233', '14m?', '05:05', '92284', 'COTE J', 'D5', '', '', '09:20', '92330', '', '', '', ''),
('01-août', 'N232', '20m?', 'p', '72258', '', '', '', '', '', '72258', '', '', '', ''),
('01-août', 'N231', '4,5m?', '05:10', '160033', 'LEMARCIS P', 'PAV', '', '', '10:35', '160125', '', '', '', ''),
('01-août', 'N221', '4,5m?', '', '84602', '', '', '', '', '', '84602', '', '', '', ''),
('01-août', 'N212', '4m?', 'p', '85114', '', '', '', '', '', '85114', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `bomss`
--

CREATE TABLE `bomss` (
  `codification` text COLLATE utf8_bin NOT NULL,
  `kmd` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `bomss`
--

INSERT INTO `bomss` (`codification`, `kmd`) VALUES
('N285', '1361561');

-- --------------------------------------------------------

--
-- Structure de la table `carte_sims`
--

CREATE TABLE `carte_sims` (
  `id` int(11) NOT NULL,
  `codification` text COLLATE utf8_bin NOT NULL,
  `sim` text COLLATE utf8_bin NOT NULL,
  `balise` text COLLATE utf8_bin NOT NULL,
  `telephone` text COLLATE utf8_bin NOT NULL,
  `idport` text COLLATE utf8_bin NOT NULL,
  `immatriculation` text COLLATE utf8_bin NOT NULL,
  `statut` text COLLATE utf8_bin NOT NULL,
  `rfid` text COLLATE utf8_bin NOT NULL,
  `navigation` text COLLATE utf8_bin NOT NULL,
  `image` text COLLATE utf8_bin NOT NULL,
  `origin` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `carte_sims`
--

INSERT INTO `carte_sims` (`id`, `codification`, `sim`, `balise`, `telephone`, `idport`, `immatriculation`, `statut`, `rfid`, `navigation`, `image`, `origin`) VALUES
(1, 'N227', '89331013070784713167', 'A05TN62*', '06 17 92 22 12', 'ID : 895380 Port : 2516', '303-AEQ-76', 'REFORME', 'NON', 'NON', '', 'N227'),
(6, 'CS125', '89331042120317979507', 'H4207241', '06 18 54 37 89', 'ID : 125 Port : 2534', 'CJ-182-KE', 'EN SERVICE', 'NON', '', '679025893.pdf', 'oui'),
(7, 'CS133', '89331042120317958501', 'AO5PWV1(2)', '06 18 54 38 72', 'ID : 68 Port : XXXX', 'AE-775-XD', 'EN SERVICE', 'NON', 'NON', '812886988.pdf', ''),
(9, 'N228', '89331042120317952504', 'A05PHZ1', '06 18 54 38 94', 'ID : 73 Port : 2555', '938-AEX-76', 'REFORME', 'NON', 'NON', '', ''),
(10, 'N230', '89331042120317982501', 'H4207243', '06 18 54 37 77', 'ID : 230 Port : 2500', '160-AFD-76', 'REFORME', 'NON', 'NON', '', ''),
(11, 'N232', '89331042120317968500', 'A05TMU1', '06 18 54 38 28', 'ID : 102 Port : 2572', 'BA-649-XD', 'EN SERVICE', 'NON', 'OUI', '', ''),
(12, 'N233', '89331042120317964509', 'A05LVJ1', '06 18 54 38 34', 'ID : 233 Port : 2527', 'BB-073-KY', 'REFORME', 'NON', 'NON', '', 'N233'),
(13, 'N234', '000', 'A05PGV1', '000', 'ID : 69 Port : 2509', 'BB-787-KY', 'REFORME', 'OUI', 'OUI', '', '0000'),
(14, 'N235', '89331013070784696164', 'A05TMQ1', '06 18 54 37 16', 'ID : 103 Port : 2524', 'BD-689-BZ', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(15, 'N236', '89331042120317954500', 'A05PGY1', '06 18 54 38 86', 'ID : 243987 Port : 2569', 'BD-260-LX', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(16, 'N242', '89331042120317953502', 'AO4ZTH1', '06 18 54 38 93', 'ID : 1 Port : 2501', 'CH-437-NX', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(17, 'N243', '89331042120317961505', 'AO51SL1', '06 18 54 38 37', 'ID : 2 Port : 2510', 'CH-590-NX', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(18, 'N244', '89331042120317960507', 'AO51631', '06 18 54 38 54', 'ID : 3 Port : 2512', 'CH-729-NX', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(19, 'N245', '89331013070784704166', 'A04ZTG1', '06 18 54 37 45', 'ID : 63 Port : 2543', 'CK-733-GE', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(20, 'N246', '89331042120317976503', 'AO51TO', '06 18 54 37 96', 'ID : 5 Port : 2544', 'CK-749-GR', 'REFORME', 'OUI', 'OUI', '', ''),
(21, 'N247', '89331042120317955507', 'A04ZT81', '06 18 54 38 82', 'ID : 8 Port : 2547', 'CK-769-GE', 'EN SERVICE', 'NON', 'OUI', '', ''),
(22, 'N248', '89331042120317975505', 'A051661', '06 18 54 38 04', 'ID : 7 Port : 2546', 'CK-713-GE', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(23, 'N249', '89331042120317962503', 'A042TE1', '06 18 54 38 36', 'ID : 6 Port : 2545', 'CK-769-GE', 'EN SERVICE', 'NON', 'OUI', '', ''),
(24, 'N250', '89331042120317970506', 'AO51SI1', '06 18 54 38 22', 'ID : 9 Port : 2518', 'CP-842-KF', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(25, 'N251', '89331042120317957503', 'A055MN2', '06 18 54 38 73', 'ID : 11 Port : 2572', 'CQ-623-BD', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(26, 'N252', '89331013070784723166', 'A051SM1', '06 18 54 37 05', 'ID : 10 Port : 2523', 'CT-822-VK', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(27, 'N253', '89331042120317959509', 'QO55N2', '06 18 54 38 67', 'ID : 13 Port : 2513', 'CT-034-VL', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(28, 'N254', '89331013070784715162', 'A05PH41(2)', '06 18 54 36 99', 'ID : 19 Port : 2505', 'CT-293-VL', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(29, 'N255', '89331042120317951506', 'A053PI1', '06 18 54 36 79', 'ID : 15 Port : 2538', 'CV-259-KT', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(30, 'N256', '89331042120317965506', 'A055KW1(2)', '06 18 54 38 33', 'ID : 12 Port : 2542', 'CV-993-KS', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(31, 'N257', '89331013070784698160', 'A056ZU2', '06 18 54 37 31', 'ID : 16 Port : 2502', 'DD-819-MA', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(32, 'N258', '89331013070784717168', 'A053SI2', '06 18 54 37 13', 'ID : 17 Port : 2503', 'AG-751-GE', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(33, 'N259', '89331042120317973500', 'AO56ZK2', '06 18 54 38 12', 'ID : 21 Port : 2519', 'DD-799-MA', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(34, 'N260', '89331042120317956505', 'A055LO2', '06 18 54 38 76', 'ID : 18 Port : 2505', 'DD-836-MA', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(35, 'N261', '89331042120317980505', 'A05TNC1(2)', '06 18 54 37 81', 'ID : 105 Port : 2520', 'DE-169-AZ', 'EN SERVICE', 'NON', 'NON', '', ''),
(36, 'N262', '89331042120317974508', 'A055K31', '06 18 54 38 06', 'ID : 20 Port : 2508', 'DH-622-PB', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(37, 'N263', '89331013070784722168', 'A05GXC1', '06 18 54 37 07', 'ID : 23 Port : 2532', 'DN-896-XY', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(38, 'N264', '89331013070784716160', 'A05GVW1', '06 18 54 37 06', 'ID : 24 Port : 2553', 'DN-911-YY', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(39, 'N265', '89331042120317966504', 'AO5KDR1', '06 18 54 38 32', 'ID : 67 Port : 2517', 'DT-706-NW', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(40, 'N266', '89331042120317983509', 'AO5MOS2', '06 18 54 37 72', 'ID : 996591 Port : 2526', 'DW-906-JF', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(41, 'N267', '89331013070784695166', 'A05PH82', '06 18 54 37 22', 'ID : 70 Port : 2506', 'DW-773-MR', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(42, 'N268', '89331013070784702160', 'A05PH02', '06 18 54 36 93', 'ID : 74 Port : 2535', 'DW-893-JE', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(43, 'N269', '89331042120317967502', 'AO5LUP2', '06 18 54 38 30', 'ID : 62 Port : 2536', 'DW-178-JG', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(44, 'N270', '89331042120317984507', 'AO5LWC2', '06 18 54 37 69', 'ID : 64 Port : 2540', 'DW-913-JC', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(45, 'N271', '89331042120317972502', 'AO5MOT1', '06 18 54 38 17', 'ID : 65 Port : 2505', 'DW-162-ZA', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(46, 'N272', '89331042120317985504', 'A05LV51', '06 18 54 37 67', 'ID : 65 Port : 2560', 'DW-911-YZ', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(47, 'N273', '89331042160101581507', 'A05XDJ1', '06 18 54 37 51', 'ID : XX Port : 2520', 'EE-940-QG', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(48, 'N274', '89331042120317963501', 'A05TN91', '06 18 54 38 35', 'ID : XX Port : 2520', 'EF-879-WN', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(49, 'N275', '89331042120311051501', 'A05XV42', '06 27 40 15 56', 'ID : XX Port : 2520', 'EJ-003-WY', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(50, 'N276', '89331042120317978509', 'A05XT11', '06 18 54 37 92', 'ID : XX Port : 2520', 'EQ-667-CV', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(51, 'N277', '89331042120317971504', 'A05XT51', '06 18 54 38 18', 'ID : XX Port : 2520', 'ES-056-GY', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(52, 'N278', '89331042307078472116', 'A060251', '06 17 92 21 91', 'ID : XX Port : 2520', 'ET-851-HX', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(53, 'N283', '89331013070784720162', 'A05TN71', '06 17 92 22 12', 'ID : 895380 Port : 2516', 'N227 EV-098-BM', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(54, 'N285', '89331042120317977501', 'A067Q02', '06 18 54 37 95', 'ID : 154 Port : 2520', 'N281 EV-092-LZ', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(55, 'N284', '89333101307078400164', 'A067PS2', '06 18 54 37 26', 'ID : 155 Port : 2520', 'N282 EV-011-BY', 'EN SERVICE', 'OUI', 'OUI', '', ''),
(56, 'N286', '89331042120317979507', 'En attente reception', '06 18 54 37 89', 'ID : 152 Port : 2520', 'N279', 'EN SERVICE', 'NON', 'NON', '', 'N279'),
(57, 'N287', '89331042120317962501', 'En attente reception', '06 18 54 37 77', 'ID : 153 Port : 2520', 'N280', 'EN SERVICE', 'NON', 'NON', '', 'N280'),
(59, 'CS143', '89331042120317976503', 'A05XTQ1', '06 18 54 37 96', 'X', 'EW-053-CP', 'EN SERVICE', 'NON', 'OUI', '1672975583.pdf', 'N290'),
(61, 'N293', 'NA', 'A06DIW1', 'NA', 'NA', 'NA', 'EN STOCK', 'OUI', 'OUI', '', 'N293'),
(64, 'N281 SAV', 'SAV', 'SAV', 'SAV', 'SAV', 'SAV', 'EN STOCK', 'OUI', 'OUI', '', ''),
(65, 'N239', 'NA', 'A0601W2', 'NA', 'NA', 'NA', 'REFORME', 'OUI', 'OUI', '', 'N239'),
(66, 'N291', 'NA', 'A06DJG2', 'NA', 'NA', 'NA', 'EN STOCK', 'OUI', 'OUI', '', 'N291'),
(67, 'N240', 'NA', 'A060212', 'NA', 'NA', 'NA', 'REFORME', 'OUI', 'OUI', '', ''),
(68, 'N292', 'NA', 'A06DKU2', 'NA', 'NA', 'NA', 'EN STOCK', 'OUI', 'OUI', '', 'N292'),
(69, 'N289', 'NA', 'A06DIV2', 'NA', 'NA', 'NA', 'EN STOCK', 'OUI', 'OUI', '', 'N289'),
(70, 'N288', 'NA', 'A06DJH2', 'NA', 'NA', 'NA', 'EN STOCK', 'OUI', 'OUI', '', 'N288');

-- --------------------------------------------------------

--
-- Structure de la table `dep`
--

CREATE TABLE `dep` (
  `id` int(11) NOT NULL,
  `codification` varchar(4) DEFAULT NULL,
  `immat` varchar(10) DEFAULT NULL,
  `gabarit` varchar(19) DEFAULT NULL,
  `secteur` varchar(6) DEFAULT NULL,
  `cubage` varchar(6) DEFAULT NULL,
  `COL 6` varchar(9) DEFAULT NULL,
  `COL 7` varchar(6) DEFAULT NULL,
  `COL 8` varchar(20) DEFAULT NULL,
  `COL 9` varchar(4) DEFAULT NULL,
  `COL 10` varchar(8) DEFAULT NULL,
  `COL 11` varchar(4) DEFAULT NULL,
  `COL 12` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dep`
--

INSERT INTO `dep` (`id`, `codification`, `immat`, `gabarit`, `secteur`, `cubage`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`) VALUES
(1, 'N212', '9494YB', 'MULTICAR-PB', 'ROT', '4M3', '?', '', '26231AHK26', '9CV', '14/12/05', '', 3500),
(2, 'N221', '7808 ZW', 'RENAULT-PB', 'SAT', '4,5M3', 'M50TB', '38111', 'MAXITY', '8CV', '01/02/08', 'N180', 4500),
(3, 'N222', '7793 ZX', 'RENAULT-MANJOT GRUE', 'PAV', '18M3', '', '', 'PR280-26', '19CV', '20/02/08', 'CS82', 26000),
(4, 'N227', 'BD 835 GY', 'RENAULT-OMB', 'D4', '20M3', 'C337', '14581', 'PR280-26', '19CV', '06/10/08', 'N193', 25500),
(5, 'N228', '938 AEX 76', 'RENAULT-OMB', 'ROT', '14M3', 'C333', '', 'PR280-19', '19CV', '21/10/08', 'N192', 19000),
(6, 'N229', '947 AEX', 'RENAULT-OMB', 'ROT', '8M3', 'C112', '', 'MIDLUM 240-12', '13CV', '21/10/08', 'N190', 11990),
(7, 'N230', '160 AFD', 'RENAULT-MANJOT GRUE', 'PAV', '18M3', '', '', 'PR280-26', '19CV', '29/10/08', '', 26000),
(8, 'N231', 'AW-705-DJ', 'RENAULT PB', 'PAV', '4,5', '?', '', 'MAXITY', '10CV', '02/07/10', 'N198', 3500),
(9, 'N232', 'BA-649-XD', 'IVECO-SEMAT', 'D1', '20M3', 'C338.06', '141553', 'STRALIS 310 E5', '16CV', '30/09/10', 'N195', 26000),
(10, 'N233', 'BB-073-KY', 'IVECO-SEMAT', 'ROT', '14M3', 'C225', '141509', 'EUROCARGO 190-EL-30', '16CV', '12/10/10', 'N199', 18600),
(11, 'N234', 'BB-487-KY', 'IVECO-SEMAT', 'B3', '14M3', 'C225', '141543', 'EUROCARGO 190-EL-30', '16CV', '12/10/10', '', 18500),
(12, 'N235', 'BD-689-BZ', 'IVECO-SEMAT', 'ROT', '20M3', 'C338.06', '', 'STRALIS 310 E5', '21CV', '15/11/10', '', 26000),
(13, 'N236', 'BD-260-LX', 'IVECO-SEMAT', 'SAT', '20M3', 'C338.06', '141582', 'STRALIS 310 E5', '21CV', '22/11/10', '', 26000),
(14, 'N237', 'BE-554-JP', 'IVECO-SEMAT', 'ROT', '12M3', 'C214.06', '141628', 'EUROCARGO 160E28', '16CV', '08/12/10', 'N200', 16000),
(15, 'N238', 'BE-680-ND', 'IVECO-SEMAT', 'D2', '14M3', 'C225.06', '141620', 'EUROCARGO 190-EL-30', '16CV', '10/12/10', 'N202', 18600),
(16, 'N239', 'BK-807-KG', 'PIAGGIO', 'COUR', '3,5M3', '?', '', 'PORTER TIPPER', '7CV', '16/03/11', '', 2200),
(17, 'N240', 'BK-795-KG', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER TIPPER', '7CV', '16/03/11', '', 2200),
(18, 'N241', 'BL-909-MY', 'IVECO-SEMAT', 'C4', '12M3', 'C214.06', '141490', 'EUROCARGO 160E28', '16CV', '05/04/11', 'N196', 16000),
(19, 'N242', 'CH-437-NX', 'IVECO-SEMAT', 'A1', '20M3', 'C338.06', '142358', 'STRALIS 310 E5', '21CV', '11/07/12', '', 26000),
(20, 'N243', 'CH-590-MX', 'IVECO-SEMAT', 'A2', '14M3', 'C225.06', '142378', 'EUROCARGO 160E28', '16CV', '10/07/12', '', 18600),
(21, 'N244', 'CH-729-NX', 'IVECO-SEMAT', 'B1', '14M3', 'C225.06', '142388', 'EUROCARGO 160E28', '16CV', '11/07/12', '', 18500),
(22, 'N245', 'CK-733-GE', 'PIAGGIO', 'SAT 1', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', 2200),
(23, 'N246', 'CK-749-GE', 'PIAGGIO', 'SAT 2', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', 2200),
(24, 'N248', 'CK-713-GE', 'PIAGGIO', 'ROT', '3,5M2', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', 2200),
(25, 'N247', 'CK-246-LE', 'PIAGGIO', 'SAT 3', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '06/09/12', '', 2200),
(26, 'N249', 'CK-769-GE', 'PIAGGIO', 'CS PAP', '3,5M3', '?', '', 'PORTER MAXXI', '5CV', '31/08/12', '', 2200),
(27, 'N250', 'CP-842-KF', 'IVECO-SEMAT', 'A3', '10M3', 'C222.05', '14253', 'EUROCARGO 160E25', '16CV', '31/12/12', 'N220', 15400),
(28, 'N251', 'CQ-623-LB', 'IVECO-PB', 'C5', '7M3', '?', '1537', 'EUROCARGO 90E22', '16CV', '04/02/13', '', 9000),
(29, 'N252', 'CT-822-VK', 'IVECO-SEMAT', 'D5', '14M3', 'C225', '142799', 'EUROCARGO ML190', '16CV', '16/05/13', '', 18500),
(30, 'N253', 'CT-034-VL', 'IVECO-SEMAT', 'B2', '14M3', 'C225', '142812', 'EUROCARGO ML190', '16CV', '16/05/13', '', 18500),
(31, 'N254', 'CT-293-VL', 'IVECO-SEMAT', 'ROT', '14M3', 'C225', '', 'EUROCARGO ML190', '16CV', '16/05/13', '', 18500),
(32, 'N255', 'CV-259-KT', 'IVECO-SEMAT', 'C1', '20M3', 'C338', '142786', 'STRALIS 310 E5', '21CV', '04/06/13', '', 26000),
(33, 'N256', 'CV-993-KS', 'IVECO-SEMAT', 'B1/C3', '20M3', 'C338', '142756', 'STRALIS 310 E5', '21CV', '04/06/13', '', 26000),
(34, 'N257', 'DD-819-MA', 'IVECO-SEMAT', 'C2', '20M3', 'C338', '143121', 'STRALIS 310 E6', '21CV', '27/02/14', 'N218', 26000),
(35, 'N258', 'DD-780-MA', 'IVECO-SEMAT', 'D3', '14M3', 'C225', '143119', 'EUROCARGO ML190', '16CV', '27/02/14', 'N219', 18500),
(36, 'N259', 'DD-799-MA', 'IVECO-SEMAT', 'B4', '14M3', 'C225', '143088', 'EUROCARGO ML190', '16CV', '27/02/14', 'N223', 18500),
(37, 'N260', 'DD-836-MA', 'IVECO-SEMAT', 'A1', '20M3', 'C338', '143028', 'STRALIS 310 E5', '21CV', '27/02/14', 'N224', 26000),
(38, 'N261', 'DE-169-AZ', 'IVECO-MANJOT GRUE', '', '18M3', '', '', '', '21CV', '19/03/14', '', 2600),
(39, 'N262', 'DH-622-PB', 'IVECO-ZOELLER', 'C5', '8M3', '', '', '', '16CV', '11/07/14', 'N220', 11990),
(40, 'N263', 'DN-896-XY', 'PIAGGIO', 'CS06', '3,5M3', '?', '', 'PORTER MAXXI', '7CV', '10/02/15', '', 2200),
(41, 'N264', 'DN-711-XY', 'PIAGGIO', 'S2', '3,5 M3', '?', '', 'PORTER MAXXI', '7CV', '10/02/15', '', 2200),
(42, 'N265', 'DT-706-NW', 'IVECO-SEMAT', 'D4', '20M3', 'C338', '143804', 'STRALIS 310 E6', '23CV', '24/07/15', '', 26000),
(43, 'N266', 'DW-906-JF', 'IVECO-SEMAT', 'B3', '14M3', 'C224,06', '143857', 'EUROCARGO 190-EL-30', '18CV', '07/10/15', '', 18700),
(44, 'N267', 'DW-773-MR', 'IVECO-SEMAT', 'D2', '14M3', 'C224,06', '143865', 'EUROCARGO 190-EL-30', '18CV', '13/10/15', '', 18700),
(45, 'N268', 'DW-893-JE', 'IVECO-SEMAT', 'D1', '20M3', ' ', '', 'STRALIS 310 E6', '23CV', '07/10/15', '', 26000),
(46, 'N269', 'DW-178-JG', 'IVECO-SEMAT', 'ROT', '14M3', '', '', 'EUROCARGO 190-EL-30', '18CV', '07/10/15', '', 19000),
(47, 'N270', 'DW-913-JC', 'IVECO-ZOELLER', 'ROT', '8M3', 'XL8', '35193', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', 11990),
(48, 'N271', 'DW-162-ZA', 'IVECO-ZOELLER', 'CSPAP', '8M3', 'XL8', '35200', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', 11990),
(49, 'N272', 'DW-911-YZ', 'IVECO-ZOELLER', 'A3', '8M3', 'XL8', '35199', 'EUROCARGO 120-EL-10', '12CV', '07/10/15', '', 11990),
(50, 'N273', 'EE-940-QG', 'IVECO-ZOELLER', 'A2', '14M3', 'C224,06', '144276', 'EUROCARGO 190-EL-30', '18CV', '17/08/16', '', 18700),
(51, 'N274', 'EF-879-WW', 'IRIDE', 'D6OM', '5M3', 'VRR', '', 'RENAULT MAXITY', '7CV', '07/10/16', 'N221', 4500),
(52, 'N275', 'EJ-003-WY', 'IVECO-ZOELLER', 'B1/C3', '14M3', 'C224,06', '144453', 'EUROCARGO 190-EL-28P', '18CV', '07/02/17', 'N244', 18550),
(53, 'N276', 'EQ-667-CV', 'IVECO-ZOELLER', 'C4', '8M3', 'MICROPAC8', '35272', 'EUROCARGO 120-EL-10', '12CV', '30/08/17', 'N237', 11990),
(54, 'N277', 'ES-056-GY', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER MULTITECH E6', '7CV', '28/11/17', 'N239', 2200),
(55, 'N278', 'ET-851-HX', 'PIAGGIO', 'S3', '3,5M3', '?', '', 'PORTER  MUL TITECHE6', '7CV', '12/01/18', 'N240', 2200),
(56, 'N283', 'EV-898-BM', 'IVECO-SEMAT', 'A1', '20M3', '?', '?', '?', '?', '?', 'N242', 14980),
(57, 'N284', 'EV-001-BY', 'IVECO-SEMAT', 'D5', '14M3', 'C224', '144958', 'EUROCARGO 190-280L', '18CV', '16/02/18', 'N252', 18550),
(58, 'N285', 'EV-092-LZ', 'IVECO-ZOELLER', '?', '8M3', 'C224', '35291', 'EUROCARGO 120-EL-10', '12CV', '05/03/18', '', 11990);

-- --------------------------------------------------------

--
-- Structure de la table `depart`
--

CREATE TABLE `depart` (
  `codification` text COLLATE utf8_bin NOT NULL,
  `gabarit` text COLLATE utf8_bin NOT NULL,
  `heured` time NOT NULL,
  `Heure_A` time NOT NULL,
  `kmd` text COLLATE utf8_bin NOT NULL,
  `kma` text COLLATE utf8_bin NOT NULL,
  `Conducteur` text COLLATE utf8_bin NOT NULL,
  `Secteur` text COLLATE utf8_bin NOT NULL,
  `Code2` text COLLATE utf8_bin NOT NULL,
  `Vol2` text COLLATE utf8_bin NOT NULL,
  `Obsevation` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `depart`
--

INSERT INTO `depart` (`codification`, `gabarit`, `heured`, `Heure_A`, `kmd`, `kma`, `Conducteur`, `Secteur`, `Code2`, `Vol2`, `Obsevation`) VALUES
('N255', '', '00:00:00', '00:00:00', '1000', '2500', '', '', '', '', ''),
('N285', '8m?', '00:00:00', '00:20:25', '', '', '', '', '', '2025', '');

-- --------------------------------------------------------

--
-- Structure de la table `deps`
--

CREATE TABLE `deps` (
  `id` int(11) NOT NULL,
  `codification` text COLLATE utf8_bin NOT NULL,
  `gabarit` text COLLATE utf8_bin NOT NULL,
  `chauffeur` text COLLATE utf8_bin NOT NULL,
  `heured` time NOT NULL,
  `heurea` time NOT NULL,
  `kmd` text COLLATE utf8_bin NOT NULL,
  `kma` text COLLATE utf8_bin NOT NULL,
  `obs` text COLLATE utf8_bin NOT NULL,
  `remp` text COLLATE utf8_bin NOT NULL,
  `today` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `deps`
--

INSERT INTO `deps` (`id`, `codification`, `gabarit`, `chauffeur`, `heured`, `heurea`, `kmd`, `kma`, `obs`, `remp`, `today`) VALUES
(1, 'N285', '4M3', 'TOUIL', '00:00:00', '00:00:00', '20000', '40000', '', '', '0000-00-00'),
(2, 'N284', '4M3', 'DONO', '00:00:00', '00:00:00', '30000', '50000', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `fd`
--

CREATE TABLE `fd` (
  `id` int(11) NOT NULL,
  `ddate` date NOT NULL,
  `codification` text COLLATE utf8_bin NOT NULL,
  `volume` text COLLATE utf8_bin NOT NULL,
  `heured` time NOT NULL,
  `kmd` text COLLATE utf8_bin NOT NULL,
  `conducteur` text COLLATE utf8_bin NOT NULL,
  `secteur` text COLLATE utf8_bin NOT NULL,
  `code2` text COLLATE utf8_bin NOT NULL,
  `vol2` text COLLATE utf8_bin NOT NULL,
  `heurea` time NOT NULL,
  `kma` text COLLATE utf8_bin NOT NULL,
  `obs` text COLLATE utf8_bin NOT NULL,
  `anomalie` text COLLATE utf8_bin NOT NULL,
  `am` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `fd`
--

INSERT INTO `fd` (`id`, `ddate`, `codification`, `volume`, `heured`, `kmd`, `conducteur`, `secteur`, `code2`, `vol2`, `heurea`, `kma`, `obs`, `anomalie`, `am`) VALUES
(1, '2018-10-03', 'HJKHJK', '', '00:00:00', '', '', '', '', '', '00:00:00', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `radio`
--

CREATE TABLE `radio` (
  `id` int(11) NOT NULL,
  `Dates` date NOT NULL,
  `numero_appel` text,
  `codification` text,
  `numero_serie` text,
  `type` text,
  `statut` text,
  `modele` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `radio`
--

INSERT INTO `radio` (`id`, `Dates`, `numero_appel`, `codification`, `numero_serie`, `type`, `statut`, `modele`) VALUES
(12, '2018-12-01', '5731', 'Astreinte Sï¿½curitï¿½', '3PN700909G05RW', 'Portatif', 'EN SERVICE', 'STP9040'),
(13, '0000-00-00', '5732', 'Frank Toutain', '3PN200843GOE073', 'Portatif', 'EN SERVICE', 'STP9040'),
(14, '0000-00-00', '5646', 'EX M.Leribler', '3PN700910G0E7EU', 'Portatif', 'EN SERVICE', 'STP9040'),
(15, '2018-12-08', '5737', 'A.Duvieu', '3PN700910G0E7D2', 'Portatif', 'EN SERVICE', 'STP9040-'),
(16, '0000-00-00', '5738', 'Lo‹c BLANCHARD', '3PN700910G0E7JN', 'Portatif', 'EN SERVICE', 'STP9040'),
(18, '0000-00-00', '5742', 'B.Donnet/L.Devarieux', '3PN700910G0E7HX', 'Portatif', 'EN SERVICE', 'STP9040'),
(19, '0000-00-00', '5820', 'IVECO', '3PN700911G0E81J', 'Portatif', 'EN SERVICE', 'STP9040'),
(20, '0000-00-00', '5850', 'Guillaume Emo', '3PN700911G07OM', 'Portatif', 'EN SERVICE', 'STP9040'),
(21, '0000-00-00', '5887', 'Bruno GOFFART', '1PRE01709G8H0C9', 'Portatif', 'EN SERVICE', 'STP9040'),
(22, '0000-00-00', '5888', 'M.Burel', '1PRE01712G8H72J', 'Portatif', 'EN SERVICE', 'STP9040'),
(23, '0000-00-00', '5899', 'Chloe Baudy', '3PN700910G0E7FT', 'Portatif', 'EN SERVICE', 'STP9040'),
(24, '0000-00-00', '5970', 'Mini BOM N245', '3PN800917G0F1D7', 'Portatif', 'EN SERVICE', 'STP9040'),
(25, '0000-00-00', '5971', 'Mini BOM N246', '3PN800917G0F0RR', 'Portatif', 'EN SERVICE', 'STP9040'),
(26, '0000-00-00', '5972', 'Mini BOM N247', '3PN800914G0E9IG', 'Portatif', 'EN SERVICE', 'STP9040'),
(27, '0000-00-00', '5974', 'Mini BOM N249', '3PN800917G0F197', 'Portatif', 'EN SERVICE', 'STP9040'),
(28, '0000-00-00', '5975', 'Sakharov', '3PN800917G0F1CB', 'Portatif', 'EN SERVICE', 'STP9040'),
(29, '0000-00-00', '5976', 'Philippe Mariette', '3PN800917G0F17Z', 'Portatif', 'EN SERVICE', 'STP9040'),
(30, '0000-00-00', '5977', 'Permanence CDR', '3PN700911G0E7SL', 'Portatif', 'EN SERVICE', 'STP9040'),
(31, '0000-00-00', '5978', 'Permanence CDR', '3PN800917G0F195', 'Portatif', 'EN SERVICE', 'STP9040'),
(32, '0000-00-00', '5629', 'N212', '2PN100541ENT6Z4', 'Fixe', 'EN SERVICE', 'SRG3900'),
(33, '0000-00-00', '5416', 'N242', '2PN301230G7P26F', 'Fixe', 'EN SERVICE', 'SRG3900'),
(34, '0000-00-00', '5417', 'Bom N230', '2PN10054ENT7Y1', 'Fixe', 'EN SERVICE', 'SRG3900'),
(35, '0000-00-00', '5418', 'Bom N232', '2PN400649FZ48OV', 'Fixe', 'EN SERVICE', 'SRG3900'),
(36, '0000-00-00', '5420', 'N243', '2PN301230G7P26H', 'Fixe', 'EN SERVICE', 'SRG3900'),
(37, '0000-00-00', '5422', 'N252', '2PN200618EZYM2', 'Fixe', 'EN SERVICE', 'SRG3900'),
(40, '0000-00-00', '5673', 'Camion C77', '2P400649EZ48OM', 'Fixe', 'EN SERVICE', 'SRG3900'),
(41, '0000-00-00', '5631', 'Camion CS116', '2PN600851G2T1HK', 'Fixe', 'EN SERVICE', 'SRG3900'),
(42, '0000-00-00', '5639', 'Camion CS110', '2PN400649EZ4808', 'Fixe', 'EN SERVICE', 'SRG3900'),
(43, '0000-00-00', '5641', 'Camion CS112', '2PN100722G2A8F5', 'Fixe', 'EN SERVICE', 'SRG3900'),
(44, '0000-00-00', '5642', 'CS117', '2PN701421G7710', 'Fixe', 'EN SERVICE', 'SRG3900'),
(45, '0000-00-00', '5643', 'Camion CS114', '2PN600851G2T1HG', 'Fixe', 'EN SERVICE', 'SRG3900'),
(46, '0000-00-00', '5649', 'Bom N233', '2PN100721G3A55R', 'Fixe', 'EN SERVICE', 'SRG3900'),
(47, '0000-00-00', '5650', 'Bom N236', '2PN100732G3D4J3', 'Fixe', 'EN SERVICE', 'SRG3900'),
(48, '0000-00-00', '5656', 'N265', '2PN400649EZ48PN', 'Fixe', 'EN SERVICE', 'SRG3900'),
(49, '0000-00-00', '5421', 'N221', '2PN200618EZY7L3', 'Fixe', 'EN SERVICE', 'SRG3900'),
(50, '0000-00-00', '5659', 'Camion CS125', '2PN100732G3D53G', 'Fixe', 'EN SERVICE', 'SRG3900'),
(51, '0000-00-00', '5663', 'N255', '2PN301246G7R9A1', 'Fixe', 'EN SERVICE', 'SRG3900'),
(52, '0000-00-00', '5664', 'Bom N237', '2PN400649EZ48OB', 'Fixe', 'EN SERVICE', 'SRG3900'),
(53, '0000-00-00', '5665', 'N256', '2PN301249G7S5V0', 'Fixe', 'EN SERVICE', 'SRG3900'),
(54, '0000-00-00', '5668', 'Bom N238', '2PN100732G3D4RK', 'Fixe', 'EN SERVICE', 'SRG3900'),
(55, '0000-00-00', '5669', 'Bom N235', 'PN100732G3D4TD', 'Fixe', 'EN SERVICE', 'SRG3900'),
(56, '0000-00-00', '5670', 'Bom N222', '2PN100735G3E262', 'Fixe', 'EN SERVICE', 'SRG3900'),
(57, '0000-00-00', '5671', 'N253', '2PN301251G7S8ER', 'Fixe', 'EN SERVICE', 'SRG3900'),
(58, '0000-00-00', '5674', 'Bom N234', '2PN100717G39NI', 'Fixe', 'EN SERVICE', 'SRG3900'),
(59, '0000-00-00', '5726', 'Camion CS118', '2PN701421G770WX', 'Fixe', 'EN SERVICE', 'SRG3900'),
(60, '0000-00-00', '5730', 'Bom N241', '2PN400649EZ48P2', 'Fixe', 'EN SERVICE', 'SRG3900'),
(61, '0000-00-00', '5736', 'Bom N231', '2PN500841G2T1JB', 'Fixe', 'EN SERVICE', 'SRG3900'),
(62, '0000-00-00', '5890', 'Camion CS100', '2PN100732G3D53U', 'Fixe', 'EN SERVICE', 'SRG3900'),
(63, '0000-00-00', '5893', 'Bom N244', '2PN301230G7P270', 'Fixe', 'EN SERVICE', 'SRG3900'),
(64, '0000-00-00', '5897', 'Bom N254', '2PN301246G7R8VI', 'Fixe', 'EN SERVICE', 'SRG3900'),
(65, '0000-00-00', '5979', 'Camion CS108', '2PN100805G3J5MI', 'Fixe', 'EN SERVICE', 'SRG3900'),
(66, '0000-00-00', '5983', 'Bom N250', '2PN301230G7P26', 'Fixe', 'EN SERVICE', 'SRG3900'),
(67, '0000-00-00', '5984', 'Bom N251', '2PN301230G7P26L', 'Fixe', 'EN SERVICE', 'SRG3900'),
(68, '0000-00-00', '5892', 'Bom N257', '2PN301331G7Y5LD', 'Fixe', 'EN SERVICE', 'SRG3900'),
(69, '0000-00-00', '5672', 'Bom N260', '2PN301331G7Y5L7', 'Fixe', 'EN SERVICE', 'SRG3900'),
(70, '0000-00-00', '5891', 'Bom N259', '2PN301331G7Y5L9', 'Fixe', 'EN SERVICE', 'SRG3900'),
(71, '0000-00-00', '5658', 'Bom N258', '2PN301331G7Y5LC', 'Fixe', 'EN SERVICE', 'SRG3900'),
(72, '0000-00-00', '5980', 'Bom N261', '2PN301331G7Y5LA', 'Fixe', 'EN SERVICE', 'SRG3900'),
(77, '0000-00-00', 'attente affectation', 'attente affectation', '2PN701343G512GL', 'Portatif', 'EN SERVICE', 'STP9040'),
(78, '0000-00-00', '5331', 'Pr‚collecte 5331', '2PN701343G512GH', 'Portatif', 'EN SERVICE', 'STP9040'),
(79, '0000-00-00', '5332', 'Pr‚collecte 5332', '2PN701343G512GI', 'Portatif', 'EN SERVICE', 'STP9040'),
(80, '0000-00-00', '5333', 'Pr‚collecte 5333', '2PN701343G512GE', 'Portatif', 'EN SERVICE', 'STP9040'),
(81, '0000-00-00', '5648', 'Pr‚collecte 5648', '2PN701343G512GL', 'Portatif', 'EN SERVICE', 'STP9040'),
(82, '0000-00-00', '5740', 'Pr‚collecte 5740', '2PN701343G512GT', 'Portatif', 'EN SERVICE', 'STP9040'),
(83, '0000-00-00', '5334', 'Pr‚collecte 5334', '2PN701343G512FN', 'Portatif', 'EN SERVICE', 'STP9040'),
(84, '0000-00-00', '5898', 'Bom N271', '2PN701421G770ZG', 'Fixe', 'EN SERVICE', 'SRG3900'),
(85, '0000-00-00', '5633', 'Bom N268', '2PNE01517G719G5', 'Fixe', 'EN SERVICE', 'SRG3900'),
(86, '0000-00-00', '5894', 'Bom N272', '2PNE01519G7J4D6', 'Fixe', 'EN SERVICE', 'SRG3900'),
(87, '0000-00-00', '5896', 'Bom N267', '2PNE01517G719EX', 'Fixe', 'EN SERVICE', 'SRG3900'),
(88, '0000-00-00', '5419', 'Bom N270', '2PNE01517G719ET.', 'Fixe', 'EN SERVICE', 'SRG3900'),
(89, '0000-00-00', '5624', 'Bom N269', '2PNA00518E9Q7D9', 'Fixe', 'EN SERVICE', 'SRG3900'),
(90, '0000-00-00', '5982', 'Bom N262', '2PN301331G7Y5L8', 'Fixe', 'EN SERVICE', 'SRG3900'),
(91, '0000-00-00', '5733', 'D.Leroux', '1PR801506G8I4D9', 'Portatif', 'EN SERVICE', 'STP9040'),
(92, '0000-00-00', '5803', 'F.Vasseur', '1PR801506G81I4HB', 'Portatif', 'EN SERVICE', 'STP9040'),
(93, '0000-00-00', '5734', 'Bom N266', '2PN701421G770WF', 'Fixe', 'EN SERVICE', 'SRG3900'),
(94, '0000-00-00', '5846', 'L-Dumenil', '1PRE01709G8H0CF', 'Portatif', 'EN SERVICE', 'STP9040'),
(95, '0000-00-00', '5847', 'Mini BOM N248', '2PN400537EWT38D', 'Portatif', 'EN SERVICE', 'STP9040'),
(96, '0000-00-00', '5421', 'N274', '2PNE01535G7Q3TE', 'Fixe', 'EN SERVICE', 'SRG3900'),
(97, '0000-00-00', '5668', 'Bom N273', '2PNE01535G7Q3Q1', 'Fixe', 'EN SERVICE', 'SRG3900'),
(98, '0000-00-00', '5979', 'Camion CS133', '2PNE01535G7Q3QK', 'Fixe', 'EN SERVICE', 'SRG3900'),
(99, '0000-00-00', '5973', 'Ste Adresse CDR', '8PRB01550G8A9RL', 'Portatif', 'EN SERVICE', 'STP9040'),
(100, '0000-00-00', '5415', 'Bom N275', '2PNG01619G702N7', 'Fixe', 'EN SERVICE', 'SRG3900'),
(101, '0000-00-00', '5431', 'N285', '2PNG01619G702CR', 'Fixe', 'EN SERVICE', 'SRG3900'),
(102, '0000-00-00', '5646', 'LERIBLER', '1PRE01638G8D0VS', 'Portatif', 'EN SERVICE', 'STP9040'),
(103, '0000-00-00', '5742', 'DEVARIEUX', '1PRE01638G8D0UP', 'Portatif', 'EN SERVICE', 'STP9040'),
(104, '0000-00-00', '5625', 'ROTATION 1', '1PRE01638G8C9M9', 'Portatif', 'EN SERVICE', 'STP9040'),
(105, '0000-00-00', '5975', 'FOUQUAY', '1PRE01638G8D0UT', 'Portatif', 'EN SERVICE', 'STP9040'),
(106, '0000-00-00', '5652', 'RASSE', '1PRE01638G8D0V6', 'Portatif', 'EN SERVICE', 'STP9040'),
(107, '0000-00-00', '5328', 'ROTATION 2', '', 'Portatif', 'EN SERVICE', 'STP9040'),
(112, '0000-00-00', 'XXXX', 'Bom N.. ou Camion CS...', '2PNG01637G729GP', 'Fixe', 'EN SERVICE', 'SRG3900'),
(113, '0000-00-00', 'XXXX', 'Bom N.. ou Camion CS...', '1PSGO1636G734E4', 'Fixe', 'EN SERVICE', 'SRG3900'),
(114, '0000-00-00', 'XXXX', 'XX', '1PRF01742G8P6SV', 'Portatif', 'EN STOCK', 'STP9040'),
(115, '0000-00-00', 'XXXX', 'XX', '1PRF01744G8QOM2', 'Portatif', 'EN STOCK', 'STP9040'),
(116, '0000-00-00', 'XXXX', 'XX', '1PRF01744G8QOHP', 'Portatif', 'EN STOCK', 'STP9040'),
(117, '0000-00-00', 'XXXX', 'XX', '1PRF01742G8P6T8', 'Portatif', 'EN STOCK', 'STP9040'),
(122, '0000-00-00', 'XXXX', 'XX', '1PRF01742G8P6T5', 'Portatif', 'EN SERVICE', 'STP9040'),
(123, '0000-00-00', 'XXXX', 'XX', '1PRF01744G8QOM7', 'Portatif', 'EN SERVICE', 'STP9040'),
(124, '0000-00-00', 'XXXX', 'XX', '1PRF01744G8QOHS', 'Portatif', 'EN SERVICE', 'STP9040'),
(125, '0000-00-00', 'XXXX', 'XX', '1PRF01744G8HQOH4', 'PORTATIF', 'EN STOCK', 'STP9040'),
(126, '0000-00-00', '5725', 'MB N277', '1PR801506G81I4HB', 'PORTATIF', 'EN SERVICE', 'STP9040'),
(131, '2018-12-03', 'AAAAA-', 'zeez', '3PN700910G0E7D2', 'PORTATIF', 'EN SERVICE', 'SRM3500---'),
(132, '2018-12-20', 'AAAAA-', 'CS140', NULL, 'PTI', 'EN STOCK', 'SRM3500');

-- --------------------------------------------------------

--
-- Structure de la table `radio_inventaire`
--

CREATE TABLE `radio_inventaire` (
  `id` int(11) NOT NULL,
  `portati` text COLLATE utf8_bin NOT NULL,
  `ptt_mb` text COLLATE utf8_bin NOT NULL,
  `fixe` text COLLATE utf8_bin NOT NULL,
  `fixation_console` text COLLATE utf8_bin NOT NULL,
  `cable_remote` text COLLATE utf8_bin NOT NULL,
  `ptt_pl` text COLLATE utf8_bin NOT NULL,
  `antenne` text COLLATE utf8_bin NOT NULL,
  `hp` text COLLATE utf8_bin NOT NULL,
  `convertisseur` text COLLATE utf8_bin NOT NULL,
  `alim_srg` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `suivis`
--

CREATE TABLE `suivis` (
  `id` int(11) NOT NULL,
  `Dates` date NOT NULL,
  `codification` text COLLATE utf8_bin NOT NULL,
  `identification` text COLLATE utf8_bin NOT NULL,
  `GPS` text COLLATE utf8_bin NOT NULL,
  `RFID` text COLLATE utf8_bin NOT NULL,
  `comptage` text COLLATE utf8_bin NOT NULL,
  `commentaire` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `suivis`
--

INSERT INTO `suivis` (`id`, `Dates`, `codification`, `identification`, `GPS`, `RFID`, `comptage`, `commentaire`) VALUES
(9, '2018-12-04', 'N212', 'OUI', 'OUI', 'OUI', 'OUI', 'NON');

-- --------------------------------------------------------

--
-- Structure de la table `tetttttt`
--

CREATE TABLE `tetttttt` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`, `rank`) VALUES
(3, 'GLPI', 'vbourel76@gmail.com', 'd6b840d789224a9b8af9267d142c2d21', '2018-08-12 23:06:09', 5),
(4, 'guido', 'dadoprso76@gmail.com', '$1$zlnYwMy4$XJXe7it14YoWwr0lrK3M4.', '2018-08-24 10:20:57', 0),
(8, 'loic', 'loic.lefebvre@codah.fr', '317ef2c946b513be84b366239ba7e9ca', '2018-08-29 11:22:33', 5);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `site` text COLLATE utf8_bin NOT NULL,
  `equipement` text COLLATE utf8_bin NOT NULL,
  `numeroserie` text COLLATE utf8_bin NOT NULL,
  `repere` text COLLATE utf8_bin NOT NULL,
  `dateinstallation` date NOT NULL,
  `dureegaranti` text COLLATE utf8_bin NOT NULL,
  `ips` text COLLATE utf8_bin NOT NULL,
  `mac` text COLLATE utf8_bin NOT NULL,
  `image` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id`, `site`, `equipement`, `numeroserie`, `repere`, `dateinstallation`, `dureegaranti`, `ips`, `mac`, `image`) VALUES
(8, 'LE HAVRE NORD', 'CAMERA', '1561156156', 'BUREAU', '1820-00-00', '2ans', '192.168.1.50', '00:1B:44:11:3A:B8', '166557240.pdf');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `anomalie_tripratik`
--
ALTER TABLE `anomalie_tripratik`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `azerty`
--
ALTER TABLE `azerty`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bom`
--
ALTER TABLE `bom`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `bom` ADD FULLTEXT KEY `search` (`codification`,`immatriculation`,`chassis_equip`,`secteur`);

--
-- Index pour la table `dep`
--
ALTER TABLE `dep`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `deps`
--
ALTER TABLE `deps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fd`
--
ALTER TABLE `fd`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `radio`
--
ALTER TABLE `radio`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `radio_inventaire`
--
ALTER TABLE `radio_inventaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suivis`
--
ALTER TABLE `suivis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tetttttt`
--
ALTER TABLE `tetttttt`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `anomalie_tripratik`
--
ALTER TABLE `anomalie_tripratik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `azerty`
--
ALTER TABLE `azerty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `bom`
--
ALTER TABLE `bom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `dep`
--
ALTER TABLE `dep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `deps`
--
ALTER TABLE `deps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `fd`
--
ALTER TABLE `fd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `radio`
--
ALTER TABLE `radio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT pour la table `radio_inventaire`
--
ALTER TABLE `radio_inventaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `suivis`
--
ALTER TABLE `suivis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `tetttttt`
--
ALTER TABLE `tetttttt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
