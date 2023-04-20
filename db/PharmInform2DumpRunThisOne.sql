-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: PharmInform2
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
INSERT INTO `Clinic` VALUES ('Agimba');
INSERT INTO `Clinic` VALUES ('Ailane');
INSERT INTO `Clinic` VALUES ('Browsezoom');
INSERT INTO `Clinic` VALUES ('Camimbo');
INSERT INTO `Clinic` VALUES ('Cogilith');
INSERT INTO `Clinic` VALUES ('Dabtype');
INSERT INTO `Clinic` VALUES ('DabZ');
INSERT INTO `Clinic` VALUES ('Divavu');
INSERT INTO `Clinic` VALUES ('Edgepulse');
INSERT INTO `Clinic` VALUES ('Edgewire');
INSERT INTO `Clinic` VALUES ('Fanoodle');
INSERT INTO `Clinic` VALUES ('Geba');
INSERT INTO `Clinic` VALUES ('Gigazoom');
INSERT INTO `Clinic` VALUES ('Jaloo');
INSERT INTO `Clinic` VALUES ('Lajo');
INSERT INTO `Clinic` VALUES ('Linklinks');
INSERT INTO `Clinic` VALUES ('Myworks');
INSERT INTO `Clinic` VALUES ('Pixonyx');
INSERT INTO `Clinic` VALUES ('Quamba');
INSERT INTO `Clinic` VALUES ('Quimba');
INSERT INTO `Clinic` VALUES ('Riffwire');
INSERT INTO `Clinic` VALUES ('Roodel');
INSERT INTO `Clinic` VALUES ('Thoughtblab');
INSERT INTO `Clinic` VALUES ('Topicblab');
INSERT INTO `Clinic` VALUES ('Trilia');
INSERT INTO `Clinic` VALUES ('Twitterbridge');
INSERT INTO `Clinic` VALUES ('Twitterlist');
INSERT INTO `Clinic` VALUES ('Viva');
INSERT INTO `Clinic` VALUES ('Yakitri');
INSERT INTO `Clinic` VALUES ('Yata');
/*!40000 ALTER TABLE `Clinic` ENABLE KEYS */;

