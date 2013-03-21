# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := d2tmo
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := d2tmo
PRODUCT_MODEL := SGH-T999
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2tmo TARGET_DEVICE=d2tmo BUILD_FINGERPRINT="d2tmo-user 4.1.1 JRO03L T999UVDLJA release-keys" PRIVATE_BUILD_DESC="samsung/d2tmo/d2tmo:4.1.1/JRO03L/T999UVDLJA:user/release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/bootanimations/BOOTANIMATION-720x1280.zip:system/media/bootanimation.zip
