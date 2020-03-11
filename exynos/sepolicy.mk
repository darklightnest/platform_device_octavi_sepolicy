#
# This policy configuration will be used by all exynos products
# that inherit from ZenX
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/zenx/sepolicy/exynos/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/zenx/sepolicy/exynos/dynamic \
    device/zenx/sepolicy/exynos/system
else
BOARD_SEPOLICY_DIRS += \
    device/zenx/sepolicy/exynos/dynamic \
    device/zenx/sepolicy/exynos/vendor
endif
