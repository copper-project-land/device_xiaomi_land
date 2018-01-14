#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Include device-specific product fragments
include $(DEVICE_PATH)/product/*.mk

# TARGET_BOARD_PLATFORM specific featurization
QCOM_BOARD_PLATFORMS := msm8937

# List of targets that use video hw
MSM_VIDC_TARGET_LIST := msm8937

# Inherit proprietary files
$(call inherit-product, vendor/xiaomi/land/land-vendor.mk)
