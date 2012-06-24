#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/evita/overlay

#Boot Animation
PRODUCT_COPY_FILES += vendor/cm/prebuilt/common/bootanimation/vertical-720x1280.zip:/system/media/bootanimation.zip

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/init:root/init \
    device/htc/evita/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/htc/evita/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/htc/evita/ramdisk/init.rc:root/init.rc \
    device/htc/evita/ramdisk/init.goldfish.rc:root/init.goldfish.rc \
    device/htc/evita/ramdisk/init.target.rc:root/init.target.rc \
    device/htc/evita/ramdisk/init.elite.rc:root/init.elite.rc \
    device/htc/evita/ramdisk/init.usb.rc:root/init.usb.rc \
    device/htc/evita/ramdisk/ueventd.rc:root/ueventd.rc \
    device/htc/evita/ramdisk/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/htc/evita/ramdisk/default.prop:root/default.prop

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/htc/evita/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/htc/evita/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/htc/evita/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/htc/evita/configs/init.qcom.q6_links.sh:/system/etc/init.qcom.q6_links.sh \
    device/htc/evita/configs/init.qcom.radio_links.sh:/system/etc/init.qcom.radio_links.sh \
    device/htc/evita/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/htc/evita/configs/init.qcom.wcnss_links.sh:/system/etc/init.qcom.wcnss_links.sh \
    device/htc/evita/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    device/htc/evita/configs/media_profiles.xml:system/etc/media_profiles.xml

# HTC BT audio config
PRODUCT_COPY_FILES += device/htc/evita/configs/AudioBTID.csv:system/etc/AudioBTID.csv

# QC thermald config
PRODUCT_COPY_FILES += device/htc/evita/configs/thermald.conf:system/etc/thermald.conf

# vold config
PRODUCT_COPY_FILES += \
    device/htc/evita/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/htc/evita/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/evita/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/evita/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/evita/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/evita/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/evita/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/evita/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/evita/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg

PRODUCT_COPY_FILES += \
    device/htc/evita/dsp/snd_soc_msm/FM_A2DP_REC:/system/etc/snd_soc_msm/FM_A2DP_REC \
    device/htc/evita/dsp/snd_soc_msm/FM_A2DP_REC_2x:/system/etc/snd_soc_msm/FM_A2DP_REC_2x \
    device/htc/evita/dsp/snd_soc_msm/FM_Digital_Radio:/system/etc/snd_soc_msm/FM_Digital_Radio \
    device/htc/evita/dsp/snd_soc_msm/FM_Digital_Radio_2x:/system/etc/snd_soc_msm/FM_Digital_Radio_2x \
    device/htc/evita/dsp/snd_soc_msm/FM_REC:/system/etc/snd_soc_msm/FM_REC \
    device/htc/evita/dsp/snd_soc_msm/FM_REC_2x:/system/etc/snd_soc_msm/FM_REC_2x \
    device/htc/evita/dsp/snd_soc_msm/HiFi:/system/etc/snd_soc_msm/HiFi \
    device/htc/evita/dsp/snd_soc_msm/HiFi_2x:/system/etc/snd_soc_msm/HiFi_2x \
    device/htc/evita/dsp/snd_soc_msm/HiFi_Low_Power:/system/etc/snd_soc_msm/HiFi_Low_Power \
    device/htc/evita/dsp/snd_soc_msm/HiFi_Low_Power_2x:/system/etc/snd_soc_msm/HiFi_Low_Power_2x \
    device/htc/evita/dsp/snd_soc_msm/HiFi_Rec:/system/etc/snd_soc_msm/HiFi_Rec \
    device/htc/evita/dsp/snd_soc_msm/HiFi_Rec_2x:/system/etc/snd_soc_msm/HiFi_Rec_2x \
    device/htc/evita/dsp/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
    device/htc/evita/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/htc/evita/dsp/snd_soc_msm/Voice_Call:/system/etc/snd_soc_msm/Voice_Call \
    device/htc/evita/dsp/snd_soc_msm/Voice_Call_2x:/system/etc/snd_soc_msm/Voice_Call_2x \
    device/htc/evita/dsp/snd_soc_msm/Voice_Call_IP:/system/etc/snd_soc_msm/Voice_Call_IP \
    device/htc/evita/dsp/snd_soc_msm/Voice_Call_IP_2x:/system/etc/snd_soc_msm/Voice_Call_IP_2x

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/evita/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/evita/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/evita/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/evita/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/evita/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/htc/evita/keylayout/virtualkeys:system/usr/keylayout/virtualkeys

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/evita/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/evita/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/evita/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/htc/evita/idc/qwert2.idc:system/usr/idc/qwerty2.idc

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    libalsa-intf \
    libaudioutils \
		Apollo

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# GPS
#PRODUCT_PACKAGES += \
#    gps.evita \

