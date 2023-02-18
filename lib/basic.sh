#!/usr/bin/env bash

# get ${ARE_YOU_SURE} = 1 or 0
are_you_sure() {
    MESSAGE=${1-}

    read -p "${MESSAGE}"" (y/n): " -n 1 -r
    echo

    if [[ ! $REPLY =~ ^[Yy]$ ]]
    then
        ARE_YOU_SURE=0
        [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
    fi

    ARE_YOU_SURE=1
}