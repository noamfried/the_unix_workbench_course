#!/usr/bin/env bash
# File: guessinggame.sh
# instructions :
# When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.
#If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
#If the user's guess is correct then they should be congratulated and the program should end.
#The program should not end until the user has entered the correct number of files in the current directory.
#The program should be able to be run by entering bash guessinggame.sh into the console.
#The program should contain at least one function, one loop, and one if statement.
#The program should be more than 20 lines of code but less than 50 lines of code.

function print {
        if [[ $1 = "correct" ]]
        then
                echo "Congratulation ! you found the correct number!"
        else
                echo "Your guess is too $1 , please try again"
        fi
}


real_number=$(ls -1 | wc -l)
response=-1

while [[ $response -ne $real_number ]]
do
        echo "how many files are in the current directory?"
        read response

        if [[ $response -gt $real_number ]]
        then
                print high
        elif [[ $response -lt $real_number ]]
        then
                print low
        else
               print correct
        fi

done
