#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================
# Uncomment a feed source ssrplus
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/weweyes/openwrt-package' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/weweyes/openwrt-packages' feeds.conf.default

# Add app
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/weweyes/luci-app-eqos.git package/luci-app-eqos
git clone https://github.com/weweyes/OpenAppFilter.git package/luci-app-oaf
git clone https://github.com/weweyes/luci-app-tcpdump.git package/luci-app-tcpdump


git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/lisaac/luci-lib-docker.git package/luci-lib-docker
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman

svn co https://github.com/weweyes/openwrt-packages/trunk/luci-app-smartdns package/luci-app-smartdns
svn co https://github.com/weweyes/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome
svn co https://github.com/weweyes/openwrt-packages/trunk/luci-app-aliddns package/luci-app-aliddns

# Add theme
#svn co https://github.com/weweyes/openwrt-packages/trunk/luci-theme-opentomcat package/luci-theme-opentomcat
git clone https://github.com/weweyes/luci-app-argon-config.git package/luci-app-argon-config
git clone -b 18.06 https://github.com/weweyes/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/weweyes/openwrt-themes.git package/openwrt-themes
git clone https://github.com/weweyes/luci-theme-opentopd.git package/luci-theme-opentopd
