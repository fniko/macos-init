#!/bin/bash

# Install Homebrew
echo "######################"
echo "> Installing apps"
echo "######################"


# Add starship so it will load it upon bash startup; if not exists
brew install starship
grep -qxF 'eval "$(starship init zsh)"' ~/.bashrc || echo 'eval "$(starship init zsh)"' >> ~/.bashrc
source ~/.bashrc
cp starship.toml ~/.config/starship.toml
cat ~/.bashrc
echo "----------------"

brew install bash
brew install bash-completion

brew install screen

brew install tree
brew install watch
brew install nano
brew install htop
brew install kubectl
brew install kubectx
brew install terraform
brew install terragrunt
brew install azure-cli
brew install direnv
brew install telnet
brew install minikube
brew install k9s
brew install helm

# Cask
brew install --cask boxcryptor
brew install --cask dropbox
brew install --cask qbittorrent
brew install --cask nrlquaker-winbox
brew install --cask pritunl
brew install --cask opera
brew install --cask firefox
brew install --cask microsoft-remote-desktop
brew install --cask spotify
brew install --cask telegram
