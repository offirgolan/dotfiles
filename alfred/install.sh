#!/bin/sh
#
# Alfred
#
# Setup alfred sync settings

alfred_sync_dir=$HOME/Dropbox/Sync/Alfred

if [ -d $alfred_sync_dir ]; then
  echo "Setting Alfred sync directory to $alfred_sync_dir..."
  defaults write com.runningwithcrayons.Alfred-Preferences-3 syncfolder -string "$alfred_sync_dir"
  echo "Restarting Alfred..."
  killall "Alfred 3" >/dev/null 2>&1
  open -a "Alfred 3"
  echo "Done."
fi
