# Copyright (C) 2007 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/bn/acclaim/BoardConfigVendor.mk

# Processor 
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := acclaim

# Kernel/Boot
#BOARD_KERNEL_CMDLINE := androidboot.console=ttyO0 console=ttyO0,115200n8 mem=448M@0x80000000 mem=512M@0xA0000000 init=/init rootwait vram=32M,82000000 omapfb.vram=0:5M@82000000
BOARD_KERNEL_CMDLINE := androidboot.console=ttyO0 console=ttyO0,115200n8 mem=448M@0x80000000 mem=512M@0xA0000000 init=/init rootwait vram=32M omapfb.vram=0:16M
BOARD_KERNEL_BASE := 0x80080000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 641728512
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12949893120
BOARD_FLASH_BLOCK_SIZE := 131072

# Graphics
BOARD_EGL_CFG := device/bn/acclaim/egl.cfg
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE \
			-DMISSING_EGL_PIXEL_FORMAT_YV12 \
			-DMISSING_GRALLOC_BUFFERS
# Workaround for eglconfig error
BOARD_NO_RGBX_8888 := true
#USE_OPENGL_RENDERER := true
OMAP_ENHANCEMENT := true
#ENHANCED_DOMX := true
#BLTSVILLE_ENHANCEMENT :=true
ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
endif

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/bn/acclaim/recovery/recovery_ui.c
BOARD_HAS_LARGE_FILESYSTEM := true