# ABMS : MySQL database backup
#
# Generated: Tuesday 1. March 2022
# Hostname: localhost
# Database: abms
# --------------------------------------------------------


#
# Delete any existing table `tbl_support`
#

DROP TABLE IF EXISTS `tbl_support`;


#
# Table structure of table `tbl_support`
#



CREATE TABLE `tbl_support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




#
# Delete any existing table `tbl_users`
#

DROP TABLE IF EXISTS `tbl_users`;


#
# Table structure of table `tbl_users`
#



CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_users VALUES("11","admin","d033e22ae348aeb5660fc2140aec35850c4da997","administrator","10022022061404Walangpamagat(1).png","2021-05-03 10:33:03");



#
# Delete any existing table `tblblotter`
#

DROP TABLE IF EXISTS `tblblotter`;


#
# Table structure of table `tblblotter`
#



CREATE TABLE `tblblotter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complainant` varchar(100) DEFAULT NULL,
  `respondent` varchar(100) DEFAULT NULL,
  `victim` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `details` varchar(10000) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

INSERT INTO tblblotter VALUES("10","Joe Rizal","Nora Selos","Joe Rizal","Amicable","Pob 1 Catbalogan, Samar","2020-11-02","00:30:00"," Sustento sa Anaak ","Scheduled");
INSERT INTO tblblotter VALUES("16","Tiboy Tibo","Maria Advitos","Tiboy","Incident","Brgy1","2020-11-06","23:35:00","  Di alam ano pinag awayan  ","Scheduled");
INSERT INTO tblblotter VALUES("19","Girl Topak","Boy Topak","Girl Topak","Incident","Manila","2021-01-13","11:11:00","Mga Topakin na Pamilya","Active");
INSERT INTO tblblotter VALUES("20","Kayzel","Mario","Kayzel","Incident","Quezon City","2021-01-07","00:12:00","Iwan Ko","Settled");
INSERT INTO tblblotter VALUES("22","Juan dela Cruz","Peter","Juan","Amicable","Manila","2021-01-01","22:16:00","   ayaw magbayad ng utang.. hehhheee   ","Active");



#
# Delete any existing table `tblbrgy_info`
#

DROP TABLE IF EXISTS `tblbrgy_info`;


#
# Table structure of table `tblbrgy_info`
#



CREATE TABLE `tblbrgy_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `city_logo` varchar(100) DEFAULT NULL,
  `brgy_logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblbrgy_info VALUES("1","BULACAN","BOCAUE","BUNDUCAN","0919-1234567","BARANGAY VISION:
A COMMUNITY OF HEALTHY AND HAPPY PEOPLE; COOPERATIVE AND PARTICIPATIVE, YET REMAINS TO BE SELF-RELIANT; LIVING IN A PEACEFUL, PROGRESSIVE AND ENVIRONMENT-FRIENDLY NEIGHBORHOOD THAT HAS AFFECTED CHANGE TOWARDS SUSTAINABLE DEVELOPMENT IN THE MUNICIPALITY.

BARANGAY MISSION:
TO FORGE TOTAL WELL-BEING OF POPULACE; TO PROMOTE PROGRESS THRU ENCOURAGEMENT OF THEIR PARTICIPATION AND COOPERATION IN A REALISTIC AND SUSTAINABLE SOCIO-CULTURAL, ECONOMICAL, ECOLOGICAL AND HUMAN DEVELOPMENT ENDEAVORS, AND THRU THE COLLABORATION OF DIFFERENT NGO’S AND CIVIC ORGANIZATIONS TOWARDS ECONOMICAL AND TECHNOLOGICAL ADVANCEMENT PROGRAMS WITH OTHER NEIGHBORING BARANGAYS.","1002202205291386191091_127715385444049_539069205111111680_n.jpg","10022022052806160518964_10159163445694322_6744052724979732332_n.jpg","1002202205225881911472_100533664828888_4395206975080628224_n.jpg");



#
# Delete any existing table `tblchairmanship`
#

DROP TABLE IF EXISTS `tblchairmanship`;


#
# Table structure of table `tblchairmanship`
#



CREATE TABLE `tblchairmanship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblchairmanship VALUES("2","Presiding Officer");
INSERT INTO tblchairmanship VALUES("3","Committee on Appropriation");
INSERT INTO tblchairmanship VALUES("4","Committee on Peace & Order");
INSERT INTO tblchairmanship VALUES("5","Committee on Health");
INSERT INTO tblchairmanship VALUES("6","Committee on Education");
INSERT INTO tblchairmanship VALUES("7","Committee on Rules");
INSERT INTO tblchairmanship VALUES("8","Committee on Infra");
INSERT INTO tblchairmanship VALUES("9","Committee on Solid Waste");
INSERT INTO tblchairmanship VALUES("10","Committee on Sports");
INSERT INTO tblchairmanship VALUES("11","No Chairmanship");



