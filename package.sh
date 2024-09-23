#!/bin/bash

#添加单独插件库
#git clone  https://github.com/destan19/OpenAppFilter package/OpenAppFilter

#对于强迫症的同学（有报错信息、或Lean源码编译出错的情况），请尝试删除冲突的插件
rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}
