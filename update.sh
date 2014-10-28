#!/bin/bash

set -e

# Check for Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update brew packages
brew update && brew cask update
brew upgrade

# Cleanup
brew cleanup
brew cask cleanup

exit 0