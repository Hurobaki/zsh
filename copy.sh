#!/bin/bash

files="$HOME/.zshrc"
GIT=$(which git)
echo $GIT

if [ -e $files ]; then
    $(cp $files $HOME/Saves/configs)
    if [ $? ]; then
        echo "=== $files copied ! ==="
        #$(git add .)git commit -m "add new zsh version" && git push origin master)
        ${GIT} add .
        ${GIT} commit -m 'add new zsh version'
        ${GIT} push origin master
        echo "=== new version pushed ==="
    fi
fi
