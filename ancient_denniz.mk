#
# Copyright (C) 2021 Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/oneplus/denniz/device.mk)

# Inherit some common Pixel-Experience stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := ancient_denniz
PRODUCT_DEVICE := denniz
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := oneplus Nord 2 5G
PRODUCT_MANUFACTURER := oneplus

# Gapps
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
ANCIENT_GAPPS := true

# Official-ify
ANCIENT_OFFICIAL := true
TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_UDFPS_ANIMATIONS := true
FORCE_LAWNCHAIR := true

# Build info
BUILD_FINGERPRINT := "alps/vnd_oppo6893/oppo6893:11/RP1A.200720.011/mp2tc16sppr5V1:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=denniz \
    PRODUCT_NAME=denniz \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user-11-RP1A.200720.011-mp2tc16sppr5V1-release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oplus
