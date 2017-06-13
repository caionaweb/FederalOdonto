CREATE DATABASE  IF NOT EXISTS `dentist` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dentist`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dentist
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `allergychecklist`
--

DROP TABLE IF EXISTS `allergychecklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allergychecklist` (
  `checklistID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `drugs` varchar(3) DEFAULT NULL,
  `food` varchar(3) DEFAULT NULL,
  `rubber` varchar(3) DEFAULT NULL,
  `allergyothers` varchar(3) DEFAULT NULL,
  `allergyothers_text` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`checklistID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergychecklist`
--

LOCK TABLES `allergychecklist` WRITE;
/*!40000 ALTER TABLE `allergychecklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `allergychecklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `appointmentID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `studentID` int(5) DEFAULT NULL,
  `appointmentDate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`appointmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audittrail`
--

DROP TABLE IF EXISTS `audittrail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audittrail` (
  `audittrailid` int(7) NOT NULL,
  `committedBy` int(5) DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `form` varchar(50) DEFAULT NULL,
  `committedTo` varchar(8) DEFAULT NULL,
  `committedOn` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`audittrailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audittrail`
--

LOCK TABLES `audittrail` WRITE;
/*!40000 ALTER TABLE `audittrail` DISABLE KEYS */;
INSERT INTO `audittrail` VALUES (1,2,'LOGOUT','Users','','2017-06-13'),(2,2,'LOGIN','Users','','2017-06-13'),(3,1,'LOGIN','Users','','2017-06-13'),(4,1,'SELECT','Users','','2017-06-13'),(5,1,'LOGOUT','Users','','2017-06-13'),(6,2,'LOGIN','Users','','2017-06-13');
/*!40000 ALTER TABLE `audittrail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cariesstatus`
--

DROP TABLE IF EXISTS `cariesstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cariesstatus` (
  `cariesstatusID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `distal_caries` varchar(200) DEFAULT NULL,
  `buccal_caries` varchar(200) DEFAULT NULL,
  `lingual_caries` varchar(200) DEFAULT NULL,
  `mesial_caries` varchar(200) DEFAULT NULL,
  `occlusal_caries` varchar(200) DEFAULT NULL,
  `distal_restorable_caries` varchar(200) DEFAULT NULL,
  `buccal_restorable_caries` varchar(200) DEFAULT NULL,
  `lingual_restorable_caries` varchar(200) DEFAULT NULL,
  `mesial_restorable_caries` varchar(200) DEFAULT NULL,
  `occlusal_restorable_caries` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cariesstatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cariesstatus`
--

LOCK TABLES `cariesstatus` WRITE;
/*!40000 ALTER TABLE `cariesstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `cariesstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confindversion`
--

DROP TABLE IF EXISTS `confindversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confindversion` (
  `confindversionID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `updateDate` varchar(10) DEFAULT NULL,
  `updateStatus` varchar(10) DEFAULT NULL,
  `approvedBy` int(5) DEFAULT NULL,
  `approvedOn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`confindversionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confindversion`
--

LOCK TABLES `confindversion` WRITE;
/*!40000 ALTER TABLE `confindversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `confindversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultationandfindings`
--

DROP TABLE IF EXISTS `consultationandfindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultationandfindings` (
  `confindID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `date` varchar(300) DEFAULT NULL,
  `reason` varchar(300) DEFAULT NULL,
  `startdate` varchar(300) DEFAULT NULL,
  `enddate` varchar(300) DEFAULT NULL,
  `findings` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`confindID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultationandfindings`
--

LOCK TABLES `consultationandfindings` WRITE;
/*!40000 ALTER TABLE `consultationandfindings` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultationandfindings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dentalchart`
--

DROP TABLE IF EXISTS `dentalchart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dentalchart` (
  `dentalchartID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `removable_partial_denture` varchar(200) DEFAULT NULL,
  `extrusion` varchar(200) DEFAULT NULL,
  `intrusion` varchar(200) DEFAULT NULL,
  `mesial_rotation` varchar(200) DEFAULT NULL,
  `distal_rotation` varchar(200) DEFAULT NULL,
  `rotation` varchar(200) DEFAULT NULL,
  `postcore_crown` varchar(200) DEFAULT NULL,
  `rootcanal_treatment` varchar(200) DEFAULT NULL,
  `pitfissure_sealants` varchar(200) DEFAULT NULL,
  `extracted` varchar(200) DEFAULT NULL,
  `missing` varchar(200) DEFAULT NULL,
  `unerupted` varchar(200) DEFAULT NULL,
  `impacted` varchar(200) DEFAULT NULL,
  `porcelain_crown` varchar(200) DEFAULT NULL,
  `acrylic_crown` varchar(200) DEFAULT NULL,
  `metal_crown` varchar(200) DEFAULT NULL,
  `porcelain_fused` varchar(200) DEFAULT NULL,
  `fixed_bridge` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`dentalchartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dentalchart`
--

LOCK TABLES `dentalchart` WRITE;
/*!40000 ALTER TABLE `dentalchart` DISABLE KEYS */;
/*!40000 ALTER TABLE `dentalchart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dentalchartversion`
--

DROP TABLE IF EXISTS `dentalchartversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dentalchartversion` (
  `dentalchartversionID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `updatedBy` int(5) DEFAULT NULL,
  `updateDate` varchar(10) DEFAULT NULL,
  `updateStatus` varchar(30) DEFAULT NULL,
  `approvedBy` int(5) DEFAULT NULL,
  `approvedOn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`dentalchartversionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dentalchartversion`
--

LOCK TABLES `dentalchartversion` WRITE;
/*!40000 ALTER TABLE `dentalchartversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `dentalchartversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dentaldataversion`
--

DROP TABLE IF EXISTS `dentaldataversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dentaldataversion` (
  `dentaldataversionID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `updatedBy` int(5) DEFAULT NULL,
  `updateDate` varchar(10) DEFAULT NULL,
  `updateStatus` varchar(30) DEFAULT NULL,
  `approvedBy` int(5) DEFAULT NULL,
  `approvedOn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`dentaldataversionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dentaldataversion`
--

LOCK TABLES `dentaldataversion` WRITE;
/*!40000 ALTER TABLE `dentaldataversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `dentaldataversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dentalhistory`
--

DROP TABLE IF EXISTS `dentalhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dentalhistory` (
  `denthistoID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `dateoflastvisit` varchar(10) DEFAULT NULL,
  `proceduresonlastvisit` varchar(100) DEFAULT NULL,
  `frequencyofvisit` varchar(100) DEFAULT NULL,
  `anesthesia_exposure` varchar(100) DEFAULT NULL,
  `dental_complications` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`denthistoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dentalhistory`
--

LOCK TABLES `dentalhistory` WRITE;
/*!40000 ALTER TABLE `dentalhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `dentalhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dentures`
--

DROP TABLE IF EXISTS `dentures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dentures` (
  `denturesID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `complete_denture` varchar(10) DEFAULT NULL,
  `upper_denture` varchar(10) DEFAULT NULL,
  `lower_denture` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`denturesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dentures`
--

LOCK TABLES `dentures` WRITE;
/*!40000 ALTER TABLE `dentures` DISABLE KEYS */;
/*!40000 ALTER TABLE `dentures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familychecklist`
--

DROP TABLE IF EXISTS `familychecklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familychecklist` (
  `checklistID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `familydiabetes` varchar(3) DEFAULT NULL,
  `bleeding_disorder` varchar(3) DEFAULT NULL,
  `heart_diseases` varchar(3) DEFAULT NULL,
  `cancer` varchar(3) DEFAULT NULL,
  `familyothers` varchar(3) DEFAULT NULL,
  `familyothers_text` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`checklistID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familychecklist`
--

LOCK TABLES `familychecklist` WRITE;
/*!40000 ALTER TABLE `familychecklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `familychecklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `femalechecklist`
--

DROP TABLE IF EXISTS `femalechecklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `femalechecklist` (
  `checklistID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `pregnant` varchar(3) DEFAULT NULL,
  `breastfeeding` varchar(3) DEFAULT NULL,
  `hormonetherapy` varchar(3) DEFAULT NULL,
  `menstruation` varchar(3) DEFAULT NULL,
  `contraceptive` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`checklistID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `femalechecklist`
--

LOCK TABLES `femalechecklist` WRITE;
/*!40000 ALTER TABLE `femalechecklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `femalechecklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medandsochistoversion`
--

DROP TABLE IF EXISTS `medandsochistoversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medandsochistoversion` (
  `medandsochistoversionID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `updatedBy` int(5) DEFAULT NULL,
  `updateDate` varchar(10) DEFAULT NULL,
  `updateStatus` varchar(30) DEFAULT NULL,
  `approvedBy` int(5) DEFAULT NULL,
  `approvedOn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`medandsochistoversionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medandsochistoversion`
--

LOCK TABLES `medandsochistoversion` WRITE;
/*!40000 ALTER TABLE `medandsochistoversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `medandsochistoversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicalhistory`
--

DROP TABLE IF EXISTS `medicalhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicalhistory` (
  `medhistoID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `physician_name` varchar(30) DEFAULT NULL,
  `physician_phone` varchar(15) DEFAULT NULL,
  `dateoflatesthospitalization` varchar(10) DEFAULT NULL,
  `hospitalizationreason` varchar(30) DEFAULT NULL,
  `allergies` varchar(30) DEFAULT NULL,
  `illnesses` varchar(30) DEFAULT NULL,
  `medications` varchar(30) DEFAULT NULL,
  `childhood_illnesses` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`medhistoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicalhistory`
--

LOCK TABLES `medicalhistory` WRITE;
/*!40000 ALTER TABLE `medicalhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicalhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otherservices`
--

DROP TABLE IF EXISTS `otherservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otherservices` (
  `otherservicesID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `periodontics` varchar(10) DEFAULT NULL,
  `pedodontics` varchar(10) DEFAULT NULL,
  `orthodontics` varchar(10) DEFAULT NULL,
  `acuteinfections` varchar(10) DEFAULT NULL,
  `traumaticinjuries` varchar(10) DEFAULT NULL,
  `completedenture` varchar(10) DEFAULT NULL,
  `singledenture` varchar(10) DEFAULT NULL,
  `removablepartialdenture` varchar(10) DEFAULT NULL,
  `otherdenture` varchar(10) DEFAULT NULL,
  `dentalnotes` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`otherservicesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otherservices`
--

LOCK TABLES `otherservices` WRITE;
/*!40000 ALTER TABLE `otherservices` DISABLE KEYS */;
/*!40000 ALTER TABLE `otherservices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `patientFName` varchar(30) DEFAULT NULL,
  `patientMName` varchar(30) DEFAULT NULL,
  `patientLName` varchar(30) DEFAULT NULL,
  `homeno` varchar(10) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `brgy` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `bdate` varchar(30) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `clinician` varchar(10) DEFAULT NULL,
  `section` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `deceased` varchar(3) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientchecklist`
--

DROP TABLE IF EXISTS `patientchecklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientchecklist` (
  `checklistID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `highbloodpressure` varchar(3) DEFAULT NULL,
  `joint_pain` varchar(3) DEFAULT NULL,
  `heart_attack` varchar(3) DEFAULT NULL,
  `tremors` varchar(3) DEFAULT NULL,
  `chest_pain` varchar(3) DEFAULT NULL,
  `blood_transfusion` varchar(3) DEFAULT NULL,
  `swollen_ankles` varchar(3) DEFAULT NULL,
  `denied_blood` varchar(3) DEFAULT NULL,
  `high_fever` varchar(3) DEFAULT NULL,
  `pallor` varchar(3) DEFAULT NULL,
  `pacemaker` varchar(3) DEFAULT NULL,
  `diabetes` varchar(3) DEFAULT NULL,
  `emphysema` varchar(3) DEFAULT NULL,
  `goiter` varchar(3) DEFAULT NULL,
  `afternoon_fever` varchar(3) DEFAULT NULL,
  `bruising_tendency` varchar(3) DEFAULT NULL,
  `chronic_cough` varchar(3) DEFAULT NULL,
  `weight_change` varchar(3) DEFAULT NULL,
  `breathing_problem` varchar(3) DEFAULT NULL,
  `frequent_thirst` varchar(3) DEFAULT NULL,
  `bloody_sputum` varchar(3) DEFAULT NULL,
  `frequent_hunger` varchar(3) DEFAULT NULL,
  `sinusitis` varchar(3) DEFAULT NULL,
  `frequent_urination` varchar(3) DEFAULT NULL,
  `frequent_headaches` varchar(3) DEFAULT NULL,
  `chemotherapy` varchar(3) DEFAULT NULL,
  `dizziness` varchar(3) DEFAULT NULL,
  `pain_urination` varchar(3) DEFAULT NULL,
  `loss_consciousness` varchar(3) DEFAULT NULL,
  `urine_blood` varchar(3) DEFAULT NULL,
  `visual_impairment` varchar(3) DEFAULT NULL,
  `hepatitis` varchar(3) DEFAULT NULL,
  `hearing_impairment` varchar(3) DEFAULT NULL,
  `HIV_positive` varchar(3) DEFAULT NULL,
  `arthritis` varchar(3) DEFAULT NULL,
  `pelvic_discomfort` varchar(3) DEFAULT NULL,
  `nervousness` varchar(3) DEFAULT NULL,
  `depression` varchar(3) DEFAULT NULL,
  `anxiety` varchar(3) DEFAULT NULL,
  `asthma` varchar(3) DEFAULT NULL,
  `patientothers` varchar(3) DEFAULT NULL,
  `patientothers_text` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`checklistID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientchecklist`
--

LOCK TABLES `patientchecklist` WRITE;
/*!40000 ALTER TABLE `patientchecklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientchecklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientchecklistversion`
--

DROP TABLE IF EXISTS `patientchecklistversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientchecklistversion` (
  `patientchecklistversionID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `updatedBy` int(5) DEFAULT NULL,
  `updateDate` varchar(10) DEFAULT NULL,
  `updateStatus` varchar(30) DEFAULT NULL,
  `approvedBy` int(5) DEFAULT NULL,
  `approvedOn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`patientchecklistversionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientchecklistversion`
--

LOCK TABLES `patientchecklistversion` WRITE;
/*!40000 ALTER TABLE `patientchecklistversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientchecklistversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientdashboardversion`
--

DROP TABLE IF EXISTS `patientdashboardversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientdashboardversion` (
  `patientdashboardversionID` int(5) NOT NULL,
  `UPCD_ID7` varchar(8) DEFAULT NULL,
  `section7` varchar(30) DEFAULT NULL,
  `updatedBy7` int(5) DEFAULT NULL,
  `updateDate7` varchar(10) DEFAULT NULL,
  `updateStatus7` varchar(10) DEFAULT NULL,
  `approvedBy7` int(5) DEFAULT NULL,
  `currentsection7` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`patientdashboardversionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientdashboardversion`
--

LOCK TABLES `patientdashboardversion` WRITE;
/*!40000 ALTER TABLE `patientdashboardversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientdashboardversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientinfo`
--

DROP TABLE IF EXISTS `patientinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientinfo` (
  `patientinfoID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `civstat` varchar(30) DEFAULT NULL,
  `phonenum` varchar(15) DEFAULT NULL,
  `edattain` varchar(30) DEFAULT NULL,
  `occupation` varchar(30) DEFAULT NULL,
  `persontonotify` varchar(50) DEFAULT NULL,
  `persontonotifynum` varchar(15) DEFAULT NULL,
  `histo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`patientinfoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientinfo`
--

LOCK TABLES `patientinfo` WRITE;
/*!40000 ALTER TABLE `patientinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientinfoversion`
--

DROP TABLE IF EXISTS `patientinfoversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientinfoversion` (
  `patientinfoversionID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `updatedBy` int(5) DEFAULT NULL,
  `updateDate` varchar(10) DEFAULT NULL,
  `updateStatus` varchar(30) DEFAULT NULL,
  `approvedBy` int(5) DEFAULT NULL,
  `approvedOn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`patientinfoversionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientinfoversion`
--

LOCK TABLES `patientinfoversion` WRITE;
/*!40000 ALTER TABLE `patientinfoversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientinfoversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phyassess`
--

DROP TABLE IF EXISTS `phyassess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phyassess` (
  `phyassessID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `gait` varchar(30) DEFAULT NULL,
  `appear` varchar(30) DEFAULT NULL,
  `dfcts` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`phyassessID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phyassess`
--

LOCK TABLES `phyassess` WRITE;
/*!40000 ALTER TABLE `phyassess` DISABLE KEYS */;
/*!40000 ALTER TABLE `phyassess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radioexamversion`
--

DROP TABLE IF EXISTS `radioexamversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radioexamversion` (
  `radioexamversionID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `updateDate` varchar(10) DEFAULT NULL,
  `updateStatus` varchar(10) DEFAULT NULL,
  `approvedBy` int(5) DEFAULT NULL,
  `approvedOn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`radioexamversionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radioexamversion`
--

LOCK TABLES `radioexamversion` WRITE;
/*!40000 ALTER TABLE `radioexamversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `radioexamversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radiographicexam`
--

DROP TABLE IF EXISTS `radiographicexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radiographicexam` (
  `radioexamID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `date` varchar(300) DEFAULT NULL,
  `toothno` varchar(30) DEFAULT NULL,
  `findings` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`radioexamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radiographicexam`
--

LOCK TABLES `radiographicexam` WRITE;
/*!40000 ALTER TABLE `radiographicexam` DISABLE KEYS */;
/*!40000 ALTER TABLE `radiographicexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrentstatus`
--

DROP TABLE IF EXISTS `recurrentstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrentstatus` (
  `recurrentstatusID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `distal_recurrent` varchar(200) DEFAULT NULL,
  `buccal_recurrent` varchar(200) DEFAULT NULL,
  `lingual_recurrent` varchar(200) DEFAULT NULL,
  `mesial_recurrent` varchar(200) DEFAULT NULL,
  `occlusal_recurrent` varchar(200) DEFAULT NULL,
  `distal_restorable_recurrent` varchar(200) DEFAULT NULL,
  `buccal_restorable_recurrent` varchar(200) DEFAULT NULL,
  `lingual_restorable_recurrent` varchar(200) DEFAULT NULL,
  `mesial_restorable_recurrent` varchar(200) DEFAULT NULL,
  `occlusal_restorable_recurrent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`recurrentstatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrentstatus`
--

LOCK TABLES `recurrentstatus` WRITE;
/*!40000 ALTER TABLE `recurrentstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrentstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remark` (
  `remarkID` int(5) NOT NULL,
  `userID` int(5) DEFAULT NULL,
  `facultyID` int(5) DEFAULT NULL,
  `patientID` varchar(8) DEFAULT NULL,
  `remarkStatus` varchar(30) DEFAULT NULL,
  `patientinfo` varchar(100) DEFAULT NULL,
  `patientchecklist` varchar(100) DEFAULT NULL,
  `medandsochisto` varchar(100) DEFAULT NULL,
  `dentaldata` varchar(100) DEFAULT NULL,
  `dentalchart` varchar(100) DEFAULT NULL,
  `treatmentplan` varchar(100) DEFAULT NULL,
  `radiographicexam` varchar(100) DEFAULT NULL,
  `servicesrendered` varchar(100) DEFAULT NULL,
  `consultationandfindings` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`remarkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remark`
--

LOCK TABLES `remark` WRITE;
/*!40000 ALTER TABLE `remark` DISABLE KEYS */;
/*!40000 ALTER TABLE `remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restorationstatus`
--

DROP TABLE IF EXISTS `restorationstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restorationstatus` (
  `restorationstatusID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `distal_restoration` varchar(200) DEFAULT NULL,
  `buccal_restoration` varchar(200) DEFAULT NULL,
  `lingual_restoration` varchar(200) DEFAULT NULL,
  `mesial_restoration` varchar(200) DEFAULT NULL,
  `occlusal_restoration` varchar(200) DEFAULT NULL,
  `distal_restorable_restoration` varchar(200) DEFAULT NULL,
  `buccal_restorable_restoration` varchar(200) DEFAULT NULL,
  `lingual_restorable_restoration` varchar(200) DEFAULT NULL,
  `mesial_restorable_restoration` varchar(200) DEFAULT NULL,
  `occlusal_restorable_restoration` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`restorationstatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restorationstatus`
--

LOCK TABLES `restorationstatus` WRITE;
/*!40000 ALTER TABLE `restorationstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `restorationstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceneeded`
--

DROP TABLE IF EXISTS `serviceneeded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceneeded` (
  `serviceneededID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `class1` varchar(200) DEFAULT NULL,
  `class2` varchar(200) DEFAULT NULL,
  `class3` varchar(200) DEFAULT NULL,
  `class4` varchar(200) DEFAULT NULL,
  `class5` varchar(200) DEFAULT NULL,
  `onlay` varchar(200) DEFAULT NULL,
  `extraction` varchar(200) DEFAULT NULL,
  `odontectomy` varchar(200) DEFAULT NULL,
  `special_case` varchar(200) DEFAULT NULL,
  `pulp_sedation` varchar(200) DEFAULT NULL,
  `crown_recementation` varchar(200) DEFAULT NULL,
  `filling_service` varchar(200) DEFAULT NULL,
  `laminated` varchar(200) DEFAULT NULL,
  `single_crown` varchar(200) DEFAULT NULL,
  `bridge_service` varchar(200) DEFAULT NULL,
  `anterior` varchar(200) DEFAULT NULL,
  `posterior` varchar(200) DEFAULT NULL,
  `orthoendo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`serviceneededID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceneeded`
--

LOCK TABLES `serviceneeded` WRITE;
/*!40000 ALTER TABLE `serviceneeded` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceneeded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicesrendered`
--

DROP TABLE IF EXISTS `servicesrendered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicesrendered` (
  `servicesrenderedID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `date` varchar(300) DEFAULT NULL,
  `services` varchar(300) DEFAULT NULL,
  `fees` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`servicesrenderedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicesrendered`
--

LOCK TABLES `servicesrendered` WRITE;
/*!40000 ALTER TABLE `servicesrendered` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicesrendered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicesrenderedversion`
--

DROP TABLE IF EXISTS `servicesrenderedversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicesrenderedversion` (
  `servicesrenderedversionID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `updateDate` varchar(10) DEFAULT NULL,
  `updateStatus` varchar(10) DEFAULT NULL,
  `approvedBy` int(5) DEFAULT NULL,
  `approvedOn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`servicesrenderedversionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicesrenderedversion`
--

LOCK TABLES `servicesrenderedversion` WRITE;
/*!40000 ALTER TABLE `servicesrenderedversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicesrenderedversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialhistory`
--

DROP TABLE IF EXISTS `socialhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialhistory` (
  `socialhistoID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `cigarette` varchar(3) DEFAULT NULL,
  `cigarette_type` varchar(30) DEFAULT NULL,
  `cigarette_frequency` varchar(30) DEFAULT NULL,
  `cigarette_duration` varchar(30) DEFAULT NULL,
  `cigarette_dateoflastexposure` varchar(10) DEFAULT NULL,
  `alcohol` varchar(3) DEFAULT NULL,
  `alcohol_type` varchar(30) DEFAULT NULL,
  `alcohol_frequency` varchar(30) DEFAULT NULL,
  `alcohol_duration` varchar(30) DEFAULT NULL,
  `alcohol_dateoflastexposure` varchar(10) DEFAULT NULL,
  `drug` varchar(3) DEFAULT NULL,
  `drug_type` varchar(30) DEFAULT NULL,
  `drug_frequency` varchar(30) DEFAULT NULL,
  `drug_duration` varchar(30) DEFAULT NULL,
  `drug_dateoflastexposure` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`socialhistoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialhistory`
--

LOCK TABLES `socialhistory` WRITE;
/*!40000 ALTER TABLE `socialhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `softtissueexamination`
--

DROP TABLE IF EXISTS `softtissueexamination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `softtissueexamination` (
  `softtissueexamID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `headneckTMJ` varchar(100) DEFAULT NULL,
  `lipstrenum` varchar(100) DEFAULT NULL,
  `mucosa` varchar(100) DEFAULT NULL,
  `palate` varchar(100) DEFAULT NULL,
  `pharynx` varchar(100) DEFAULT NULL,
  `floorofthemouth` varchar(100) DEFAULT NULL,
  `tongue` varchar(100) DEFAULT NULL,
  `lymphnodes` varchar(100) DEFAULT NULL,
  `salivarygland` varchar(100) DEFAULT NULL,
  `thyroid` varchar(100) DEFAULT NULL,
  `gingiva` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`softtissueexamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softtissueexamination`
--

LOCK TABLES `softtissueexamination` WRITE;
/*!40000 ALTER TABLE `softtissueexamination` DISABLE KEYS */;
/*!40000 ALTER TABLE `softtissueexamination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenttasks`
--

DROP TABLE IF EXISTS `studenttasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studenttasks` (
  `studenttaskID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `section` varchar(30) DEFAULT NULL,
  `taskdescription` varchar(100) DEFAULT NULL,
  `clinicianID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`studenttaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenttasks`
--

LOCK TABLES `studenttasks` WRITE;
/*!40000 ALTER TABLE `studenttasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `studenttasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatmentplan`
--

DROP TABLE IF EXISTS `treatmentplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatmentplan` (
  `treatmentplanID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `chiefcomplaints` varchar(100) DEFAULT NULL,
  `perio` varchar(3) DEFAULT NULL,
  `rpd` varchar(3) DEFAULT NULL,
  `resto` varchar(3) DEFAULT NULL,
  `os` varchar(3) DEFAULT NULL,
  `fpd` varchar(3) DEFAULT NULL,
  `pedo` varchar(3) DEFAULT NULL,
  `endo` varchar(3) DEFAULT NULL,
  `cd` varchar(3) DEFAULT NULL,
  `ortho` varchar(3) DEFAULT NULL,
  `proposedtreatment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`treatmentplanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatmentplan`
--

LOCK TABLES `treatmentplan` WRITE;
/*!40000 ALTER TABLE `treatmentplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `treatmentplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatmentplanversion`
--

DROP TABLE IF EXISTS `treatmentplanversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatmentplanversion` (
  `treatmentplanversionID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `updatedBy` int(5) DEFAULT NULL,
  `updateDate` varchar(10) DEFAULT NULL,
  `updateStatus` varchar(30) DEFAULT NULL,
  `approvedBy` int(5) DEFAULT NULL,
  `approvedOn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`treatmentplanversionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatmentplanversion`
--

LOCK TABLES `treatmentplanversion` WRITE;
/*!40000 ALTER TABLE `treatmentplanversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `treatmentplanversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userID` int(5) NOT NULL,
  `userFName` varchar(30) DEFAULT NULL,
  `userMName` varchar(30) DEFAULT NULL,
  `userLName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Caio','L','Barros'),(2,'Regina','Pereira','Borges');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_auth`
--

DROP TABLE IF EXISTS `users_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_auth` (
  `authID` int(5) NOT NULL,
  `userID` int(5) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `userpword` varchar(100) DEFAULT NULL,
  `salt` varchar(6) DEFAULT NULL,
  `secret_question` varchar(100) DEFAULT NULL,
  `secret_answer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`authID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_auth`
--

LOCK TABLES `users_auth` WRITE;
/*!40000 ALTER TABLE `users_auth` DISABLE KEYS */;
INSERT INTO `users_auth` VALUES (1,1,'caio','54390fcebd17103e9aa5514773602ed2bfd272606c903c508c196a21511eba96','10ca84','What is your favorite childhood movie?','vai'),(2,2,'regina','b8b54405200aa817e7cffd48d5141e00bc8ff7accd7827458fa6c3b9474f65d0','369b68','What is your favorite childhood movie?','vai');
/*!40000 ALTER TABLE `users_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_role`
--

DROP TABLE IF EXISTS `users_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_role` (
  `roleID` int(5) NOT NULL,
  `userID` int(5) DEFAULT NULL,
  `role_type` varchar(30) DEFAULT NULL,
  `role_section` varchar(30) DEFAULT NULL,
  `role_date` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_role`
--

LOCK TABLES `users_role` WRITE;
/*!40000 ALTER TABLE `users_role` DISABLE KEYS */;
INSERT INTO `users_role` VALUES (1,1,'System Administrator','System Maintenance','2017-06-13'),(2,2,'Faculty','Oral Medicine','2017-06-13');
/*!40000 ALTER TABLE `users_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vitalsigns`
--

DROP TABLE IF EXISTS `vitalsigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vitalsigns` (
  `vitalsignsID` int(5) NOT NULL,
  `UPCD_ID` varchar(8) DEFAULT NULL,
  `bp` varchar(10) DEFAULT NULL,
  `pr` varchar(5) DEFAULT NULL,
  `rr` varchar(5) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `weight` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`vitalsignsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vitalsigns`
--

LOCK TABLES `vitalsigns` WRITE;
/*!40000 ALTER TABLE `vitalsigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `vitalsigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dentist'
--

--
-- Dumping routines for database 'dentist'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-13  0:12:01
