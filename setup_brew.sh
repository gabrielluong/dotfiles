#!/bin/bash

# Install Homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Get latest updates for Homebrew
brew update
# Upgrade any updated formulae from Homebrew
brew upgrade

brew install wget
brew install git

# Setup Python Environment
brew install python
pip install --upgrade distribute
pip install --upgrade pip
brew install python3
# To symlink "Idle" and the "Python Launcher" to ~/Application
#brew linkapps
pip install virtualenv
pip install virtualenvwrapper

# Setup Node Environment
brew install node
#brew link node
npm install -g express

# Setup RVM
# brew install libksba
# brew tap homebrew/dupes
# brew install autoconf automake apple-gcc42

# Setup Ruby with rbenv
brew install rbenv ruby-build
rbenv install 1.9.3-p286
rbenv global 1.9.3-p286
rbenv rehash
gem install bundler

# Remove outdated Homebrew packages
brew cleanup
