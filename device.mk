#
# Copyright (C) 2011 The CyanogenMod Project
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
$(call inherit-product-if-exists, vendor/samsung/gogh-common/gogh-common-vendor.mk)
$(call inherit-product-if-exists, vendor/samsung/goghvmu/goghvmu-vendor.mk)
VARIENT_MODEL := goghvmu
#VARIENT_REQUIRE_3.0_KERNEL := true
## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/goghvmu/overlay


## common overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/gogh-common/overlay-cdma
# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480


#Scripts
PRODUCT_PACKAGES += \
    50bluetooth \
    60compass \
    wifimac.sh

# Inherit from gogh-common
$(call inherit-product, device/samsung/gogh-common/gogh-common.mk)
