#!/usr/bin/env zsh

echo Upgrading casks, even those which have auto-update mechanisms

brew upgrade --cask $(brew list --cask)

