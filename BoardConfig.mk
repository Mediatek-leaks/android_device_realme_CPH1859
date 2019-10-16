# mt6771 platform boardconfig
DEVICE_PATH := device/motorola/CPH1859

# TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

BOARD_VENDOR := oppo

# Platform
TARGET_BOARD_PLATFORM := mt6771
TARGET_BOOTLOADER_BOARD_NAME := mt6771

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)


# Display
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080


# Kernel
#BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc170000 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user androidboot.selinux=permissive

ifeq ($(WITH_PERMISSIVE), true)
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
endif

BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x13f88000
BOARD_RAMDISK_OFFSET := 0x14f88000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb


# Linker
LINKER_FORCED_SHIM_LIBS := /system/lib/libnetutils.so|libshim_ifc.so
LINKER_FORCED_SHIM_LIBS += /system/lib/libgui.so|libshim_gui.so


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4513071104
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55135157760
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/recovery.fstab

# System Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# VNDK
BOARD_VNDK_VERSION := current

# Vendor
TARGET_COPY_OUT_VENDOR := vendor

# DRM
TARGET_ENABLE_MEDIADRM_64 := true
