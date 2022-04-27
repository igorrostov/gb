/*
TABLE STRUCTURE FOR: movie_staff
 actors,  movies,  roles
*/
DROP TABLE IF EXISTS `movie_staff`;

CREATE TABLE `movie_staff` (
  `staff_id` int(10) unsigned NOT NULL,
  `movie_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `movie_staff` (`staff_id`, `movie_id`, `role_id`) VALUES (76, 18, 2);
INSERT INTO `movie_staff` (`staff_id`, `movie_id`, `role_id`) VALUES (259, 47, 7);
INSERT INTO `movie_staff` (`staff_id`, `movie_id`, `role_id`) VALUES (42, 20, 2);
INSERT INTO `movie_staff` (`staff_id`, `movie_id`, `role_id`) VALUES (1, 76, 3);
INSERT INTO `movie_staff` (`staff_id`, `movie_id`, `role_id`) VALUES (154, 42, 6);
INSERT INTO `movie_staff` (`staff_id`, `movie_id`, `role_id`) VALUES (248, 76, 1);
INSERT INTO `movie_staff` (`staff_id`, `movie_id`, `role_id`) VALUES (65, 47, 6);
INSERT INTO `movie_staff` (`staff_id`, `movie_id`, `role_id`) VALUES (237, 84, 4);
INSERT INTO `movie_staff` (`staff_id`, `movie_id`, `role_id`) VALUES (200, 19, 6);
INSERT INTO `movie_staff` (`staff_id`, `movie_id`, `role_id`) VALUES (68, 63, 7);














