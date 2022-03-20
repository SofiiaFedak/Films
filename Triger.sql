CREATE TRIGGER CheckActorAwards

ON Actors_awards

FOR 
UPDATE 
AS
IF (UPDATE(Actor_awards))
BEGIN
IF (select * from Actor_number_star where game_number >4)
BEGIN
INSERT INTO actors_awards(awards_id, actors_id,DESCRIPTION, ID)

END END


