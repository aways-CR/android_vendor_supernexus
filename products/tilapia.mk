# Inherit AOSP device configuration.
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := tilapia
PRODUCT_BRAND := Asus
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.2.1 JOP40D 533553 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/bootanimations/BOOTANIMATION-800x1280.zip:system/media/bootanimation.zip
