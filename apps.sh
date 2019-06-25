#!/bin/bash

#Utility to install apps 
echo "Installing mas (tool to install apps)"
brew install mas-cli/tap/mas

#Firefox
echo "Installing Firefox" 
brew cask install firefox

#Burp Suite
echo "Burp Suite"
brew cask install burp-suite

#Angry IP Scanner
echo "Angry IP Scanner" 
brew cask install angry-ip-scanner

#LanScan
echo "LanScan" 
mas install 472226235

#Tunnelblick
echo "Tunnelblick"
brew cask install tunnelblick

#Impactor
echo "Impactor" 
echo "This is 32 bit so it won't work on the new macOS"
echo "Installing anyways" 
brew cask install impactor

#iTerm 
echo "Installing iTerm" 
brew cask install iterm2

#VNC Viewer
echo "VNC Viewer"
brew cask install vnc-viewer

#Sublime Text 
echo "Installing Sublime Text" 
brew cask install sublime-text

#Visual Studio Code
echo "Installing Visual Studio" 
brew cask install visual-studio-code

#The Unarchiver
echo "The Unarchiver"
mas install 425424353

#Spotify 
echo "Spotify" 
brew cask install spotify

#Pages
echo "Pages"
mas install 409201541

#Xcode 
echo "Xcode" 
mas install 497799835

#Tor 
echo "Tor"
brew cask install tor-browser

#Discord
echo "Discord" 
brew cask install discord
echo "Install Window Tidy" 
echo "Install Impactor" 
echo "Install IDA Pro" 
echo "Install Hopper" 
echo "Install Photoshop" 
echo "Install uTorrent" 
echo "Install Clean My Mac" 


