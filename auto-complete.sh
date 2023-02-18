#!/usr/bin/env bash
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then set -o xtrace; fi

# dirname, readlink 不能在 WSL 使用, 所以不使用以下的指令
#   -> echo dirname "$(readlink -f $0)"

#
CURRENT_PATH=$(pwd)
APP_PATH=~/tools/bapp

if [[ ! -d ${APP_PATH} ]]; then
    echo 'bapp not exists ! exit !'
    exit 1
fi

#
cd ${APP_PATH}/src
SCRIPT_FILE_LIST=$(find ./ -type f | sed -e "s/\.\///g" )
echo ${SCRIPT_FILE_LIST}
cd ${CURRENT_PATH}

#
# complete -W "aaa bbb ccc" bapp
complete -W "${SCRIPT_FILE_LIST}" bapp
