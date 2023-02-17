#!/usr/bin/env bash

TOOL_PATH="$(dirname "$(readlink -f $0)")"
#SCRIPT_FILE_LIST=$(ls -R "${TOOL_PATH}/src/" | grep  '^[^\/]' )

cd ${TOOL_PATH}/src
SCRIPT_FILE_LIST=$(find ./ -type f | sed -e "s/\.\///g" )
cd -    2>/dev/null

#find ${TOOL_PATH}/src  -type f | sed -e "s/${TOOL_PATH}//g" 

# complete -W "aaa bbb ccc" bapp
complete -W "${SCRIPT_FILE_LIST}" bapp
