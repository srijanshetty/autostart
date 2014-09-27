#!/bin/zsh

if pgrep $1 &> /dev/null; then
    return 2
else
    if $2 &> /dev/null &; then
        return 0
    else
        return 1
    fi
fi

