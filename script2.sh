#!/bin/bash
# Script 2: Package Checker
# this script checks if git is installed and shows some basic info

PACKAGE="git"

echo "-----------------------"
echo "Checking if $PACKAGE is available..."
echo "------------------------"

# checking installation
if dpkg -l | grep -q "$PACKAGE"
then
    echo "$PACKAGE is already installed on this system."
    
    # printing version
    echo "Git version:"
    git --version
else
    echo "Seems like $PACKAGE is not installed."
fi

echo "-------------------------"

# small description
echo "Git is a version control system used to track changes in code."
echo "It is very helpful when working on projects with multiple files."

echo "-------------------------------"