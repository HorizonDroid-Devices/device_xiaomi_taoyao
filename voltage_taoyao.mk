#
# Copyright (C) 2022 PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from taoyao device
$(call inherit-product, device/xiaomi/taoyao/device.mk)

# Inherit some common PixelOS stuff
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1920

# Official-ify
VOLTAGE_BUILD_TYPE := OFFICIAL

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := taoyao
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := voltage_taoyao
PRODUCT_MODEL := Xiaomi 12 Lite

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := taoyao_global
PRODUCT_SYSTEM_DEVICE := taoyao

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="taoyao_global-user 13 RKQ1.211001.001 V14.0.6.0.TLIMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/taoyao_global/taoyao:13/RKQ1.211001.001/V14.0.6.0.TLIMIXM:user/release-keys
