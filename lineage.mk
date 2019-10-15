# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common lineageos stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := CPH1859

PRODUCT_DEVICE := CPH1859
PRODUCT_NAME := lineage_CPH1859
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH1859
PRODUCT_MANUFACTURER := OPPO

# Boot animation
TARGET_SCREEN_HEIGHT      := 2160
TARGET_SCREEN_WIDTH       := 1080

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US
