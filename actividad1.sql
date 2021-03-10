
CREATE DATABASE movie;

USE movie;

CREATE TABLE actor(
	act_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	act_fname varchar(20) NOT NULL,
	act_lname Varchar(20) NOT NULL,
	act_gender char(1) NOT NULL
);
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('James', 'Stewart', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Deborah', 'Kerr', 'F');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Peter', 'OToole', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Robert', 'De Niro', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('F. Murray', 'Abraham', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Harrison', 'Ford', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Nicole', 'Kidman', 'F');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Stephen', 'Baldwin', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Jack', 'Nicholson', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Mark', 'Wahlberg', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Woody', 'Allen', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Claire', 'Danes', 'F');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Tim', 'Robbins', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Kevin', 'Spacey', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Kate', 'Winslet', 'F');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Robin', 'Williams', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Jon', 'Voight', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Ewan', 'McGregor', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Christian', 'Bale', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Maggie', 'Gyllenhaal', 'F');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Dev', 'Patel', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Sigourney', 'Weaver', 'F');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('David', 'Aston', 'M');
INSERT INTO actor (act_fname, act_lname, act_gender) VALUE ('Ali', 'Astin', 'F');




CREATE TABLE director(
	dir_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	dir_fname varchar(20) NOT NULL,
	dir_lname Varchar(20) NOT NULL
);
INSERT INTO director (dir_fname, dir_lname) VALUE ('Alfred', 'Hitchcock');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Jack', 'Clayton');
INSERT INTO director (dir_fname, dir_lname) VALUE ('David', 'Lean');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Michael', 'Cimino');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Milos', 'Forman');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Ridley', 'Scott');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Stanley', 'Kubrick');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Bryan', 'Singer');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Roman', 'Polanski');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Paul', 'Thomas Anderson');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Woody', 'Allen');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Hayao', 'Miyazaki');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Frank', 'Darabont');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Sam', 'Mendes');
INSERT INTO director (dir_fname, dir_lname) VALUE ('James', 'Cameron');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Gus', 'Van Sant');
INSERT INTO director (dir_fname, dir_lname) VALUE ('John', 'Boorman');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Danny', 'Boyle');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Christopher', 'Nolan');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Richard', 'Kelly');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Kevin', 'Spacey');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Andrei', 'Tarkovsky');
INSERT INTO director (dir_fname, dir_lname) VALUE ('Peter', 'Jackson');



CREATE TABLE movie_direction(
	movie_direction_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	dir_id INTEGER NOT NULL,
    mov_id INTEGER NOT NULL,
    INDEX (dir_id),
    INDEX (mov_id),
	FOREIGN KEY (dir_id) REFERENCES director(dir_id),
    FOREIGN KEY (mov_id) REFERENCES movie(mov_id)
);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (1, 1);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (2, 2);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (3, 3);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (4, 4);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (5, 5);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (6, 6);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (7, 7);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (8, 8);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (9, 9);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (10, 10);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (11, 11);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (12, 12);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (13, 13);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (14, 14);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (15, 15);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (18, 16);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (17, 17);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (18, 18);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (19, 19);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (20, 20);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (18, 21);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (15, 22);
INSERT INTO movie_direction (dir_id, mov_id) VALUE (21, 23);








CREATE TABLE movie_cast(
	movie_cast_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	act_id INTEGER NOT NULL,
    mov_id INTEGER NOT NULL,
    movie_cast_role char(30) not null,
    INDEX (act_id),
    INDEX (mov_id),
	FOREIGN KEY (act_id) REFERENCES actor(act_id),
    FOREIGN KEY (mov_id) REFERENCES movie(mov_id)
);
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (1, 1, 'John Scottie Ferguson');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (2, 2, 'Miss Giddens');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (3, 3, 'T.E. Lawrence');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (4, 4, 'Michael');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (5, 5, 'Antonio Salieri');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (6, 6, 'Rick Deckard');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (7, 7, 'Alice Harford');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (8, 8, 'McManus');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (10, 10, 'Eddie Adams');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (11, 11, 'Alvy Singer');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (12, 12, 'San');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (13, 13, 'Andy Dufresne');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (14, 14, 'Lester Burnham');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (15, 15, 'Rose DeWitt Bukater');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (16, 16, 'Sean Maguire');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (17, 17, 'Ed');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (18, 18, 'Renton');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (20, 20, 'Elizabeth Darko');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (21, 21, 'Older Jamal');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (22, 22, 'Ripley');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (14, 23, 'Bobby Darin');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (9, 9, 'J.J. Gittes');
INSERT INTO movie_cast (act_id, mov_id, movie_cast_role) VALUE (19, 19, 'Alfred Borden');






