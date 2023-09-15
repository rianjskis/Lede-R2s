#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
git clone --depth=1 https://github.com/linkease/istore.git package/istore
git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone https://github.com/sbwml/luci-app-alist package/alist
git clone https://github.com/kenzok78/luci-app-fileassistant package/luci-app-fileassistant
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go
git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset
git clone https://github.com/natelol/luci-app-beardropper package/luci-app-beardropper
