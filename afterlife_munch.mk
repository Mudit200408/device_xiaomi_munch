#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

# Inherit some common PixelStar stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)


AFTERLIFE_GAPPS
AFTERLIFE_CORE := true
AFTERLIFE_EXTRA := true
#BUILD_GALLERYGO := true
#BUILD_GMAIL := true
#BUILD_GCALC := true
TARGET_FACE_UNLOCK_SUPPORTED := true
BUILD_AOSP_CAMERA := true

PRODUCT_NAME := afterlife_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V14.0.4.0.TLMMIXM:user/release-keys
