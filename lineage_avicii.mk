#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from avicii device
$(call inherit-product, device/oneplus/avicii/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion OS  Specific Flags
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true

TARGET_DOZE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTED_REFRESH_RATES := 60,90

TARGET_NEEDS_VULKAN_MEDIA_FIX := true

BYPASS_CHARGE_SUPPORTED := true
BYPASS_CHARGE_TOGGLE_PATH := /sys/class/power_supply/battery/input_suspend

GPU_FREQS_PATH := /sys/devices/platform/soc/3d00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/devfreq/available_frequencies
GPU_MIN_FREQ_PATH := /sys/devices/platform/soc/3d00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/devfreq/min_freq

HBM_SUPPORTED := true
HBM_NODE := /sys/kernel/oplus_display/hbm

AXION_MAINTAINER := Sreeshankar_K
AXION_PROCESSOR := Snapdragon_765G_5G
AXION_CAMERA_REAR_INFO := 48,8,5,2
AXION_CAMERA_FRONT_INFO := 32,8

ifneq ($(WITH_GMS),true)
TARGET_INCLUDES_LOS_PREBUILTS := true
endif

PRODUCT_NAME := lineage_avicii
PRODUCT_DEVICE := avicii
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := AC2003

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Nord-user 12 RKQ1.211119.001 Q.202212051830:user release-keys" \
    BuildFingerprint=OnePlus/Nord/Nord:12/RKQ1.211119.001/Q.202212051830:user/release-keys \
    DeviceName=Nord \
    DeviceProduct=avicii \
    SystemName=Nord \
    SystemDevice=avicii
