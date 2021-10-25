#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/lighthouse/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lighthouse_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi K20 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-userdebug 12 SD1A.210817.015.A4 7697517 dev-keys" 

BUILD_FINGERPRINT := google/raven/raven:12/SD1A.210817.015.A4/7697517:userdebug/dev-keys

LIGHTHOUSE_BUILD_TYPE := OFFICIAL