# Inherit AOSP device configuration.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := grouper
PRODUCT_BRAND := Asus
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.2.1 JOP40D 533553 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/bootanimations/BOOTANIMATION-800x1280.zip:system/media/bootanimation.zip
