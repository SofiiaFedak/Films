-------------таблиця фільми------------
USE Films
CREATE TABLE directors(
	ID int Primary key NOT NULL,
	Firstname varchar (30) NOT NULL,
	Lasttname varchar(30) NOT NULL,
	date_birth date,
	experience int )
	
	-------------таблиця актори------------

	CREATE TABLE Actors(
	ID int  Primary key NOT NULL,
	Firstname varchar (30) NOT NULL,
	Lastname varchar(30) NOT NULL,
	date_birth date,
	experience int)
	
	------------таблиця нагороди ---------------------

	CREATE TABLE Awards (
	ID int Primary key NOT NULL,
	name varchar(30))
	
	ALTER TABLE Awards
	ALTER COLUMN name varchar(30)
	

------------таблиця нагороди акторів--------------------

	CREATE TABLE Actors_awards(
	awards_id int NOT NULL,
	actors_id int NOT NULL,
	DESCRIPTION text NULL,
	ID int NULL )

GO

ALTER TABLE Actors_awards  WITH CHECK ADD FOREIGN KEY(awards_id)
REFERENCES Awards (ID)
GO

ALTER TABLE Actors_awards  WITH CHECK ADD FOREIGN KEY(actors_id)
REFERENCES actors (ID)
GO
ALTER TABLE ACTORS_AWARDS
	ALTER COLUMN description  varchar(60)

	ALTER TABLE ACTORS_AWARDS
	ALTER COLUMN ID INT NOT NULL
	
	SELECT *
	FROM Actors_awards
	------------------ІНДЕКСИ-----------------------
	
	CREATE  INDEX index_Aawards ON ACTORS_AWARDS(DESCRIPTION)
	CREATE INDEX index_dawards ON DIRECTOR_AWARDS(DESCRIPTION)
	CREATE INDEX index_awards on AWARDS (NAME)

	------------таблиця нагороди режисерів------------


	CREATE TABLE Director_awards(
	awards_id int FOREIGN KEY Awards(ID),
	actors_id int FOREIGN KEY directors (ID))

	ALTER TABLE DIRECTOR_AWARDS
	ADD [DESCRIPTION] VARCHAR(100)

	ALTER TABLE DIRECTOR_AWARDS
	ADD ID INT

	------------таблиця жанри---------------------

	CREATE TABLE Genre(
	id int Primary key NOT NULL,
	name varchar (30))

	--------фільми-----------------

	CREATE TABLE Film (
	film_id int Primary key NOT NULL,
	director_id FOREIGN KEY directors(ID),
	genre_id int FOREIGN KEY Genre(ID),
	country varchar (30),
	[year] int,
	duration int,
	imdb int,
	budget int,
	studia varchar (30),
	film_name varchar (60))
------------------------------	
--------------------------------
	ALTER TABLE Film
	ADD CONSTRAINT BUDGET CHECK (BUDGET > 1000000);


----------Склад фільму-------------------

CREATE TABLE Film_cast(
	id int Primary key NOT NULL,
	film_id int FOREIGN KEY Film(ID),
	[role] varchar (30),
	actors_id int FOREIGN KEY Actors(ID))

ALTER TABLE film_cast
ALTER COLUMN [role] text


