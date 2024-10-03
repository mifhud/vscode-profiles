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

# Launch VSCode with the specified WSL directory
# code --profile Golang --folder-uri vscode-remote://wsl+$DISTRO_NAME/$DIRECTORY

"$VSCODE_DIR/code" --profile "Golang Lite" $DIRECTORY
