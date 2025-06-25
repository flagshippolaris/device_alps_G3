LOCAL_PATH := $(call my-dir)

ifneq ($(filter G3,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif