#!/bin/bash

# TODO:
# - Check if brew is installed, and avoid installing homebrew if so.

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

# Setup PostgreSQL
#brew install postgres
#initdb /usr/local/var/postgres -E utf8

brew install redis

# Get Gems
gem install bundler
gem install dashing
gem install sinatra
gem install shotgun
gem install nokogiri
gem install rails

# Remove outdated Homebrew packages
brew cleanup
