#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonkebab device
$(call inherit-product, device/oneplus/lemonkebab/device.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := aosp_lemonkebab
PRODUCT_DEVICE := lemonkebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2101

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

#AEX Official
EXTENDED_BUILD_TYPE=OFFICIAL

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

#Lawnchair
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

ifeq ($(WITH_GAPPS), true)
TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
endif

TARGET_FACE_UNLOCK_SUPPORTED := true
