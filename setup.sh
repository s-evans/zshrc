#!/usr/bin/env bash

SCRIPTDIR=`dirname ${BASH_SOURCE[0]}`
DIRPATH=`readlink -f $SCRIPTDIR`

echo "Install directory = $DIRPATH"

echo "Creating symbolic link for zshrc"
ln -sf $DIRPATH/.zshrc ~/.zshrc

