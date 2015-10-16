# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release name
PRODUCT_RELEASE_NAME := enterprise_V985

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# This device has NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/zte/enterprise_V985/enterprise_V985.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := enterprise_V985
PRODUCT_NAME := cm_enterprise_V985
PRODUCT_BRAND := zte
PRODUCT_MODEL := v985
PRODUCT_MANUFACTURER := zte

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=enterprise_V985 \
TARGET_DEVICE=enterprise_V985 \
BUILD_FINGERPRINT="ZTE/enterprise_V985/enterprise_V985:4.1.2/JZO54K/eng.ztetd.20130912.222649:user/release-keys" \
PRIVATE_BUILD_DESC="enterprise_V985-user 4.1.2 JZO54K eng.ztetd.20130912.222649 release-keys"


PRODUCT_PACKAGES += Torch
