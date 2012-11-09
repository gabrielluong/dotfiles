#!/bin/bash

# Get latest updates for Homebrew
brew update
# Upgrade any updated formulae from Homebrew
brew upgrade
# Remove outdated Homebrew packages
brew cleanup

# Upgrade Python Packages
pip install --upgrade distribute
pip install --upgrade pip
pip3 install --upgrade distribute
pip3 install --upgrade pip

# Upgrade Ruby Packages
gem update --system
