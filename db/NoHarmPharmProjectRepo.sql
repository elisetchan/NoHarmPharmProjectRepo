-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: PharmInform
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Clinic`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clinic` (
  `ClinicName` varchar(50) NOT NULL,
  PRIMARY KEY (`ClinicName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clinic`
--

/*!40000 ALTER TABLE `Clinic` DISABLE KEYS */;
INSERT INTO `Clinic` VALUES ('Agimba'),('Blogpad'),('Browseblab'),('Browsetype'),('Dablist'),('Devcast'),('Flashpoint'),('Gigashots'),('Jazzy'),('Kamba'),('Kwilith'),('LiveZ'),('Mycat'),('Mydo'),('Ozu'),('Photobug'),('Quatz'),('Realblab'),('Realbuzz'),('Reallinks'),('Topicstorm'),('Twitterlist'),('Twitterwire'),('Yamia'),('Zazio');
/*!40000 ALTER TABLE `Clinic` ENABLE KEYS */;

--
-- Table structure for table `Clinical Trials`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clinical Trials` (
  `ClinicName` varchar(50) NOT NULL,
  `CTName` varchar(50) NOT NULL,
  `Indication` text NOT NULL,
  PRIMARY KEY (`ClinicName`,`CTName`),
  CONSTRAINT `fk_16` FOREIGN KEY (`ClinicName`) REFERENCES `Clinic` (`ClinicName`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clinical Trials`
--

/*!40000 ALTER TABLE `Clinical Trials` DISABLE KEYS */;
INSERT INTO `Clinical Trials` VALUES ('Agimba','Stim','Neoplasm of uncertain behavior of left breast'),('Blogpad','Job','Ped on sktbrd injured in collision w pedl cyc, unsp, init'),('Browseblab','Bamity','Toxic effect of rattlesnake venom, undetermined, sequela'),('Browseblab','Bytecard','Toxic effect of ethanol, intentional self-harm, subs encntr'),('Dablist','Konklux','Brkdwn internal orth devices, implants and grafts, sequela'),('Dablist','Y-find','Frostbite with tissue necrosis of right arm, subs encntr'),('Flashpoint','Tres-Zap','Conjunctival concretions, bilateral'),('Kamba','Rank','Central cord syndrome at C6 level of cervical spinal cord'),('Kwilith','Holdlamis','Other osteomyelitis, lower leg'),('LiveZ','Zamit','Fall from skateboard, sequela'),('Mycat','Cookley','Asphyx due to being trapped in a car trunk, undet, sequela'),('Mycat','Tampflex','Unsp fracture of lower end of unspecified tibia, sequela'),('Ozu','Tin','Nondisp unsp fracture of unsp lesser toe(s), init for opn fx'),('Photobug','Tresom','Periprosth fracture around internal prosthetic l elbow joint'),('Quatz','Regrant','Oth inflammatory spondylopathies, sacr/sacrocygl region'),('Quatz','Zontrax','Disp fx of neck of first metacarpal bone, left hand'),('Reallinks','Bitwolf','Local-rel idio epi w seiz of loc onst, not ntrct, w stat epi'),('Reallinks','Holdlamis','Poisoning by beta-adrenocpt antagonists, undet, sequela'),('Topicstorm','Flexidy','Nondisp spiral fx shaft of l femr, 7thM'),('Topicstorm','Latlux','Asphyxiation due to hanging, assault, initial encounter'),('Twitterlist','Sub-Ex','Nondisp fx of base of third MC bone, left hand, sequela'),('Twitterwire','Y-Solowarm','Athscl autol vein bypass of extrm w intrmt claud, bi legs'),('Twitterwire','Zontrax','Stress fracture, unspecified femur, sequela'),('Yamia','Zathin','External constriction of left index finger, init encntr'),('Zazio','Matsoft','Neonatal tachycardia');
/*!40000 ALTER TABLE `Clinical Trials` ENABLE KEYS */;

--
-- Table structure for table `Drug Classes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Drug Classes` (
  `DCName` varchar(50) NOT NULL,
  PRIMARY KEY (`DCName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Drug Classes`
--

/*!40000 ALTER TABLE `Drug Classes` DISABLE KEYS */;
INSERT INTO `Drug Classes` VALUES ('ac'),('consectetuer'),('curae'),('dictumst etiam'),('etiam pretium'),('eu tincidunt'),('faucibus orci'),('id'),('imperdiet'),('in felis'),('metus'),('metus aenean'),('nec nisi'),('non interdum'),('nulla mollis'),('nulla nunc'),('porta'),('sapien'),('sem'),('sit amet'),('tellus'),('tristique est'),('ut suscipit'),('volutpat eleifend');
/*!40000 ALTER TABLE `Drug Classes` ENABLE KEYS */;

--
-- Table structure for table `Layman Patients`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Layman Patients` (
  `PUsername` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Email` varchar(20) NOT NULL,
  `PharmEmail` varchar(20) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PUsername`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `PUsername` (`PUsername`),
  UNIQUE KEY `Phone` (`Phone`),
  KEY `fk_01` (`PharmEmail`),
  CONSTRAINT `fk_01` FOREIGN KEY (`PharmEmail`) REFERENCES `Pharmacists` (`PharmEmail`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layman Patients`
--

/*!40000 ALTER TABLE `Layman Patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `Layman Patients` ENABLE KEYS */;

--
-- Table structure for table `Medications`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medications` (
  `MName` varchar(50) NOT NULL,
  `Description` mediumtext,
  `EdInfo` mediumtext,
  PRIMARY KEY (`MName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medications`
--

/*!40000 ALTER TABLE `Medications` DISABLE KEYS */;
INSERT INTO `Medications` VALUES ('aluminum hydroxide, magnesium hydroxide, dimethico','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),('Amitriptyline Hydrochloride','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.'),('Aralia quinquefolia, Glycyrrhiza, Sarsaparilla, Av','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.'),('Asafetida, Crataegus Fruit, Lycopus Virginicus and','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),('Aspirin','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),('AVOBENZONE, HOMOSALATE, OCTISALATE, OCTOCRYLENE OX','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),('BENZOIC ACID, COLCHICUM AUTUMNALE BULB, SULFUR, AR','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'),('Celecoxib','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.'),('Conium maculatum, Natrium muriaticum, Ruta graveol','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),('Etomidate','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),('Fluoxetine','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'),('Glipizide and Metformin Hydrochloride','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),('guaifenesin','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),('Ibuprofen','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),('Isopropyl Alcohol','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),('Isosorbide Dinitrate','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.'),('Lamivudine','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),('mercaptopurine','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.'),('Nicotine polacrilex','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.'),('Norethindrone Acetate and Ethinyl Estradiol','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),('Petrolatum','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.'),('SENNA','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.'),('Sodium Monofluorophosphate','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),('TALC','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.'),('Titanium Dioxide and Zinc Oxide','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
/*!40000 ALTER TABLE `Medications` ENABLE KEYS */;

--
-- Table structure for table `Pharmacists`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pharmacists` (
  `CUsername` varchar(20) DEFAULT NULL,
  `Password` varchar(20) NOT NULL,
  `FirstName` varchar(15) NOT NULL,
  `LastName` varchar(15) NOT NULL,
  `PharmEmail` varchar(50) NOT NULL,
  `ClinicName` varchar(50) NOT NULL,
  PRIMARY KEY (`PharmEmail`),
  KEY `fk_02` (`ClinicName`),
  CONSTRAINT `fk_02` FOREIGN KEY (`ClinicName`) REFERENCES `Clinic` (`ClinicName`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pharmacists`
--

/*!40000 ALTER TABLE `Pharmacists` DISABLE KEYS */;
INSERT INTO `Pharmacists` VALUES ('adozdill8','yBvSsz1y','Aleen','Dozdill','adozdill8@techcrunch.com','Ozu'),('afranc1','TZgpzy126p','Ave','Franc','afranc1@stanford.edu','Realbuzz'),('agalbreath3','384YIHCbs4V','Arv','Galbreath','agalbreath3@facebook.com','Topicstorm'),('bbailel','308QFtwbE','Bessie','Baile','bbailel@phpbb.com','Flashpoint'),('bnurnyb','h4gYBsDV','Byrom','Nurny','bnurnyb@bluehost.com','Gigashots'),('cocrianef','sDuAoMZ2FUyN','Chrissy','O\'Criane','cocrianef@gnu.org','Topicstorm'),('cpencoto','jW1ovO','Chickie','Pencot','cpencoto@weebly.com','Agimba'),('demelinen','IuQgZRQ','Daria','Emeline','demelinen@upenn.edu','Kwilith'),('dogarag','41n2MXVfU9BS','Dita','O\' Gara','dogarag@vkontakte.ru','Kwilith'),('dstokeym','WTZPss','Dyana','Stokey','dstokeym@histats.com','Realblab'),('gketcher5','iEMIqJB','Guntar','Ketcher','gketcher5@t.co','Mycat'),('imacneice0','n8DUNWSuo4g5','Idalina','MacNeice','imacneice0@google.de','Reallinks'),('jcucinottae','HEkqbho','Joelle','Cucinotta','jcucinottae@netscape.com','Flashpoint'),('jkewzickc','ceqIkma','Janka','Kewzick','jkewzickc@list-manage.com','Yamia'),('kasquithi','5YurTLGI0dO8','Kit','Asquith','kasquithi@amazon.com','Photobug'),('kculwenj','Dkf5cvV3AXHg','Katusha','Culwen','kculwenj@purevolume.com','Twitterlist'),('lfey7','CHJsbyJvxv','Latashia','Fey','lfey7@icq.com','Quatz'),('lthistletonk','8YJFxbO','Lainey','Thistleton','lthistletonk@sciencedaily.com','LiveZ'),('mgozzetta','ghQ4tjjosQ','Marilyn','Gozzett','mgozzetta@unicef.org','LiveZ'),('pziehm9','AwULC8','Pietro','Ziehm','pziehm9@cnbc.com','Twitterwire'),('radao2','33Wnh2ifCA','Raff','Adao','radao2@illinois.edu','Topicstorm'),('sgarrish6','j1TiZEXDzNy','Sandor','Garrish','sgarrish6@wunderground.com','Devcast'),('singlefieldd','PRd0ORir','Shelba','Inglefield','singlefieldd@ocn.ne.jp','Dablist'),('stallyn4','8KJQtzRMJ','Stormi','Tallyn','stallyn4@spiegel.de','Browseblab'),('yjupeh','P91UFyy','Yolanthe','Jupe','yjupeh@digg.com','Photobug');
/*!40000 ALTER TABLE `Pharmacists` ENABLE KEYS */;

--
-- Table structure for table `Pharmacy Students`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pharmacy Students` (
  `EdUsername` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `SchoolName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  PRIMARY KEY (`EdUsername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pharmacy Students`
--

/*!40000 ALTER TABLE `Pharmacy Students` DISABLE KEYS */;
INSERT INTO `Pharmacy Students` VALUES ('acurleyd','fFiUPBj','Marquardt-Lehner','Amber','Curley'),('bdeboickc','gDRpSx','King LLC','Barron','Deboick'),('bgennb','VGTXtkfE9j9','Labadie, Doyle and Feest','Bernie','Genn'),('bkirtland3','2DujlVOO','Cremin Group','Bettina','Kirtland'),('bwolland5','U7ENT0','Rohan Group','Bram','Wolland'),('cockwelll','kbbZ3m8O0F7','Wyman-Runte','Clarita','Ockwell'),('eisley2','7JkGeTwBVJc','Zieme, Casper and Lowe','Elaina','Isley'),('ejovanovic7','lBdZ1B1GU','Walsh-White','Eugenia','Jovanovic'),('fdavittig','ppZCwdpqPn8S','McClure Group','Foster','Davitti'),('freynalds1','og04JaawvZ','Runolfsdottir, Smith and Jacobs','Freida','Reynalds'),('kaylwardo','7ItF5M','Kling, Gorczany and Nikolaus','Kendre','Aylward'),('kminchi8','WMNI6T','Klein and Sons','Krystalle','Minchi'),('lrentoul9','EWDVoEu6aB','Cronin Group','Leonelle','Rentoul'),('lwisdena','gdCKQZubhB','Schneider-Marquardt','Lucien','Wisden'),('nbourdon4','OHieiR3HFEQc','Medhurst Group','Neille','Bourdon'),('nglandk','VTAVQ4Ov0DBM','Luettgen-Marvin','Normie','Gland'),('pdollen6','1Nslmo','Wilkinson, Doyle and Erdman','Paddie','Dollen'),('pdysonn','vgPnZ2','Ritchie Inc','Pietra','Dyson'),('rdaintithh','RTj0bqi','Torp and Sons','Raynor','Daintith'),('rrothermelm','frQMM3DA9b','Bogan and Sons','Regina','Rothermel'),('rtiesj','DJaKeX','Muller-Nikolaus','Ripley','Ties'),('rvautrey0','eyuQLBa9AxG','Lowe Group','Ransom','Vautrey'),('sjosefowiczi','VL2XUxw1dHF','Turcotte, Block and Stroman','Shaun','Josefowicz'),('tjobbinsf','hgUl0zQXj','Mayert, Davis and Lebsack','Thedric','Jobbins'),('zsquirese','phM4N25sE','Konopelski-Prosacco','Zaneta','Squires');
/*!40000 ALTER TABLE `Pharmacy Students` ENABLE KEYS */;

--
-- Table structure for table `med_DC`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `med_DC` (
  `MName` varchar(50) NOT NULL,
  `DCName` varchar(50) NOT NULL,
  PRIMARY KEY (`MName`,`DCName`),
  KEY `fk_08` (`DCName`),
  CONSTRAINT `fk_07` FOREIGN KEY (`MName`) REFERENCES `Medications` (`MName`) ON DELETE RESTRICT,
  CONSTRAINT `fk_08` FOREIGN KEY (`DCName`) REFERENCES `Drug Classes` (`DCName`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `med_DC`
--

/*!40000 ALTER TABLE `med_DC` DISABLE KEYS */;
/*!40000 ALTER TABLE `med_DC` ENABLE KEYS */;

--
-- Table structure for table `med_interactions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `med_interactions` (
  `MName1` varchar(50) NOT NULL,
  `MName2` varchar(50) NOT NULL,
  PRIMARY KEY (`MName1`,`MName2`),
  KEY `fk_06` (`MName2`),
  CONSTRAINT `fk_05` FOREIGN KEY (`MName1`) REFERENCES `Medications` (`MName`) ON DELETE RESTRICT,
  CONSTRAINT `fk_06` FOREIGN KEY (`MName2`) REFERENCES `Medications` (`MName`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `med_interactions`
--

/*!40000 ALTER TABLE `med_interactions` DISABLE KEYS */;
INSERT INTO `med_interactions` VALUES ('Aspirin','Amitriptyline Hydrochloride'),('guaifenesin','Aralia quinquefolia, Glycyrrhiza, Sarsaparilla, Av'),('BENZOIC ACID, COLCHICUM AUTUMNALE BULB, SULFUR, AR','Asafetida, Crataegus Fruit, Lycopus Virginicus and'),('guaifenesin','Asafetida, Crataegus Fruit, Lycopus Virginicus and'),('Lamivudine','Asafetida, Crataegus Fruit, Lycopus Virginicus and'),('Sodium Monofluorophosphate','Asafetida, Crataegus Fruit, Lycopus Virginicus and'),('Sodium Monofluorophosphate','AVOBENZONE, HOMOSALATE, OCTISALATE, OCTOCRYLENE OX'),('Titanium Dioxide and Zinc Oxide','BENZOIC ACID, COLCHICUM AUTUMNALE BULB, SULFUR, AR'),('Nicotine polacrilex','Celecoxib'),('TALC','Celecoxib'),('BENZOIC ACID, COLCHICUM AUTUMNALE BULB, SULFUR, AR','Etomidate'),('Glipizide and Metformin Hydrochloride','Etomidate'),('mercaptopurine','Etomidate'),('Titanium Dioxide and Zinc Oxide','Etomidate'),('BENZOIC ACID, COLCHICUM AUTUMNALE BULB, SULFUR, AR','Glipizide and Metformin Hydrochloride'),('Fluoxetine','Ibuprofen'),('aluminum hydroxide, magnesium hydroxide, dimethico','Isopropyl Alcohol'),('Asafetida, Crataegus Fruit, Lycopus Virginicus and','Isopropyl Alcohol'),('Isosorbide Dinitrate','Lamivudine'),('Etomidate','mercaptopurine'),('Amitriptyline Hydrochloride','Nicotine polacrilex'),('Glipizide and Metformin Hydrochloride','Norethindrone Acetate and Ethinyl Estradiol'),('Aspirin','SENNA'),('Glipizide and Metformin Hydrochloride','SENNA'),('guaifenesin','Titanium Dioxide and Zinc Oxide');
/*!40000 ALTER TABLE `med_interactions` ENABLE KEYS */;

--
-- Table structure for table `patient_med`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_med` (
  `MName` varchar(50) NOT NULL,
  `PUsername` varchar(50) NOT NULL,
  `Indication` text NOT NULL,
  PRIMARY KEY (`MName`,`PUsername`),
  KEY `fk_04` (`PUsername`),
  CONSTRAINT `fk_03` FOREIGN KEY (`MName`) REFERENCES `Medications` (`MName`) ON DELETE RESTRICT,
  CONSTRAINT `fk_04` FOREIGN KEY (`PUsername`) REFERENCES `Layman Patients` (`PUsername`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_med`
--

/*!40000 ALTER TABLE `patient_med` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_med` ENABLE KEYS */;

--
-- Table structure for table `samp_prob`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `samp_prob` (
  `MName` varchar(50) NOT NULL,
  `SampProb` mediumtext NOT NULL,
  PRIMARY KEY (`MName`),
  CONSTRAINT `fk_11` FOREIGN KEY (`MName`) REFERENCES `Medications` (`MName`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samp_prob`
--

/*!40000 ALTER TABLE `samp_prob` DISABLE KEYS */;
INSERT INTO `samp_prob` VALUES ('Amitriptyline Hydrochloride','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.'),('Aralia quinquefolia, Glycyrrhiza, Sarsaparilla, Av','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),('Aspirin','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),('AVOBENZONE, HOMOSALATE, OCTISALATE, OCTOCRYLENE OX','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),('Conium maculatum, Natrium muriaticum, Ruta graveol','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),('Etomidate','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.'),('Fluoxetine','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),('Glipizide and Metformin Hydrochloride','Sed ante. Vivamus tortor. Duis mattis egestas metus.'),('Isopropyl Alcohol','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),('Lamivudine','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.'),('mercaptopurine','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),('Nicotine polacrilex','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),('Petrolatum','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),('SENNA','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'),('TALC','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.'),('Titanium Dioxide and Zinc Oxide','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
/*!40000 ALTER TABLE `samp_prob` ENABLE KEYS */;

--
-- Table structure for table `student_med`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_med` (
  `MName` varchar(50) NOT NULL,
  `EdUsername` varchar(50) NOT NULL,
  PRIMARY KEY (`MName`,`EdUsername`),
  KEY `fk_10` (`EdUsername`),
  CONSTRAINT `fk_09` FOREIGN KEY (`MName`) REFERENCES `Medications` (`MName`) ON DELETE RESTRICT,
  CONSTRAINT `fk_10` FOREIGN KEY (`EdUsername`) REFERENCES `Pharmacy Students` (`EdUsername`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_med`
--

/*!40000 ALTER TABLE `student_med` DISABLE KEYS */;
INSERT INTO `student_med` VALUES ('Ibuprofen','acurleyd'),('guaifenesin','bdeboickc'),('Glipizide and Metformin Hydrochloride','bgennb'),('Asafetida, Crataegus Fruit, Lycopus Virginicus and','bkirtland3'),('AVOBENZONE, HOMOSALATE, OCTISALATE, OCTOCRYLENE OX','bwolland5'),('SENNA','cockwelll'),('Aralia quinquefolia, Glycyrrhiza, Sarsaparilla, Av','eisley2'),('Celecoxib','ejovanovic7'),('Lamivudine','fdavittig'),('Amitriptyline Hydrochloride','freynalds1'),('Titanium Dioxide and Zinc Oxide','kaylwardo'),('Conium maculatum, Natrium muriaticum, Ruta graveol','kminchi8'),('Etomidate','lrentoul9'),('Fluoxetine','lwisdena'),('Aspirin','nbourdon4'),('Petrolatum','nglandk'),('BENZOIC ACID, COLCHICUM AUTUMNALE BULB, SULFUR, AR','pdollen6'),('TALC','pdysonn'),('mercaptopurine','rdaintithh'),('Sodium Monofluorophosphate','rrothermelm'),('Norethindrone Acetate and Ethinyl Estradiol','rtiesj'),('aluminum hydroxide, magnesium hydroxide, dimethico','rvautrey0'),('Nicotine polacrilex','sjosefowiczi'),('Isosorbide Dinitrate','tjobbinsf'),('Isopropyl Alcohol','zsquirese');
/*!40000 ALTER TABLE `student_med` ENABLE KEYS */;

--
-- Table structure for table `student_notes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_notes` (
  `Mname` varchar(20) NOT NULL,
  `EdUsername` varchar(20) NOT NULL,
  `Description` mediumtext,
  PRIMARY KEY (`EdUsername`,`Mname`),
  KEY `fk_15` (`Mname`),
  CONSTRAINT `fk_14` FOREIGN KEY (`EdUsername`) REFERENCES `Pharmacy Students` (`EdUsername`) ON DELETE CASCADE,
  CONSTRAINT `fk_15` FOREIGN KEY (`Mname`) REFERENCES `Medications` (`MName`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_notes`
--

/*!40000 ALTER TABLE `student_notes` DISABLE KEYS */;
INSERT INTO `student_notes` VALUES ('Aspirin','eisley2','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam'),('Ibuprofen','kaylwardo','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.'),('Celecoxib','nbourdon4','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
/*!40000 ALTER TABLE `student_notes` ENABLE KEYS */;

--
-- Table structure for table `use_casesDC`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `use_casesDC` (
  `DCname` varchar(50) NOT NULL,
  `EdInfo` mediumtext,
  `Description` mediumtext NOT NULL,
  PRIMARY KEY (`DCname`),
  CONSTRAINT `fk_13` FOREIGN KEY (`DCname`) REFERENCES `Drug Classes` (`DCName`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_casesDC`
--

/*!40000 ALTER TABLE `use_casesDC` DISABLE KEYS */;
INSERT INTO `use_casesDC` VALUES ('ac','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),('consectetuer','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),('curae','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),('dictumst etiam','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.'),('etiam pretium','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','In congue. Etiam justo. Etiam pretium iaculis justo.'),('eu tincidunt','Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),('faucibus orci','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),('id','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.'),('imperdiet','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),('in felis','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'),('metus','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),('metus aenean','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),('nec nisi','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),('non interdum','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),('nulla mollis','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.'),('nulla nunc','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.'),('porta','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),('sapien','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.'),('sem','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.'),('sit amet','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),('tellus','Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'),('tristique est','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Phasellus in felis. Donec semper sapien a libero. Nam dui.'),('ut suscipit','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),('volutpat eleifend','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
/*!40000 ALTER TABLE `use_casesDC` ENABLE KEYS */;

--
-- Table structure for table `use_casesM`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `use_casesM` (
  `Mname` varchar(50) NOT NULL,
  `EdInfo` mediumtext,
  `Description` mediumtext NOT NULL,
  PRIMARY KEY (`Mname`),
  CONSTRAINT `fk_12` FOREIGN KEY (`Mname`) REFERENCES `Medications` (`MName`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_casesM`
--

/*!40000 ALTER TABLE `use_casesM` DISABLE KEYS */;
INSERT INTO `use_casesM` VALUES ('Amitriptyline Hydrochloride','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.'),('Aspirin','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'),('AVOBENZONE, HOMOSALATE, OCTISALATE, OCTOCRYLENE OX','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'),('BENZOIC ACID, COLCHICUM AUTUMNALE BULB, SULFUR, AR','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),('Celecoxib','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.'),('Conium maculatum, Natrium muriaticum, Ruta graveol','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.'),('Etomidate','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),('Fluoxetine','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),('Ibuprofen','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.'),('Isopropyl Alcohol','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),('Isosorbide Dinitrate','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),('mercaptopurine','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Fusce consequat. Nulla nisl. Nunc nisl.'),('Nicotine polacrilex','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),('Norethindrone Acetate and Ethinyl Estradiol','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'),('Petrolatum','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),('SENNA','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),('Sodium Monofluorophosphate','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'),('TALC','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),('Titanium Dioxide and Zinc Oxide','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
/*!40000 ALTER TABLE `use_casesM` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-17  8:57:17
