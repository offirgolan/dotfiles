#!/bin/sh

# Make sure asdf is installed
sh -c $DOTFILES/asdf/install.sh

# Install prerequisite dependencies
brew install coreutils gpg

# Add the asdf nodejs plugin
asdf plugin-add nodejs

# Imports Node.js release team's OpenPGP keys to the keyring
bash $HOME/.asdf/plugins/nodejs/bin/import-release-team-keyring
