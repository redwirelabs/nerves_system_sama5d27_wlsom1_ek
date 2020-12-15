################################################################################
#
# wilc-firmware
#
################################################################################

WILC_FIRMWARE_VERSION = wilc_linux_15.3.1
WILC_FIRMWARE_SITE = https://github.com/linux4wilc/firmware/archive
WILC_FIRMWARE_SOURCE = wilc_linux_15_3_1.tar.gz
WILC_FIRMWARE_LICENSE = PROPRIETARY

define WILC_FIRMWARE_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/lib/firmware/mchp/
	$(INSTALL) -D -m 0644 $(@D)/*.bin \
		$(TARGET_DIR)/lib/firmware/mchp/
endef

$(eval $(generic-package))
