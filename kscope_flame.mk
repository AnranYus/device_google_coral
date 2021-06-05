
#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Kscope stuff.
$(call inherit-product, vendor/kscope/target/product/mobile.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

include device/google/coral/flame/device-kscope.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4
PRODUCT_NAME := kscope_flame

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=flame \
    PRIVATE_BUILD_DESC="flame-user 12 SQ3A.220705.003.A1 8672226 release-keys"

BUILD_FINGERPRINT := google/flame/flame:12/SQ3A.220705.003.A1/8672226:user/release-keys

$(call inherit-product, vendor/google/flame/flame-vendor.mk)