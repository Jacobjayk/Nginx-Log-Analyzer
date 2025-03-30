#!/bin/bash

###########################
# Author: Jacob Akotuah
#
# This script analyzes Nginx access logs and provides statistics
#
# Version: v1.0
###########################

# Check if the log file is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <logfile>"
  exit 1
fi

LOGFILE=$1

# Function to print a header
print_header() {
  echo -e "\n=============================="
  echo -e "$1"
  echo -e "=============================="
}

# Top 5 IP addresses with the most requests
print_header "Top 5 IP addresses with the most requests"
awk '{print $1}' $LOGFILE | sort | uniq -c | sort -nr | head -5

# Top 5 most requested paths
print_header "Top 5 most requested paths"
awk '{print $7}' $LOGFILE | sort | uniq -c | sort -nr | head -5

# Top 5 response status codes
print_header "Top 5 response status codes"
awk '{print $9}' $LOGFILE | sort | uniq -c | sort -nr | head -5

# Top 5 user agents
print_header "Top 5 user agents"
awk -F\" '{print $6}' $LOGFILE | sort | uniq -c | sort -nr | head -5
