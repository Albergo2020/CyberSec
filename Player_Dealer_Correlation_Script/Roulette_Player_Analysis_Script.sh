#!/bin/bash
echo "Welcome To The Lucky Duck Casino Quick Roulette Player Win/Loss Data Retriever. This Script Will Display the Amount Won Or Lost At The Roulette Table Along With Who Was Playing. Simply Input The Date, And Whether You Want Winning Or Loss Data. The Data You Searched For Will Be Saved To A File In The Current Directory Called Roulette_Player_Winloss"
read -p "Enter the date you want to investigate in the format of mmdd (ex: 0310 for March 10th):" date
read -p "Enter whether you are searching for a win or a loss by using +/-." winloss
if [ $winloss ==  "-" ]
then 
    cat "$date"_win_loss_player_data | grep "$winloss" >> Roulette_Player_WinLoss
elif [ $winloss == "+" ]
then
    cat "$date"_win_loss_player_data | grep -v "-" >> Roulette_Player_WinLoss
else
    echo "Please Enter A Valid Option"
fi
echo "Thanks For Using Another Script By Michael ;-)"

