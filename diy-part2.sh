#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify Default Router IP
sed -i 's/192.168.1.1/192.168.121.1/g' package/base-files/files/bin/config_generate

# Modify hostname
sed -i 's/system.@system[-1].hostname='\''ImmortalWrt'\''/system.@system[-1].hostname='\''OpenWrt'\''/g' package/base-files/files/bin/config_generate

#Modify Default Lang
sed -i 's/uci set luci.main.lang=auto/uci set luci.main.lang=zh_cn/g' package/emortal/default-settings/files/zzz-default-settings
