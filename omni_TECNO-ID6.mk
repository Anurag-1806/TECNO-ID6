#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from TECNO-ID6 device
$(call inherit-product, device/tecno/TECNO-ID6/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := TECNO-ID6
PRODUCT_NAME := omni_TECNO-ID6
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO ID6
PRODUCT_MANUFACTURER := tecno

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
