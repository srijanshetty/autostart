#!/bin/zsh

if pgrep $1 &> /dev/null; then
    return 2
else
    if [ -n $2 ]; then
        APP=$1
    else
        APP=$2
    fi

    if $APP &> /dev/null &; then
        return 0
    else
        return 1
    fi
fi

