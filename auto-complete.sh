#!/usr/bin/env bash

CURRENT_PATH=$(pwd)
TOOL_PATH="$(dirname "$(readlink -f $0)")"


cd ${TOOL_PATH}/src
SCRIPT_FILE_LIST=$(find ./ -type f | sed -e "s/\.\///g" )
cd ${CURRENT_PATH}


#SCRIPT_FILE_LIST=$(ls -R "${TOOL_PATH}/src/" | grep  '^[^\/]' )
#find ${TOOL_PATH}/src  -type f | sed -e "s/${TOOL_PATH}//g" 


# complete -W "aaa bbb ccc" bapp
complete -W "${SCRIPT_FILE_LIST}" bapp
