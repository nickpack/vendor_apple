LOCAL_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
COMMON := $(subst iPodTouch2G,common,$(LOCAL_DIR))

$(call inherit-product, $(COMMON)/common.mk)

PRODUCT_NAME := iPodTouch2G
PRODUCT_DEVICE := iPodTouch2G

PRODUCT_POLICY := android.policy_mid

PRODUCT_COPY_FILES += \
	$(LOCAL_DIR)gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_DIR)asound.conf:system/etc/asound.conf \
	$(LOCAL_DIR)asound.state:system/etc/asound.state

