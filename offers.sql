-- --------------------------------------------------------
-- Server:                       127.0.0.1
-- Versiune server:              5.6.29 - MySQL Community Server (GPL)
-- SO server:                    Win64
-- HeidiSQL Versiune:            9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for springtutorial
CREATE DATABASE IF NOT EXISTS `springtutorial` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `springtutorial`;


-- Dumping structure for table springtutorial.offers
CREATE TABLE IF NOT EXISTS `offers` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` text,
  `email` text,
  `info` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table springtutorial.offers: ~2 rows (aproximativ)
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` (`id`, `name`, `email`, `info`) VALUES
	(1, 'Steve', 'steve@yahoo.com', 'Programator senior'),
	(2, 'John Purcel', 'john@caveofprograming.com', 'Web Developper'),
	(3, 'Gabriela Bancila', 'gabi.bancila@yahoo.com', 'Ofiter Popriri');
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
