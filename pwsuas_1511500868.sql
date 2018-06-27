-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5278
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for pwsuas_1511500868
DROP DATABASE IF EXISTS `pwsuas_1511500868`;
CREATE DATABASE IF NOT EXISTS `pwsuas_1511500868` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pwsuas_1511500868`;

-- Dumping structure for table pwsuas_1511500868.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pwsuas_1511500868.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2018_06_27_075712_create_students_table', 1),
	(2, '2018_06_27_080836_students', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table pwsuas_1511500868.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `major` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pwsuas_1511500868.students: ~3 rows (approximately)
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`, `nim`, `name`, `dateofbirth`, `address`, `phonenumber`, `gender`, `major`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '1511500868', 'chia', '1997-07-17', 'jakarta', '081286923342', 'P', 'Programming Expert', '2018-06-27 15:20:43', '2018-06-27 15:37:14', NULL),
	(2, '1512501170', 'nikko', '1997-07-07', 'jakarta', '081938293829', 'L', 'Enterprise System', '2018-06-27 15:33:37', '2018-06-27 15:34:11', NULL),
	(3, '1511503011', 'fakhri', '1997-07-17', 'jakarta', '081286923342', 'L', 'Programming Expert', '2018-06-27 15:37:37', '2018-06-27 15:38:11', '2018-06-27 15:38:11');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
