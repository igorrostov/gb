-- Данная база данных преднаначена для хранения информации о фильмах, их жанрах, бюджете, годе выпуска,
-- длительности, завоёванных наградах на фестивалях и прочие параметры. Внесены сведения об актёрах, режисёрах,
-- сценаристах и всех остальных людях задействованных в съёмках фильма. Также в БД храниться информация
-- о пользователях системы, реализована система хранения отзывов и оценок фильмов. Рассчитываются рейтинги фильмов
-- на основе отзывов пользователей. Реализовано наполнение сопутствующими материалами - трейлеры и постеры к фильму.
-- Наполнение базы данных осуществлено с помощью сайта filldb.info. Скрипты находятся в отдельных файлах.
-- БД организована по принципу подобия сайта kinopoisk.ru


SHOW DATABASES;
DROP DATABASE IF EXISTS kinopoisk;
CREATE DATABASE kinopoisk;
USE kinopoisk;
SHOW tables;


-- 1. main table with movies
DROP TABLE IF EXISTS movie;
CREATE TABLE movie (
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 moto VARCHAR(255),
 year YEAR(4),
 duration SMALLINT UNSIGNED,
 budget INT,
 grosses_usa INT,
 grossses_all INT,
 first_performance DATE,
 firts_prformace_russia DATE,
 tv_show SET('0', '1') NOT NULL
);
DESC movie;
SELECT * FROM movie;



-- 2. genre list
DROP TABLE IF EXISTS genre_list;
CREATE TABLE genre_list(
	genre_id int UNSIGNED NOT NULL,
	genre varchar(255) NOT NULL
);
DESC genre_list;
SELECT * FROM genre_list;

	
-- Наполнение жанров вручную ввиду малого количества жанров и определённости их названий
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('1', 'Comedy');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('2', 'Horror');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('3', 'Sci-Fi');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('4', 'Western');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('5', 'Melodrama');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('6', 'Musical');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('7', 'Action');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('8', 'Adventure');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('9', 'Fantasy');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('10', 'Thriller');


-- 3. genre of the movie
DROP TABLE IF EXISTS genre;
CREATE TABLE genre (
	movie_id int UNSIGNED NOT NULL,
	genre_id int UNSIGNED NOT NULL 
);
DESC genre;
SELECT * FROM genre;


-- 4. role types
DROP TABLE IF EXISTS roles;
CREATE TABLE roles(
	role_id int UNSIGNED NOT NULL,
	ROLE varchar(255) NOT NULL PRIMARY key
);
DESC roles;
SELECT * FROM roles;

-- Наполнение профессий
INSERT INTO `roles` (`role_id`, `role`) VALUES ('1', 'star');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('2', 'actor');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('3', 'director');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('4', 'art director');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('5', 'composer');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('6', 'editor');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('7', 'cameraman');


-- 5. staff
DROP TABLE IF EXISTS staff;
CREATE TABLE staff(
	staff_id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(255) NOT NULL,
	f_name varchar(255) NOT NULL,
	birthdate date,
	birth_place varchar(255),
	death_date date,
	sex char(1)
);
DESC staff;
SELECT * FROM staff;


-- 6. links between staff, movies and roles
DROP TABLE IF EXISTS movie_staff;
CREATE TABLE movie_staff(
	staff_id int UNSIGNED NOT NULL,
	movie_id int UNSIGNED NOT NULL,
	role_id int UNSIGNED NOT null
);
DESC movie_staff;
SELECT * FROM movie_staff;

-- создание индекса по id фильма
CREATE INDEX movie_staff_movie_id_idx ON movie_staff(movie_id);

-- создание индекса для создания FK из таблицы roles
CREATE INDEX movie_staff_role_id_idx ON movie_staff(role_id);



-- 7. users
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	user_id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email varchar(120) NOT NULL UNIQUE,
	name varchar(255) DEFAULT 'User',
	f_name varchar(255),
	birthday date
);
DESC users;
SELECT * FROM users;


-- 8. reviews and marks
DROP TABLE IF EXISTS review;
CREATE TABLE review (
	movie_id int UNSIGNED NOT NULL,
	user_id int UNSIGNED NOT NULL,
	mark TINYINT UNSIGNED,
	review_title varchar(255),
	review_text text
);
DESC review;
SELECT * FROM review;


