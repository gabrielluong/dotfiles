#!/bin/bash
#
# Application installer (via brew-cask)
# Based on Matthew Mueller's dots
# https://github.com/MatthewMueller/dots/blob/master/os/osx/apps.sh
#

set -e

# Apps
apps=(
	alfred
	appcleaner
	atom
	brackets
	cloudup
	dropbox
	firefox
	firefox-aurora
	firefox-nightly
	flux
	google-chrome-canary
	iterm2
	mactex
	notational-velocity
	nvalt
	onepassword
	skype
	spotify
	sublime-text3
	the-unarchiver
    totalfinder
	transmission
	vagrant
	virtualbox
	vlc
)

font=(
)

# Specify the location of the apps
appdir="/Applications"

main() {
	# Ensure homebrew is installed
	homebrew

	# Install homebrew-cask
	echo "installing cask..."
	brew install caskroom/cask/brew-cask

	# Tap alternative versions
	brew tap caskroom/versions

	# Tap the fonts
	brew tap caskroom/fonts

	# Update homebrew
	brew update && brew cask update

	# Install apps
	echo "installing apps..."
	brew cask install --appdir=$appdir ${apps[@]}

	# Install fonts
	# echo "installing fonts..."
	# brew cask install ${fonts[@]}

	alfred
	cleanup
}

# Check for Homebrew
homebrew() {
	if test ! $(which brew); then
	echo "Installing homebrew..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi
}

# Link with alfred
alfred() {
	brew cask alfred link
}

cleanup() {
	brew cleanup
    brew cask cleanup
}

main "$@"
exit 0
