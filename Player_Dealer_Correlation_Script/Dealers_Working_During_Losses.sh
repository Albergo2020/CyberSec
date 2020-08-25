#!/bin/bash

echo "This script searches through Lucky Duck Casino work schedules and displays which Roulette dealers were working on March 10th, 12th, and 15th During the hours in which the Casino suffered losses. The findings are displayed to your screen and appended to a file called Dealers_Working_During_Losses."

cat 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule | grep -E -- '05:00:00 AM|08:00:00 PM|02:00:00 PM|08:00:00 AM|11:00:00 PM' | awk -F " " '{print $1, $2, $5, $6}' >> Dealers_Working_During_Losses |cat 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule | grep -E -- '05:00:00 AM|08:00:00 PM|02:00:00 PM|08:00:00 AM|11:00:00 PM' | awk -F " " '{print $1, $2, $5, $6}'

echo 'The output of this script will disclose which dealer you should be suspicious of!'

echo 'Thanks for using another script by Michael ;-)'
