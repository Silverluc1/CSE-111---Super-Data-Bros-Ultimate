#test running

db="final.sqlite"

sqlite3 $db < SuperDataBrosUltimate.sql
python3 SuperDataBrosUlt.py

printf "Thank You For Using Super Data Bros Ultimate! \n";