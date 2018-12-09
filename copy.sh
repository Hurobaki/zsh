#!/bin/bash

files="$HOME/.zshrc"

if [ -e $files ]; then
    $(cp $files $HOME/Saves/configs)
    echo "=== $files copied ! ==="
fi
