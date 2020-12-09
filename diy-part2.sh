#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================
# Modify default IP (admin IP=192.168.8.5 user=root pw=password)
sed -i 's/192.168.1.1/192.168.8.5/g' package/base-files/files/bin/config_generate
# Change default theme to luci-thme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-opentopd/g' ./feeds/luci/collections/luci/Makefile
# 版本号里显示一个自己的名字和编译日期（XPK build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
sed -i "s/OpenWrt /XPK build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
