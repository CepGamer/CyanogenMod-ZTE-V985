$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/zte/enterprise_V985/enterprise_V985-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/enterprise_V985/overlay

PRODUCT_TAGS += dalvik.gc.type-precise
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# This device is xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

LOCAL_PATH := device/zte/enterprise_V985


## Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := $(LOCAL_PATH)/zImage
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
$(LOCAL_KERNEL):zImage
## Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
## adb + root + vold
ADDITIONAL_DEFAULT_PROPERTIES += \
ro.secure=0 \
ro.allow.mock.location=0 \
ro.adb.secure=0 \
ro.debuggable=1 \
persist.sys.usb.config=mass_storage \
persist.sys.vold.switchexternal=1



## Recovery

## Boot image
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.tegra_enterprise.rc:root/init.tegra_enterprise.rc \
    $(LOCAL_PATH)/ramdisk/init.tegra_enterprise.usb.rc:root/init.tegra_enterprise.usb.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.tegra_enterprise.rc:root/ueventd.tegra_enterprise.rc \
    $(LOCAL_PATH)/ramdisk/fstab.tegra_enterprise:root/fstab.tegra_enterprise  \
    $(LOCAL_PATH)/ramdisk/init.tf.rc:root/init.tf.rc
## Miscellaneous configs


$(call inherit-product, build/target/product/full.mk)

#gps
PRODUCT_COPY_FILES += \
device/zte/enterprise_V985/gps.conf:system/etc/gps.conf
PRODUCT_COPY_FILES += \
frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml


PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,$(LOCAL_PATH)/prebuilt/system,system)
     
# Charger mode
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

PRODUCT_PACKAGES += \
  audio.a2dp.default \
   audio_policy.default \
   audio.usb.default \
      libtinyalsa \
libaudioutils \
 libnetcmdiface \
 make_ext4fs \
 setup_fs \
     com.android.future.usb.accessory

PRODUCT_PACKAGES += \
   chat

PRODUCT_PACKAGES += \
   EnterpriseParts
# NFC packages
PRODUCT_PACKAGES += \
   libnfc \
libnfc_jni \
Nfc \
Tag
# media config xml file




PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_enterprise_V985
PRODUCT_DEVICE := enterprise_V985
PRODUCT_MODEL := V985
PRODUCT_MANUFACTURER := zte
# audio policy configuration
PRODUCT_COPY_FILES += \
device/zte/enterprise_U950/audio_effects.conf:system/etc/audio_effects.conf
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
