# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/vibrantmtd/full_vibrantmtd.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vibrantmtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := vibrantmtd
PRODUCT_MODEL := SGH-T959
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T959 TARGET_DEVICE=SGH-T959 BUILD_FINGERPRINT=Samsung/SGH-T959/SGH-T959/SGH-T959:2.2/FROYO/UVKB5:user/release-keys PRIVATE_BUILD_DESC="SGH-T959-user 2.2 FROYO UVKB5 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/bootanimations/BOOTANIMATION-480x800.zip:system/media/bootanimation.zip
