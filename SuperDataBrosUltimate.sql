--This file will have the creation of the main SQL commands that would extract the data for display.

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



--These are the commands for mario
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




/*

#### JUST AN EXAMPLE ON HOW TO CREATE AND ADD VALUES ON. TAKEN FROM EXAM ONCE GRADES WERE POSTED AND SOLUTION WAS RELEASED.#####
CREATE TABLE Classes(

    class varchar(50),
    type varchar(2),
    country varchar(50),
    numGuns int,
    bore int,
    displacement long
)
;

INSERT INTO Classes(class, type, country, numGuns, bore, displacement)

    VALUES
    ("Bismark", "bb", "Germany", 8, 15, 42000), ("Iowa", "bb", "USA", 9, 16, 46000),
    ("Kongo", "bc", "Japan", 8, 14, 32000), ("North Carolina", "bb", "USA", 9, 16, 37000),
    ("Renown", "bc", "Britain" , 6, 15, 32000), ("Revenge", "bb", "Britain", 8, 15, 29000),
    ("Tennessee", "bb", "USA", 12, 14, 32000), ("Yamato", "bb", "Japan", 9, 18, 65000)
;
/*