# Copyright (C) 2009 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from the proprietary version
-include vendor/samsung/gogh-common/BoardConfigVendor.mk
# inherit from gogh-common
-include device/samsung/gogh-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := goghvmu,goghspr,SPH-L300

# Insert contents of file near end of updater-script
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./build/tools/releasetools/ota_from_target_files -e ./device/samsung/goghvmu/installer_extra

# Kernel
TARGET_KERNEL_CONFIG        := cyanogen_gogh_defconfig
BOARD_MKBOOTIMG_ARGS        := --ramdisk_offset 0x01500000
TARGET_KERNEL_SOURCE        := kernel/samsung/gogh

#Audio
BOARD_USES_FLUENCE_INCALL := false

#camera hax
COMMON_GLOBAL_CFLAGS += -DCONFIG_MSM8960_NO_CANCEL_AUTOFOCUS

ifeq ($(VARIENT_REQUIRE_3.0_KERNEL),true)
## 3.0 kernel defines
# Workaround for missing symbols in camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
# We still have the old ION API
BOARD_HAVE_OLD_ION_API := true
# Use regular media driver variant for 8960
TARGET_QCOM_MEDIA_VARIANT :=
endif
