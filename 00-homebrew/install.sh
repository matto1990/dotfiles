#!/bin/sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install custom taps
brew tap karan/karan

# Install homebrew packages
brew install grc coreutils gitignore

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
  alfred
  atom
  dashlane
  dropbox
  fabric
  google-chrome
  handbrake
  iterm2
  keepingyouawake
  macpass
  paw
  qlcolorcode
  qlmarkdown
  quicklook-json
  sketch
  skype
  slack
  spotify
  sublime-text3
  telegram
  the-unarchiver
  transmission
  virtualbox
  vlc
)

# Install apps to /Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

exit 0
