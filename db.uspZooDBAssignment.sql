USE db_zooTest2
GO

/* Assignment 1 */

SELECT * FROM tbl_habitat;

/* Assignment 2 */

SELECT species_name
FROM tbl_species
WHERE species_order = 3;

/* Assignment 3 */

SELECT nutrition_type
FROM tbl_nutrition
WHERE nutrition_cost <= 600;

/* Assignment 4 */

SELECT species_name
FROM tbl_species
WHERE species_nutrition BETWEEN 2202 AND 2206;

/* Assignment 5 */

SELECT species_name AS [Species Name], nutrition_type AS [Nutrition Type]
FROM tbl_species
INNER JOIN tbl_nutrition ON tbl_nutrition.nutrition_id = tbl_species.species_nutrition;

/* Assignment 6 */

SELECT specialist_fname, specialist_lname, specialist_contact
FROM tbl_specialist
INNER JOIN tbl_care ON tbl_specialist.specialist_id = tbl_care.care_specialist
INNER JOIN tbl_species ON tbl_care.care_id = tbl_species.species_care
WHERE species_name = 'penguin';

/* Assignment 7 */

CREATE DATABASE db_Marvel_Universe_Phase Four;

CREATE TABLE tbl_movies(
	movie_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	movie_title VARCHAR(50) NOT NULL,
	movie_genre VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_actors (
	actor_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	movie_id INT FOREIGN KEY REFERENCES tbl_movies(movie_id),
	actor_fname VARCHAR(50) NOT NULL,
	actor_lname VARCHAR(50) NOT NULL,
	actor_specialty VARCHAR(50) NOT NULL
);

INSERT INTO tbl_movies
	(movie_title, movie_genre)
	VALUES
	('Black Widow','Spy and political thriller'),
	('Shang-Chi and the Legend of the Ten Rings','Martial Arts'),
	('Eternals','Space Opera'),
	('Spider-Man: No Way Home','Romantic Comedy'),
	('Doctor Strange in the Multiverse of Madness','Sci-Fi Horror'),
	('Thor: Love and Thunder','Action/Adventure')
;

INSERT INTO tbl_actors
	(actor_fname, actor_lname, actor_specialty)
	VALUES
	('Scarlett','Johansson','hope','Spy and political thriller'),
	('Simu','Liu','Martial Arts'),
	('Gemma','Chan','Space Opera'),
	('Tom','Holland','Romantic Comedy'),
	('Benedict','Cumberbatch','Sci-Fi Horror'),
	('Chris','Hemsworth','Action/Adventure')
;

SELECT movie_genre
FROM tbl_movies
INNER JOIN tbl_actors
ON tbl_movies.movie_genre = tbl_actors.actor_specialty;
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
