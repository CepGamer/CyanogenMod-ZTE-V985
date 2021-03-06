USE_CAMERA_STUB := true

# inherit from the proprietary version


-include vendor/zte/enterprise_V985/BoardConfigVendor.mk

# Board nameing
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := enterprise_V985

TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t30
# TARGET_TEGRA_FAMILY := t30

# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

# TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# BOARD_KERNEL_CMDLINE := 
# BOARD_KERNEL_BASE := 0x10000000
# BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
# BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760 # 10M
# BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760 # 10M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912 # 1.5GB
# BOARD_USERDATAIMAGE_PARTITION_SIZE := 1816133632 # 12.3GB
# BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true



# Try to build the kernel

# Keep this as a fallback
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_PREBUILT_KERNEL := device/zte/enterprise_V985/zImage

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB = device/zte/enterprise_V985/ramdisk/fstab.tegra_enterprise

# TARGET_RECOVERY_FSTAB = device/zte/enterprise_V985/recovery.fstab

RECOVERY_FSTAB_VERSION = 2
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_SPECIFIC_HEADER_PATH := device/zte/enterprise_V985/include

BOARD_EGL_CFG := device/zte/enterprise_V985/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
# TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_SKIP_FIRST_DEQUEUE := true
BOARD_NEEDS_OLD_HWC_API := true
BOARD_EGL_NEEDS_LEGACY_FB := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/bcm4330/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/vendor/firmware/bcm4330/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/bcm4330/fw_bcmdhd_apsta.bin"

# BOARD_LEGACY_NL80211_STA_EVENTS := true

# TARGET_BOOTANIMATION_PRELOAD := true
# TARGET_BOOTANIMATION_TEXTURE_CACHE := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/zte/enterprise_V985/bluetooth/vnd_bt.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/zte/enterprise_V985/bluetooth

COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR0_CAMERA_BLOB -DNEEDS_VECTORIMPL_SYMBOLS
USE_PROPRIETARY_AUDIO_EXTENSIONS := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := false
BOARD_USES_TINY_AUDIO_HW := false
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
BOARD_HAVE_PRE_KITKAT_AUDIO_POLICY_BLOB := true

## Radio fixes
TARGET_PROVIDES_LIBRIL := vendor/zte/enterprise_V985/proprietary/lib/libril-icera.so
BOARD_RIL_NO_CELLINFOLIST := true


## Vold
# BOARD_VOLD_MAX_PARTITIONS := 49
# BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
# TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/tegra-udc.0/gadget/lun%d/file"


# for old Recovery
SKIP_SET_METADATA := true
# Override healthd HAL
# BOARD_HAL_STATIC_LIBRARIES := libhealthd.x3


## Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true


BOARD_CHARGER_ENABLE_SUSPEND := true
# BOARD_BATTERY_DEVICE_NAME := battery

# BOARD_SEPOLICY_DIRS := \
#     device/lge/p880/selinux

# BOARD_SEPOLICY_UNION := \
 #   file_contexts \
 #   file.te \
 #   device.te \
 #   domain.te


