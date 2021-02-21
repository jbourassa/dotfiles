#!/bin/sh

if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi


echo "  Setting macOS defaults."
macos/defaults.sh

if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle --file macos/Brewfile