#
# Delete any existing table `tblofficials`
#

DROP TABLE IF EXISTS `tblofficials`;


#
# Table structure of table `tblofficials`
#



CREATE TABLE `tblofficials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `chairmanship` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblofficials VALUES("1","Lauro A. Tuazon Jr.","2","4","2018-05-14","2022-12-05","Active");
INSERT INTO tblofficials VALUES("4","Rico Domanais","3","7","2018-05-14","2022-12-05","Active");
INSERT INTO tblofficials VALUES("5","Gaspar Dela Cruz","4","8","2018-05-14","2022-12-05","Active");
INSERT INTO tblofficials VALUES("6","Renato Dela Cruz","5","9","2018-05-14","2022-12-05","Active");
INSERT INTO tblofficials VALUES("7","Felipe Gonzales","6","10","2018-05-14","2022-12-05","Active");
INSERT INTO tblofficials VALUES("8","Reynaldo Halasan","7","11","2018-05-14","2022-12-05","Active");
INSERT INTO tblofficials VALUES("9","Reynaldo Agapito","8","12","2018-05-14","2022-12-05","Active");
INSERT INTO tblofficials VALUES("10","Jaime Alejandro","9","13","2018-05-14","2022-12-05","Active");
INSERT INTO tblofficials VALUES("11","Jamela Mendoza","10","14","2018-05-14","2022-12-05","Active");
INSERT INTO tblofficials VALUES("12","Jocelyn Castro","11","15","2018-05-14","2022-12-05","Active");
INSERT INTO tblofficials VALUES("13","DIANNE A. CURRY	","11","16","2021-04-03","2021-04-03","Active");



#
# Delete any existing table `tblpayments`
#

DROP TABLE IF EXISTS `tblpayments`;


#
# Table structure of table `tblpayments`
#



CREATE TABLE `tblpayments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(100) DEFAULT NULL,
  `amounts` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblpayments VALUES("5","Business Permit Payment","7000.00","2021-05-19","admin"," Atrium Salon & Studio");
INSERT INTO tblpayments VALUES("6","Certificate of Indigency Payment","3500.00","2021-05-19","admin"," Ronil Gonzales Cajan");
INSERT INTO tblpayments VALUES("7","Barangay Clearance Payment","2500.00","2021-05-19","admin"," Ronil Poe Cajan");
INSERT INTO tblpayments VALUES("8","Business Permit Payment","3500.00","2021-05-18","admin"," Atrium Salon & Studio");
INSERT INTO tblpayments VALUES("9","Business Permit Payment","7000.00","2021-05-18","admin"," Atrium Salon & Studio");
INSERT INTO tblpayments VALUES("10","Business Permit Payment","7500.00","2021-05-18","admin"," Atrium Salon & Studio");
INSERT INTO tblpayments VALUES("11","Certificate of Indigency Payment","5.00","2022-02-10","admin"," Ronil 213213 Cajan");
INSERT INTO tblpayments VALUES("12","Barangay Clearance Payment","25.00","2022-02-10","admin"," Ronil 213213 Cajan");
INSERT INTO tblpayments VALUES("13","Barangay Clearance Payment","345.00","2022-02-10","admin"," Angelica Paderon Joson");
INSERT INTO tblpayments VALUES("14","Certificate of Indigency Payment","235.00","2022-02-10","admin"," Angelica Paderon Joson");
INSERT INTO tblpayments VALUES("15","Business Permit Payment","123.00","2022-02-10","admin"," Atrium Salon & Studio");
INSERT INTO tblpayments VALUES("16","Barangay Clearance Payment","354.00","2022-02-10","admin"," Angelica Paderon Joson");
INSERT INTO tblpayments VALUES("17","Certificate of Indigency Payment","200.00","2022-02-10","admin"," Angelica Paderon Joson");
INSERT INTO tblpayments VALUES("18","Certificate of Indigency Payment","343.00","2022-02-17","admin"," Angelica Paderon Joson");
INSERT INTO tblpayments VALUES("19","Barangay Clearance Payment","232.00","2022-03-01","admin"," Angelica Paderon Joson");



