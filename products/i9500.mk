# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/i9500/full_i9500.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := i9500
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9500
PRODUCT_MODEL := GT-I9500
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ja3gxx TARGET_DEVICE=ja3g BUILD_FINGERPRINT="samsung/ja3gxx/ja3g:4.2.2/JDQ39/I9500XXUAMDK:user/release-keys" PRIVATE_BUILD_DESC="ja3gxx-user 4.2.2 JDQ39 I9500XXUAMDK release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
