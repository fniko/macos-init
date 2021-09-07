#!/bin/bash

echo "######################"
echo "> Adding bash aliases"
echo "######################"

declare -a aliases_list

# Just add alias in the following matrix and it will be added to ~/.bashrc
aliases_list=(
  "cls='clear'"
  "c='xclip'"
  "v='xclip -o'"
  "tf='terraform'"
  "k='kubectl'"
  "ll='ls -alF'"
  "la='ls -A'"
  "l='ls -CF'"
  "tg='terragrunt'"
  "p='python3'"
)

# Check if alias exists and if not add it
for item in "${aliases_list[@]}"; do
  if grep -Fxq "alias $item;" ~/.bashrc; then
    echo "Skipping $item ..."
  else
    echo "Adding $item"
    echo "alias $item;" >> ~/.bashrc
  fi
done

echo "> Show content of ~/.bashrc"
cat ~/.bashrc
echo "> [DONE] Aliases added!"
