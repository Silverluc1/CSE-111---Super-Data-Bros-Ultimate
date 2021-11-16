--This file will have the creation of the main SQL commands that would extract the data for display.


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
    lr_air long,
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

--INSERTION of data into empty tables

INSERT INTO Attack VALUES('Mario', 17.7, 10.0, 14.0, 7.0, 5.0, 7.0, 7.0, 0.0, 5.0, 12.0, 10.5, 7.0, 1.3);
INSERT INTO Attack VALUES('Luigi', 15.0, 15.0, 14.0, 9.0, 5.0, 6.0, 6.1, 2.0, 25.0, 8.0, 14.0, 10.0, 11.0);
INSERT INTO Attack VALUES('Simon', 14.0, 12.0, 16.0, 10.0. 5.0, 10.0, 8.0, 2.0, 2.0, 12.0, 12.0, 12.0, 12.0);

INSERT INTO Movement VALUES('Mario', 1.15, 1.76, 1.208, 36.33, 1.5);
INSERT INTO Movement VALUES('Luigi', 1.134, 1.65, 0.77, 44, 1.32);
INSERT INTO Movement VALUES('Simon', 0.76, 1.52, 0.94, 30, 1.85);

INSERT INTO Dodge VALUES ('Mario', 25.0, '3-17', 29, '4-15', 52, '3-29'); 
INSERT INTO Dodge VALUES ('Luigi', 25.0, '3-17', 29, '4-15', 57, '3-29');
INSERT INTO Dodge VALUES ('Simon', 26.0, '3-17', 30, '4-15', 46, '3-29');



--**************************************These are the commands for Mario**************************************--
-- Smash attacks for Mario
SELECT smash_leftright AS LR_Smash
FROM Attack
WHERE(
    characterID = 'Mario'
);

SELECT smash_down AS DownSmash
FROM Attack
WHERE(
    characterID = 'Mario'
);

SELECT smash_up AS UpSmash
FROM Attack
WHERE(
    characterID = 'Mario'
);

--Tilt attacks for Mario

SELECT tilt_leftright AS LR_Tilt
FROM Attack
WHERE(
    characterID = 'Mario'
);

SELECT tilt_down AS DownTilt
FROM Attack
WHERE(
    characterID = 'Mario'
);

SELECT tilt_up AS UpTilt
FROM Attack
WHERE(
    characterID = 'Mario'
);

--Special attacks for Mario

SELECT special_leftright AS LR_Special
FROM Attack
WHERE(
    characterID = 'Mario'
);

SELECT special_down AS DownSpecial
FROM Attack
WHERE(
    characterID = 'Mario'
);SELECT special_up AS UpSpecial
FROM Attack
WHERE(
    characterID = 'Mario'
);

--Aerial attacks for Mario
SELECT aerial_right AS RightAerial
FROM Attack
WHERE(
    characterID = 'Mario'
);

SELECT aerial_left AS LeftAerial
FROM Attack
WHERE(
    characterID = 'Mario'
);
SELECT aerial_up AS UpAerial
FROM Attack
WHERE(
    characterID = 'Mario'
);

SELECT aerial_down AS DownAerial
FROM Attack
WHERE(
    characterID = 'Mario'
);


--All movement statements for Mario
SELECT lr_walk AS LR_Walk
FROM Movement
WHERE(
    characterID = 'Mario'
);

SELECT lr_run AS LR_Run
FROM Movement
WHERE(
    characterID = 'Mario'
);

SELECT lr_air AS LR_Air
FROM Movement
WHERE(
    characterID = 'Mario'
);

SELECT u_height AS JumpHeight
FROM Movement
WHERE(
    characterID = 'Mario'
);

SELECT d_fallspeed AS FallingSpeed
FROM Movement
WHERE(
    characterID = 'Mario'
);

-- All Dodgeing SQL statments for Mario

SELECT s_total AS SpotTotalFrames
FROM Dodge
WHERE(
    characterID = 'Mario'
);

SELECT s_intang AS SpotFramesIntangible
FROM Dodge
WHERE(
    characterID = 'Mario'
);

SELECT r_total AS RollTotalFrames
FROM Dodge
WHERE(
    characterID = 'Mario'
);

SELECT r_intang AS RollFramesIntangible
FROM Dodge
WHERE(
    characterID = 'Mario'
);

SELECT a_total AS AirTotalFrames
FROM Dodge
WHERE(
    characterID = 'Mario'
);

SELECT a_intang AS AirFramesIntangible
FROM Dodge
WHERE(
    characterID = 'Mario'
);

--**************************************END of the commands for Mario**************************************--



--**************************************These are the commands for Luigi**************************************--
-- Smash attacks for Luigi
SELECT smash_leftright AS LR_Smash
FROM Attack
WHERE(
    characterID = 'Luigi'
);

SELECT smash_down AS DownSmash
FROM Attack
WHERE(
    characterID = 'Luigi'
);

SELECT smash_up AS UpSmash
FROM Attack
WHERE(
    characterID = 'Luigi'
);

--Tilt attacks for Luigi

SELECT tilt_leftright AS LR_Tilt
FROM Attack
WHERE(
    characterID = 'Luigi'
);

SELECT tilt_down AS DownTilt
FROM Attack
WHERE(
    characterID = 'Luigi'
);

SELECT tilt_up AS UpTilt
FROM Attack
WHERE(
    characterID = 'Luigi'
);

