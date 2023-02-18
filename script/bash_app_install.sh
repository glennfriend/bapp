#!/usr/bin/env bash

bash_app_install() {

    if [ "$1" = 'is-dev' ] ; then
        APP_REPOSITORY="git@github.com:glennfriend/bapp.git"
    elif  [ "$1" = 'is-end-user' ] ; then
        APP_REPOSITORY="https://github.com/glennfriend/bapp.git"
    else
        return
    fi


    APP_PATH=~/tools/bapp

    if [[ -d ${APP_PATH} ]]; then
        echo 'bapp already exists'
    else
        mkdir -p                    ${APP_PATH}
        mkdir -p                    ~/.bapp
        git clone ${APP_REPOSITORY} ${APP_PATH}
        chmod +x                    ${APP_PATH}/bapp.sh
    fi

    echo '### create bin link'
    ln -sfn ${APP_PATH}/bapp.sh  /usr/local/bin/bapp

    echo '### please append to your shell'
    echo 'echo                                          >> ~/.zshrc'
    echo 'echo "## bapp"                                >> ~/.zshrc'
    echo 'echo "source ~/tools/bapp/auto-complete.sh"   >> ~/.zshrc'
    echo 'echo                                          >> ~/.zshrc'
    echo
    echo 'echo                                          >> ~/.bashrc'
    echo 'echo "## bapp"                                >> ~/.bashrc'
    echo 'echo "source ~/tools/bapp/auto-complete.sh"   >> ~/.bashrc'
    echo 'echo                                          >> ~/.bashrc'
}