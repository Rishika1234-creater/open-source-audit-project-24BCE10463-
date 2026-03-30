#!/bin/bash
# Script 1: System Identity Report
# This script prints basic information about my Linux system
# I have tried to keep it simple and readable

echo "----------------------------------------"
echo "   Welcome to My System Report"
echo "----------------------------------------"

# showing current user
echo "Logged in user: $(whoami)"

# showing home directory
echo "Home directory: $HOME"

# showing kernel version
echo "Kernel version: $(uname -r)"

# showing current date and time
echo "Current date and time: $(date)"

# showing system uptime
echo "System uptime: $(uptime -p)"

# showing OS details (Ubuntu info)
echo "Operating System: $(lsb_release -d | cut -f2)"

# simple message about open source license
echo "This system is based on open source (GNU/Linux, GPL license)"

echo "----------------------------------------"
echo "End of report"
echo "----------------------------------------"