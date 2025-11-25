DEVICE_PATH := device/samsung/a05s

# Kernel config
TARGET_KERNEL_SOURCE        := kernel/samsung/bengal
TARGET_KERNEL_ARCH          := arm64
TARGET_KERNEL_HEADER_ARCH   := arm64
TARGET_LINUX_KERNEL_VERSION := 5.15
TARGET_KERNEL_CONFIG := gki_defconfig

# Inherit from common tree
include device/samsung/bengal-common/BoardConfigCommon.mk
