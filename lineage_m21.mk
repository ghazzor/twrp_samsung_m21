#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from m21 device
$(call inherit-product, device/samsung/m21/device.mk)

PRODUCT_DEVICE := m21
PRODUCT_NAME := lineage_m21
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M215F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m21nsxx-user 12 SP1A.210812.016 M215FXXU3CVH1 release-keys"

BUILD_FINGERPRINT := samsung/m21nsxx/m21:12/SP1A.210812.016/M215FXXU3CVH1:user/release-keys
