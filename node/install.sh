#!/bin/sh

# Make sure asdf is installed
sh -c $DOTFILES/asdf/install.sh

# Install prerequisite dependencies
brew install coreutils gpg

# Add the asdf nodejs plugin
asdf plugin-add nodejs

# To use a dedicated keyring, prepare the dedicated keyring and set it as the default keyring in the current shell:
export GNUPGHOME="$HOME/.asdf/keyrings/nodejs" && mkdir -p "$GNUPGHOME" && chmod 0700 "$GNUPGHOME"

# Imports Node.js release team's OpenPGP keys to the keyring
bash $HOME/.asdf/plugins/nodejs/bin/import-previous-release-team-keyring
bash $HOME/.asdf/plugins/nodejs/bin/import-release-team-keyring
