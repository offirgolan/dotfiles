#!/bin/sh
#
# asdf
#
# This installs asdf package manager

asdf_dir=$HOME/.asdf

if [ ! -d $asdf_dir ]; then
    echo "Installing asdf..."
    git clone https://github.com/asdf-vm/asdf.git $asdf_dir || exit 1

    # Install the correct dependencies
    if test "$(uname)" = "Darwin"
    then
        echo "Installing asdf prerequisite dependencies..."
        brew install coreutils automake autoconf openssl libyaml readline libxslt libtool unixodbc
    fi

    echo "asdf installation complete"
else
    echo "asdf already installed"
fi
