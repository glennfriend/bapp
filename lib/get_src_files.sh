#!/usr/bin/env bash
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then set -o xtrace; fi

get_src_files()
{
    CURRENT_PATH=$(pwd)
    cd ~/tools/bapp/src/
    find ./ -type f | sed -e "s/\.\///g"
    cd ${CURRENT_PATH}
}

# example
#
# source lib/get_src_files.sh
# get_src_files
