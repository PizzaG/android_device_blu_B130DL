define Copyright
Copyright (C) 2022 The Android Open Source Project
Copyright (C) 2022 The TWRP Open Source Project
Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
Copyright (C) 2019-Present A-Team Digital Solutions
endef

LOCAL_PATH := device/blu/B130DL

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
