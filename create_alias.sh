#!/bin/bash

echo "######################"
echo "> Adding bash aliases"
echo "######################"

declare -a aliases_list

# Just add alias in the following matrix and it will be added to ~/.bash_profile
aliases_list=(
  "cls='clear'"
  "c='xclip'"
  "v='xclip -o'"
  "tf='terraform'"
  "k='kubecetl'"
  "ll='ls -alF'"
  "la='ls -A'"
  "l='ls -CF'"
)

# Check if alias exists and if not add it
for item in "${aliases_list[@]}"; do
  if grep -Fxq "alias $item;" ~/.bash_profile; then
    echo "Skipping $item ..."
  else
    echo "Adding $item"
    echo "alias $item;" >> ~/.bash_profile
  fi
done

echo "> Show content of ~/.bash_profile"
cat ~/.bash_profile
echo "> [DONE] Aliases added!"
