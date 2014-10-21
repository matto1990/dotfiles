# If we're using a version of git that's not from homewbrew, install it
# It's most likely much more up to date
if [ "$(which git)" != "$(brew --prefix)/bin/git" ]
then
  echo "  Installing git from homebrew."
  brew install git tig
fi

if test ! $(which hub)
then
  echo "  Installing hub from homebrew."
  brew install --HEAD hub
fi
