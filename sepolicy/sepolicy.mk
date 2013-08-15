#
# This policy configuration will be used by all products that
# inherit from SuperNexus
#

BOARD_SEPOLICY_DIRS := \
    vendor/supernexus/sepolicy

BOARD_SEPOLICY_UNION := \
    mac_permissions.xml