# Lights
PRODUCT_PACKAGES += \
    lights.evita

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# Torch
PRODUCT_PACKAGES += \
		Torch

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

#WPA Supplicant
PRODUCT_PACKAGES += \
    wpa_supplicant.conf

#NFC
PRODUCT_PACKAGES += \
    Nfc \
    com.android.nfc_extras
#NFC
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    vendor/htc/evita/proprietary/lib/libnfc.so:system/lib/libnfc.so \
    vendor/htc/evita/proprietary/lib/libnfc_jni.so:system/lib/libnfc_jni.so \
    vendor/htc/evita/proprietary/lib/libnfc_ndef.so:system/lib/libnfc_ndef.so \
    vendor/htc/evita/proprietary/lib/hw/nfc.elite.so:system/lib/hw/nfc.elite.so \
    vendor/htc/evita/proprietary/vendor/firmware/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so

#Dual core
PRODUCT_COPY_FILES +=\
    device/htc/evita/90dualcore:system/etc/init.d/90dualcore

# Kernel modules
PRODUCT_COPY_FILES += \
    device/htc/evita/modules/prima_wlan.ko:/system/lib/modules/prima_wlan.ko \
    device/htc/evita/modules/ansi_cprng.ko:/system/lib/modules/ansi_cprng.ko \
    device/htc/evita/modules/cavm_sqos_mod.ko:/system/lib/modules/cavm_sqos_mod.ko \
    device/htc/evita/modules/dma_test.ko:/system/lib/modules/dma_test.ko \
    device/htc/evita/modules/evbug.ko:/system/lib/modules/evbug.ko \
    device/htc/evita/modules/gspca_main.ko:/system/lib/modules/gspca_main.ko \
    device/htc/evita/modules/htc_sqos_ctrlmsg.ko:/system/lib/modules/htc_sqos_ctrlmsg.ko \
    device/htc/evita/modules/htc_sqos_encoder.ko:/system/lib/modules/htc_sqos_encoder.ko \
    device/htc/evita/modules/htc_sqos_wifi.ko:/system/lib/modules/htc_sqos_wifi.ko \
    #device/htc/evita/modules/kineto_gan.ko:/system/lib/modules/kineto_gan.ko \
    device/htc/evita/modules/lcd.ko:/system/lib/modules/lcd.ko \
    device/htc/evita/modules/msm-buspm-dev.ko:/system/lib/modules/msm-buspm-dev.ko \
    #device/htc/evita/modules/oprofile.ko:/system/lib/modules/oprofile.ko \
    device/htc/evita/modules/prima_wlan.ko:/system/lib/modules/prima_wlan.ko \
    device/htc/evita/modules/qce40.ko:/system/lib/modules/qce40.ko \
    device/htc/evita/modules/qcedev.ko:/system/lib/modules/qcedev.ko \
    device/htc/evita/modules/qcrypto.ko:/system/lib/modules/qcrypto.ko \
    device/htc/evita/modules/radio-iris-transport.ko:/system/lib/modules/radio-iris-transport.ko \
    device/htc/evita/modules/reset_modem.ko:/system/lib/modules/reset_modem.ko \
    device/htc/evita/modules/scsi_wait_scan.ko:/system/lib/modules/scsi_wait_scan.ko \
    device/htc/evita/modules/spidev.ko:/system/lib/modules/spidev.ko

# MSM8960 firmware
PRODUCT_COPY_FILES += \
    device/htc/evita/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/htc/evita/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/htc/evita/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/htc/evita/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/htc/evita/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/htc/evita/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw
    #device/htc/evita/firmware/wcd9310_anc.bin:/system/etc/firmware/wcd9310_anc.bin

# Wifi firmware
PRODUCT_COPY_FILES += \
    device/htc/evita/firmware/WCNSS_cfg.dat:/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/htc/evita/firmware/WCNSS_qcom_cfg.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/htc/evita/firmware/WCNSS_qcom_wlan_nv.bin:/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US xhdpi
PRODUCT_VERSION_DEVICE_SPECIFIC=alpha4

# For RomManager
ADDITIONAL_BUILD_PROPERTIES += \
		ro.rommanager.developerid=socaldevs

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/evita/evita-vendor.mk)

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)
