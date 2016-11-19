#!/usr/bin/env sh

# https://raw.githubusercontent.com/torifat/dotfiles/master/install.sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `install.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

echo "💻  Preparing Development Environment..."

# Check if on macOS with uname Darwin
if [ $(uname -s) = 'Darwin' ]; then
  # Check for Homebrew
  if test ! $(which brew); then
    echo "📦  Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
fi

echo "📥  Installing Homebrew Packages..."
brew bundle --verbose

stow -v bash curl git tmux vim wget

n latest

# Install yarn
curl -o- -L https://yarnpkg.com/install.sh | bash

# Fix autocomp permission
chmod go-w '/usr/local/share'

source ./macosx.sh

# Install SFMono font - Xcode 8/MacOS Sierra I would say
#cp -v /Applications/Xcode.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/Resources/Fonts/SFMono-* ~/Library/Fonts

# Install curl certificate
# mkdir -p /usr/local/share/curl/
# wget http://curl.haxx.se/ca/cacert.pem -O /usr/local/share/curl/curl-ca-bundle.crt

echo "😀  Happy Hacking"