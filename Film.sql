use Films
INSERT INTO Film 
values
(1,1,01,'USA',2014,97,7.0,180000000,'WaltDisney','Joe','Maleficent','Roth'),
(2,2,02,'USA',2005,120,6.5,110000000,'20thCenturyFox','Simon','Mr & Mrs Smith','Kinberg'),
(3,3,03,'USA',2001,116,7.7,85000000,'WarnerBrothers','Jerry','OceansEleven','Weintraub'),
(4,4,05,'USA',2016,139,8.1,157.7000000,'Netflix','Brian','Hacksaw.Ridge','Oliver'),
(5,5,07,'USA',2020,113,7.5,7000000,'FilmNationEntertainment','Margot','Promising.Young.Woman','Robbie'),
(6,6,08,'USA',2015,105,7.4,110000000,'Netflix','Michael','Pixels','Barnathan'),
(7,7,07,'USA',2014,146,6.7,26000000,'RelativityMedia','Denise','The.Best.Of.Me','Novi'),
(8,8,08,'GreatBritain',2010,110,4.2,90000000,'Netflix','Andrey',' The.Nutcracker','Konchalovsky'),
(9,9,07,'USA',2011,124,7.1,50000000,'20thCenturyFox','Julie','We.Bought.a.Zoo','Yorn'),
(10,10,01,'USA',2007,147,7.1,270000000,'WaltDisney','Jerry','Pirates.of.the.Caribbean','Bruckheimer'),
(11,11,08,'GreatBritain',2005,147,7.6,125000000,'WarnerBrothers','Kenneth','Harry.Potter','Branagh'),
(12,12,08,'USA',2012,106,5.6,8500000,'20thCenturyFox','Ryan','Mirror.Mirror ','Kavanaugh'),
(13,13,08,'USA',2009,178,7.8,243000000,'20thCenturyFox','James','Avatar','Cameron'),
(14,14,01,'GreatBritain',2015,121,7.2,55000000,'UniversalPictures','Brian','Everest','Oliver'),
(15,15,07,'USA',2019,109,6.8,32000000,'BronStudios','Jay','Bombshell ','Roach'),
(16,16,01,'USA',2005,140,6.9,180000000,'WaltDisney','Andrew','The.Chronicles.of.Narnia','Adamson'),
(17,17,04,'USA',2020,104,6.1,21000000,'Netflix','Mary','Holidate','Viola'),
(18,18,07,'USA',2014,106,5.7,11000000,'WarnerBrothers',' Denise','If.I.Stay','Novi'),
(19,19,07,'GreatBritain',2020,106,6.3,13000000,'20thCenturyFox','Suzanne','Misbehaviour','Mackie'),
(20,20,07,'USA',2019,134,7.8,40000000,'Sony','Denise',' Little.Women','Novi'),
(21,21,08,'USA',2017,129,7.1,160000000,'WaltDisney','Todd','Beauty.and.the.Beast','Lieberman'),
(22,22,08,'USA',2016,133,7.3,180000000,'WarnerBrothers','Joanne','Fantastic.Beasts.and.Where.to.Find.Them','Rowling'),
(23,23,07,'USA',2010,103,7.1,100000000,'ColumbiaPictures','Jonathan','The.Tourist','Glickman'),
(24,24,07,'USA',1990,105,7.9,20000000,'20thCenturyFox','Timothy','Edward.Scissorhands','Burton'),
(25,25,06,'USA',2017,113,6.5,55000000,'20thCenturyFox','Kenneth','Murderon.the.Orient.Express','Branagh'),
(26,26,02,'USA',2018,144,6.9,200000000,'WarnerBrothers','Jon','Aquaman','Berg'),
(27,27,02,'USA',2012,142,7.2,78000000,'Lionsgate','Suzanne','The.Hunger.Games','Collins'),
(28,28,08,'USA',2015,105,6.9,95000000,'WaltDisney','Kenneth','Cinderella','Branagh'),
(29,29,07,'USA',2016,110,7.4,60000000,'WarnerBrothers','Karen',' Me.Before.You','Rosenfelt'),
(30,27,02,'USA',2019,118,5.6,7500000,'ColumbiaPictures','Elizabeth','Charlies.Angels','Banks'),
(31,30,08,'USA',2014,113,6.8,34000000,'20thCenturyFox','Wyck','The.Maze.Runner','Godfrey'),
(32,31,02,'USA',2014,139,7.4,85000000,'RedWagonEntertainment','Lieberman','Divergent','Todd'),
(33,13,07,'USA',1997,194,7.8,210000000,'20thCenturyFox','James','Titanic','Cameron');

use Films
UPDATE Film SET film_name = 'Mr & Mrs Smith' WHERE id = 2;
UPDATE Film SET film_name = 'Oceans Eleven' WHERE id = 3;
UPDATE Film SET film_name = 'Hacksaw Ridge' WHERE id = 4;
UPDATE Film SET film_name = 'Promising Young Woman' WHERE id = 5;
UPDATE Film SET film_name = 'The Best Of Me' WHERE id = 7;
UPDATE Film SET film_name = 'The Nutcracker' WHERE id = 8;
UPDATE Film SET film_name = 'We Bought a Zoo' WHERE id = 9;
UPDATE Film SET film_name = 'Pirates of the Caribbean' WHERE id = 10;
UPDATE Film SET film_name = 'Harry Potter ' WHERE id = 11;
UPDATE Film SET film_name = 'Mirror Mirror ' WHERE id = 12;
UPDATE Film SET film_name = 'The Chronicles of Narnia' WHERE id = 16;
UPDATE Film SET film_name = 'If I Stay' WHERE id = 18;
UPDATE Film SET film_name = 'Little Women' WHERE id = 20;
UPDATE Film SET film_name = 'Beauty and the Beast' WHERE id = 21;
UPDATE Film SET film_name = 'Fantastic Beasts and Where to Find Them' WHERE id = 22;
UPDATE Film SET film_name = 'The Tourist' WHERE id = 23;
UPDATE Film SET film_name = 'Edward Scissorhands' WHERE id = 24;
UPDATE Film SET film_name = 'Murder on the Orient Express' WHERE id = 25;
UPDATE Film SET film_name = 'The Hunger Games' WHERE id = 27;
UPDATE Film SET film_name = ' Me Before You' WHERE id = 29;
UPDATE Film SET film_name = 'Charlies Angels' WHERE id = 30;
UPDATE Film SET film_name = 'The Maze Runner' WHERE id = 31;
