#!/bin/sh

# Make sure asdf is installed
sh -c $DOTFILES/asdf/install.sh

# Install prerequisite dependencies
brew install gpg

# Add the asdf nodejs plugin
asdf plugin-add yarn
