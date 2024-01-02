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
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages' >>feeds.conf.default

#echo 'src-git kiddin9_packages https://dl.openwrt.ai/latest/packages/mips_24kc/kiddin9' >>feeds.conf.default

echo 'src-git mentohust https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk' >>feeds.conf.default

git clone https://github.com/BoringCat/luci-app-mentohust.git package/luci-app-mentohust
