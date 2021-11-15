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
    s_total varchar(10),
    --Amount of frames where character in intangible
    s_intang int,
    --Total Frames for Foward Roll
    r_total varchar(10),
    --Amount of frames where character in intangible
    r_intang int,
    --Total Frames for Non-Directional Airdodge
    a_total varchar(10),
    --Amount of frames where character in intangible
    a_intang int
)
;

-- Example of SQL Statement?
SELECT s_total AS SpotDodge
FROM Dodge
WHERE(
    characterID = 'ROB'
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