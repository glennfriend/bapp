#!/usr/bin/env bash

echo
echo '# docker --version'
docker --version

echo
echo '# docker-compose --version'
docker-compose --version

#
# remove old version
# > sudo apt-get remove docker docker-engine docker.io containerd runc
#
#
# install before
# > sudo apt-get update
# > sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
#
# see
#   https://docs.docker.com/engine/install/ubuntu/
#
