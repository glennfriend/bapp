#!/usr/bin/env bash
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then set -o xtrace; fi

TOOL_PATH="$(dirname "$(readlink -f $0)")"
TARGET_FILE=${TOOL_PATH}/src/${1-}

# functions
file_exists() {
    if [ ! -e "${TARGET_FILE}" ]; then
        echo "script file not found !"
        exit 1;
    fi
}


# help
if [ -z "${1-}" ] ; then
    echo "bapp

Required:
    curl, git, unzip

How to upgrade the installed software:
    1. 自己去  .bapp/軟體名稱/ 執行 git pull
    2. or 砍掉 .bapp/軟體名稱/ 之後用 bapp 重裝
"
    exit 1
fi


#
file_exists
source ${TARGET_FILE}


# 使用情境
#     bapp version
#     bapp help
#     bapp composer
#     bapp npm    - 提示應該裝 nvm
#     bapp nvm    - 提示安裝方式, 只裝一次, 之後不管
#     bapp color  - git clone 到 src 目錄, 未來自己 git pull
# 
# 可以安裝的軟體有哪些，要怎麼分類?
#     可執行檔 sh, php, python, npm, yarn 
#     帶有設定檔的軟體, 你如何方便備份並重用, 像 dotfile 那樣的方便?
#     如果是帶有 bash 的, 你可能會加在 ~/.bashrc, 手動從裡面移除就好?
