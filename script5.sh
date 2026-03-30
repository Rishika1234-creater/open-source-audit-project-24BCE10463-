#!/bin/bash
# Script 5: Open Source Manifesto Generator
# it is just a fun script,it generates a small manifesto based on your answers

echo "Answer 3 questions to create your manifesto."
echo ""

read -p "1. One open-source tool you would use  daily: " TOOL
read -p "2. In one word,tell us what does freedom mean to you: " FREEDOM
read -p "3. Something you'd build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Writing your manifesto..."
echo ""

{
    echo "Open Source Manifesto"
    echo "Date: $DATE"
    echo ""
    echo "I use $TOOL every day, it's become a core part of how I work."
    echo "To me, freedom is $FREEDOM."
    echo "Someday I want to build $BUILD and put it out there for anyone to use."
    echo ""
    echo "Open source matters. That's why I wrote this."
} > $OUTPUT

echo "Saved to $OUTPUT"
echo "------------------"
cat $OUTPUT