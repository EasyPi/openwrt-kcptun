openwrt-kcptun
==============

kcptun on openwrt for raspberry pi

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

Edit `Makefile` to support other platforms:

```bash
PKG_SOURCE:=$(PKG_NAME)-linux-arm-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/xtaci/kcptun/releases/download/v$(PKG_VERSION)
PKG_MD5SUM:=ddfd65b2d725f840a0c014fcd7ed0ac3
```

Run this command to build:

```bash
$ make package/kcptun/compile V=s
```
