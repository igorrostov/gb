/*
TABLE STRUCTURE FOR: users
*/ 

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'User',
  `f_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`user_id`, `email`, `name`, `f_name`, `birthday`) VALUES (1, 'mallory54@gmail.com', 'Beau', 'Dicki', '1985-02-11');
INSERT INTO `users` (`user_id`, `email`, `name`, `f_name`, `birthday`) VALUES (2, 'mayer.susana@purdygraham.info', 'Eduardo', 'Lueilwitz', '1972-03-08');
INSERT INTO `users` (`user_id`, `email`, `name`, `f_name`, `birthday`) VALUES (3, 'cassidy07@parker.net', 'Damian', 'Senger', '2009-12-23');
INSERT INTO `users` (`user_id`, `email`, `name`, `f_name`, `birthday`) VALUES (4, 'botsford.ruthie@kuhic.com', 'Henry', 'Aufderhar', '2009-12-07');
INSERT INTO `users` (`user_id`, `email`, `name`, `f_name`, `birthday`) VALUES (5, 'berniece68@schulist.com', 'Harrison', 'Lubowitz', '1981-09-13');
INSERT INTO `users` (`user_id`, `email`, `name`, `f_name`, `birthday`) VALUES (6, 'johnnie47@yahoo.com', 'Dylan', 'Anderson', '1985-07-12');
INSERT INTO `users` (`user_id`, `email`, `name`, `f_name`, `birthday`) VALUES (7, 'wbosco@mills.net', 'Rico', 'Leannon', '1978-12-21');
INSERT INTO `users` (`user_id`, `email`, `name`, `f_name`, `birthday`) VALUES (8, 'oberbrunner.dora@swift.com', 'Enrique', 'Fisher', '2013-04-05');
INSERT INTO `users` (`user_id`, `email`, `name`, `f_name`, `birthday`) VALUES (9, 'czieme@sanford.org', 'Felipa', 'Botsford', '2008-05-04');
INSERT INTO `users` (`user_id`, `email`, `name`, `f_name`, `birthday`) VALUES (10, 'qnader@bogisichweber.biz', 'Arianna', 'Wilkinson', '1992-06-22');


















