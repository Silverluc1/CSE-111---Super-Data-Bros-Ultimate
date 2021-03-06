--This file will have the creation of the main SQL commands that would extract the data for display.

--Clears all the tables first
DROP TABLE Attack;
DROP TABLE Movement;
DROP TABLE Dodge;
DROP TABLE Ranking;
DROP TABLE RankDMG;
DROP TABLE RankMovement;
DROP TABLE FavChar;
DROP Table Notes;

--Creation of empty tables
CREATE TABLE Attack(

    --the name of each character to relate to each value
    characterID varchar(50),
    
    --smash input damage values
    smash_leftright long,
    smash_down long,
    smash_up long,
    
    --tilt input damage values
    tilt_leftright long,
    tilt_down long,
    tilt_up long,

    --special input damage values
    special_leftright long,
    special_down long,
    special_up long,

    --aerial input damage values
    aerial_right long,
    aerial_left long,
    aerial_up long,
    aerial_down long

)
;

CREATE TABLE Movement(

    --the name of each character to relate to each value
    characterID varchar(50),
    
    --Walk Speed
    lr_walk long,
    --Run Speed
    lr_run long,
    --Air Speed
    lw_air long,
    --Jump Height
    u_height long,
    --Hard Land
    d_fallspeed int
)
;

CREATE TABLE Dodge(

    --the name of each character to relate to each value
    characterID varchar(50),

    --Total Frames for spot dodge
    s_total int,
    --Amount of frames where character in intangible
    s_intang varchar(10),
    --Total Frames for Foward Roll
    r_total int,
    --Amount of frames where character in intangible
    r_intang varchar(10),
    --Total Frames for Non-Directional Airdodge
    a_total int,
    --Amount of frames where character in intangible
    a_intang varchar(10)
)
;

CREATE TABLE Ranking(

    --This table is to hold the final placements for the ranking system
    characterID varchar(50),
    criteria varchar(50),
    value long
)
;

CREATE TABLE RankDMG(

    --Junction Table for many-to-many relationship between the Rank and the categories
    characterID varchar(50),
    smashTot varchar(50),
    tiltTot varchar(50),
    specialTot varchar(50),
    aerialTot varchar(50),

    smashTotal long,
    tiltTotal long,
    specialTotal long,
    aerialTotal long
)
;

CREATE TABLE RankMovement(

    --Junction Table for many to many relationship between Rank and Movement
    characterID varchar(50),
    horizontalWalk varchar(50),
    horizontalRun varchar(50),
    horizonalAir varchar(50),
    jumpHeight varchar(50),
    fallSpeed varchar(50),

    lr_walk long,
    lr_run long,
    lw_air long,
    u_height long,
    d_fallspeed int
)
;

CREATE TABLE FavChar(

    --Table for users to store their favorite characters (up to 5) and a small description of why (255 char)
    characterID varchar(50),
    description varchar(255)
)
;

CREATE TABLE Notes(

    --Tbale for user's personal inputed notes
    description varchar(255)
)
;

--INSERTION of data into empty tables

