# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := kryo
TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Platform
TARGET_BOARD_PLATFORM := sm6150
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618

# OTA Asserts
TARGET_OTA_ASSERT_DEVICE := a71naxx,SM-A715F,A715F

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sm6150
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Android Verified Boot (AVB)
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16216147
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2411724800
BOARD_PERSISTIMAGE_PARTITION_SIZE := 28311552
BOARD_CACHEIMAGE_PARTITION_SIZE := 408944640
BOARD_FLASH_BLOCK_SIZE := 131072

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TW_INCLUDE_CRYPTO := true

# Kernel
TARGET_KERNEL_SOURCE               := kernel/samsung/a71naxx
TARGET_KERNEL_CONFIG               := a71naxx_defconfig
TARGET_KERNEL_HEADER_ARCH          := arm64
BOARD_KERNEL_IMAGE_NAME            := Image.gz-dtb
BOARD_KERNEL_SEPARATED_DTBO        := true
BOARD_KERNEL_CMDLINE               := console=null androidboot.hardware=qcom androidboot.memcg=1 msm_rtb.filter=0x237 lpm_levels.sleep_disabled=1  androidboot.usbcontroller=a600000.dwc3 firmware_class.path=/vendor/firmware_mnt/image androidboot.selinux=permissive
BOARD_NAME                         := SRPSF18B001
BOARD_HEADER_VERSION               := 1
BOARD_KERNEL_PAGESIZE              := 4096
BOARD_KERNEL_BASE		    := 0x00000000
BOARD_KERNEL_OFFSET                := 0x00008000
BOARD_KERNEL_TAGS_OFFSET           := 0x01e00000
BOARD_RAMDISK_OFFSET               := 0x02000000
BOARD_MKBOOTIMG_ARGS     := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --header_version $(BOARD_HEADER_VERSION) --board $(BOARD_NAME)

# TWRP
TARGET_RECOVERY_FSTAB := device/samsung/a71naxx/twrp.fstab
TARGET_USERIMAGES_USE_F2FS := true
TW_THEME := portrait_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true