-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2025 at 12:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyber`
--

-- --------------------------------------------------------

--
-- Table structure for table `accused_profiles`
--

CREATE TABLE `accused_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `signature_path` varchar(255) DEFAULT NULL,
  `addresses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`addresses`)),
  `business_name` varchar(255) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `business_addresses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`business_addresses`)),
  `mobile_numbers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`mobile_numbers`)),
  `email_addresses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`email_addresses`)),
  `aadhar_number` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `gstin` varchar(255) DEFAULT NULL,
  `social_media_profiles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`social_media_profiles`)),
  `fathers_name` varchar(255) DEFAULT NULL,
  `mothers_name` varchar(255) DEFAULT NULL,
  `family_members` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`family_members`)),
  `devices` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`devices`)),
  `bank_accounts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`bank_accounts`)),
  `ip_addresses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`ip_addresses`)),
  `locations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`locations`)),
  `bio` text DEFAULT NULL,
  `additional_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional_info`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accused_profiles`
--

INSERT INTO `accused_profiles` (`id`, `case_id`, `name`, `photo_path`, `date_of_birth`, `signature_path`, `addresses`, `business_name`, `business_type`, `business_addresses`, `mobile_numbers`, `email_addresses`, `aadhar_number`, `pan_number`, `gstin`, `social_media_profiles`, `fathers_name`, `mothers_name`, `family_members`, `devices`, `bank_accounts`, `ip_addresses`, `locations`, `bio`, `additional_info`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Abhishek', 'accused_photos/01JVC1K6T7DBVEHERMA3GT8SV5.jpg', NULL, 'accused_signatures/01JVC1K6TFF6CMJ9F2WZ9HX89Q.jpeg', '[{\"address\":\"Navsari\",\"type\":\"Home\",\"source\":\"Home\"}]', NULL, NULL, '[{\"address\":null}]', '[{\"number\":null,\"label\":null,\"source\":null}]', '[{\"email\":null}]', NULL, NULL, NULL, '[{\"platform\":null,\"handle\":null,\"url\":null}]', NULL, NULL, '[{\"name\":null,\"relation\":null}]', '[{\"type\":null,\"identifier\":null}]', '[{\"account_number\":null,\"bank_name\":null}]', '[{\"ip\":null}]', '[{\"location\":null}]', NULL, '[{\"key\":null,\"value\":null}]', '2025-05-16 02:27:59', '2025-05-16 02:51:09', NULL),
(2, 2, '1. SINGH ENTERPRISES (Bank KYC) 2. M/S MANOJ ASSOCIATES (C-Trace PAN)', 'accused_photos/01JVC5SHH4Q9NGBPVCYJY4XCMJ.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ETCPS5761M', NULL, '[{\"platform\":\"fACENOOK\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/cyber-cases\\/2\\/edit\"},{\"platform\":\"iNSTA\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/cyber-cases\\/2\\/edit\"}]', NULL, NULL, '[{\"name\":\"aBHI\",\"relation\":\"sISTER\"},{\"name\":null,\"relation\":null}]', NULL, NULL, NULL, NULL, NULL, '[]', '2025-05-16 03:41:20', '2025-05-16 03:43:43', NULL),
(3, 5, 'Abhishek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"platform\":null,\"url\":null}]', NULL, NULL, '[{\"name\":null,\"relation\":null}]', NULL, NULL, NULL, NULL, NULL, '[{\"key\":null,\"value\":null}]', '2025-05-19 07:28:00', '2025-05-19 07:28:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_transactions`
--

