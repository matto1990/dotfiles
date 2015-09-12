#!/bin/sh

# Setup Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
brew install grc coreutils

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
  dropbox
  fabric
  genymotion
  google-chrome
  handbrake
  iterm2
  keepingyouawake
  lightpaper
  macpass
  mailbox
  paw
  qlcolorcode
  qlmarkdown
  quicklook-json
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
