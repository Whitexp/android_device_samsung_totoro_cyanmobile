# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# This file is the device-specific product definition file for
# crespo. It lists all the overlays, files, modules and properties
# that are specific to this hardware: i.e. those are device-specific
# drivers, configuration files, settings, etc...


# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.

# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Add device package overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/totoro/overlay

# Libs
PRODUCT_PACKAGES += \
	libstagefrighthw \
	overlay.totoro \
	lights.totoro

# update utilities
PRODUCT_PACKAGES += \
    broadcom \
    libOmxCore \
    SamsungServiceMode \
    libcopybit \
    toggleshutter \
    patchlcs \
    dexpreopt \
    dump_image \
    e2fsck \
    erase_image \
    flash_image

# Add LDPI assets, in addition to MDPI
  PRODUCT_LOCALES += ldpi mdpi

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml


#kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/totoro/prebuilt/fsr.ko:root/fsr.ko \
    device/samsung/totoro/prebuilt/fsr_stl.ko:root/fsr_stl.ko \
    device/samsung/totoro/prebuilt/rfs_fat.ko:root/rfs_fat.ko \
    device/samsung/totoro/prebuilt/rfs_glue.ko:root/rfs_glue.ko \
    device/samsung/totoro/prebuilt/j4fs.ko:root/j4fs.ko \
    device/samsung/totoro/prebuilt/sec_param.ko:root/sec_param.ko

# Board-specific init
PRODUCT_COPY_FILES += \
    device/samsung/totoro/ueventd.gt-s5360.rc:root/ueventd.gt-s5360.rc \
    device/samsung/totoro/init.gt-s5360.rc:root/init.gt-s5360.rc


# Configuration files for audio
PRODUCT_COPY_FILES += \
	device/samsung/totoro/prebuilt/etc/init.d/10soundbooster:system/etc/init.d/10soundbooster


#audio
#PRODUCT_COPY_FILES += \
#vendor/samsung/totoro/proprietary/system/lib/libsisodrm.so:system/lib/libsisodrm.so \
#vendor/samsung/totoro/proprietary/system/lib/libomadrm.so:system/lib/libomadrm.so \
#vendor/samsung/totoro/proprietary/system/lib/librs_jni.so:system/lib/librs_jni.so \
#vendor/samsung/totoro/proprietary/system/lib/libRS.so:system/lib/libRS.so \
#vendor/samsung/totoro/proprietary/system/lib/liblzo.so:system/lib/liblzo.so \

# apns config file
PRODUCT_COPY_FILES += \
        vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

#mediaplayer
#vendor/samsung/totoro/proprietary/system/lib/libopencore_author.so:system/lib/libopencore_author.so \
#vendor/samsung/totoro/proprietary/system/lib/libopencore_common.so:system/lib/libopencore_common.so \
#vendor/samsung/totoro/proprietary/system/lib/libopencore_mp4local.so:system/lib/libopencore_mp4local.so \
#vendor/samsung/totoro/proprietary/system/lib/libopencore_mp4localreg.so:system/lib/libopencore_mp4localreg.so \
#vendor/samsung/totoro/proprietary/system/lib/libopencore_net_support.so:system/lib/libopencore_net_support.so \
#vendor/samsung/totoro/proprietary/system/lib/libopencore_player.so:system/lib/libopencore_player.so \
#vendor/samsung/totoro/proprietary/system/lib/libopencore_rtsp.so:system/lib/libopencore_rtsp.so \
#vendor/samsung/totoro/proprietary/system/lib/libopencore_rtspreg.so:system/lib/libopencore_rtspreg.so \
#vendor/samsung/totoro/proprietary/system/lib/libOpenSLES.so:system/lib/llibOpenSLES.so \


#Wifi
PRODUCT_COPY_FILES += \
device/samsung/totoro/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
device/samsung/totoro/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
device/samsung/totoro/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
device/samsung/totoro/prebuilt/bin/get_macaddrs:system/bin/get_macaddrs \


# HW drivers
PRODUCT_COPY_FILES += \
device/samsung/totoro/prebuilt/hw/gralloc.totoro.so:system/lib/hw/gralloc.totoro.so \
device/samsung/totoro/prebuilt/lib/egl/libGLES_hgl.so:system/lib/egl/libGLES_hgl.so


#extra-apps
PRODUCT_COPY_FILES += \
device/samsung/totoro/prebuilt/app/meridian.apk:system/app/meridian.apk \
device/samsung/totoro/prebuilt/app/quick.apk:system/app/quick.apk \
device/samsung/totoro/prebuilt/lib/libqpicjni99.so:system/lib/libqpicjni99.so \
device/samsung/totoro/prebuilt/lib/libandless.so:system/lib/libandless.so \
device/samsung/totoro/prebuilt/lib/libatrack9.so:system/lib/libatrack9.so \
device/samsung/totoro/prebuilt/lib/libatrack8.so:system/lib/libatrack8.so 



# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1


# other kernel modules not in ramdisk
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/samsung/totoro/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/samsung/totoro/totoro-vendor.mk)
