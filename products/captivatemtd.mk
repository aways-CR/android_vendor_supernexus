# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/captivatemtd/full_captivatemtd.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := captivatemtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := captivatemtd
PRODUCT_MODEL := SGH-I897
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I897 TARGET_DEVICE=SGH-I897 BUILD_FINGERPRINT=samsung/SGH-I897/SGH-I897:2.3.5/GINGERBREAD/UCKK4:user/release-keys PRIVATE_BUILD_DESC="SGH-I897-user 2.3.5 GINGERBREAD UCKK4 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/bootanimations/BOOTANIMATION-480x800.zip:system/media/bootanimation.zip