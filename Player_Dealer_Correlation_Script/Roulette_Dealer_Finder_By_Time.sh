#!/bin/bash/

echo "Welcome To The Lucky Duck Casino's Quick Dealer Schedule Lookup."
read -p "Enter the date you want to investigate in the format mmdd (ex: 0310 for March 10th):" date
read -p "Enter the time in which you want to investigate in the format hh:mm:ss AM/PM, (example:  12:00:00 AM):" timestamp
cat "$date"_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}'| grep "$timestamp" 
echo "Thank You For Using Michael's Script" 





 
