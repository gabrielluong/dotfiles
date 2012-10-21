#!/bin/bash

# Install Homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Get latest updates for Homebrew
brew update
# Upgrade any updated formulae from Homebrew
brew upgrade

brew install wget
brew install git

# Node & npm installation
brew install node
curl https://npmjs.org/install.sh | sh
npm install -g express

# RVM requirements
# brew install libksba
# brew tap homebrew/dupes
# brew install autoconf automake apple-gcc42

# rbenv installation
brew install rbenv ruby-build
rbenv install 1.9.3-p286
rbenv global 1.9.3-p286
rbenv rehash
gem install bundler

# Remove outdated Homebrew packages
brew cleanup