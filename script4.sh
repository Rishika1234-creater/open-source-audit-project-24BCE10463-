#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh logfile keyword

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "Log File Analyzer"
echo "-----------------"

# check file exists or not
if [ ! -f "$LOGFILE" ]
then
    echo "File not found"
    exit 1
fi

# check if file is empty
if [ ! -s "$LOGFILE" ]
then
    echo "File is empty"
    exit 1
fi

# reading file line by line
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"
    then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times"

echo ""
echo "Last 5 matching lines are:"

grep -in "$KEYWORD" "$LOGFILE" | tail -5

echo "-----------------"
echo "Done"