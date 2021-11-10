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