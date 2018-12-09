#!/bin/bash

files="$HOME/.zshrc"

if [ -e $files ]; then
    $(cp $files $HOME/Saves/configs)
    if [ $? ]; then
        echo "=== $files copied ! ==="
        $(git add . && git commit -m "add new zsh version" && git push origin master)
        echo "=== new version pushed ==="
    fi
fi
