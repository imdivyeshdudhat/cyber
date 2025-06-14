-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2025 at 01:46 PM
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
  `case_id` bigint(20) UNSIGNED DEFAULT NULL,
  `accused_role` longtext DEFAULT NULL,
  `police_station` longtext DEFAULT NULL,
  `state` longtext DEFAULT NULL,
  `city` longtext DEFAULT NULL,
  `fir_no` longtext DEFAULT NULL,
  `fraud_amount` decimal(10,2) DEFAULT NULL,
  `lien_amount` decimal(10,2) DEFAULT NULL,
  `case_date` date DEFAULT NULL,
  `compliant_person` text DEFAULT NULL,
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

INSERT INTO `accused_profiles` (`id`, `case_id`, `accused_role`, `police_station`, `state`, `city`, `fir_no`, `fraud_amount`, `lien_amount`, `case_date`, `compliant_person`, `name`, `photo_path`, `date_of_birth`, `signature_path`, `addresses`, `business_name`, `business_type`, `business_addresses`, `mobile_numbers`, `email_addresses`, `aadhar_number`, `pan_number`, `gstin`, `social_media_profiles`, `fathers_name`, `mothers_name`, `family_members`, `devices`, `bank_accounts`, `ip_addresses`, `locations`, `bio`, `additional_info`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abhishek', 'accused_photos/01JVC1K6T7DBVEHERMA3GT8SV5.jpg', NULL, 'accused_signatures/01JVC1K6TFF6CMJ9F2WZ9HX89Q.jpeg', '[{\"address\":\"Navsari\",\"type\":\"Home\",\"source\":\"Home\"}]', NULL, NULL, '[{\"address\":null}]', '[{\"number\":null,\"label\":null,\"source\":null}]', '[{\"email\":null}]', NULL, NULL, NULL, '[{\"platform\":null,\"handle\":null,\"url\":null}]', NULL, NULL, '[{\"name\":null,\"relation\":null}]', '[{\"type\":null,\"identifier\":null}]', '[{\"account_number\":null,\"bank_name\":null}]', '[{\"ip\":null}]', '[{\"location\":null}]', NULL, '[{\"key\":null,\"value\":null}]', '2025-05-16 02:27:59', '2025-05-16 02:51:09', NULL),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1. SINGH ENTERPRISES (Bank KYC) 2. M/S MANOJ ASSOCIATES (C-Trace PAN)', 'accused_photos/01JVC5SHH4Q9NGBPVCYJY4XCMJ.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ETCPS5761M', NULL, '[{\"platform\":\"fACENOOK\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/cyber-cases\\/2\\/edit\"},{\"platform\":\"iNSTA\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/cyber-cases\\/2\\/edit\"}]', NULL, NULL, '[{\"name\":\"aBHI\",\"relation\":\"sISTER\"},{\"name\":null,\"relation\":null}]', NULL, NULL, NULL, NULL, NULL, '[]', '2025-05-16 03:41:20', '2025-05-16 03:43:43', NULL),
(3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abhishek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"platform\":null,\"url\":null}]', NULL, NULL, '[{\"name\":null,\"relation\":null}]', NULL, NULL, NULL, NULL, NULL, '[{\"key\":null,\"value\":null}]', '2025-05-19 07:28:00', '2025-05-19 07:28:00', NULL),
(4, NULL, 'Test', 'Navsari', 'Gujarat', 'Navsari', '123456', NULL, NULL, '2025-06-09', NULL, 'Test', NULL, '2025-06-09', NULL, NULL, NULL, NULL, NULL, '[{\"mobile\":\"1234567\",\"remarks\":\"542\",\"from_where\":null}]', '[{\"email\":\"test\",\"remarks\":\"tetst\",\"from_where\":\"tetst\"}]', NULL, NULL, NULL, '[{\"platform\":null,\"url\":null}]', NULL, NULL, '[{\"name\":\"test \",\"relation\":\"t3st\",\"mobile_no\":\"123e454\"},{\"name\":\"test 2\",\"relation\":\"test 2\",\"mobile_no\":\"test 2\"}]', NULL, '[{\"layer\":\"1\",\"transaction_date\":\"2025-06-09\",\"transaction_amount\":\"5000\",\"dispute_amount\":\"100\",\"bank_name\":\"HDFC\",\"bank_account_no\":\"200020202\",\"ifsc\":\"1234\"}]', NULL, '[{\"address\":\"b 109\",\"city\":\"Navsari\",\"district\":\"Navsari\",\"remarks\":\"Remarks\",\"state\":\"Andhra Pradesh\",\"from_where\":\"SDR\"}]', NULL, '[{\"key\":null,\"value\":null}]', '2025-06-09 02:55:34', '2025-06-09 04:58:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\AccusedProfile', 4, '212e26be-e51d-44de-ac06-816f2163f5e0', 'default', '1749182329121', '01JXA3QVBFMF19NNECRGXY7J8S.jpeg', 'image/jpeg', 'public', 'public', 136473, '[]', '[]', '[]', '[]', 1, '2025-06-09 04:58:23', '2025-06-09 04:58:23'),
(4, 'App\\Models\\FamilyMember', 1, '18fe3907-a12c-4ab1-89ca-c9b8ada68ee4', 'family_member_photos', 'splash-removebg-preview', 'splash-removebg-preview.png', 'image/png', 'public', 'public', 50711, '[]', '[]', '[]', '[]', 1, '2025-06-09 05:03:34', '2025-06-09 05:03:34'),
(7, 'App\\Models\\FamilyMember', 1, '28df56cb-9d86-4bfe-801b-8f41351f21be', 'default', 'Screenshot 2025-06-09 at 2.23.21 PM', '01JXA476HMSF1ZGCDP8M1ZS0SN.jpeg', 'image/jpeg', 'public', 'public', 676315, '[]', '[]', '[]', '[]', 2, '2025-06-09 05:06:46', '2025-06-09 05:06:46'),
(8, 'App\\Models\\FamilyMember', 2, '63753a7c-8169-48d4-b9e6-210bd463aa5f', 'default', 'WhatsApp Image 2025-06-09 at 11.50.42 AM', '01JXA4C17HJ9Z34F0X82NAGHSC.jpeg', 'image/jpeg', 'public', 'public', 88154, '[]', '[]', '[]', '[]', 1, '2025-06-09 05:09:24', '2025-06-09 05:09:24'),
(9, 'App\\Models\\AccusedProfile', 4, 'ec11e7e9-3240-45db-aab9-dbcdece7807c', 'default', 'WhatsApp Image 2025-06-09 at 11.50.42 AM', '01JXA4DJVZ2FTPY3TV97SSE56T.jpeg', 'image/jpeg', 'public', 'public', 88154, '[]', '[]', '[]', '[]', 2, '2025-06-09 05:10:15', '2025-06-09 05:10:15'),
(10, 'App\\Models\\AccusedProfile', 4, '78578cb2-2179-4414-9c3d-fda6d06114b1', 'default', 'Screenshot 2025-06-09 at 2.23.21 PM', '01JXA4DJW3CY5M80099WN68M2J.jpeg', 'image/jpeg', 'public', 'public', 676315, '[]', '[]', '[]', '[]', 3, '2025-06-09 05:10:15', '2025-06-09 05:10:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accused_profiles`
--
ALTER TABLE `accused_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accused_profiles`
--
ALTER TABLE `accused_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
