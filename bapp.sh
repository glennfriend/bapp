#!/usr/bin/env bash

TOOL_PATH="$(dirname "$(readlink -f $0)")"


if [ -z "$1" ] ; then

    source ${TOOL_PATH}/src/help

else

    TARGET_FILE=${TOOL_PATH}/src/$1

    file_exists() {
        if [ ! -e "${TARGET_FILE}" ]; then
            echo "script file not found !"
            exit 1;
        fi
    }

    source ${TARGET_FILE}

fi