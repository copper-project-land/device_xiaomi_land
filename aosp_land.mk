#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit device path
$(call inherit-product, $(LOCAL_PATH)/DevicePath.mk)

# Define platform before including any common things
$(call inherit-product, $(LOCAL_PATH)/PlatformConfig.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from land device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Call QCOM Utils
$(call inherit-product, $(LOCAL_PATH)/utils.mk)

# DU Utils Library
PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := land
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_land

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := land

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/land/land:6.0.1/MMB29M/V8.2.5.0.MALMIDL:user/release-keys \
    PRIVATE_BUILD_DESC="land-user 6.0.1 MMB29M V8.2.5.0.MALMIDL release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model

# Build Launcher
PRODUCT_PACKAGES += \
    Launcher3 \
    WallpaperPicker
