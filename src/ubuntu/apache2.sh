#!/usr/bin/env bash
set -o nounset
set -o pipefail
source ~/tools/bapp/lib/basic.sh
TARGET="apache2"


# check service exist ?
target_is_exists="$(command -v ${TARGET})"
if [ -n "$target_is_exists" ]
then
  echo "${TARGET} is exist" && echo
  whereis apache2
  apache2 -v
  exit
fi


# confirm
are_you_sure "install ${TARGET} ?"
if [ "${ARE_YOU_SURE}" = 0 ] ; then
  exit
fi


# remove
# sudo apt purge apache2

echo "???? sudo apt install libapache2-mod-php7.4"
sudo apt install apache2 apache2-dev


