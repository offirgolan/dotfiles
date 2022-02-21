#!/bin/sh

# Make sure asdf is installed
sh -c $DOTFILES/asdf/install.sh

# Install prerequisite dependencies
brew install coreutils gpg

# Add the asdf nodejs plugin
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
