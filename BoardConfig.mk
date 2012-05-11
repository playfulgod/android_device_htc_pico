# Copyright (C) 2009 The Android Open Source Project
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
# disable makefiles (the proper piconism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common msm7x27 device
-include device/htc/msm7x27-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/pico/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := pico

# Use stock libril for now
TARGET_PROVIDES_LIBRIL := vendor/htc/pico/proprietary/libril.so
BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet_sdio0"
BOARD_HAS_EXTRA_SYS_PROPS := true
USE_IPV6_ROUTE := true

# GPS Defines
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pico
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
TARGET_PREBUILT_KERNEL := device/htc/pico/kernel
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x12c00000
BOARD_PAGE_SIZE := 4096

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SDEXT_DEVICE := /dev/block/mmcblk0p2
BOARD_USES_MMCUTILS := true
