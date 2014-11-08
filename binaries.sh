#!/bin/bash
#
# Binary installer
# Based on Matthew Mueller's dots
# https://github.com/MatthewMueller/dots/blob/master/os/osx/binaries.sh
#

# Check for Homebrew
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# Install other useful binaries
binaries=(
    git
    flash
    node
    python
    # rbenv
    # ruby-build
    wget
    mackup
    mercurial
)

# Install the binaries
brew install ${binaries[@]}

# Remove outdated Homebrew packages
brew cleanup

exit 0
