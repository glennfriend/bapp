#!/usr/bin/env bash

TOOL_PATH="$(dirname "$(readlink -f $0)")"
SCRIPT_FILE_LIST=$(ls -R "${TOOL_PATH}/src/" | grep  '^[^\/]' )


# complete -W "aaa bbb ccc" bapp
complete -W "${SCRIPT_FILE_LIST}" bapp
