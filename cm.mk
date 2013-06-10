$(call inherit-product, device/samsung/goghvmu/full_goghvmu.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=goghvmu TARGET_DEVICE=goghvmu BUILD_FINGERPRINT="samsung/goghvmu/goghvmu:4.1.2/JZO54K/L300VPAMC1:user/release-keys"

PRODUCT_NAME := cm_goghvmu
PRODUCT_DEVICE := goghvmu
