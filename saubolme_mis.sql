-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: srv-pleskdb24.ps.kz:3306
-- Время создания: Окт 10 2023 г., 22:00
-- Версия сервера: 10.6.11-MariaDB
-- Версия PHP: 8.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `saubolme_mis`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Activ_Regs`
--

CREATE TABLE `Activ_Regs` (
  `id` int(11) NOT NULL,
  `patient_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the Patient',
  `activ_type_id` int(11) NOT NULL COMMENT 'Activ_Types TABLE ID for Type of activity',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Activ_Regs`
--

INSERT INTO `Activ_Regs` (`id`, `patient_iin`, `activ_type_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '830430350473', 3, '2023-10-05 05:09:54', NULL, '2023-10-05 05:09:54'),
(2, '840719399121', 4, '2023-10-05 05:12:44', NULL, '2023-10-05 05:12:44'),
(3, '840719399121', 4, '2023-10-05 05:13:17', NULL, '2023-10-05 05:13:17'),
(4, '830430350473', 4, '2023-10-05 05:20:16', NULL, '2023-10-05 05:20:16'),
(5, '840719399121', 4, '2023-10-05 05:39:51', NULL, '2023-10-05 05:39:51');

-- --------------------------------------------------------

--
-- Структура таблицы `Activ_Types`
--

