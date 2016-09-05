openwrt-kcptun
==============

[![Build Status](https://travis-ci.org/EasyPi/openwrt-kcptun.svg?branch=master)](https://travis-ci.org/EasyPi/openwrt-kcptun)
[![GitHub release](https://img.shields.io/github/release/EasyPi/openwrt-kcptun.svg)]()

kcptun on openwrt for raspberry pi

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
PKG_VERSION:=20160904
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-linux-arm-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/xtaci/kcptun/releases/download/v$(PKG_VERSION)
PKG_MD5SUM:=f77a99ce61900c021e36f3ef7c53d5be
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
