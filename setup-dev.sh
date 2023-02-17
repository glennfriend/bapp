#!/usr/bin/env bash

bash_app_install() {

    if [ "$1" = 'is-dev' ] ; then
        APP_REPOSITORY="git@github.com:glennfriend/bapp.git"
    elif  [ "$1" = 'is-end-user' ] ; then
        APP_REPOSITORY="https://github.com/glennfriend/bapp.git"
    else
        return
    fi

    echo '---- bash app install ----'
    echo
    APP_PATH=~/tools/bapp
    APP_RESOURCE=~/.bapp
    mkdir -p                    ${APP_PATH}
    mkdir -p                    ${APP_RESOURCE}
    git clone ${APP_REPOSITORY} ${APP_PATH}
    chmod +x                    ${APP_PATH}/src/bapp.sh

    echo '---- create /bin/bapp link ----'
    echo
    sudo ln -sfn                ${APP_PATH}/src/bapp.sh  /bin/bapp

}

bash_app_install 'is-dev'