-----------------режисер=продюсер--------------
SELECT * FROM director_producer

CREATE VIEW director_producer
AS
SELECT  f.id,
        f.film_name,
		f.year, 
		f.imdb, 
		d.Firstname, 
		d.Lastname, 
		d.date_birth, 
		d.experience 
FROM Film f
join directors d 
ON d.id = f.director_id
WHERE d.firstname = f.producer_firstname and d.Lastname = f.producer_lastname;


-----------------дані про фільм----------------
SELECT * FROM film_description

CREATE VIEW film_description AS
SELECT  
       f.film_name, 
	   f.imdb, 
	   f.studio, 
	   budget, 
	   d.firstname director_firstname,
	   d.lastname  director_lastname,
	   a.firstname actor_firstname,
	   a.lastname actor_lastname
FROM directors d
join film f
ON  d.id = f.director_id
join film_cast fc
ON fc.film_id = f.ID
join Actors a
ON fc.actors_id = a.ID
 
----скільки разів знімались актори в фільмах------
SELECT * FROM Actor_number_star

CREATE VIEW  Actor_number_star
AS
SELECT  a.firstname, a.lastname, count(film_id) AS game_number
FROM  actors a
left join film_cast fc
ON a.ID = fc.actors_id
left join film f
ON fc.film_id = f.id
GROUP BY a.firstname, a.lastname;

SELECT * FROM Actor_number_star
WHERE game_number >2;


 ---------------режисер= актор-------------------------
 
 SELECT * FROM director_actor

 CREATE VIEW director_actor
 AS
SELECT firstname,
       lastname
FROM directors
INTERSECT
SELECT firstname, 
       lastname
FROM actors;


-----------------------------------------------
 SELECT * FROM cast



CREATE VIEW  cast
AS
SELECT  a.firstname actor_firstname,
        a.lastname actor_lastname, 
		f.year, 
		f.imdb, 
		aw.name,
		Actors_aw.DESCRIPTION
FROM  actors a
join film_cast fc
ON a.ID = fc.actors_id
join film f
ON fc.film_id = f.id
join Actors_awards Actors_aw
on a.ID = Actors_aw.actors_id
join awards aw
on aw.ID = Actors_aw.awards_id
where DESCRIPTION = 'Best Supporting Actress' or 
DESCRIPTION = 'Best Film Actress in a Leading Role'or 
DESCRIPTION = 'Best Actress'

drop view cast

SELECT * FROM Actor_number_star
WHERE game_number >2;