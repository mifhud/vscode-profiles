#!/bin/bash

# Check if a directory parameter is provided
if [ -z "$1" ]; then
  echo "No directory provided. Opening home directory in WSL."
  DIRECTORY="~"
elif [ "$1" == "." ]; then
  echo "Opening current directory in WSL."
  DIRECTORY=$(pwd)
else  
  DIRECTORY="$1"
fi

windsurf --profile "Default" --extensions-dir "/mnt/d/Program Files/.windsurf" $DIRECTORY
