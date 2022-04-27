/*
 TABLE STRUCTURE FOR: movie 
 100 movies
*/
DROP TABLE IF EXISTS `movie` 

CREATE TABLE `movie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `moto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `duration` smallint(5) unsigned DEFAULT NULL,
  `budget` int(10) DEFAULT NULL,
  `grosses_usa` int(10) DEFAULT NULL,
  `grosses_all` int(10) DEFAULT NULL,
  `first_performance` date DEFAULT NULL,
  `firts_performance_russia` date DEFAULT NULL,
  `tv_show` set('0','1') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `movie` (`id`, `name`, `moto`, `year`, `duration`, `budget`, `grosses_usa`, `grosses_all`, `first_performance`, `first_performance_russia`, `tv_show`) VALUES (1, 'Dolores voluptas nemo accusantium vel.', 'Aliquid doloremque perferendis qui recusandae praesentium ut.', '1980', 130, 187962793, 869018, 68173, '2008-04-22', '2005-10-12', '1');
INSERT INTO `movie` (`id`, `name`, `moto`, `year`, `duration`, `budget`, `grosses_usa`, `grosses_all`, `first_performance`, `first_performance_russia`, `tv_show`) VALUES (2, 'Molestias harum aut quidem nostrum.', 'Eaque nesciunt facilis amet excepturi optio.', '2019', 113, 638627708, 223214, 483687, '1981-08-27', '1977-02-04', '1');
INSERT INTO `movie` (`id`, `name`, `moto`, `year`, `duration`, `budget`, `grosses_usa`, `grosses_all`, `first_performance`, `first_performance_russia`, `tv_show`) VALUES (3, 'Perferendis sit maiores tempore quae velit consequuntur.', 'Consequuntur aut et officiis nihil laboriosam error.', '2009', 123, 550684034, 388756, 784862, '2016-12-25', '1973-10-20', '0');
INSERT INTO `movie` (`id`, `name`, `moto`, `year`, `duration`, `budget`, `grosses_usa`, `grosses_all`, `first_performance`, `first_performance_russia`, `tv_show`) VALUES (4, 'Ipsam ipsum est suscipit eum nihil.', 'Qui fuga quo et dolores est qui.', '2018', 155, 40182354, 536274, 220716, '2010-12-16', '2017-12-19', '1');
INSERT INTO `movie` (`id`, `name`, `moto`, `year`, `duration`, `budget`, `grosses_usa`, `grosses_all`, `first_performance`, `first_performance_russia`, `tv_show`) VALUES (5, 'Temporibus quia asperiores quia ab et sit.', 'Earum eius dolor modi veritatis consequuntur.', '2018', 121, 298128346, 602420, 909256, '2014-02-19', '1970-04-27', '');
INSERT INTO `movie` (`id`, `name`, `moto`, `year`, `duration`, `budget`, `grosses_usa`, `grosses_all`, `first_performance`, `first_performance_russia`, `tv_show`) VALUES (6, 'Recusandae quis est cum et.', 'Et iusto qui eos.', '2011', 162, 589347127, 254223, 649562, '1974-05-09', '1974-05-31', '1');
INSERT INTO `movie` (`id`, `name`, `moto`, `year`, `duration`, `budget`, `grosses_usa`, `grosses_all`, `first_performance`, `first_performance_russia`, `tv_show`) VALUES (7, 'Dolores totam labore et ipsam.', 'Totam aut natus est molestias sit.', '1995', 88, 31234741, 712585, 254898, '1995-04-15', '2007-09-05', '');
INSERT INTO `movie` (`id`, `name`, `moto`, `year`, `duration`, `budget`, `grosses_usa`, `grosses_all`, `first_performance`, `first_performance_russia`, `tv_show`) VALUES (8, 'Ipsam perferendis vitae voluptas.', 'Provident doloremque ad perferendis impedit.', '1979', 154, 396957197, 127892, 661406, '1973-02-05', '2012-06-21', '0');
INSERT INTO `movie` (`id`, `name`, `moto`, `year`, `duration`, `budget`, `grosses_usa`, `grosses_all`, `first_performance`, `first_performance_russia`, `tv_show`) VALUES (9, 'Dolor totam natus totam et aut.', 'Deserunt molestiae omnis facilis quisquam mollitia deleniti.', '2019', 121, 131960756, 435504, 112882, '1977-03-11', '1972-03-03', '0');
INSERT INTO `movie` (`id`, `name`, `moto`, `year`, `duration`, `budget`, `grosses_usa`, `grosses_all`, `first_performance`, `first_performance_russia`, `tv_show`) VALUES (10, 'Optio deserunt odit optio sit enim atque.', 'Quod eligendi vero quia omnis nulla.', '1977', 94, 135533049, 507545, 146316, '2010-08-09', '1979-11-25', '');




