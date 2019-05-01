#
# Copyright © 2016 Daniel Fu
# Copyright © 2019 EasyPi Software Foundation
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=kcptun
PKG_VERSION:=20190428
PKG_RELEASE:=1

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=EasyPi Software Foundation

PKG_SOURCE:=$(PKG_NAME)-linux-arm7-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/xtaci/kcptun/releases/download/v$(PKG_VERSION)
PKG_HASH:=497dc9ef617447823ee7a73a329ee6cd60b85327f23036feb15df997c07f6f8b
PKG_CAT:=zcat

include $(INCLUDE_DIR)/package.mk

define Package/kcptun
	SECTION:=net
	CATEGORY:=Network
	TITLE:=An extremely simple udp tunnel based on KCP
	URL:=https://github.com/xtaci/kcptun
endef

define Package/kcptun/description
An extremely simple udp tunnel based on KCP.
endef

define Build/Compile
endef

define Package/kcptun/postinst
endef

define Package/kcptun/conffiles
/etc/config/kcptun
endef

define Package/kcptun/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DATA) ./files/etc/config/kcptun $(1)/etc/config/kcptun
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/etc/init.d/kcptun $(1)/etc/init.d/kcptun
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(BUILD_DIR)/client_linux_arm7 $(1)/usr/bin/kcptun
endef

$(eval $(call BuildPackage,kcptun))
