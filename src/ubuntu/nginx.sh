#!/usr/bin/env bash
set -o nounset
set -o pipefail
source ~/tools/bapp/lib/basic.sh
TARGET="nginx"


# check service exist ?
target_is_exists="$(command -v ${TARGET})"
if [ -n "$target_is_exists" ]
then
  echo "${TARGET} is exist" && echo
  nginx -v
  exit
fi


# confirm
are_you_sure "install ${TARGET} ?"
if [ "${ARE_YOU_SURE}" = 0 ] ; then
  exit
fi


#
sudo apt install nginx
