#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from diana-p1 device
$(call inherit-product, device/allwinner/diana-p1/device.mk)

PRODUCT_DEVICE := diana-p1
PRODUCT_NAME := omni_diana-p1
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := h728
PRODUCT_MANUFACTURER := allwinner

PRODUCT_GMS_CLIENTID_BASE := android-allwinner

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="diana_p1_arm64-userdebug 14 UP1A.231105.001.A1 eng.linux.20241120.150323 test-keys"

BUILD_FINGERPRINT := google/walleye/walleye:10/QTT1.200116.002.B6/6245789:user/release-keys
