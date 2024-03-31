#!/bin/bash
# Modify default system settings

# 修改默认IP为192.168.5.1
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate 
sed -i 's/192.168.15.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# Hello World
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# luci-theme-infinityfreedom
#echo 'src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git' >>feeds.conf.default

# passwall
#echo "src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages" >> feeds.conf.default
#echo "src-git PWluci https://github.com/xiaorouji/openwrt-passwall.git;luci" >> feeds.conf.default

#通常这两个就够了
echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> feeds.conf.default
echo "src-git small https://github.com/kenzok8/small" >> feeds.conf.default
# 替换默认主题
#rm -rf package/lean/luci-theme-argon 
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/lean/luci-theme-argon

#设置内核版本为5.10
#sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=5.10/g' ./target/linux/ramips/Makefile
sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' ./target/linux/ramips/Makefile

