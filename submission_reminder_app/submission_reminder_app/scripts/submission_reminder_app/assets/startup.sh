#!/bin/bash

# Log startup
echo "$(date): Starting the submission reminder app..." >> ../logs/app.log

# Load environment variables from config.env
if [ -f "../config/config.env" ]; then
    source ../config/config.env
else
    echo "$(date): Error - config.env not found!" >> ../logs/app.log
    exit 1
fi

# Check if submissions.txt exists
if [ -f "../submissions/submissions.txt" ]; then
    echo "$(date): Submissions file found." >> ../logs/app.log
else
    echo "$(date): Error - submissions.txt not found!" >> ../logs/app.log
    exit 1
fi

# Run reminder.sh script
if [ -f "./reminder.sh" ]; then
    echo "$(date): Running reminder script..." >> ../logs/app.log
    ./reminder.sh
else
    echo "$(date): Error - reminder.sh not found!" >> ../logs/app.log
    exit 1
fi

# Log completion
echo "$(date): Reminder app finished running." >> ../logs/app.log

