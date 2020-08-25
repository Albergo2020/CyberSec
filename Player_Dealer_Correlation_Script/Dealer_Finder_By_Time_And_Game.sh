#!/bin/bash
echo "Welcome To The Lucky Duck Casino's Quick Dealer Schedule Lookup."
read -p "Enter which type of dealer you are looking into  (ex: blackjack, roulette, or texas_holdem):" game
read -p "Enter the date you want to investigate in the format mmdd (ex: 0310 for March 10th):" date
read -p "Enter the time in which you want to investigate in the format hh:mm:ss AM/PM, (example:  12:00:00 AM):" timeframe
if [ "$game" == 'blackjack' ];
then
cat "$date"_Dealer_schedule | awk -F" " '{print $1, $2, $3, $4}'| grep "$timeframe" >> Dealer_Schedule_Search
elif [ "$game" == 'roulette' ];
then
cat "$date"_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}'| grep "$timeframe" >> Dealer_Schedule_Search
elif [ "$game" == 'texas_holdem' ];
then
cat "$date"_Dealer_schedule | awk -F" " '{print $1, $2, $7, $8}'| grep "$timeframe" >> Dealer_Schedule_Search
else
echo "invalid game"
fi
echo "All Search Results Are Appended To The Dealer_Schedule_Search File Found In The Current Directory."