CREATE TABLE `Activ_Types` (
  `id` int(11) NOT NULL,
  `activ_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Activ Type Name',
  `activ_harm` int(11) DEFAULT NULL COMMENT 'Activ Type harm',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Activ_Types`
--

INSERT INTO `Activ_Types` (`id`, `activ_type`, `activ_harm`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'ACT_VH', NULL, '2023-09-22 07:16:00', NULL, NULL),
(2, 'ACT_H', NULL, '2023-09-22 07:38:07', NULL, NULL),
(3, 'ACT_N', NULL, '2023-09-22 07:38:21', NULL, NULL),
(4, 'ACT_E', NULL, '2023-09-22 07:38:35', NULL, NULL),
(5, 'ACT_VE', NULL, '2023-09-22 07:38:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Addresses`
--

CREATE TABLE `Addresses` (
  `id` int(11) NOT NULL,
  `owner_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the address owner',
  `is_person` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Person (1) or Organisation (0)',
  `address_type_id` int(11) NOT NULL COMMENT 'Address_Types TABLE ID for Type of Addreess',
  `country_id` int(11) NOT NULL COMMENT 'Countries TABLE ID for Country of Addreess',
  `province` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'State or privince of Address',
  `region` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Region of Address',
  `city` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'City of Address',
  `street` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Street of Address',
  `building` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Building of Address',
  `apartment` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Apartment of Address',
  `entrance` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Entrance of Address',
  `floor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Floor of Address',
  `add_info` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Additional Info of Address',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Addresses`
--

INSERT INTO `Addresses` (`id`, `owner_iin`, `is_person`, `address_type_id`, `country_id`, `province`, `region`, `city`, `street`, `building`, `apartment`, `entrance`, `floor`, `add_info`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '830430350473', 0, 1, 1, '', '', 'Алматы', 'Пушкина', '12312', '', NULL, '', '', '2023-09-17 20:35:57', NULL, '2023-09-17 20:35:57'),
(2, '830430350473', 0, 3, 1, 'Алматинская обл.', '', 'Алматы', 'Алматы', '54546', '', NULL, '', '', '2023-09-17 21:26:58', NULL, '2023-09-17 21:26:58'),
(3, '840719399121', 0, 3, 1, 'Алматинская область', '', 'Алматы', 'Тимирязева', '42', '403', NULL, '', '', '2023-09-17 22:14:12', NULL, '2023-09-17 22:14:12');

-- --------------------------------------------------------

--
-- Структура таблицы `Adress_Types`
--

CREATE TABLE `Adress_Types` (
  `id` int(11) NOT NULL,
  `address_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Address Type Name',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Adress_Types`
--

INSERT INTO `Adress_Types` (`id`, `address_type`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'HOME_ADDRESS', '2023-09-17 23:20:15', NULL, NULL),
(2, 'HOME_ADDRESS1', '2023-09-17 23:21:21', NULL, NULL),
(3, 'WORK_ADDRESS', '2023-09-17 23:21:21', NULL, NULL),
(4, 'WORK_ADDRESS1', '2023-09-17 23:21:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Alco_Regs`
--

CREATE TABLE `Alco_Regs` (
  `id` int(11) NOT NULL,
  `patient_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the Patient',
  `alco_type_id` int(11) NOT NULL COMMENT 'Alco_Types TABLE ID for Type of alcoholizm',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Alco_Regs`
--

INSERT INTO `Alco_Regs` (`id`, `patient_iin`, `alco_type_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '830430350473', 2, '2023-10-05 11:37:46', NULL, '2023-10-05 11:37:46'),
(2, '840719399121', 2, '2023-10-06 01:13:55', NULL, '2023-10-06 01:13:55');

-- --------------------------------------------------------

--
-- Структура таблицы `Alco_Types`
--

CREATE TABLE `Alco_Types` (
  `id` int(11) NOT NULL,
  `alco_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Alco Type Name',
  `alco_harm` int(11) DEFAULT NULL COMMENT 'Alco Type harm',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Alco_Types`
--

INSERT INTO `Alco_Types` (`id`, `alco_type`, `alco_harm`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'ALC_NOT', NULL, '2023-09-22 07:49:48', NULL, NULL),
(2, 'ALC_EAS', NULL, '2023-09-22 07:50:04', NULL, NULL),
(3, 'ALC_MON', NULL, '2023-09-22 07:51:04', NULL, NULL),
(4, 'ALC_WEE', NULL, '2023-09-22 07:51:20', NULL, NULL),
(5, 'ALC_DAY', NULL, '2023-09-22 07:51:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Allerg_Agent_Types`
--

CREATE TABLE `Allerg_Agent_Types` (
  `id` int(11) NOT NULL,
  `allerg_type_id` int(11) NOT NULL COMMENT 'Allerg_Types TABLE ID for Type of allergy',
  `allerg_agent_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allerg Agent Type Name',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Allerg_Agent_Types`
--

INSERT INTO `Allerg_Agent_Types` (`id`, `allerg_type_id`, `allerg_agent_type`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 2, 'ALL_AGE_PERUVIAN', '2023-09-22 09:07:20', NULL, NULL),
(2, 2, 'ALL_AGE_TETRACYCLINE', '2023-09-22 09:07:32', NULL, NULL),
(3, 2, 'ALL_AGE_DILANTIN', '2023-09-22 09:07:46', NULL, NULL),
(4, 2, 'ALL_AGE_PENICILLIN', '2023-09-22 09:08:04', NULL, NULL),
(5, 2, 'ALL_AGE_TEGRETOL', '2023-09-22 09:08:18', NULL, NULL),
(6, 3, 'ALL_AGE_EGG', '2023-09-22 09:08:33', NULL, NULL),
(7, 3, 'ALL_AGE_FIS', '2023-09-22 09:08:50', NULL, NULL),
(8, 3, 'ALL_AGE_GAR', '2023-09-22 09:09:16', NULL, NULL),
(9, 3, 'ALL_AGE_MIL', '2023-09-22 09:09:41', NULL, NULL),
(10, 3, 'ALL_AGE_PAE', '2023-09-22 09:11:10', NULL, NULL),
(11, 4, 'ALL_AGE_CAT', '2023-09-22 09:11:22', NULL, NULL),
(12, 4, 'ALL_AGE_DOG', '2023-09-22 09:11:36', NULL, NULL),
(13, 4, 'ALL_AGE_INS', '2023-09-22 09:11:49', NULL, NULL),
(14, 4, 'ALL_AGE_BIR', '2023-09-22 09:12:02', NULL, NULL),
(15, 4, 'ALL_AGE_ROD', '2023-09-22 09:12:16', NULL, NULL),
(16, 5, 'ALL_AGE_SPR', '2023-09-22 09:12:33', NULL, NULL),
(17, 5, 'ALL_AGE_SUM', '2023-09-22 09:12:47', NULL, NULL),
(18, 5, 'ALL_AGE_AUT', '2023-09-22 09:13:00', NULL, NULL),
(19, 5, 'ALL_AGE_WIN', '2023-09-22 09:13:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Allerg_Regs`
--

CREATE TABLE `Allerg_Regs` (
  `id` int(11) NOT NULL,
  `patient_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the Patient',
  `allerg_type_id` int(11) NOT NULL COMMENT 'Allerg_Types TABLE ID for Type of allergy',
  `allerg_agent_type_id` int(11) NOT NULL COMMENT 'Allerg_Agent_Types TABLE ID for Type of allergy agent',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Allerg_Regs`
--

INSERT INTO `Allerg_Regs` (`id`, `patient_iin`, `allerg_type_id`, `allerg_agent_type_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '830430350473', 2, 1, '2023-10-07 19:08:08', NULL, '2023-10-07 19:08:08'),
(2, '830430350473', 3, 6, '2023-10-07 19:11:56', NULL, '2023-10-07 19:11:56'),
(3, '830430350473', 4, 14, '2023-10-07 19:19:24', NULL, '2023-10-07 19:19:24'),
(4, '840719399121', 5, 16, '2023-10-08 08:14:04', NULL, '2023-10-08 08:14:04');

-- --------------------------------------------------------

--
-- Структура таблицы `Allerg_Types`
--

CREATE TABLE `Allerg_Types` (
  `id` int(11) NOT NULL,
  `allerg_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allerg Type Name',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Allerg_Types`
--

INSERT INTO `Allerg_Types` (`id`, `allerg_type`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'ALL_NOT', '2023-09-22 08:01:17', NULL, NULL),
(2, 'ALL_MED', '2023-09-22 08:01:29', NULL, NULL),
(3, 'ALL_FOO', '2023-09-22 08:01:39', NULL, NULL),
(4, 'ALL_PET', '2023-09-22 08:01:51', NULL, NULL),
(5, 'ALL_SEA', '2023-09-22 08:02:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Countries`
--

CREATE TABLE `Countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Country Name',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Countries`
--

INSERT INTO `Countries` (`id`, `country_name`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'KAZAKHSTAN', '2023-09-14 19:30:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Disab_Regs`
--

CREATE TABLE `Disab_Regs` (
  `id` int(11) NOT NULL,
  `patient_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the Patient',
  `disab_group` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'group of disability (1, 2, 3)',
  `date_start` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'date start of dispancerization',
  `date_stop` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'date stop of dispancerization',
  `icd_10_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ICD 10 Code',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Disab_Regs`
--

INSERT INTO `Disab_Regs` (`id`, `patient_iin`, `disab_group`, `date_start`, `date_stop`, `icd_10_code`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '830430350473', '2', '2023-10-04 18:00:00', '0000-00-00 00:00:00', 'B324.44', '2023-10-04 18:54:27', NULL, '2023-10-04 18:54:27');

-- --------------------------------------------------------

--
-- Структура таблицы `Disp_Regs`
--

CREATE TABLE `Disp_Regs` (
  `id` int(11) NOT NULL,
  `patient_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the Patient',
  `doctor_speciality` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'IIN of the Doctor',
  `date_start` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'date start of dispancerization',
  `date_stop` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'date stop of dispancerization',
  `icd_10_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ICD 10 Code',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Disp_Regs`
--

INSERT INTO `Disp_Regs` (`id`, `patient_iin`, `doctor_speciality`, `date_start`, `date_stop`, `icd_10_code`, `created_at`, `deleted_at`, `updated_at`) VALUES
(4, '830430350473', 'Кардиолог', '2023-10-04 18:00:00', '0000-00-00 00:00:00', 'B324.44', '2023-10-03 14:57:25', NULL, '2023-10-03 14:57:25'),
(5, '830430350473', 'Кардиолог', '2023-10-04 18:00:00', '0000-00-00 00:00:00', 'B324.44', '2023-10-03 14:57:35', NULL, '2023-10-03 14:57:35'),
(6, '830430350473', 'Кардиолог', '2023-10-04 18:00:00', '0000-00-00 00:00:00', 'B324.44', '2023-10-03 15:02:47', NULL, '2023-10-03 15:02:47');

-- --------------------------------------------------------

--
-- Структура таблицы `Emails`
--

CREATE TABLE `Emails` (
  `id` int(11) NOT NULL,
  `email_address` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Full Email Address',
  `owner_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the Email owner',
  `is_person` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Person (1) or Organisation (0)',
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Confirmed (1) or Not Confirmed (0) Phone number',
  `email_type_id` int(11) NOT NULL COMMENT 'Email_Types TABLE IF NOT EXISTS ID for Type of Email Address',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Emails`
--

INSERT INTO `Emails` (`id`, `email_address`, `owner_iin`, `is_person`, `is_confirmed`, `email_type_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'test@test.com', '830430350473', 0, 0, 1, '2023-09-19 17:20:21', NULL, '2023-09-19 17:20:21'),
(2, 'white1907@bk.ru', '840719399121', 0, 0, 3, '2023-09-19 23:02:20', NULL, '2023-09-19 23:02:20');

-- --------------------------------------------------------

--
-- Структура таблицы `Email_Types`
--

CREATE TABLE `Email_Types` (
  `id` int(11) NOT NULL,
  `email_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email Type Name',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Email_Types`
--

INSERT INTO `Email_Types` (`id`, `email_type`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'MAIN_EMAIL_ADDRESS', '2023-09-19 22:41:23', NULL, NULL),
(2, 'ADDITIONAL_EMAIL_ADDRESS', '2023-09-19 22:44:53', NULL, '2023-09-19 23:19:20'),
(3, 'PERSONAL_EMAIL_ADDRESS', '2023-09-19 22:44:53', NULL, '2023-09-19 23:19:28'),
(4, 'WORK_EMAIL_ADDRESS', '2023-09-19 22:44:53', NULL, '2023-09-19 23:19:52');

-- --------------------------------------------------------

--
-- Структура таблицы `Heights`
--

CREATE TABLE `Heights` (
  `id` int(11) NOT NULL,
  `patient_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the Patient',
  `height` int(11) NOT NULL COMMENT 'height measure (cm)',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Heights`
--

INSERT INTO `Heights` (`id`, `patient_iin`, `height`, `created_at`, `deleted_at`, `updated_at`) VALUES
(6, '840719399121', 170, '2023-09-23 22:23:34', NULL, '2023-09-23 22:23:34'),
(7, '840719399121', 172, '2023-09-23 22:24:43', NULL, '2023-09-23 22:24:43'),
(8, '830430350473', 183, '2023-10-05 11:45:17', NULL, '2023-10-05 11:45:17');

-- --------------------------------------------------------

--
-- Структура таблицы `Patients`
--

CREATE TABLE `Patients` (
  `id` int(11) NOT NULL,
  `patient_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the Patient',
  `birth_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Patient Birth Date',
  `is_male` tinyint(1) NOT NULL COMMENT 'Patient Sex (1) Male, (0) Female',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Patients`
--

INSERT INTO `Patients` (`id`, `patient_iin`, `birth_date`, `is_male`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '830430350473', '1983-04-29 17:00:00', 1, '2023-09-21 19:58:21', NULL, '2023-09-21 19:58:21'),
(2, '840719399121', '1984-07-18 17:00:00', 1, '2023-09-21 23:51:18', NULL, '2023-09-21 23:51:18');

-- --------------------------------------------------------

--
-- Структура таблицы `Persons`
--

CREATE TABLE `Persons` (
  `id` int(11) NOT NULL,
  `person_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Person IIN',
  `name_first` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Person First Name',
  `name_midl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Person Middle Name',
  `name_last` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Person Last Name',
  `birth_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Person Birth Date',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Persons`
--

INSERT INTO `Persons` (`id`, `person_iin`, `name_first`, `name_midl`, `name_last`, `birth_date`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '830430350473', 'Алексей', 'Иванович', 'Демидов', '1983-04-29 17:00:00', '0000-00-00 00:00:00', NULL, '2023-09-07 18:50:15'),
(2, '880801300788', 'Ринат', 'Омарович', 'Исагулов', '1988-07-31 17:00:00', '2023-08-07 08:52:07', NULL, '2023-08-07 08:52:07'),
(3, '840719399121', 'Павел', 'Николаевич', 'Белочук', '1984-07-18 17:00:00', '2023-08-29 00:54:32', NULL, '2023-08-29 00:56:45');

-- --------------------------------------------------------

--
-- Структура таблицы `Phones`
--

CREATE TABLE `Phones` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Phone Number including country code',
  `phone_extension` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Extension Number for Phone Number',
  `owner_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the phone owner',
  `is_person` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Person (1) or Organisation (0)',
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Confirmed (1) or Not Confirmed (0) Phone number',
  `phone_type_id` int(11) NOT NULL COMMENT 'Phone_Types TABLE ID for Type of Phone Number',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Phones`
--

INSERT INTO `Phones` (`id`, `phone_number`, `phone_extension`, `owner_iin`, `is_person`, `is_confirmed`, `phone_type_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '77071232179', '0123', '830430350473', 0, 0, 2, '2023-09-19 17:43:44', NULL, '2023-09-19 17:43:44'),
(2, '87071078819', '', '840719399121', 0, 0, 2, '2023-09-19 23:00:29', NULL, '2023-09-19 23:00:29');

-- --------------------------------------------------------

--
-- Структура таблицы `Phone_Types`
--

CREATE TABLE `Phone_Types` (
  `id` int(11) NOT NULL,
  `phone_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Phone Type Name',
  `has_ext` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Can have extension number',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Phone_Types`
--

INSERT INTO `Phone_Types` (`id`, `phone_type`, `has_ext`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'MAIN_PHONE', 0, '2023-09-19 22:48:51', NULL, NULL),
(2, 'MOBILE_PHONE', 0, '2023-09-19 22:49:31', NULL, NULL),
(3, 'HOME_PHONE', 0, '2023-09-19 22:49:31', NULL, NULL),
(4, 'WORK_PHONE', 1, '2023-09-19 22:49:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Place_Regs`
--

CREATE TABLE `Place_Regs` (
  `id` int(11) NOT NULL,
  `patient_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the Patient',
  `place_type_id` int(11) NOT NULL COMMENT 'Place_Types TABLE ID for Type of place',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Place_Regs`
--

INSERT INTO `Place_Regs` (`id`, `patient_iin`, `place_type_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '830430350473', 4, '2023-10-05 12:05:19', NULL, '2023-10-05 12:05:19'),
(2, '840719399121', 4, '2023-10-06 01:14:12', NULL, '2023-10-06 01:14:12');

-- --------------------------------------------------------

--
-- Структура таблицы `Place_Types`
--

CREATE TABLE `Place_Types` (
  `id` int(11) NOT NULL,
  `place_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Place Type Name',
  `place_harm` int(11) DEFAULT NULL COMMENT 'Place Type harm',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Place_Types`
--

INSERT INTO `Place_Types` (`id`, `place_type`, `place_harm`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'PLA_VIL_HOU', NULL, '2023-09-22 08:11:42', NULL, NULL),
(2, 'PLA_VIL_APA', NULL, '2023-09-22 08:11:51', NULL, NULL),
(3, 'PLA_CIT_HOU', NULL, '2023-09-22 08:11:58', NULL, NULL),
(4, 'PLA_CIT_APA', NULL, '2023-09-22 08:12:06', NULL, NULL),
(5, 'PLA_TRA', NULL, '2023-09-22 08:12:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Smoke_Regs`
--

CREATE TABLE `Smoke_Regs` (
  `id` int(11) NOT NULL,
  `patient_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the Patient',
  `smoke_type_id` int(11) NOT NULL COMMENT 'Smoke_Types TABLE ID for Type of smoking',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Smoke_Regs`
--

INSERT INTO `Smoke_Regs` (`id`, `patient_iin`, `smoke_type_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, '830430350473', 2, '2023-10-05 04:39:00', NULL, '2023-10-05 04:39:00'),
(2, '840719399121', 1, '2023-10-05 04:41:01', NULL, '2023-10-05 04:41:01');

-- --------------------------------------------------------

--
-- Структура таблицы `Smoke_Types`
--

CREATE TABLE `Smoke_Types` (
  `id` int(11) NOT NULL,
  `smoke_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Smoke Type Name',
  `smoke_harm` int(11) DEFAULT NULL COMMENT 'Smoke Type harm',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Smoke_Types`
--

INSERT INTO `Smoke_Types` (`id`, `smoke_type`, `smoke_harm`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'SMO_NOT', NULL, '2023-09-22 08:28:20', NULL, NULL),
(2, 'SMO_CID', NULL, '2023-09-22 08:28:30', NULL, NULL),
(3, 'SMO_PW', NULL, '2023-09-22 08:28:39', NULL, NULL),
(4, 'SMO_MPD', NULL, '2023-09-22 08:28:51', NULL, NULL),
(5, 'SMO_LPD', NULL, '2023-09-22 08:29:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Tr_EN-us`
--

CREATE TABLE `Tr_EN-us` (
  `ID` int(11) NOT NULL,
  `Tr_Const` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Lang Constant',
  `Tr_Trans` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Lang Translation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Tr_KK-kz`
--

CREATE TABLE `Tr_KK-kz` (
  `ID` int(11) NOT NULL,
  `Tr_Const` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Lang Constant',
  `Tr_Trans` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Lang Translation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Tr_RU-ru`
--

CREATE TABLE `Tr_RU-ru` (
  `ID` int(11) NOT NULL,
  `Tr_Const` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Lang Constant',
  `Tr_Trans` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Lang Translation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Weights`
--

CREATE TABLE `Weights` (
  `id` int(11) NOT NULL,
  `patient_iin` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IIN of the Patient',
  `weight` int(11) NOT NULL COMMENT 'weight measure (gramm)',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Дамп данных таблицы `Weights`
--

INSERT INTO `Weights` (`id`, `patient_iin`, `weight`, `created_at`, `deleted_at`, `updated_at`) VALUES
(18, '840719399121', 70, '2023-09-24 07:45:28', NULL, '2023-09-24 07:45:28'),
(19, '840719399121', 80, '2023-09-24 07:46:16', NULL, '2023-09-24 07:46:16'),
(20, '840719399121', 100, '2023-09-24 07:46:46', NULL, '2023-09-24 07:46:46'),
(21, '840719399121', 110, '2023-09-24 07:47:09', NULL, '2023-09-24 07:47:09'),
(22, '840719399121', 40, '2023-09-24 07:47:54', NULL, '2023-09-24 07:47:54'),
(23, '830430350473', 115, '2023-10-05 11:45:28', NULL, '2023-10-05 11:45:28');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Activ_Regs`
--
ALTER TABLE `Activ_Regs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Activ_Types`
--
ALTER TABLE `Activ_Types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Addresses`
--
ALTER TABLE `Addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Owner_iin` (`owner_iin`) USING BTREE;

--
-- Индексы таблицы `Adress_Types`
--
ALTER TABLE `Adress_Types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Alco_Regs`
--
ALTER TABLE `Alco_Regs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Alco_Types`
--
ALTER TABLE `Alco_Types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Allerg_Agent_Types`
--
ALTER TABLE `Allerg_Agent_Types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Allerg_Regs`
--
ALTER TABLE `Allerg_Regs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Allerg_Types`
--
ALTER TABLE `Allerg_Types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Countries`
--
ALTER TABLE `Countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Disab_Regs`
--
ALTER TABLE `Disab_Regs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DTE_START` (`date_start`);

--
-- Индексы таблицы `Disp_Regs`
--
ALTER TABLE `Disp_Regs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Emails`
--
ALTER TABLE `Emails`
  ADD PRIMARY KEY (`id`,`email_address`),
  ADD KEY `Email_adr` (`email_address`) USING BTREE,
  ADD KEY `Owner_iin` (`owner_iin`) USING BTREE;

--
-- Индексы таблицы `Email_Types`
--
ALTER TABLE `Email_Types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Heights`
--
ALTER TABLE `Heights`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Patients`
--
ALTER TABLE `Patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patient_iin` (`patient_iin`) USING BTREE;

--
-- Индексы таблицы `Persons`
--
ALTER TABLE `Persons`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `IDX_Pers_IIN` (`person_iin`) USING BTREE,
  ADD KEY `IDX_Pers_BDate` (`birth_date`) USING BTREE;

--
-- Индексы таблицы `Phones`
--
ALTER TABLE `Phones`
  ADD PRIMARY KEY (`id`,`phone_number`),
  ADD KEY `Phone_num` (`phone_number`) USING BTREE,
  ADD KEY `Owner_iin` (`owner_iin`) USING BTREE;

--
-- Индексы таблицы `Phone_Types`
--
ALTER TABLE `Phone_Types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Place_Regs`
--
ALTER TABLE `Place_Regs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Place_Types`
--
ALTER TABLE `Place_Types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Smoke_Regs`
--
ALTER TABLE `Smoke_Regs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Smoke_Types`
--
ALTER TABLE `Smoke_Types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Tr_EN-us`
--
ALTER TABLE `Tr_EN-us`
  ADD PRIMARY KEY (`ID`,`Tr_Const`),
  ADD UNIQUE KEY `tr_const_index` (`Tr_Const`) USING BTREE;

--
-- Индексы таблицы `Tr_KK-kz`
--
ALTER TABLE `Tr_KK-kz`
  ADD PRIMARY KEY (`ID`,`Tr_Const`),
  ADD UNIQUE KEY `tr_const_index` (`Tr_Const`) USING BTREE;

--
-- Индексы таблицы `Tr_RU-ru`
--
ALTER TABLE `Tr_RU-ru`
  ADD PRIMARY KEY (`ID`,`Tr_Const`),
  ADD UNIQUE KEY `tr_const_index` (`Tr_Const`) USING BTREE;

--
-- Индексы таблицы `Weights`
--
ALTER TABLE `Weights`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Activ_Regs`
--
ALTER TABLE `Activ_Regs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Activ_Types`
--
ALTER TABLE `Activ_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Addresses`
--
ALTER TABLE `Addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Adress_Types`
--
ALTER TABLE `Adress_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Alco_Regs`
--
ALTER TABLE `Alco_Regs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Alco_Types`
--
ALTER TABLE `Alco_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Allerg_Agent_Types`
--
ALTER TABLE `Allerg_Agent_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `Allerg_Regs`
--
ALTER TABLE `Allerg_Regs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Allerg_Types`
--
ALTER TABLE `Allerg_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Countries`
--
ALTER TABLE `Countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Disab_Regs`
--
ALTER TABLE `Disab_Regs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Disp_Regs`
--
ALTER TABLE `Disp_Regs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Emails`
--
ALTER TABLE `Emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Email_Types`
--
ALTER TABLE `Email_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Heights`
--
ALTER TABLE `Heights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `Patients`
--
ALTER TABLE `Patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Persons`
--
ALTER TABLE `Persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Phones`
--
ALTER TABLE `Phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Phone_Types`
--
ALTER TABLE `Phone_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Place_Regs`
--
ALTER TABLE `Place_Regs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Place_Types`
--
ALTER TABLE `Place_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Smoke_Regs`
--
ALTER TABLE `Smoke_Regs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Smoke_Types`
--
ALTER TABLE `Smoke_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Tr_EN-us`
--
ALTER TABLE `Tr_EN-us`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Tr_KK-kz`
--
ALTER TABLE `Tr_KK-kz`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Tr_RU-ru`
--
ALTER TABLE `Tr_RU-ru`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Weights`
--
ALTER TABLE `Weights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
