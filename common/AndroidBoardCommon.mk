LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

SUBDIRS := \
	$(LOCAL_PATH)/liblights/Android.mk

include $(SUBDIRS)
