#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := G3

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from star device
$(call inherit-product, device/alps/G3/device.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := G3
PRODUCT_NAME := twrp_G3
PRODUCT_BRAND := alps
PRODUCT_MODEL := G3
PRODUCT_MANUFACTURER := alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=G3 \
    PRODUCT_NAME=G3 \
    PRIVATE_BUILD_DESC="full_k53v1_64_bsp-user 8.1.0 O11019 1736746358 release-keys"

BUILD_FINGERPRINT := alps/full_k53v1_64_bsp/k53v1_64_bsp:8.1.0/O11019/1736746358:user/release-keys
# Bypass anti-rollback ROMs protection
# Set build date to Jan 1 2009 00:00:00
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.build.date.utc=1230768000
