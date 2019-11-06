#
# Copyright 2019 The Android Open Source Project
# Copyright (C) 2019 The LineageOS Project
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

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaudio-resampler \
    libaudioroute \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_em.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_em.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \

# Additional native libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt
    
# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    gralloc.mt6771 \
    gralloc.default \
    hwcomposer.mt6771
    libhwc2on1adapter \
    libhwc2onfbadapter \
    libtinyxml \
    libvulkan \
    memtrack.mt6771
       
# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ACCDET.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayout/AVRCP.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_did.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/bluetooth/bt_did.conf \
    $(LOCAL_PATH)/bluetooth/bt_mtk_iot_list.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/bluetooth/bt_mtk_iot_list.conf \
    $(LOCAL_PATH)/bluetooth/bt_stack.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/bluetooth/bt_stack.conf \
    $(LOCAL_PATH)/bluetooth/mtk_bt_fw.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/bluetooth/mtk_bt_fw.conf \
    $(LOCAL_PATH)/bluetooth/mtk_bt_stack.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/bluetooth/mtk_bt_stack.conf \
    $(LOCAL_PATH)/bluetooth/oppo_interop_database.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/bluetooth/oppo_interop_database.conf \
    $(LOCAL_PATH)/bluetooth/profile_version.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/bluetooth/profile_version.conf
    
# Idc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/AVRCP.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/AVRCP.idc

# Telephony
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/telephony/cdma_ecc_list.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cdma_ecc_list.xml \
    $(LOCAL_PATH)/telephony/cdma_ecc_list_OP01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cdma_ecc_list_OP01.xml \
    $(LOCAL_PATH)/telephony/cdma_ecc_list_OP09.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cdma_ecc_list_OP09.xml \
    $(LOCAL_PATH)/telephony/cdma_ecc_list_OP012.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cdma_ecc_list_OP012.xml \
    $(LOCAL_PATH)/telephony/cdma_ecc_list_ss.xml:$(TARGET_COPY_OUT_VENDOR)/etc/cdma_ecc_list_ss.xml
          

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.hifi_sensors.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.relative_humidity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.relative_humidity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/com.mediatek.ims.plugin.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.mediatek.ims.plugin.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_codecs_ffmpeg:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_ffmpeg \
    $(LOCAL_PATH)/media/media_codecs_mediatek_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/media/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/media/media_codecs_oppo_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_oppo_performance.xml \
    $(LOCAL_PATH)/media/media_codecs_oppo_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_oppo_video.xml \
    $(LOCAL_PATH)/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/media/media_profiles_V1_0:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/media/mtk_omx_core.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/mtk_omx_core.cfg

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml


# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files
    
# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/misc/clatd.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/clatd.conf \
    $(LOCAL_PATH)/misc/factory.ini:$(TARGET_COPY_OUT_SYSTEM)/etc/factory.ini \
    $(LOCAL_PATH)/misc/custom.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/custom.conf \
    $(LOCAL_PATH)/misc/clatd.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/clatd.conf \
    $(LOCAL_PATH)/misc/slp_conf:$(TARGET_COPY_OUT_VENDOR)/etc/slp_conf

# Init
PRODUCT_PACKAGES += \
    init.oppo.hypnus.sh \
    init.oppo.hypnus_logging.sh \
    init.oppo.kneuron.sh \
    init.oppo.securetemplet.sh \
    engineer_vendor_shell.sh \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    fstab.mt6771 \
    init.aee.rc \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6771.rc \
    init.mt6771.usb.rc \
    init.oppo.debug.rc \
    init.oppo.face.rc \
    init.oppo.reserve.rc \
    init.oppo.seccommon.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    init.target.rc \
    init.usb.configfs.rc \
    init.usb.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.1-service.clearkey \
    android.hardware.drm@1.1-service.widevine

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl-mediatek \
    libxml2 \
    Snap

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service \
    android.hardware.health@2.0-service.override

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0_system

# tether
PRODUCT_PACKAGES += \
    android.hardware.tetheroffload.control@1.0

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0 \
    android.hardware.radio@1.1 \
    android.hardware.radio@1.2 \
    android.hardware.radio.config@1.0 \
    android.hardware.radio.deprecated@1.0 \
    libprotobuf-cpp-full \
    libxml2

# Secure Element
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/configstore@1.1.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/configstore@1.1.policy \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Sensors
PRODUCT_PACKAGES += \
   libsensorndkbridge

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service-mediatek \
    android.hardware.light@2.0-impl-mediatek \
    lights.mt6771

# Power
PRODUCT_PACKAGES += \
    power.mt6771

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service \
    android.hardware.vibrator@1.0-impl

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.1-service-mediatek \

# VNDK-SP
PRODUCT_PACKAGES += \
    vndk-sp
    
# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service \
    thermal.mt6771
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal/thermal.conf:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/thermal/thermal.off.conf:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/thermal/.ht120.mtc:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/.ht120.mtc \
    $(LOCAL_PATH)/thermal/.thermal_policy_00:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/.thermal_policy_00 \
    $(LOCAL_PATH)/thermal/.thermal_policy_03:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/.thermal_policy_03 \
    $(LOCAL_PATH)/thermal/.thermal_policy_05:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/.thermal_policy_05 \
    $(LOCAL_PATH)/thermal/.thermal_policy_08:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/.thermal_policy_08 \
    $(LOCAL_PATH)/thermal/.thermal_policy_09:$(TARGET_COPY_OUT_VENDOR)/etc/.tp/.thermal_policy_09  

#WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service-mediatek \
    hostapd \
    libwpa_client \
    libwifi-hal \
    vendor.oppo.hardware.wifi.supplicant@1.0 \
    vendor.mediatek.hardware.wifi.hostapd@2.0 \
    vendor.mediatek.hardware.wifi.supplicant@2.0 \
    vendor.mediatek.hardware.wifi.supplicant@2.1 \
    wpa_supplicant \
    wpa_supplicant.conf
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# WiFi Display
PRODUCT_PACKAGES += \
    libnl
        
# Get non-open-source specific aspects
$(call inherit-product, vendor/oppo/CPH1859/CPH1859-vendor.mk)
