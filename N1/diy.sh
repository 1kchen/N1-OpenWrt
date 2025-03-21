#!/bin/bash

# Default IP
sed -i 's/192.168.1.1/192.168.0.100/g' package/base-files/files/bin/config_generate

# Add packages
git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
#git clone https://github.com/xiaorouji/openwrt-passwall --depth=1 clone/passwall

# Update packages
#rm -rf feeds/luci/applications/luci-app-passwall
cp -fr clone/amlogic/luci-app-amlogic  feeds/luci/applications/

# Clean packages
rm -rf clone
