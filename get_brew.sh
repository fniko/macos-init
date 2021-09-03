#!/bin/bash

# Check if not run as root
if [ "$EUID" -eq 0 ]
  then echo "> Don't run as root!"; echo "> Exiting... :("
  exit
fi

# Install Homebrew
echo "######################"
echo "> Get Homebrew"
echo "######################"

# https://github.com/homebrew/install#uninstall-homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "-> Homebrew is ready"
