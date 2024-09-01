#!/bin/sh
#
# Fonts
#
# Installs all fonts found in ~/Library/CloudStorage/Dropbox/Fonts

dropbox_fonts_dir=$HOME/Library/CloudStorage/Dropbox/Fonts

if [[ "$(uname -s)" = "Darwin" && -d $dropbox_fonts_dir ]]; then
  echo "Installing fonts..."
  cp -rn $dropbox_fonts_dir/. $HOME/Library/Fonts/
  echo "Done."
else
  echo "Could not install fonts."
fi
