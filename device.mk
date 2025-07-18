LOCAL_PATH := device/alps/G3


# Dynamic Partitions stuff
PRODUCT_USE_DYNAMIC_PARTITIONS := true
# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# API
PRODUCT_SHIPPING_API_LEVEL := 30
PRODUCT_PLATFORM := mt6735
PRODUCT_BOARD := k53v1_64_bsp

# Fastbootd stuff
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

# health Hal
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \