#!/bin/sh

if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  brew install rbenv
fi

if test ! $(which ruby-build)
then
  echo "  Installing ruby-build for you."
  brew install ruby-build
fi

rbenv install 2.1.3
rbenv global 2.1.3