CREATE TABLE `bank_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nodal_officer` text DEFAULT NULL,
  `outward_no` varchar(255) DEFAULT NULL,
  `acknowledgement_no` varchar(255) DEFAULT NULL,
  `account_id` varchar(255) DEFAULT NULL,
  `info_type` text DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `transaction_id_2` varchar(255) DEFAULT NULL,
  `transaction_type` enum('ATM Withdrawal','Money Transfer','Other','Put on Hold') NOT NULL,
  `transaction_date` text DEFAULT NULL,
  `put_on_hold_date` text DEFAULT NULL,
  `withdrawal_date` text DEFAULT NULL,
  `date_of_action` text DEFAULT NULL,
  `withdrawal_amount` decimal(18,2) DEFAULT NULL,
  `transaction_amount` decimal(18,2) DEFAULT NULL,
  `put_on_hold_amount` decimal(18,2) DEFAULT NULL,
  `disputed_amount` decimal(18,2) DEFAULT NULL,
  `atm_id` varchar(255) DEFAULT NULL,
  `atm_location` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `layer` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `action_taken_by_bank` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_transactions`
--

INSERT INTO `bank_transactions` (`id`, `nodal_officer`, `outward_no`, `acknowledgement_no`, `account_id`, `info_type`, `transaction_id`, `transaction_id_2`, `transaction_type`, `transaction_date`, `put_on_hold_date`, `withdrawal_date`, `date_of_action`, `withdrawal_amount`, `transaction_amount`, `put_on_hold_amount`, `disputed_amount`, `atm_id`, `atm_location`, `bank_name`, `layer`, `ifsc_code`, `reference_no`, `remarks`, `action_taken_by_bank`, `created_at`, `updated_at`) VALUES
(5, 'Mobikwik', '1701', '31105250097070', '06000100012529', 'Wallet', '550344408037', '550344408037', 'Money Transfer', NULL, NULL, NULL, '18/05/2025 22:26:PM', NULL, 22056.00, NULL, 22056.00, NULL, NULL, 'PPIW0881822 One Mobikwik Systems Pvt Ltd.', '1', '', '', 'The amount of INR 22,056.00 has been deducted for each of the following transaction IDs: 550344408037, 550366824189, and 550311714746 on  17th May, 2025', 'Bank of Baroda (Including Vijaya Bank and Dena Bank)', '2025-05-20 02:46:06', '2025-05-21 02:16:51'),
(6, NULL, NULL, '31105250097070', '06000100012529', NULL, '550366824189', '550366824189', 'Money Transfer', '17/05/2025 12:00:00 AM', NULL, NULL, '18/05/2025 22:27:PM', NULL, 22056.00, NULL, 22056.00, NULL, NULL, 'PPIW0881822 One Mobikwik Systems Pvt Ltd.', '1', '', '', '', 'Bank of Baroda (Including Vijaya Bank and Dena Bank)', '2025-05-20 02:46:06', '2025-05-20 02:46:06'),
(7, NULL, NULL, '31105250097070', '06000100012529', NULL, '550311714746', '550311714746', 'Money Transfer', '17/05/2025 12:00:00 AM', NULL, NULL, '18/05/2025 22:28:PM', NULL, 22056.00, NULL, 22056.00, NULL, NULL, 'PPIW0881822 One Mobikwik Systems Pvt Ltd.', '1', '', '', '', 'Bank of Baroda (Including Vijaya Bank and Dena Bank)', '2025-05-20 02:46:06', '2025-05-20 02:46:06'),
(8, NULL, '1649/25', '31105250097070', 'OMBKMBKM35390', NULL, '550311714746', '513718231409', 'Money Transfer', NULL, NULL, NULL, '19/05/2025 09:52:AM', NULL, 145781.00, NULL, 66168.00, NULL, NULL, 'Kotak Mahindra Bank', '2', 'KKBK0005934', '', NULL, 'Mobikwik', '2025-05-20 02:46:06', '2025-05-21 00:24:18'),
(9, NULL, NULL, '31105250097070', '', NULL, 'CCNO6529160007504302', 'RRn513718231409', 'Money Transfer', '17/05/2025 06:56:00 PM', NULL, NULL, '19/05/2025 10:00:AM', NULL, 145781.00, NULL, 49868.00, NULL, NULL, 'Kotak Mahindra Bank', '2', 'KKBK0005934', '', 'RRN- 513718231409', 'Mobikwik', '2025-05-20 02:46:06', '2025-05-20 02:46:06'),
(10, 'Meta', '1703', '31105250097070', 'Instagram Account', 'Instagram', 'Instagram Account', NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<ol><li>https://www.instagram.com/icp.cybersecurity.01</li><li>https://www.instagram.com/women_gallery11</li></ol>', NULL, '2025-05-21 00:35:34', '2025-05-21 01:36:01'),
(11, 'Google Pay', '1702', '31105250097070', 'gpay-11258991017@okbizaxis', 'Wallet', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amount deducted for following transactions ids 0000104813061359,0000104813112530\nrespectively \n2000,1850', NULL, '2025-05-21 01:08:00', '2025-05-21 01:35:47'),
(12, 'BharatPe', '1704', '31105250097070', 'Bharat PE', 'Wallet', 'BHARATPE.8K0Z0J8R4A02004@fbpe', NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Transaction ID 104772613411</p>', NULL, '2025-05-21 01:53:50', '2025-05-21 01:55:58'),
(13, 'Kotak Bank', '1714', '31105250097070', '5245443704', 'Bank Account', '5245443704', NULL, 'Money Transfer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-21 07:10:19', '2025-05-21 07:10:19'),
(14, NULL, NULL, '31101240008713', '', NULL, 'CC-4271 2452 0865 8232	', '401654314468', 'Money Transfer', '16/01/2024 12:00:00 AM', NULL, NULL, '17/01/2024 00:17:AM', NULL, 49000.00, NULL, 49000.00, NULL, NULL, 'Others', '2', '', '', '809 debited as convenience fees', 'CRED', '2025-05-22 02:32:39', '2025-05-22 02:32:39'),
(15, NULL, NULL, '31101240008713', '', NULL, 'CC-4271 2452 0865 8232	', '401653854683', 'Money Transfer', '16/01/2024 12:00:00 AM', NULL, NULL, '17/01/2024 00:20:AM', NULL, 48000.00, NULL, 48000.00, NULL, NULL, 'Others', '2', '', '', '864 debited as convenience fees', 'CRED', '2025-05-22 02:32:39', '2025-05-22 02:32:39'),
(16, NULL, NULL, '31101240008713', '', NULL, 'CC-4271 2452 0865 8232	', '401654165562', 'Money Transfer', '16/01/2024 12:00:00 AM', NULL, NULL, '17/01/2024 00:22:AM', NULL, 49000.00, NULL, 49000.00, NULL, NULL, 'PhonePe', '2', '', '', '607 debited as convenience fees', 'CRED', '2025-05-22 02:32:39', '2025-05-22 02:32:39'),
(17, NULL, NULL, '31101240008713', 'Indusind bank', 'Bank Account', '401654165562', '401654165562', 'Money Transfer', NULL, NULL, NULL, '17/01/2024 12:50:PM', NULL, 49000.00, NULL, 49000.00, NULL, NULL, 'IndusInd Bank', '3', '', '', '<p>8639053189@ybl</p>', 'PhonePe', '2025-05-22 02:32:39', '2025-05-22 02:34:50'),
(18, 'CRED', '1715', '31101240008713', 'CRED', 'Wallet', NULL, '401615478069', 'Money Transfer', NULL, NULL, NULL, '18/01/2024 16:32:PM', NULL, 49607.00, NULL, 49607.00, NULL, NULL, 'DREAMPLUG PAYTECH SOLUTIONS PVT LTD', '1', '', '', '<p>Account No:89054336 Transaction Id:401614162335 Account No:DREMG82CYBS2415&nbsp; Transaction Id:401615478069</p>', 'IndusInd Bank', '2025-05-22 02:32:39', '2025-05-22 03:40:49'),
(19, NULL, NULL, '31101240008713', 'CRED', 'Wallet', NULL, '99999999', 'Money Transfer', NULL, NULL, NULL, '18/01/2024 16:35:PM', NULL, 49809.00, NULL, 49809.00, NULL, NULL, 'DREAMPLUG PAYTECH SOLUTIONS PVT LTD', '1', '', '', 'merchant is Dreamplug Paytech Soluti 400061 IN and TERMINAL ID 99999999 AND AUTH CODE 430374 AND ACQUIRER REFERNCE NUMBER 74056634017401614132327', 'IndusInd Bank', '2025-05-22 02:32:39', '2025-05-22 02:33:39'),
(20, 'HDFC Bank', '1716', '31101240008713', 'HDFC Bank', 'Bank Account', NULL, '401616800857', 'Money Transfer', NULL, NULL, NULL, '18/01/2024 16:39:PM', NULL, 36000.00, NULL, 36000.00, NULL, NULL, 'HDFC Bank', '1', '', '', 'CREDIT CARD  4271245208658232 merchant is PAYZAPP WALLET MUMBAI IN and Merchant ID PAYZAPPW7495373 TERMINAL ID 75084735 AND AUTH CODE 144701 AND ACQUIRER BANK IS HDFC BANK', 'IndusInd Bank', '2025-05-22 02:32:39', '2025-05-22 02:53:14'),
(21, NULL, NULL, '31101240008713', 'HDFC Bank', 'Bank Account', NULL, '75084735', 'Money Transfer', NULL, NULL, NULL, '18/01/2024 16:42:PM', NULL, 64000.00, NULL, 64000.00, NULL, NULL, 'HDFC Bank', '1', '', '', 'CREDIT CARD 4271245208658232 merchant is PAYZAPP WALLET MUMBAI IN and Merchant ID PAYZAPPW7495373 TERMINAL ID 75084735 AND AUTH CODE 240672 AND ACQUIRER BANK IS HDFC BANK', 'IndusInd Bank', '2025-05-22 02:32:39', '2025-05-22 02:35:12'),
(22, NULL, NULL, '31101240008713', 'PAYZAPPW7495373', NULL, '75084735', '401616800857', 'Money Transfer', '16/01/2024 12:00:00 AM', NULL, NULL, '18/01/2024 17:10:PM', NULL, 40161680.00, NULL, 100000.00, NULL, NULL, 'Others', '2', '', '', 'CREDIT CARD 4271245208658232 merchant is PAYZAPP WALLET MUMBAI IN and Merchant ID PAYZAPPW7495373 TERMINAL ID 75084735 AND AUTH CODE 144701 AND ACQUIRER BANK IS HDFC BANK', 'HDFC Bank', '2025-05-22 02:32:39', '2025-05-22 02:32:39'),
(23, NULL, NULL, '31101240008713', 'CRED', 'Wallet', NULL, '401614162335', 'Money Transfer', NULL, NULL, NULL, '18/01/2024 21:16:PM', NULL, 48864.00, NULL, 48864.00, NULL, NULL, 'DREAMPLUG PAYTECH SOLUTIONS PVT LTD', '1', '', '', 'CREDIT CARD 4271245208658232 merchant is Dreamplug Paytech Soluti 400061 IN and TERMINAL ID 89054336 AND AUTH CODE 619896 AND ACQUIRER BANK IS HDFC BANK', 'IndusInd Bank', '2025-05-22 02:32:39', '2025-05-22 02:34:19'),
(24, NULL, NULL, '31101240008713', '89054336', NULL, '401614162335', '401653854683', 'Money Transfer', '16/02/2024 12:00:00 AM', NULL, NULL, '20/05/2024 16:49:PM', NULL, 48000.00, NULL, 48000.00, NULL, NULL, 'Others', '2', '', '', 'Transaction is made towards the Benf Name SHAHIDA PARVEEN from the VPA 8509406202@indie', 'CRED', '2025-05-22 02:32:39', '2025-05-22 02:32:39'),
(25, NULL, NULL, '31105250093823', '', NULL, 'CCNO4035625703678008', 'PB0147273669', 'Money Transfer', '13/05/2025 10:00:00 AM', NULL, NULL, '13/05/2025 11:03:AM', NULL, 204460.40, NULL, 204460.40, NULL, NULL, 'Axis Bank', '2', 'UTIB0000246', '', 'T2505122159462218433033, The info shared is a settlement towards the merchant account. Please trace the settled transaction in the provided bank account using the settlement UTR, date, and time of the transaction. The amount provided is the transaction amount, not the settlement amount. Merchant Name: BharatNXT, Merchant Phone: 8586851141, Merchant Order ID: PP21_1965407_1747067386, Merchant Transaction ID: OM2505122159461227161004', 'PhonePe', '2025-05-22 04:01:45', '2025-05-22 04:01:45'),
(26, NULL, NULL, '31105250093823', '', NULL, 'CCNO4035625703678008', 'PB0147273669', 'Money Transfer', '13/05/2025 10:00:00 AM', NULL, NULL, '13/05/2025 11:07:AM', NULL, 180947.45, NULL, 180947.45, NULL, NULL, 'Axis Bank', '2', 'UTIB0000246', '', 'T2505122201090428952488, The info shared is a settlement towards the merchant account. Please trace the settled transaction in the provided bank account using the settlement UTR, date, and time of the transaction. The amount provided is the transaction amount, not the settlement amount. Merchant Name: BharatNXT, Merchant Phone: 8586851141, Merchant Order ID: PP21_1972340_1747067468, Merchant Transaction ID: OM2505122201089398768755', 'PhonePe', '2025-05-22 04:01:45', '2025-05-22 04:01:45'),
(27, 'ICICI BANK', '1717', '31105250093823', 'ICICI BANK', 'Credit Card', NULL, '513216187423', 'Money Transfer', '2025-12-05', NULL, NULL, '13/05/2025 11:11:AM', NULL, 204460.40, NULL, 204460.40, NULL, NULL, 'PhonePe', '1', '', '', 'Card no.-4035625703678008 Amount-204460/- Auth id-281074 Pos id-ICIS2I01 Acquirer id-467872 Merchant name-Phonepe', 'ICICI Bank', '2025-05-22 04:01:45', '2025-05-22 04:03:17'),
(28, NULL, NULL, '31105250093823', '', NULL, '', '513216287893', 'Money Transfer', '12/05/2025 11:11:00 AM', NULL, NULL, '13/05/2025 11:13:AM', NULL, 180947.45, NULL, 180947.45, NULL, NULL, 'PhonePe', '1', '', '', 'Card no.-4035625703678008 Amount-180947/- Auth id-818806 Pos id-87023894 Acquirer id-476651 Merchant name-Ing Phonepe recharge', 'ICICI Bank', '2025-05-22 04:01:45', '2025-05-22 04:01:45'),
(29, 'Google Pay', '1771', '31105250097070', 'gpay-11258991017@okbizaxis', 'Wallet', NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>We need the merchant bank account number for further investigation&nbsp;</p>', NULL, '2025-05-27 00:32:12', '2025-05-27 00:33:03'),
(30, 'KARUR VYSYA BANK', '1772', '31105250097070', '0705', 'Bank Account', '513419320798', NULL, 'Money Transfer', '2025-05-14', NULL, NULL, NULL, NULL, 80500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>We request your assistance in retrieving the account details associated with the account ID ending in <strong>0705</strong>, linked to <strong>branch KVBL00004930</strong>, for a transaction settled on <strong>14-May-2025 at 19:10:02</strong>.The <strong>settlement RRN</strong> is <strong>513419320798</strong>, and the <strong>settled amount</strong> is INR 8<strong>0,500</strong>. Based on our preliminary investigation, the account appears to be under the name <strong>Pandey Chat Bhandar</strong>.Kindly verify and share the complete account information at the earliest for further processing.</p>', NULL, '2025-05-27 00:39:07', '2025-05-27 00:40:42'),
(31, 'Kotak Bank', '1783', '31105250097070', '5448680661', 'Bank Account', 'MB998479697388', NULL, 'Money Transfer', '2025-05-17', NULL, NULL, NULL, NULL, 40000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Account Transaction Details from May 1st 2025 to till date</p>', NULL, '2025-05-27 06:34:16', '2025-05-27 06:35:39'),
(32, 'Bank of India', '1784', '31105250097070', '911310100015390', 'Bank Account', '513719445374', NULL, 'Money Transfer', '2025-05-17', NULL, NULL, NULL, NULL, 36200.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Account Transaction Details from May 1st 2025 to till date</p>', NULL, '2025-05-27 06:37:01', '2025-05-27 06:37:01'),
(33, 'Axis Bank', '1785', '31105250097070', '924020009210052', 'Bank Account', '807567990828', NULL, 'Money Transfer', '2025-05-17', NULL, NULL, NULL, NULL, 40000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Account Transaction Details from May 1st 2025 to till date</p>', NULL, '2025-05-27 06:38:29', '2025-05-27 06:38:29'),
(34, 'Bank of Baroda ', '1786', '31105250097070', '32180100012090', 'Bank Account', '513719302541', NULL, 'Money Transfer', '2025-05-17', NULL, NULL, NULL, NULL, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Account Transaction Details from May 1st 2025 to till date</p>', NULL, '2025-05-27 06:39:51', '2025-05-27 06:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1747906363),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1747906363;', 1747906363),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:2;', 1748417491),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1748417491;', 1748417491);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nccrp_no` longtext DEFAULT NULL,
  `application_date` datetime DEFAULT NULL,
  `acknowledgement_no` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `complainant_name` varchar(255) NOT NULL,
  `complainant_mobile` varchar(255) NOT NULL,
  `complainant_email` varchar(255) DEFAULT NULL,
  `complainant_address` text DEFAULT NULL,
  `complainant_pincode` varchar(255) NOT NULL,
  `police_station` varchar(255) NOT NULL,
  `fraud_amount` decimal(10,2) DEFAULT 0.00,
  `lean_amount` decimal(10,2) DEFAULT 0.00,
  `status` enum('pending','assigned','in_progress','resolved','closed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `nccrp_no`, `application_date`, `acknowledgement_no`, `category`, `sub_category`, `complainant_name`, `complainant_mobile`, `complainant_email`, `complainant_address`, `complainant_pincode`, `police_station`, `fraud_amount`, `lean_amount`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '12121', '2025-05-16 00:00:00', '31102250038956', 'Online Financial Fraud', 'UPI Related Frauds', 'BHAVESHBHAI DUDHAT', '9879288855', NULL, NULL, '396445', ' CYBER CRIME, Navsari', 150000.00, 25000.00, 'pending', '2025-05-16 02:02:56', '2025-05-28 03:42:27', '2025-05-28 03:42:27'),
(2, NULL, '2025-05-16 14:37:38', '311022500389561', 'Online Financial Fraud', 'UPI Related Frauds', 'aBHISHEK DUDHAT', '9879288855', NULL, NULL, '396445', ' CYBER CRIME, Navsari', 0.00, 0.00, 'pending', '2025-05-16 03:38:22', '2025-05-28 03:42:27', '2025-05-28 03:42:27'),
(3, '906/24', '2025-05-11 00:00:00', '31105240069063', 'Online Financial Fraud', 'Credit Card Fraud', 'Rajeshbhai', '9924616553', NULL, NULL, '396060', 'KHERGAM', 253226.11, 64555.00, 'pending', '2025-05-17 01:47:15', '2025-05-28 03:42:27', '2025-05-28 03:42:27'),
(4, '17/2024', '2023-12-24 00:00:00', '31112230177567', 'Online Financial Fraud', 'UPI Related Frauds', 'rohit tandel', '8153904045', NULL, NULL, '396436', 'maroli', 130000.00, NULL, 'pending', '2025-05-17 03:50:36', '2025-05-28 03:42:27', '2025-05-28 03:42:27'),
(5, '99/2025', '2025-05-18 00:00:00', '31105250097070', 'Online Financial Fraud', 'Credit Card Fraud', 'PALAK SHAH', '9054151416', NULL, NULL, '396445', 'Navsari', 116036.00, NULL, 'pending', '2025-05-19 00:32:30', '2025-05-19 00:32:30', NULL),
(6, '93/2025', '2025-05-14 00:00:00', '31105250093823', 'Online Financial Fraud', 'Credit Card Fraud', 'Ashish Modi', '9998615133', NULL, NULL, '396427', 'NAVSARI RURAL', 385407.85, 0.00, 'pending', '2025-05-19 01:21:54', '2025-05-19 01:21:54', NULL),
(7, '121/2024', '2024-01-16 00:00:00', '31101240008713', 'Online Financial Fraud', 'Credit Card Fraud', 'Minesh Patel', '7016180049', NULL, NULL, '396445', 'NAVSARI TOWN', 248000.00, NULL, 'pending', '2025-05-22 02:32:24', '2025-05-22 02:32:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `case_user`
--

CREATE TABLE `case_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_reports`
--

CREATE TABLE `daily_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(255) NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `work_done` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_reports`
--

INSERT INTO `daily_reports` (`id`, `user_id`, `date`, `day`, `from_time`, `to_time`, `work_done`, `created_at`, `updated_at`) VALUES
(1, '1', '2025-05-12', 'Monday', '10:30:00', '18:10:00', 'Developing CRM', '2025-05-28 02:01:58', '2025-05-28 02:05:24'),
(2, '1', '2025-05-13', 'Tuesday', '10:30:00', '18:10:00', 'CRM Development and Studying portals', '2025-05-28 02:13:15', '2025-05-28 02:18:06'),
(3, '1', '2025-05-14', 'Wednesday', '10:30:00', '17:45:00', 'CRM Development and Studying portals', '2025-05-28 02:15:32', '2025-05-28 02:17:59'),
(4, '1', '2025-05-15', 'Thursday', '10:30:00', '18:00:00', 'Importing Bank Trails in CRM', '2025-05-28 02:15:35', '2025-05-28 02:17:52'),
(5, '1', '2025-05-16', 'Friday', '10:30:00', '18:00:00', 'Print Reports from CRM', '2025-05-28 02:16:28', '2025-05-28 02:17:47'),
(6, '1', '2025-05-17', 'Saturday', '10:30:00', '18:10:00', 'New Reports Setup', '2025-05-28 02:17:16', '2025-05-28 02:17:38'),
(7, '1', '2025-05-19', 'Monday', '11:00:00', '18:10:00', 'Working on Accused Profile and Making Transactions Trails', '2025-05-28 02:18:13', '2025-05-28 02:19:02'),
(8, '1', '2025-05-20', 'Tuesday', '10:00:00', '18:10:00', 'Mailing to Banks and Getting Info', '2025-05-28 02:20:33', '2025-05-28 02:25:47'),
(9, '1', '2025-05-21', 'Wednesday', '10:30:00', '18:10:00', 'Working on Designs and Logo for Cyber', '2025-05-28 02:25:04', '2025-05-28 02:25:37'),
(10, '1', '2025-05-21', 'Wednesday', '20:45:00', '22:30:00', 'Working on Award Design', '2025-05-28 02:26:01', '2025-05-28 02:26:34'),
(12, '1', '2025-05-22', 'Thursday', '10:30:00', '18:10:00', 'Working on Follow Up emails and Case of Palak Shah', '2025-05-28 02:30:13', '2025-05-28 02:30:13'),
(13, '1', '2025-05-23', 'Friday', '10:30:00', '18:10:00', 'Working on Case of Palak Shah', '2025-05-28 02:30:40', '2025-05-28 02:30:40'),
(14, '1', '2025-05-26', 'Monday', '10:30:00', '18:10:00', 'Working on Case of Palak Shah and Making Transactions and Sequence File', '2025-05-28 02:31:50', '2025-05-28 02:31:50'),
(15, '1', '2025-05-27', 'Tuesday', '10:30:00', '18:10:00', 'Working on Case of Palak Shah Accused Profile', '2025-05-28 03:43:29', '2025-05-28 03:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fehrists`
--

CREATE TABLE `fehrists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` varchar(255) NOT NULL,
  `details` longtext DEFAULT NULL,
  `action_date` date DEFAULT NULL,
  `received_info_dates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`received_info_dates`)),
  `details_received_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fehrists`
--

INSERT INTO `fehrists` (`id`, `case_id`, `details`, `action_date`, `received_info_dates`, `details_received_date`, `created_at`, `updated_at`) VALUES
(1, '5', 'First Notice', '2025-05-20', '[{\"reminder_no\":\"1\",\"reminder_date\":\"2025-05-20\"},{\"reminder_no\":\"2\",\"reminder_date\":\"2025-05-21\"}]', NULL, '2025-05-20 01:08:35', '2025-05-20 01:57:28'),
(2, '5', 'Mail Sent to Kotak Bank', '2025-05-21', '[]', NULL, '2025-05-21 02:16:07', '2025-05-21 02:16:07'),
(3, '5', 'Mail Sent to Mobikwik', '2025-05-21', '[]', NULL, '2025-05-21 02:24:25', '2025-05-21 02:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_01_01_000001_create_cases_table', 2),
(5, '2024_01_01_000002_create_case_user_table', 2),
(6, '2024_01_02_000001_create_accused_profiles_table', 3),
(7, '2025_05_16_124855_create_bank_transactions_table', 4),
(8, '2025_05_20_062155_create_fehrists_table', 5),
(9, '2025_05_27_080014_create_settings_table', 6),
(10, '2025_05_28_072117_create_daily_reports_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('69j17Zusaqq56ZA3YtEMJ748HSF2ne66wtGsPFWx', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRHk4WFlGVHZOYlB0bzhwZU1Hc3JrZ3ZwY0Nqb29hUGJXeWFRcVF6VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXBvcnRzL3ZpZXc/ZnJvbT0yMDI1LTA1LTEyJnRvPTIwMjUtMDUtMjgmdXNlcj0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiR5SlVjcnI2ZGRFejNqSE5oVzlFYjB1Uk82ODlnVlpyRzVFdlNEckpJYmZZWTJzU05WOWxxMiI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1748425768),
('EgpwtIwtXO0OR5hZH2Bxk3Rvwb7zRy8E98nkoneG', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoialN3d1NVRzgwVmdtSklleHkwVzI5OXZsWFVzMDlwaEF3QmtCVU1MOCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjEzOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2RhaWx5LXJlcG9ydHM/dGFibGVGaWx0ZXJzJTVCZGF0ZV9yYW5nZSU1RCU1QmZyb20lNUQ9MjAyNS0wNS0xMiZ0YWJsZUZpbHRlcnMlNUJkYXRlX3JhbmdlJTVEJTVCdG8lNUQ9MjAyNS0wNS0xMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiR5SlVjcnI2ZGRFejNqSE5oVzlFYjB1Uk82ODlnVlpyRzVFdlNEckpJYmZZWTJzU05WOWxxMiI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1748420165);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_logo` varchar(255) DEFAULT NULL,
  `site_favicon` varchar(255) DEFAULT NULL,
  `email_from_name` varchar(255) NOT NULL,
  `email_from_address` varchar(255) NOT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `smtp_encryption` varchar(255) DEFAULT NULL,
  `mail_mailer` varchar(255) NOT NULL DEFAULT 'smtp',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_logo`, `site_favicon`, `email_from_name`, `email_from_address`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`, `smtp_encryption`, `mail_mailer`, `created_at`, `updated_at`) VALUES
(1, 'CyberCrime Navsari', NULL, NULL, 'Cyber Crime Police Station Navsari', 'pi-cyber-nav@gujarat.gov.in', 'smtp.office365.com', '587', 'pi-cyber-nav@gujarat.gov.in', 'Cyber@2425', 'tls', 'smtp', '2025-05-27 02:36:48', '2025-05-27 04:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abhishek Jain', 'abhishek@cyber.in', NULL, '$2y$12$yJUcrr6ddEz3jHNhW9Eb0uRO689gVZrG5EvSDrJIbfYY2sSNV9lq2', NULL, '2025-05-16 01:05:54', '2025-05-28 02:20:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accused_profiles`
--
ALTER TABLE `accused_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accused_profiles_case_id_foreign` (`case_id`);

--
-- Indexes for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_transactions_case_id_index` (`outward_no`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cases_acknowledgement_no_unique` (`acknowledgement_no`);

--
-- Indexes for table `case_user`
--
ALTER TABLE `case_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `case_user_case_id_user_id_unique` (`case_id`,`user_id`),
  ADD KEY `case_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `daily_reports`
--
ALTER TABLE `daily_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fehrists`
--
ALTER TABLE `fehrists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accused_profiles`
--
ALTER TABLE `accused_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `case_user`
--
ALTER TABLE `case_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_reports`
--
ALTER TABLE `daily_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fehrists`
--
ALTER TABLE `fehrists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accused_profiles`
--
ALTER TABLE `accused_profiles`
  ADD CONSTRAINT `accused_profiles_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `cases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `case_user`
--
ALTER TABLE `case_user`
  ADD CONSTRAINT `case_user_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `cases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `case_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