-- 9. movie rating
DROP TABLE IF EXISTS rating;
CREATE TABLE rating(
	movie_id int UNSIGNED NOT NULL PRIMARY KEY,
	kinopoisk_rating float(2) UNSIGNED,
	imdb_rating float(2) UNSIGNED
);
DESC rating;
SELECT * FROM rating;


-- Первичный расчёт рейтинга фильмов c помощью хранимой процедуры
truncate rating;
delimiter //
DROP PROCEDURE IF EXISTS proc_rating//
CREATE PROCEDURE proc_rating()
BEGIN
		DECLARE i int DEFAULT 1;
	WHILE i < 101 DO
		INSERT INTO rating (movie_id, kinopoisk_rating, imdb_rating)
			VALUES (i, (SELECT DISTINCT avg(mark) OVER(PARTITION BY movie_id) FROM review WHERE movie_id = i), round(rand()*5, 2));
		SET i = i + 1;
	END WHILE;
END//
delimiter ;

-- Вызов хранимой процедуры для расчёта рейтинга фильмов
CALL proc_rating();

DESC rating;
SELECT * FROM rating;
SHOW PROCEDURE status;



-- Создание триггера для обновления рейтинга фильмов
-- Триггер срабатывает каждый раз при добавлении нового отзыва в таблице review:
-- 1. Расчитывает среднее арифметическое из оценок (mark) таблицы review
-- 2. Сохраняет новую оценку в kinopoisk_rating таблицы raiting
DROP TRIGGER IF EXISTS auto_update_rating;
delimiter //
CREATE TRIGGER auto_update_rating AFTER INSERT ON review
FOR EACH ROW 
BEGIN 
	UPDATE rating SET
		kinopoisk_rating = (SELECT DISTINCT avg(mark) OVER(PARTITION BY movie_id) FROM review WHERE movie_id = NEW.movie_id)
		WHERE movie_id = NEW.movie_id;
END//
delimiter ;
SHOW TRIGGERS;



-- 10. Media content & links
DROP TABLE IF EXISTS media;
CREATE TABLE media (
	movie_id int UNSIGNED NOT NULL PRIMARY KEY,
	poster_link varchar(255),
	trailer_link varchar(255),
	picture_link varchar(255)
);
DESC media;
SELECT * FROM media;


-- создание хранимой процедуры для заполнение таблицы media ссылками на постеры и трейлеры
delimiter //
DROP PROCEDURE IF EXISTS proc_links//
CREATE PROCEDURE proc_links()
BEGIN
		DECLARE i int DEFAULT 1;
	WHILE i < 101 DO
		INSERT INTO media(movie_id, poster_link, trailer_link, picture_link)
			VALUES (i, concat('http://kinopoisk.ru/poster/', i, '.jpg'),
						concat('http://kinopoisk.ru/trailer',  i, '.mp4'),
						concat('http://kinopoisk.ru/picture/', i, '.jpg'));
		SET i = i + 1;
	END WHILE;
END//
delimiter ;

-- Вызов хранимой процедуры для заполнения таблицы ссылками
CALL proc_links();

SELECT * FROM media;


-- 11. Awards list
DROP TABLE IF EXISTS award_list;
CREATE TABLE award_list (
	award_id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	award_name varchar(255)
);
DESC award_list;


INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('1', 'Oscar');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('2', 'Golden Globes');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('3', 'BAFTA Awards');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('4', 'CГЁsar Awards');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('5', 'Screen Actors Guild');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('6', 'РќРёРєР°');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('7', 'Cannes Film Festival');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('8', 'Berlin International Film Festival');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('9', 'Venice Film Festival');

SELECT * FROM award_list;


-- 12. Award movies
DROP TABLE IF EXISTS awards;
CREATE TABLE awards (
	movie_id int UNSIGNED NOT NULL PRIMARY KEY,
	award_id int UNSIGNED 
);
DESC awards;
SELECT * FROM awards;


-- ========================================================
-- СОЗДАНИЕ ВНЕШНИХ КЛЮЧЕЙ

ALTER TABLE awards
	ADD CONSTRAINT awards_movie_id_fk
		FOREIGN KEY (movie_id) REFERENCES movie(id)
			ON DELETE CASCADE; 

