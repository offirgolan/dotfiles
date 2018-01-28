#!/bin/sh
#
# Alfred
#
# Setup alfred sync settings

defaults write com.runningwithcrayons.Alfred-Preferences-3 syncfolder -string "$DOTFILES/alfred"
