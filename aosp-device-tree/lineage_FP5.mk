#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from FP5 device
$(call inherit-product, device/fairphone/FP5/device.mk)

PRODUCT_DEVICE := FP5
PRODUCT_NAME := lineage_FP5
PRODUCT_BRAND := Fairphone
PRODUCT_MODEL := FP5
PRODUCT_MANUFACTURER := fairphone

PRODUCT_GMS_CLIENTID_BASE := android-alcatel

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="FP5-user 11 RKQ1.230130.001 TT3P release-keys"

BUILD_FINGERPRINT := Fairphone/FP5/FP5:11/RKQ1.230130.001/TT3P:user/release-keys
