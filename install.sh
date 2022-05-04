#!/bin/bash
version=`wget --no-check-certificate -qO- https://api.github.com/repos/oycol/openwrt-tailscale/tags | grep 'name' | cut -d\" -f4 | head -1`;
curl -L -o /tmp/tailscale.tar.gz https://github.com/oycol/openwrt-tailscale/releases/download/$version/openwrt-tailscale-mipsle.tar.gz ;tar -zxvf /tmp/tailscale.tar.gz -C /;
service tailscaled enable;
service tailscaled start;
tailscale help;
