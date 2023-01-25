

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema twitter
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema twitter
-- -----------------------------------------------------
#CREATE SCHEMA IF NOT EXISTS `twitter` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `twitter` ;
Drop Database If exists twitter;
create database twitter; 
use twitter;
-- -----------------------------------------------------
-- Table `twitter`.`user`
-- -----------------------------------------------------
CREATE TABLE `user` (
  `id` INT NOT NULL,
  `username` VARCHAR(40) Unique,
  `email` VARCHAR(255),
  `password` VARCHAR(32),
  `name` VARCHAR(40),
  PRIMARY KEY (`id`)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf16
COLLATE = utf16_unicode_ci;

insert into user values (1,'gguddeti','gguddeti@twitter.com','jrVWx-!bbdL&E3-=','guddeti');
insert into user values (2,'vdadam','vdadam@twitter.com','i*qLb2o~Hy5=m@VZ','dadam');
insert into user values (3,'gggiri','gggiri@twitter.com','P9_tc=GLN2!YFo&P','ggiri');
insert into user values (4,'pnikhil','pnikhil@twitter.com','rLrx_lFXrYDuxKAi','nikhil')    ;
insert into user values (5,'ysindu','ysindu@twitter.com','z1^tsU8735UNW9m@','sindu')       ;
insert into user values (6,'kteja','kteja@twitter.com','9qDv03V900R?EVv-','teja')          ;
insert into user values (7,'klaxman','klaxman@twitter.com','l9ejMoweOD7CsKY^','laxman')    ;
insert into user values (8,'kkush','kkush@twitter.com','p8WBQ=!Qn9@vtTmj','kush')          ;
insert into user values (9,'aabhi','aabhiv@twitter.com','sthpb1AZt%V%Z9aA','abhi')         ;
insert into user values (10,'vvenu','vvenu@twitter.com','r7r3XO%fo7CVv25=','venu')         ;
insert into user values (11,'ppuneeth','ppuneeth@twitter.com','LM5r^QD0k^hPZkIH','puneeth');
insert into user values (12,'rrahul','rrahul@twitter.com','sZxQ2msGM@5zB=RE','rahul')      ;
insert into user values (13,'bbharath','bbharath@twitter.com','3P9sL20NVP_Av-7v','bharath');
insert into user values (14,'ggggg','ggggg@twitter.com','EX1~A28eTqEU8C1p','gggg')         ;
insert into user values (15,'heshgg','heshgg@twitter.com','2%2t4mQPtgiTG34I','eshgg')      ;
insert into user values (16,'hdhdhd','hdhdhd@twitter.com','i$9ho1aFdl~0TsFs','dhdhd')      ;
insert into user values (17,'ggtwt','ggtwt@twitter.com','Nu-L42wxOF9Qc*M?','gtwt')         ;
insert into user values (18,'rramesh','rramesh@twitter.com','mNa8=4+2Ld2_lp%m','ramesh')   ;
insert into user values (19,'sshiba','sshiba@twitter.com','4~fNCyzXsGyxsjKl','shiba')      ;
insert into user values (20,'sshiva','sshiva@twitter.com','896ngB%4#VAdZ62h','shiva')      ;
insert into user values (21,'kkavya','kkavya@twitter.com','uX-~ClPYZLet88v@','kavya')      ;
insert into user values (22,'ssubbu','ssubbu@twitter.com','c711=nN?IpC%eYmp','subbu')      ;
insert into user values (23,'ssai','ssai@twitter.com','SkDb&AC8Q9Bz%0B3','sai')            ;
insert into user values (24,'mmanju','mmanju@twitter.com','6!%eSf!on%n4o%d*','manju')      ;
insert into user values (25,'aashok','aashok@twitter.com','ysoiArcgvn?36VQU','ashok')      ;
insert into user values (26,'mmaha','mmaha@twitter.com','GLeYn~*8IeMTXEQu','maha');
insert into user values (27,'ssaibalaji','ssaibalaji@twitter.com','F2*49Y$@n%9XBF*S','saibalaji');
insert into user values (28,'ggk','ggk@twitter.com','2D+keS6OVwl39j0%','gk');
insert into user values (29,'aargo','aargo@twitter.com','TE?ZY5cukps@mxv1','argo');
insert into user values (30,'mmallesh','mmallesh@twitter.com','5gw&W6OZ2hKhW7C@','mallesh');
insert into user values (31,'bbirender','bbirender@twitter.com','74a^vz*IZNb2jx8H','birender');
insert into user values (32,'yyash','yyash@twitter.com','DW3z8-?+z0RhP!0e','yash');
insert into user values (33,'mmani','mmani@twitter.com','Il+7_~xvdSMR+1pQ','mani');
insert into user values (34,'hhari','hhari@twitter.com','yxN?L*&2P9zrwZBd','hari');
insert into user values (35,'hharsha','hharsha@twitter.com','Q1%5iUNUbqVU77Ey','harsha');
insert into user values (36,'mkanta','mkanta@twitter.com','7Ph4048fvqhKAoO1','kanta');
insert into user values (37,'kkonda','kkonda@twitter.com','H5Vw0K8c9loR3~vb','konda');
insert into user values (38,'Aawaiz','Aawaiz@twitter.com','cbF8U06Nmf2z2gc!','awaiz');


-- -----------------------------------------------------
-- Table `twitter`.`posts`
-- -----------------------------------------------------
 CREATE TABLE `posts` (
  `id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `post_on` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  CONSTRAINT `posts_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `twitter`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf16
COLLATE = utf16_unicode_ci;

insert into posts values (678,23,'2022-06-01 10:00:45.567890');
insert into posts values (679,24,'2022-06-21 10:50:01.56400');
insert into posts values (680,25,'2022-06-01 10:00:45.567890');
insert into posts values (681,26,'2022-06-01 10:00:45.567890');
insert into posts values (682,27,'2022-06-01 10:00:45.567890');
insert into posts values (683,28,'2022-06-01 10:00:45.567890');
insert into posts values (684,29,'2022-06-01 10:00:45.567890');
insert into posts values (685,30,'2022-06-01 10:00:45.567890');
insert into posts values (686,31,'2022-06-01 10:00:45.567890');
insert into posts values (687,85,'2022-06-01 10:00:45.567890');
insert into posts values (688,86,'2022-06-01 10:00:45.567890');
insert into posts values (689,87,'2022-06-01 10:00:45.567890');
insert into posts values (690,88,'2022-06-01 10:00:45.567890');
insert into posts values (123,89,'2022-06-01 10:00:45.567890');
insert into posts values (124,90,'2022-06-01 10:00:45.567890');
insert into posts values (125,91,'2022-06-01 10:00:45.567890');
insert into posts values (126,92,'2022-06-01 10:00:45.567890');
insert into posts values (127,93,'2022-06-01 10:00:45.567890');
insert into posts values (128,94,'2022-06-01 10:00:45.567890');
insert into posts values (129,95,'2022-06-01 10:00:45.567890');
insert into posts values (130,96,'2022-06-01 10:00:45.567890');
insert into posts values (131,97,'2022-06-01 10:00:45.567890');
insert into posts values (132,98,'2022-06-01 10:00:45.567890');
insert into posts values (133,99,'2022-06-01 10:00:45.567890');
insert into posts values (134,55,'2022-06-01 10:00:45.567890');
insert into posts values (135,56,'2022-06-01 10:00:45.567890');
insert into posts values (712,57,'2022-06-01 10:00:45.567890');
insert into posts values (713,58,'2022-06-01 10:00:45.567890');
insert into posts values (714,59,'2022-06-01 10:00:45.567890');
insert into posts values (715,60,'2022-06-01 10:00:45.567890');
insert into posts values (716,61,'2022-06-01 10:00:45.567890');
insert into posts values (717,62,'2022-06-01 10:00:45.567890');
insert into posts values (718,63,'2022-06-01 10:00:45.567890');
insert into posts values (719,64,'2022-06-01 10:00:45.567890');
insert into posts values (720,65,'2022-06-01 10:00:45.567890');
insert into posts values (721,66,'2022-06-01 10:00:45.567890');
insert into posts values (722,67,'2022-06-01 10:00:45.567890');
insert into posts values (723,68,'2022-06-01 10:00:45.567890');
insert into posts values (724,69,'2022-06-01 10:00:45.567890');
insert into posts values (725,70,'2022-06-01 10:00:45.567890');
insert into posts values (726,71,'2022-06-01 10:00:45.567890');
insert into posts values (727,72,'2022-06-01 10:00:45.567890');
insert into posts values (728,73,'2022-06-01 10:00:45.567890');
insert into posts values (729,74,'2022-06-01 10:00:45.567890');
insert into posts values (730,75,'2022-06-01 10:00:45.567890');
insert into posts values (731,76,'2022-06-01 10:00:45.567890');
insert into posts values (732,45,'2022-06-01 10:00:45.567890');
insert into posts values (733,46,'2022-06-01 10:00:45.567890');
insert into posts values (734,47,'2022-06-01 10:00:45.567890');
insert into posts values (735,48,'2022-06-01 10:00:45.567890');
insert into posts values (736,49,'2022-06-01 10:00:45.567890');
insert into posts values (737,50,'2022-06-01 10:00:45.567890');
insert into posts values (738,51,'2022-06-01 10:00:45.567890');
insert into posts values (739,52,'2022-06-01 10:00:45.567890');

-- -----------------------------------------------------
-- Table `twitter`.`comments`
-- -----------------------------------------------------
CREATE TABLE `comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(140),
  `user_id` INT NOT NULL,
  `post_id` INT NOT NULL,
  `time` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `post_id` (`post_id` ASC) VISIBLE,
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  CONSTRAINT `comments_ibfk_1`
    FOREIGN KEY (`post_id`)
    REFERENCES `twitter`.`posts` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `comments_ibfk_2`
    FOREIGN KEY (`user_id`)
    REFERENCES `twitter`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 46
DEFAULT CHARACTER SET = utf16
COLLATE = utf16_unicode_ci;

insert into comments values (713,'Good Job',568,985,'2022-06-01 10:00:45.567890');
insert into comments values (714,'Nice ',569,986,'2022-06-01 10:00:45.567890');
insert into comments values (715,'ABCD',570,987,'2022-06-01 10:00:45.567890');
insert into comments values (716,'HIJK',571,988,'2022-06-01 10:00:45.567890');
insert into comments values (717,'MNOP',572,989,'2022-06-01 10:00:45.567890');
insert into comments values (718,'wonderful',573,990,'2022-06-01 10:00:45.567890');
insert into comments values (719,'ABCD',574,991,'2022-06-01 10:00:45.567890');
insert into comments values (720,'hijk',575,992,'2022-06-01 10:00:45.567890');
insert into comments values (721,'bcdp',576,993,'2022-06-01 10:00:45.567890');
insert into comments values (722,'yuiop',577,994,'2022-06-01 10:00:45.567890');
insert into comments values (723,'hdbjuye',578,995,'2022-06-01 10:00:45.567890');
insert into comments values (724,'dnhd',579,996,'2022-06-01 10:00:45.567890');
insert into comments values (725,'opjee',580,997,'2022-06-01 10:00:45.567890');
insert into comments values (726,'fine',581,998,'2022-06-01 10:00:45.567890');
insert into comments values (727,'acceptable',582,999,'2022-06-01 10:00:45.567890');
insert into comments values (728,'in order',583,1000,'2022-06-01 10:00:45.567890');
insert into comments values (729,'Quality',584,1001,'2022-06-01 10:00:45.567890');
insert into comments values (730,'superior',585,1002,'2022-06-01 10:00:45.567890');
insert into comments values (731,'clean',586,1003,'2022-06-01 10:00:45.567890');
insert into comments values (732,'bggdd',587,1004,'2022-06-01 10:00:45.567890');
insert into comments values (733,'hdhhd',588,1005,'2022-06-01 10:00:45.567890');
insert into comments values (734,'abcd',589,1006,'2022-06-01 10:00:45.567890');
insert into comments values (735,'efgh',590,1007,'2022-06-01 10:00:45.567890');
insert into comments values (736,'ijkl',591,1008,'2022-06-01 10:00:45.567890');
insert into comments values (737,'mnop',592,1009,'2022-06-01 10:00:45.567890');
insert into comments values (738,'qrst',593,1010,'2022-06-01 10:00:45.567890');
insert into comments values (739,'yuvwxy',594,1011,'2022-06-01 10:00:45.567890');
insert into comments values (740,'qwert',595,1012,'2022-06-01 10:00:45.567890');
insert into comments values (741,'tyui',596,1013,'2022-06-01 10:00:45.567890');
insert into comments values (742,'opps',597,1014,'2022-06-01 10:00:45.567890');
insert into comments values (743,'hshhs',598,1015,'2022-06-01 10:00:45.567890');
insert into comments values (744,'smile',599,1016,'2022-06-01 10:00:45.567890');
insert into comments values (745,'star',600,1017,'2022-06-01 10:00:45.567890');
insert into comments values (746,'unstopable',601,1018,'2022-06-01 10:00:45.567890');
insert into comments values (747,'unique',602,1019,'2022-06-01 10:00:45.567890');
insert into comments values (748,'Good Job',603,1020,'2022-06-01 10:00:45.567890');
insert into comments values (749,'face with tears',604,1021,'2022-06-01 10:00:45.567890');
insert into comments values (750,'zany face ',605,1022,'2022-06-01 10:00:45.567890');
insert into comments values (751,' Relieved face ',606,1023,'2022-06-01 10:00:45.567890');
insert into comments values (752,'sleeping face ',607,1024,'2022-06-01 10:00:45.567890');
insert into comments values (753,'crying face',608,1025,'2022-06-01 10:00:45.567890');
insert into comments values (754,'hsusd',609,1026,'2022-06-01 10:00:45.567890');
insert into comments values (755,'hhdggd',610,1027,'2022-06-01 10:00:45.567890');
insert into comments values (756,'tytye',611,1028,'2022-06-01 10:00:45.567890');
insert into comments values (757,'tiny',612,1029,'2022-06-01 10:00:45.567890');
insert into comments values (758,'lying',613,1030,'2022-06-01 10:00:45.567890');
insert into comments values (759,'grimacing',614,1031,'2022-06-01 10:00:45.567890');
insert into comments values (760,'sleepy',615,1032,'2022-06-01 10:00:45.567890');
insert into comments values (761,'drooling',616,1033,'2022-06-01 10:00:45.567890');
insert into comments values (762,'abcd',617,1034,'2022-06-01 10:00:45.567890');
insert into comments values (763,'medical face',618,1035,'2022-06-01 10:00:45.567890');
insert into comments values (764,'mask face ',619,1036,'2022-06-01 10:00:45.567890');
insert into comments values (765,'party',620,1037,'2022-06-01 10:00:45.567890');
insert into comments values (766,'cold face',621,1038,'2022-06-01 10:00:45.567890');


-- -----------------------------------------------------
-- Table `twitter`.`follow`
-- -----------------------------------------------------
CREATE TABLE `follow` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `follower_id` INT NOT NULL,
  `following_id` INT NOT NULL,
  `time` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `follower_id` (`follower_id` ASC) VISIBLE,
  INDEX `following_id` (`following_id` ASC) VISIBLE,
  CONSTRAINT `follow_ibfk_1`
    FOREIGN KEY (`follower_id`)
    REFERENCES `twitter`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `follow_ibfk_2`
    FOREIGN KEY (`following_id`)
    REFERENCES `twitter`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 136
DEFAULT CHARACTER SET = utf16
COLLATE = utf16_unicode_ci;

insert into follow values (79,237,567,'2022-06-01 10:00:45.567890') ;
insert into follow values (80,238,568,'2022-06-01 10:00:45.567890') ; 
insert into follow values (81,239,569,'2022-06-01 10:00:45.567890')  ;
insert into follow values (82,240,570,'2022-06-01 10:00:45.567890')  ;
insert into follow values (83,241,571,'2022-06-01 10:00:45.567890')  ;
insert into follow values (84,242,572,'2022-06-01 10:00:45.567890')  ;
insert into follow values (85,243,573,'2022-06-01 10:00:45.567890') ;
insert into follow values (86,244,574,'2022-06-01 10:00:45.567890') ;
insert into follow values (87,245,575,'2022-06-01 10:00:45.567890') ;
insert into follow values (88,246,576,'2022-06-01 10:00:45.567890') ;
insert into follow values (89,247,577,'2022-06-01 10:00:45.567890') ;
insert into follow values (90,248,578,'2022-06-01 10:00:45.567890') ;
insert into follow values (91,249,579,'2022-06-01 10:00:45.567890') ;
insert into follow values (92,250,580,'2022-06-01 10:00:45.567890') ;
insert into follow values (93,251,581,'2022-06-01 10:00:45.567890') ;
insert into follow values (94,252,582,'2022-06-01 10:00:45.567890') ;
insert into follow values (95,890,583,'2022-06-01 10:00:45.567890') ;
insert into follow values (96,891,584,'2022-06-01 10:00:45.567890') ;
insert into follow values (97,892,585,'2022-06-01 10:00:45.567890') ;
insert into follow values (98,893,586,'2022-06-01 10:00:45.567890') ;
insert into follow values (99,894,587,'2022-06-01 10:00:45.567890') ;
insert into follow values (100,895,588,'2022-06-01 10:00:45.567890');
insert into follow values (101,896,589,'2022-06-01 10:00:45.567890') ;
insert into follow values (102,897,590,'2022-06-01 10:00:45.567890') ;
insert into follow values (103,898,591,'2022-06-01 10:00:45.567890') ;
insert into follow values (104,899,592,'2022-06-01 10:00:45.567890') ;
insert into follow values (105,900,593,'2022-06-01 10:00:45.567890') ;
insert into follow values (106,901,594,'2022-06-01 10:00:45.567890') ;
insert into follow values (107,902,595,'2022-06-01 10:00:45.567890');
insert into follow values (108,903,596,'2022-06-01 10:00:45.567890');
insert into follow values (109,904,597,'2022-06-01 10:00:45.567890');
insert into follow values (110,905,598,'2022-06-01 10:00:45.567890');
insert into follow values (111,906,935,'2022-06-01 10:00:45.567890');
insert into follow values (112,907,936,'2022-06-01 10:00:45.567890');
insert into follow values (113,345,937,'2022-06-01 10:00:45.567890');
insert into follow values (114,346,938,'2022-06-01 10:00:45.567890');
insert into follow values (115,347,939,'2022-06-01 10:00:45.567890');
insert into follow values (116,348,940,'2022-06-01 10:00:45.567890');
insert into follow values (117,349,941,'2022-06-01 10:00:45.567890');
insert into follow values (118,350,942,'2022-06-01 10:00:45.567890');
insert into follow values (119,351,943,'2022-06-01 10:00:45.567890');
insert into follow values (120,352,944,'2022-06-01 10:00:45.567890');
insert into follow values (121,353,945,'2022-06-01 10:00:45.567890');
insert into follow values (122,354,946,'2022-06-01 10:00:45.567890') ;
insert into follow values (123,355,947,'2022-06-01 10:00:45.567890') ;
insert into follow values (124,356,948,'2022-06-01 10:00:45.567890') ;
insert into follow values (125,357,949,'2022-06-01 10:00:45.567890') ;
insert into follow values (126,358,950,'2022-06-01 10:00:45.567890') ;
insert into follow values (127,359,951,'2022-06-01 10:00:45.567890') ;
insert into follow values (128,360,952,'2022-06-01 10:00:45.567890');
insert into follow values (129,361,953,'2022-06-01 10:00:45.567890');
insert into follow values (130,362,954,'2022-06-01 10:00:45.567890');
insert into follow values (131,363,955,'2022-06-01 10:00:45.567890');
insert into follow values (132,364,956,'2022-06-01 10:00:45.567890');


-- -----------------------------------------------------
-- Table `twitter`.`likes`
-- -----------------------------------------------------
CREATE TABLE `likes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `post_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  INDEX `likes_ibfk_2` (`post_id` ASC) VISIBLE,
  CONSTRAINT `likes_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `twitter`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_2`
    FOREIGN KEY (`post_id`)
    REFERENCES `twitter`.`posts` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 228
DEFAULT CHARACTER SET = utf16
COLLATE = utf16_unicode_ci;

insert into likes values(228,1,25);
insert into likes values(229,2,26);
insert into likes values(230,3,27);
insert into likes values(231,4,28);
insert into likes values(232,5,29);
insert into likes values(233,6,30);
insert into likes values(234,7,31);
insert into likes values(235,8,32);
insert into likes values(236,9,33);
insert into likes values(237,10,34);
insert into likes values(238,11,35);
insert into likes values(239,12,36);
insert into likes values(240,13,37);
insert into likes values(241,14,38);
insert into likes values(242,15,39);
insert into likes values(243,16,40);
insert into likes values(244,17,41);
insert into likes values(245,18,42);
insert into likes values(246,56,123);
insert into likes values(247,57,124);
insert into likes values(248,58,125);
insert into likes values(249,59,126);
insert into likes values(250,60,127);
insert into likes values(251,61,128);
insert into likes values(252,62,129);
insert into likes values(253,63,130);
insert into likes values(254,64,131);
insert into likes values(255,65,132);
insert into likes values(256,66,133);
insert into likes values(257,67,750);
insert into likes values(258,68,751);
insert into likes values(259,69,752);
insert into likes values(260,70,753);
insert into likes values(261,71,754);
insert into likes values(262,72,755);
insert into likes values(263,91,756);
insert into likes values(264,92,757);
insert into likes values(265,93,758);
insert into likes values(266,94,759);

- -----------------------------------------------------
-- Table `twitter`.`Credentials`
-- -----------------------------------------------------
CREATE TABLE `Credentials` (
  `id` INT NOT NULL ,
  `username` VARCHAR(40),
  `user_password` VARCHAR(10),
  `mailid` VARCHAR(120) NOT NULL,
  `mobilenumber` VARCHAR(10),
  `otp` INT NOT NULL,
  PRIMARY KEY (`id`),
  Foreign Key(`id`) 
    REFERENCES `twitter`.`user` (`id`)
  );

insert into credentials values (1,'123','12345','abc123@gmail.com','8015889787',1);
insert into credentials values (2,'223','fgk#22345','abc256@gmail.com',8025889787,2);
insert into credentials values (3,'323','fgk#32345','abc596@gmail.com',8035889787,3);
insert into credentials values (4,'423','fgk#42345','abc@gmail.com',8045889787,4);
insert into credentials values (5,'523','fgk#52345','abc@gmail.com',8055889787,5);
insert into credentials values (6,'623','fgk#62345','abc@gmail.com',8065889787,6);
insert into credentials values (7,'723','fgk#72345','abc@gmail.com',8075889787,7);
insert into credentials values (8,'823','fgk#82345','abc@gmail.com',8085889787,8);
insert into credentials values (9,'923','fgk#92345','abc@gmail.com',8095889787,9);
insert into credentials values (10,'1023','fgk#102345','abc@gmail.com',8105889787,10);
insert into credentials values (11,'1123','fgk#112345','abc@gmail.com',8115889787,11);
insert into credentials values (12,'1223','fgk#122345','abc@gmail.com',8125889787,1);
insert into credentials values (13,'abc@1323','fgk#132345','abc@gmail.com',8135889787,13);
insert into credentials values (14,'abc@1423','fgk#142345','abc@gmail.com',8145889787,14);
insert into credentials values (15,'abc@1523','fgk#152345','abc@gmail.com',8155889787,15);
insert into credentials values (16,'abc@1623','fgk#162345','abc@gmail.com',8165889787,16);
insert into credentials values (17,'abc@1723','fgk#172345','abc@gmail.com',8175889787,17);
insert into credentials values (18,'abc@1823','fgk#182345','abc@gmail.com',8185889787,18);
insert into credentials values (19,'abc@1923','fgk#192345','abc@gmail.com',8195889787,19);
insert into credentials values (20,'abc@2023','fgk#202345','abc@gmail.com',8205889787,20);
insert into credentials values (21,'abc@2123','fgk#212345','abc@gmail.com',8215889787,21);
insert into credentials values (22,'abc@2223','fgk#222345','abc@gmail.com',8225889787,22);
insert into credentials values (23,'abc@2323','fgk#232345','abc@gmail.com',8235889787,23);
insert into credentials values (24,'abc@2423','fgk#242345','abc@gmail.com',8245889787,24);
insert into credentials values (25,'abc@2523','fgk#252345','abc@gmail.com',8255889787,25);
insert into credentials values (26,'abc@2623','fgk#262345','abc@gmail.com',8265889787,26);
insert into credentials values (27,'abc@2723','fgk#272345','abc@gmail.com',8275889787,27);
insert into credentials values (28,'abc@2823','fgk#282345','abc@gmail.com',8285889787,28);
insert into credentials values (29,'abc@2923','fgk#292345','abc@gmail.com',8295889787,29);
insert into credentials values (30,'abc@3023','fgk#302345','abc@gmail.com',8305889787,30);
insert into credentials values (31,'abc@3123','fgk#312345','abc@gmail.com',8315889787,31);
insert into credentials values (32,'abc@3223','fgk#322345','abc@gmail.com',8325889787,32);
insert into credentials values (33,'abc@3323','fgk#332345','abc@gmail.com',8335889787,33);
insert into credentials values (34,'abc@3423','fgk#342345','abc@gmail.com',8345889787,34);
insert into credentials values (35,'abc@3523','fgk#352345','abc@gmail.com',8355889787,35);
insert into credentials values (36,'abc@3623','fgk#362345','abc@gmail.com',8365889787,36);
insert into credentials values (37,'abc@3723','fgk#372345','abc@gmail.com',8375889787,37);
insert into credentials values (38,'abc@3823','fgk#382345','abc@gmail.com',8385889787,38);
insert into credentials values (39,'abc@3923','fgk#392345','abc@gmail.com',8395889787,39);
insert into credentials values (40,'abc@4023','fgk#402345','abc@gmail.com',8405889787,40);
insert into credentials values (41,'abc@4123','fgk#412345','abc@gmail.com',8415889787,41);
insert into credentials values (42,'abc@4223','fgk#422345','abc@gmail.com',8425889787,42);
insert into credentials values (43,'abc@4323','fgk#432345','abc@gmail.com',8435889787,43);
insert into credentials values (44,'abc@4423','fgk#442345','abc@gmail.com',8445889787,44);
insert into credentials values (45,'abc@4523','fgk#452345','abc@gmail.com',8455889787,45);
insert into credentials values (46,'abc@4623','fgk#462345','abc@gmail.com',8465889787,46);
insert into credentials values (47,'abc@4723','fgk#472345','abc@gmail.com',8475889787,47);
insert into credentials values (48,'abc@4823','fgk#482345','abc@gmail.com',8485889787,48);
insert into credentials values (49,'abc@4923','fgk#492345','abc@gmail.com',8495889787,49);
insert into credentials values (50,'abc@5023','fgk#502345','abc@gmail.com',8505889787,50);
insert into credentials values (51,'abc@5123','fgk#512345','abc@gmail.com',8515889787,51);
insert into credentials values (52,'abc@5223','fgk#522345','abc@gmail.com',8525889787,52);
insert into credentials values (53,'abc@5323','fgk#532345','abc@gmail.com',8535889787,53);
insert into credentials values (54,'abc@5423','fgk#542345','abc@gmail.com',8545889787,54);
insert into credentials values (55,'abc@5523','fgk#552345','abc@gmail.com',8555889787,55);
insert into credentials values (56,'abc@5623','fgk#562345','abc@gmail.com',8565889787,56);
insert into credentials values (57,'abc@5723','fgk#572345','abc@gmail.com',8575889787,56);


