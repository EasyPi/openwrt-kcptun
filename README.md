openwrt-kcptun
==============

[![][1]][2]

[1]: https://img.shields.io/github/release/xtaci/kcptun.svg
[2]: https://github.com/xtaci/kcptun/releases/latest

kcptun on openwrt for raspberry pi

## Directory Tree

```
openwrt-kcptun
├── LICENSE
├── Makefile
├── README.md
└── files
    └── etc
        ├── config
        │   └── kcptun
        └── init.d
            └── kcptun
```

## Edit `Makefile` to support other platforms:

```bash
PKG_NAME:=kcptun
PKG_VERSION:=20160830
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-linux-arm-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/xtaci/kcptun/releases/download/v$(PKG_VERSION)
PKG_MD5SUM:=5573a5053986878696ad35509fc4bf03
```

## Run these commands to build:

```bash
$ cd sdk
$ git clone https://github.com/EasyPi/openwrt-kcptun.git package/kcptun
$ make package/kcptun/compile V=s
$ find ./bin/packages/ -name 'kcptun*.ipk'
```
