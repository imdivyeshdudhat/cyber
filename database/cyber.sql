-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2025 at 12:48 PM
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
(2, 2, '1. SINGH ENTERPRISES (Bank KYC) 2. M/S MANOJ ASSOCIATES (C-Trace PAN)', 'accused_photos/01JVC5SHH4Q9NGBPVCYJY4XCMJ.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ETCPS5761M', NULL, '[{\"platform\":\"fACENOOK\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/cyber-cases\\/2\\/edit\"},{\"platform\":\"iNSTA\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/cyber-cases\\/2\\/edit\"}]', NULL, NULL, '[{\"name\":\"aBHI\",\"relation\":\"sISTER\"},{\"name\":null,\"relation\":null}]', NULL, NULL, NULL, NULL, NULL, '[]', '2025-05-16 03:41:20', '2025-05-16 03:43:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_transactions`
--

CREATE TABLE `bank_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `bank_transactions` (`id`, `outward_no`, `acknowledgement_no`, `account_id`, `info_type`, `transaction_id`, `transaction_id_2`, `transaction_type`, `transaction_date`, `put_on_hold_date`, `withdrawal_date`, `date_of_action`, `withdrawal_amount`, `transaction_amount`, `put_on_hold_amount`, `disputed_amount`, `atm_id`, `atm_location`, `bank_name`, `layer`, `ifsc_code`, `reference_no`, `remarks`, `action_taken_by_bank`, `created_at`, `updated_at`) VALUES
(1, NULL, '31105240069063', '55550110552849', NULL, '413218500662', NULL, 'ATM Withdrawal', NULL, NULL, '11/05/2024 00:00:AM', '12/05/2024 12:24:PM', 40000.00, NULL, NULL, 0.00, ' ATM ID :-DE30440000000000', 'Place of ATM :-OPP TIRATH MANSION', NULL, NULL, NULL, '', '413218313329 413218313330 413218313331 413218313332', 'Federal Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(2, NULL, '31105240069063', '55550110552849', NULL, '413212499121', NULL, 'ATM Withdrawal', NULL, NULL, '11/05/2024 00:00:AM', '12/05/2024 14:35:PM', 4000.00, NULL, NULL, 0.00, ' ATM ID :-CN144701', 'Place of ATM :-GROUND FLOOR,HERO HOUSE', NULL, NULL, NULL, '', '2247', 'Federal Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(3, NULL, '31105240069063', '1360010000002673', NULL, '413212914688', NULL, 'ATM Withdrawal', NULL, NULL, '11/05/2024 00:00:AM', '15/05/2024 08:27:AM', 500.00, NULL, NULL, 0.00, ' ATM ID :-NB304400', 'Place of ATM :-HOTEL AMRIT STATTION RORANCHI', NULL, NULL, NULL, '', 'Withdrawal through ATM DA 186.11', 'Utkarsh Small Finance Bank Limited', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(4, NULL, '31105240069063', NULL, 'Bank Account', 'CD 4069775018297090	', '413218492032', 'Money Transfer', '2024-11-05', NULL, NULL, '12/05/2024 11:47:AM', NULL, 50000.00, NULL, 50000.00, NULL, NULL, 'State Bank of India', '2', 'SBIN0018825', '', NULL, 'Mobikwik', '2025-05-17 03:27:24', '2025-05-17 04:52:25'),
(5, NULL, '31105240069063', '', NULL, 'CD 4069775018297090	', '413294033144', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 11:47:AM', NULL, 48000.00, NULL, 48000.00, NULL, NULL, 'Paytm', '2', '', '', '', 'Mobikwik', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(6, NULL, '31105240069063', '', NULL, 'CD 4069775018297090	', '413294035420', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 11:47:AM', NULL, 50000.00, NULL, 50000.00, NULL, NULL, 'Paytm', '2', '', '', '', 'Mobikwik', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(7, NULL, '31105240069063', '', NULL, 'CD 4069775018297090	', '413218496809', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 11:47:AM', NULL, 50000.00, NULL, 50000.00, NULL, NULL, 'IndusInd Bank', '2', 'INDB0000132', '', '', 'Mobikwik', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(8, NULL, '31105240069063', '', NULL, 'CD 4069775018297090	', '413218500662', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 11:47:AM', NULL, 48000.00, NULL, 48000.00, NULL, NULL, 'Federal Bank', '2', 'FDRL0005555', '', '', 'Mobikwik', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(9, NULL, '31105240069063', ' -:', NULL, '', '413212847739', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 12:17:PM', NULL, 51444.10, NULL, 51444.10, NULL, NULL, 'Mobikwik', '1', '', '', 'Auth - 128861, Necessary steps have been applied on the said account. For further information, please reach out to us at notice_liabilitiesops@aubank.in', 'AU Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(10, NULL, '31105240069063', ' -:', NULL, '', '413212410695', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 12:17:PM', NULL, 49416.00, NULL, 49416.00, NULL, NULL, 'Mobikwik', '1', '', '', 'Auth - 123559, Necessary steps have been applied on the said account. For further information, please reach out to us at notice_liabilitiesops@aubank.in', 'AU Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(11, NULL, '31105240069063', ' -:', NULL, '', '404132458914485', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 12:17:PM', NULL, 49416.00, NULL, 49416.00, NULL, NULL, 'Mobikwik', '1', '', '', 'Auth - 123559, Necessary steps have been applied on the said account. For further information, please reach out to us at notice_liabilitiesops@aubank.in', 'AU Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(12, NULL, '31105240069063', ' -:', NULL, '', '413212210004', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 12:17:PM', NULL, 51475.00, NULL, 51475.00, NULL, NULL, 'Mobikwik', '1', '', '', 'Auth - 230972, Necessary steps have been applied on the said account. For further information, please reach out to us at notice_liabilitiesops@aubank.in', 'AU Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(13, NULL, '31105240069063', '201004688137', NULL, '413218496809', '413212267784', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 14:19:PM', NULL, 30000.00, NULL, 30000.00, NULL, NULL, 'HDFC Bank', '3', '', '', 'UPI/413212267784/DR/UOSE/HDFC/98-5@okhdfcbank/UPI', 'IndusInd Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(14, NULL, '31105240069063', '201004688137', NULL, '413218496809', '413212499121', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 14:19:PM', NULL, 20000.00, NULL, 20000.00, NULL, NULL, 'Federal Bank', '3', '', '', 'UPI/413212499121/DR/SUDI/FDRL/55550110552849/UPI', 'IndusInd Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(15, NULL, '31105240069063', '55550110552849', NULL, '413212499121', '413212625485', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 14:39:PM', NULL, 9000.00, NULL, 9000.00, NULL, NULL, 'Yes Bank', '4', 'YESB0YBLUPI', '', 'UPIOUT/413212625485/Q556997252@ybl/UPI/4812', 'Federal Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(16, NULL, '31105240069063', '55550110552849', NULL, '413212499121', '413212914688', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 14:39:PM', NULL, 500.00, NULL, 500.00, NULL, NULL, 'Utkarsh Small Finance Bank Limited', '4', 'utks0001360', '', 'UPIOUT/413212914688/1360010000002673@utks000/0000', 'Federal Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(17, NULL, '31105240069063', '55550110552849', NULL, '413212499121', '413212960487', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 14:39:PM', NULL, 9500.00, NULL, 6500.00, NULL, NULL, 'Utkarsh Small Finance Bank Limited', '4', 'UTKS0001360', '', 'UPIOUT/413212960487/1360010000002673@UTKS000/0000', 'Federal Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(18, NULL, '31105240069063', '002261100000025', NULL, '413212625485', '413212625485', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 14:40:PM', NULL, 9000.00, NULL, 9000.00, NULL, NULL, 'PhonePe', '5', '', '', 'UPIOUT/413212625485/Q556997252@ybl/UPI/4812', 'Yes Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(19, NULL, '31105240069063', '50100707054743', NULL, '413212267784', '413212267784', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 14:42:PM', NULL, 30070.00, NULL, 30000.00, NULL, NULL, 'Others', '4', '', '', '', 'HDFC Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(20, NULL, '31105240069063', '55550110552849', NULL, '413218500662', '413213536183', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '12/05/2024 18:18:PM', NULL, 50000.00, NULL, 5000.00, NULL, NULL, 'Punjab National Bank ', '3', '', '', 'POS/413213536183/KALYAN JEWELLERS KALY/19 21', 'Federal Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(21, NULL, '31105240069063', '42832301090', NULL, '413218492032', '413239281384', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '13/05/2024 09:05:AM', NULL, 14922.00, NULL, 14922.00, NULL, NULL, 'Indian Overseas Bank', '3', '', '', '', 'State Bank of India', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(22, NULL, '31105240069063', '42832301090', NULL, '413218492032', '413239355756', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '13/05/2024 09:05:AM', NULL, 13300.00, NULL, 13300.00, NULL, NULL, 'Bank of India', '3', '', '', '', 'State Bank of India', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(23, NULL, '31105240069063', '42832301090', NULL, '413218492032', '413239501405', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '13/05/2024 09:05:AM', NULL, 20520.00, NULL, 20520.00, NULL, NULL, 'Bank of India', '3', '', '', '', 'State Bank of India', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(24, NULL, '31105240069063', '002261100000025', NULL, '413212625485', 'AXNPN13376319539', 'Money Transfer', '12/05/2024 12:00:00 AM', NULL, NULL, '13/05/2024 12:23:PM', NULL, 15700.00, NULL, 9000.00, NULL, NULL, 'HDFC Bank', '6', 'HDFC0000719', '', 'This is a settlement transaction towards a merchant account', 'PhonePe', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(25, NULL, '31105240069063', '50200020249032', NULL, 'AXNPN13376319539', 'N133243035619000', 'Money Transfer', '12/05/2024 12:00:00 AM', NULL, NULL, '13/05/2024 12:25:PM', NULL, 9000.00, NULL, 9000.00, NULL, NULL, 'State Bank of India', '7', 'SBIN0001237', '', '', 'HDFC Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(26, NULL, '31105240069063', '1360010000002673', NULL, '413212960487', '413274856178', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 07:53:AM', NULL, 9000.00, NULL, 6500.00, NULL, NULL, 'IndusInd Bank', '5', 'INDB0000477', '', 'Money transfer through UPI', 'Utkarsh Small Finance Bank Limited', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(27, NULL, '31105240069063', '1360010000002673', NULL, '413212914688', '413274856178', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 08:28:AM', NULL, 9000.00, NULL, 313.89, NULL, NULL, 'IndusInd Bank', '5', 'INDB0000477', '', 'Money transfer through UPI', 'Utkarsh Small Finance Bank Limited', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(28, NULL, '31105240069063', '100216279228', NULL, '413274856178', '449859559067', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 09:48:AM', NULL, 2000.00, NULL, 2000.00, NULL, NULL, 'India Post Payments Bank', '6', 'IPOS0000001', '', '', 'IndusInd Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(29, NULL, '31105240069063', '100216279228', NULL, '413274856178', '449823565673', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 09:48:AM', NULL, 2000.00, NULL, 2000.00, NULL, NULL, 'India Post Payments Bank', '6', 'IPOS0000001', '', '', 'IndusInd Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(30, NULL, '31105240069063', '100216279228', NULL, '413274856178', '449856764263', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 09:48:AM', NULL, 2000.00, NULL, 2000.00, NULL, NULL, 'India Post Payments Bank', '6', 'IPOS0000001', '', '', 'IndusInd Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(31, NULL, '31105240069063', '100216279228', NULL, '413274856178', '413294359028', 'Money Transfer', '11/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 09:48:AM', NULL, 2000.00, NULL, 813.89, NULL, NULL, 'India Post Payments Bank', '6', 'IPOS0000001', '', '', 'IndusInd Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(32, NULL, '31105240069063', '009010567333', NULL, '449823565673', '450047684808', 'Money Transfer', '13/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 11:45:AM', NULL, 4000.00, NULL, 4000.00, NULL, NULL, 'Bank of Baroda ', '7', 'BARB0HARMUZ', '', 'UPI TXN ', 'India Post Payments Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(33, NULL, '31105240069063', '009010567333', NULL, '449856764263', '413589531016', 'Money Transfer', '14/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 11:46:AM', NULL, 2500.00, NULL, 2000.00, NULL, NULL, 'Yes Bank', '7', 'YESB0PTMUPI', '', 'UPI TXN ', 'India Post Payments Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(34, NULL, '31105240069063', '009010567333', NULL, '413294359028', '450027335141', 'Money Transfer', '13/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 11:47:AM', NULL, 1400.00, NULL, 813.00, NULL, NULL, 'Yes Bank', '7', 'YESB0YBLUPI', '', 'UPI TXN ', 'India Post Payments Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(35, NULL, '31105240069063', '001425000000051', NULL, '413589531016', '413589531016', 'Money Transfer', '14/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 11:47:AM', NULL, 2500.00, NULL, 2000.00, NULL, NULL, 'Paytm', '8', '', '', 'UPI TXN ', 'Yes Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(36, NULL, '31105240069063', '002261100000025', NULL, '450027335141', '450027335141', 'Money Transfer', '13/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 11:48:AM', NULL, 1400.00, NULL, 813.00, NULL, NULL, 'PhonePe', '8', '', '', 'UPI TXN ', 'Yes Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(37, NULL, '31105240069063', '002261100000025', NULL, '450027335141', 'AXNPN13596438968', 'Money Transfer', '14/05/2024 12:00:00 AM', NULL, NULL, '15/05/2024 16:44:PM', NULL, 3245.62, NULL, 813.00, NULL, NULL, 'State Bank of India', '9', 'SBIN0006447', '', 'This is a settlement transaction towards a merchant account', 'PhonePe', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(38, NULL, '31105240069063', '001425000000051', NULL, '413589531016', '413509810376', 'Money Transfer', '14/05/2024 12:00:00 AM', NULL, NULL, '16/05/2024 16:51:PM', NULL, 3150.00, NULL, 2000.00, NULL, NULL, 'Central Bank of India', '9', 'CBIN0280015', '', 'The whole amount of INR 3150/- was moved to Bank in which INR 2000/- was reported as fraudulent, Please take the necessary action. Should you require any further details, we request you to please write us back on cybercell@paytmpayments.com we shall be glad to assist you.', 'Paytm', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(39, NULL, '31105240069063', 'na', NULL, '413212210004', NULL, 'Other', '12/05/2024 12:53:02 PM', NULL, NULL, '12/05/2024 12:53:PM', NULL, 50000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Details are already shared in previous response', 'Mobikwik', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(40, NULL, '31105240069063', '00000800004', NULL, '413213536183', NULL, 'Other', '12/05/2024 09:39:44 PM', NULL, NULL, '12/05/2024 21:39:PM', NULL, 5000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Unable to fetch the details of the transaction due to incomplete/Incorrect account number and Transaction Id / UTR Number provided. Please provide correct account no. alongwith IFSC and Transaction Id / UTR Number', 'Punjab National Bank (including Oriental Bank of Commerce and United Bank of India)', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(41, NULL, '31105240069063', '480120110000743', NULL, '413239355756', NULL, 'Put on Hold', NULL, '13/05/2024 12:00:00 AM', NULL, '13/05/2024 09:30:AM', NULL, NULL, 13300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bank of India', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(42, NULL, '31105240069063', '483310110002398', NULL, '413239501405', NULL, 'Put on Hold', NULL, '13/05/2024 12:00:00 AM', NULL, '13/05/2024 09:31:AM', NULL, NULL, 20520.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bank of India', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(43, NULL, '31105240069063', '059033000000104', NULL, '413239281384', NULL, 'Put on Hold', NULL, '11/05/2024 12:00:00 AM', NULL, '13/05/2024 10:18:AM', NULL, NULL, 14922.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Indian Overseas Bank', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(44, NULL, '31105240069063', '10326698422', NULL, 'N133243035619000', NULL, 'Put on Hold', NULL, '14/05/2024 12:00:00 AM', NULL, '14/05/2024 07:55:AM', NULL, NULL, 9000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'State Bank of India', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(45, NULL, '31105240069063', '52910100003341', NULL, '450047684808', NULL, 'Put on Hold', NULL, '15/05/2024 12:00:00 AM', NULL, '15/05/2024 13:04:PM', NULL, NULL, 4000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bank of Baroda (Including Vijaya Bank and Dena Bank)', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(46, NULL, '31105240069063', '3309739892', NULL, '413509810376', NULL, 'Put on Hold', NULL, '16/05/2024 12:00:00 AM', NULL, '16/05/2024 17:08:PM', NULL, NULL, 2000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Central Bank of India', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(47, NULL, '31105240069063', '34528459247', NULL, 'AXNPN13596438968', NULL, 'Put on Hold', NULL, '17/05/2024 12:00:00 AM', NULL, '17/05/2024 08:17:AM', NULL, NULL, 813.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'State Bank of India', '2025-05-17 03:27:24', '2025-05-17 03:27:24'),
(60, NULL, '31112230177567', '5247328573', NULL, '320531372814', NULL, 'ATM Withdrawal', NULL, NULL, '24/07/2023 00:00:AM', '27/12/2023 11:05:AM', 20000.00, NULL, NULL, 0.00, ' ATM ID :-JAON2903', 'Place of ATM :-ATW/1866/Gopalpura Road JaipurRJIRajas240723/15:00', NULL, NULL, NULL, '', 'Disputed amount 10,000 FROM 20,000 withdrawn through ATM..', 'Kotak Mahindra Bank', '2025-05-17 03:58:23', '2025-05-17 03:58:23'),
(61, NULL, '31112230177567', '5247328573', NULL, '320531372814', NULL, 'ATM Withdrawal', NULL, NULL, '24/07/2023 00:00:AM', '27/12/2023 11:05:AM', 20000.00, NULL, NULL, 0.00, ' ATM ID :-JAON2903', 'Place of ATM :-ATW/1866/Gopalpura Road JaipurRJIRajas240723/15:01', NULL, NULL, NULL, '', 'Disputed amount withdrawn through ATM..', 'Kotak Mahindra Bank', '2025-05-17 03:58:23', '2025-05-17 03:58:23'),
(62, NULL, '31112230177567', '5247328573', NULL, '320531372814', NULL, 'ATM Withdrawal', NULL, NULL, '24/07/2023 00:00:AM', '27/12/2023 11:05:AM', 10000.00, NULL, NULL, 0.00, ' ATM ID :-JAON2903', 'Place of ATM :-ATW/1866/Gopalpura Road JaipurRJIRajas240723/15:02', NULL, NULL, NULL, '', 'Disputed amount withdrawn through ATM..', 'Kotak Mahindra Bank', '2025-05-17 03:58:23', '2025-05-17 03:58:23'),
(63, NULL, '31112230177567', '5247328573', NULL, '320516835126', NULL, 'ATM Withdrawal', NULL, NULL, '24/07/2023 00:00:AM', '27/12/2023 11:07:AM', 20000.00, NULL, NULL, 0.00, ' ATM ID :-JAON2903', 'Place of ATM :-ATW/1866/Gopalpura Road JaipurRJIRajas240723/14:58', NULL, NULL, NULL, '', 'Disputed amount withdrawn through ATM..', 'Kotak Mahindra Bank', '2025-05-17 03:58:23', '2025-05-17 03:58:23'),
(64, NULL, '31112230177567', '5247328573', NULL, '320516835126', NULL, 'ATM Withdrawal', NULL, NULL, '24/07/2023 00:00:AM', '27/12/2023 11:07:AM', 20000.00, NULL, NULL, 0.00, ' ATM ID :-JAON2903', 'Place of ATM :-ATW/1866/Gopalpura Road JaipurRJIRajas240723/14:59', NULL, NULL, NULL, '', 'Disputed amount withdrawn through ATM..', 'Kotak Mahindra Bank', '2025-05-17 03:58:23', '2025-05-17 03:58:23'),
(65, NULL, '31112230177567', '5247328573', NULL, '320516835126', NULL, 'ATM Withdrawal', NULL, NULL, '24/07/2023 00:00:AM', '27/12/2023 11:07:AM', 20000.00, NULL, NULL, 0.00, ' ATM ID :-JAON2903', 'Place of ATM :-ATW/1866/Gopalpura Road JaipurRJIRajas240723/15:00', NULL, NULL, NULL, '', 'Disputed amount withdrawn through ATM..', 'Kotak Mahindra Bank', '2025-05-17 03:58:23', '2025-05-17 03:58:23'),
(66, '1234', '31112230177567', ' -:29290100018455', 'Bank Account', '320516835126', '320516835126', 'Money Transfer', NULL, NULL, NULL, '26/12/2023 14:24:PM', NULL, 50000.00, NULL, 50000.00, NULL, NULL, 'Kotak Mahindra Bank', '1', '', '', NULL, 'Bank of Baroda (Including Vijaya Bank and Dena Bank)', '2025-05-17 03:58:23', '2025-05-17 04:08:12'),
(67, NULL, '31112230177567', ' -:29290100018455', NULL, '320531372814', '320531372814', 'Money Transfer', '24/07/2023 12:00:00 AM', NULL, NULL, '26/12/2023 14:28:PM', NULL, 40000.00, NULL, 40000.00, NULL, NULL, 'Kotak Mahindra Bank', '1', '', '', '', 'Bank of Baroda (Including Vijaya Bank and Dena Bank)', '2025-05-17 03:58:23', '2025-05-17 03:58:23'),
(68, NULL, '31112230177567', ' -:29290100018455', NULL, '320625897657', '320625897657', 'Money Transfer', '25/07/2023 12:00:00 AM', NULL, NULL, '26/12/2023 14:29:PM', NULL, 20000.00, NULL, 20000.00, NULL, NULL, 'Kotak Mahindra Bank', '1', '', '', '', 'Bank of Baroda (Including Vijaya Bank and Dena Bank)', '2025-05-17 03:58:23', '2025-05-17 03:58:23'),
(69, NULL, '31112230177567', '5247328573', NULL, '320625897657', '320615667305', 'Money Transfer', '25/07/2023 12:00:00 AM', NULL, NULL, '27/12/2023 11:01:AM', NULL, 6000.00, NULL, 6000.00, NULL, NULL, 'Paytm Payment Bank', '2', '', '', '', 'Kotak Mahindra Bank', '2025-05-17 03:58:23', '2025-05-17 03:58:23'),
(70, NULL, '31112230177567', '5247328573', NULL, '320625897657', '320617757055', 'Money Transfer', '25/07/2023 12:00:00 AM', NULL, NULL, '27/12/2023 11:01:AM', NULL, 5000.00, NULL, 5000.00, NULL, NULL, 'Paytm Payment Bank', '2', '', '', '', 'Kotak Mahindra Bank', '2025-05-17 03:58:23', '2025-05-17 03:58:23'),
(71, NULL, '31112230177567', '5247328573', NULL, '320625897657', '320619859268', 'Money Transfer', '25/07/2023 12:00:00 AM', NULL, NULL, '27/12/2023 11:01:AM', NULL, 9000.00, NULL, 9000.00, NULL, NULL, 'Paytm Payment Bank', '2', '', '', '', 'Kotak Mahindra Bank', '2025-05-17 03:58:23', '2025-05-17 03:58:23');

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
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1747474160),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1747474160;', 1747474160);

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
(1, '12121', '2025-05-16 00:00:00', '31102250038956', 'Online Financial Fraud', 'UPI Related Frauds', 'BHAVESHBHAI DUDHAT', '9879288855', NULL, NULL, '396445', ' CYBER CRIME, Navsari', 150000.00, 25000.00, 'pending', '2025-05-16 02:02:56', '2025-05-16 04:04:34', NULL),
(2, NULL, '2025-05-16 14:37:38', '311022500389561', 'Online Financial Fraud', 'UPI Related Frauds', 'aBHISHEK DUDHAT', '9879288855', NULL, NULL, '396445', ' CYBER CRIME, Navsari', 0.00, 0.00, 'pending', '2025-05-16 03:38:22', '2025-05-16 03:38:22', NULL),
(3, '906/24', '2025-05-11 00:00:00', '31105240069063', 'Online Financial Fraud', 'Credit Card Fraud', 'Rajeshbhai', '9924616553', NULL, NULL, '396060', 'KHERGAM', 253226.11, 64555.00, 'pending', '2025-05-17 01:47:15', '2025-05-17 01:47:15', NULL),
(4, '17/2024', '2023-12-24 00:00:00', '31112230177567', 'Online Financial Fraud', 'UPI Related Frauds', 'rohit tandel', '8153904045', NULL, NULL, '396436', 'maroli', 130000.00, NULL, 'pending', '2025-05-17 03:50:36', '2025-05-17 03:50:36', NULL);

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
(7, '2025_05_16_124855_create_bank_transactions_table', 4);

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
('eglABgoHN2QjZ6SyFt1ku1Ni8e9x8WPGfPsJs4yG', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiR2NrMFBkWTBxRjlPTkEzT3BZdWtDNWNPU1VoVlFzeUJMWm9od0RBcSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYmFuay10cmFuc2FjdGlvbnMvcHJpbnQvNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiR5SlVjcnI2ZGRFejNqSE5oVzlFYjB1Uk82ODlnVlpyRzVFdlNEckpJYmZZWTJzU05WOWxxMiI7czo4OiJmaWxhbWVudCI7YTowOnt9czo2OiJ0YWJsZXMiO2E6MTp7czo0MDoiQmFua1RyYW5zYWN0aW9uc1JlbGF0aW9uTWFuYWdlcl9wZXJfcGFnZSI7czoyOiIxMCI7fX0=', 1747477355);

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
(1, 'Cyber', 'abhishek@cyber.in', NULL, '$2y$12$yJUcrr6ddEz3jHNhW9Eb0uRO689gVZrG5EvSDrJIbfYY2sSNV9lq2', NULL, '2025-05-16 01:05:54', '2025-05-16 01:05:54');

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `case_user`
--
ALTER TABLE `case_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