INSERT INTO Attack VALUES('Mario', 17.7, 10.0, 14.0, 7.0, 5.0, 7.0, 7.0, 0.0, 5.0, 12.0, 10.5, 7.0, 1.3);
INSERT INTO Attack VALUES('Luigi', 15.0, 15.0, 14.0, 9.0, 5.0, 6.0, 6.1, 2.0, 25.0, 8.0, 14.0, 10.0, 11.0);
INSERT INTO Attack VALUES('Simon', 14.0, 12.0, 16.0, 10.0, 5.0, 10.0, 8.0, 2.0, 2.0, 12.0, 12.0, 12.0, 12.0);
INSERT INTO Attack VALUES('Snake', 22.0, 12.0, 14.0, 4.0, 12.0, 14.5, 7.0, 17.0, 6.0, 14.0, 16.0, 14.0, 4.0);
INSERT INTO Attack VALUES('Mr. Game And Watch', 18.0, 15.0, 16.0, 12.0, 9.0, 7.0, 32.0, 0.0, 3.0, 12.0, 3.0, 3.0, 11.0);
INSERT INTO Attack VALUES('Fox', 14.0, 14.0, 16.0, 6.0, 8.0, 6.0, 8.0, 2.0, 16.0, 1.8, 13.0, 5.0, 1.4);
INSERT INTO Attack VALUES('Captain Falcon', 20.0, 18.0, 14.0, 9.0, 10.0, 11.0, 10.0, 15.0, 15.6, 22.0, 13.0, 10.0, 14.0);
INSERT INTO Attack VALUES('King K. Rool', 19.0, 18.0, 15.0, 11.0, 13.0, 12.5, 9.0, 0, 3.0, 15.5, 19.0, 14.0, 12.0);
INSERT INTO Attack VALUES('Pikachu', 18.0, 3.0, 14.0, 9.0, 6.0, 5.0, 10.0, 15.0, 3.0, 1.3, 1.0, 6.0, 13.0);
INSERT INTO Attack VALUES('R.O.B', 15.0, 5.0, 14.0, 8.0, 5.0, 3.0, 1.5, 3.6, 0.0, 7.0, 15.0, 1.5, 12.0);
INSERT INTO Attack VALUES('Falco', 16.0, 15.0, 13.0, 6.0, 13.0, 3.5, 7.0, 5.0, 3.0, 1.0, 13.0, 9.0, 13.0);
INSERT INTO Attack VALUES('Peach', 18.0, 2.0, 17.0, 8.0, 7.0, 10.0, 8.0, 8.3, 3.0, 15.0, 12.0, 6.0, 2.0);
INSERT INTO Attack VALUES('DLC1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO Movement VALUES('Mario', 1.15, 1.76, 1.208, 36.33, 1.5);
INSERT INTO Movement VALUES('Luigi', 1.134, 1.65, 0.77, 44, 1.32);
INSERT INTO Movement VALUES('Simon', 0.76, 1.52, 0.94, 30, 1.85);
INSERT INTO Movement VALUES('Snake', 0.882, 1.595, 0.987, 21.62, 1.73);
INSERT INTO Movement VALUES('Mr. Game and Watch', 1.18, 1.679, 1.176, 27.51, 1.24);
INSERT INTO Movement VALUES('Fox', 1.523, 2.402, 1.11, 35, 2.1);
INSERT INTO Movement VALUES('Captain Falcon', 0.987, 2.552, 1.218, 37.31, 1.865);
INSERT INTO Movement VALUES('King K. Rool', 0.903, 1.485, 0.945, 33, 1.7);
INSERT INTO Movement VALUES('Pikachu', 1.302, 2.039, 0.957, 35.5, 1.55);
INSERT INTO Movement VALUES('R.O.B', 1.178, 1.725, 1.134, 38, 1.6);
INSERT INTO Movement VALUES('Falco', 1.344, 1.619, 0.977, 50.51, 1.8);
INSERT INTO Movement VALUES('Peach', 0.924, 1.595, 1.029, 30.03, 1.19);
INSERT INTO Movement VALUES('DLC1', 0, 0, 0, 0, 0);

INSERT INTO Dodge VALUES ('Mario', 25.0, '3-17', 29, '4-15', 52, '3-29'); 
INSERT INTO Dodge VALUES ('Luigi', 25.0, '3-17', 29, '4-15', 57, '3-29');
INSERT INTO Dodge VALUES ('Simon', 26.0, '3-17', 30, '4-15', 46, '3-29');
INSERT INTO Dodge VALUES('Snake', 26, '3-17', 30, '4-15', 47, '4-28');
INSERT INTO Dodge VALUES('Mr. Game and Watch', 26, '3-17', 30, '4-15', 59, '3-28');
INSERT INTO Dodge VALUES('Fox', 23, '3-14', 26, '4-12', 38, '2-26');
INSERT INTO Dodge VALUES('Captain Falcon', 26, '3-17', 30, '4-15', 42, '3-30');
INSERT INTO Dodge VALUES('King K. Rool',28, '3-18', 32, '4-16', 46, '4-30');
INSERT INTO Dodge VALUES('Pikachu', 24, '3-16', 28, '4-14', 50, '2-26');
INSERT INTO Dodge VALUES('R.O.B', 25, '3-17', 29, '4-15', 50, '3-29');
INSERT INTO Dodge VALUES('Falco', 25, '3-17', 29, '4-15', 43, '2-27');
INSERT INTO Dodge VALUES('Peach', 26, '3-17', 30, '4-15', 61, '3-30');
INSERT INTO Dodge VALUES ('DLC1', 0, 'N/A', 0, 'N/A', 0, 'N/A');


INSERT INTO RankDMG VALUES('Mario', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 41.1, 19, 12, 30.8);
INSERT INTO RankDMG VALUES('Luigi', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 44, 20, 33.3, 43);
INSERT INTO RankDMG VALUES('Simon', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 42, 25, 12, 48);
INSERT INTO RankDMG VALUES('Snake', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 48, 30.5, 30, 48);
INSERT INTO RankDMG VALUES('Mr. Game And Watch', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 49, 28, 35, 29);
INSERT INTO RankDMG VALUES('Fox', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 44, 20, 26, 21.2);
INSERT INTO RankDMG VALUES('Captain Falcon', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 52, 30, 40.6, 59);
INSERT INTO RankDMG VALUES('King K. Rool', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 52, 36.5, 12, 60.5);
INSERT INTO RankDMG VALUES('Pikachu', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 35, 20, 28, 21.3);
INSERT INTO RankDMG VALUES('R.O.B', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 34, 16, 5.1, 35.5);
INSERT INTO RankDMG VALUES('Falco', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 44, 22.5, 15, 36);
INSERT INTO RankDMG VALUES('Peach', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 37, 25, 19.3, 33);
INSERT INTO RankDMG VALUES('DLC1', 'Smash Damage Total', 'Tilt Damage Total', 'Special Damage Total', 'Aerial Damage Total', 0, 0, 0, 0);

INSERT INTO RankMovement VALUES('Mario', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 1.15, 1.76, 1.208, 36.33, 1.5);
INSERT INTO RankMovement VALUES('Luigi', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 1.134, 1.65, 0.77, 44, 1.32);
INSERT INTO RankMovement VALUES('Simon', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 0.76, 1.52, 0.94, 30, 1.85);
INSERT INTO RankMovement VALUES('Snake', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 0.882, 1.595, 0.987, 21.62, 1.73);
INSERT INTO RankMovement VALUES('Mr. Game and Watch', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 1.18, 1.679, 1.176, 27.51, 1.24);
INSERT INTO RankMovement VALUES('Fox', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 1.523, 2.402, 1.11, 35, 2.1);
INSERT INTO RankMovement VALUES('Captain Falcon', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 0.987, 2.552, 1.218, 37.31, 1.865);
INSERT INTO RankMovement VALUES('King K. Rool', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 0.903, 1.485, 0.945, 33, 1.7);
INSERT INTO RankMovement VALUES('Pikachu', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 1.302, 2.039, 0.957, 35.5, 1.55);
INSERT INTO RankMovement VALUES('R.O.B', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 1.178, 1.725, 1.134, 38, 1.6);
INSERT INTO RankMovement VALUES('Falco', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 1.344, 1.619, 0.977, 50.51, 1.8);
INSERT INTO RankMovement VALUES('Peach', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 0.924, 1.595, 1.029, 30.03, 1.19);
INSERT INTO RankMovement VALUES('DLC1', 'Left/Right Walk Speed', 'Left/Right Run Speed', 'Horizontal Aerial Speed', 'Jump Height', 'Fall Speed', 0, 0, 0, 0, 0);

INSERT INTO FavChar VALUES('Ice Climbers', 'They are fun to get people salty');

INSERT INTO Notes VALUES('Both Inkling and Ridley is new to Super Smash Bros Ultimate.');

/* Special Cases */

--For when user selects the other version of Simon aka Richter
/*
UPDATE Attack
SET characterID = 'Richter'
WHERE characterID != 'Mario' OR characterID != 'Luigi' OR characterID != 'Simon';

UPDATE Movement
SET characterID = 'Richter'
WHERE characterID != 'Mario' OR characterID != 'Luigi' OR characterID != 'Simon';

UPDATE Dodge
SET characterID = 'Richter'
WHERE characterID != 'Mario' OR characterID != 'Luigi' OR characterID != 'Simon';
*/

--If non new DLC character is not released, delete his data from table

DELETE FROM Attack WHERE characterID = 'DLC1';
DELETE FROM Movement WHERE characterID = 'DLC1';
DELETE FROM Dodge WHERE characterID = 'DLC1';

--*******RANKING SYSTEM*********

--Organizing values and inserting them into rank table by DMG category

INSERT INTO Ranking
SELECT characterID, smashTot, smashTotal From RankDMG
ORDER BY smashTotal DESC;

INSERT INTO Ranking
SELECT characterID, tiltTot, tiltTotal From RankDMG
ORDER BY tiltTotal DESC;

INSERT INTO Ranking
SELECT characterID, specialTot, specialTotal From RankDMG
ORDER BY specialTotal DESC;

INSERT INTO Ranking
SELECT characterID, aerialTot, aerialTotal From RankDMG
ORDER BY aerialTotal DESC;

--Organizing values and inserting into rank table by Movement category
INSERT INTO Ranking
SELECT characterID, horizontalWalk, lr_walk From RankMovement
ORDER BY lr_walk DESC;

INSERT INTO Ranking
SELECT characterID, horizontalRun, lr_run From RankMovement
ORDER BY lr_run DESC;

INSERT INTO Ranking
SELECT characterID, horizonalAir, lw_air From RankMovement
ORDER BY lw_air DESC;

INSERT INTO Ranking
SELECT characterID, jumpHeight, u_height From RankMovement
ORDER BY u_height DESC;

INSERT INTO Ranking
SELECT characterID, fallSpeed, d_fallspeed From RankMovement
ORDER BY d_fallspeed DESC;




--This query is to put a bookmarked character into the favorites table.
-- It would be conditional statement when user clicks a button,
--It would insert the character as well as a small user input description of the character
-- into the FavChar table
--INSERT INTO FavChar VALUES( characterID, description)


--Have a ranking table where the collumns are criteria,character,rank,and value
--Order all characters based on user selected columns/all columns displayong
--displaying one after another all the ranks.
--use python for front end and displaying
--order it in sql and display it in python the top 3 characters.
--For it to be weighted system, combine all damage into a seperate column
-- and rank based off of that //possibly have to hardcode it in manually
-- Then use python to see what categories to display within the ranking table


--we can use the favorite system to interact with the ranks and displays the rank's dmg