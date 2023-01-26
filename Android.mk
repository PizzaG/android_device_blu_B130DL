#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), B130DL)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
