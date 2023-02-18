#!/usr/bin/env bash
# set -o nounset    # _zsh_autosuggest_highlight_apply:3: POSTDISPLAY: parameter not set
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then set -o xtrace; fi

# dirname, readlink 不能在 WSL 使用, 所以不使用以下的指令
#   -> echo dirname "$(readlink -f $0)"

#
DEBUG=false
CURRENT_PATH=$(pwd)
APP_PATH=~/tools/bapp

if [[ ! -d ${APP_PATH} ]]; then
    echo 'bapp not exists ! exit !'
    exit 1
fi

#
cd ${APP_PATH}/src
SCRIPT_FILE_LIST=$(find ./ -type f | sed -e "s/\.\///g")
cd ${CURRENT_PATH}

#
if [[ "${DEBUG}" = 1 || "${DEBUG}" = true ]] then
    echo ${SCRIPT_FILE_LIST}
fi



#
# complete -W "aaa bbb ccc" bapp
complete -W "${SCRIPT_FILE_LIST}" bapp
