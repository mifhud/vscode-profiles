#!/bin/bash

# Append the configuration to ~/.zshrc if not already present
CONFIG='
# Setup VSCODE_DIR
export VSCODE_DIR="/mnt/c/Users/miftahul.huda.JATIS/AppData/Local/Programs/Microsoft VS Code/bin"
alias code=$VSCODE_DIR/code

# Setup DISTRO_NAME
export DISTRO_NAME="Ubuntu-24.04"
export VSCODE_PROFILES=/mnt/d/work_me/vscode-profiles/launcher/linux
export PATH=$VSCODE_PROFILES:$PATH
'

if ! grep -q 'export VSCODE_DIR' ~/.zshrc; then
    echo "$CONFIG" >> ~/.zshrc
    echo "Configuration added to ~/.zshrc"
else
    echo "Configuration already exists in ~/.zshrc"
fi

# Reload the ~/.zshrc file
source ~/.zshrc
echo "Reloaded ~/.zshrc"
