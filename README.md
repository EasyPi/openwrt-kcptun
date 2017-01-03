openwrt-kcptun
==============

[![Build Status](https://travis-ci.org/EasyPi/openwrt-kcptun.svg?branch=master)](https://travis-ci.org/EasyPi/openwrt-kcptun)
[![GitHub release](https://img.shields.io/github/release/EasyPi/openwrt-kcptun.svg)](https://github.com/EasyPi/openwrt-kcptun/releases/latest)

Kcptun on OpenWrt for Raspberry Pi (1/2/3)

Latest version: [![](https://img.shields.io/github/release/xtaci/kcptun.svg)](https://github.com/xtaci/kcptun/releases/latest)

## How it works

![](https://github.com/xtaci/kcptun/raw/master/kcptun.png)

- This package works in client mode.
- Please setup a server somewhere.

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
PKG_VERSION:=20161118
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-linux-arm-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/xtaci/kcptun/releases/download/v$(PKG_VERSION)
PKG_MD5SUM:=d92dc2f835e869bc36dad6158d4eb3a4
```

## Run these commands to build:

```bash
$ cd sdk
$ git clone https://github.com/EasyPi/openwrt-kcptun.git package/kcptun
$ make package/kcptun/compile V=s
$ find bin -name 'kcptun*.ipk'
```

## Sample config file:

```bash
# /etc/config/kcptun

config kcptun openvpn
    option enabled '0'
    option localaddr ':1194'
    option remoteaddr 'easypi.info:4911'
    option key 'secret'
    list extra_params 'sndwnd=128'
    list extra_params 'rcvwnd=1024'

config kcptun shadowsocks
    option enabled '0'
    option localaddr ':8388'
    option remoteaddr 'easypi.info:8399'
```

- You can run multiple kcptun instances.
- Make sure they listen on different ports.
