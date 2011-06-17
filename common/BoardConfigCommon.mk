include build/target/board/generic/BoardConfig.mk

TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true

TARGET_BOARD_PLATFORM := apple
TARGET_BOOTLOADER_BOARD_NAME := $(TARGET_BOARD_PLATFORM)

TARGET_BOOTIMAGE_USE_EXT4 := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true

BOARD_WPA_SUPPLICANT_DRIVER := AWEXT

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_CSR := true

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 204857600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 104857600
BOARD_FLASH_BLOCK_SIZE := 4096
