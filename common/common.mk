LOCAL_PATH := $(dir $(lastword $(MAKEFILE_LIST)))

ifeq ($(TARGET_BUILD_TYPE),debug)
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk.mk)
else
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
endif

PRODUCT_MANUFACTURER := apple

LIBERTAS := $(LOCAL_PATH)libertas/

PRODUCT_PACKAGES += \
	ADWLauncher \
	Superuser

PRODUCT_PROPERTY_OVERRIDES += \
        ro.firmware_dir1=/host/firmware
	ro.config.ringtone=DonMessWivIt.ogg \
        ro.ril.enable.3g.prefix=1 \
        ro.ril.oem.nosim.ecclist=911,112,113,115,117,999,000,08,118,120,122,110,119,995 \
        ro.ril.emc.mode=2 \
        ro.ril.hsxpa=2 \
        ro.ril.gprsclass=12 \
	ro.sf.lcd_density=140

PRODUCT_COPY_FILES += \
	$(LIBERTAS)LICENCE.libertas:system/etc/firmware/LICENCE.libertas \
	$(LIBERTAS)sd8686.bin:system/etc/firmware/sd8686.bin \
	$(LIBERTAS)sd8686_helper.bin:system/etc/firmware/sd8686_helper.bin \
	$(LIBERTAS)LICENCE.libertas:root/lib/firmware/LICENCE.libertas \
	$(LIBERTAS)sd8686.bin:root/lib/firmware/sd8686.bin \
	$(LOCAL_PATH)wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(COMMON)init.rc:root/init.apple.rc \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	$(COMMON)apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_BRAND := apple
PRODUCT_NAME := apple
PRODUCT_BOARD := apple

include frameworks/base/data/sounds/AudioPackage4.mk
