#!/bin/bash

defaults write com.apple.dock autohide-time-modifier -float 0.12;killall Dock
defaults delete com.apple.dock autohide-time-modifier;killall Dock
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
defaults write com.apple.finder QuitMenuItem -bool true
defaults write com.apple.dock dashboard-in-overlay -bool true
defaults write com.apple.dock expose-group-by-app -bool false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.dock static-only -bool TRUE