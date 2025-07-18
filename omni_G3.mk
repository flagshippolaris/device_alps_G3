#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from G3 device
$(call inherit-product, device/alps/G3/device.mk)

PRODUCT_DEVICE := G3
PRODUCT_NAME := omni_G3
PRODUCT_BRAND := alps
PRODUCT_MODEL := G3
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k53v1_64_bsp-user 8.1.0 O11019 1736910149 release-keys"

BUILD_FINGERPRINT := alps/full_k53v1_64_bsp/k53v1_64_bsp:8.1.0/O11019/1736910149:user/release-keys
