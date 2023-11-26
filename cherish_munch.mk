#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

PRODUCT_NAME := cherish_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some props from Cherish
CHERISH_BUILD_TYPE := OFFICIAL
CHERISH_MAINTAINER := HDzungx
CHERISH_CHIPSET := SM8250
CHERISH_BATTERY := 4500mAh
CHERISH_DISPLAY := 1080x2400

# Inherit some common device props
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

