#!/bin/bash

sudo apt install -y unrar
sudo apt install -y ffmpeg

# dropbox
#   用介面從 原本的位置 轉到 你要的位置, 例如
#   /home/user/Dropbox
#   =>  /your-custom-location/Dropbox
sudo apt install -y nautilus-dropbox

# mpeg 4 decoder
sudo apt install libdvdnav4 libdvd-pkg gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly libdvd-pkg
sudo apt install ubuntu-restricted-extras
