#!/bin/bash

# Install Homebrew
echo "######################"
echo "> Installing apps"
echo "######################"


# Add starship so it will load it upon bash startup; if not exists
brew install starship
grep -qxF 'eval "$(starship init bash)"' ~/.bash_profile || echo 'eval "$(starship init bash)"' >> ~/.bash_profile
source ~/.bash_profile
cp starship.toml ~/.config/starship.toml
cat ~/.bash_profile
echo "----------------"

brew install bash
brew install bash-completion

brew install vim --override-system-vi
brew install screen

brew install tree
brew install watch
brew install nano
brew install htop
brew install kubectl

