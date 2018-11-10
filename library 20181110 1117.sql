-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.90-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema library
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ library;
USE library;

--
-- Table structure for table `library`.`books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `BookId` int(11) NOT NULL,
  `Edition` varchar(255) default NULL,
  `Name` varchar(255) default NULL,
  `Pages` bigint(20) NOT NULL,
  `Price` double default NULL,
  `Publisher` varchar(255) default NULL,
  PRIMARY KEY  (`BookId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`.`books`
--

/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`BookId`,`Edition`,`Name`,`Pages`,`Price`,`Publisher`) VALUES 
 (12,'22','physics',123,1213,'shgajg'),
 (43,'jjhh','gjhg',667,56,'khjh');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;


--
-- Table structure for table `library`.`issuebook`
--

DROP TABLE IF EXISTS `issuebook`;
CREATE TABLE `issuebook` (
  `issueId` int(11) NOT NULL auto_increment,
  `BookId` int(11) NOT NULL,
  `Edition` varchar(255) default NULL,
  `Pages` bigint(20) NOT NULL,
  `Price` double default NULL,
  `Publisher` varchar(255) default NULL,
  `SName` varchar(255) default NULL,
  `branch` varchar(255) default NULL,
  `course` varchar(255) default NULL,
  `date` datetime default NULL,
  `father` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `samester` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY  (`issueId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`.`issuebook`
--

/*!40000 ALTER TABLE `issuebook` DISABLE KEYS */;
INSERT INTO `issuebook` (`issueId`,`BookId`,`Edition`,`Pages`,`Price`,`Publisher`,`SName`,`branch`,`course`,`date`,`father`,`name`,`samester`,`sid`,`year`) VALUES 
 (2,12,'22',123,1213,'shgajg','hjvjvj','jbjk','B.Tech','2018-11-09 00:00:00','jhhjj','physics',1,65,1);
/*!40000 ALTER TABLE `issuebook` ENABLE KEYS */;


--
-- Table structure for table `library`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `LId` int(11) NOT NULL auto_increment,
  `Password` varchar(255) default NULL,
  `UserName` varchar(255) default NULL,
  PRIMARY KEY  (`LId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`LId`,`Password`,`UserName`) VALUES 
 (1,'123','sac');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `library`.`signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE `signup` (
  `Id` int(11) NOT NULL auto_increment,
  `Answer` varchar(255) default NULL,
  `Fullname` varchar(255) default NULL,
  `Mobileno` bigint(20) default NULL,
  `Password` varchar(255) default NULL,
  `Question` varchar(255) default NULL,
  `Username` varchar(255) default NULL,
  `login_LId` int(11) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `FK939A5D38C920F6AC` (`login_LId`),
  CONSTRAINT `FK939A5D38C920F6AC` FOREIGN KEY (`login_LId`) REFERENCES `login` (`LId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`.`signup`
--

/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` (`Id`,`Answer`,`Fullname`,`Mobileno`,`Password`,`Question`,`Username`,`login_LId`) VALUES 
 (1,'ind','sahin',67675545443,'123','What is your favorite team?','sac',1);
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;


--
-- Table structure for table `library`.`studentdetail`
--

DROP TABLE IF EXISTS `studentdetail`;
CREATE TABLE `studentdetail` (
  `sid` int(11) NOT NULL,
  `branch` varchar(255) default NULL,
  `course` varchar(255) default NULL,
  `father` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `samester` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`.`studentdetail`
--

/*!40000 ALTER TABLE `studentdetail` DISABLE KEYS */;
INSERT INTO `studentdetail` (`sid`,`branch`,`course`,`father`,`name`,`samester`,`year`) VALUES 
 (65,'jbjk','B.Tech','jhhjj','hjvjvj',1,1);
/*!40000 ALTER TABLE `studentdetail` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
