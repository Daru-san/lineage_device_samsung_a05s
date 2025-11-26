#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from bengal-common
$(call inherit-product, device/samsung/bengal-common/bengal.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Local overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Audio
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/configs/mixer_paths_bengal_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_bengal_qrd.xml \
	$(LOCAL_PATH)/audio/configs/mixer_paths_scubaidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_scubaidp.xml \
	$(LOCAL_PATH)/audio/configs/mixer_paths_scubaqrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_scubaqrd.xml \

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/bengal/bengal-vendor.mk)
