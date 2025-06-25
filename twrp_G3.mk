# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
# Inherit from star device
$(call inherit-product, device/brand/devicename/device.mk)
# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := G3
PRODUCT_NAME := twrp_G3
PRODUCT_BRAND := alps
PRODUCT_MODEL := G3
PRODUCT_MANUFACTURER := alps
