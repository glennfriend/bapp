#!/usr/bin/env bash
set -o nounset
set -o pipefail
pwd
source ~/tools/bapp/lib/basic.sh
TARGET="php"

# check service exist ?
target_is_exists="$(command -v ${TARGET})"
if [ -n "$target_is_exists" ]
then
  echo "${TARGET} is exist" && echo
  echo
  php -v
  exit
fi




# install PHP 7.4
# sudo apt install php7.4-cli php7.4-mysql libapache2-mod-php7.4

# install PHP 8.0
#sudo apt install php8.0 php8.0-mysql libapache2-mod-php8.0
