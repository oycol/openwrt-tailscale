#!/bin/bash
version=`wget -qO- -t1 -T2 "https://api.github.com/repos/oycol/openwrt-tailscale/releases/latest" | grep "tag_name" | head -n 1 | awk -F ":" '{print $2}' | sed 's/\"//g;s/,//g;s/ //g'`
curl -L -o /tmp/tailscale.tar.gz https://github.com/oycol/openwrt-tailscale/releases/download/$version/openwrt-tailscale-mipsle.tar.gz ;tar Cxvvf /  /tmp/tailscale.tar.gz
