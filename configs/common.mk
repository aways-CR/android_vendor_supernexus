# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/supernexus/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/supernexus/overlay/dictionaries

# Common product property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# init.d support
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/supernexus/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# SuperNexus-specific init file
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/etc/init.local.rc:root/init.sn.rc

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/supernexus/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Optional SN packages
PRODUCT_PACKAGES += \
    SoundRecorder \
    Basic

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    nano \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Bring in all video prebuilts
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Inherit common product build prop overrides
-include vendor/supernexus/configs/common_versions.mk
