#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from device
$(call inherit-product, device/motorola/evert/device.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# GApps
TARGET_GAPPS_ARCH := arm64

# Device identifiers
PRODUCT_DEVICE := evert
PRODUCT_NAME := aosp_evert
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto G6 Plus
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=evert
