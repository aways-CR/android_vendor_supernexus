# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jflteatt
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := jflteatt
PRODUCT_MODEL := SGH-I337
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteuc TARGET_DEVICE=jflteatt BUILD_FINGERPRINT="samsung/jflteuc/jflteatt:4.2.2/JDQ39/I337UCUAMDL:user/release-keys" PRIVATE_BUILD_DESC="jflteuc-user 4.2.2 JDQ39 I337UCUAMDL release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