--Special attacks for Luigi

SELECT special_leftright AS LR_Special
FROM Attack
WHERE(
    characterID = 'Luigi'
);

SELECT special_down AS DownSpecial
FROM Attack
WHERE(
    characterID = 'Luigi'
);SELECT special_up AS UpSpecial
FROM Attack
WHERE(
    characterID = 'Luigi'
);

--Aerial attacks for Luigi
SELECT aerial_right AS RightAerial
FROM Attack
WHERE(
    characterID = 'Luigi'
);

SELECT aerial_left AS LeftAerial
FROM Attack
WHERE(
    characterID = 'Luigi'
);
SELECT aerial_up AS UpAerial
FROM Attack
WHERE(
    characterID = 'Luigi'
);

SELECT aerial_down AS DownAerial
FROM Attack
WHERE(
    characterID = 'Luigi'
);


--All movement statements for Luigi
SELECT lr_walk AS LR_Walk
FROM Movement
WHERE(
    characterID = 'Luigi'
);

SELECT lr_run AS LR_Run
FROM Movement
WHERE(
    characterID = 'Luigi'
);

SELECT lr_air AS LR_Air
FROM Movement
WHERE(
    characterID = 'Luigi'
);

SELECT u_height AS JumpHeight
FROM Movement
WHERE(
    characterID = 'Luigi'
);

SELECT d_fallspeed AS FallingSpeed
FROM Movement
WHERE(
    characterID = 'Luigi'
);


-- All Dodgeing SQL statments for Luigi

SELECT s_total AS SpotTotalFrames
FROM Dodge
WHERE(
    characterID = 'Luigi'
);

SELECT s_intang AS SpotFramesIntangible
FROM Dodge
WHERE(
    characterID = 'Luigi'
);

SELECT r_total AS RollTotalFrames
FROM Dodge
WHERE(
    characterID = 'Luigi'
);

SELECT r_intang AS RollFramesIntangible
FROM Dodge
WHERE(
    characterID = 'Luigi'
);

SELECT a_total AS AirTotalFrames
FROM Dodge
WHERE(
    characterID = 'Luigi'
);

SELECT a_intang AS AirFramesIntangible
FROM Dodge
WHERE(
    characterID = 'Luigi'
);

--**************************************END of the commands for Luigi**************************************--



--**************************************These are the commands for Simon**************************************--
-- Smash attacks for Simon
SELECT smash_leftright AS LR_Smash
FROM Attack
WHERE(
    characterID = 'Simon'
);

SELECT smash_down AS DownSmash
FROM Attack
WHERE(
    characterID = 'Simon'
);

SELECT smash_up AS UpSmash
FROM Attack
WHERE(
    characterID = 'Simon'
);

--Tilt attacks for Simon

SELECT tilt_leftright AS LR_Tilt
FROM Attack
WHERE(
    characterID = 'Simon'
);

SELECT tilt_down AS DownTilt
FROM Attack
WHERE(
    characterID = 'Simon'
);

SELECT tilt_up AS UpTilt
FROM Attack
WHERE(
    characterID = 'Simon'
);

--Special attacks for Simon

SELECT special_leftright AS LR_Special
FROM Attack
WHERE(
    characterID = 'Simon'
);

SELECT special_down AS DownSpecial
FROM Attack
WHERE(
    characterID = 'Simon'
);SELECT special_up AS UpSpecial
FROM Attack
WHERE(
    characterID = 'Simon'
);

--Aerial attacks for Simon
SELECT aerial_right AS RightAerial
FROM Attack
WHERE(
    characterID = 'Simon'
);

SELECT aerial_left AS LeftAerial
FROM Attack
WHERE(
    characterID = 'Simon'
);
SELECT aerial_up AS UpAerial
FROM Attack
WHERE(
    characterID = 'Simon'
);

SELECT aerial_down AS DownAerial
FROM Attack
WHERE(
    characterID = 'Simon'
);


--All movement statements for Simon
SELECT lr_walk AS LR_Walk
FROM Movement
WHERE(
    characterID = 'Simon'
);

SELECT lr_run AS LR_Run
FROM Movement
WHERE(
    characterID = 'Simon'
);

SELECT lr_air AS LR_Air
FROM Movement
WHERE(
    characterID = 'Simon'
);

SELECT u_height AS JumpHeight
FROM Movement
WHERE(
    characterID = 'Simon'
);

SELECT d_fallspeed AS FallingSpeed
FROM Movement
WHERE(
    characterID = 'Simon'
);


-- All Dodgeing SQL statments for Simon

SELECT s_total AS SpotTotalFrames
FROM Dodge
WHERE(
    characterID = 'Simon'
);

SELECT s_intang AS SpotFramesIntangible
FROM Dodge
WHERE(
    characterID = 'Simon'
);

SELECT r_total AS RollTotalFrames
FROM Dodge
WHERE(
    characterID = 'Simon'
);

SELECT r_intang AS RollFramesIntangible
FROM Dodge
WHERE(
    characterID = 'Simon'
);

SELECT a_total AS AirTotalFrames
FROM Dodge
WHERE(
    characterID = 'Simon'
);

SELECT a_intang AS AirFramesIntangible
FROM Dodge
WHERE(
    characterID = 'Simon'
);

--**************************************END of the commands for Simon**************************************--