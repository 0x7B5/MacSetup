#!/usr/bin/env bash

# Resolution 
# TODO: Automatically update resolution if not 1440 x 900
read -p "Have you changed your resolution to 1440 x 900? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
   echo "Ok" 
else
   echo "Change res"
fi

#Enable SSH
sudo systemsetup -setremotelogin on

#Install Xcode tools
if xcode-select -p &> /dev/null; then
    echo "XCode developer tools are installed!"
else
    echo "XCode developer tools must be installed!"
    xcode-select --install
    exit 1
fi

#Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


#Install NPM 
echo "Installing node"
brew update
brew install node

#Install web-popup
npm install --global website-popup-cli

#Install CocoaPods
echo "Cocoapods" 
sudo gem install cocoapods
pod setup --verbose

#GPG 
echo "GPG" 
brew install gnupg
echo "Don't forget to generate new key for github"

#Setup Vim 
echo "Setting up vim"
cat vimrc >> ~/.vimrc

#Setup Bash 
echo "Setting up bash profile." 
cat bash_profile >> ~/.bash_profile

echo "Showing battery percentage" 
defaults write com.apple.menuextra.battery ShowPercent -bool true

echo "Disabling space rearranging based on recent use"
defaults write com.apple.dock mru-spaces -bool false

#https://www.defaults-write.com/10-terminal-commands-to-speed-up-macos-sierra-on-your-mac/
echo "Disabling graphic settings to speed up mac" 
echo "Disable animations when opening and closing windows."
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
echo "Disable animations when opening a Quick Look window."
defaults write -g QLPanelAnimationDuration -float 0
echo "Accelerated playback when adjusting the window size (Cocoa applications)."
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
echo "Disable animation when opening the Info window in Finder (cmd⌘ + i)."
defaults write com.apple.finder DisableAllAnimations -bool true
echo "Disable animations when you open an application from the Dock."
defaults write com.apple.dock launchanim -bool false
echo "Disable the standard delay in rendering a Web page."
defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.25
echo "The keyboard react faster to keystrokes"
defaults write NSGlobalDomain KeyRepeat -int 0

echo "Showing full POSIX path in Finder header"
# https://www.defaults-write.com/display-full-posix-path-in-os-x-finder-title-bar/
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo "Disabling .DS_Store files"
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

echo "Showing hidden files"
defaults write com.apple.finder AppleShowAllFiles YES

echo "Showing all file extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "You should probably restart now."
