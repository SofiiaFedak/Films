-------процедура netflix за рейтингом ----------
ALTER PROC netflix_films

AS
SELECT * FROM film_description
WHERE imdb >5  and studio = 'netflix' 
ORDER BY imdb
 EXEC netflix_films

 ------------топ 5 акторів--------
 CREATE PROC TOP_ACTORS
 AS
 SELECT *
 FROM Actor_number_star
 WHERE game_number >5
ORDER BY game_number desc
EXEC TOP_ACTORS

-----по вставленні -----
CREATE PROC new_Actor
@ID INT,
@FIRSTNAME VARCHAR (30),
@LASTNAME VARCHAR (30),
@DATE_BIRTH DATE

AS  
BEGIN          

			INSERT INTO  Actors 
			(ID,
			 FIRSTNAME,
             LASTNAME,
             DATE_BIRTH)
			 VALUES(
			 @ID ,
             @FIRSTNAME ,
	         @LASTNAME ,
	         @DATE_BIRTH )
			

END
EXEC new_Actor
       @ID = 107,
       @FIRSTNAME ='James',
	   @LASTNAME ='Phelps',
	   @DATE_BIRTH = '1986/02/25'

GO

EXEC new_Actor 