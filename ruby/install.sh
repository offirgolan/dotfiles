#!/bin/sh

# Make sure asdf is installed
sh -c $DOTFILES/asdf/install.sh

# Add the asdf ruby plugin
asdf plugin-add ruby
