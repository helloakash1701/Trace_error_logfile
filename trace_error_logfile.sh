#!/bin/env bash

##################################
# Author: Akash Mishra
# Time: 13/06/2023
# This script gets the errors present in a log file located at GitHub
# Versiom: v1


set -e

echo "Welcome to Trace-Error "
echo "Creating a new directory to store your log-file"

mkdir Trace_error
cd Trace_error

echo "Please provide your source of log-file, could be GitHub, S3 bucket etc: "
read url

curl echo "$url" | grep "error" | cat > errors.txt 

sleep 1

echo "Your file with errors is inside errors.txt file"


echo "Do you want me to print your errors.txt file "
read output
if [ "$output" = "Y" ]
then
cat errors.txt
echo "Happy Scripting "
else
echo "Happy Scripting "
fi