CREATE TABLE movie(
	mov_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	mov_title char(50) NOT NULL,
	mov_year integer NOT NULL,
    mov_time integer not null,
    mov_lang integer not null,
    mov_dt_rel date not null,
    mov_rel_country char(5) not null
);
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Vertigo', 1958, 128, 'English', '1958-08-24', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('The Innocents', 1961, 100, 'English', '1962-02-19', 'SW');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Lawrence of Arabia', 1962, 216, 'English', '1962-12-11', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('The Deer Hunter', 1978, 183, 'English', '1979-03-08', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Amadeus', 1984, 160, 'English', '1985-01-07', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Blade Runner', 1982, 117, 'English', '1982-09-09', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_rel_country) VALUE ('Eyes Wide Shut', 1999, 159, 'English', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('The Usual Suspects', 1995, 106, 'English', '1995-08-25', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Chinatown', 1974, 130, 'English', '1974-08-09', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Boogie Nights', 1997, 155, 'English', '1998-02-16', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Annie Hall', 1977, 93, 'English', '1977-04-20', 'USA');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Princess Mononoke', 134, 128, 'Japanese', '2001-10-19', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('The Shawshank Redemption', 1994, 142, 'English', '1995-02-17', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('American Beauty', 1999, 122, 'English','1977-04-20', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Titanic', 1997, 194, 'English', '1998-01-23', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Good Will Hunting', 1997, 126, 'English', '1998-06-03', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Deliverance', 1972, 109, 'English', '1982-10-05', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Trainspotting', 1996, 94, 'English', '1996-02-23', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('The Prestige', 2006, 130, 'English', '2006-11-10', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_rel_country) VALUE ('Donnie Darko', 2001, 113, 'English', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Slumdog Millionaire', 2008, 120, 'English', '2009-01-09', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Aliens', 2006, 137, 'English', '1986-08-29', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Beyond the Sea', 2004, 118, 'English', '2004-11-26', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Avatar', 2009, 162, 'English', '2009-12-17', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Seven Samurai', 1954, 207, 'Japanese', '1954-04-26', 'JP');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Spirited Away', 2001, 125, 'Japanese', '2003-09-12', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Back to the Future', 1985, 116, 'English', '1985-12-04', 'UK');
INSERT INTO movie (mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUE ('Braveheart', 1995, 178, 'English', '1995-09-08', 'UK');




CREATE TABLE reviewer(
	rev_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	rev_name char(30) NOT NULL
);
INSERT INTO reviewer (rev_name) VALUE ('Righty Sock');
INSERT INTO reviewer (rev_name) VALUE ('Jack Malvern');
INSERT INTO reviewer (rev_name) VALUE ('Flagrant Baronessa');
INSERT INTO reviewer (rev_name) VALUE ('Alec Shaw');
INSERT INTO reviewer (rev_name) VALUE ('');
INSERT INTO reviewer (rev_name) VALUE ('Victor Woeltjen');
INSERT INTO reviewer (rev_name) VALUE ('Simon Wright');
INSERT INTO reviewer (rev_name) VALUE ('Neal Wruck');
INSERT INTO reviewer (rev_name) VALUE ('Paul Monks');
INSERT INTO reviewer (rev_name) VALUE ('Mike Salvati');
INSERT INTO reviewer (rev_name) VALUE ('');
INSERT INTO reviewer (rev_name) VALUE ('Wesley S. Walker');
INSERT INTO reviewer (rev_name) VALUE ('Sasha Goldshtein');
INSERT INTO reviewer (rev_name) VALUE ('Josh Cates');
INSERT INTO reviewer (rev_name) VALUE ('Krug Stillo');
INSERT INTO reviewer (rev_name) VALUE ('Scott LeBrun');
INSERT INTO reviewer (rev_name) VALUE ('Hannah Steele');
INSERT INTO reviewer (rev_name) VALUE ('Vincent Cadena');
INSERT INTO reviewer (rev_name) VALUE ('Brandt Sponseller');
INSERT INTO reviewer (rev_name) VALUE ('Richard Adams');






CREATE TABLE genres(
	gen_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	gen_title char(20) NOT NULL
);
INSERT INTO genres (gen_title) VALUE ('Action');
INSERT INTO genres (gen_title) VALUE ('Adventure');
INSERT INTO genres (gen_title) VALUE ('Animation');
INSERT INTO genres (gen_title) VALUE ('Biography');
INSERT INTO genres (gen_title) VALUE ('Comedy');
INSERT INTO genres (gen_title) VALUE ('Crime');
INSERT INTO genres (gen_title) VALUE ('Drama');
INSERT INTO genres (gen_title) VALUE ('Horror');
INSERT INTO genres (gen_title) VALUE ('Music');
INSERT INTO genres (gen_title) VALUE ('Mystery');
INSERT INTO genres (gen_title) VALUE ('Romance');
INSERT INTO genres (gen_title) VALUE ('Thriller');
INSERT INTO genres (gen_title) VALUE ('War');






CREATE TABLE movie_genres(
	movie_genres_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	mov_id INTEGER NOT NULL,
    gen_id INTEGER NOT NULL,
    INDEX (mov_id),
    INDEX (gen_id),
	FOREIGN KEY (mov_id) REFERENCES movie(mov_id),
    FOREIGN KEY (gen_id) REFERENCES genres(gen_id)
);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (22, 1);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (17, 2);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (3, 2);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (12, 3);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (11, 5);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (8, 6);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (13, 6);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (26, 7);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (28, 7);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (18, 7);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (21, 7);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (2, 8);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (23, 9);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (7, 10);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (27, 10);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (1, 10);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (14, 11);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (6, 12);
INSERT INTO movie_genres (mov_id, gen_id) VALUE (4, 13);






CREATE TABLE rating(
	rating_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	mov_id integer NOT NULL,
	rev_id integer NOT NULL,
    rev_stars integer not null,
    num_o_ratings integer not null,
    INDEX (mov_id),
    INDEX (rev_id),
	FOREIGN KEY (mov_id) REFERENCES movie(mov_id),
    FOREIGN KEY (rev_id) REFERENCES reviewer(rev_id)
);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (1, 1, 8.40, 263575);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (2, 2, 7.90, 20207);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (3, 3, 8.30, 202778);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (6, 5, 8.20, 484746);
INSERT INTO rating (mov_id, rev_id, rev_stars) VALUE (24, 6, 7.30);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (8, 7, 8.60, 779489);
INSERT INTO rating (mov_id, rev_id, num_o_ratings) VALUE (9, 8, 227235);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (10, 9, 3.00, 195961);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (11, 10, 8.10, 203875);
INSERT INTO rating (mov_id, rev_id, rev_stars) VALUE (12, 11, 8.40);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (14, 13, 7.00, 862618);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (15, 1, 7.70, 830095);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (16, 14, 4.00, 642132);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (25, 14, 7.70, 81328);
INSERT INTO rating (mov_id, rev_id, num_o_ratings) VALUE (18, 16, 580301);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (20, 17, 8.10, 609451);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (21, 18, 8.00, 667758);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (22, 19, 8.40, 511613);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUE (23, 20, 6.70, 13091);


consultas
1) select mov_title, mov_year from movie;
2) select mov_year from movie where mov_title = 'American Beauty';
3)select * from movie where mov_year = 1999;
4) select * from movie where mov_year < 1998;
5) SELECT reviewer.rev_name FROM reviewer UNION (SELECT movie.mov_title FROM movie);
6) SELECT * FROM movie INNER JOIN reviewer ON movie.mov_id=reviewer.rev_id;
7)SELECT reviewer.rev_name FROM reviewer, rating WHERE rating.rev_id = reviewer.rev_id AND rating.rev_stars>=7 AND reviewer.rev_name IS NOT NULL;
8) SELECT mov_title FROM movie WHERE mov_id in (5, 7, 2);
9) select * from  movie WHERE  mov_title='Boogie Nights';
10)SELECT act_id FROM actor WHERE act_fname='Woody' AND act_lname='Allen';
11) SELECT * FROM actor WHERE act_id IN(SELECT act_id FROM movie_cast WHERE mov_id IN (SELECT mov_id FROM movie WHERE mov_title='Annie Hall'));
12)SELECT dir_fname, dir_lname, mov_title
FROM  director  NATURAL JOIN movie_direction NATURAL JOIN movie NATURAL JOIN movie_cast WHERE role IS  NOT NULL AND mov_title='Eyes Wide Shut';
13) SELECT mov_title, mov_year, mov_time,  mov_dt_rel AS Date_of_Release,  mov_rel_country AS Releasing_Country FROM movie WHERE mov_rel_country<>'UK';
14)
15)SELECT mov_title FROM movie WHERE mov_id=(SELECT mov_id FROM movie_direction WHERE dir_id=(SELECT dir_id FROM director WHERE dir_fname='Woody' AND dir_lname='Allen'));
16)SELECT DISTINCT mov_year 
FROM movie WHERE mov_id IN (SELECT mov_id FROM rating WHERE rev_stars>3) ORDER BY mov_year;
17)SELECT mov_title FROM movie WHERE mov_id NOT IN ( SELECT mov_id  FROM rating
);
18)SELECT rev_name FROM reviewer INNER JOIN rating USING(rev_id) WHERE rev_stars IS NULL;
19)SELECT rev_name, mov_title, rev_stars 
 FROM reviewer, rating, movie 
  WHERE reviewer.rev_id=rating.rev_id 
   AND movie.mov_id=rating.mov_id 
AND reviewer.rev_name IS NOT NULL 
AND rating.rev_stars IS NOT NULL
ORDER BY rev_name, mov_title, rev_stars;
20) SELECT rev_name, mov_title 
FROM reviewer, movie, rating, rating r2 WHERE rating.mov_id=movie.mov_id 
AND reviewer.rev_id=rating.rev_ID 
AND rating.rev_id = r2.rev_id 
GROUP BY rev_name, mov_title HAVING count(*) > 1;
    