ALTER TABLE genre
  ADD CONSTRAINT genre_movie_id_fk
    FOREIGN KEY (movie_id) REFERENCES movie(id)
      ON DELETE CASCADE;

ALTER TABLE rating
  ADD CONSTRAINT rating_movie_id_fk
    FOREIGN KEY (movie_id) REFERENCES movie(id)
      ON DELETE CASCADE;

ALTER TABLE tv_show
  ADD CONSTRAINT tv_show_movie_id_fk
    FOREIGN KEY (movie_id) REFERENCES movie(id)
      ON DELETE CASCADE;

ALTER TABLE media
  ADD CONSTRAINT media_movie_id_fk
    FOREIGN KEY (movie_id) REFERENCES movie(id)
      ON DELETE CASCADE;

ALTER TABLE review
  ADD CONSTRAINT review_movie_id_fk
    FOREIGN KEY (movie_id) REFERENCES movie(id)
      ON DELETE CASCADE;

ALTER TABLE movie_staff
  ADD CONSTRAINT movie_staff_movie_id_fk
    FOREIGN KEY (movie_id) REFERENCES movie(id)
      ON DELETE CASCADE;

ALTER TABLE roles
   ADD CONSTRAINT roles_role_id_fk
     FOREIGN KEY (role_id) REFERENCES movie_staff(role_id)
       ON DELETE CASCADE;


-- ============================================================
-- СКРИПТЫ ХАРАКТЕРНЫХ ВЫБОРОК
      
-- Запрос года выхода и жанра по названию фильма
SELECT name, year, genre
FROM movie JOIN genre ON movie.id = genre.movie_id 
			JOIN genre_list ON genre.genre_id = genre_list.genre_id 
WHERE name = 'Molestias cupiditate ipsum voluptas in.';


-- Запрос всех людей, принимавших участие в съёмках фильма.
-- Фильм может относиться одновременно к нескольким жанрам
SELECT movie.name, year, genre, staff.name, f_name, role
FROM movie JOIN genre ON movie.id = genre.movie_id 
			JOIN genre_list ON genre.genre_id = genre_list.genre_id 
			JOIN movie_staff ON movie.id = movie_staff.movie_id 
			JOIN staff ON movie_staff.staff_id = staff.staff_id 
			JOIN roles ON movie_staff.role_id = roles.role_id
WHERE movie.name = 'Atque est doloribus aut in eveniet rerum debitis vel.';


-- Запрос фильмов, вышедших после 2010 года и их жанров (с применением JOIN)
SELECT movie.name, movie.year, genre_list.genre
FROM movie JOIN genre ON movie.id = genre.movie_id
			JOIN genre_list ON genre.genre_id = genre_list.genre_id 
WHERE YEAR > 2010;


-- Запрос среднего рейтинга фильма по его оценкам(агрегатная функция, оконная функция, группировка)
SELECT DISTINCT movie.name, avg(mark) OVER(PARTITION BY movie_id) AS rating
FROM review JOIN movie ON review.movie_id = movie.id 
ORDER BY rating DESC;


-- Запрос длительности фильмов с длительностью больше среднего(вложенный запрос, агрегатная функция)
SELECT name, durarion
FROM movie
WHERE duration > (SELECT avg(duration) FROM movie);


-- ===========================================================
-- Создание представления для отображения прибыльности фильма
DROP VIEW IF EXISTS money;
CREATE OR REPLACE VIEW money AS 
SELECT name, budget, grosses_usa, grosses_all, (grosses_usa + grosses_all - budget) AS profit
FROM movie;
SELECT * FROM money;


-- Создание представления для отображения режиссёров и снятых ими фильмов
DROP VIEW IF EXISTS movies_of_directiors;
CREATE OR REPLACE VIEW movies_of_directors AS
SELECT staff.name, staff.f_name, movie.name AS movie_name
FROM staff JOIN movie_staff ON staff.staff_id = movie_staff.staff_id
           JOIN movie ON movie_staff.movie_id = movie.id
           JOIN roles ON movie_staff.role_id = roles.role_id
WHERE roles.role = 'director';

SELECT * FROM movies_of_directors;






















































	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	