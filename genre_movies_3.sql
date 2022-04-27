/*
TABLE SRUCTURE FOR: genre 
*/

DROP TABLE IF EXISTS `genre`;

CREATE TABLE `genre` (
  `movie_id` int(10) unsigned NOT NULL,
  `genre_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `genre` (`movie_id`, `genre_id`) VALUES (90, 1);
INSERT INTO `genre` (`movie_id`, `genre_id`) VALUES (93, 2);
INSERT INTO `genre` (`movie_id`, `genre_id`) VALUES (38, 9);
INSERT INTO `genre` (`movie_id`, `genre_id`) VALUES (67, 9);
INSERT INTO `genre` (`movie_id`, `genre_id`) VALUES (6, 9);
INSERT INTO `genre` (`movie_id`, `genre_id`) VALUES (81, 9);
INSERT INTO `genre` (`movie_id`, `genre_id`) VALUES (64, 7);
INSERT INTO `genre` (`movie_id`, `genre_id`) VALUES (62, 1);
INSERT INTO `genre` (`movie_id`, `genre_id`) VALUES (28, 2);
INSERT INTO `genre` (`movie_id`, `genre_id`) VALUES (84, 9);






























