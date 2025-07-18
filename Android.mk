ifneq ($(filter G3,$(TARGET_DEVICE)),)

LOCAL_PATH := device/alps/G3

include $(call all-makefiles-under,$(LOCAL_PATH))

endif