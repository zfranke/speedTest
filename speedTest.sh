#!/bin/bash
#Linux Only
echo "Running Internet Speed Test"
echo "Please wait...Results will be displayed and sent to: bashLog.txt"
echo "Running Internet Speed Test" >> bashLog.txt

#Check if speedtest-cli is installed, if not install it
if [ ! -f /usr/local/bin/speedtest-cli ]; then
    echo "speedtest-cli not installed, installing now..."
    echo "speedtest-cli not installed, installing now..." >> logs/bashLog.txt
    sudo apt-get install speedtest-cli
fi

# If the bashLog.txt file exists, delete it
if [ -f bashLog.txt ]; then
    rm bashLog.txt
fi

# Run speedtest-cli and save results to bashLog.txt
echo "Running Internet Speed Test"
# Add timestamp to log file
echo "Date: $(date)" >> logs/bashLog.txt
speedtest-cli >> bashLog.txt

echo "Running Internet Speed Test Complete"
# Path: speedTest.sh