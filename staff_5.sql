/*
TABLE STRUCTURE FOR: staff 
*/

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staff_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `f_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `death_date` date DEFAULT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `staff` (`staff_id`, `name`, `f_name`, `birthdate`, `birth_place`, `death_date`, `sex`) VALUES (1, 'Urban', 'Bruen', '1975-10-23', 'West Maribelberg', NULL, 'f');
INSERT INTO `staff` (`staff_id`, `name`, `f_name`, `birthdate`, `birth_place`, `death_date`, `sex`) VALUES (2, 'Garth', 'Moore', '1983-04-10', 'Dixieborough', NULL, 'm');
INSERT INTO `staff` (`staff_id`, `name`, `f_name`, `birthdate`, `birth_place`, `death_date`, `sex`) VALUES (3, 'Jeffry', 'Cummings', '2019-03-22', 'New Sheridanmouth', NULL, 'f');
INSERT INTO `staff` (`staff_id`, `name`, `f_name`, `birthdate`, `birth_place`, `death_date`, `sex`) VALUES (4, 'Jayce', 'Bayer', '2019-04-08', 'Prohaskamouth', NULL, 'f');
INSERT INTO `staff` (`staff_id`, `name`, `f_name`, `birthdate`, `birth_place`, `death_date`, `sex`) VALUES (5, 'Hardy', 'Jacobi', '2012-08-12', 'Ryanburgh', NULL, 'f');
INSERT INTO `staff` (`staff_id`, `name`, `f_name`, `birthdate`, `birth_place`, `death_date`, `sex`) VALUES (6, 'Donnell', 'Hand', '1998-11-02', 'New Maverickland', NULL, 'm');
INSERT INTO `staff` (`staff_id`, `name`, `f_name`, `birthdate`, `birth_place`, `death_date`, `sex`) VALUES (7, 'Albin', 'Anderson', '2018-06-08', 'Port Christaton', NULL, 'f');
INSERT INTO `staff` (`staff_id`, `name`, `f_name`, `birthdate`, `birth_place`, `death_date`, `sex`) VALUES (8, 'Kaleigh', 'Spinka', '1998-03-13', 'O\'Connerton', NULL, 'f');
INSERT INTO `staff` (`staff_id`, `name`, `f_name`, `birthdate`, `birth_place`, `death_date`, `sex`) VALUES (9, 'Kennith', 'Effertz', '1999-03-11', 'Schoenmouth', NULL, 'm');
INSERT INTO `staff` (`staff_id`, `name`, `f_name`, `birthdate`, `birth_place`, `death_date`, `sex`) VALUES (10, 'Chelsey', 'Goldner', '1992-04-03', 'Nameport', NULL, 'f');


























