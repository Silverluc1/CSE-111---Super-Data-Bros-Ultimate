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

def menuScreen():
    print('Welcome to Our Application Called: Super Data Bros Ultimate! \n \n')
    print('We have gathered data of your 10 most favorite characters from the fan-favorite game!\n')
    print('To get started what would you like to do first? We have the options below: \n \n')
    print('Press 1 for Character Data and Facts\n')
    print('Press 2 for Favorited Characters\n')
    print('Press 3 for Personal Notes\n')
    print('Press 4 to Exit Application\n\n')

    userInputText = input('Please Enter In Your Selection: ')
    userInputNum = int(userInputText)

    while( True ):
        if (not(1 <= userInputNum < 5)):
            userInputText = input('Please enter a number 1-4: ')
            userInputNum = int(userInputText)
        else:
            break
    
    return(userInputNum)

def characterDataAttack(conn, userChar):
    queryCharDataDMG = """
        SELECT *
        FROM Attack
        WHERE characterID = "{}"
    """.format(userChar)
    cur = conn.cursor()
    cur.execute(queryCharDataDMG)
    final = cur.fetchall()  
    return final

def characterDataDodge(conn, userChar):
    queryCharDataDodge = """
        SELECT *
        FROM Dodge
        WHERE characterID = "{}"
    """.format(userChar)
    cur = conn.cursor()
    cur.execute(queryCharDataDodge)
    final = cur.fetchall()  
    return final

def characterDataMovement(conn, userChar):
    queryCharDataMovement = """
        SELECT *
        FROM Movement
        WHERE characterID = "{}";
    """.format(userChar)
    cur = conn.cursor()
    cur.execute(queryCharDataMovement)
    final = cur.fetchall()  
    return final

def rankCompare(conn, userCharCompare1, userCharCompare2, userCharCompare3):
    queryRank = """
        SELECT *
        FROM Ranking
        WHERE characterID = "{}" OR characterID = "{}" OR characterID = "{}";
    """.format(userCharCompare1, userCharCompare2, userCharCompare3)
    cur = conn.cursor()
    cur.execute(queryRank)
    final = cur.fetchall()  
    return final
    #.format() will put in the parameters sequentially so format it based off of what parameters get used first
 
def displayFavoriteTable(conn):
    queryFavDis = """
        SELECT *
        FROM FavChar
    """
    cur = conn.cursor()
    cur.execute(queryFavDis)
    final = cur.fetchall()  
    return final

def main():
    database = r"final.sqlite"

    # create a database connection
    conn = openConnection(database)

    userInputNum = menuScreen()


    while(userInputNum == 1):
        print('The characters offered are:\nMario\nLuigi\nSimon\nSnake\nMr. Game And Watch\nFox\nCaptain Falcon\nKing K. Rool\nPikachu\nR.O.B\nFalco\nPeach\n')
        userChar = input('Please enter a the character you would like to see the data of: ')

        print(userChar, "Mario Attack Data:\n", characterDataAttack(conn, userChar))
        print(userChar, "Mario Movement Data:\n", characterDataMovement(conn, userChar))
        print(userChar, "Mario Dodge Data:\n", characterDataDodge(conn, userChar))

        userChar = input('If you would like to go to the main menu enter "1" OR enter "0" to Continue: ')
        userInt = int(userChar)

        if (userInt == 1 ):
            menuScreen()
        else:
            print('The characters offered are:\nMario\nLuigi\nSimon\nSnake\nMr. Game And Watch\nFox\nCaptain Falcon\nKing K. Rool\nPikachu\nR.O.B\nFalco\nPeach\n')
            userCharCompare1 = input('The First Character You Would Like To Compare: ')
            userCharCompare2 = input('The Second Character You Would Like To Compare: ')
            userCharCompare3 = input('The Final Character You Would Like To Compare: ')

            print(rankCompare(conn, userCharCompare1, userCharCompare2, userCharCompare3))
            break

    userInputNum = menuScreen()

    while(userInputNum == 2):
       print('This is the current Favorite Character Table:\n')
       displayFavoriteTable(conn)
       


    closeConnection(conn, database)


if __name__ == '__main__':
    main()