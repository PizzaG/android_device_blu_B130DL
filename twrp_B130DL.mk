#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2019-Present A-Team Digital Solutions
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from B130DL device
$(call inherit-product, device/blu/B130DL/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/blu/B130DL/recovery/root,recovery/root)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := B130DL
PRODUCT_NAME := twrp_B130DL
PRODUCT_BRAND := View
PRODUCT_MODEL := B130DL
PRODUCT_MANUFACTURER := Blu
PRODUCT_RELEASE_NAME := Blu View 2

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb
