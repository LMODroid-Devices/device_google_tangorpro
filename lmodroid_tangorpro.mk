#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lmodroid/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/google/tangorpro/aosp_tangorpro.mk)
$(call inherit-product, device/google/gs201/lmodroid_common.mk)
$(call inherit-product, device/google/tangorpro/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel Tablet
PRODUCT_NAME := lmodroid_tangorpro

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 2560

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=tangorpro \
    PRIVATE_BUILD_DESC="tangorpro-user 13 TQ3A.230805.001.B1 10317384 release-keys"

BUILD_FINGERPRINT := google/tangorpro/tangorpro:13/TQ3A.230805.001.B1/10317384:user/release-keys

$(call inherit-product, vendor/google/tangorpro/tangorpro-vendor.mk)
