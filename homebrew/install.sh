#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

# Install homebrew packages
brew install grc coreutils spark

# Check for homebrew casks
if test ! $(brew cask)
then
    echo "  Installing Homebrew Casks for you."
    brew install caskroom/cask/brew-cask
    brew tap caskroom/versions
    brew cask alfred link
fi

# Apps
apps=(
  airfoil
  alfred
  caffeine
  crashlytics
  dropbox
  flash
  flux
  genymotion
  google-chrome
  handbrake
  iterm2
  keepassx
  lightpaper
  mailbox
  mongohub
  paw
  qlcolorcode
  qlmarkdown
  quicklook-json
  sketch
  skype
  slack
  spotify
  sublime-text3
  the-unarchiver
  transmission
  virtualbox
  vlc
)

# Install apps to /Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

exit 0
