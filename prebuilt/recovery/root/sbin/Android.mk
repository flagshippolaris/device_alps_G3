# Replace $$DEVICE$$ with your Device Name's Value. Mine is Primo_RX5.
# Replace $$BRAND$$ with your Brand's  Manufacturer's Value, Mine is WALTON 

ifneq ($(filter G3,$(TARGET_DEVICE)),)

LOCAL_PATH = devicealpsG3

include $(call all-makefiles-under,$(LOCAL_PATH))

endif