#
# Delete any existing table `tblpermit`
#

DROP TABLE IF EXISTS `tblpermit`;


#
# Table structure of table `tblpermit`
#



CREATE TABLE `tblpermit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `owner1` varchar(200) DEFAULT NULL,
  `owner2` varchar(80) DEFAULT NULL,
  `nature` varchar(220) DEFAULT NULL,
  `applied` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblpermit VALUES("4","SH Food Group 1","SH Food Group 1","SH Food Group 2","SH Food Group 1","2021-04-30");
INSERT INTO tblpermit VALUES("5","Atrium Salon & Studio","SH Food Group 213","","Atrium Salon & Studio","2021-04-30");



#
# Delete any existing table `tblposition`
#

DROP TABLE IF EXISTS `tblposition`;


#
# Table structure of table `tblposition`
#



CREATE TABLE `tblposition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblposition VALUES("4","Captain","1");
INSERT INTO tblposition VALUES("7","Councilor 1","2");
INSERT INTO tblposition VALUES("8","Councilor 2","3");
INSERT INTO tblposition VALUES("9","Councilor 3","4");
INSERT INTO tblposition VALUES("10","Councilor 4","5");
INSERT INTO tblposition VALUES("11","Councilor 5","6");
INSERT INTO tblposition VALUES("12","Councilor 6","7");
INSERT INTO tblposition VALUES("13","Councilor 7","8");
INSERT INTO tblposition VALUES("14","SK Chairman","9");
INSERT INTO tblposition VALUES("15","Secretary","10");
INSERT INTO tblposition VALUES("16","Treasurer","11");



#
# Delete any existing table `tblprecinct`
#

DROP TABLE IF EXISTS `tblprecinct`;


#
# Table structure of table `tblprecinct`
#



CREATE TABLE `tblprecinct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precinct` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




#
# Delete any existing table `tblpurok`
#

DROP TABLE IF EXISTS `tblpurok`;


#
# Table structure of table `tblpurok`
#



CREATE TABLE `tblpurok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblpurok VALUES("1","Purok 1","Tikang Kanda Babon ngadto liwat kanda Babon");
INSERT INTO tblpurok VALUES("2","Purok 2","Amon ngadto ira");
INSERT INTO tblpurok VALUES("3","Purok 3","afawewqeqweqweqw");
INSERT INTO tblpurok VALUES("4","Purok 4","dsfdsf");
INSERT INTO tblpurok VALUES("5","Purok 5","rewrew");
INSERT INTO tblpurok VALUES("6","Purok 6","rewrewr");
INSERT INTO tblpurok VALUES("7","Purok 7","rew");
INSERT INTO tblpurok VALUES("8","Purok 7","rew");



#
# Delete any existing table `tblresident`
#

DROP TABLE IF EXISTS `tblresident`;


#
# Table structure of table `tblresident`
#



CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `national_id` varchar(100) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `picture` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `middlename` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `alias` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `birthplace` varchar(80) CHARACTER SET utf8mb4 DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `civilstatus` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `purok` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `voterstatus` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `identified_as` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `resident_type` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;

INSERT INTO tblresident VALUES("181","09094038493","filipino","person.png","Angelica","Paderon","Joson","Lyka","Marikina","1999-04-09","23","Single","Female","Purok 1","Yes","Negative","09358801391","josonangelicamariepaderon.pdm@gmail.com","Student","0339 Alejandro St. Bunducan Bocaue Bulacan","1","");

