import sqlite3
from sqlite3 import Error

#this file is going to be the "front end" of the project.
#it is going to be interactable through the terminal where 
#the user will get to do everything

def openConnection(_dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Open database: ", _dbFile)

    conn = None
    try:
        conn = sqlite3.connect(_dbFile)
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")

    return conn


def closeConnection(_conn, _dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Close database: ", _dbFile)

    try:
        _conn.close()
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")

def characterDataAttack(userChar):
    queryCharDataDMG = """"
        SELECT *
        FROM Attack
        GROUP BY characterID = userChar
    """

print('Welcome to Our Application Called: Super Data Bros Ultimate! \n \n')
print('We have gathered data of your 10 most favorite characters from the fan-favorite game!\n')
print('To get started what would you like to do first? We have the options below: \n \n')
print('Press 1 for Character Data and Facts\n')
print('Press 2 for Favorited Characters\n')
print('Press 3 for Personal Notes\n \n')

userInputText = input('Please Enter In Your Selection: ')
userInputNum = int(userInputText)

while( True ):
    if (not(1 <= userInputNum < 4)):
        userInputText = input('Please enter a number 1-3: ')
        userInputNum = int(userInputText)
    else:
        break


if(userInputNum == 1):
    print('The characters offered are:\nMario\nLuigi\nSimon\nSnake\nMr. Game And Watch\nFox\nCaptain Falcon\nKing K. Rool\nPikachu\nR.O.B\nFalco\nPeach\n')
    userChar = input('Please enter a the character you would like to see the data of: ')




def main():
    database = r"final.sqlite"

    # create a database connection
    conn = openConnection(database)

    print('Welcome to Our Application Called: Super Data Bros Ultimate! \n \n')
    print('We have gathered data of your 10 most favorite characters from the fan-favorite game!\n')
    print('To get started what would you like to do first? We have the options below: \n \n')
    print('Press 1 for Character Data and Facts\n')
    print('Press 2 for Favorited Characters\n')
    print('Press 3 for Personal Notes\n \n')

    userInputText = input('Please Enter In Your Selection: ')
    userInputNum = int(userInputText)

    while( True ):
        if (not(1 <= userInputNum < 4)):
            userInputText = input('Please enter a number 1-3: ')
            userInputNum = int(userInputText)
        else:
            break


    if(userInputNum == 1):
        print('The characters offered are:\nMario\nLuigi\nSimon\nSnake\nMr. Game And Watch\nFox\nCaptain Falcon\nKing K. Rool\nPikachu\nR.O.B\nFalco\nPeach\n')
        userChar = input('Please enter a the character you would like to see the data of: ')
   

    closeConnection(conn, database)


if __name__ == '__main__':
    main()