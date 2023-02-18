#!/usr/bin/env bash
set -o nounset
set -o pipefail
source ~/tools/bapp/lib/basic.sh


echo "
安裝 LIU 無蝦米輸入法
    sudo apt install fcitx-table-boshiamy
    im-config
        => 選 fcitx
        => $ reboot
    上面應該會出現鍵盤的圖示, 可以開始加入輸入法
    如果沒有圖示
    請到語系那裡確認有沒有改成 "fcitx"

搜尋 language, 進入語系
鍵盤輸入法系統 修改為 "fcitx"
"

echo "sudo apt install fcitx-table-boshiamy"
echo ">"


# confirm
are_you_sure "install ?"
if [ "${ARE_YOU_SURE}" = 0 ] ; then
  exit
fi


sudo apt install fcitx-table-boshiamy
