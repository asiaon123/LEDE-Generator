#!/bin/bash

# Modify Default Router IP
sed -i 's/192.168.1.1/192.168.121.1/g' package/base-files/files/bin/config_generate

# Modify hostname
sed -i 's/system.@system[-1].hostname='\''ImmortalWrt'\''/system.@system[-1].hostname='\''OpenWrt'\''/g' package/base-files/files/bin/config_generate
# Modify hostname in chinese
sed -i '/uci commit system/i\uci set system.@system[0].hostname=OpenWrt' package/emortal/default-settings/files/zzz-default-settings-chinese

#Modify Default Lang
sed -i 's/uci set luci.main.lang=auto/uci set luci.main.lang=zh_cn/g' package/emortal/default-settings/files/zzz-default-settings

# Modify Openwrt Banner
sed -i 's/ImmortalWrt/OpenWrt/g' package/emortal/default-settings/files/openwrt_banner