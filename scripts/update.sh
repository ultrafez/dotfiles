#!/usr/bin/env zsh

read -s -k $'?Reminder: this may close incognito windows. Get admin perms. Continue? [Enter]'

# Work from ~
cd ~

# Update normal packages
brew update && brew upgrade

# Install any new packages
brew bundle install

# Upgrade casks
~/dotfiles/scripts/brew-upgrade-casks.sh

