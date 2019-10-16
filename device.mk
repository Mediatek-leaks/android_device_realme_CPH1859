#
# Copyright (C) 2018 The Android Open-Source Project
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
#

DEVICE_PATH := device/oppo/CPH1859


# Get non-open-source specific aspects
$(call inherit-product, vendor/oppo/CPH1859/CPH1859-vendor.mk)

# Common stuff
$(call inherit-product, device/mediatek/mt6771-common/mt6771.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
endif

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

PRODUCT_COPY_FILES += \
        $(call find-copy-subdir-files,*,${LOCAL_PATH}/audio,vendor/etc)

# Display
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service-mediatek
    lights.mt6771

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/privapp-permissions-mediatek.xml:system/etc/permissions/privapp-permissions-mediatek.xml \
    $(LOCAL_PATH)/permissions/com.mediatek.ims.plugin.xml:system/etc/permissions/com.mediatek.ims.plugin.xml \
    $(LOCAL_PATH)/permissions/com.android.media.remotedisplay.xml:system/etc/permissions/com.android.media.remotedisplay.xml \
    $(LOCAL_PATH)/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
    $(LOCAL_PATH)/permissions/com.android.mediadrm.signer.xml:system/etc/permissions/com.android.mediadrm.signer.xml \
    $(LOCAL_PATH)/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    $(LOCAL_PATH)/permissions/com.wapi.wapicertstore.xml:system/etc/permissions/com.wapi.wapicertstore.xml \
    $(LOCAL_PATH)/permissions/org.ifaa.android.manager.permissions.xml:system/etc/permissions/org.ifaa.android.manager.permissions.xml \
    $(LOCAL_PATH)/permissions/org.simalliance.openmobileapi.xml:system/etc/permissions/org.simalliance.openmobileapi.xml
    
# Bluetooth
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/bluetooth,system/etc/bluetooth) 
    
# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Telephony
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/telephony,vendor/etc)
    
# Power
PRODUCT_PACKAGES += \
    power.mt6771
    
# Keyboard layout
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/keylayout,system/usr/keylayout)

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/idc,system/usr/idc)
    
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:vendor/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_codecs_mediatek_video.xml:vendor/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/media/media_codecs_performance.xml:vendor/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:vendor/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/media/mtk_omx_core.cfg:vendor/etc/mtk_omx_core.cfg \
    $(LOCAL_PATH)/media/media_codecs_ffmpeg:vendor/etc/media_codecs_ffmpeg
    
# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/misc/clatd.conf:system/etc/clatd.conf \
    $(LOCAL_PATH)/misc/mtklog-config.prop:system/etc/mtklog-config.prop \
    $(LOCAL_PATH)/misc/factory.ini:system/etc/factory.ini \
    $(LOCAL_PATH)/misc/custom.conf:system/etc/custom.conf \
    $(LOCAL_PATH)/misc/clatd.conf:system/etc/clatd.conf \
    $(LOCAL_PATH)/misc/slp_conf:vendor/etc/slp_conf
    
# Init
PRODUCT_PACKAGES += \
    init.target.rc
    
# Thermal
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/thermal,vendor/etc/.tp)  