--
-- Table structure for table `Clinical Trials`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clinical Trials` (
  `CTName` varchar(50) NOT NULL,
  `ClinicName` varchar(50) DEFAULT NULL,
  `CTIndication` text,
  PRIMARY KEY (`CTName`),
  KEY `ClinicName` (`ClinicName`),
  CONSTRAINT `Clinical Trials_ibfk_1` FOREIGN KEY (`ClinicName`) REFERENCES `Clinic` (`ClinicName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clinical Trials`
--

/*!40000 ALTER TABLE `Clinical Trials` DISABLE KEYS */;
INSERT INTO `Clinical Trials` VALUES ('Alpha','Yakitri','Striking against sports equipment w subsequent fall, sequela');
INSERT INTO `Clinical Trials` VALUES ('Alphazap','Lajo','Anterior dislocation of unspecified radial head, subs encntr');
INSERT INTO `Clinical Trials` VALUES ('Andalax','Linklinks','Mechanical ectropion of unspecified eye, unspecified eyelid');
INSERT INTO `Clinical Trials` VALUES ('Bamity','Quamba','Air embolism (traumatic), initial encounter');
INSERT INTO `Clinical Trials` VALUES ('Bigtax','Roodel','Nondisp fx of unsp radial styloid pro, 7thQ');
INSERT INTO `Clinical Trials` VALUES ('Bitchip','Twitterlist','Abscess of tendon sheath, left hand');
INSERT INTO `Clinical Trials` VALUES ('Cardify','Yata','Phlebitis and thrombophlebitis of other sites');
INSERT INTO `Clinical Trials` VALUES ('Duobam','Linklinks','Poisoning by local anesthetics, accidental, sequela');
INSERT INTO `Clinical Trials` VALUES ('Fintone','Camimbo','Polyarthritis, unspecified');
INSERT INTO `Clinical Trials` VALUES ('Fix San','Divavu','External constriction, right lesser toe(s), subs encntr');
INSERT INTO `Clinical Trials` VALUES ('Fixflex','Browsezoom','Nondisp fx of olecran pro w intartic extn r ulna, 7thQ');
INSERT INTO `Clinical Trials` VALUES ('Flexidy','DabZ','Foreign body in conjunctival sac');
INSERT INTO `Clinical Trials` VALUES ('Flowdesk','Jaloo','LeFort II fracture, sequela');
INSERT INTO `Clinical Trials` VALUES ('Gembucket','Ailane','Burn of unspecified internal organ');
INSERT INTO `Clinical Trials` VALUES ('Greenlam','Pixonyx','Nondisp seg fx shaft of rad, l arm, 7thD');
INSERT INTO `Clinical Trials` VALUES ('Home Ing','Camimbo','Rheumatoid lung disease w rheumatoid arthritis of ank/ft');
INSERT INTO `Clinical Trials` VALUES ('It','Roodel','Burn second degree of unsp mult fngr, not inc thumb, sqla');
INSERT INTO `Clinical Trials` VALUES ('Job','Myworks','Strain long flexor musc/fasc/tend l thm at wrs/hnd lv, init');
INSERT INTO `Clinical Trials` VALUES ('Konklab','Yata','Unsp pedl cyclst inj in clsn w nonmtr vehicle nontraf, sqla');
INSERT INTO `Clinical Trials` VALUES ('Lotstring','Thoughtblab','Other superficial injuries of ankle');
INSERT INTO `Clinical Trials` VALUES ('Mat Lam Tam','Lajo','Unsp fx lower end of l humerus, subs for fx w delay heal');
INSERT INTO `Clinical Trials` VALUES ('Otcom','Riffwire','Disp fx of dist phalanx of l rng fngr, 7thG');
INSERT INTO `Clinical Trials` VALUES ('Overhold','Edgewire','Ped on skateboard injured in collision w hv veh, unsp, init');
INSERT INTO `Clinical Trials` VALUES ('Ronstring','Cogilith','Nondisp fx of body of scapula, l shldr, 7thK');
INSERT INTO `Clinical Trials` VALUES ('Sonair','Agimba','Foreign body on external eye, part unsp, unsp eye, sequela');
INSERT INTO `Clinical Trials` VALUES ('Sonsing','Jaloo','Babystroller colliding with stationary object, init encntr');
INSERT INTO `Clinical Trials` VALUES ('Stim','Yata','Unspecified injury of unspecified eye and orbit, init encntr');
INSERT INTO `Clinical Trials` VALUES ('Sub-Ex','Topicblab','Inj musc/fasc/tend at thigh level, right thigh, sequela');
INSERT INTO `Clinical Trials` VALUES ('Tampflex','Yakitri','Cocaine abuse with intoxication with delirium');
INSERT INTO `Clinical Trials` VALUES ('Temp','Edgewire','Pnctr w foreign body of r rng fngr w damage to nail, init');
INSERT INTO `Clinical Trials` VALUES ('Tin','Twitterlist','Acute nonparalytic poliomyelitis');
INSERT INTO `Clinical Trials` VALUES ('Toughjoyfax','Pixonyx','Contact w unsp hot objects, undetermined intent, init encntr');
INSERT INTO `Clinical Trials` VALUES ('Treeflex','Gigazoom','Unsp injury of unsp musc/fasc/tend at shldr/up arm');
INSERT INTO `Clinical Trials` VALUES ('Tres-Zap','Twitterlist','Contusion of other urinary and pelvic organ, init encntr');
INSERT INTO `Clinical Trials` VALUES ('Trippledex','Browsezoom','Poisoning by oth systemic antibiotics, intentional self-harm');
INSERT INTO `Clinical Trials` VALUES ('Vagram','Geba','Displ spiral fx shaft of l fibula, 7thM');
INSERT INTO `Clinical Trials` VALUES ('Ventosanzap','Viva','Nondisp commnt fx shaft of rad, unsp arm, 7thJ');
INSERT INTO `Clinical Trials` VALUES ('Voltsillam','Ailane','Contusion of unspecified foot, initial encounter');
INSERT INTO `Clinical Trials` VALUES ('Voyatouch','Divavu','Displ oblique fx shaft of l tibia, init for opn fx type I/2');
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
INSERT INTO `Drug Classes` VALUES ('ac');
INSERT INTO `Drug Classes` VALUES ('at');
INSERT INTO `Drug Classes` VALUES ('condimentum curabitur');
INSERT INTO `Drug Classes` VALUES ('convallis');
INSERT INTO `Drug Classes` VALUES ('convallis duis');
INSERT INTO `Drug Classes` VALUES ('cras');
INSERT INTO `Drug Classes` VALUES ('curae');
INSERT INTO `Drug Classes` VALUES ('diam');
INSERT INTO `Drug Classes` VALUES ('elementum');
INSERT INTO `Drug Classes` VALUES ('enim sit');
INSERT INTO `Drug Classes` VALUES ('est phasellus');
INSERT INTO `Drug Classes` VALUES ('eu');
INSERT INTO `Drug Classes` VALUES ('eu interdum');
INSERT INTO `Drug Classes` VALUES ('id');
INSERT INTO `Drug Classes` VALUES ('imperdiet');
INSERT INTO `Drug Classes` VALUES ('integer');
INSERT INTO `Drug Classes` VALUES ('interdum');
INSERT INTO `Drug Classes` VALUES ('justo');
INSERT INTO `Drug Classes` VALUES ('lacinia');
INSERT INTO `Drug Classes` VALUES ('lacus at');
INSERT INTO `Drug Classes` VALUES ('lectus');
INSERT INTO `Drug Classes` VALUES ('leo');
INSERT INTO `Drug Classes` VALUES ('ligula vehicula');
INSERT INTO `Drug Classes` VALUES ('lorem vitae');
INSERT INTO `Drug Classes` VALUES ('maecenas tincidunt');
INSERT INTO `Drug Classes` VALUES ('malesuada');
INSERT INTO `Drug Classes` VALUES ('mauris');
INSERT INTO `Drug Classes` VALUES ('mauris vulputate');
INSERT INTO `Drug Classes` VALUES ('neque');
INSERT INTO `Drug Classes` VALUES ('nisl');
INSERT INTO `Drug Classes` VALUES ('nulla integer');
INSERT INTO `Drug Classes` VALUES ('ornare');
INSERT INTO `Drug Classes` VALUES ('pede');
INSERT INTO `Drug Classes` VALUES ('pede posuere');
INSERT INTO `Drug Classes` VALUES ('pede venenatis');
INSERT INTO `Drug Classes` VALUES ('pellentesque');
INSERT INTO `Drug Classes` VALUES ('quam');
INSERT INTO `Drug Classes` VALUES ('sit');
INSERT INTO `Drug Classes` VALUES ('tortor');
INSERT INTO `Drug Classes` VALUES ('turpis');
INSERT INTO `Drug Classes` VALUES ('ultrices');
INSERT INTO `Drug Classes` VALUES ('ultrices posuere');
INSERT INTO `Drug Classes` VALUES ('ultricies eu');
INSERT INTO `Drug Classes` VALUES ('vel');
/*!40000 ALTER TABLE `Drug Classes` ENABLE KEYS */;

--
-- Table structure for table `Layman Patients`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Layman Patients` (
  `PUsername` varchar(20) NOT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `PharmEmail` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PUsername`),
  KEY `PharmEmail` (`PharmEmail`),
  CONSTRAINT `Layman Patients_ibfk_1` FOREIGN KEY (`PharmEmail`) REFERENCES `Pharmacists` (`PharmEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layman Patients`
--

/*!40000 ALTER TABLE `Layman Patients` DISABLE KEYS */;
INSERT INTO `Layman Patients` VALUES ('aaddams8b','HSOOkUAc0U','Alejandra','Addams','2002-07-15','aaddams8b@latimes.co','448-905-5060','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('abarrowhz','lDEH8HQIE','Alison','Barrow','1966-06-25','abarrowhz@rambler.ru','104-602-0620','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('abirth8c','MScY2Ykbwb','Adelaida','Birth','1978-08-09','abirth8c@cbsnews.com','163-650-1798','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('ablais7b','2A29Fj8FkkSp','Ansell','Blais','1932-02-27','ablais7b@va.gov','690-431-7856','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('abonaviaq2','tsS9hYe3BcR','Adiana','Bonavia','2006-06-29','abonaviaq2@t-online.','305-978-8557','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('abremmell34','ZgY5NVV','Adan','Bremmell','1963-09-04','abremmell34@dell.com','260-867-5426','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('acalderonoe','RVGWJb4iNu','Aurilia','Calderon','1964-09-27','acalderonoe@alexa.co','724-253-0831','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('acarlettiad','GIW4oXPXiUp','Alden','Carletti','2007-11-13','acarlettiad@jimdo.co','108-732-3450','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('acatherall5c','qTttUTd6Gaji','Amby','Catherall','2010-05-27','acatherall5c@hostgat','130-222-5808','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('aciccicl','lJNocFuu','Alain','Cicci','1997-09-12','aciccicl@163.com','196-897-9594','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('aculhamg','PM8J9z9L','Andrew','Culham','1984-05-01','aculhamg@google.com','790-841-1752','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('adearlovegy','UnUXt0J5','Audre','Dearlove','1928-04-03','adearlovegy@alibaba.','461-747-5257','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('adelagua9h','XYYRTq59','Aldrich','Delagua','1930-10-19','adelagua9h@bbc.co.uk','765-620-0059','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('adezamora8o','0Dmia9x1XKNI','Alfred','de Zamora','1977-08-22','adezamora8o@surveymo','868-684-7961','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('adillestoncw','9FEcpXA','Adham','Dilleston','1960-10-01','adillestoncw@barnesa','379-209-5618','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('aduddenid','CKnbwj','Adolph','Dudden','2020-07-28','aduddenid@cisco.com','211-567-8970','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('adumper48','3ij9jyZgV','Ariela','Dumper','1924-09-07','adumper48@cam.ac.uk','551-151-5149','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('aemby7o','fmB4PjhybLO','Alexia','Emby','2018-10-18','aemby7o@mail.ru','145-437-1196','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('aendrighil5','0jK5HLPc9s','Alfons','Endrighi','1980-08-31','aendrighil5@berkeley','218-580-3796','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('afarnishcn','Cv7FEV2','Adrian','Farnish','2015-02-26','afarnishcn@ft.com','258-574-2858','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('afelliniqv','wLHZgt0hf3M2','Andrus','Fellini','1956-09-23','afelliniqv@smugmug.c','265-764-3497','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('agamonio','fXXW2lNP1F3U','Abigael','Gamon','2008-09-07','agamonio@bloglovin.c','362-335-9850','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('agarbottpd','HDZYbya','Abbott','Garbott','1995-11-14','agarbottpd@feedburne','286-616-9421','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('agilletcg','Lt0Ma2CkMS','Arny','Gillet','1938-06-13','agilletcg@artisteer.','562-877-1214','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('agoldinqe','L5QsgwKCQ','Arlinda','Goldin','1949-06-05','agoldinqe@cloudflare','216-763-2225','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('agowdridgee7','F7GbbSH98i','Ajay','Gowdridge','2022-01-24','agowdridgee7@washing','163-568-0283','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('agrunguerbd','aUeEuwhR0VI','Alfi','Grunguer','1962-06-08','agrunguerbd@blogspot','124-351-1049','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('ahancellnh','hlGWeHGT','Antonella','Hancell','1961-05-08','ahancellnh@webs.com','690-186-9443','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('ahappel6e','FAChoh','Arabella','Happel','1967-07-25','ahappel6e@buzzfeed.c','912-752-1972','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('ahaslam9c','sDteXrQ','Adella','Haslam','2013-05-12','ahaslam9c@wikia.com','834-475-2821','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('ahavercroftrn','e5tJtQNYep','Ariana','Havercroft','2005-09-22','ahavercroftrn@biglob','981-724-5421','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('aheinreich8k','1mEy2r','Ade','Heinreich','1987-10-13','aheinreich8k@godaddy','333-104-1139','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('ahemmsn4','Btn1gc','Angy','Hemms','1979-04-08','ahemmsn4@mlb.com','157-175-8590','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('aingleby18','rYuKSUU0JTNK','Alvinia','Ingleby','1981-06-07','aingleby18@theatlant','958-774-5753','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('ajanek38','WjT8ao','Alex','Janek','1978-02-13','ajanek38@360.cn','402-590-4002','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('ajarrattg5','PyiK04BqI','Aindrea','Jarratt','1947-04-11','ajarrattg5@typepad.c','541-288-6486','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('ajedrysj2','upS0scllbd','Alameda','Jedrys','2011-09-04','ajedrysj2@nyu.edu','818-339-8042','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('akeneline','9OgQmaUUYm','Ambrosius','Kenelin','2016-05-30','akeneline@jiathis.co','544-443-7548','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('akleinsteinf9','2Zxi2KeS','Amalita','Kleinstein','1959-04-02','akleinsteinf9@fotki.','791-893-1676','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('aklessen5','EYb9bfFEZU0','Amory','Klesse','1963-01-25','aklessen5@house.gov','935-753-8756','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('akrammere2','VZ06mwf2p','Anselma','Krammer','1971-10-26','akrammere2@aboutads.','195-771-8638','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('akuresg2','uCpjQHwc','Adela','Kures','1922-09-01','akuresg2@earthlink.n','326-496-9521','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('alandrickm9','dL3tkxz','Arleyne','Landrick','1936-03-25','alandrickm9@blog.com','337-524-0049','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('alibbie8z','cOJLXasIv7u','Ardelis','Libbie','1988-01-13','alibbie8z@yandex.ru','550-381-7790','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('aliepinsah','8M9yyzmBtKq','Archaimbaud','Liepins','1964-10-28','aliepinsah@un.org','725-440-4040','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('amacalpinoq','XzB61ucB','Alvin','MacAlpin','1974-08-01','amacalpinoq@cdbaby.c','632-973-4621','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('amacciea','n62IEkdLn','Alyse','Macci','1992-01-31','amacciea@cloudflare.','569-994-0816','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('amcneish6g','LPvQgzuDb2Y','Aldridge','McNeish','2009-02-18','amcneish6g@naver.com','240-944-2785','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('amerrgenp2','UGFwqpkmgNXA','Anica','Merrgen','2023-01-27','amerrgenp2@gmpg.org','345-755-1283','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('amewburnh1','s44tXd9','Aleen','Mewburn','1929-09-23','amewburnh1@istockpho','503-916-8028','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('amompessonir','g8xlVl','Adrian','Mompesson','2007-11-01','amompessonir@cnbc.co','922-365-3476','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('ananaku','OhluDkKITt','Aleece','Nana','1932-09-13','ananaku@miibeian.gov','467-753-1012','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('aohannigan11','4qfbuZvq6JFP','Alic','O\'Hannigan','1927-10-04','aohannigan11@craigsl','642-842-3454','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('aoseltonpq','uE6nr6','Augie','Oselton','1962-10-11','aoseltonpq@ovh.net','423-159-4495','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('aparlour9d','XuA4oz','Alleyn','Parlour','1945-04-27','aparlour9d@freewebs.','257-848-3546','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('apennydc','3SsHkJbC','Alanna','Penny','1982-04-18','apennydc@ovh.net','840-865-9862','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('aperhame3','3bbfDKaRpFX','Aymer','Perham','1971-10-22','aperhame3@cisco.com','267-481-6268','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('apointingm','YC23JO','Adey','Pointing','1991-06-30','apointingm@cornell.e','480-451-2852','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('arainemp','JKTr2Jd','Alf','Raine','1982-04-12','arainemp@google.com.','850-640-8108','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('arawlcliffey','jqybqXCSase','Annie','Rawlcliffe','1975-12-10','arawlcliffey@gizmodo','109-149-3159','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('aremnantp4','SzcgAp5t4','Agna','Remnant','1957-03-03','aremnantp4@arstechni','281-119-2120','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('aromaynl','06jbBi171gT6','Adlai','Romayn','2020-05-01','aromaynl@ask.com','169-912-8271','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('ascarffeqb','gGUwrUcdzvCK','Aleen','Scarffe','1998-07-26','ascarffeqb@wikispace','716-550-9966','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('ashiers6p','Z41AQppAz','Amerigo','Shiers','2013-09-22','ashiers6p@fema.gov','558-353-8651','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('ashorton4k','sAsFHpumc2','Abagail','Shorton','1928-02-05','ashorton4k@google.nl','579-238-7763','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('asimison95','9tghxibuY','Ambrose','Simison','1977-11-12','asimison95@123-reg.c','970-860-4000','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('asimmsih','MbKI2utd','Avis','Simms','1949-05-04','asimmsih@netscape.co','402-888-8826','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('aslograve5u','9yJJfTx','Augustine','Slograve','1963-12-29','aslograve5u@shinysta','637-477-8000','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('asucreap','F0vmOS2BgX','Aggie','Sucre','1964-08-12','asucreap@a8.net','121-530-9890','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('atalboyeg','AaD04Zde','Alejandra','Talboy','1940-05-08','atalboyeg@nih.gov','251-195-3146','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('atichner2i','dGfQUCpaM','Antoine','Tichner','1992-03-02','atichner2i@washingto','534-746-8880','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('aturle5e','CKS8kgn2','Ashlin','Turle','1949-04-21','aturle5e@ca.gov','973-777-4161','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('auremi','QOeRvl','Alvinia','Ure','2018-03-17','auremi@slate.com','291-683-8684','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('avandersonki','755mErJge5uz','Alison','Vanderson','1979-08-26','avandersonki@elegant','289-458-9982','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('awardallbu','6yecAGJawF','Alena','Wardall','1971-04-26','awardallbu@t.co','766-210-5066','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('awayon5a','TwW1dF','Abbe','Wayon','1986-06-03','awayon5a@tinyurl.com','849-770-6585','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('awestheadac','qZMwbl','Alasdair','Westhead','1991-11-16','awestheadac@vistapri','443-989-0166','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('awheowall3z','0QzKfi','Aleksandr','Wheowall','1981-12-27','awheowall3z@google.c','928-467-7114','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('awilton25','J0v8Fr','Ava','Wilton','1957-03-13','awilton25@joomla.org','730-563-5982','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('awinchcombeep','2PlXPW','Anthiathia','Winchcombe','1962-04-02','awinchcombeep@imdb.c','756-928-3387','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('awortleyff','AxvHuoRIqni8','Adena','Wortley','1953-07-27','awortleyff@blogger.c','170-849-7186','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('ayelyashev8n','EMFzf9doeY','Arlyne','Yelyashev','1946-11-24','ayelyashev8n@icio.us','882-474-1126','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('bagatefi','gwrx38kUEDzU','Brana','Agate','1989-06-25','bagatefi@oracle.com','134-576-3137','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('bantram3y','zu6fcqU8zM2','Bibbye','Antram','1998-06-28','bantram3y@kickstarte','431-602-5833','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('barnaudetgj','YzgjBQr','Britteny','Arnaudet','1989-09-29','barnaudetgj@accuweat','984-879-2128','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('bbegbierb','c4I5S1kot','Bel','Begbie','1980-06-16','bbegbierb@hugedomain','657-294-0023','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('bblowers1i','xphA029O','Brook','Blowers','1940-04-28','bblowers1i@github.io','514-528-8400','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('bbuckje','Hc2FNoiRB','Broddie','Buck','1954-06-01','bbuckje@foxnews.com','759-480-3125','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('bcardenozak6','w4XdGp','Barbey','Cardenoza','2010-01-31','bcardenozak6@nydaily','241-625-6888','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('bcattod8','SdHIxwVQ','Babita','Catto','2009-10-08','bcattod8@cnbc.com','577-750-6222','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('bclunanpg','ayQ8dMtP','Barnaby','Clunan','1991-08-16','bclunanpg@wordpress.','604-564-7843','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('bcottlemq','aL83x5r','Bryana','Cottle','1934-03-26','bcottlemq@stanford.e','645-597-7943','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('bcraydengc','oTeHPgtp07kj','Benny','Crayden','1943-08-31','bcraydengc@huffingto','234-179-9512','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('bcrayton2a','BDX7AJ','Brander','Crayton','1993-09-05','bcrayton2a@home.pl','433-795-5386','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('bdaintrye5','MwhXQq84n','Bond','Daintry','1977-09-08','bdaintrye5@businessw','498-906-6863','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('bdanieliqd','5qSYcL','Blondy','Danieli','1939-08-20','bdanieliqd@dailymail','926-861-9823','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('bdarnborough5d','QT9Z7F1F','Beatrix','Darnborough','1929-09-28','bdarnborough5d@angel','420-247-4779','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('bdaughtryh7','5iIw2XXCCSrF','Blythe','Daughtry','2000-04-14','bdaughtryh7@reuters.','738-962-4990','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('bdenersis','ogcL1lZJSyOJ','Budd','Deners','1943-07-25','bdenersis@yolasite.c','998-825-9012','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('bdennesg4','r6RDGJzjl','Bryant','Dennes','1934-04-22','bdennesg4@columbia.e','330-944-1800','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('bdiggernt','LhyGps1rOhN','Broderick','Digger','1935-05-21','bdiggernt@columbia.e','436-718-9896','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('bdriversjb','iLgCWkA6O','Beryle','Drivers','1936-03-09','bdriversjb@lulu.com','920-799-9358','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('bdurnford7q','LviQrAhVQI','Brnaby','Durnford','1974-09-04','bdurnford7q@adobe.co','175-721-8085','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('bedeaw','lijU4lxa1v','Babita','Ede','1963-06-11','bedeaw@flavors.me','314-986-7003','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('bedgleyf1','3OL9hERfKj','Bailey','Edgley','1982-11-06','bedgleyf1@ifeng.com','504-649-7431','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('bellicombem3','OGoKm7qKP','Bryn','Ellicombe','2001-05-14','bellicombem3@trellia','740-153-0686','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('bfaganl9','u7sSxlDV','Bree','Fagan','1972-02-10','bfaganl9@istockphoto','313-185-2196','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('bhagstonecp','rPJGgwFt','Bernard','Hagstone','1953-04-27','bhagstonecp@referenc','707-749-5013','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('bhelksqa','gWyDZAS','Baryram','Helks','1964-10-01','bhelksqa@archive.org','131-287-8321','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('bhourican8j','2IQ1IRcG98g','Barret','Hourican','2004-09-10','bhourican8j@booking.','512-259-9030','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('bhowlingsgs','QJXjHt2LRYF','Bryana','Howlings','1953-01-22','bhowlingsgs@ycombina','726-210-1244','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('bhryskiewiczb1','qv1m7fg','Bearnard','Hryskiewicz','2017-01-26','bhryskiewiczb1@imdb.','332-537-8637','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('bjerched','6Vhwut','Burnaby','Jerche','1982-06-24','bjerched@topsy.com','397-887-2344','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('bkalkofenfh','ajQ1QlMFrdTf','Benedict','Kalkofen','1928-08-14','bkalkofenfh@google.c','351-830-0926','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('bmabbel7','SH2LNL','Bear','Mabbe','1932-04-25','bmabbel7@cnet.com','927-720-2152','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('bmapledoorehi','Jx0L6xn','Branden','Mapledoore','1967-11-04','bmapledoorehi@arstec','818-780-5729','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('bmorbya1','m66XiGgK','Biddy','Morby','2018-05-31','bmorbya1@vk.com','320-349-0011','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('bnelthorpdp','ovRvEN','Bambi','Nelthorp','1946-09-23','bnelthorpdp@prlog.or','979-917-5118','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('boddey42','rewKAWMxkt','Boigie','Oddey','2012-12-23','boddey42@nydailynews','158-309-6315','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('bpaterno72','SDzRtp','Bernarr','Paterno','1986-09-04','bpaterno72@yale.edu','969-793-4415','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('bpedrielliiq','FZjSWYYzXWja','Brnaba','Pedrielli','1985-12-28','bpedrielliiq@usgs.go','776-123-0061','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('bpyrtonb5','mNPnff','Brucie','Pyrton','2020-03-18','bpyrtonb5@elpais.com','646-788-4418','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('brichenqg','ULcB6sDJ','Bobby','Richen','1947-08-31','brichenqg@netvibes.c','892-492-5604','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('brothery9m','5eYksXSK6q','Basile','Rothery','1961-12-18','brothery9m@unblog.fr','916-132-3352','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('bsaiceq6','B2L4Dnpg','Berti','Saice','1970-03-16','bsaiceq6@cnet.com','499-367-4341','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('bscrivenorj7','zBwbfNg','Bobinette','Scrivenor','1948-07-21','bscrivenorj7@bing.co','350-225-0262','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('bshiellb','thUgkXKTY4','Becca','Shiell','1952-11-10','bshiellb@github.com','640-234-3599','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('bshurvillei0','CkVso3JPZGZ','Boycie','Shurville','2006-11-02','bshurvillei0@reddit.','830-932-8607','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('bskirven7t','rsHIQ4n24316','Bernardo','Skirven','2006-04-27','bskirven7t@globo.com','925-907-2568','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('bskittc6','5qFYK7Nc6w8','Boris','Skitt','1977-11-12','bskittc6@google.ru','467-242-9929','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('bsonnerhh','zEYUtT','Brok','Sonner','1924-05-03','bsonnerhh@telegraph.','303-289-0223','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('bspinellihm','Vgtg94f','Babs','Spinelli','2017-02-26','bspinellihm@msu.edu','863-638-7230','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('bsturgeskp','8ObocbNuLjUw','Benedikta','Sturges','1984-11-20','bsturgeskp@nationalg','122-461-8479','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('btenniswooddq','y7cQ0wd9','Bettye','Tenniswood','1923-03-29','btenniswooddq@craigs','978-249-4076','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('bthornthwaiteet','UNGuFqAy11D','Britni','Thornthwaite','1966-09-30','bthornthwaiteet@163.','314-850-0164','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('btofaninile','uZDOM7BVsiAx','Bail','Tofanini','1924-03-15','btofaninile@craigsli','770-382-7240','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('bveltende','nyqW1TtsYj','Beverie','Velten','2010-09-16','bveltende@harvard.ed','921-130-2907','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('bwalley61','ksOCq0MP','Ben','Walley','1989-02-17','bwalley61@seesaa.net','119-472-9064','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('bwarmishamfk','GDesiTo8Fl','Becca','Warmisham','1993-03-10','bwarmishamfk@psu.edu','155-214-7854','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('bwills9a','GAvszf2Ivi','Brittan','Wills','2009-12-18','bwills9a@buzzfeed.co','465-232-6984','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('cackerleycz','x8ZKb7f','Cristal','Ackerley','2001-02-02','cackerleycz@sakura.n','553-869-6458','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('cambroz55','HM6SKMb','Catlin','Ambroz','1942-08-31','cambroz55@newyorker.','170-772-6808','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('candover3','p7cVHmVv','Charisse','Andover','2009-12-11','candover3@google.com','882-418-6662','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('canglissv','oaWgkgHpY','Calhoun','Angliss','1924-10-26','canglissv@skype.com','266-693-3720','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('carboneb','QPfeTOeo','Clemence','Arbon','1943-11-27','carboneb@tripod.com','472-493-6068','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('castmanqs','dM1OWk1a','Cyb','Astman','1928-01-05','castmanqs@google.cn','653-372-5161','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('cbertelmotpm','pgeMUbGe','Carlen','Bertelmot','1966-03-17','cbertelmotpm@friendf','251-135-4049','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('cbourthoumieux7x','pQpCVGIcmX','Celisse','Bourthoumieux','1961-10-07','cbourthoumieux7x@acc','546-949-1723','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('cbuchanan12','wsbrVx','Constanta','Buchanan','1984-11-24','cbuchanan12@umn.edu','602-355-8621','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('cbulstrodece','noCl2CiK1dI','Catlin','Bulstrode','2004-03-18','cbulstrodece@digg.co','949-445-8645','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('cbuntinox','uQfmW1rlNPaF','Car','Buntin','2008-01-22','cbuntinox@pbs.org','467-441-3975','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('cburrelj','A3hkKp','Costanza','Burrel','1991-06-17','cburrelj@paypal.com','133-307-1447','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('ccarruthl3','XYVzqZ','Caritta','Carruth','1928-09-10','ccarruthl3@nih.gov','680-808-6145','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('cceaplengx','1Y8K22n4Pzf','Chrotoem','Ceaplen','1933-02-28','cceaplengx@jugem.jp','502-720-3243','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('ccogzellow','JfFFWLq','Cammy','Cogzell','1985-03-11','ccogzellow@usda.gov','739-295-9834','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('cconduitag','1qBxz5Wrfb','Corrinne','Conduit','1967-06-28','cconduitag@xinhuanet','907-279-3791','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('ccreggav','2OFk9DyvJIRx','Cole','Cregg','1959-10-14','ccreggav@prweb.com','588-358-7553','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('ccroserpv','dliizEOmU','Claus','Croser','2018-03-21','ccroserpv@freewebs.c','997-991-3926','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('cdanilovich2k','jKUbwPl','Carmine','Danilovich','1932-11-26','cdanilovich2k@marrio','814-475-5713','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('cdarlingtonds','jV0ezPt','Connie','Darlington','1979-05-07','cdarlingtonds@jimdo.','773-290-4759','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('cdelacourtgo','i1juuaqTMJ','Constancy','Delacourt','2019-09-29','cdelacourtgo@rakuten','600-354-7937','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('cdellenbroker9','xoSKyNgnI','Celka','Dellenbroker','2015-06-04','cdellenbroker9@teleg','507-176-3360','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('cdictusq1','8OgJc2ImXC','Charlean','Dictus','1947-10-18','cdictusq1@foxnews.co','911-390-3085','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('cditchfieldx','xZJnxdKMJ','Conrad','Ditchfield','1924-11-18','cditchfieldx@etsy.co','588-658-1354','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('cdorsey52','LKv82ue06Op','Carmelita','Dorsey','1925-03-30','cdorsey52@stanford.e','373-502-8862','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('cdraynf5','qIIuG4El42','Consolata','Drayn','1940-07-14','cdraynf5@usgs.gov','504-572-8869','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('cdugallbk','eIlbiEafNvf','Caitlin','Dugall','2012-05-03','cdugallbk@yolasite.c','836-552-9713','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('ceasseby8l','d0AYxCCbl','Caressa','Easseby','1961-03-13','ceasseby8l@xrea.com','177-465-5761','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('cellawayov','ULH2ztC4m','Cacilia','Ellaway','2020-02-26','cellawayov@utexas.ed','744-825-4546','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('cextalhv','HFyEkvJP','Carmela','Extal','2000-01-18','cextalhv@boston.com','398-137-9497','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('cferraidu','WDbKhZTaYa','Chelsie','Ferrai','1969-08-14','cferraidu@economist.','589-720-7453','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('cferrilliop3','uC5UmlPZl','Ceciley','Ferrillio','1973-12-16','cferrilliop3@about.c','517-516-5959','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('cflowithq3','5lELahlvY','Cesaro','Flowith','1963-03-04','cflowithq3@google.co','244-665-1371','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('cfraanchyonokql','fQ8obBA','Corine','Fraanchyonok','1993-03-01','cfraanchyonokql@ustr','812-554-3857','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('cfraniesgi','OXA9LF9lG','Cathe','Franies','2018-07-03','cfraniesgi@craigslis','864-142-5834','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('cfreeborngp','aqWyQHlMIP','Cele','Freeborn','2022-08-12','cfreeborngp@yahoo.co','760-801-1180','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('cgabbitis36','3Ohc2zPupeZ','Carmel','Gabbitis','1964-07-14','cgabbitis36@xinhuane','456-331-1954','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('cgawnbb','enY9XDfOPJ','Corene','Gawn','2018-08-27','cgawnbb@yolasite.com','280-828-4785','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('cgladdisnw','nvxtZd','Conn','Gladdis','1958-03-26','cgladdisnw@hostgator','984-819-0652','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('cgoodey78','y5sTjDA','Camille','Goodey','2006-06-12','cgoodey78@barnesandn','635-756-9305','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('chamnettbj','AWe9xOH','Carmella','Hamnett','1963-09-07','chamnettbj@weebly.co','855-780-3494','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('cimpeyr8','REqTzSc3','Chiarra','Impey','1978-04-08','cimpeyr8@ameblo.jp','825-711-8239','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('cinkerq0','tCgkOJVrtZ','Calla','Inker','2011-09-30','cinkerq0@oakley.com','297-180-6072','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('cjagelsk7','XpW6Y076bIbY','Chilton','Jagels','1934-02-06','cjagelsk7@google.com','334-645-2533','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('cjanesoc','zwqqrzrl','Cinda','Janes','1944-05-28','cjanesoc@google.ru','475-711-5596','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('cjerdanjp','qfKxCt0CDg','Caye','Jerdan','1950-02-12','cjerdanjp@cdc.gov','431-897-6224','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('ckeillohgk','r0nv6EQ','Charil','Keilloh','2007-04-05','ckeillohgk@cnn.com','716-142-0344','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('ckelbererlk','fVc0U7eg3FbZ','Christalle','Kelberer','1999-04-04','ckelbererlk@blogline','814-446-9997','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('cknowler6o','cbrJGFFbH4','Carmine','Knowler','1998-03-19','cknowler6o@pen.io','278-130-4868','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('clainge69','XU74o8','Cleon','Lainge','1935-03-01','clainge69@google.co.','234-603-1846','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('clammengahx','D5u3edOq','Cary','Lammenga','1950-05-14','clammengahx@jiathis.','154-934-5924','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('cleamymz','Ej2o9M5RN','Calhoun','Leamy','2017-08-06','cleamymz@nbcnews.com','233-169-4119','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('clegall4r','veS6KtRRArL','Carly','Le Gall','1980-04-18','clegall4r@blogs.com','340-203-4540','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('cliebmann3q','DW4kdOrLNb','Ches','Liebmann','2012-01-10','cliebmann3q@prnewswi','626-321-9417','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('clongstreetmu','ORTWy28dW2','Concordia','Longstreet','2007-01-25','clongstreetmu@jugem.','842-775-5087','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('cluckmane4','AmFmF9O2','Charil','Luckman','1979-04-12','cluckmane4@bravesite','380-627-4859','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('cmabbm1','2JquLOGtI','Cherye','Mabb','2013-05-01','cmabbm1@wikia.com','561-347-6354','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('cmacevillylm','ucwpF8Q6d','Corena','MacEvilly','2002-01-02','cmacevillylm@google.','566-577-6129','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('cmathisak','9Q7H7pC','Cristen','Mathis','2014-07-08','cmathisak@zimbio.com','403-478-0494','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('cmckeaneyqf','Cm5r02qn2','Cooper','McKeaney','1924-03-06','cmckeaneyqf@archive.','808-705-3292','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('cmelvin5r','RQAOUw','Caralie','Melvin','1959-02-25','cmelvin5r@gnu.org','562-850-8562','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('cmettetalmw','aRQGPH3V7wM','Catriona','Mettetal','1973-08-20','cmettetalmw@ox.ac.uk','435-904-7087','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('cmindenhallmj','ERwSyTg','Cathi','Mindenhall','1980-04-10','cmindenhallmj@addthi','999-935-8102','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('cmouatm4','hhf8eB0ApC','Carson','Mouat','1987-12-08','cmouatm4@topsy.com','601-757-6478','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('cnaultyba','s5bnDjlIZW','Cinderella','Naulty','1924-07-27','cnaultyba@mozilla.co','893-492-4698','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('cnelthrop67','YqQCnjQOtl5r','Caty','Nelthrop','1964-11-16','cnelthrop67@aol.com','596-227-6330','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('cnoah4w','faBaVogl','Caz','Noah','2006-07-15','cnoah4w@sfgate.com','630-704-9431','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('cpetherickra','j7wrFjBRH','Cordelia','Petherick','2000-12-22','cpetherickra@omnitur','236-270-4948','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('cpetit3l','UPcpti','Crin','Petit','1980-04-27','cpetit3l@canalblog.c','701-221-9533','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('cpettersen2','WuemeUc','Carr','Pettersen','2016-10-28','cpettersen2@dion.ne.','568-385-9181','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('cpincked73','JylKXj','Carroll','Pincked','1979-01-30','cpincked73@newsvine.','937-941-5254','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('cpippardf6','yUqdEYYU','Carina','Pippard','1956-01-17','cpippardf6@google.cn','485-604-4252','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('cpleyls','AiEvBkvQU','Carver','Pley','1990-03-27','cpleyls@hugedomains.','612-557-8295','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('cpugsley1l','OOeL3VumzfD','Coretta','Pugsley','2009-08-06','cpugsley1l@gov.uk','624-997-0467','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('cpuryit','jd7Q75jQW','Chrissie','Pury','1994-10-06','cpuryit@wikimedia.or','562-676-9495','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('crisbridgeez','N9F22amz','Carleen','Risbridge','1929-01-15','crisbridgeez@nasa.go','370-921-0733','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('crosenstengelgg','YgHvV2v','Carla','Rosenstengel','2021-12-26','crosenstengelgg@jigs','607-487-2029','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('csallyla','wb2NxVpzCv','Camella','Sally','1951-12-07','csallyla@kickstarter','239-407-8950','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('csartaine8','ZCYl4BnoVnk1','Clarance','Sartain','1982-11-08','csartaine8@elegantth','859-777-5118','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('csaunper5l','U3lDNi49QX','Coop','Saunper','1980-09-11','csaunper5l@reverbnat','530-880-4708','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('cscapensew','wS484TuSLdR','Cyril','Scapens','1936-05-04','cscapensew@nifty.com','371-351-4156','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('cselborne7d','3qFrkWFK','Court','Selborne','1936-06-21','cselborne7d@quantcas','833-419-1851','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('csibyllinaim','ewUsp0','Cordie','Sibyllina','1996-07-18','csibyllinaim@bloglov','284-187-1427','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('cskurmev','mqJS4Sm2OHqV','Clemmy','Skurm','1940-01-27','cskurmev@twitpic.com','438-707-7953','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('cspringerqc','PdNHO98of','Conni','Springer','1976-07-18','cspringerqc@virginia','727-480-4149','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('ctasselerr5','rsSasK','Carissa','Tasseler','2003-12-02','ctasselerr5@bbb.org','364-640-6088','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('ctommis8u','TfA0CAxniwj','Cacilia','Tommis','1994-07-15','ctommis8u@youku.com','599-807-7416','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('ctonks9g','CAaRvdpOREHR','Corenda','Tonks','1974-01-25','ctonks9g@umich.edu','842-720-2409','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('ctym6','Fl3UZw','Clarette','Tym','2018-05-18','ctym6@purevolume.com','476-102-3346','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('cvanderkruisqk','B3XhSa','Cate','Van der Kruis','1982-06-12','cvanderkruisqk@fc2.c','506-707-2469','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('cwannellq4','6BRZFIiw','Cinnamon','Wannell','1968-02-25','cwannellq4@mapy.cz','714-482-3268','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('cwebben2m','SpwRlL1i','Candida','Webben','1941-05-12','cwebben2m@slideshare','538-715-0149','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('cwoolford5j','BRuEzX','Chaddie','Woolford','1993-10-16','cwoolford5j@engadget','215-169-3865','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('cyardleypc','BOx36U2','Caitrin','Yardley','2008-06-01','cyardleypc@upenn.edu','829-147-2004','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('cyurasovd2','CZ07ez','Chick','Yurasov','1999-01-31','cyurasovd2@instagram','675-650-2021','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('dabelo1','vNPvs8uSc2Nq','Deidre','Abel','2001-02-01','dabelo1@livejournal.','905-628-8073','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('darmouri6','kMJgSlmG1','Dud','Armour','1934-01-13','darmouri6@canalblog.','703-962-4092','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('daudusco','I4aFHAgHwYSy','Dougie','Audus','1954-11-23','daudusco@multiply.co','588-488-7993','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('dbarstowdx','9ysYq1j','Dominique','Barstow','1987-02-23','dbarstowdx@stanford.','418-893-5438','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('dbirminghamcq','Ob9DpTJa1','Daryle','Birmingham','1949-11-19','dbirminghamcq@mashab','294-887-0505','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('dblackmore9u','2RaY13X1rw','Dulcea','Blackmore','1970-08-30','dblackmore9u@mozilla','534-114-0209','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('dboone8h','NcB7HqY7fWNP','Donnamarie','Boone','1970-01-27','dboone8h@bizjournals','296-226-5696','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('dbruckmanfr','TeYZa0SF9','Devin','Bruckman','1953-10-20','dbruckmanfr@gravatar','701-228-5176','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('dburstonb7','mnu3MO4x','Dalenna','Burston','1981-02-26','dburstonb7@aol.com','180-338-8066','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('dcarlonih3','jb88UUZt','Dorotea','Carloni','2019-02-06','dcarlonih3@epa.gov','173-595-6326','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('dcawston2c','1ncC1s3','Dominique','Cawston','1992-07-10','dcawston2c@google.ru','437-275-5789','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('dclorley3o','XIsEQPL','Danni','Clorley','1999-04-05','dclorley3o@slideshar','650-638-8942','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('dcockerellk3','UN3bcwxSOcxR','Dorelia','Cockerell','1926-01-30','dcockerellk3@timeson','777-293-1950','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('ddringnd','tVpYD2e6qV','Douglas','Dring','1989-10-20','ddringnd@mysql.com','197-423-5939','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('deddisforthbf','SFGbfv','Danny','Eddisforth','1934-04-02','deddisforthbf@hostga','848-237-1975','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('dellulmb','GfzdnQwBJ6W','Derek','Ellul','1966-09-30','dellulmb@tripadvisor','624-534-4059','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('demsdengq','910DcmqTZAF','Dave','Emsden','1969-08-24','demsdengq@about.com','787-235-0579','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('deveringtonau','4MxLXN','Delinda','Everington','1986-03-16','deveringtonau@jimdo.','644-276-8232','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('devitt6a','WVNAGw','Doris','Evitt','1939-03-27','devitt6a@privacy.gov','125-583-0366','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('dfitzsimonrm','AeUwdkQ','Denny','Fitzsimon','1953-10-01','dfitzsimonrm@ft.com','985-261-9167','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('dgantzerrr','EV3oh8','Dominga','Gantzer','1984-07-22','dgantzerrr@nps.gov','688-668-2280','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('dgauvinnp','kZx0jxGYnd','D\'arcy','Gauvin','2007-07-23','dgauvinnp@sohu.com','829-975-0299','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('dgodneym7','SrZA2ec2EJG','Don','Godney','1925-11-24','dgodneym7@bloglovin.','619-978-7186','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('dgrattageo3','GjZEseLDQ','Drona','Grattage','2008-08-31','dgrattageo3@nytimes.','174-671-7235','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('dharkesi2','lfghTo','Damaris','Harkes','1944-07-27','dharkesi2@mapy.cz','377-984-7091','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('dhendinas','3Yy5aV4S','Dottie','Hendin','1948-03-26','dhendinas@goodreads.','569-530-2891','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('dhuftonf7','L8Xs5Dh1Pf','Del','Hufton','1937-10-09','dhuftonf7@house.gov','754-980-3305','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('djochenseq','DfODUKoOXaU','Dniren','Jochens','1926-09-01','djochenseq@posterous','253-615-5198','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('dkingdom5z','jSeYvv2','Doretta','Kingdom','1924-12-28','dkingdom5z@quantcast','810-220-5405','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('dkleynermansct','6KOnKMZ','Daria','Kleynermans','1979-07-09','dkleynermansct@googl','651-377-0238','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('dlauderdale56','1Q3zQMI','Dru','Lauderdale','1931-12-22','dlauderdale56@digg.c','772-179-8494','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('dleathembi','MFnKF3gcRBLt','Derrik','Leathem','1977-01-18','dleathembi@parallels','232-824-3981','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('dleyban2o','fYC7cGz','Dolley','Leyban','2017-05-21','dleyban2o@vistaprint','852-799-6577','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('dlukas1e','ELJripavfTO','Dorrie','Lukas','1976-01-17','dlukas1e@newsvine.co','632-632-4592','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('dlydiatekb','bWPw6B0RW','Danella','Lydiate','1943-03-18','dlydiatekb@google.pl','855-156-3984','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('dmacinnesm2','e2SGyJeU','Devinne','MacInnes','1969-05-03','dmacinnesm2@chicagot','542-724-2362','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('dmatveiko51','GLqTRKky84hG','Dexter','Matveiko','1969-03-28','dmatveiko51@bigcarte','634-639-6054','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('dmccluney5x','6idtE2stj','Dorette','McCluney','2006-09-09','dmccluney5x@issuu.co','180-904-6245','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('dmclaffertyh4','jlE7TAEcL','Dorrie','McLafferty','1969-06-27','dmclaffertyh4@bizjou','208-618-5642','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('dmichejo','WQwzsgkHi','Danika','Miche','1945-02-07','dmichejo@cbc.ca','705-129-4339','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('dmitskevich6b','MCX5zqHo','Douglass','Mitskevich','1977-11-23','dmitskevich6b@webs.c','819-202-4751','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('dmundfordan','4BXqlzl7Pw6','Davidde','Mundford','1992-10-19','dmundfordan@unicef.o','988-466-8817','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('dneypr','cNdX5deb','Dugald','Ney','1976-09-07','dneypr@ucla.edu','752-491-5461','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('doglethorpejf','h6dI4owI6','Darci','Oglethorpe','1951-03-29','doglethorpejf@devhub','730-186-6786','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('dothen6r','GJ1HxA4k','Donny','Othen','1931-03-19','dothen6r@prnewswire.','469-558-7414','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('dpawel8y','lkRfi1nb4','Dana','Pawel','1936-02-07','dpawel8y@infoseek.co','830-631-0361','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('dplackstonen9','wQ5FVSSlC','Dawna','Plackstone','1937-05-30','dplackstonen9@newyor','706-832-4702','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('dpocklingtonek','F235ryFxtX','Dillon','Pocklington','1962-03-04','dpocklingtonek@busin','327-738-8424','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('drape63','TPtfnUQyiYK','Doroteya','Rape','1998-11-14','drape63@shutterfly.c','981-359-6626','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('drecordrd','KvnlvL5RpV','Danika','Record','1977-06-05','drecordrd@instagram.','388-331-0782','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('drodenburghh9','GuwN4xKdwL','Dorita','Rodenburgh','2013-12-23','drodenburghh9@tuttoc','265-142-2495','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('droiznou','h8mIQpb','Devinne','Roizn','1999-08-20','droiznou@fema.gov','367-906-3242','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('dsalekw','sR6RUC2MVzo','Dorelia','Sale','1962-01-25','dsalekw@reuters.com','691-327-4141','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('dshadbolthb','ifDavKdADb','Drucie','Shadbolt','1942-01-17','dshadbolthb@chronoen','585-527-3112','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('dshallos','tGNfSvZ','Dewie','Shall','1979-04-10','dshallos@ask.com','519-295-2443','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('dsiggersmm','LgId0OQZyP','Dyann','Siggers','1945-09-06','dsiggersmm@jalbum.ne','917-178-8521','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('dsketchleye0','j2ab89hs5W','Daryl','Sketchley','1949-05-05','dsketchleye0@berkele','436-208-6580','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('dslayford16','JCPxDP5GgLK','Desirae','Slayford','1975-02-12','dslayford16@soup.io','353-505-9993','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('dstansallp5','CgPtluMF','Dre','Stansall','1974-12-19','dstansallp5@google.c','712-113-7332','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('dtrimmille6','D9mCvaFeoR','Deidre','Trimmill','2023-03-29','dtrimmille6@dagondes','810-767-3573','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('dvanthoogbc','JQhz5cZ','Dicky','Van T\'Hoog','2006-12-10','dvanthoogbc@com.com','583-891-9397','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('dwallegeks','IW4g8kGvF','Dillon','Wallege','1973-09-26','dwallegeks@nasa.gov','647-365-4367','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('dweightmanpw','b7d9XqHchU','Devin','Weightman','1945-08-14','dweightmanpw@howstuf','813-572-1134','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('dyeelesi7','Oph5yW','Delores','Yeeles','1966-04-09','dyeelesi7@51.la','538-841-9241','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('eashburnerpe','r1Ipq8n','Emma','Ashburner','1960-05-31','eashburnerpe@blogtal','308-793-6855','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('eayrisjn','SpEpGr6erN','Eberto','Ayris','2021-10-05','eayrisjn@upenn.edu','496-966-8219','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('ebarfoot5','2MtiTT92EL','Erich','Barfoot','1944-09-21','ebarfoot5@bbb.org','234-831-1548','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('ebogie84','hJuBeUPWtgd','Emeline','Bogie','1973-02-17','ebogie84@phpbb.com','873-222-4465','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('eborless2j','IQGJFg','Eartha','Borless','1996-04-23','eborless2j@hibu.com','843-756-4094','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('ecasarili1p','LN91ri3raF','Egan','Casarili','1969-11-18','ecasarili1p@ed.gov','356-219-8219','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('echitson5m','SsfRG85ePxAK','Evey','Chitson','1990-09-17','echitson5m@bbc.co.uk','413-236-9233','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('ecowmeadow5k','BhdGXyN2','Enrico','Cowmeadow','1986-03-12','ecowmeadow5k@bbc.co.','706-723-9147','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('ecrisfordic','g6U3YalKhZ','Elberta','Crisford','2018-04-23','ecrisfordic@issuu.co','114-558-1743','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('edonetdo','GzjgkU','Essa','Donet','1958-05-05','edonetdo@phoca.cz','807-435-9246','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('edurtnelljj','wNQ5k38hcBF','Emmott','Durtnell','2000-08-09','edurtnelljj@scienced','641-132-8798','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('eellams8s','XdMpL5Mlb','Eleanor','Ellams','1949-02-12','eellams8s@timesonlin','762-408-3742','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('eformigli4h','kwAMN24Hg','Elianora','Formigli','1991-04-09','eformigli4h@princeto','763-641-7603','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('efransemair3','1KYD4uV1j','Eachelle','Fransemai','1939-11-14','efransemair3@youku.c','875-977-8493','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('egambellnl','qQUn7kM','Elfrida','Gambell','1944-11-30','egambellnl@unc.edu','643-949-0286','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('egeaves31','uoaxg9ka','Elinore','Geaves','1975-08-13','egeaves31@youku.com','452-372-5544','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('egooklx','XG28n9','Emogene','Gook','2003-12-15','egooklx@privacy.gov.','813-311-7512','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('egrimmeop','W6TxBONP','Eliza','Grimme','1940-11-26','egrimmeop@xinhuanet.','512-343-6916','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('ejanskz','65AMENOhgxFW','Erl','Jans','1945-01-01','ejanskz@independent.','962-717-8683','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('ejotchamfj','Plqbsp','Estevan','Jotcham','1960-05-11','ejotchamfj@ebay.com','941-691-5318','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('ekirtleyln','6bG1iwp','Erek','Kirtley','2009-02-08','ekirtleyln@1688.com','920-910-5067','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('ekleinhaut3j','pnqWXliYecHi','Ermin','Kleinhaut','1951-12-29','ekleinhaut3j@imdb.co','613-615-6298','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('emcphelimyo','lQEVtDeKE5','Engracia','McPhelimy','1942-03-24','emcphelimyo@mlb.com','932-803-4895','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('emeneghie9','aVP2I19CvD','Evonne','Meneghi','1999-07-26','emeneghie9@soup.io','809-193-3498','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('emingo4x','McMeVw1y','Elladine','Mingo','1961-11-14','emingo4x@prweb.com','933-723-8109','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('enorvell9s','szOEn9KN','Ermin','Norvell','1981-01-15','enorvell9s@taobao.co','272-918-2655','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('eovendenhw','v3rNp1','Eward','Ovenden','1994-03-19','eovendenhw@mashable.','362-355-2841','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('eoxenburyiz','FqtFPz','Evan','Oxenbury','2011-03-19','eoxenburyiz@tinyurl.','441-527-8307','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('epingq8','lnyJ133Ba','Elmore','Ping','1995-11-22','epingq8@un.org','794-436-3069','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('epownerb4','VgsBcNZEJW','Emmie','Powner','2016-01-13','epownerb4@topsy.com','727-682-8424','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('esaterthwaitkm','cRuBI0wN6vn','Eb','Saterthwait','1988-08-09','esaterthwaitkm@uiuc.','206-911-5595','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('esherwood70','Qi5yTLnP','Enos','Sherwood','1933-09-20','esherwood70@cloudfla','149-851-8278','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('estothartpu','pL6o6HVl0','Elsy','Stothart','2010-04-22','estothartpu@issuu.co','659-834-5368','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('estothertaq','9nV8yLs5u','Earl','Stothert','1941-10-31','estothertaq@slashdot','200-850-1026','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('eweblingi4','ld7nj1G6','Edie','Webling','1979-07-09','eweblingi4@seattleti','328-946-4364','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('fallery3b','ZQACcWphTBkO','Franz','Allery','1957-05-22','fallery3b@jalbum.net','453-432-3243','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('fbetancourtly','O6QxR8','Fredi','Betancourt','2022-07-06','fbetancourtly@yahoo.','219-620-6320','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('fbrauningera5','zFDDX2fdd7A9','Finley','Brauninger','1948-01-22','fbrauningera5@techcr','895-637-6501','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('fcawson1c','mgyaUs','Forrester','Cawson','1996-03-01','fcawson1c@nymag.com','604-489-5464','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('fchurchleyc0','MVjfhb9CLZ4','Franny','Churchley','2003-09-06','fchurchleyc0@booking','694-812-5361','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('fcluniep0','RCOPRolVUHz','Freemon','Clunie','1951-08-10','fcluniep0@nationalge','862-939-5874','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('fcolleymore8t','XrYbwv7f1','Faith','Colleymore','1973-02-16','fcolleymore8t@ucsd.e','654-233-0848','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('fcornehl3a','hIzycGiSoRhp','Faina','Cornehl','2014-12-01','fcornehl3a@privacy.g','368-191-9517','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('fcrosettin2','PNwOOVoCZbQf','Francklyn','Crosetti','1993-04-30','fcrosettin2@earthlin','715-421-5901','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('fdevonsn6','sc4CiOTZnxtt','Francyne','Devons','2011-01-13','fdevonsn6@linkedin.c','482-598-8165','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('fespinha3e','FaPM7Fakesj','Fairleigh','Espinha','1992-05-17','fespinha3e@live.com','758-611-2412','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('ffandreynz','s7p1GaHJfUMY','Freda','Fandrey','2005-07-03','ffandreynz@unblog.fr','581-153-8496','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('ffarrant5t','55l4fHXN','Fredric','Farrant','1981-07-04','ffarrant5t@amazon.co','839-344-9802','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('fgennrichjs','ksoOpC3As','Fae','Gennrich','2005-11-28','fgennrichjs@bbc.co.u','579-956-5355','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('fgoodinj5','KybQZcgq7ZE','Fayre','Goodin','1976-12-19','fgoodinj5@theguardia','924-380-8184','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('fgreyrp','xIEO3oGlb','Florinda','Grey','1974-09-27','fgreyrp@loc.gov','966-545-2752','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('fhinnersoy','kZvq8lXSo','Fernando','Hinners','1932-07-30','fhinnersoy@cnbc.com','353-262-4687','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('fklus7s','vSpaUlVyTC','Fredrick','Klus','1924-06-05','fklus7s@phpbb.com','706-206-3904','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('fkobera1j','Wb7Oio0B','Ferne','Kobera','1923-05-29','fkobera1j@dagondesig','364-867-8959','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('fkoppeck14','f4cFPk','Fayre','Koppeck','1930-05-17','fkoppeck14@reddit.co','646-880-8911','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('fkubicka6y','T6QKLFXMnliV','Fayre','Kubicka','1963-07-07','fkubicka6y@mashable.','752-795-5746','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('fleysoi','VrLYLrKvKWE6','Flemming','Leys','1968-10-14','fleysoi@last.fm','255-438-5356','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('fmagisterl2','AU6DFbU8FSl','Fax','Magister','2003-11-15','fmagisterl2@issuu.co','628-809-5118','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('fmairgl','BXxyhPU','Frazer','Mair','1967-08-09','fmairgl@huffingtonpo','910-745-4341','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('fmcanalleyfs','7AcFLUo1y','Fayre','McAnalley','1981-11-20','fmcanalleyfs@qq.com','639-385-2964','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('fmundwell7p','3SshJNtCF4','Farlie','Mundwell','1938-11-01','fmundwell7p@tuttocit','635-947-0247','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('fpepyejv','cVaausZKVWrb','Fabiano','Pepye','1932-01-26','fpepyejv@msn.com','780-581-4581','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('fpickervanceg7','umYUcO3q','Fayth','Pickervance','1958-09-11','fpickervanceg7@tumbl','907-993-6746','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('fpieleqw','fZwiNX4jQR','Freddy','Piele','1967-10-26','fpieleqw@salon.com','571-780-9853','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('fpratleykq','WvlK8K','Fifi','Pratley','1996-03-13','fpratleykq@imgur.com','657-569-2939','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('freesonqu','aYi2NYRnuF','Francis','Reeson','1947-11-12','freesonqu@devhub.com','751-799-2762','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('fsharvellj4','Z7Y5jj','Fayth','Sharvell','1957-06-20','fsharvellj4@dmoz.org','168-872-5484','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('fstrikerca','CAQoIg','Franciska','Striker','1950-04-22','fstrikerca@microsoft','854-838-8060','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('fsummerlyro','YnD3wZzv5Hee','Francisco','Summerly','1946-11-20','fsummerlyro@ovh.net','627-915-6620','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('fturfuskv','vyBwEwi','Friederike','Turfus','1969-01-31','fturfuskv@pagesperso','507-588-0768','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('fuwinsc9','pkahh7vdeQ4n','Frank','Uwins','2021-08-06','fuwinsc9@economist.c','375-578-0107','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('fwitherupp6','DJnXjdf','Fionna','Witherup','1971-06-01','fwitherupp6@dot.gov','413-856-8611','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('gannon3h','TG54xcxwyp','Glyn','Annon','1941-07-11','gannon3h@lycos.com','424-433-7133','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('gashbridgec5','0HlX0MuHMH1Q','Garreth','Ashbridge','1992-03-29','gashbridgec5@canalbl','850-865-9361','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('gausting46','uxB5qxTl','Gwendolen','Austing','2022-02-07','gausting46@yellowboo','387-914-2880','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('gavon6s','SUYIAw8','Georgeanna','Avon','2008-09-23','gavon6s@myspace.com','285-769-0155','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('gbarringer54','5P91a0sz','Graig','Barringer','1969-06-01','gbarringer54@themefo','745-445-1113','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('gbellhouse5v','KzMyQ7','Gasparo','Bellhouse','1987-02-03','gbellhouse5v@webnode','717-421-9375','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('gboverf8','9GT0pZUx71I','Gannie','Bover','1965-07-10','gboverf8@theatlantic','543-171-3256','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('gbrethertonjx','Gk6QqaeU','Giordano','Bretherton','1976-06-29','gbrethertonjx@delici','714-545-9316','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('gchomicki9k','DLlwHJ9MY','Gabe','Chomicki','1930-06-07','gchomicki9k@army.mil','794-995-3928','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('gcoalburnec','CQ6dovWRBjmd','Gregory','Coalburn','1999-07-10','gcoalburnec@chicagot','286-490-4176','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('gcoonihanmo','BrlMiML','Gavan','Coonihan','1960-12-01','gcoonihanmo@biblegat','749-621-1738','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('gcortesl6','c8VDwNVRIhM7','Gordan','Cortes','2014-06-27','gcortesl6@w3.org','791-255-2109','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('gcuttelarlb','IYOX5g','Gerard','Cuttelar','2016-05-13','gcuttelarlb@ebay.co.','188-895-1566','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('gdallid3','6czhtTlo56L','Gardie','Dalli','1958-01-13','gdallid3@nymag.com','846-554-5058','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('gdissmancm','MekgmzsC54Q','Gilbertine','Dissman','1935-04-18','gdissmancm@dailymail','874-687-4870','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('gdollenol','7mtuvJdy4','Grady','Dollen','1939-06-02','gdollenol@engadget.c','245-181-1632','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('gdugoodbs','S1GqTh3','Gerhardine','Dugood','1951-01-25','gdugoodbs@diigo.com','103-151-4591','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('gdulany91','wTUt0RviOM','Georgine','Dulany','1994-12-04','gdulany91@buzzfeed.c','906-414-6597','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('ggaylordft','04hKNGfVa','Gerrilee','Gaylord','1982-12-19','ggaylordft@squarespa','348-484-9248','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('ggrevatt6q','hDbgc5G','Gan','Grevatt','2014-06-12','ggrevatt6q@blog.com','508-136-3891','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('ggridon2q','JdNZ9Ejqu','Gilbertine','Gridon','1927-05-03','ggridon2q@ftc.gov','738-808-7976','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('ghallan1u','IoDDR0E5CrE2','Gregorius','Hallan','1994-12-29','ghallan1u@stumbleupo','554-560-7907','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('gjoslandfp','3NMGOMu','Gabby','Josland','1952-09-14','gjoslandfp@lulu.com','403-883-2197','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('gkaesmakerspj','RGJ2gB6z3RdQ','Gerard','Kaesmakers','1963-05-17','gkaesmakerspj@utexas','677-991-8067','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('gkempshalljw','eKkqWU','Gusty','Kempshall','1972-01-16','gkempshalljw@sohu.co','479-941-6930','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('glawreygf','aaYpmqJ4d','Gus','Lawrey','1928-12-04','glawreygf@narod.ru','724-997-3438','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('glaybourneli','IZ6W5JYXL2J','Goldi','Laybourne','1928-08-17','glaybourneli@prlog.o','584-457-3083','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('gleaman3u','lUC8Bf','Gregory','Leaman','1967-11-30','gleaman3u@google.it','589-832-2389','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('gletfordlg','c1hNiOo5AN1O','Galvin','Letford','1972-11-15','gletfordlg@tripod.co','293-194-7787','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('glisledr','I9Qi1F6','Gertrude','Lisle','1965-01-26','glisledr@redcross.or','892-778-4931','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('gmartongn','JpqxWnMuAFv','Goldarina','Marton','1943-04-27','gmartongn@wiley.com','919-495-3303','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('gmarvellmt','RN883rd3G1B','Gill','Marvell','2019-10-25','gmarvellmt@techcrunc','223-662-1583','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('gmilroy65','RmbMjRWm','Gavan','Milroy','1965-02-07','gmilroy65@github.com','824-753-0674','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('gnairni3','oGDuuT','Giavani','Nairn','1932-11-14','gnairni3@flavors.me','775-873-7423','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('godennehyee','UIIilhWb','Giff','O\'Dennehy','1995-06-08','godennehyee@linkedin','626-281-3880','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('gorowaneip','iJeosWkd','Garrot','O\'Rowane','1967-07-04','gorowaneip@cloudflar','969-725-6304','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('gpersianiw','o1B1YlSwn','Gretel','Persian','1966-10-13','gpersianiw@stumbleup','484-191-0449','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('gproudd9','6n12381CAV','Gustave','Proud','1952-01-23','gproudd9@pen.io','411-177-0124','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('groartyri','LBYzjrf','Grazia','Roarty','1956-02-17','groartyri@devhub.com','201-507-3029','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('grunseylv','bWd8K4CWKRex','Guillema','Runsey','1941-08-05','grunseylv@discovery.','757-942-5982','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('gsawyersqq','SWxT8ug2c','Gerardo','Sawyers','1999-03-20','gsawyersqq@friendfee','153-176-8567','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('gscapelhorn71','maSSnXJ0','Guy','Scapelhorn','1997-02-02','gscapelhorn71@ocn.ne','561-388-1776','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('gseligson1v','L7GJ3hx','Gerianna','Seligson','2001-01-01','gseligson1v@taobao.c','100-781-3890','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('gseydlitzky','fhOZyoKLfMk4','Gus','Seydlitz','1929-05-05','gseydlitzky@auda.org','968-954-3421','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('gspawtonex','7eQi1I4uFQ','Germayne','Spawton','2011-10-29','gspawtonex@exblog.jp','901-853-4875','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('gstanislaw1t','eQY9NCPRV','Gavan','Stanislaw','1936-06-20','gstanislaw1t@npr.org','347-806-1106','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('gwellbanko0','xGR6xOIxr','Garald','Wellbank','1957-01-13','gwellbanko0@si.edu','585-460-8360','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('gyeendgv','Cnlifb','Gregoor','Yeend','1930-09-24','gyeendgv@abc.net.au','357-424-3510','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('gyousefh5','n1yn1tlY','Geoffry','Yousef','1959-06-06','gyousefh5@tripod.com','846-438-5085','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('habdeyr0','Ffgn0Y3Bm','Hildagard','Abdey','1961-05-26','habdeyr0@delicious.c','424-133-0780','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('hallmann89','fHEcmy9x6','Humberto','Allmann','1987-06-17','hallmann89@europa.eu','284-923-9922','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('happleford4i','tn8G6EcNEmQi','Hodge','Appleford','2018-04-13','happleford4i@loc.gov','556-936-4359','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('hattarge62','RioaIcaOMA','Hagen','Attarge','2012-07-14','hattarge62@indiatime','392-443-1896','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('hatterley2y','LLWlvSw7w','Heywood','Atterley','1969-05-27','hatterley2y@mtv.com','273-410-3380','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('hbenner4l','phlnXkdlj','Harlene','Benner','1956-12-28','hbenner4l@flavors.me','742-915-9692','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('hbernaciakl1','uLuZYBrs6QiR','Henri','Bernaciak','1993-07-08','hbernaciakl1@technor','217-194-4779','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('hbleakmanpp','4jxWudXHopML','Horacio','Bleakman','1938-10-16','hbleakmanpp@blogline','101-617-7416','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('hbowick4s','Y6w4TB','Humfried','Bowick','1961-01-14','hbowick4s@amazonaws.','412-167-0911','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('hburgwin1a','e6I9nxzVr7','Haydon','Burgwin','2001-10-29','hburgwin1a@jigsy.com','371-122-8884','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('hcasserlyfd','jkPx4B6ACnn','Hope','Casserly','2006-10-23','hcasserlyfd@google.c','529-345-8462','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('hcouthard74','TKMzVoK6','Henryetta','Couthard','2018-06-11','hcouthard74@ustream.','155-993-0140','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('hcroot6z','uYz0J2Ycs','Herve','Croot','1959-10-11','hcroot6z@instagram.c','246-411-5049','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('hdaelmanpf','DYLPMfUt36z','Holly','Daelman','2012-04-14','hdaelmanpf@forbes.co','275-226-7752','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('hdossettorhn','Meh9MELWeZj','Halimeda','Dossettor','1988-01-30','hdossettorhn@utexas.','163-381-9549','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('hdryden80','6Kq8xVZ3i9v','Huberto','Dryden','1954-01-19','hdryden80@phoca.cz','892-879-8129','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('hdurno81','yMie379iPy','Hannis','Durno','1940-03-02','hdurno81@howstuffwor','972-802-3553','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('hemps26','rIvnsrUC','Henryetta','Emps','1960-04-28','hemps26@jugem.jp','353-207-2699','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('hfassman8e','MCzIWG1tJMMS','Hercule','Fassman','1993-11-03','hfassman8e@wikimedia','214-322-2771','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('hfontainenn','riM1Kqk1yP','Harmonie','Fontaine','1997-04-15','hfontainenn@friendfe','175-478-6568','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('hfraser8','LuVvEov','Hyacinth','Fraser','1971-10-09','hfraser8@fc2.com','542-356-0196','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('hgeistmannfn','QR0QZ6G','Helli','Geistmann','2008-11-05','hgeistmannfn@gov.uk','822-378-1558','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('hgoodyernf','psyjjwPw9s6A','Hunter','Goodyer','1979-10-08','hgoodyernf@squidoo.c','476-949-6171','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('hgrushiniy','SYdkxJ0zs','Harmon','Grushin','1972-03-16','hgrushiniy@nps.gov','669-202-5028','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('hhudelcr','uZquq1LhO','Hermione','Hudel','1975-10-16','hhudelcr@symantec.co','125-424-1076','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('hhulklj','hz8cByOW0','Howie','Hulk','1924-07-02','hhulklj@fema.gov','937-776-9837','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('hkivelhancs','v8xESJj6','Hamnet','Kivelhan','1949-09-30','hkivelhancs@ovh.net','832-227-6114','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('hletchmore4q','g5asC5qj','Harriott','Letchmore','1996-10-18','hletchmore4q@engadge','917-968-1646','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('hlewisfa','w32pVGpDp','Herby','Lewis','2015-01-17','hlewisfa@mozilla.com','137-193-7897','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('hlongmeadbo','AQu1KqJe','Hazel','Longmead','1955-09-29','hlongmeadbo@whitehou','365-448-5164','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('hloweyc7','mD5d1VAPVni4','Hugh','Lowey','1933-08-30','hloweyc7@surveymonke','773-683-1987','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('hmcelanegr','yofMK7a7pyI','Humfrid','McElane','1977-11-06','hmcelanegr@slideshar','510-278-6067','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('hmckenzieo6','CaWdr5BfZQ','Herta','McKenzie','1941-05-15','hmckenzieo6@google.i','773-264-1623','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('hmelmoth7m','7IFkiVkftvt','Hube','Melmoth','2006-12-12','hmelmoth7m@networkad','342-289-7842','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('hnavarre7c','ePPDUEh','Henri','Navarre','1947-12-25','hnavarre7c@accuweath','586-231-7902','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('holomanjd','xEBIASjMot','Harriott','Oloman','1964-06-11','holomanjd@elegantthe','575-378-7269','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('hoshiel9j','nfHORf','Hobard','O\'Shiel','1928-01-21','hoshiel9j@wsj.com','655-366-2123','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('hpetre1w','9JAsvZk1','Ham','Petre','2003-04-11','hpetre1w@ehow.com','782-741-2025','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('hrevill5g','SEt7xdqSY59q','Heindrick','Revill','1993-01-20','hrevill5g@wikipedia.','132-342-3738','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('hromerajz','xhjKa9','Harv','Romera','2019-06-02','hromerajz@free.fr','761-908-8107','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('hshirtcliffelp','XkXLr2','Hyacintha','Shirtcliffe','1970-02-06','hshirtcliffelp@ucoz.','468-279-7025','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('hummfreyb0','GqWmbNLtrY','Hugo','Ummfrey','1997-01-09','hummfreyb0@si.edu','360-581-2868','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('hwyardi','LndgVM4lp','Hamlin','Wyard','2001-06-14','hwyardi@altervista.o','212-519-6261','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('ibastinp7','9FIKZlJ7u7M','Irene','Bastin','1950-10-16','ibastinp7@weebly.com','710-709-7840','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('icolneto5','tT7ZPE8','Ibbie','Colnet','1994-11-02','icolneto5@usatoday.c','527-294-7850','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('icristoforettihk','Xsqy7zqje','Irwin','Cristoforetti','1956-10-30','icristoforettihk@cen','831-817-4747','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('idargue4','x8fhph5','Isidore','Dargue','1998-11-08','idargue4@google.co.u','134-259-5912','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('ihembrow68','boqyk6Z0','Isabeau','Hembrow','1964-01-20','ihembrow68@last.fm','196-777-6278','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('ihensmansq','KLPHRW','Inesita','Hensmans','1968-01-15','ihensmansq@nasa.gov','186-894-0364','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('ijosefs3g','2hVKkoSpbo9','Ira','Josefs','2006-02-02','ijosefs3g@huffington','454-207-7854','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('ilopez6x','JMz3nBkFroT9','Izaak','Lopez','2022-08-14','ilopez6x@who.int','916-198-9899','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('iquineyg6','RoE4MigkYi','Ileana','Quiney','2020-04-11','iquineyg6@cargocolle','307-251-2435','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('istudeartc3','8Qu6FUsV','Inesita','Studeart','1947-12-24','istudeartc3@feedburn','677-533-2310','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('ivinnicombepb','dHP3Uo','Ivor','Vinnicombe','2010-12-22','ivinnicombepb@qq.com','320-102-1691','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('iwadwellcj','QcRpoVREi','Iormina','Wadwell','1997-12-13','iwadwellcj@jimdo.com','477-465-3302','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('iwaplington9n','1PULayvcdMR','Isadore','Waplington','2005-06-20','iwaplington9n@nyu.ed','590-950-0914','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('iweth2r','pL43WNF','Itch','Weth','2008-07-06','iweth2r@cargocollect','114-938-2397','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('jatkinm5','JLdorQQSK','Jedediah','Atkin','1935-06-07','jatkinm5@harvard.edu','872-417-2774','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('jbeertw','RsKIBR','Joe','Beert','1924-12-08','jbeertw@netvibes.com','968-711-3268','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('jbeney7h','vaSnGqndl7n','Jamal','Beney','2022-05-26','jbeney7h@studiopress','941-231-1564','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('jblacktinor','vfywXEa8','Jillian','Blacktin','1927-12-13','jblacktinor@oakley.c','828-793-1152','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('jbowdler4v','tL4AcaHphhzU','Jorey','Bowdler','1935-04-21','jbowdler4v@dmoz.org','715-503-7812','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('jcallinan33','nakZ2u','Joanne','Callinan','1980-05-08','jcallinan33@newsvine','834-315-9148','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('jcaskey4o','nJSvXv','Johannes','Caskey','1960-02-27','jcaskey4o@hibu.com','272-279-0572','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('jcheesworth8q','PpStgb9QC','Jermayne','Cheesworth','2007-05-27','jcheesworth8q@cnbc.c','763-441-3389','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('jcleveley23','AoDCn11het','Jolene','Cleveley','1931-05-21','jcleveley23@illinois','401-680-1088','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('jcragelley','nmWmfvAQz','Jillana','Cragell','1965-03-12','jcragelley@phpbb.com','489-871-7424','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('jcreightong1','99U6HJSD','Jarid','Creighton','1958-10-10','jcreightong1@ebay.co','340-222-5786','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('jcuminemn','wvfqHj8K6UKd','Jakie','Cumine','1983-03-12','jcuminemn@yale.edu','666-396-6493','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('jdabled1','wta30pcCc','Jenica','Dable','1984-02-22','jdabled1@berkeley.ed','980-870-5351','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('jdainterb9','cEXYCeiZGh','Jedd','Dainter','2009-03-21','jdainterb9@diigo.com','141-353-7779','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('jdearl1n','8AvUE1b','Jonathan','Dearl','1977-11-22','jdearl1n@godaddy.com','622-974-8100','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('jdungayqr','W75d9M7w','Jorie','Dungay','1952-03-08','jdungayqr@a8.net','742-892-4297','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('jeberstmk','2M8IgU0pk','Juliana','Eberst','1968-11-09','jeberstmk@hao123.com','530-506-1517','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('jedgsongm','svBLTh','Jilli','Edgson','2008-02-03','jedgsongm@pagesperso','964-488-1848','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('jelgramod','VdKxDBdfl','Jodie','Elgram','1968-02-09','jelgramod@google.com','582-179-0027','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('jfryersqj','7yNbPQdP','Judye','Fryers','1949-01-05','jfryersqj@hibu.com','955-757-5447','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('jgare6u','NxuaK5c','Janna','Gare','1951-09-15','jgare6u@reuters.com','329-345-1599','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('jgiordanoju','HMvVjJKx9u3','Joyann','Giordano','1947-04-03','jgiordanoju@seattlet','112-294-0266','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('jhallattbq','1Wq8HA','Junina','Hallatt','1990-08-18','jhallattbq@oakley.co','634-971-8032','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('jhebborne50','OhiutacGNeuK','Jackson','Hebborne','1991-01-23','jhebborne50@washingt','281-294-8413','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('jheinocy','thwJYGSpH','Joyce','Heino','1949-01-29','jheinocy@nasa.gov','558-327-6672','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('jivushkinb8','gKuro1MhlIPZ','Josias','Ivushkin','1943-11-05','jivushkinb8@mayoclin','267-389-3800','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('jkeytelw','YiwdW1cWG47b','Jaquith','Keyte','1994-03-02','jkeytelw@alibaba.com','365-276-2081','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('jkilrowrq','WPwk3il','Jorgan','Kilrow','1947-05-22','jkilrowrq@sciencedai','698-459-0679','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('jlangtryrk','wig4yMu','Jamie','Langtry','1944-02-09','jlangtryrk@t-online.','727-449-5787','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('jlebruno8','JpkfdhSFbzP7','Jase','Le Brun','1966-12-02','jlebruno8@examiner.c','203-191-7097','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('jloosmorefx','shw6Ywavj','Jillana','Loosmore','1938-05-22','jloosmorefx@mozilla.','681-387-9480','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('jmancerfb','6SclVRn','Jone','Mancer','1999-03-24','jmancerfb@amazon.co.','452-848-2937','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('jmatiasu','8D5IzTHo','Jakob','Matias','1927-01-20','jmatiasu@state.gov','318-420-7807','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('jmcdougle86','rTuKca','Judd','McDougle','2008-08-16','jmcdougle86@redcross','645-224-4283','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('jmcgahernc2','lsZmtj','Jasmin','McGahern','1961-05-13','jmcgahernc2@cpanel.n','136-557-1943','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('jmckern7n','630GkYd','Jessey','McKern','1932-03-17','jmckern7n@aboutads.i','563-912-2421','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('jmcmahonn3','PaVJqG57GiB','Jimmy','McMahon','1943-03-31','jmcmahonn3@ocn.ne.jp','167-749-3224','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('jmcphadenr1','uvMo9npmEM','Jermaine','McPhaden','1968-11-22','jmcphadenr1@rambler.','604-374-9537','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('jmillieraz','9MZXAuo','Jessalin','Millier','1990-05-20','jmillieraz@smh.com.a','317-740-9384','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('jpenwellrl','8dIlR6SKV','Jewelle','Penwell','1992-09-09','jpenwellrl@t.co','681-901-6546','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('jperring2e','zByixYgBvA','Jarad','Perring','2017-02-18','jperring2e@yahoo.com','107-132-7687','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('jpettmanl0','pry2VxMPgWE','Jillie','Pettman','1970-07-09','jpettmanl0@ebay.com','993-155-1090','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('jpiff6w','sWniKk3CxO','Jareb','Piff','1958-12-03','jpiff6w@shutterfly.c','805-356-9710','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('jreddin59','GC9vcV83b','Jillene','Reddin','2004-03-13','jreddin59@globo.com','716-141-1252','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('jroblettjl','c7DQSOde','Jamill','Roblett','1939-06-18','jroblettjl@uol.com.b','965-544-5197','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('jrowlesdb','cOFkFk','Jacinthe','Rowles','2022-09-19','jrowlesdb@umn.edu','371-545-3190','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('jseinlo','ZaPEXk','Josias','Sein','1927-10-17','jseinlo@dell.com','943-139-2883','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('jshallcrossqy','cjFoYy','Jon','Shallcross','1993-07-11','jshallcrossqy@ameblo','933-196-6107','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('jsibbe6d','Bxsh3Bi8','Johnath','Sibbe','1969-10-27','jsibbe6d@cbslocal.co','649-937-9065','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('jthompsongu','mDmcCRGp','Jojo','Thompson','1947-03-04','jthompsongu@time.com','987-940-8231','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('jtouzey20','Knj3AmQmxG','Judie','Touzey','1972-07-17','jtouzey20@wordpress.','972-485-0209','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('jtrudgeon5n','qUojCzkP4','Joelynn','Trudgeon','2013-06-27','jtrudgeon5n@dell.com','344-249-9409','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('jurryef','Vce8vUXg3cm','Jayne','Urry','1997-11-28','jurryef@desdev.cn','567-973-6213','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('jvardengt','qm4CKyD','Jemie','Varden','2019-06-28','jvardengt@patch.com','422-207-9675','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('jwabyhp','bLI8NQ','Justin','Waby','1953-03-30','jwabyhp@woothemes.co','702-869-7287','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('jwasselljk','3XQDBxO3pL','Janie','Wassell','1984-08-31','jwasselljk@oakley.co','406-658-6683','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('jyockley7r','xUQTiL9','Jaclin','Yockley','1958-09-08','jyockley7r@archive.o','806-674-5308','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('kadds1d','XD9wJPGMg','Krystle','Adds','2013-10-29','kadds1d@cpanel.net','449-486-2883','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('kadriaan5i','RbkwyIeJzV','Kerstin','Adriaan','1932-08-26','kadriaan5i@netvibes.','345-546-5424','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('kainsworth1f','gIk46HJi0T','Konstantine','Ainsworth','1968-11-16','kainsworth1f@apple.c','232-963-6965','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('kaleksich4z','KxRBTQk','Kara','Aleksich','1998-09-10','kaleksich4z@scribd.c','539-539-0799','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('kalexsandrovichjm','OIpCvc','Kelby','Alexsandrovich','1999-03-15','kalexsandrovichjm@hi','872-921-1441','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('kallwelloj','WlbyfIxJl4','Keenan','Allwell','1974-05-08','kallwelloj@tumblr.co','919-203-8146','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('kbaldiqm','MdKtVss','Kristan','Baldi','2015-05-26','kbaldiqm@google.pl','105-249-3767','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('kbeddowsg3','2C8zu18','Kathi','Beddows','2002-08-06','kbeddowsg3@unc.edu','484-158-8380','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('kbickerstethhd','fKPSMx','Kimberlee','Bickersteth','1957-11-24','kbickerstethhd@sina.','259-533-1904','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('kbillows7v','cNnnD04BgF','Kevon','Billows','1931-03-13','kbillows7v@bloglines','495-390-5226','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('kbixleyr2','nCgzUFwajGW4','Kaitlyn','Bixley','2000-12-21','kbixleyr2@networkadv','423-233-4788','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('kbrockqi','dq39Rr','Ki','Brock','1966-12-20','kbrockqi@time.com','552-531-9109','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('kbrunetticx','EsMuC6','Kathye','Brunetti','1973-08-28','kbrunetticx@hhs.gov','922-760-1591','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('kbuttreyc1','U6XsiS','Kat','Buttrey','1945-08-28','kbuttreyc1@merriam-w','417-594-4432','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('kclick4p','TMQMeLeLdzu','Korie','Click','1997-01-17','kclick4p@epa.gov','636-893-2440','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('kdaeth2h','v0RAhNkxUgKB','Kimble','D\'Aeth','2010-09-17','kdaeth2h@ca.gov','948-833-1633','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('kdartnall9o','t7QzZMC6Pmf','Kane','Dartnall','2017-01-01','kdartnall9o@goodread','523-674-3627','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('kdrinan60','xVWCYAQWIAID','Keriann','Drinan','2018-02-15','kdrinan60@mashable.c','359-178-4567','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('kduesberry7y','672h2phPR','Kristopher','Duesberry','2010-11-01','kduesberry7y@aol.com','665-768-4195','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('keglindz','vMTtWXRDGd','Kassi','Eglin','1982-06-20','keglindz@ycombinator','800-176-8273','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('kelcoat6f','xt5wicc55','Kristine','Elcoat','1991-11-05','kelcoat6f@ycombinato','219-480-5570','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('kellwandm0','MVK5wUL','Krishnah','Ellwand','2012-08-31','kellwandm0@bbc.co.uk','631-577-0248','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('kglencroschekg','ASpgRdOvWMou','Kelci','Glencrosche','1946-11-24','kglencroschekg@blogt','405-822-7271','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('kgodden3r','ubobJAGmn','Kristen','Godden','1956-01-22','kgodden3r@theguardia','691-401-0673','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('khebrondi','ktCWfOT','Karel','Hebron','2020-07-11','khebrondi@etsy.com','843-310-3893','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('kkeymarbp','12NYj7Zz3Yx1','Karlotta','Keymar','1966-08-10','kkeymarbp@blogger.co','515-954-7859','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('kkinzelf','oGHGB3','Kylen','Kinze','1962-03-14','kkinzelf@unicef.org','982-582-6267','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('kklinkl4','JFa5fRw4','Kameko','Klink','1966-04-18','kklinkl4@fda.gov','837-799-9295','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('klesarrmc','qifkBTamI7SO','Kiley','Le Sarr','1946-12-30','klesarrmc@japanpost.','293-138-0712','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('klugard1o','hwMVVQgLlJ7','Kathrine','Lugard','2013-12-25','klugard1o@aboutads.i','164-659-9356','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('klumbley7a','6ryUST4LcA','Kassia','Lumbley','2007-10-26','klumbley7a@tinyurl.c','734-126-9881','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('kmacclenanhy','hjWzN8','Kylie','MacClenan','1974-01-07','kmacclenanhy@51.la','260-346-9553','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('kmallatrattiv','HXM0flJ3Z','Kimmie','Mallatratt','1963-12-28','kmallatrattiv@amazon','387-263-6030','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('kmckinie90','VJMWrY','Kristina','McKinie','1962-10-25','kmckinie90@networkad','605-329-6936','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('kmitchelsonc8','5Z535U','Kerk','Mitchelson','1982-12-17','kmitchelsonc8@si.edu','689-967-4083','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('knettleship7e','bXrJLJnlLg','Kathrine','Nettleship','1934-03-10','knettleship7e@google','798-155-9291','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('knorway1z','Cvi5Hu6usMPW','Karlis','Norway','2001-06-08','knorway1z@businesswi','755-685-6713','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('kpetchellbw','7zSKBJzpkGn','Keir','Petchell','1995-06-21','kpetchellbw@tinypic.','102-643-1705','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('kposner1x','lN8uW4','Kaja','Posner','1936-02-02','kposner1x@engadget.c','362-124-4204','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('krobertshu','mWA1Wf','Krystyna','Roberts','2019-10-06','krobertshu@constantc','421-264-3889','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('krupertob3','G4buft','Keslie','Ruperto','1976-03-18','krupertob3@craigslis','217-252-1905','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('kscadeqp','6ZuK3H','Kienan','Scade','1934-01-02','kscadeqp@cocolog-nif','428-857-1357','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('kscarratt8w','XXeDBsp','Kikelia','Scarratt','2015-07-20','kscarratt8w@admin.ch','431-197-0526','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('kshapirohr','v296JBMd','Klaus','Shapiro','1936-12-29','kshapirohr@arizona.e','336-784-9179','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('ksudworth9w','7Hs8bYUFrz','Konstantin','Sudworth','2021-03-23','ksudworth9w@privacy.','764-397-3340','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('ktemlg9','nIOcbYIIR','Krisha','Teml','1957-08-16','ktemlg9@histats.com','234-823-0136','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('ktench2x','dXHlCJsboAG','Kippie','Tench','1954-04-19','ktench2x@nymag.com','777-546-9398','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('ktopaz79','HVYF9Nra','Kimble','Topaz','1978-05-26','ktopaz79@sakura.ne.j','601-820-6324','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('ktresleril','cIWDhINrf','Kippy','Tresler','1981-05-25','ktresleril@mlb.com','915-933-0345','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('kverrallsno','8OJT4Vcbxc6','Kellyann','Verralls','1961-12-11','kverrallsno@i2i.jp','827-731-6411','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('lashpoleny','Gy3AyKlDSBh','Lars','Ashpole','2013-04-22','lashpoleny@youtu.be','781-935-2084','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('lbehr5w','UjVc7v9as','Larissa','Behr','1981-10-07','lbehr5w@answers.com','697-268-4289','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('lbignellj8','BvEQXx4EkAvp','Leupold','Bignell','1962-01-04','lbignellj8@omniture.','539-895-8195','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('lcartman8a','Js4j3X','Lurline','Cartman','1944-09-18','lcartman8a@altervist','468-583-4297','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('lcatchersidenc','UUtVebgG','Leodora','Catcherside','1971-10-14','lcatchersidenc@wikia','315-706-6812','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('lcholmondeley4g','OFyuWusg5i','Lindsay','Cholmondeley','1924-12-17','lcholmondeley4g@aol.','193-114-9861','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('lcordon29','nDBGVgA','Leeann','Cordon','1955-04-29','lcordon29@goodreads.','116-875-9260','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('ldaubneyt','aqGhc4x','Lonnard','D\'Aubney','2015-06-29','ldaubneyt@networksol','986-140-2997','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('ldenzeyob','EEzTbQLS5eF','Lolita','Denzey','2020-03-02','ldenzeyob@narod.ru','699-941-9649','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('ldumberell6j','zLXXWMz','Linn','Dumberell','2002-05-15','ldumberell6j@technor','708-960-7307','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('lengelld','2oJQAzJ9KwCY','Lolita','Engel','1943-11-19','lengelld@gnu.org','171-486-7594','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('lgavaghangd','mRCSgWNn','Linet','Gavaghan','1969-07-08','lgavaghangd@japanpos','362-380-1928','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('lgermainii','5X3n9j9t','Leroy','Germain','2018-02-27','lgermainii@aboutads.','829-805-0654','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('lgintyb2','KN5icoHVgHM','Ly','Ginty','2009-08-08','lgintyb2@shinystat.c','575-591-5317','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('lgrigoream','GO04YTSsqG','Louisette','Grigore','1968-08-22','lgrigoream@last.fm','750-500-8062','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('lhaneht','ftVmG0m0T','Lauren','Hane','2009-08-16','lhaneht@noaa.gov','588-828-4775','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('lhannam6','ScgysI','Lusa','Hanna','1990-06-18','lhannam6@taobao.com','431-544-1083','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('lhucker3t','nPJaCLJU','Lucinda','Hucker','1972-06-16','lhucker3t@army.mil','545-295-0031','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('livankovic5y','ZB4k1az','Lidia','Ivankovic','1935-02-19','livankovic5y@rediff.','832-281-4307','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('ljackalinmg','Bf56kYdzgOt','Lorine','Jackalin','1954-11-14','ljackalinmg@e-recht2','610-263-0611','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('lkilshalldl','94BlWpw','Lynde','Kilshall','2017-05-20','lkilshalldl@taobao.c','303-511-5971','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('lkupecrf','w86oekK2IVzs','Lurette','Kupec','1977-09-25','lkupecrf@rambler.ru','529-741-9432','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('llintsga','khCHlaEt','Locke','Lints','1989-02-04','llintsga@fc2.com','330-325-5328','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('llowmasso2','GEMN6r','Leisha','Lowmass','2009-06-05','llowmasso2@cnet.com','931-489-9499','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('llubmanm8','VDzqxt2','Luci','Lubman','2004-09-18','llubmanm8@google.co.','860-935-6572','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('lmacmeartyg0','xHdfuR8OBEpm','Leandra','MacMearty','1988-05-04','lmacmeartyg0@cnbc.co','288-164-1230','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('lmassinghamch','phJHm6qG2hrS','Lemmy','Massingham','1923-06-12','lmassinghamch@indiat','845-721-9161','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('lmccafferty1m','qMbF9ip','Lurette','McCafferty','1930-05-04','lmccafferty1m@ifeng.','567-246-4723','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('lollivierrep1','hCpIUoBRW','Lory','Ollivierre','2012-11-26','lollivierrep1@simple','953-528-4197','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('loswal7l','H8waYrS','Laurence','Oswal','2013-09-16','loswal7l@histats.com','851-923-3476','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('lpetersen5h','QXKVE8Q','Lotte','Petersen','1964-09-16','lpetersen5h@miibeian','558-788-9452','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('lplitzie','grIcOpqm7','Lenore','Plitz','1988-03-20','lplitzie@blogger.com','769-988-4531','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('lrobeconb6','G9OQsMzg','Levon','Robecon','1985-07-17','lrobeconb6@shutterfl','230-166-0858','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('lrobertetdm','t6pxpe','Leland','Robertet','1931-11-13','lrobertetdm@sun.com','558-387-9380','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('lroffiu','ecyGL2EgD','Lisha','Roff','2017-07-03','lroffiu@nsw.gov.au','591-799-9394','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('lrollingsk','OL0eyOaMzC','La verne','Rollings','1978-08-28','lrollingsk@abc.net.a','138-890-5645','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('lrubel49','KeAvvDsHCh','Lorene','Rubel','1955-06-27','lrubel49@ameblo.jp','938-854-2522','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('lshear9i','69ajQB5TF3q','Lucita','Shear','1967-10-05','lshear9i@howstuffwor','327-114-9623','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('lsindall17','NF8971xdhvWZ','Lauren','Sindall','1977-05-10','lsindall17@si.edu','253-510-8958','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('lsouthcott2t','qhQNky2Wg5Z','Lynnette','Southcott','1949-07-18','lsouthcott2t@sitemet','101-335-0018','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('lsowrahot','Kf9lgA','Lou','Sowrah','1944-03-29','lsowrahot@vistaprint','560-967-6010','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('lsteckingsbg','OK3V0xGCF','Lon','Steckings','1996-04-19','lsteckingsbg@webs.co','293-325-1604','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('lsudell58','R7eEMzUoDvuw','Lea','Sudell','2012-10-08','lsudell58@forbes.com','464-367-8550','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('lthayre8d','k1nmWn','Leonanie','Thayre','2014-03-27','lthayre8d@behance.ne','199-825-4204','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('ltolfreybm','Xp3nc0','Lorry','Tolfrey','1967-09-16','ltolfreybm@blogger.c','190-148-8950','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('ltorrecilla93','HEjCNLiJO','Lorraine','Torrecilla','1959-08-07','ltorrecilla93@fda.go','595-909-6484','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('lvaldesji','o6e3Hl','Link','Valdes','1926-11-23','lvaldesji@oaic.gov.a','251-155-7772','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('lyakolevnq','hA7EvjIFH','Lovell','Yakolev','1961-10-21','lyakolevnq@booking.c','422-569-3793','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('lyegorovkn','8HI7hpFnQD','Lorne','Yegorov','1972-07-10','lyegorovkn@princeton','853-934-4895','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('maggasbz','4QGySB5IRYv','Mady','Aggas','1934-08-22','maggasbz@cafepress.c','383-422-9098','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('marrington21','EFe4dEaQSM','Marilin','Arrington','1997-09-21','marrington21@uiuc.ed','964-349-2245','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('mashboltr7','MsfRwDNCdOl','Myranda','Ashbolt','1937-12-19','mashboltr7@sitemeter','746-366-2931','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('mbamboroughrh','5iehR73H1r','Myles','Bamborough','1948-05-09','mbamboroughrh@bing.c','970-695-9269','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('mbaxstairmf','ESIJde7Cv','Marnie','Baxstair','1935-03-28','mbaxstairmf@elegantt','634-551-3281','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('mbeckhursteu','tw9fUVsX','Morissa','Beckhurst','1928-05-06','mbeckhursteu@discove','982-888-6928','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('mbrownsett7','CtQAw6M','Markus','Brownsett','1948-12-31','mbrownsett7@webs.com','941-937-3010','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('mbruhnickeqt','fZsSz0i5ubFM','Minni','Bruhnicke','1999-08-29','mbruhnickeqt@discove','618-491-6020','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('mclingana4','3iIppj','Mina','Clingan','1940-04-06','mclingana4@alibaba.c','471-117-0870','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('mcollingworthdw','Z9zTG0QDtFpr','Mortie','Collingworth','1976-10-02','mcollingworthdw@weib','182-408-4837','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('mcolmorep9','POksXzfRY2W','Maurie','Colmore','1941-04-21','mcolmorep9@loc.gov','949-631-0241','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('mcopingd7','6wajGf','Michaella','Coping','1936-01-07','mcopingd7@plala.or.j','560-350-3372','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('mcossonspy','K8qYIcd','Marti','Cossons','2004-05-06','mcossonspy@rediff.co','991-767-2868','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('mcromackbl','g1NnZl36','Marguerite','Cromack','1948-04-10','mcromackbl@baidu.com','385-354-3673','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('mdeansc4','uHmXvTK','Mattheus','Deans','1979-02-17','mdeansc4@answers.com','324-809-5637','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('mdelfh8','NwnLba29U41','Michell','Delf','1963-04-22','mdelfh8@mtv.com','668-951-8934','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('mdysones','qti1XryvBZp','Marshal','Dyson','2007-05-13','mdysones@mac.com','359-728-3948','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('mfalconer3p','NYCoFopUV','Mommy','Falconer','2004-06-03','mfalconer3p@exblog.j','902-830-1120','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('mfatherom','bKPaDsf','Minnaminnie','Father','1942-02-02','mfatherom@newsvine.c','315-712-9353','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('mfilisovi8','zaEPXnt6zgP9','Martelle','Filisov','1927-12-28','mfilisovi8@dagondesi','967-657-7965','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('mfleggh2','AoL6i8kcj','Merrile','Flegg','1961-06-29','mfleggh2@npr.org','264-382-4513','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('mguerola3f','OPrp3C','Myriam','Guerola','1949-06-02','mguerola3f@dell.com','211-816-3712','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('mharsnepf2','Urft1iuyrv','Merwin','Harsnep','1951-12-18','mharsnepf2@fc2.com','515-998-5121','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('mhoulston6c','eopdBBQTbQ01','Mose','Houlston','2023-03-15','mhoulston6c@noaa.gov','913-795-3195','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('mhudspethi1','4eyKdJ9eE','Merwin','Hudspeth','1979-10-07','mhudspethi1@google.p','861-284-7462','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('mianettieh','1pvxfp1','Mateo','Ianetti','1923-12-12','mianettieh@cmu.edu','451-725-0601','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('mivinsnr','YGe8uKsxSu','Matilda','Ivins','1974-07-08','mivinsnr@discuz.net','827-436-9027','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('mjezzardk0','pkzvLiC5HB','Moll','Jezzard','1983-10-23','mjezzardk0@squarespa','521-943-8415','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('mjindracekll','uPXmr9','Mersey','Jindracek','1957-05-08','mjindracekll@craigsl','846-590-4621','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('mjuorioa9','0gNSzFY','Man','Juorio','2018-09-03','mjuorioa9@buzzfeed.c','861-463-1174','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('mkenrydi9','kXIusskASQZk','Monti','Kenryd','1967-02-28','mkenrydi9@paypal.com','132-235-1495','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('mkestellk2','FTwT7Khin','Mortimer','Kestell','1923-10-25','mkestellk2@blogspot.','772-852-6503','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('mlamonbyl8','hvcrNz','Matias','Lamonby','2009-04-18','mlamonbyl8@linkedin.','788-593-6127','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('mlansdaleh6','FLrkANN','Melisandra','Lansdale','1979-01-31','mlansdaleh6@bigcarte','875-832-3988','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('mlassells2v','6zUpqnoOng','Meagan','Lassells','1944-04-04','mlassells2v@tripadvi','850-466-3029','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('mleclaireg8','1pmlViiUcuIC','Mick','Le Claire','1991-06-28','mleclaireg8@jalbum.n','437-170-3878','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('mlittlefair13','NhquMi5','Mahmoud','Littlefair','1996-08-30','mlittlefair13@scient','490-485-8186','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('mlorriman2w','rxdguw5Ac','Morris','Lorriman','1987-08-06','mlorriman2w@msu.edu','558-831-0808','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('mlygo85','VvKepih1','Mile','Lygo','1982-10-07','mlygo85@networkadver','664-842-9308','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('mmatschekin','c9CTDhNUbt','Merill','Matschek','1938-12-10','mmatschekin@mit.edu','172-135-6803','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('mmatuszkiewicz22','y98YzmGx2PAf','Mitchel','Matuszkiewicz','1996-07-31','mmatuszkiewicz22@spo','229-974-6918','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('mmayowfu','gzw0bjfwxP','Morey','Mayow','1985-09-22','mmayowfu@state.tx.us','407-652-0332','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('mmeese1s','dfCcSOZLndnF','Marnie','Meese','1936-12-30','mmeese1s@hexun.com','814-422-4855','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('mmiddlemissa7','5pVZAg3Hv6sI','Matthieu','Middlemiss','1979-08-28','mmiddlemissa7@noaa.g','627-570-5975','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('mmordon1q','kwAnJuY71','Marlowe','Mordon','1990-08-26','mmordon1q@cdbaby.com','201-693-2043','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('mmorsonpn','mDetHmO','Michale','Morson','1929-09-17','mmorsonpn@imgur.com','469-403-8340','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('mmoxon4a','ZsFAQdlCkW','Marve','Moxon','1928-04-10','mmoxon4a@gravatar.co','940-684-7045','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('mmyottfy','1M7Xwry5fR','Maryl','Myott','1995-09-18','mmyottfy@hexun.com','736-816-6562','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('mnewnham2n','pfLpRY','Mahalia','Newnham','1973-11-25','mnewnham2n@psu.edu','317-874-0105','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('mormesz','vSvLDU0I','Melinde','Ormes','1923-03-12','mormesz@bbc.co.uk','504-450-1758','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('mpetrenkofm','ellpZ3w0rNG','Marshall','Petrenko','1956-10-18','mpetrenkofm@fastcomp','489-485-1084','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('mpickrill43','9YpF2erl2Ad','Magdaia','Pickrill','2002-12-18','mpickrill43@go.com','443-937-8660','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('mpilgrima0','0NEsa7FhLQ','Marilyn','Pilgrim','1987-10-30','mpilgrima0@un.org','402-780-7620','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('mproffer15','zFtjWw3','Moyra','Proffer','2002-07-27','mproffer15@berkeley.','669-404-1170','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('mrenekk','PuAUMdzPFu','Major','Rene','1974-07-01','mrenekk@icio.us','742-374-8991','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('mrenoden30','rpyYUbEgR2w','Mead','Renoden','2008-01-10','mrenoden30@home.pl','478-984-7366','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('mrivelinmv','0FFEd4','Moe','Rivelin','2002-08-16','mrivelinmv@harvard.e','561-912-8137','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('mrowntreei5','YutGQCX','Martica','Rowntree','2018-05-12','mrowntreei5@examiner','201-768-8084','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('msabbins53','WkGihZ7tgD','Mick','Sabbins','1957-08-22','msabbins53@jiathis.c','293-478-1597','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('msaddbv','00VyUnnmkXyE','Myra','Sadd','1970-10-19','msaddbv@cbslocal.com','469-840-4313','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('msanciasj1','ENAGvhafm1x','Marcile','Sancias','2012-10-15','msanciasj1@stumbleup','206-418-7600','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('mschubertei','eRiI5Jzqtd','Marissa','Schubert','2005-05-06','mschubertei@reuters.','721-900-7249','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('mseidoa','wlFLpa2','Mart','Seid','1931-04-13','mseidoa@shutterfly.c','470-497-0572','fwoolnoughr@state.go');
INSERT INTO `Layman Patients` VALUES ('mskeggs7w','832VODW0po','Malorie','Skeggs','1925-04-07','mskeggs7w@accuweathe','343-476-4276','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('mskitteral8m','TA61bmVYSZ','Mikol','Skitteral','1932-01-24','mskitteral8m@indepen','912-374-0510','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('mskivington7g','jTTUcl','Marlane','Skivington','1929-02-13','mskivington7g@hugedo','388-674-2829','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('msmithymanj3','A9ufhQIuw','Maurise','Smithyman','1966-07-02','msmithymanj3@diigo.c','628-439-0956','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('mstonier2z','t6gvO8SIJXB','Molly','Stonier','1924-05-29','mstonier2z@slashdot.','474-121-3113','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('mstopsq9','Bpv0ocFzlUS','Minnie','Stops','1986-08-19','mstopsq9@blogspot.co','910-665-4231','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('msturror28','XQMlplUXb','Mahmoud','Sturror','1995-06-06','msturror28@github.io','369-453-7271','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('msummonspx','4lJrG9i','Minta','Summons','2001-08-14','msummonspx@google.es','493-279-1599','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('mswaysland7z','HrXjudwMe','Marlo','Swaysland','1986-04-10','mswaysland7z@woothem','190-655-6581','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('mtelezhkin2u','S91c2Qz','Merilyn','Telezhkin','1967-08-24','mtelezhkin2u@wiley.c','608-333-8719','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('mtildesleypi','UcBDeGdw9OqV','Marcelline','Tildesley','1990-01-15','mtildesleypi@stanfor','710-133-4948','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('mvanderkruilq','RzPr3CVr','Mildrid','Van der Krui','1936-01-05','mvanderkruilq@blogsp','342-879-1019','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('mvanninifz','yiNOSkIN0','Mira','Vannini','1974-07-30','mvanninifz@tinypic.c','199-519-8745','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('mvasyukhin47','MewED2','Moss','Vasyukhin','1930-12-02','mvasyukhin47@mapques','623-990-7338','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('mviggars3d','7rQgoUz5kS','Marlene','Viggars','1984-01-27','mviggars3d@abc.net.a','660-796-9990','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('mvinecombeon','Ux2QXSm6IYh','Mia','Vinecombe','1940-05-14','mvinecombeon@elegant','311-953-4024','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('mvynehallhg','1mHtkTx','Madelene','Vynehall','1969-03-03','mvynehallhg@dagondes','191-337-5990','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('mwillicottd0','2elfYmT','Mei','Willicott','1954-09-20','mwillicottd0@zdnet.c','308-637-1410','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('mwylemano9','cU1mVD1STc','Myrna','Wyleman','2014-05-29','mwylemano9@hud.gov','416-816-8231','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('myarrellab','yBW01M6i4','Mandy','Yarrell','2008-02-17','myarrellab@umich.edu','623-175-8826','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('nalenfl','w2VL1j7eR','Norrie','Alen','1989-01-09','nalenfl@wiley.com','692-844-7362','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('nalexanderr9','ibI9aVK6IDRW','Nellie','Alexander','1974-04-16','nalexanderr9@cpanel.','318-568-3682','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('nantill10','WP2HRM7QJrG','Nanete','Antill','1955-01-22','nantill10@mlb.com','513-611-2759','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('nbeachamp37','uAPbXKc5V0','Nester','Beachamp','1976-01-29','nbeachamp37@usgs.gov','468-823-8060','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('nbeggiogz','JY7H6Jp3e0','Neysa','Beggio','2013-07-12','nbeggiogz@blogs.com','635-795-0548','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('ncharity8p','1QizcKJgYP','Natassia','Charity','1988-05-13','ncharity8p@engadget.','661-177-1032','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('ndebookc','sO2GSyRrd','Nanice','Deboo','1925-12-07','ndebookc@blogtalkrad','177-309-0779','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('ndenyukhin7f','up4sf0p98ay','Neal','Denyukhin','1929-10-05','ndenyukhin7f@smh.com','346-612-7311','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('ndivver6v','bmY9iNd24EQ','Nana','Divver','1981-06-22','ndivver6v@techcrunch','838-300-0931','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('nfairnko','O55yMWQ','Nissie','Fairn','2012-06-12','nfairnko@wp.com','342-778-0958','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('nferrucci24','iFkAJIvXv','Nickey','Ferrucci','1927-08-17','nferrucci24@unesco.o','781-500-4911','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('nfreemankr','pB0ohm2HFKnZ','Nelia','Freeman','1984-01-25','nfreemankr@networkso','929-870-7026','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('ngeistpt','ZGRV2x','Natala','Geist','1968-03-06','ngeistpt@tinypic.com','371-605-4149','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('nharrison82','R3qG99','Nevsa','Harrison','1954-08-04','nharrison82@hibu.com','981-996-6902','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('nhosburn41','Qbh4ZC','Ninon','Hosburn','2013-07-14','nhosburn41@hhs.gov','833-135-6153','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('nivankinne','SclLDuB','Noel','Ivankin','2004-10-04','nivankinne@plala.or.','143-717-8743','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('njovey3c','47w5WF3kk','Nady','Jovey','1936-04-20','njovey3c@squarespace','670-831-4937','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('nkraftjg','m8o6ncc','Nevil','Kraft','1956-01-01','nkraftjg@squidoo.com','628-192-1221','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('nlammertrc','QlYze6ABiwC','Nanice','Lammert','2010-06-07','nlammertrc@istockpho','321-814-6969','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('nlivzey8x','4fmdDO','Nero','Livzey','2017-10-20','nlivzey8x@cnn.com','936-368-5811','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('nlortz9y','qiyImsbgaa','Nicola','Lortz','1984-05-16','nlortz9y@ucla.edu','725-168-9729','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('nmahondg','HkMxNl7S','Norina','Mahon','1933-09-10','nmahondg@utexas.edu','869-305-1980','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('nmarriage4y','KWPaBtAJ','Nickey','Marriage','2020-03-15','nmarriage4y@github.c','186-530-9452','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('nmatts2f','PjGjGtUnw','Noami','Matts','2017-09-28','nmatts2f@tripod.com','510-779-7130','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('nmynett9p','8LN52j','Nicol','Mynett','2013-09-26','nmynett9p@acquirethi','424-784-5365','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('nnaultylt','TbDwpNK3pFet','Ned','Naulty','2018-09-02','nnaultylt@virginia.e','717-880-8224','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('npalfery88','sxJe5DN','Nicky','Palfery','2002-08-08','npalfery88@pinterest','783-425-2873','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('nprettiml','criP9b28DLzv','Nell','Pretti','1950-12-31','nprettiml@godaddy.co','910-984-8563','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('nriccoed','BjXr5kd7reo5','Neron','Ricco','1938-04-14','nriccoed@foxnews.com','379-466-4515','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('nrivitt99','12cz6hp','Nestor','Rivitt','1970-10-16','nrivitt99@globo.com','645-764-4952','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('nspottswood39','TY4aJQ','Neil','Spottswood','2011-06-10','nspottswood39@disqus','671-423-0893','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('nwedmore5f','gngghiQSs','Nona','Wedmore','1971-02-11','nwedmore5f@cmu.edu','498-234-7414','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('nwhittenburyof','JI0E6VgE','Nonah','Whittenbury','1997-03-31','nwhittenburyof@nymag','934-115-6426','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('nwissbydk','9RPsQK4Sna3F','Nettle','Wissby','2000-03-29','nwissbydk@ibm.com','642-732-0305','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('oastmanbn','Y34YCLg','Othella','Astman','1936-11-01','oastmanbn@ocn.ne.jp','450-990-1607','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('ocoleshillcf','Ao4VPEm','Odella','Coleshill','1964-08-07','ocoleshillcf@amazon.','338-868-6964','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('oloosmorebx','aXOU3PMiBgGC','Ole','Loosmore','2000-04-24','oloosmorebx@vimeo.co','705-808-3657','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('oshorbrookf4','mMCvhO','Ottilie','Shorbrook','1937-11-04','oshorbrookf4@chron.c','486-782-0714','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('osweetsurjr','HYsLtcelyc1y','Orrin','Sweetsur','1933-04-30','osweetsurjr@marriott','746-701-3119','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('pbeddoesr6','NA50bw','Pegeen','Beddoes','1980-03-14','pbeddoesr6@xrea.com','507-719-0860','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('pbothamskx','07nfCRx','Paxon','Bothams','2010-12-22','pbothamskx@themefore','963-294-8829','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('pdormanq5','qzTpfVo','Peterus','Dorman','1964-11-04','pdormanq5@xing.com','105-239-2636','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('pedgellern','ReAbnLZJnX5k','Prudence','Edgeller','1967-05-30','pedgellern@un.org','770-565-5996','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('pfarnon94','iPotwnqCMMU','Pembroke','Farnon','1972-06-08','pfarnon94@vk.com','996-942-5696','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('pfibbenoo','C31vB64Wm','Pavla','Fibben','1979-09-29','pfibbenoo@creativeco','354-818-0650','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('pgatward7i','iJVLMtbl9','Perren','Gatward','1991-06-27','pgatward7i@163.com','373-853-6061','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('pgiacubbo7u','vI8c7CCi','Portie','Giacubbo','1948-09-21','pgiacubbo7u@cam.ac.u','268-637-1817','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('pglowacz87','hFj43AeZ','Paulette','Glowacz','1981-07-28','pglowacz87@bloglovin','351-879-3173','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('pgrangier4m','ELtRdiCTFO5','Pearline','Grangier','1967-07-11','pgrangier4m@theguard','729-159-4571','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('phatleyfw','y3WG5sPsf','Poul','Hatley','1931-12-21','phatleyfw@gov.uk','910-378-8020','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('phinchcliffekf','lDVHb7UU0R','Phylys','Hinchcliffe','2000-10-06','phinchcliffekf@hao12','199-219-1510','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('pilewicz64','MBvoaQnbsw','Perice','Ilewicz','1989-09-28','pilewicz64@webmd.com','702-949-3863','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('pkissickjt','qJHbL1IA6tJ','Pavia','Kissick','1978-08-06','pkissickjt@mashable.','736-599-7868','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('pkleinert7j','eaPpJPP','Pam','Kleinert','1986-04-03','pkleinert7j@themefor','941-678-5946','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('plelliottk8','riqP58SM','Pip','Lelliott','1929-01-25','plelliottk8@gravatar','976-810-0093','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('plevesley77','0wOMU9HO0r','Patten','Levesley','1987-12-03','plevesley77@xing.com','917-716-0202','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('plinnitt3i','4xuUw9I1vr','Pancho','Linnitt','2014-12-05','plinnitt3i@phoca.cz','800-146-7191','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('pmabb4d','Mhv0Mi3','Pavla','Mabb','1925-07-25','pmabb4d@tripadvisor.','965-786-8723','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('pmauchlengh','po7PoJ','Pamelina','Mauchlen','1968-07-12','pmauchlengh@samsung.','438-738-1580','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('pmaude6m','jxaO2uqM','Perla','Maude','1983-01-03','pmaude6m@sakura.ne.j','248-556-6502','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('pmorphewlu','480W72yuFs','Peter','Morphew','1991-08-28','pmorphewlu@delicious','710-474-6547','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('pmulvey1y','Y1BwA7lyy','Paola','Mulvey','1957-02-08','pmulvey1y@ucoz.ru','202-688-2671','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('pocullenbh','mZ07XriyW','Powell','O\'Cullen','1942-05-25','pocullenbh@hostgator','982-497-5426','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('pparfitt3m','MANQD7FzgU3','Pru','Parfitt','2013-08-31','pparfitt3m@de.vu','143-513-3167','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('ppolakif','CId6ie5','Pammi','Polak','1961-11-24','ppolakif@free.fr','792-633-1852','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('psaphir2p','5C60onrSH9m','Pearce','Saphir','1966-11-27','psaphir2p@si.edu','483-520-2722','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('psaywoodlh','PVvXL2','Pauletta','Saywood','1946-07-19','psaywoodlh@cbc.ca','770-785-9533','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('pverchambreha','ijG435yWM','Phillida','Verchambre','1959-04-30','pverchambreha@biglob','672-189-2502','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('pwhithalghhj','Xwmsmz0Rt','Pip','Whithalgh','2000-08-04','pwhithalghhj@weather','217-365-8916','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('qcollumbineka','AkHBca6fDi','Quintilla','Collumbine','1997-06-02','qcollumbineka@oaic.g','810-745-7425','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('qfoggok','yDsDdXJMw','Quintana','Fogg','1988-10-28','qfoggok@google.de','901-866-0210','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('qgolsbya3','PUDem8MkAyo','Quintilla','Golsby','1949-07-13','qgolsbya3@ebay.co.uk','542-852-7606','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('qkeavesfv','4nLqKw','Quentin','Keaves','2011-06-26','qkeavesfv@oracle.com','868-468-0845','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('rairetonqo','hTNRPYZ6','Royce','Aireton','1952-08-04','rairetonqo@sphinn.co','195-451-3499','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('rakitt9t','MEZpDekrC','Ranique','Akitt','1983-04-05','rakitt9t@storify.com','534-190-8565','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('rash32','hSAH93vYc8X','Rosco','Ash','1996-05-21','rash32@prlog.org','446-217-3478','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('raylesburyqx','dohdSc3YBz9','Richart','Aylesbury','1992-03-12','raylesburyqx@thetime','294-418-5261','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('rbainhe','MN4OV1L4u5','Reggie','Bain','2011-07-10','rbainhe@360.cn','426-199-8119','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('rbaishf3','tKnxIuAzkZkE','Raquela','Baish','1998-10-03','rbaishf3@netvibes.co','258-661-9428','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('rbanbridgebr','nBmHIJy','Rudie','Banbridge','1965-08-03','rbanbridgebr@ustream','802-127-5040','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('rbaynton3k','8t9iEHnQj','Rorie','Baynton','2014-11-19','rbaynton3k@ustream.t','914-910-6118','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('rbecerradf','7PuAesaY','Raine','Becerra','2016-04-10','rbecerradf@woothemes','119-108-3454','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('rbingall45','Pb6q0PyQ5','Rani','Bingall','1979-04-01','rbingall45@creativec','311-678-1420','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('rbissettho','GfXTpJgPWeT','Rhonda','Bissett','1928-04-01','rbissettho@ucsd.edu','896-508-5698','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('rbowserre','NaRJB9CSFUK','Rene','Bowser','1986-01-07','rbowserre@weibo.com','251-532-8559','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('rbrearton76','ZWvl1p89fiv','Rutger','Brearton','2008-07-06','rbrearton76@nature.c','499-331-8161','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('rcallway4n','OfR1awf7','Ransom','Callway','1980-02-06','rcallway4n@tinyurl.c','503-877-8074','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('rcardozo5p','cj2TArmtcH','Rob','Cardozo','1983-12-01','rcardozo5p@vimeo.com','559-133-1575','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('rcarryerog','hqFUHI3I','Reine','Carryer','1985-04-15','rcarryerog@4shared.c','154-101-6403','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('rcobson6k','ZxZSxQTNsS','Rodolphe','Cobson','1975-05-13','rcobson6k@wired.com','172-246-5236','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('rcoleshill9v','LEdit77lh2','Rossie','Coleshill','1959-10-01','rcoleshill9v@patch.c','566-692-0752','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('rcrosettojy','hXhw8iC9','Roy','Crosetto','1996-05-07','rcrosettojy@privacy.','392-136-9297','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('rdaddan1','G8sw5JrTYMkz','Rodolfo','D\'Adda','2011-10-12','rdaddan1@google.nl','277-782-3960','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('rdemaidns','LQsJyG','Roseann','Demaid','1944-08-08','rdemaidns@exblog.jp','316-457-7606','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('rfrankom1g','UQxukWYv','Rodge','Frankom','2019-07-13','rfrankom1g@gmpg.org','713-462-5959','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('rgookey66','LD2ctDQlc3','Rolph','Gookey','2008-06-20','rgookey66@cisco.com','343-409-5867','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('rguise4j','IT0jyAUcZ9','Raymond','Guise','1930-08-30','rguise4j@discuz.net','438-449-8253','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('rhardmankd','ytv4BTPD','Reese','Hardman','1923-02-03','rhardmankd@adobe.com','588-667-3521','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('rkillcrossmh','AlhVaE','Ransom','Killcross','2011-06-28','rkillcrossmh@globo.c','538-329-0268','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('rlancetterpz','6ZQrbd','Ruthy','Lancetter','1929-07-15','rlancetterpz@sun.com','910-252-6146','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('rmarkwelley4e','vyo2lq','Romeo','Markwelley','1926-04-19','rmarkwelley4e@msu.ed','384-442-9085','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('rmcmorlandms','ljt5VgWH2W6d','Rosaleen','McMorland','2001-08-10','rmcmorlandms@scienti','130-137-9058','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('rmelpussqn','w6OLN27KD','Rea','Melpuss','1995-01-08','rmelpussqn@techcrunc','757-104-1994','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('rmuscroft57','YbMV6RZb','Renae','Muscroft','1966-07-10','rmuscroft57@typepad.','733-908-6555','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('rneasam1r','43ajNoTnQm45','Rowe','Neasam','1947-11-26','rneasam1r@mit.edu','536-859-4467','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('roleahy8f','7JsxD8y','Rossy','O\'Leahy','1944-01-04','roleahy8f@exblog.jp','138-698-2398','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('rosgoodhf','K6EflRgqKOt','Rockey','Osgood','2010-01-17','rosgoodhf@slideshare','466-196-0763','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('rpeapleme','Noo9MR0y8Of','Ruggiero','Peaple','2014-06-11','rpeapleme@webnode.co','474-452-7235','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('rpeppardci','ISMvLEHBd','Rafferty','Peppard','1982-03-17','rpeppardci@amazon.co','339-794-7069','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('rrichardtn8','Zrrm1iIdPV','Robb','Richardt','1947-05-29','rrichardtn8@ed.gov','804-383-1814','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('rrojahnpk','fdUEN5C2bcH','Reinald','Rojahn','1980-11-15','rrojahnpk@fotki.com','981-768-1877','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('rshovlarhq','yMk6vhjK','Roxy','Shovlar','1985-06-28','rshovlarhq@miitbeian','227-130-9136','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('rsignea8','eXgANEq','Rad','Signe','2018-08-19','rsignea8@netvibes.co','166-565-3260','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('rsilcockai','Qq6iNkLQq','Ryann','Silcock','1924-04-14','rsilcockai@nsw.gov.a','294-103-8267','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('rsimonel9e','vmxsn4xQU0DV','Ransell','Simonel','1951-04-16','rsimonel9e@ebay.com','178-296-5701','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('rsineyr4','pHeWN3mBN','Rozele','Siney','2016-03-29','rsineyr4@4shared.com','715-721-8173','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('rspinneya','Vhjacr8m971','Renee','Spinney','2004-08-29','rspinneya@google.com','864-179-9803','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('rspiteriik','lvDPAYK','Rochell','Spiteri','1937-10-23','rspiteriik@dell.com','581-508-0125','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('rstill8g','0bUqet1','Ross','Still','1953-12-12','rstill8g@blogger.com','477-259-0971','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('rsussexaa','9K27Ln98g','Rip','Sussex','1950-01-12','rsussexaa@craigslist','741-174-4850','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('rwarbeyaj','JThdy00','Randolph','Warbey','1999-04-17','rwarbeyaj@1688.com','249-553-0296','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('rwatkinsonfo','HrVAq8tu','Raynard','Watkinson','1960-11-12','rwatkinsonfo@people.','285-311-9529','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('rwhooleyer','kq1KLEB','Ronald','Whooley','1981-07-25','rwhooleyer@wp.com','207-817-0674','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('sallerton3s','i4fg4B','Scottie','Allerton','1948-09-06','sallerton3s@printfri','390-676-2003','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('sastlattjq','0ItnDqqB5','Sukey','Astlatt','1969-08-08','sastlattjq@behance.n','302-215-2232','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('sbamboroughj9','qsQMyfV5ge','Schuyler','Bamborough','1935-01-22','sbamboroughj9@jimdo.','979-400-3896','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('sbaniardge','EZd2nVxXoQZ','Shayne','Baniard','2010-06-21','sbaniardge@creativec','131-283-4848','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('sbeardsell2l','Za0r8yml','Sibley','Beardsell','1973-03-04','sbeardsell2l@nba.com','933-836-9163','scavozzie@princeton.');
INSERT INTO `Layman Patients` VALUES ('sbengoughbe','dio8LRby5C1s','Shelley','Bengough','1970-03-17','sbengoughbe@cbslocal','598-405-5106','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('sbloysp8','bXN82we','Simmonds','Bloys','1968-07-03','sbloysp8@macromedia.','398-830-6329','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('sboichae','GUqKXVzdvXAn','Svend','Boich','2014-01-12','sboichae@youtu.be','630-734-8516','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('sbrimilcomed5','JRHyYiT','Sophronia','Brimilcome','1954-02-10','sbrimilcomed5@timeso','145-380-8565','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('sbulliventem','bbTbmtx5','Sigrid','Bullivent','1962-12-31','sbulliventem@123-reg','986-275-0761','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('sbyattar','uqIhZmN','Sam','Byatt','1977-02-15','sbyattar@salon.com','488-140-5951','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('scabaneo7','hbSCSb8Nzpc','Shirley','Cabane','2022-05-30','scabaneo7@eepurl.com','423-782-6597','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('scathersidese1','SR36ni7','Silvie','Cathersides','1940-12-10','scathersidese1@blogs','539-308-1342','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('schitteyoz','mMXKsrHqOLjp','Sheelah','Chittey','1940-11-12','schitteyoz@microsoft','931-410-9207','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('sclarisix','XQ5Ago','Seana','Claris','1990-07-26','sclarisix@nature.com','158-679-2202','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('scuncarrdy','vjwt64s','Stacee','Cuncarr','1981-05-25','scuncarrdy@facebook.','211-504-6673','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('sdunanr','jvgloDt7vjg','Skye','Dunan','1959-02-06','sdunanr@biblegateway','812-634-2035','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('sdunaway19','QdlLVLXbMLv','Shandra','Dunaway','2003-12-10','sdunaway19@t-online.','244-975-7130','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('sdurradni','QFTKTS0q3awu','Sindee','Durrad','1946-07-22','sdurradni@nyu.edu','770-391-3189','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('sechaliers','UCbncc','Standford','Echalier','2015-08-29','sechaliers@pinterest','678-570-4094','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('sforrioh','XPhPO6','Stevena','Forri','1940-08-22','sforrioh@mlb.com','583-863-4877','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('sfulunj6','6Y0xNUm2Kb','Susanne','Fulun','1995-02-14','sfulunj6@smugmug.com','710-475-5262','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('sfutter1k','VTFzPmOgC','Sascha','Futter','1969-08-09','sfutter1k@dell.com','660-681-0003','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('sgildersleavesen','46KSYB','Silvie','Gildersleaves','1926-12-30','sgildersleavesen@sky','143-431-3584','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('sglasheen7k','QqNLr6Bo','Sisile','Glasheen','1932-07-20','sglasheen7k@desdev.c','378-754-1603','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('sgledhilllr','jH2oiugg0TGI','Sarina','Gledhill','1994-05-12','sgledhilllr@163.com','900-100-2460','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('sgonsalvez3v','dYMZBkf','Stavros','Gonsalvez','1947-02-25','sgonsalvez3v@xinhuan','584-960-9502','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('sgopsillmy','oryO6L9','Selma','Gopsill','1956-12-10','sgopsillmy@vkontakte','923-473-1297','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('sgrzelak6t','KcfXTzw5qV','Shermie','Grzelak','1945-09-17','sgrzelak6t@ftc.gov','653-490-7698','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('sguesskl','2eueDg10','Sam','Guess','1993-08-17','sguesskl@google.ca','703-409-4985','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('sgyera2','gIMt5na4LA0N','Saxon','Gyer','1986-11-10','sgyera2@newsvine.com','499-406-9573','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('shalpinemr','Kbid4X','Simona','Halpine','1929-05-12','shalpinemr@hubpages.','707-770-8186','mromaninih@uiuc.edu');
INSERT INTO `Layman Patients` VALUES ('shusthwaitecc','U8XFo603FZ7','Spense','Husthwaite','2000-12-21','shusthwaitecc@oaic.g','618-460-3887','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('sjacquetk1','BGfrn9M','Sterling','Jacquet','2009-02-21','sjacquetk1@bbb.org','893-560-0708','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('sjobson96','frPSzTm','Sawyer','Jobson','1976-03-17','sjobson96@washington','846-893-3288','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('skattec','MlYaMDo','Sullivan','Katte','1947-06-11','skattec@sourceforge.','267-246-7917','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('skirby92','Sb6qBXc','Shep','Kirby','2017-08-05','skirby92@unicef.org','354-475-6486','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('sleftwichk9','5QEvVOAV3ya','Sayre','Leftwich','1993-07-25','sleftwichk9@arstechn','813-939-8015','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('sluchettiej','zsyc49m54','Simmonds','Luchetti','1983-07-12','sluchettiej@epa.gov','563-619-8841','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('smccrowmx','h5ZuJIwdqZF4','Stacy','McCrow','1929-04-27','smccrowmx@drupal.org','469-484-3488','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('smcelroygw','aMXLwt6','Sigismund','McElroy','1983-07-07','smcelroygw@chronoeng','375-722-0229','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('smeakin2s','hwXl1j','Serena','Meakin','1925-09-05','smeakin2s@go.com','968-784-8354','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('smollenecu','M8VSjZfC','Stephenie','Mollene','2005-01-28','smollenecu@usnews.co','534-394-2450','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('smulveygb','P1bIU73v','Shelbi','Mulvey','1956-10-06','smulveygb@nsw.gov.au','377-286-8455','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('smuskettao','iGdmeM52r2uq','Sephira','Muskett','1976-01-08','smuskettao@stanford.','501-989-1776','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('snickless8v','3FZADTNpqhz','Scotty','Nickless','1942-04-04','snickless8v@state.go','911-266-7172','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('spaddledv','sWDYn1','Shannon','Paddle','1969-09-01','spaddledv@merriam-we','861-326-7870','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('spaigema','mLOAsh9FoMH2','Shelli','Paige','1992-10-07','spaigema@woothemes.c','633-922-0454','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('speinkej0','RGL9ohYXuG','Stanwood','Peinke','1995-03-06','speinkej0@adobe.com','882-119-8530','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('sronald98','BLWOwuwAhJ3G','Shellysheldon','Ronald','2021-04-03','sronald98@smh.com.au','549-341-2357','jhaffard3@wufoo.com');
INSERT INTO `Layman Patients` VALUES ('ssandlinf','Y7IsXWIUv','Stefano','Sandlin','2019-10-02','ssandlinf@sciencedir','888-321-8368','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('ssandlinig','WcxhXJ4x4l','Sibelle','Sandlin','1971-03-21','ssandlinig@buzzfeed.','649-366-0347','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('ssawle4b','mk4nRC','Shay','Sawle','1957-12-05','ssawle4b@guardian.co','669-880-2010','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('sshewonia','vcrXF8tqkx','Starr','Shewon','1931-02-16','sshewonia@goodreads.','564-212-4760','jcurnnok8@skyrock.co');
INSERT INTO `Layman Patients` VALUES ('sstewartay','H68hYoXl5','Sheela','Stewart','1964-10-14','sstewartay@time.com','367-435-3677','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('sstonuaryd6','Y3zFdPrlh','Sonnnie','Stonuary','1998-03-12','sstonuaryd6@engadget','334-740-1010','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('ssutherdeneo','uBmC7aYvy14a','Shelley','Sutherden','1939-09-16','ssutherdeneo@archive','402-890-4467','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('ssweeney4c','4iyEFDygp','Sammie','Sweeney','1930-03-09','ssweeney4c@google.de','541-612-9843','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('sswinburnejc','XhW9o47E','Stephanus','Swinburne','1989-07-01','sswinburnejc@berkele','581-230-3009','kpfeifferw@epa.gov');
INSERT INTO `Layman Patients` VALUES ('stregidga5b','FCrGOS','Stan','Tregidga','2013-07-11','stregidga5b@independ','196-139-2442','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('strim4f','B8LL6eX6gW4p','Sarena','Trim','1979-04-13','strim4f@howstuffwork','833-698-2645','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('svalde1','8miQViI','Stacey','Valde','1992-05-14','svalde1@slideshare.n','759-529-9393','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('swaylendh','DFce912La31','Sally','Waylen','1970-05-14','swaylendh@ucoz.ru','494-419-1956','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('swebbk5','jqoFiSU7XsV','Sebastian','Webb','1959-09-08','swebbk5@1und1.de','367-508-5204','fgeikies@engadget.co');
INSERT INTO `Layman Patients` VALUES ('tahren9q','gNAMwFjYOUCt','Taffy','Ahren','1946-06-19','tahren9q@wikispaces.','193-461-5398','pmacfallb@senate.gov');
INSERT INTO `Layman Patients` VALUES ('tbackmann7','wd4KjekKSEh','Theodosia','Backman','1970-10-02','tbackmann7@army.mil','957-952-1420','lmaitland2@google.ru');
INSERT INTO `Layman Patients` VALUES ('tbeacroftdj','SMX6Y2a1AP','Tammy','Beacroft','1973-04-27','tbeacroftdj@thetimes','554-647-4523','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('tbradnockeel','4Mc8SmgkFoj','Tab','Bradnocke','1996-09-17','tbradnockeel@ustream','273-369-3312','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('tcaffreyqh','Y2jQhmv4C','Taite','Caffrey','1952-06-04','tcaffreyqh@wix.com','272-385-7559','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('tcookeslc','F1x8PZMqN','Tonie','Cookes','1950-12-10','tcookeslc@prlog.org','208-436-7737','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('tdavydochkincb','6MDTeoH','Tiena','Davydochkin','1946-05-05','tdavydochkincb@state','701-123-2396','ldeek1a@slate.com');
INSERT INTO `Layman Patients` VALUES ('tdogertyrg','Wbuh02Qh','Terrence','Dogerty','1951-12-01','tdogertyrg@fda.gov','377-211-1496','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('tdooneps','HRy3a0eyLCG','Trent','Doone','2010-05-10','tdooneps@aboutads.in','253-545-1685','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('tdovemd','s2P7knGbjJkK','Tan','Dove','1959-08-11','tdovemd@yandex.ru','516-906-3936','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('teastabrook1b','DevmsR3w','Tamra','Eastabrook','1962-07-23','teastabrook1b@sakura','355-752-4703','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('tedish0','9VxNcCRRL0z','Tammy','Edis','1979-04-22','tedish0@multiply.com','189-524-8497','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('tgalleyp','NTBjFyLU','Thorpe','Galley','1981-12-11','tgalleyp@spiegel.de','506-795-6062','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('tgerritzennk','D47m56M3C9P','Travers','Gerritzen','1963-02-28','tgerritzennk@ucsd.ed','790-715-7515','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('tgrenkov3x','YC0imKRIa7','Tedie','Grenkov','1979-09-25','tgrenkov3x@tuttocitt','539-693-2710','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('tharrapke','MFybOfe','Tersina','Harrap','1946-04-03','tharrapke@homestead.','907-339-6024','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('thurchnv','vzTHmpbS5LvH','Timmi','Hurch','1926-12-20','thurchnv@hao123.com','398-904-4842','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('titzkovkt','HElYbH','Talya','Itzkov','1969-10-24','titzkovkt@amazon.com','883-524-4738','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('tivanshintsevck','u3jZvTR','Tyler','Ivanshintsev','1963-07-11','tivanshintsevck@shut','857-299-8794','atorrent13@woothemes');
INSERT INTO `Layman Patients` VALUES ('tjelletto4','RpSz0hQ9Z1u','Theodor','Jellett','1950-07-10','tjelletto4@blogs.com','931-713-9026','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('tkeatchda','evCYu2xegL','Terrijo','Keatch','2021-07-26','tkeatchda@tiny.cc','921-257-2756','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('tkighly97','qDh9r1u','Tate','Kighly','1987-08-10','tkighly97@bbc.co.uk','459-782-0112','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('tkorneichuk44','4df3NEdjB6','Tammy','Korneichuk','1957-05-13','tkorneichuk44@samsun','437-488-3450','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('tmacknielyk4','5tqc1DS8s','Tim','MacKniely','1936-11-09','tmacknielyk4@census.','352-805-2516','ndunnet14@vkontakte.');
INSERT INTO `Layman Patients` VALUES ('tmaddysonna','tvFMm2YbXOP','Terencio','Maddyson','1934-10-05','tmaddysonna@lulu.com','719-485-0543','shofnera@spotify.com');
INSERT INTO `Layman Patients` VALUES ('tmargetsonlz','vqRfuqogrG','Tommie','Margetson','1934-07-09','tmargetsonlz@hugedom','890-822-7556','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('tmayberyfg','ysH2P29giJ','Tadd','Maybery','1935-02-03','tmayberyfg@unicef.or','108-124-3028','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('tmiddlebrookng','1Oat7XqVO','Tobye','Middlebrook','1956-12-14','tmiddlebrookng@lycos','102-522-7329','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('tmutimernb','4u8AbFAiX7','Tull','Mutimer','1973-12-16','tmutimernb@who.int','813-860-4451','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('tneedcd','7VmFh58RQ2S','Teddie','Need','1927-10-08','tneedcd@sohu.com','806-732-9365','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('tnendick9x','ynr8vhZ','Tracie','Nendick','1952-01-30','tnendick9x@cdc.gov','916-546-8003','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('tneumannby','Hu8J9PxR4','Theo','Neumann','1930-05-21','tneumannby@flavors.m','141-908-8943','jjewks18@economist.c');
INSERT INTO `Layman Patients` VALUES ('tnewtownpl','N7Ryzx0ufa3Q','Tabbie','Newtown','1980-02-13','tnewtownpl@spotify.c','301-363-0003','pmaccourt6@europa.eu');
INSERT INTO `Layman Patients` VALUES ('tnuttonfq','dYzWbKeDB86V','Tyrus','Nutton','2011-12-18','tnuttonfq@nationalge','202-626-2691','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('tpaur4u','B4cGQA','Tallie','Paur','1953-01-04','tpaur4u@tinypic.com','775-613-4812','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('trosenwasser0','I1AG30tToz1z','Tina','Rosenwasser','1976-12-04','trosenwasser0@redcro','838-942-9045','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('trumkerj','bhguDpaFec','Thayne','Rumke','1944-07-27','trumkerj@weibo.com','976-474-5381','powlnerd@tripadvisor');
INSERT INTO `Layman Patients` VALUES ('tsimenel83','1Jlzm5GEy','Tawsha','Simenel','1933-05-27','tsimenel83@yelp.com','183-299-7546','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('tstolli40','aLBNDk5RA','Trent','Stolli','2009-11-28','tstolli40@cam.ac.uk','806-812-1095','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('tstuckleykj','KQKlFW4o','Timothee','Stuckley','1978-06-27','tstuckleykj@unesco.o','801-644-5302','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('twasteney4t','riZGebhKMzci','Terence','Wasteney','1979-10-05','twasteney4t@soundclo','459-748-0303','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('udunthornenu','IuQ8sT','Ulrika','Dunthorne','1989-03-08','udunthornenu@cargoco','561-136-5940','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('udurransaf','fv9OInT','Ulla','Durrans','1990-09-01','udurransaf@nifty.com','981-340-4798','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('umarczykpo','r1L5b3EubHl','Umberto','Marczyk','2015-12-25','umarczykpo@webs.com','761-218-9360','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('valeksidzedt','3KYPz1rqVbW','Vasili','Aleksidze','2006-05-04','valeksidzedt@storify','335-526-7096','kvinaz@discuz.net');
INSERT INTO `Layman Patients` VALUES ('vazamkh','rqVaSea','Vivyanne','Azam','1971-03-20','vazamkh@nature.com','568-450-1628','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('vbezarrah','KVdCZwVmo','Venus','Bezarra','1988-06-17','vbezarrah@com.com','406-547-5298','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('vbritnernj','Xmt5j1K9','Viola','Britner','1986-02-22','vbritnernj@odnoklass','415-176-6158','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('vbydaway5s','vTAseB0AN','Vlad','Bydaway','2002-12-25','vbydaway5s@sourcefor','817-936-6395','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('vcohnnx','y3OST0FQHEhQ','Vally','Cohn','1964-04-30','vcohnnx@studiopress.','422-974-9829','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('vcrut2d','2yndOEc','Vida','Crut','2001-04-26','vcrut2d@symantec.com','984-371-2638','sgurnay1@state.gov');
INSERT INTO `Layman Patients` VALUES ('vculpen8r','cXFGM4QhjM','Viviene','Culpen','2000-05-30','vculpen8r@typepad.co','755-918-9342','dgrier11@indiegogo.c');
INSERT INTO `Layman Patients` VALUES ('vdelasalle27','k9Zai2NNAW','Vikky','De La Salle','1958-01-21','vdelasalle27@busines','330-972-6974','kcouser16@linkedin.c');
INSERT INTO `Layman Patients` VALUES ('vdering3w','sWWTmHcD','Vere','Dering','1993-05-05','vdering3w@toplist.cz','452-459-9031','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('vhowland9f','yQ3Nr1viiPG','Vicky','Howland','1956-08-30','vhowland9f@amazonaws','343-793-6626','tarchibald15@usatoda');
INSERT INTO `Layman Patients` VALUES ('vingarfieldcv','CC8g5t5xz0ue','Vivien','Ingarfield','1974-03-27','vingarfieldcv@delici','629-939-9261','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('vmanterfieldq7','iCUD9ahn','Vania','Manterfield','1928-05-01','vmanterfieldq7@prlog','243-993-4921','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('vmcateerib','P78bzv','Velma','McAteer','1992-06-23','vmcateerib@rediff.co','362-734-2535','tsympson1b@plala.or.');
INSERT INTO `Layman Patients` VALUES ('vnooneij','RHvNevLMHTZy','Vanny','Noone','1944-01-20','vnooneij@google.co.u','543-873-4514','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('vpladen3n','3WZJJrZvx','Valina','Pladen','2018-02-06','vpladen3n@sohu.com','697-802-2937','lhewkint@twitpic.com');
INSERT INTO `Layman Patients` VALUES ('vquinbyn0','649pWr1J2','Vivien','Quinby','1949-08-20','vquinbyn0@house.gov','631-721-5765','wclarko@bandcamp.com');
INSERT INTO `Layman Patients` VALUES ('vshewringhs','2ftuVxS','Vinny','Shewring','1977-04-01','vshewringhs@gravatar','387-831-2208','acovillm@ning.com');
INSERT INTO `Layman Patients` VALUES ('vstollwerkja','UDGL6YuGbPE','Vittoria','Stollwerk','1937-04-11','vstollwerkja@canalbl','278-766-0950','tbeacham5@csmonitor.');
INSERT INTO `Layman Patients` VALUES ('vsulteral','fTpa0rm8zl','Valida','Sulter','2012-04-25','vsulteral@wikia.com','652-147-6241','jbrounel@bloglines.c');
INSERT INTO `Layman Patients` VALUES ('vtithecote2g','cDFO0Le7fSzy','Viviyan','Tithecote','1953-06-23','vtithecote2g@163.com','540-588-9782','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('vworrillnm','xJMZYUf7rfLg','Vaclav','Worrill','1962-12-11','vworrillnm@wundergro','982-911-7368','nescalantei@php.net');
INSERT INTO `Layman Patients` VALUES ('wannies6n','VGwzyo7K','Whitney','Annies','2019-08-27','wannies6n@facebook.c','610-402-5736','ibalderstone9@devian');
INSERT INTO `Layman Patients` VALUES ('wbirchenheadfc','XS8ZQLXjXEz','Wayne','Birchenhead','1955-02-04','wbirchenheadfc@corne','799-218-5440','ethaller17@creativec');
INSERT INTO `Layman Patients` VALUES ('wbowserhl','RBVGh6k2uc','Windham','Bowser','1984-10-10','wbowserhl@fema.gov','697-203-2135','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('wbracherat','KCYkp8vBTt','Wallache','Bracher','1959-03-28','wbracherat@loc.gov','109-736-4621','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('wcahillqz','Lqae3J','Wilfred','Cahill','1989-11-07','wcahillqz@yelp.com','425-685-0662','eriddockn@salon.com');
INSERT INTO `Layman Patients` VALUES ('webbensdd','w3g3X7u19','Wanda','Ebbens','2010-04-30','webbensdd@bandcamp.c','247-612-8957','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('wfosdickdn','WQGVwcsoMmtV','Willow','Fosdick','1928-09-18','wfosdickdn@baidu.com','724-985-6140','adilkesq@narod.ru');
INSERT INTO `Layman Patients` VALUES ('wgierekjh','In6ltc86oM','Whittaker','Gierek','1933-12-20','wgierekjh@google.ca','428-558-6993','koldroydx@multiply.c');
INSERT INTO `Layman Patients` VALUES ('wglen9z','g4P6szs','Wyatan','Glen','1998-12-02','wglen9z@eventbrite.c','883-980-2509','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('whartnupfe','XL9TLF6J','Wendie','Hartnup','2022-06-09','whartnupfe@google.co','509-645-0797','hbarkess10@photobuck');
INSERT INTO `Layman Patients` VALUES ('whowbrook6l','RlT96kvm','Worden','Howbrook','1948-01-28','whowbrook6l@princeto','853-306-9904','mgerardetp@liveinter');
INSERT INTO `Layman Patients` VALUES ('wkalinovichf0','YntoF3','Willow','Kalinovich','1930-02-14','wkalinovichf0@instag','442-304-4977','gpoland1c@infoseek.c');
INSERT INTO `Layman Patients` VALUES ('wkeford9b','ZyXa79D8','Walther','Keford','1959-04-18','wkeford9b@google.it','602-467-5065','rpickance0@cyberchim');
INSERT INTO `Layman Patients` VALUES ('wkippin9r','tM5wra','Woodrow','Kippin','2003-01-05','wkippin9r@list-manag','314-231-2533','vborrow12@blog.com');
INSERT INTO `Layman Patients` VALUES ('wmacmeartyd4','tZ8ChPol','Winn','MacMearty','1946-10-18','wmacmeartyd4@va.gov','919-986-4901','sacasterf@amazon.de');
INSERT INTO `Layman Patients` VALUES ('wnell6i','vW8NaLY8CMbn','Wernher','Nell','1971-07-18','wnell6i@123-reg.co.u','452-306-5343','dnulty1d@jugem.jp');
INSERT INTO `Layman Patients` VALUES ('wprantl5o','3zwtOGdmB','Wayne','Prantl','1934-04-26','wprantl5o@cdc.gov','148-993-2107','tgalletleyu@google.f');
INSERT INTO `Layman Patients` VALUES ('wscoggins35','CHFiOOB','Wright','Scoggins','2000-01-12','wscoggins35@msn.com','118-610-2436','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('wwalentaph','5jhmMs6s7S','Wang','Walenta','1996-10-29','wwalentaph@smh.com.a','150-954-4049','botyv@instagram.com');
INSERT INTO `Layman Patients` VALUES ('wwhitloe75','qvg8qJy9i4r','Wendy','Whitloe','1966-03-18','wwhitloe75@biglobe.n','845-815-2620','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('wwhodcoata6','HVIJqoDdn6','Wendy','Whodcoat','2023-03-27','wwhodcoata6@cocolog-','623-439-0605','clivingstonk@elpais.');
INSERT INTO `Layman Patients` VALUES ('xjobeypa','to6ZJuuW1pa','Xavier','Jobey','1926-01-29','xjobeypa@jugem.jp','873-669-6049','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('xtitterell8i','N1t42R','Xylia','Titterell','1983-10-24','xtitterell8i@senate.','602-118-4082','kriba7@bluehost.com');
INSERT INTO `Layman Patients` VALUES ('ymcilroy6h','Wg7njA','Yorgos','McIlroy','1941-06-13','ymcilroy6h@ocn.ne.jp','245-768-9537','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('ypellew9l','OGQAyGI825K','Yvonne','Pellew','1935-12-12','ypellew9l@google.com','407-583-1432','gtallenty@apple.com');
INSERT INTO `Layman Patients` VALUES ('zburethc','QMF9eWU79','Zachery','Buret','1931-02-05','zburethc@wikimedia.o','584-986-2896','fortigag@360.cn');
INSERT INTO `Layman Patients` VALUES ('zcowle1h','Ef2k6MqmerHZ','Zea','Cowle','1945-01-23','zcowle1h@google.es','365-554-9813','jtett4@mediafire.com');
INSERT INTO `Layman Patients` VALUES ('zernshawbt','yS67cSeImVzg','Zelma','Ernshaw','1948-10-14','zernshawbt@qq.com','892-205-4386','aabramzon19@feedburn');
INSERT INTO `Layman Patients` VALUES ('zhanshaw2b','QBDkF38ZG','Zulema','Hanshaw','1954-09-01','zhanshaw2b@dailymail','278-342-6337','vgyrgorwicxj@whiteho');
INSERT INTO `Layman Patients` VALUES ('zkingcote5q','EMeZfuJW','Zabrina','Kingcote','1991-05-24','zkingcote5q@webnode.','141-794-9418','bnardic@stumbleupon.');
INSERT INTO `Layman Patients` VALUES ('zpauliax','Cij5Uw','Zackariah','Pauli','2002-12-09','zpauliax@whitehouse.','569-307-1336','mromaninih@uiuc.edu');
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
INSERT INTO `Medications` VALUES ('Acetaminophen','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `Medications` VALUES ('Aluminum Chlorohydrate','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `Medications` VALUES ('Aluminum Zirconium Octachlorohydrex Gly','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `Medications` VALUES ('Amitriptyline Hydrochloride','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `Medications` VALUES ('Avobenzone, Homosalate, Octisalate, Octocrylene, a','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `Medications` VALUES ('avobenzone, homosalate, octisalate, octocrylene, o','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `Medications` VALUES ('Avobenzone, Octinoxate, Octisalate, and Oxybenzone','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `Medications` VALUES ('BENZALKONIUM CHLORIDE','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
INSERT INTO `Medications` VALUES ('Benzoyl Peroxide','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
INSERT INTO `Medications` VALUES ('CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `Medications` VALUES ('Carvedilol','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `Medications` VALUES ('Ciclopirox Olamine','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `Medications` VALUES ('Diphenhydramine HCl, Zinc Acetate','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `Medications` VALUES ('Eastern Cottonwood Common','Sed ante. Vivamus tortor. Duis mattis egestas metus.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `Medications` VALUES ('Enalapril Maleate','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `Medications` VALUES ('Esmolol Hydrochloride','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `Medications` VALUES ('Gentamicin Sulfate','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `Medications` VALUES ('Gentian Violet 2%','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `Medications` VALUES ('GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `Medications` VALUES ('Hydrocodone Bitartrate and Acetaminophen','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `Medications` VALUES ('HYDROCORTISONE','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `Medications` VALUES ('Ibuprofen','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `Medications` VALUES ('indomethacin','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `Medications` VALUES ('Isosorbide Dinitrate','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `Medications` VALUES ('Lactulose','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `Medications` VALUES ('lansoprazole','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
INSERT INTO `Medications` VALUES ('Meloxicam','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `Medications` VALUES ('Menthol','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `Medications` VALUES ('Metronidazole','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `Medications` VALUES ('Mirtazapine','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `Medications` VALUES ('Nafcillin','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `Medications` VALUES ('olanzapine and fuoxetine','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `Medications` VALUES ('Oxacillin Sodium','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `Medications` VALUES ('Oxaliplatin','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `Medications` VALUES ('Oxycodone','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `Medications` VALUES ('Oxymorphone hydrochloride','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `Medications` VALUES ('Permethrin','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `Medications` VALUES ('Petroleum','In congue. Etiam justo. Etiam pretium iaculis justo.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `Medications` VALUES ('Pigweed Rough Redroot','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `Medications` VALUES ('Potassium Chloride','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `Medications` VALUES ('PRAVASTATIN SODIUM','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `Medications` VALUES ('Ranitidine Hydrochloride','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `Medications` VALUES ('risperidone','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `Medications` VALUES ('Russian Thistle','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `Medications` VALUES ('Sodium Chloride','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `Medications` VALUES ('SODIUM FLUORIDE','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `Medications` VALUES ('TITANIUM DIOXIDE','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `Medications` VALUES ('topiramate','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `Medications` VALUES ('Zinc oxide and titanium dioxide','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `Medications` VALUES ('Zolpidem tartrate','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
/*!40000 ALTER TABLE `Medications` ENABLE KEYS */;

--
-- Table structure for table `Pharmacists`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pharmacists` (
  `PharmEmail` varchar(20) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `CUsername` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `ClinicName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PharmEmail`),
  KEY `ClinicName` (`ClinicName`),
  CONSTRAINT `Pharmacists_ibfk_1` FOREIGN KEY (`ClinicName`) REFERENCES `Clinic` (`ClinicName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pharmacists`
--

/*!40000 ALTER TABLE `Pharmacists` DISABLE KEYS */;
INSERT INTO `Pharmacists` VALUES ('aabramzon19@feedburn','Ardath','Abramzon','aabramzon19','7DHT8iXM','Roodel');
INSERT INTO `Pharmacists` VALUES ('acovillm@ning.com','Aksel','Covill','acovillm','7mXNnK','Lajo');
INSERT INTO `Pharmacists` VALUES ('adilkesq@narod.ru','Abel','Dilkes','adilkesq','KlrYnsAj','Browsezoom');
INSERT INTO `Pharmacists` VALUES ('atorrent13@woothemes','Asher','Torrent','atorrent13','s6e0nG','Yata');
INSERT INTO `Pharmacists` VALUES ('bnardic@stumbleupon.','Briana','Nardi','bnardic','co5zTcULBn5','Geba');
INSERT INTO `Pharmacists` VALUES ('botyv@instagram.com','Brnaby','Oty','botyv','rszERNcm4cp4','Twitterbridge');
INSERT INTO `Pharmacists` VALUES ('clivingstonk@elpais.','Catharina','Livingston','clivingstonk','OfXLhMD7i','Cogilith');
INSERT INTO `Pharmacists` VALUES ('dgrier11@indiegogo.c','Dorita','Grier','dgrier11','KufLQN','Trilia');
INSERT INTO `Pharmacists` VALUES ('dnulty1d@jugem.jp','Des','Nulty','dnulty1d','QHtFJFMi','Agimba');
INSERT INTO `Pharmacists` VALUES ('eriddockn@salon.com','Ethelda','Riddock','eriddockn','EfWCOg','Twitterlist');
INSERT INTO `Pharmacists` VALUES ('ethaller17@creativec','Eddi','Thaller','ethaller17','xYPtYa3d2ngc','Riffwire');
INSERT INTO `Pharmacists` VALUES ('fgeikies@engadget.co','Farly','Geikie','fgeikies','M3JQlkD','Pixonyx');
INSERT INTO `Pharmacists` VALUES ('fortigag@360.cn','Faythe','Ortiga','fortigag','0muWmTvZiiTT','DabZ');
INSERT INTO `Pharmacists` VALUES ('fwoolnoughr@state.go','Francine','Woolnough','fwoolnoughr','x4wpIZ9','Edgepulse');
INSERT INTO `Pharmacists` VALUES ('gpoland1c@infoseek.c','Glyn','Poland','gpoland1c','LpdRKjkXk18T','Gigazoom');
INSERT INTO `Pharmacists` VALUES ('gtallenty@apple.com','Gannon','Tallent','gtallenty','EsKtWiGLxmC','DabZ');
INSERT INTO `Pharmacists` VALUES ('hbarkess10@photobuck','Hayden','Barkess','hbarkess10','kKW51NG','Yakitri');
INSERT INTO `Pharmacists` VALUES ('ibalderstone9@devian','Indira','Balderstone','ibalderstone9','vHs4Y2','Riffwire');
INSERT INTO `Pharmacists` VALUES ('jbrounel@bloglines.c','Jedidiah','Broune','jbrounel','DPUgw3RbDqcB','Agimba');
INSERT INTO `Pharmacists` VALUES ('jcurnnok8@skyrock.co','Janeta','Curnnok','jcurnnok8','K8bCYjbhQO','Thoughtblab');
INSERT INTO `Pharmacists` VALUES ('jhaffard3@wufoo.com','Judye','Haffard','jhaffard3','KWzVnb','Riffwire');
INSERT INTO `Pharmacists` VALUES ('jjewks18@economist.c','Janet','Jewks','jjewks18','rKtOy9ISqP','Browsezoom');
INSERT INTO `Pharmacists` VALUES ('jtett4@mediafire.com','Jarrid','Tett','jtett4','JvEM4RU7lCCA','Yakitri');
INSERT INTO `Pharmacists` VALUES ('kcouser16@linkedin.c','Kit','Couser','kcouser16','0aieRfm','Fanoodle');
INSERT INTO `Pharmacists` VALUES ('koldroydx@multiply.c','Karoly','Oldroyd','koldroydx','zHNjUzllys','Roodel');
INSERT INTO `Pharmacists` VALUES ('kpfeifferw@epa.gov','Karim','Pfeiffer','kpfeifferw','1dmlGq','Topicblab');
INSERT INTO `Pharmacists` VALUES ('kriba7@bluehost.com','Kori','Riba','kriba7','jDVlq4KoFwL','Linklinks');
INSERT INTO `Pharmacists` VALUES ('kvinaz@discuz.net','Karl','Vina','kvinaz','sbVQDVVY','Twitterbridge');
INSERT INTO `Pharmacists` VALUES ('ldeek1a@slate.com','Loraine','Deek','ldeek1a','0jwJ2sb9r','Pixonyx');
INSERT INTO `Pharmacists` VALUES ('lhewkint@twitpic.com','Leshia','Hewkin','lhewkint','2bGBtYdWAdh','Yakitri');
INSERT INTO `Pharmacists` VALUES ('lmaitland2@google.ru','Laney','Maitland','lmaitland2','aAjW1Y','Yakitri');
INSERT INTO `Pharmacists` VALUES ('mgerardetp@liveinter','Monah','Gerardet','mgerardetp','COMSkMTomy','Lajo');
INSERT INTO `Pharmacists` VALUES ('mromaninih@uiuc.edu','Madelaine','Romanini','mromaninih','miChA1PikSDs','Gigazoom');
INSERT INTO `Pharmacists` VALUES ('ndunnet14@vkontakte.','Noland','Dunnet','ndunnet14','lQeZGJOIb','Dabtype');
INSERT INTO `Pharmacists` VALUES ('nescalantei@php.net','Nicola','Escalante','nescalantei','abPifQbL3','Edgewire');
INSERT INTO `Pharmacists` VALUES ('pmaccourt6@europa.eu','Poul','MacCourt','pmaccourt6','4olHZ3xeSiF','Fanoodle');
INSERT INTO `Pharmacists` VALUES ('pmacfallb@senate.gov','Panchito','MacFall','pmacfallb','7cNfD6OY','Ailane');
INSERT INTO `Pharmacists` VALUES ('powlnerd@tripadvisor','Peadar','Owlner','powlnerd','JJyLxvDw7wW','DabZ');
INSERT INTO `Pharmacists` VALUES ('rpickance0@cyberchim','Riley','Pickance','rpickance0','I0iaSDpiq','Cogilith');
INSERT INTO `Pharmacists` VALUES ('sacasterf@amazon.de','Sheri','Acaster','sacasterf','DgkYiCYgB4Nj','Myworks');
INSERT INTO `Pharmacists` VALUES ('scavozzie@princeton.','Svend','Cavozzi','scavozzie','9Ddov3','Edgewire');
INSERT INTO `Pharmacists` VALUES ('sgurnay1@state.gov','Sheela','Gurnay','sgurnay1','0Jpg6R','Roodel');
INSERT INTO `Pharmacists` VALUES ('shofnera@spotify.com','Sileas','Hofner','shofnera','3BErV1','Gigazoom');
INSERT INTO `Pharmacists` VALUES ('tarchibald15@usatoda','Terrel','Archibald','tarchibald15','8S4BJdDK2','Edgewire');
INSERT INTO `Pharmacists` VALUES ('tbeacham5@csmonitor.','Thorin','Beacham','tbeacham5','aWvNTDzMR','Quamba');
INSERT INTO `Pharmacists` VALUES ('tgalletleyu@google.f','Tom','Galletley','tgalletleyu','vFFos3sfj','Trilia');
INSERT INTO `Pharmacists` VALUES ('tsympson1b@plala.or.','Taryn','Sympson','tsympson1b','YWCh7EQF1HH','Divavu');
INSERT INTO `Pharmacists` VALUES ('vborrow12@blog.com','Vyky','Borrow','vborrow12','rec6gskCi0G','Topicblab');
INSERT INTO `Pharmacists` VALUES ('vgyrgorwicxj@whiteho','Virgie','Gyrgorwicx','vgyrgorwicxj','IesiBLXpW','Fanoodle');
INSERT INTO `Pharmacists` VALUES ('wclarko@bandcamp.com','Wittie','Clark','wclarko','0RJZuqfj','Yakitri');
/*!40000 ALTER TABLE `Pharmacists` ENABLE KEYS */;

--
-- Table structure for table `Pharmacy Students`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pharmacy Students` (
  `EdUsername` varchar(20) NOT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `SchoolName` varchar(50) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EdUsername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pharmacy Students`
--

/*!40000 ALTER TABLE `Pharmacy Students` DISABLE KEYS */;
INSERT INTO `Pharmacy Students` VALUES ('acage15','dCfLCIs','Greenfelder Inc','Alina','Cage');
INSERT INTO `Pharmacy Students` VALUES ('achinnockm','fBGksdjM','Fay, Nicolas and Zemlak','Abba','Chinnock');
INSERT INTO `Pharmacy Students` VALUES ('aclail1','vsGBrq','Reichel, Greenfelder and Keebler','Aggie','Clail');
INSERT INTO `Pharmacy Students` VALUES ('agreenes','MG3Wc6','Volkman, Dooley and Grimes','Abeu','Greene');
INSERT INTO `Pharmacy Students` VALUES ('akingscotey','YuBiqGW2','Ratke-Abernathy','Adamo','Kingscote');
INSERT INTO `Pharmacy Students` VALUES ('avischir','08mX9AEd2n','Schumm and Sons','Albie','Vischi');
INSERT INTO `Pharmacy Students` VALUES ('bsinkins17','dkZuT0DmVDX','Kirlin-Dooley','Birch','Sinkins');
INSERT INTO `Pharmacy Students` VALUES ('bverniu','dINQxwIbY','Schamberger-Dibbert','Broddy','Verni');
INSERT INTO `Pharmacy Students` VALUES ('camnerg','GXJglZ','Schinner and Sons','Cass','Amner');
INSERT INTO `Pharmacy Students` VALUES ('cbonsall1c','rqoqoedRgqAl','Schowalter-Trantow','Camilla','Bonsall');
INSERT INTO `Pharmacy Students` VALUES ('cdundendale19','YvObAKY','Boyle-Herzog','Culley','Dundendale');
INSERT INTO `Pharmacy Students` VALUES ('cfobidge16','xWNwGQ4My','Sporer-Kihn','Cordelie','Fobidge');
INSERT INTO `Pharmacy Students` VALUES ('cgorries11','5FKVVtU','Schultz-Pouros','Clemente','Gorries');
INSERT INTO `Pharmacy Students` VALUES ('cklimov10','rTheXG','Johns-Spinka','Carolyn','Klimov');
INSERT INTO `Pharmacy Students` VALUES ('cphizackerly6','Ok8VVz','Waelchi, Smitham and Crona','Crysta','Phizackerly');
INSERT INTO `Pharmacy Students` VALUES ('csebborn5','Gj9QFax9','Carter-Braun','Constantino','Sebborn');
INSERT INTO `Pharmacy Students` VALUES ('cverillo1d','Vns20D9h','Batz-Nitzsche','Carver','Verillo');
INSERT INTO `Pharmacy Students` VALUES ('dickovitz1a','ddD62GADR','Schulist, Langosh and Predovic','Delano','Ickovitz');
INSERT INTO `Pharmacy Students` VALUES ('dmaccallesterk','nVZ1SnCd','Pollich-Kuhlman','Daryl','MacCallester');
INSERT INTO `Pharmacy Students` VALUES ('edeminicoi','cuvuLfnX9','McKenzie, Schowalter and Botsford','Ethelin','De Minico');
INSERT INTO `Pharmacy Students` VALUES ('emacknishv','xTovSzwDad','Jast, Hahn and Roob','Emmett','Macknish');
INSERT INTO `Pharmacy Students` VALUES ('erennlesb','q687gQtCfvj','Ward, Stark and Cole','Elysia','Rennles');
INSERT INTO `Pharmacy Students` VALUES ('eruppertc','4Lba4h','Dooley-Kassulke','Ethe','Ruppert');
INSERT INTO `Pharmacy Students` VALUES ('friddochl','TiKKHUHcFWsq','Dooley and Sons','Fayina','Riddoch');
INSERT INTO `Pharmacy Students` VALUES ('ggarvie7','10CHe9kqdxt','Waelchi and Sons','Garth','Garvie');
INSERT INTO `Pharmacy Students` VALUES ('gkarpov12','kZD9D5U','Swift, Torp and Johns','Georgeanne','Karpov');
INSERT INTO `Pharmacy Students` VALUES ('hmckinty0','9GUa0xx3zl','Hermann and Sons','Hew','McKinty');
INSERT INTO `Pharmacy Students` VALUES ('iwoodrooffet','QJTSShaRpi','Borer Group','Irina','Woodrooffe');
INSERT INTO `Pharmacy Students` VALUES ('jdogerty9','53JAbst','Kilback-Gorczany','Joaquin','Dogerty');
INSERT INTO `Pharmacy Students` VALUES ('jmcgarrahan13','BXhD5DUr','Kshlerin-Kshlerin','Johanna','McGarrahan');
INSERT INTO `Pharmacy Students` VALUES ('jpedroni2','6rks2QCaWB','Kassulke, Davis and Kuhn','Jimmy','Pedroni');
INSERT INTO `Pharmacy Students` VALUES ('klamberto4','RatqxZxxo','O\'Conner Inc','Katha','Lamberto');
INSERT INTO `Pharmacy Students` VALUES ('kmartlandh','ZL1aQbdYur','Rolfson, Wilkinson and Robel','Katie','Martland');
INSERT INTO `Pharmacy Students` VALUES ('lborrettq','2IYkfNsAl','Wunsch-Morissette','Leone','Borrett');
INSERT INTO `Pharmacy Students` VALUES ('lneasamd','Ob0uU7','Smitham-Reilly','Leonid','Neasam');
INSERT INTO `Pharmacy Students` VALUES ('mbettenayj','DzOlsDwhAMLO','Kessler, Wisoky and Torp','Maxi','Bettenay');
INSERT INTO `Pharmacy Students` VALUES ('methelstonx','DUjIo2zZ8H','Greenfelder, Gorczany and Zieme','Maurita','Ethelston');
INSERT INTO `Pharmacy Students` VALUES ('mfearya','JnwVFqBPZPhx','Sawayn Inc','Magdalena','Feary');
INSERT INTO `Pharmacy Students` VALUES ('mpapaccioo','HXe34ue8w','Cruickshank-Gottlieb','Marisa','Papaccio');
INSERT INTO `Pharmacy Students` VALUES ('mwalshawe','G0ZOcdfzCHh','Murphy, Wilderman and Jaskolski','Merci','Walshaw');
INSERT INTO `Pharmacy Students` VALUES ('nboulderf','5JEvMucbXHw','Baumbach, Stark and Muller','Nikolas','Boulder');
INSERT INTO `Pharmacy Students` VALUES ('npace18','APs1gl','Stoltenberg-Schroeder','Neille','Pace');
INSERT INTO `Pharmacy Students` VALUES ('peasom1b','O66tk9WjBY','Mraz, Hintz and Wuckert','Persis','Easom');
INSERT INTO `Pharmacy Students` VALUES ('pmardeew','MkR4FE1k','Nader-Predovic','Putnam','Mardee');
INSERT INTO `Pharmacy Students` VALUES ('rcoon3','xIdD0R','Murphy-Rice','Robena','Coon');
INSERT INTO `Pharmacy Students` VALUES ('rgruszczak14','UYCr1VNPqnf2','Leannon, Schaden and Wiegand','Rock','Gruszczak');
INSERT INTO `Pharmacy Students` VALUES ('rroslingz','mHzOtdrfaQ','Kiehn-Will','Rozalie','Rosling');
INSERT INTO `Pharmacy Students` VALUES ('tcastanen','EfAXLrd','Reichel and Sons','Tabby','Castane');
INSERT INTO `Pharmacy Students` VALUES ('tcraske8','Y126WDnMXRg','Franecki and Sons','Tyrone','Craske');
INSERT INTO `Pharmacy Students` VALUES ('wkobierskip','djbPk2Ip','Schamberger, Wiegand and Gibson','Wash','Kobierski');
/*!40000 ALTER TABLE `Pharmacy Students` ENABLE KEYS */;

--
-- Table structure for table `med_DC`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `med_DC` (
  `MName` varchar(50) DEFAULT NULL,
  `DCName` varchar(50) DEFAULT NULL,
  KEY `MName` (`MName`),
  KEY `DCName` (`DCName`),
  CONSTRAINT `med_DC_ibfk_1` FOREIGN KEY (`MName`) REFERENCES `Medications` (`MName`),
  CONSTRAINT `med_DC_ibfk_2` FOREIGN KEY (`DCName`) REFERENCES `Drug Classes` (`DCName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `med_DC`
--

/*!40000 ALTER TABLE `med_DC` DISABLE KEYS */;
INSERT INTO `med_DC` VALUES ('Amitriptyline Hydrochloride','id');
INSERT INTO `med_DC` VALUES ('Amitriptyline Hydrochloride','cras');
INSERT INTO `med_DC` VALUES ('Isosorbide Dinitrate','ornare');
INSERT INTO `med_DC` VALUES ('Isosorbide Dinitrate','nulla integer');
INSERT INTO `med_DC` VALUES ('Amitriptyline Hydrochloride','lacinia');
INSERT INTO `med_DC` VALUES ('Isosorbide Dinitrate','pede venenatis');
INSERT INTO `med_DC` VALUES ('Isosorbide Dinitrate','ac');
INSERT INTO `med_DC` VALUES ('Ibuprofen','cras');
INSERT INTO `med_DC` VALUES ('Amitriptyline Hydrochloride','maecenas tincidunt');
INSERT INTO `med_DC` VALUES ('Isosorbide Dinitrate','sit');
INSERT INTO `med_DC` VALUES ('Ibuprofen','lorem vitae');
INSERT INTO `med_DC` VALUES ('Isosorbide Dinitrate','lacus at');
INSERT INTO `med_DC` VALUES ('Oxacillin Sodium','pede venenatis');
INSERT INTO `med_DC` VALUES ('Isosorbide Dinitrate','pede posuere');
INSERT INTO `med_DC` VALUES ('CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','enim sit');
INSERT INTO `med_DC` VALUES ('Zolpidem tartrate','mauris');
INSERT INTO `med_DC` VALUES ('Gentian Violet 2%','convallis duis');
INSERT INTO `med_DC` VALUES ('Potassium Chloride','eu interdum');
INSERT INTO `med_DC` VALUES ('Amitriptyline Hydrochloride','mauris vulputate');
INSERT INTO `med_DC` VALUES ('Pigweed Rough Redroot','eu');
INSERT INTO `med_DC` VALUES ('indomethacin','lacus at');
INSERT INTO `med_DC` VALUES ('CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','quam');
INSERT INTO `med_DC` VALUES ('Diphenhydramine HCl, Zinc Acetate','imperdiet');
INSERT INTO `med_DC` VALUES ('Meloxicam','eu');
INSERT INTO `med_DC` VALUES ('Mirtazapine','lectus');
INSERT INTO `med_DC` VALUES ('Oxycodone','nisl');
INSERT INTO `med_DC` VALUES ('olanzapine and fuoxetine','nulla integer');
INSERT INTO `med_DC` VALUES ('avobenzone, homosalate, octisalate, octocrylene, o','ac');
INSERT INTO `med_DC` VALUES ('lansoprazole','eu interdum');
INSERT INTO `med_DC` VALUES ('Menthol','est phasellus');
INSERT INTO `med_DC` VALUES ('Gentian Violet 2%','id');
INSERT INTO `med_DC` VALUES ('Oxycodone','ligula vehicula');
INSERT INTO `med_DC` VALUES ('Hydrocodone Bitartrate and Acetaminophen','mauris');
INSERT INTO `med_DC` VALUES ('Gentian Violet 2%','ac');
INSERT INTO `med_DC` VALUES ('Metronidazole','pede posuere');
INSERT INTO `med_DC` VALUES ('Diphenhydramine HCl, Zinc Acetate','eu interdum');
INSERT INTO `med_DC` VALUES ('Isosorbide Dinitrate','diam');
INSERT INTO `med_DC` VALUES ('Eastern Cottonwood Common','pede posuere');
INSERT INTO `med_DC` VALUES ('risperidone','tortor');
INSERT INTO `med_DC` VALUES ('Russian Thistle','nulla integer');
INSERT INTO `med_DC` VALUES ('Aluminum Chlorohydrate','pede');
INSERT INTO `med_DC` VALUES ('Mirtazapine','lorem vitae');
INSERT INTO `med_DC` VALUES ('Carvedilol','integer');
INSERT INTO `med_DC` VALUES ('Oxycodone','lacinia');
INSERT INTO `med_DC` VALUES ('Hydrocodone Bitartrate and Acetaminophen','convallis duis');
INSERT INTO `med_DC` VALUES ('olanzapine and fuoxetine','justo');
INSERT INTO `med_DC` VALUES ('Russian Thistle','est phasellus');
INSERT INTO `med_DC` VALUES ('Hydrocodone Bitartrate and Acetaminophen','lorem vitae');
INSERT INTO `med_DC` VALUES ('TITANIUM DIOXIDE','interdum');
INSERT INTO `med_DC` VALUES ('Oxaliplatin','ac');
INSERT INTO `med_DC` VALUES ('Eastern Cottonwood Common','lacinia');
INSERT INTO `med_DC` VALUES ('Zinc oxide and titanium dioxide','mauris');
INSERT INTO `med_DC` VALUES ('Amitriptyline Hydrochloride','mauris vulputate');
INSERT INTO `med_DC` VALUES ('TITANIUM DIOXIDE','pede venenatis');
INSERT INTO `med_DC` VALUES ('Avobenzone, Homosalate, Octisalate, Octocrylene, a','curae');
INSERT INTO `med_DC` VALUES ('Esmolol Hydrochloride','integer');
INSERT INTO `med_DC` VALUES ('Aluminum Chlorohydrate','pede');
INSERT INTO `med_DC` VALUES ('Meloxicam','ornare');
INSERT INTO `med_DC` VALUES ('Avobenzone, Octinoxate, Octisalate, and Oxybenzone','pede venenatis');
INSERT INTO `med_DC` VALUES ('Metronidazole','maecenas tincidunt');
INSERT INTO `med_DC` VALUES ('Zinc oxide and titanium dioxide','justo');
INSERT INTO `med_DC` VALUES ('Oxymorphone hydrochloride','quam');
INSERT INTO `med_DC` VALUES ('HYDROCORTISONE','at');
INSERT INTO `med_DC` VALUES ('Oxycodone','mauris');
INSERT INTO `med_DC` VALUES ('Permethrin','cras');
INSERT INTO `med_DC` VALUES ('Menthol','convallis');
INSERT INTO `med_DC` VALUES ('CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','pede venenatis');
INSERT INTO `med_DC` VALUES ('indomethacin','lectus');
INSERT INTO `med_DC` VALUES ('Gentamicin Sulfate','pede posuere');
INSERT INTO `med_DC` VALUES ('Mirtazapine','mauris');
INSERT INTO `med_DC` VALUES ('Esmolol Hydrochloride','convallis duis');
INSERT INTO `med_DC` VALUES ('lansoprazole','tortor');
INSERT INTO `med_DC` VALUES ('Oxymorphone hydrochloride','ultrices');
INSERT INTO `med_DC` VALUES ('Pigweed Rough Redroot','malesuada');
INSERT INTO `med_DC` VALUES ('Aluminum Zirconium Octachlorohydrex Gly','convallis');
INSERT INTO `med_DC` VALUES ('Avobenzone, Octinoxate, Octisalate, and Oxybenzone','justo');
INSERT INTO `med_DC` VALUES ('Carvedilol','enim sit');
INSERT INTO `med_DC` VALUES ('Potassium Chloride','ultrices');
INSERT INTO `med_DC` VALUES ('HYDROCORTISONE','tortor');
INSERT INTO `med_DC` VALUES ('PRAVASTATIN SODIUM','lorem vitae');
INSERT INTO `med_DC` VALUES ('Mirtazapine','enim sit');
INSERT INTO `med_DC` VALUES ('Avobenzone, Octinoxate, Octisalate, and Oxybenzone','quam');
INSERT INTO `med_DC` VALUES ('Eastern Cottonwood Common','neque');
INSERT INTO `med_DC` VALUES ('Esmolol Hydrochloride','lacus at');
INSERT INTO `med_DC` VALUES ('Oxaliplatin','at');
INSERT INTO `med_DC` VALUES ('Avobenzone, Homosalate, Octisalate, Octocrylene, a','maecenas tincidunt');
INSERT INTO `med_DC` VALUES ('Ciclopirox Olamine','imperdiet');
INSERT INTO `med_DC` VALUES ('Carvedilol','id');
INSERT INTO `med_DC` VALUES ('topiramate','ac');
INSERT INTO `med_DC` VALUES ('Oxaliplatin','nisl');
INSERT INTO `med_DC` VALUES ('Isosorbide Dinitrate','lacus at');
INSERT INTO `med_DC` VALUES ('Zinc oxide and titanium dioxide','sit');
INSERT INTO `med_DC` VALUES ('Gentamicin Sulfate','nulla integer');
INSERT INTO `med_DC` VALUES ('Petroleum','nisl');
INSERT INTO `med_DC` VALUES ('Gentian Violet 2%','curae');
INSERT INTO `med_DC` VALUES ('olanzapine and fuoxetine','lacus at');
INSERT INTO `med_DC` VALUES ('Oxycodone','pede posuere');
INSERT INTO `med_DC` VALUES ('Avobenzone, Octinoxate, Octisalate, and Oxybenzone','ornare');
INSERT INTO `med_DC` VALUES ('Acetaminophen','pede');
INSERT INTO `med_DC` VALUES ('Potassium Chloride','pede venenatis');
INSERT INTO `med_DC` VALUES ('Mirtazapine','imperdiet');
INSERT INTO `med_DC` VALUES ('Ibuprofen','neque');
INSERT INTO `med_DC` VALUES ('Ciclopirox Olamine','sit');
INSERT INTO `med_DC` VALUES ('GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','nulla integer');
INSERT INTO `med_DC` VALUES ('Zolpidem tartrate','pede venenatis');
INSERT INTO `med_DC` VALUES ('Petroleum','at');
INSERT INTO `med_DC` VALUES ('Avobenzone, Octinoxate, Octisalate, and Oxybenzone','est phasellus');
INSERT INTO `med_DC` VALUES ('Aluminum Chlorohydrate','ultricies eu');
INSERT INTO `med_DC` VALUES ('Oxaliplatin','eu');
INSERT INTO `med_DC` VALUES ('Sodium Chloride','est phasellus');
INSERT INTO `med_DC` VALUES ('PRAVASTATIN SODIUM','interdum');
INSERT INTO `med_DC` VALUES ('Eastern Cottonwood Common','pede');
/*!40000 ALTER TABLE `med_DC` ENABLE KEYS */;

--
-- Table structure for table `med_interactions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `med_interactions` (
  `MName1` varchar(50) DEFAULT NULL,
  `MName2` varchar(50) DEFAULT NULL,
  KEY `MName1` (`MName1`),
  KEY `MName2` (`MName2`),
  CONSTRAINT `med_interactions_ibfk_1` FOREIGN KEY (`MName1`) REFERENCES `Medications` (`MName`),
  CONSTRAINT `med_interactions_ibfk_2` FOREIGN KEY (`MName2`) REFERENCES `Medications` (`MName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `med_interactions`
--

/*!40000 ALTER TABLE `med_interactions` DISABLE KEYS */;
INSERT INTO `med_interactions` VALUES ('Amitriptyline Hydrochloride','Amitriptyline Hydrochloride');
INSERT INTO `med_interactions` VALUES ('Isosorbide Dinitrate','Isosorbide Dinitrate');
INSERT INTO `med_interactions` VALUES ('Ibuprofen','Ibuprofen');
INSERT INTO `med_interactions` VALUES ('Hydrocodone Bitartrate and Acetaminophen','Nafcillin');
INSERT INTO `med_interactions` VALUES ('Ranitidine Hydrochloride','Mirtazapine');
INSERT INTO `med_interactions` VALUES ('Amitriptyline Hydrochloride','Amitriptyline Hydrochloride');
INSERT INTO `med_interactions` VALUES ('avobenzone, homosalate, octisalate, octocrylene, o','SODIUM FLUORIDE');
INSERT INTO `med_interactions` VALUES ('Sodium Chloride','olanzapine and fuoxetine');
INSERT INTO `med_interactions` VALUES ('Meloxicam','Permethrin');
INSERT INTO `med_interactions` VALUES ('Gentamicin Sulfate','Pigweed Rough Redroot');
INSERT INTO `med_interactions` VALUES ('Oxycodone','Ciclopirox Olamine');
INSERT INTO `med_interactions` VALUES ('Ranitidine Hydrochloride','Potassium Chloride');
INSERT INTO `med_interactions` VALUES ('risperidone','Aluminum Chlorohydrate');
INSERT INTO `med_interactions` VALUES ('Menthol','Benzoyl Peroxide');
INSERT INTO `med_interactions` VALUES ('Metronidazole','Hydrocodone Bitartrate and Acetaminophen');
INSERT INTO `med_interactions` VALUES ('Esmolol Hydrochloride','GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI');
INSERT INTO `med_interactions` VALUES ('BENZALKONIUM CHLORIDE','Lactulose');
INSERT INTO `med_interactions` VALUES ('indomethacin','SODIUM FLUORIDE');
INSERT INTO `med_interactions` VALUES ('Gentamicin Sulfate','Potassium Chloride');
INSERT INTO `med_interactions` VALUES ('Zinc oxide and titanium dioxide','PRAVASTATIN SODIUM');
INSERT INTO `med_interactions` VALUES ('Aluminum Chlorohydrate','Russian Thistle');
INSERT INTO `med_interactions` VALUES ('Avobenzone, Homosalate, Octisalate, Octocrylene, a','Zinc oxide and titanium dioxide');
INSERT INTO `med_interactions` VALUES ('Hydrocodone Bitartrate and Acetaminophen','Esmolol Hydrochloride');
INSERT INTO `med_interactions` VALUES ('BENZALKONIUM CHLORIDE','GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI');
INSERT INTO `med_interactions` VALUES ('Gentian Violet 2%','olanzapine and fuoxetine');
INSERT INTO `med_interactions` VALUES ('Acetaminophen','Zinc oxide and titanium dioxide');
INSERT INTO `med_interactions` VALUES ('Hydrocodone Bitartrate and Acetaminophen','Mirtazapine');
INSERT INTO `med_interactions` VALUES ('Oxaliplatin','Aluminum Zirconium Octachlorohydrex Gly');
INSERT INTO `med_interactions` VALUES ('Ibuprofen','Hydrocodone Bitartrate and Acetaminophen');
INSERT INTO `med_interactions` VALUES ('Avobenzone, Homosalate, Octisalate, Octocrylene, a','Aluminum Zirconium Octachlorohydrex Gly');
INSERT INTO `med_interactions` VALUES ('CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','PRAVASTATIN SODIUM');
INSERT INTO `med_interactions` VALUES ('Oxacillin Sodium','Acetaminophen');
INSERT INTO `med_interactions` VALUES ('risperidone','CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ');
INSERT INTO `med_interactions` VALUES ('Oxycodone','Enalapril Maleate');
INSERT INTO `med_interactions` VALUES ('Sodium Chloride','Zinc oxide and titanium dioxide');
INSERT INTO `med_interactions` VALUES ('Nafcillin','Gentian Violet 2%');
INSERT INTO `med_interactions` VALUES ('Hydrocodone Bitartrate and Acetaminophen','topiramate');
INSERT INTO `med_interactions` VALUES ('topiramate','lansoprazole');
INSERT INTO `med_interactions` VALUES ('Eastern Cottonwood Common','Avobenzone, Octinoxate, Octisalate, and Oxybenzone');
INSERT INTO `med_interactions` VALUES ('indomethacin','Pigweed Rough Redroot');
INSERT INTO `med_interactions` VALUES ('Mirtazapine','Diphenhydramine HCl, Zinc Acetate');
INSERT INTO `med_interactions` VALUES ('olanzapine and fuoxetine','Gentian Violet 2%');
INSERT INTO `med_interactions` VALUES ('BENZALKONIUM CHLORIDE','Zolpidem tartrate');
INSERT INTO `med_interactions` VALUES ('Zolpidem tartrate','indomethacin');
INSERT INTO `med_interactions` VALUES ('Potassium Chloride','BENZALKONIUM CHLORIDE');
INSERT INTO `med_interactions` VALUES ('Ranitidine Hydrochloride','Permethrin');
INSERT INTO `med_interactions` VALUES ('TITANIUM DIOXIDE','SODIUM FLUORIDE');
INSERT INTO `med_interactions` VALUES ('Avobenzone, Octinoxate, Octisalate, and Oxybenzone','Hydrocodone Bitartrate and Acetaminophen');
INSERT INTO `med_interactions` VALUES ('Potassium Chloride','Metronidazole');
INSERT INTO `med_interactions` VALUES ('Ciclopirox Olamine','Oxaliplatin');
INSERT INTO `med_interactions` VALUES ('BENZALKONIUM CHLORIDE','Ibuprofen');
INSERT INTO `med_interactions` VALUES ('olanzapine and fuoxetine','Esmolol Hydrochloride');
INSERT INTO `med_interactions` VALUES ('lansoprazole','CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ');
INSERT INTO `med_interactions` VALUES ('PRAVASTATIN SODIUM','Oxycodone');
INSERT INTO `med_interactions` VALUES ('Ranitidine Hydrochloride','Esmolol Hydrochloride');
INSERT INTO `med_interactions` VALUES ('Gentamicin Sulfate','Gentian Violet 2%');
INSERT INTO `med_interactions` VALUES ('TITANIUM DIOXIDE','lansoprazole');
INSERT INTO `med_interactions` VALUES ('Lactulose','Ranitidine Hydrochloride');
INSERT INTO `med_interactions` VALUES ('Menthol','Ciclopirox Olamine');
INSERT INTO `med_interactions` VALUES ('HYDROCORTISONE','indomethacin');
INSERT INTO `med_interactions` VALUES ('Benzoyl Peroxide','Petroleum');
INSERT INTO `med_interactions` VALUES ('Avobenzone, Octinoxate, Octisalate, and Oxybenzone','Aluminum Chlorohydrate');
INSERT INTO `med_interactions` VALUES ('Hydrocodone Bitartrate and Acetaminophen','Amitriptyline Hydrochloride');
INSERT INTO `med_interactions` VALUES ('Zinc oxide and titanium dioxide','Mirtazapine');
INSERT INTO `med_interactions` VALUES ('Esmolol Hydrochloride','Menthol');
INSERT INTO `med_interactions` VALUES ('Oxacillin Sodium','Aluminum Chlorohydrate');
INSERT INTO `med_interactions` VALUES ('Metronidazole','Potassium Chloride');
INSERT INTO `med_interactions` VALUES ('PRAVASTATIN SODIUM','Acetaminophen');
INSERT INTO `med_interactions` VALUES ('Esmolol Hydrochloride','Enalapril Maleate');
INSERT INTO `med_interactions` VALUES ('Oxycodone','topiramate');
INSERT INTO `med_interactions` VALUES ('Hydrocodone Bitartrate and Acetaminophen','Esmolol Hydrochloride');
INSERT INTO `med_interactions` VALUES ('Ranitidine Hydrochloride','Aluminum Zirconium Octachlorohydrex Gly');
INSERT INTO `med_interactions` VALUES ('Mirtazapine','Permethrin');
INSERT INTO `med_interactions` VALUES ('Oxacillin Sodium','GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI');
INSERT INTO `med_interactions` VALUES ('Aluminum Zirconium Octachlorohydrex Gly','Lactulose');
INSERT INTO `med_interactions` VALUES ('Zinc oxide and titanium dioxide','CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ');
INSERT INTO `med_interactions` VALUES ('Gentamicin Sulfate','Gentian Violet 2%');
INSERT INTO `med_interactions` VALUES ('Russian Thistle','Menthol');
INSERT INTO `med_interactions` VALUES ('Mirtazapine','Zinc oxide and titanium dioxide');
INSERT INTO `med_interactions` VALUES ('Oxacillin Sodium','Carvedilol');
INSERT INTO `med_interactions` VALUES ('Diphenhydramine HCl, Zinc Acetate','CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ');
INSERT INTO `med_interactions` VALUES ('TITANIUM DIOXIDE','Oxymorphone hydrochloride');
INSERT INTO `med_interactions` VALUES ('Benzoyl Peroxide','olanzapine and fuoxetine');
INSERT INTO `med_interactions` VALUES ('risperidone','Eastern Cottonwood Common');
INSERT INTO `med_interactions` VALUES ('CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','Oxymorphone hydrochloride');
INSERT INTO `med_interactions` VALUES ('Aluminum Chlorohydrate','Sodium Chloride');
INSERT INTO `med_interactions` VALUES ('BENZALKONIUM CHLORIDE','olanzapine and fuoxetine');
INSERT INTO `med_interactions` VALUES ('topiramate','Gentian Violet 2%');
INSERT INTO `med_interactions` VALUES ('Meloxicam','avobenzone, homosalate, octisalate, octocrylene, o');
INSERT INTO `med_interactions` VALUES ('PRAVASTATIN SODIUM','Oxaliplatin');
INSERT INTO `med_interactions` VALUES ('Hydrocodone Bitartrate and Acetaminophen','Aluminum Chlorohydrate');
INSERT INTO `med_interactions` VALUES ('Avobenzone, Octinoxate, Octisalate, and Oxybenzone','Diphenhydramine HCl, Zinc Acetate');
INSERT INTO `med_interactions` VALUES ('Benzoyl Peroxide','Enalapril Maleate');
INSERT INTO `med_interactions` VALUES ('Ciclopirox Olamine','Meloxicam');
INSERT INTO `med_interactions` VALUES ('Pigweed Rough Redroot','Amitriptyline Hydrochloride');
INSERT INTO `med_interactions` VALUES ('Eastern Cottonwood Common','Nafcillin');
INSERT INTO `med_interactions` VALUES ('Petroleum','BENZALKONIUM CHLORIDE');
INSERT INTO `med_interactions` VALUES ('topiramate','Isosorbide Dinitrate');
INSERT INTO `med_interactions` VALUES ('Esmolol Hydrochloride','TITANIUM DIOXIDE');
INSERT INTO `med_interactions` VALUES ('Oxaliplatin','risperidone');
INSERT INTO `med_interactions` VALUES ('Ibuprofen','Avobenzone, Homosalate, Octisalate, Octocrylene, a');
INSERT INTO `med_interactions` VALUES ('risperidone','Avobenzone, Octinoxate, Octisalate, and Oxybenzone');
INSERT INTO `med_interactions` VALUES ('CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','Ibuprofen');
/*!40000 ALTER TABLE `med_interactions` ENABLE KEYS */;

--
-- Table structure for table `patient_med`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_med` (
  `PUsername` varchar(20) DEFAULT NULL,
  `MName` varchar(50) DEFAULT NULL,
  `Indication` text,
  KEY `PUsername` (`PUsername`),
  KEY `MName` (`MName`),
  CONSTRAINT `patient_med_ibfk_1` FOREIGN KEY (`PUsername`) REFERENCES `Layman Patients` (`PUsername`),
  CONSTRAINT `patient_med_ibfk_2` FOREIGN KEY (`MName`) REFERENCES `Medications` (`MName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_med`
--

/*!40000 ALTER TABLE `patient_med` DISABLE KEYS */;
INSERT INTO `patient_med` VALUES ('dbirminghamcq','Pigweed Rough Redroot','Segmental fracture of shaft of radius');
INSERT INTO `patient_med` VALUES ('bclunanpg','Aluminum Chlorohydrate','Oth injury of right internal jugular vein, sequela');
INSERT INTO `patient_med` VALUES ('vquinbyn0','Zolpidem tartrate','Lac w fb of unsp front wall of thrx w/o penet thor cav, sqla');
INSERT INTO `patient_med` VALUES ('tbeacroftdj','lansoprazole','Poisoning by alpha-adrenoreceptor antagonists, assault, subs');
INSERT INTO `patient_med` VALUES ('lcordon29','CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','Other intervertebral disc displacement, thoracic region');
INSERT INTO `patient_med` VALUES ('pfarnon94','Permethrin','Oth disp fx of first cervical vertebra, init for clos fx');
INSERT INTO `patient_med` VALUES ('hpetre1w','topiramate','Complete lesion at C8 level of cervical spinal cord, subs');
INSERT INTO `patient_med` VALUES ('vpladen3n','Nafcillin','Tuberculosis of other female genital organs');
INSERT INTO `patient_med` VALUES ('bmapledoorehi','HYDROCORTISONE','Oth traumatic displ spondylolysis of fifth cervcal vertebra');
INSERT INTO `patient_med` VALUES ('bdiggernt','Benzoyl Peroxide','Myositis ossificans traumatica, left shoulder');
INSERT INTO `patient_med` VALUES ('lsindall17','Menthol','Burn of first degree of right shoulder, subsequent encounter');
INSERT INTO `patient_med` VALUES ('fkoppeck14','Gentian Violet 2%','Maternal care for damage to fetus by radiation, oth');
INSERT INTO `patient_med` VALUES ('kallwelloj','Ciclopirox Olamine','External constriction of nose, initial encounter');
INSERT INTO `patient_med` VALUES ('rshovlarhq','Pigweed Rough Redroot','Unspecified reduction defect of right lower limb');
INSERT INTO `patient_med` VALUES ('cluckmane4','Isosorbide Dinitrate','Encounter for palliative care');
INSERT INTO `patient_med` VALUES ('amompessonir','risperidone','Displaced comminuted fx shaft of ulna, right arm, init');
INSERT INTO `patient_med` VALUES ('lsindall17','CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','Late pregnancy');
INSERT INTO `patient_med` VALUES ('mskitteral8m','PRAVASTATIN SODIUM','Disruption of wound, unspecified, subsequent encounter');
INSERT INTO `patient_med` VALUES ('sswinburnejc','Pigweed Rough Redroot','Lesion of femoral nerve, left lower limb');
INSERT INTO `patient_med` VALUES ('lroffiu','Ibuprofen','Osteonecrosis due to previous trauma of left ulna');
INSERT INTO `patient_med` VALUES ('pgatward7i','Metronidazole','Sltr-haris Type III physl fx upper end rad, right arm, sqla');
INSERT INTO `patient_med` VALUES ('nharrison82','Avobenzone, Octinoxate, Octisalate, and Oxybenzone','Brawny scleritis, right eye');
INSERT INTO `patient_med` VALUES ('gmarvellmt','Zolpidem tartrate','Stable burst fracture of third lumbar vertebra, sequela');
INSERT INTO `patient_med` VALUES ('sgyera2','Nafcillin','Other juvenile arthritis, unspecified ankle and foot');
INSERT INTO `patient_med` VALUES ('aslograve5u','GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','Sltr-haris Type III physeal fx upper end of right tibia');
INSERT INTO `patient_med` VALUES ('tedish0','Isosorbide Dinitrate','Epidural hemorrhage w LOC of 1-5 hrs 59 min, init');
INSERT INTO `patient_med` VALUES ('nfairnko','Oxacillin Sodium','Agenesis of lung');
INSERT INTO `patient_med` VALUES ('awardallbu','Amitriptyline Hydrochloride','Oth fracture of unsp talus, subs for fx w malunion');
INSERT INTO `patient_med` VALUES ('cliebmann3q','Gentian Violet 2%','Inj unsp blood vessel at ank/ft level, left leg, subs');
INSERT INTO `patient_med` VALUES ('xjobeypa','Petroleum','Unsp fracture of right toe(s), init for clos fx');
INSERT INTO `patient_med` VALUES ('cpincked73','Russian Thistle','Fracture of one rib, right side');
INSERT INTO `patient_med` VALUES ('kklinkl4','Acetaminophen','Displaced fracture of medial phalanx of unspecified finger');
INSERT INTO `patient_med` VALUES ('mmyottfy','Permethrin','Laceration of anterior tibial artery, left leg, init encntr');
INSERT INTO `patient_med` VALUES ('fcrosettin2','Lactulose','Opioid use, unsp w intoxication with perceptual disturbance');
INSERT INTO `patient_med` VALUES ('ccarruthl3','Hydrocodone Bitartrate and Acetaminophen','Asphyxia');
INSERT INTO `patient_med` VALUES ('brothery9m','topiramate','Unsp inj blood vessels at ank/ft level, right leg, init');
INSERT INTO `patient_med` VALUES ('glawreygf','HYDROCORTISONE','Atrophic disorder of skin, unspecified');
INSERT INTO `patient_med` VALUES ('ctym6','BENZALKONIUM CHLORIDE','Occup of hv veh injured in clsn w statnry object in traf');
INSERT INTO `patient_med` VALUES ('cbertelmotpm','Metronidazole','Unsp fx shaft of l femr, subs for opn fx type I/2 w malunion');
INSERT INTO `patient_med` VALUES ('ashiers6p','Enalapril Maleate','Sltr-haris Type II physeal fx phalanx of left toe, sequela');
INSERT INTO `patient_med` VALUES ('tmiddlebrookng','Zolpidem tartrate','Tox eff of halgn deriv of aliphatic hydrocrb, slf-hrm, init');
INSERT INTO `patient_med` VALUES ('bshurvillei0','Oxaliplatin','Unsp subluxation of unspecified wrist and hand, init encntr');
INSERT INTO `patient_med` VALUES ('mcopingd7','Ranitidine Hydrochloride','Pregnancy related conditions, unsp, unspecified trimester');
INSERT INTO `patient_med` VALUES ('cfreeborngp','Nafcillin','Unspecified subluxation of left ring finger, subs encntr');
INSERT INTO `patient_med` VALUES ('pfibbenoo','Oxymorphone hydrochloride','Malignant neoplasm complicating childbirth');
INSERT INTO `patient_med` VALUES ('aciccicl','Oxycodone','Oth physeal fracture of lower end radius, left arm, sequela');
INSERT INTO `patient_med` VALUES ('djochenseq','GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','Opioid dependence with withdrawal');
INSERT INTO `patient_med` VALUES ('snickless8v','BENZALKONIUM CHLORIDE','Displaced dome fracture of left talus');
INSERT INTO `patient_med` VALUES ('bhelksqa','HYDROCORTISONE','Hemiplga following unsp cerebrovascular disease');
INSERT INTO `patient_med` VALUES ('jpiff6w','Mirtazapine','Food in larynx causing asphyxiation');
INSERT INTO `patient_med` VALUES ('nantill10','Russian Thistle','Displ seg fx shaft of l femr, 7thE');
INSERT INTO `patient_med` VALUES ('psaphir2p','Mirtazapine','Anaplastic large cell lymphoma, ALK-negative');
INSERT INTO `patient_med` VALUES ('sluchettiej','PRAVASTATIN SODIUM','Terrorism involving fire/hot subst, civilian injured, subs');
INSERT INTO `patient_med` VALUES ('mguerola3f','CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','Oth osteopor w crnt path fx, unsp humer, 7thD');
INSERT INTO `patient_med` VALUES ('zburethc','Permethrin','War operation w oth effects of nuclear weapons, milt, init');
INSERT INTO `patient_med` VALUES ('vnooneij','BENZALKONIUM CHLORIDE','Injury of axillary nerve, unspecified arm, subs encntr');
INSERT INTO `patient_med` VALUES ('wscoggins35','Pigweed Rough Redroot','Superficial foreign body, unspecified lower leg');
INSERT INTO `patient_med` VALUES ('gbarringer54','Oxycodone','Displ transverse fx l patella, 7thQ');
INSERT INTO `patient_med` VALUES ('qgolsbya3','Ibuprofen','Traum cerebral edema w LOC >24 hr w/o ret consc w surv, subs');
INSERT INTO `patient_med` VALUES ('jpenwellrl','Ranitidine Hydrochloride','Hemorrhagic choroidal detachment, right eye');
INSERT INTO `patient_med` VALUES ('eellams8s','topiramate','Acquired absence of other right toe(s)');
INSERT INTO `patient_med` VALUES ('lhannam6','Petroleum','Intermittent angle-closure glaucoma, unspecified eye');
INSERT INTO `patient_med` VALUES ('lkilshalldl','Oxycodone','Unequal limb length (acquired), unspecified ulna and radius');
INSERT INTO `patient_med` VALUES ('rguise4j','Hydrocodone Bitartrate and Acetaminophen','Minor laceration of unsp external jugular vein, subs encntr');
INSERT INTO `patient_med` VALUES ('fsharvellj4','PRAVASTATIN SODIUM','Underdosing of antacids and anti-gstrc-sec drugs, subs');
INSERT INTO `patient_med` VALUES ('rwarbeyaj','BENZALKONIUM CHLORIDE','Cortical age-related cataract, left eye');
INSERT INTO `patient_med` VALUES ('dyeelesi7','Ranitidine Hydrochloride','Poisoning by antiasthmatics, undetermined, sequela');
INSERT INTO `patient_med` VALUES ('vshewringhs','Aluminum Chlorohydrate','Other injury of colon');
INSERT INTO `patient_med` VALUES ('rsignea8','GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','Lac w/o fb of unsp bk wl of thorax w/o penet thor cav, subs');
INSERT INTO `patient_med` VALUES ('hgrushiniy','Benzoyl Peroxide','Unspecified focal traumatic brain injury');
INSERT INTO `patient_med` VALUES ('tsimenel83','Aluminum Chlorohydrate','Nondisp fx of dist phalanx of thmb, subs for fx w routn heal');
INSERT INTO `patient_med` VALUES ('jhallattbq','Lactulose','Unsp open wound of r bk wl of thorax w penet thoracic cavity');
INSERT INTO `patient_med` VALUES ('vmanterfieldq7','Oxaliplatin','Sprain of anterior cruciate ligament of left knee, subs');
INSERT INTO `patient_med` VALUES ('mbamboroughrh','CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','Subsequent STEMI of inferior wall');
INSERT INTO `patient_med` VALUES ('bbuckje','Diphenhydramine HCl, Zinc Acetate','Poisoning by methylphenidate, undetermined');
INSERT INTO `patient_med` VALUES ('klugard1o','Zolpidem tartrate','Fall due to clsn betw fish boat and oth wtrcrft/obj, sequela');
INSERT INTO `patient_med` VALUES ('shusthwaitecc','Metronidazole','Fibrosis due to internal orthopedic prosth dev/grft, init');
INSERT INTO `patient_med` VALUES ('jpettmanl0','Lactulose','Burn of first degree of back of left hand, initial encounter');
INSERT INTO `patient_med` VALUES ('fdevonsn6','Carvedilol','Displaced subtrochnt fx r femur, subs for clos fx w nonunion');
INSERT INTO `patient_med` VALUES ('ijosefs3g','CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','Testicular hyperfunction');
INSERT INTO `patient_med` VALUES ('fpieleqw','Pigweed Rough Redroot','Contus/lac left cerebrum w LOC >24 hr w/o ret consc w surv');
INSERT INTO `patient_med` VALUES ('nnaultylt','Diphenhydramine HCl, Zinc Acetate','Underdosing of predom alpha-adrenocpt agonists, sequela');
INSERT INTO `patient_med` VALUES ('sbyattar','Aluminum Zirconium Octachlorohydrex Gly','Legal intervnt w manhandling, suspect injured, sequela');
INSERT INTO `patient_med` VALUES ('nkraftjg','Avobenzone, Octinoxate, Octisalate, and Oxybenzone','Osteonecrosis due to drugs, left shoulder');
INSERT INTO `patient_med` VALUES ('gnairni3','PRAVASTATIN SODIUM','Lacerat msl/tnd lng flxr msl toe at ank/ft lev, r foot, subs');
INSERT INTO `patient_med` VALUES ('bfaganl9','BENZALKONIUM CHLORIDE','Prph T-cell lymph, not class, nodes of ing rgn and low limb');
INSERT INTO `patient_med` VALUES ('gdallid3','lansoprazole','Sprain of lateral collateral ligament of unsp knee, sequela');
INSERT INTO `patient_med` VALUES ('kbrunetticx','Mirtazapine','Unsp nondisp fx of seventh cervical vertebra, init');
INSERT INTO `patient_med` VALUES ('vingarfieldcv','SODIUM FLUORIDE','Tonic pupil, unspecified eye');
INSERT INTO `patient_med` VALUES ('canglissv','indomethacin','Oth rheumatoid arthritis with rheumatoid factor of unsp hand');
INSERT INTO `patient_med` VALUES ('cjanesoc','avobenzone, homosalate, octisalate, octocrylene, o','Disp fx of medial phalanx of right index finger, sequela');
INSERT INTO `patient_med` VALUES ('cskurmev','Lactulose','Other malformation of placenta, unspecified trimester');
INSERT INTO `patient_med` VALUES ('adezamora8o','HYDROCORTISONE','Lesion of sciatic nerve, bilateral lower limbs');
INSERT INTO `patient_med` VALUES ('tsimenel83','Enalapril Maleate','Inj msl/tnd lng flexor muscle of toe at ank/ft level, l foot');
INSERT INTO `patient_med` VALUES ('adumper48','Amitriptyline Hydrochloride','Abrasion, unspecified hip');
INSERT INTO `patient_med` VALUES ('lbehr5w','Avobenzone, Octinoxate, Octisalate, and Oxybenzone','Toxic effect of aflatoxin, undetermined, initial encounter');
INSERT INTO `patient_med` VALUES ('ndivver6v','Ibuprofen','Traum rupture of ligament of l little finger at MCP/IP jt');
INSERT INTO `patient_med` VALUES ('jcreightong1','GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','Laceration of lung, unspecified, subsequent encounter');
INSERT INTO `patient_med` VALUES ('bsturgeskp','Metronidazole','Second degree hemorrhoids');
INSERT INTO `patient_med` VALUES ('mcopingd7','Russian Thistle','Person outsd pk-up/van inj pick-up truck, pk-up/van in traf');
/*!40000 ALTER TABLE `patient_med` ENABLE KEYS */;

--
-- Table structure for table `samp_prob`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `samp_prob` (
  `MName` varchar(50) DEFAULT NULL,
  `SampProb` mediumtext,
  KEY `MName` (`MName`),
  CONSTRAINT `samp_prob_ibfk_1` FOREIGN KEY (`MName`) REFERENCES `Medications` (`MName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samp_prob`
--

/*!40000 ALTER TABLE `samp_prob` DISABLE KEYS */;
INSERT INTO `samp_prob` VALUES ('Enalapril Maleate','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `samp_prob` VALUES ('Esmolol Hydrochloride','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `samp_prob` VALUES ('HYDROCORTISONE','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `samp_prob` VALUES ('topiramate','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `samp_prob` VALUES ('Oxycodone','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `samp_prob` VALUES ('Gentian Violet 2%','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
INSERT INTO `samp_prob` VALUES ('SODIUM FLUORIDE','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `samp_prob` VALUES ('Meloxicam','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `samp_prob` VALUES ('Oxymorphone hydrochloride','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `samp_prob` VALUES ('SODIUM FLUORIDE','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `samp_prob` VALUES ('BENZALKONIUM CHLORIDE','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `samp_prob` VALUES ('Aluminum Chlorohydrate','In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `samp_prob` VALUES ('Aluminum Chlorohydrate','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `samp_prob` VALUES ('Gentian Violet 2%','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `samp_prob` VALUES ('lansoprazole','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `samp_prob` VALUES ('indomethacin','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `samp_prob` VALUES ('Ibuprofen','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `samp_prob` VALUES ('Ciclopirox Olamine','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `samp_prob` VALUES ('indomethacin','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `samp_prob` VALUES ('Acetaminophen','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `samp_prob` VALUES ('Permethrin','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `samp_prob` VALUES ('Oxycodone','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `samp_prob` VALUES ('BENZALKONIUM CHLORIDE','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `samp_prob` VALUES ('Aluminum Chlorohydrate','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `samp_prob` VALUES ('Ciclopirox Olamine','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `samp_prob` VALUES ('Oxaliplatin','In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `samp_prob` VALUES ('Acetaminophen','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `samp_prob` VALUES ('Potassium Chloride','Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `samp_prob` VALUES ('Petroleum','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `samp_prob` VALUES ('Sodium Chloride','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `samp_prob` VALUES ('Russian Thistle','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
INSERT INTO `samp_prob` VALUES ('HYDROCORTISONE','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `samp_prob` VALUES ('Lactulose','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `samp_prob` VALUES ('Ibuprofen','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `samp_prob` VALUES ('Petroleum','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `samp_prob` VALUES ('SODIUM FLUORIDE','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `samp_prob` VALUES ('Gentian Violet 2%','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `samp_prob` VALUES ('Oxacillin Sodium','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `samp_prob` VALUES ('Gentamicin Sulfate','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `samp_prob` VALUES ('Permethrin','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `samp_prob` VALUES ('Ciclopirox Olamine','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `samp_prob` VALUES ('Menthol','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `samp_prob` VALUES ('SODIUM FLUORIDE','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `samp_prob` VALUES ('Amitriptyline Hydrochloride','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `samp_prob` VALUES ('Oxycodone','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `samp_prob` VALUES ('Zinc oxide and titanium dioxide','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `samp_prob` VALUES ('Nafcillin','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `samp_prob` VALUES ('olanzapine and fuoxetine','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
INSERT INTO `samp_prob` VALUES ('Zolpidem tartrate','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
INSERT INTO `samp_prob` VALUES ('Diphenhydramine HCl, Zinc Acetate','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
/*!40000 ALTER TABLE `samp_prob` ENABLE KEYS */;

--
-- Table structure for table `student_med`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_med` (
  `MName` varchar(50) DEFAULT NULL,
  `EdUsername` varchar(20) DEFAULT NULL,
  KEY `MName` (`MName`),
  KEY `EdUsername` (`EdUsername`),
  CONSTRAINT `student_med_ibfk_1` FOREIGN KEY (`MName`) REFERENCES `Medications` (`MName`),
  CONSTRAINT `student_med_ibfk_2` FOREIGN KEY (`EdUsername`) REFERENCES `Pharmacy Students` (`EdUsername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_med`
--

/*!40000 ALTER TABLE `student_med` DISABLE KEYS */;
INSERT INTO `student_med` VALUES ('Eastern Cottonwood Common','edeminicoi');
INSERT INTO `student_med` VALUES ('Benzoyl Peroxide','ggarvie7');
INSERT INTO `student_med` VALUES ('Nafcillin','mwalshawe');
INSERT INTO `student_med` VALUES ('Ranitidine Hydrochloride','rcoon3');
INSERT INTO `student_med` VALUES ('risperidone','mbettenayj');
INSERT INTO `student_med` VALUES ('Avobenzone, Homosalate, Octisalate, Octocrylene, a','jmcgarrahan13');
INSERT INTO `student_med` VALUES ('Menthol','nboulderf');
INSERT INTO `student_med` VALUES ('GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','tcraske8');
INSERT INTO `student_med` VALUES ('Ranitidine Hydrochloride','rroslingz');
INSERT INTO `student_med` VALUES ('Gentian Violet 2%','bverniu');
INSERT INTO `student_med` VALUES ('Lactulose','agreenes');
INSERT INTO `student_med` VALUES ('Avobenzone, Homosalate, Octisalate, Octocrylene, a','lborrettq');
INSERT INTO `student_med` VALUES ('avobenzone, homosalate, octisalate, octocrylene, o','cgorries11');
INSERT INTO `student_med` VALUES ('Ciclopirox Olamine','gkarpov12');
INSERT INTO `student_med` VALUES ('CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','pmardeew');
INSERT INTO `student_med` VALUES ('Mirtazapine','jpedroni2');
INSERT INTO `student_med` VALUES ('Carvedilol','emacknishv');
INSERT INTO `student_med` VALUES ('olanzapine and fuoxetine','akingscotey');
INSERT INTO `student_med` VALUES ('GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','wkobierskip');
INSERT INTO `student_med` VALUES ('Ranitidine Hydrochloride','cklimov10');
INSERT INTO `student_med` VALUES ('SODIUM FLUORIDE','friddochl');
INSERT INTO `student_med` VALUES ('Oxymorphone hydrochloride','tcraske8');
INSERT INTO `student_med` VALUES ('risperidone','achinnockm');
INSERT INTO `student_med` VALUES ('Permethrin','cbonsall1c');
INSERT INTO `student_med` VALUES ('BENZALKONIUM CHLORIDE','ggarvie7');
INSERT INTO `student_med` VALUES ('Metronidazole','achinnockm');
INSERT INTO `student_med` VALUES ('Gentian Violet 2%','jpedroni2');
INSERT INTO `student_med` VALUES ('Diphenhydramine HCl, Zinc Acetate','cphizackerly6');
INSERT INTO `student_med` VALUES ('olanzapine and fuoxetine','npace18');
INSERT INTO `student_med` VALUES ('topiramate','jpedroni2');
INSERT INTO `student_med` VALUES ('Ibuprofen','emacknishv');
INSERT INTO `student_med` VALUES ('Ciclopirox Olamine','tcastanen');
INSERT INTO `student_med` VALUES ('Eastern Cottonwood Common','rroslingz');
INSERT INTO `student_med` VALUES ('TITANIUM DIOXIDE','nboulderf');
INSERT INTO `student_med` VALUES ('Gentian Violet 2%','pmardeew');
INSERT INTO `student_med` VALUES ('Ranitidine Hydrochloride','eruppertc');
INSERT INTO `student_med` VALUES ('Metronidazole','rgruszczak14');
INSERT INTO `student_med` VALUES ('Zinc oxide and titanium dioxide','nboulderf');
INSERT INTO `student_med` VALUES ('Ciclopirox Olamine','cphizackerly6');
INSERT INTO `student_med` VALUES ('GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','jdogerty9');
INSERT INTO `student_med` VALUES ('Enalapril Maleate','dickovitz1a');
INSERT INTO `student_med` VALUES ('Isosorbide Dinitrate','akingscotey');
INSERT INTO `student_med` VALUES ('Menthol','rroslingz');
INSERT INTO `student_med` VALUES ('Ciclopirox Olamine','peasom1b');
INSERT INTO `student_med` VALUES ('Permethrin','dickovitz1a');
INSERT INTO `student_med` VALUES ('Potassium Chloride','cklimov10');
INSERT INTO `student_med` VALUES ('BENZALKONIUM CHLORIDE','mfearya');
INSERT INTO `student_med` VALUES ('Nafcillin','npace18');
INSERT INTO `student_med` VALUES ('olanzapine and fuoxetine','aclail1');
INSERT INTO `student_med` VALUES ('Oxacillin Sodium','cfobidge16');
INSERT INTO `student_med` VALUES ('Ibuprofen','lneasamd');
INSERT INTO `student_med` VALUES ('Zinc oxide and titanium dioxide','nboulderf');
INSERT INTO `student_med` VALUES ('Meloxicam','acage15');
INSERT INTO `student_med` VALUES ('Aluminum Zirconium Octachlorohydrex Gly','avischir');
INSERT INTO `student_med` VALUES ('lansoprazole','npace18');
INSERT INTO `student_med` VALUES ('risperidone','camnerg');
INSERT INTO `student_med` VALUES ('GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','bsinkins17');
INSERT INTO `student_med` VALUES ('topiramate','mwalshawe');
INSERT INTO `student_med` VALUES ('Enalapril Maleate','rcoon3');
INSERT INTO `student_med` VALUES ('Hydrocodone Bitartrate and Acetaminophen','nboulderf');
INSERT INTO `student_med` VALUES ('BENZALKONIUM CHLORIDE','lneasamd');
INSERT INTO `student_med` VALUES ('Potassium Chloride','dickovitz1a');
INSERT INTO `student_med` VALUES ('Esmolol Hydrochloride','cphizackerly6');
INSERT INTO `student_med` VALUES ('Lactulose','cdundendale19');
INSERT INTO `student_med` VALUES ('Ibuprofen','wkobierskip');
INSERT INTO `student_med` VALUES ('Meloxicam','klamberto4');
INSERT INTO `student_med` VALUES ('Sodium Chloride','jpedroni2');
INSERT INTO `student_med` VALUES ('Hydrocodone Bitartrate and Acetaminophen','cverillo1d');
INSERT INTO `student_med` VALUES ('Oxycodone','aclail1');
INSERT INTO `student_med` VALUES ('Enalapril Maleate','bsinkins17');
INSERT INTO `student_med` VALUES ('Oxacillin Sodium','cverillo1d');
INSERT INTO `student_med` VALUES ('TITANIUM DIOXIDE','acage15');
INSERT INTO `student_med` VALUES ('SODIUM FLUORIDE','mwalshawe');
INSERT INTO `student_med` VALUES ('Carvedilol','tcraske8');
INSERT INTO `student_med` VALUES ('HYDROCORTISONE','mwalshawe');
INSERT INTO `student_med` VALUES ('Eastern Cottonwood Common','wkobierskip');
INSERT INTO `student_med` VALUES ('Meloxicam','dickovitz1a');
INSERT INTO `student_med` VALUES ('Potassium Chloride','cphizackerly6');
INSERT INTO `student_med` VALUES ('PRAVASTATIN SODIUM','tcastanen');
INSERT INTO `student_med` VALUES ('Hydrocodone Bitartrate and Acetaminophen','mwalshawe');
INSERT INTO `student_med` VALUES ('Permethrin','cphizackerly6');
INSERT INTO `student_med` VALUES ('Ranitidine Hydrochloride','jdogerty9');
INSERT INTO `student_med` VALUES ('CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','friddochl');
INSERT INTO `student_med` VALUES ('Zinc oxide and titanium dioxide','lborrettq');
INSERT INTO `student_med` VALUES ('Esmolol Hydrochloride','rroslingz');
INSERT INTO `student_med` VALUES ('TITANIUM DIOXIDE','cbonsall1c');
INSERT INTO `student_med` VALUES ('HYDROCORTISONE','achinnockm');
INSERT INTO `student_med` VALUES ('GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','klamberto4');
INSERT INTO `student_med` VALUES ('Sodium Chloride','acage15');
INSERT INTO `student_med` VALUES ('GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','bsinkins17');
INSERT INTO `student_med` VALUES ('Aluminum Zirconium Octachlorohydrex Gly','pmardeew');
INSERT INTO `student_med` VALUES ('Benzoyl Peroxide','gkarpov12');
INSERT INTO `student_med` VALUES ('Eastern Cottonwood Common','lborrettq');
INSERT INTO `student_med` VALUES ('Petroleum','aclail1');
INSERT INTO `student_med` VALUES ('Russian Thistle','friddochl');
INSERT INTO `student_med` VALUES ('PRAVASTATIN SODIUM','cklimov10');
INSERT INTO `student_med` VALUES ('Sodium Chloride','jpedroni2');
INSERT INTO `student_med` VALUES ('Oxaliplatin','kmartlandh');
INSERT INTO `student_med` VALUES ('Menthol','akingscotey');
INSERT INTO `student_med` VALUES ('Oxycodone','peasom1b');
/*!40000 ALTER TABLE `student_med` ENABLE KEYS */;

--
-- Table structure for table `student_notes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_notes` (
  `EdUsername` varchar(20) DEFAULT NULL,
  `MName` varchar(50) DEFAULT NULL,
  `Notes` mediumtext,
  KEY `EdUsername` (`EdUsername`),
  KEY `MName` (`MName`),
  CONSTRAINT `student_notes_ibfk_1` FOREIGN KEY (`EdUsername`) REFERENCES `Pharmacy Students` (`EdUsername`),
  CONSTRAINT `student_notes_ibfk_2` FOREIGN KEY (`MName`) REFERENCES `Medications` (`MName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_notes`
--

/*!40000 ALTER TABLE `student_notes` DISABLE KEYS */;
INSERT INTO `student_notes` VALUES ('cphizackerly6','Esmolol Hydrochloride','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `student_notes` VALUES ('peasom1b','Ciclopirox Olamine','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `student_notes` VALUES ('tcastanen','PRAVASTATIN SODIUM','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `student_notes` VALUES ('friddochl','SODIUM FLUORIDE','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `student_notes` VALUES ('akingscotey','olanzapine and fuoxetine','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `student_notes` VALUES ('cphizackerly6','Permethrin','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `student_notes` VALUES ('jdogerty9','GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `student_notes` VALUES ('acage15','Meloxicam','COX inhibitor');
INSERT INTO `student_notes` VALUES ('aclail1','Petroleum','potentially eczema?');
INSERT INTO `student_notes` VALUES ('edeminicoi','Eastern Cottonwood Common','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `student_notes` VALUES ('mwalshawe','topiramate','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `student_notes` VALUES ('peasom1b','Oxycodone','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `student_notes` VALUES ('avischir','Aluminum Zirconium Octachlorohydrex Gly','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `student_notes` VALUES ('bsinkins17','Enalapril Maleate','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `student_notes` VALUES ('mwalshawe','Nafcillin','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `student_notes` VALUES ('lneasamd','BENZALKONIUM CHLORIDE','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `student_notes` VALUES ('cbonsall1c','TITANIUM DIOXIDE','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
INSERT INTO `student_notes` VALUES ('achinnockm','Metronidazole','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `student_notes` VALUES ('cbonsall1c','Permethrin','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `student_notes` VALUES ('akingscotey','olanzapine and fuoxetine','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `student_notes` VALUES ('lneasamd','BENZALKONIUM CHLORIDE','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `student_notes` VALUES ('agreenes','Lactulose','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `student_notes` VALUES ('akingscotey','olanzapine and fuoxetine','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `student_notes` VALUES ('tcastanen','PRAVASTATIN SODIUM','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `student_notes` VALUES ('nboulderf','Zinc oxide and titanium dioxide','Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `student_notes` VALUES ('rroslingz','Eastern Cottonwood Common','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `student_notes` VALUES ('mwalshawe','Hydrocodone Bitartrate and Acetaminophen','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `student_notes` VALUES ('wkobierskip','Eastern Cottonwood Common','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `student_notes` VALUES ('dickovitz1a','Potassium Chloride','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `student_notes` VALUES ('rroslingz','Esmolol Hydrochloride','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `student_notes` VALUES ('tcastanen','PRAVASTATIN SODIUM','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `student_notes` VALUES ('aclail1','Petroleum','potentially eczema?');
INSERT INTO `student_notes` VALUES ('friddochl','SODIUM FLUORIDE','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `student_notes` VALUES ('klamberto4','Meloxicam','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `student_notes` VALUES ('nboulderf','Zinc oxide and titanium dioxide','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `student_notes` VALUES ('cphizackerly6','Esmolol Hydrochloride','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `student_notes` VALUES ('klamberto4','GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `student_notes` VALUES ('akingscotey','olanzapine and fuoxetine','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `student_notes` VALUES ('ggarvie7','Benzoyl Peroxide','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `student_notes` VALUES ('cdundendale19','Lactulose','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
INSERT INTO `student_notes` VALUES ('jpedroni2','Mirtazapine','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `student_notes` VALUES ('cphizackerly6','Ciclopirox Olamine','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `student_notes` VALUES ('akingscotey','Menthol','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `student_notes` VALUES ('jdogerty9','Ranitidine Hydrochloride','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `student_notes` VALUES ('lborrettq','Avobenzone, Homosalate, Octisalate, Octocrylene, a','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `student_notes` VALUES ('akingscotey','Menthol','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `student_notes` VALUES ('mbettenayj','risperidone','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `student_notes` VALUES ('nboulderf','TITANIUM DIOXIDE','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `student_notes` VALUES ('wkobierskip','Eastern Cottonwood Common','Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `student_notes` VALUES ('cklimov10','Potassium Chloride','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `student_notes` VALUES ('gkarpov12','Benzoyl Peroxide','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `student_notes` VALUES ('tcraske8','Carvedilol','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `student_notes` VALUES ('acage15','Meloxicam','COX inhibitor');
INSERT INTO `student_notes` VALUES ('bsinkins17','Enalapril Maleate','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `student_notes` VALUES ('gkarpov12','Ciclopirox Olamine','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `student_notes` VALUES ('peasom1b','Ciclopirox Olamine','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `student_notes` VALUES ('cklimov10','Ranitidine Hydrochloride','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `student_notes` VALUES ('cgorries11','avobenzone, homosalate, octisalate, octocrylene, o','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `student_notes` VALUES ('acage15','Sodium Chloride','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `student_notes` VALUES ('jpedroni2','Sodium Chloride','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `student_notes` VALUES ('cverillo1d','Hydrocodone Bitartrate and Acetaminophen','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `student_notes` VALUES ('friddochl','CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `student_notes` VALUES ('cphizackerly6','Esmolol Hydrochloride','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `student_notes` VALUES ('cphizackerly6','Diphenhydramine HCl, Zinc Acetate','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `student_notes` VALUES ('nboulderf','Zinc oxide and titanium dioxide','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `student_notes` VALUES ('mfearya','BENZALKONIUM CHLORIDE','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `student_notes` VALUES ('mwalshawe','Nafcillin','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `student_notes` VALUES ('mwalshawe','topiramate','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `student_notes` VALUES ('gkarpov12','Benzoyl Peroxide','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `student_notes` VALUES ('kmartlandh','Oxaliplatin','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `student_notes` VALUES ('nboulderf','Menthol','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `student_notes` VALUES ('agreenes','Lactulose','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `student_notes` VALUES ('acage15','TITANIUM DIOXIDE','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `student_notes` VALUES ('tcraske8','Oxymorphone hydrochloride','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `student_notes` VALUES ('achinnockm','HYDROCORTISONE','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `student_notes` VALUES ('lneasamd','Ibuprofen','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `student_notes` VALUES ('aclail1','Oxycodone','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `student_notes` VALUES ('mwalshawe','Nafcillin','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `student_notes` VALUES ('bsinkins17','GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `student_notes` VALUES ('npace18','Nafcillin','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `student_notes` VALUES ('acage15','Sodium Chloride','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `student_notes` VALUES ('akingscotey','olanzapine and fuoxetine','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `student_notes` VALUES ('cphizackerly6','Esmolol Hydrochloride','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `student_notes` VALUES ('emacknishv','Ibuprofen','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `student_notes` VALUES ('dickovitz1a','Potassium Chloride','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `student_notes` VALUES ('nboulderf','Menthol','Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `student_notes` VALUES ('klamberto4','Meloxicam','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
INSERT INTO `student_notes` VALUES ('cphizackerly6','Esmolol Hydrochloride','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
INSERT INTO `student_notes` VALUES ('gkarpov12','Benzoyl Peroxide','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
INSERT INTO `student_notes` VALUES ('cbonsall1c','TITANIUM DIOXIDE','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `student_notes` VALUES ('cphizackerly6','Ciclopirox Olamine','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `student_notes` VALUES ('kmartlandh','Oxaliplatin','Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `student_notes` VALUES ('npace18','Nafcillin','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `student_notes` VALUES ('agreenes','Lactulose','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `student_notes` VALUES ('rroslingz','Menthol','aid in smoking cessation');
/*!40000 ALTER TABLE `student_notes` ENABLE KEYS */;

--
-- Table structure for table `use_casesDC`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `use_casesDC` (
  `DCName` varchar(50) DEFAULT NULL,
  `UseCase` mediumtext,
  `EdInfo` mediumtext,
  `Description` mediumtext,
  KEY `DCName` (`DCName`),
  CONSTRAINT `use_casesDC_ibfk_1` FOREIGN KEY (`DCName`) REFERENCES `Drug Classes` (`DCName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_casesDC`
--

/*!40000 ALTER TABLE `use_casesDC` DISABLE KEYS */;
INSERT INTO `use_casesDC` VALUES ('neque','Short Achilles tendon (acquired), left ankle','Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `use_casesDC` VALUES ('eu','Salter-Harris Type I physeal fracture of upper end of tibia','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `use_casesDC` VALUES ('pellentesque','Laceration of other blood vessels at lower leg level, right leg','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `use_casesDC` VALUES ('imperdiet','Other fracture of shaft of right humerus, subsequent encounter for fracture with malunion','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `use_casesDC` VALUES ('turpis','Paralytic syndrome, unspecified','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `use_casesDC` VALUES ('pede posuere','Car passenger injured in collision with other nonmotor vehicle in nontraffic accident, initial encounter','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `use_casesDC` VALUES ('eu','Maternal care for Anti-A sensitization, unspecified trimester, fetus 5','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `use_casesDC` VALUES ('turpis','Maternal care for breech presentation, fetus 1','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `use_casesDC` VALUES ('mauris','Other mechanical complication of internal fixation device of bones of hand and fingers, initial encounter','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `use_casesDC` VALUES ('pede','Pregnancy related peripheral neuritis, unspecified trimester','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `use_casesDC` VALUES ('ac','Radiohumeral (joint) sprain of left elbow, initial encounter','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `use_casesDC` VALUES ('est phasellus','Unspecified fracture of unspecified acetabulum, initial encounter for closed fracture','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `use_casesDC` VALUES ('quam','Injury of extensor muscle, fascia and tendon of other and unspecified finger at wrist and hand level','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `use_casesDC` VALUES ('convallis','Perforation due to foreign body accidentally left in body following injection or immunization, sequela','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `use_casesDC` VALUES ('pede','Burn of second degree of right ankle, sequela','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.');
INSERT INTO `use_casesDC` VALUES ('pede posuere','Laceration of brachial artery, right side, sequela','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `use_casesDC` VALUES ('neque','Bitten by cow, subsequent encounter','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `use_casesDC` VALUES ('nisl','Corrosion of unspecified degree of head, face, and neck, unspecified site, sequela','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `use_casesDC` VALUES ('imperdiet','Corrosion of third degree of multiple sites of left ankle and foot','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `use_casesDC` VALUES ('est phasellus','Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, unspecified extremity','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `use_casesDC` VALUES ('curae','Struck by other bat, racquet or club, initial encounter','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
INSERT INTO `use_casesDC` VALUES ('cras','Pathological fracture, right toe(s), subsequent encounter for fracture with delayed healing','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `use_casesDC` VALUES ('enim sit','Displaced comminuted fracture of shaft of unspecified femur, sequela','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `use_casesDC` VALUES ('at','Nondisplaced fracture of proximal third of navicular [scaphoid] bone of left wrist, initial encounter for open fracture','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `use_casesDC` VALUES ('quam','Fracture of base of skull, right side, subsequent encounter for fracture with delayed healing','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `use_casesDC` VALUES ('ultrices','Patellofemoral disorders, unspecified knee','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `use_casesDC` VALUES ('nulla integer','Unspecified injury of other muscles, fascia and tendons at shoulder and upper arm level, left arm, initial encounter','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
INSERT INTO `use_casesDC` VALUES ('condimentum curabitur','Other brucellosis','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `use_casesDC` VALUES ('mauris','Nondisplaced fracture of unspecified radial styloid process, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with malunion','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `use_casesDC` VALUES ('id','Crushed between passenger ship and other watercraft or other object due to collision','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `use_casesDC` VALUES ('cras','Drowning and submersion due to being thrown overboard by motion of merchant ship, initial encounter','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `use_casesDC` VALUES ('pede posuere','Nondisplaced trimalleolar fracture of left lower leg, initial encounter for open fracture type I or II','Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `use_casesDC` VALUES ('pede','Sprain of tibiofibular ligament of unspecified ankle, subsequent encounter','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `use_casesDC` VALUES ('lacus at','Exposure to ignition or melting of nightwear','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `use_casesDC` VALUES ('maecenas tincidunt','Chronic perichondritis of external ear, unspecified ear','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `use_casesDC` VALUES ('ultrices posuere','Continuing pregnancy after intrauterine death of one fetus or more, first trimester, fetus 3','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `use_casesDC` VALUES ('pede','Trigger finger, left middle finger','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `use_casesDC` VALUES ('enim sit','Displaced fracture of lateral condyle of unspecified femur, initial encounter for open fracture type I or II','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `use_casesDC` VALUES ('convallis duis','Pedestrian on foot injured in collision with skateboarder','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `use_casesDC` VALUES ('lacinia','Subluxation of unspecified interphalangeal joint of left thumb, subsequent encounter','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `use_casesDC` VALUES ('malesuada','Subluxation of C5/C6 cervical vertebrae, initial encounter','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `use_casesDC` VALUES ('interdum','Partial traumatic amputation at level between shoulder and elbow','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `use_casesDC` VALUES ('at','Foreign body or object entering through skin','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `use_casesDC` VALUES ('lacus at','Displaced oblique fracture of shaft of right ulna, subsequent encounter for open fracture type I or II with routine healing','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `use_casesDC` VALUES ('integer','Beta thalassemia','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `use_casesDC` VALUES ('diam','Unspecified injury of other muscle(s) and tendon(s) at lower leg level, left leg','Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `use_casesDC` VALUES ('curae','Driver of pick-up truck or van injured in collision with other motor vehicles in nontraffic accident','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `use_casesDC` VALUES ('mauris','Unspecified injury of right hip, subsequent encounter','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `use_casesDC` VALUES ('at','Person on outside of car injured in collision with other nonmotor vehicle in traffic accident, subsequent encounter','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `use_casesDC` VALUES ('elementum','Toxic effect of tobacco and nicotine','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `use_casesDC` VALUES ('enim sit','Partial traumatic transphalangeal amputation of right index finger, sequela','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `use_casesDC` VALUES ('curae','Neoplasm of uncertain behavior of lip','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `use_casesDC` VALUES ('sit','Unspecified injury of blood vessel of right middle finger, sequela','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `use_casesDC` VALUES ('ultrices','Displaced fracture of distal phalanx of left lesser toe(s), subsequent encounter for fracture with routine healing','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Phasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `use_casesDC` VALUES ('condimentum curabitur','Refsum\'s disease','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `use_casesDC` VALUES ('ornare','Displaced associated transverse-posterior fracture of right acetabulum, initial encounter for closed fracture','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `use_casesDC` VALUES ('neque','Liveborn infants according to place of birth and type of delivery','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.');
INSERT INTO `use_casesDC` VALUES ('imperdiet','Poisoning by ganglionic blocking drugs, assault, initial encounter','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `use_casesDC` VALUES ('pede','Superficial foreign body, unspecified foot','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `use_casesDC` VALUES ('leo','Ring or other jewelry causing external constriction, sequela','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `use_casesDC` VALUES ('pede','Animal-rider injured by fall from or being thrown from other animal in noncollision accident, subsequent encounter','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `use_casesDC` VALUES ('neque','Dining room of unspecified non-institutional (private) residence as the place of occurrence of the external cause','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `use_casesDC` VALUES ('convallis duis','Burn of second degree of unspecified elbow, sequela','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `use_casesDC` VALUES ('elementum','Burn of third degree of multiple left fingers (nail), not including thumb, subsequent encounter','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `use_casesDC` VALUES ('vel','Acute pancreatitis with infected necrosis, unspecified','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `use_casesDC` VALUES ('lacus at','Motorcycle passenger injured in collision with two- or three-wheeled motor vehicle in traffic accident, sequela','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
INSERT INTO `use_casesDC` VALUES ('ligula vehicula','Tidal wave due to storm, initial encounter','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `use_casesDC` VALUES ('tortor','Other viral infections characterized by skin and mucous membrane lesions, not elsewhere classified','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Phasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `use_casesDC` VALUES ('ac','Nondisplaced spiral fracture of shaft of left fibula, subsequent encounter for closed fracture with malunion','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `use_casesDC` VALUES ('est phasellus','Dislocation of radiocarpal joint of right wrist, subsequent encounter','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `use_casesDC` VALUES ('ac','Injury of other nerves at forearm level, right arm','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `use_casesDC` VALUES ('justo','Polyhydramnios, unspecified trimester, other fetus','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `use_casesDC` VALUES ('imperdiet','Injury of femoral nerve at hip and thigh level, right leg, sequela','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `use_casesDC` VALUES ('pede posuere','Displaced segmental fracture of shaft of right tibia, sequela','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `use_casesDC` VALUES ('pede venenatis','Toxic effect of unspecified seafood, undetermined, sequela','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `use_casesDC` VALUES ('nulla integer','Corrosion of second degree of multiple right fingers (nail), not including thumb, sequela','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `use_casesDC` VALUES ('vel','Acute embolism and thrombosis of unspecified deep veins of unspecified distal lower extremity','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `use_casesDC` VALUES ('sit','Other specified transport accidents, sequela','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `use_casesDC` VALUES ('pellentesque','Aspiration pneumonitis due to anesthesia during pregnancy, unspecified trimester','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `use_casesDC` VALUES ('interdum','Pathological fracture in neoplastic disease, right tibia, subsequent encounter for fracture with nonunion','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `use_casesDC` VALUES ('imperdiet','Unspecified injury of axillary artery, unspecified side, initial encounter','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `use_casesDC` VALUES ('lacus at','Laceration without foreign body of left great toe without damage to nail','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `use_casesDC` VALUES ('enim sit','Unspecified fracture of unspecified calcaneus','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `use_casesDC` VALUES ('lacinia','Accidental malfunction of machine gun, sequela','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `use_casesDC` VALUES ('enim sit','Other specified diabetes mellitus with diabetic chronic kidney disease','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `use_casesDC` VALUES ('ac','Complete traumatic amputation of right foot at ankle level, subsequent encounter','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `use_casesDC` VALUES ('lacus at','Unspecified fracture of lower end of left femur, subsequent encounter for open fracture type I or II with delayed healing','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Phasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `use_casesDC` VALUES ('ultrices','Adhesions due to foreign body accidentally left in body following removal of catheter or packing, subsequent encounter','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `use_casesDC` VALUES ('pellentesque','Squamous cell carcinoma of skin of left upper limb, including shoulder','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `use_casesDC` VALUES ('quam','Other tear of medial meniscus, current injury, unspecified knee, sequela','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `use_casesDC` VALUES ('elementum','Asphyxiation due to smothering in furniture, undetermined, sequela','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `use_casesDC` VALUES ('pede','Toxic effect of contact with other venomous marine animals, undetermined','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `use_casesDC` VALUES ('lacus at','Displaced fracture of body of left calcaneus','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `use_casesDC` VALUES ('cras','Unspecified injury of unspecified ankle, sequela','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `use_casesDC` VALUES ('imperdiet','Other inflammatory disorders of penis','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `use_casesDC` VALUES ('ligula vehicula','Displaced fracture of cuboid bone of unspecified foot','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `use_casesDC` VALUES ('interdum','Other specified diabetes mellitus with mild nonproliferative diabetic retinopathy without macular edema, left eye','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `use_casesDC` VALUES ('quam','Rheumatoid arthritis with rheumatoid factor of unspecified ankle and foot without organ or systems involvement','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `use_casesDC` VALUES ('at','Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of other part of lower leg','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `use_casesDC` VALUES ('ornare','Rheumatoid myopathy with rheumatoid arthritis of left knee','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
/*!40000 ALTER TABLE `use_casesDC` ENABLE KEYS */;

--
-- Table structure for table `use_casesM`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `use_casesM` (
  `MName` varchar(50) DEFAULT NULL,
  `UseCase` mediumtext,
  `EdInfo` mediumtext,
  `Description` mediumtext,
  KEY `MName` (`MName`),
  CONSTRAINT `use_casesM_ibfk_1` FOREIGN KEY (`MName`) REFERENCES `Medications` (`MName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_casesM`
--

/*!40000 ALTER TABLE `use_casesM` DISABLE KEYS */;
INSERT INTO `use_casesM` VALUES ('Gentamicin Sulfate','Traumatic rupture of cervical intervertebral disc, subsequent encounter','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
INSERT INTO `use_casesM` VALUES ('Menthol','Monoplegia of lower limb following unspecified cerebrovascular disease affecting right dominant side','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `use_casesM` VALUES ('Zinc oxide and titanium dioxide','Unspecified injury of ovary, unilateral, initial encounter','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `use_casesM` VALUES ('BENZALKONIUM CHLORIDE','Toxic effect of other corrosive organic compounds, undetermined, sequela','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `use_casesM` VALUES ('Diphenhydramine HCl, Zinc Acetate','Anaplastic large cell lymphoma, ALK-positive, lymph nodes of axilla and upper limb','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `use_casesM` VALUES ('Permethrin','Person on outside of heavy transport vehicle injured in collision with pedestrian or animal in nontraffic accident','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `use_casesM` VALUES ('Ranitidine Hydrochloride','Posterior cyclitis, unspecified eye','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `use_casesM` VALUES ('Acetaminophen','Diabetes mellitus due to underlying condition with stable proliferative diabetic retinopathy, unspecified eye','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `use_casesM` VALUES ('Aluminum Chlorohydrate','Traumatic hemorrhage of left cerebrum with loss of consciousness of any duration with death due to brain injury prior to regaining consciousness','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `use_casesM` VALUES ('SODIUM FLUORIDE','Other osteomyelitis, lower leg','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `use_casesM` VALUES ('Zolpidem tartrate','Paratyphoid fever C','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `use_casesM` VALUES ('Ciclopirox Olamine','Unspecified injury of shoulder and upper arm, unspecified arm, subsequent encounter','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `use_casesM` VALUES ('Potassium Chloride','Nondisplaced posterior arch fracture of first cervical vertebra','Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `use_casesM` VALUES ('topiramate','Neoplasm of uncertain behavior of urethra','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `use_casesM` VALUES ('Meloxicam','Insect bite (nonvenomous), right lesser toe(s), subsequent encounter','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `use_casesM` VALUES ('Benzoyl Peroxide','Deep phlebothrombosis in pregnancy, unspecified trimester','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `use_casesM` VALUES ('BENZALKONIUM CHLORIDE','External constriction of left elbow, sequela','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `use_casesM` VALUES ('TITANIUM DIOXIDE','Sprain of left acromioclavicular joint, subsequent encounter','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `use_casesM` VALUES ('Nafcillin','Unspecified otosclerosis, bilateral','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `use_casesM` VALUES ('indomethacin','Abrasion of right front wall of thorax, sequela','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `use_casesM` VALUES ('Pigweed Rough Redroot','Prosthetic and other implants, materials and accessory otorhinolaryngological devices associated with adverse incidents','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `use_casesM` VALUES ('Menthol','Nondisplaced spiral fracture of shaft of humerus, left arm, initial encounter for open fracture','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `use_casesM` VALUES ('Esmolol Hydrochloride','Other spondylosis, thoracolumbar region','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `use_casesM` VALUES ('lansoprazole','Abrasion, unspecified hip, initial encounter','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `use_casesM` VALUES ('Avobenzone, Homosalate, Octisalate, Octocrylene, a','Toxic effect of venom of caterpillars, accidental (unintentional), sequela','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `use_casesM` VALUES ('lansoprazole','Bitten by other birds, subsequent encounter','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `use_casesM` VALUES ('Diphenhydramine HCl, Zinc Acetate','Nondisplaced segmental fracture of shaft of ulna, unspecified arm, initial encounter for open fracture type IIIA, IIIB, or IIIC','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
INSERT INTO `use_casesM` VALUES ('Russian Thistle','Displaced spiral fracture of shaft of radius, right arm, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with malunion','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `use_casesM` VALUES ('Pigweed Rough Redroot','Centrilobular emphysema','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `use_casesM` VALUES ('SODIUM FLUORIDE','Contact with combine harvester','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
INSERT INTO `use_casesM` VALUES ('Menthol','Injury of muscle(s) and tendon(s) of anterior muscle group at lower leg level','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `use_casesM` VALUES ('Oxaliplatin','Nondisplaced lateral mass fracture of first cervical vertebra','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `use_casesM` VALUES ('Ciclopirox Olamine','Nondisplaced osteochondral fracture of left patella, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with malunion','Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `use_casesM` VALUES ('Russian Thistle','Smith\'s fracture of unspecified radius, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with malunion','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `use_casesM` VALUES ('indomethacin','Coma scale, best verbal response, inappropriate words, unspecified time','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `use_casesM` VALUES ('BENZALKONIUM CHLORIDE','External constriction of oral cavity','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `use_casesM` VALUES ('Permethrin','Pedestrian with other conveyance injured in collision with pedal cycle, unspecified whether traffic or nontraffic accident, initial encounter','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
INSERT INTO `use_casesM` VALUES ('Metronidazole','Hematoma of broad ligament','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `use_casesM` VALUES ('Gentian Violet 2%','Encounter for mental health services for victim or perpetrator of other abuse','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `use_casesM` VALUES ('Sodium Chloride','Contusion of ascending [right] colon, initial encounter','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Phasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `use_casesM` VALUES ('Oxycodone','Pathological fracture in neoplastic disease, hand','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `use_casesM` VALUES ('Ciclopirox Olamine','Complex tear of lateral meniscus, current injury, unspecified knee, initial encounter','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `use_casesM` VALUES ('olanzapine and fuoxetine','Pathological fracture, right fibula, subsequent encounter for fracture with nonunion','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `use_casesM` VALUES ('Gentian Violet 2%','Wear of articular bearing surface of unspecified internal prosthetic joint','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
INSERT INTO `use_casesM` VALUES ('SODIUM FLUORIDE','Nondisplaced pilon fracture of unspecified tibia, subsequent encounter for open fracture type I or II with malunion','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `use_casesM` VALUES ('Oxaliplatin','Toxic effect of nitroderivatives and aminoderivatives of benzene and its homologues, undetermined','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `use_casesM` VALUES ('Zolpidem tartrate','Displaced oblique fracture of shaft of right ulna, subsequent encounter for open fracture type I or II with nonunion','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
INSERT INTO `use_casesM` VALUES ('Oxycodone','Paralytic calcification and ossification of muscle, unspecified lower leg','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `use_casesM` VALUES ('Pigweed Rough Redroot','Unspecified injury of unspecified blood vessel at shoulder and upper arm level, unspecified arm','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `use_casesM` VALUES ('indomethacin','Disseminated chorioretinal inflammation, peripheral','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `use_casesM` VALUES ('Russian Thistle','Person injured in other specified (collision)(noncollision) transport accidents involving nonmotor vehicle, nontraffic, initial encounter','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `use_casesM` VALUES ('Aluminum Chlorohydrate','Nondisplaced unspecified fracture of unspecified lesser toe(s), initial encounter for closed fracture','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `use_casesM` VALUES ('Aluminum Zirconium Octachlorohydrex Gly','Unspecified injury of ureter','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `use_casesM` VALUES ('Oxycodone','Osteopathy after poliomyelitis, unspecified forearm','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `use_casesM` VALUES ('risperidone','Bent bone of unspecified radius, initial encounter for open fracture type IIIA, IIIB, or IIIC','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `use_casesM` VALUES ('Russian Thistle','Unspecified fracture of upper end of left radius, subsequent encounter for open fracture type I or II with nonunion','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `use_casesM` VALUES ('indomethacin','Pathological fracture, hip, unspecified, sequela','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `use_casesM` VALUES ('Gentamicin Sulfate','Assault by other larger firearm discharge, subsequent encounter','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `use_casesM` VALUES ('Permethrin','Overexertion from prolonged static or awkward postures','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `use_casesM` VALUES ('CALCAREA FLUORICA, CALCAREA PHOSPHORICA, CALCAREA ','Exostosis of left external canal','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `use_casesM` VALUES ('Oxaliplatin','Burn of second degree of shoulder and upper limb, except wrist and hand, unspecified site, sequela','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `use_casesM` VALUES ('Oxycodone','Displaced Rolando\'s fracture, right hand, subsequent encounter for fracture with malunion','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `use_casesM` VALUES ('Acetaminophen','Unspecified asthma with (acute) exacerbation','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `use_casesM` VALUES ('Ibuprofen','Unspecified superficial injury of other finger, initial encounter','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `use_casesM` VALUES ('Aluminum Chlorohydrate','Traumatic compartment syndrome of left upper extremity','Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `use_casesM` VALUES ('Pigweed Rough Redroot','Atrophoderma of Pasini and Pierini','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `use_casesM` VALUES ('Enalapril Maleate','Puncture wound without foreign body of right elbow','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `use_casesM` VALUES ('lansoprazole','Multiple fractures of ribs, right side, subsequent encounter for fracture with routine healing','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `use_casesM` VALUES ('Sodium Chloride','Toxic effect of contact with stingray, undetermined, initial encounter','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `use_casesM` VALUES ('TITANIUM DIOXIDE','General hospital and personal-use devices associated with adverse incidents','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `use_casesM` VALUES ('Sodium Chloride','Unspecified injury of unspecified muscles, fascia and tendons at thigh level, unspecified thigh','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `use_casesM` VALUES ('Zinc oxide and titanium dioxide','Other contact with orca, initial encounter','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
INSERT INTO `use_casesM` VALUES ('Nafcillin','Sprain of unspecified parts of lumbar spine and pelvis, sequela','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `use_casesM` VALUES ('TITANIUM DIOXIDE','Pre-existing hypertension with pre-eclampsia, complicating the puerperium','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.');
INSERT INTO `use_casesM` VALUES ('topiramate','Other nondisplaced fracture of lower end of right humerus','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `use_casesM` VALUES ('Zinc oxide and titanium dioxide','Horseshoe tear of retina without detachment','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `use_casesM` VALUES ('Meloxicam','Nondisplaced fracture of body of scapula, unspecified shoulder, initial encounter for closed fracture','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `use_casesM` VALUES ('lansoprazole','Displaced oblique fracture of shaft of unspecified fibula, subsequent encounter for closed fracture with delayed healing','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `use_casesM` VALUES ('Potassium Chloride','Galeazzi\'s fracture of right radius, subsequent encounter for closed fracture with delayed healing','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `use_casesM` VALUES ('Hydrocodone Bitartrate and Acetaminophen','Childhood cerebral X-linked adrenoleukodystrophy','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `use_casesM` VALUES ('Ciclopirox Olamine','Laceration of stomach, initial encounter','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `use_casesM` VALUES ('avobenzone, homosalate, octisalate, octocrylene, o','Drowning and submersion due to falling or jumping from burning watercraft','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `use_casesM` VALUES ('PRAVASTATIN SODIUM','Body mass index (BMI) 32.0-32.9, adult','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `use_casesM` VALUES ('Enalapril Maleate','Subluxation of other carpometacarpal joint of left hand, sequela','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `use_casesM` VALUES ('topiramate','External constriction of unspecified finger','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `use_casesM` VALUES ('Ranitidine Hydrochloride','Other specified retinal disorders','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `use_casesM` VALUES ('PRAVASTATIN SODIUM','Acute nephritic syndrome with dense deposit disease','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `use_casesM` VALUES ('Amitriptyline Hydrochloride','Toxic effect of arsenic and its compounds, undetermined, initial encounter','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `use_casesM` VALUES ('Aluminum Chlorohydrate','Furuncle of limb','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `use_casesM` VALUES ('Isosorbide Dinitrate','Parachutist entangled in object, sequela','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `use_casesM` VALUES ('Russian Thistle','Corrosion of third degree of unspecified axilla','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `use_casesM` VALUES ('Zolpidem tartrate','Laceration of popliteal artery, left leg, subsequent encounter','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `use_casesM` VALUES ('GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','Poisoning by immunoglobulin, undetermined, initial encounter','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `use_casesM` VALUES ('Zinc oxide and titanium dioxide','Preterm premature rupture of membranes, onset of labor more than 24 hours following rupture','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `use_casesM` VALUES ('Avobenzone, Homosalate, Octisalate, Octocrylene, a','Nondisplaced fracture of base of other metacarpal bone, subsequent encounter for fracture with nonunion','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `use_casesM` VALUES ('indomethacin','Driver of dune buggy injured in nontraffic accident, sequela','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
INSERT INTO `use_casesM` VALUES ('Amitriptyline Hydrochloride','Acquired absence of left breast and nipple','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `use_casesM` VALUES ('avobenzone, homosalate, octisalate, octocrylene, o','Nondisplaced unspecified condyle fracture of lower end of right femur, initial encounter for open fracture type IIIA, IIIB, or IIIC','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `use_casesM` VALUES ('GERANIUM ROBERTIANUM and RORIPPA NASTURTIUM-AQUATI','Unspecified injury of unspecified tibial artery, left leg','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `use_casesM` VALUES ('Oxymorphone hydrochloride','Encounter for routine child health examination with abnormal findings','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
/*!40000 ALTER TABLE `use_casesM` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-19 12:31:04
