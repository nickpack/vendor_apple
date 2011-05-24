LOCAL_PATH := $(dir $(lastword $(MAKEFILE_LIST)))

PRODUCT_MANUFACTURER := apple

LIBERTAS := $(LOCAL_PATH)libertas/

# DIRTY DIRTY DIRTY - FIXXOR THIS PL0X
PREBUILT := $(LOCAL_PATH)prebuilt/

PRODUCT_COPY_FILES += \
	$(LIBERTAS)LICENCE.libertas:system/etc/firmware/LICENCE.libertas \
	$(LIBERTAS)sd8686.bin:system/etc/firmware/sd8686.bin \
	$(LIBERTAS)sd8686_helper.bin:system/etc/firmware/sd8686_helper.bin \
	$(LIBERTAS)LICENCE.libertas:system/etc/firmware/LICENCE.libertas \
	$(LIBERTAS)sd8686.bin:system/etc/firmware/sd8686.bin \
	$(LOCAL_PATH)wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
	$(LOCAL_PATH)init.rc:root/init.rc \
	$(LOCAL_PATH)initDroid.sh:root/initDroid.sh \
	$(PREBUILT)fsck.ext:root/sbin/fsck.ext \
	$(PREBUILT)fsck.hfs:root/sbin/fsck.hfs \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

PRODUCT_BRAND := apple
PRODUCT_NAME := apple
PRODUCT_BOARD := apple

PRODUCT_PACKAGE_OVERLAYS += vendor/apple/overlay/common

