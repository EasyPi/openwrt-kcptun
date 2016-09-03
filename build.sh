#!/bin/bash

sudo rm -f bin
git clone https://github.com/EasyPi/openwrt-kcptun.git package/kcptun
make defconfig
make package/kcptun/compile V=s
find bin -name 'kcptun*.ipk' -exec cp {} /tmp \;
tree -F /tmp/
