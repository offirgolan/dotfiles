#!/bin/sh
#
# iTerm Setup

# Install the iTerm theme
open "$DOTFILES/iterm/themes/Chesterish.itermcolors"

# Specify the preferences directory
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "$DOTFILES/iterm"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true
