# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/i9305/full_i9305.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := i9305
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9305
PRODUCT_MODEL := GT-I9305
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m3xx TARGET_DEVICE=m3 BUILD_FINGERPRINT="samsung/m3xx/m3:4.1.2/JZO54K/I9305XXBMA6:user/release-keys" PRIVATE_BUILD_DESC="m3xx-user 4.1.2 JZO54K I9305XXBMA6 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/bootanimations/BOOTANIMATION-720x1280.zip:system/media/bootanimation.zip
