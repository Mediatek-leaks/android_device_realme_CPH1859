#
# System Properties for Realme 1: CPH1859
#

# LCD density
ro.sf.lcd_density=480
 
# MediaTek
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.mediatek.chip_ver=S01 \
ro.mediatek.version.release=CPH1859_11_C.43_190818 \
ro.mediatek.platform=MT6771 \
ro.mediatek.version.branch=alps-mp-p0.mp3.tc16sp \
ro.mediatek.wlan.p2p=1 \
ro.mediatek.wlan.wsc=1

# Graphics
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
     ro.opengles.version=196610
     	
# Telephony
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.telephony.default_network=10,10 \
    ro.telephony.sim.count=2
  
# Playstore
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.com.google.clientidbase=android-oppo

# FRP
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.frp.pst=/dev/block/platform/bootdevice/by-name/frp
     
# DRM
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.mtk_cta_drm_support=1 \
    ro.mtk_widevine_drm_l3_support=1 \
    drm.service.enabled=true
    
# Power off opt in IPO
sys.ipo.pwrdncap=2

# Storage
ro.sys.usb.storage.type=mtp \
ro.sys.sdcardfs=1	

#ril
rild.libpath=mtk-ril.so \
rild.libargs=-d /dev/ttyC0 \
persist.radio.default.sim=0 \
persist.radio.mobile.data=0,0 \
bgw.current3gband=0 \
ro.com.android.mobiledata=true \
ro.boot.opt_lte_support=1 \
ro.boot.opt_c2k_lte_mode=0 \
ro.boot.opt_md1_support=9 \
ro.boot.opt_md3_support=0

#WiFi
mediatek.wlan.chip=CONSYS_MT6771 \
mediatek.wlan.module.postfix=_consys_mt6771 \
ro.mediatek.wlan.wsc=1 \
ro.mediatek.wlan.p2p=1 \
mediatek.wlan.ctia=0 \
wifi.tethering.interface=ap0 \
wifi.interface=wlan0 \
wifi.direct.interface=p2p0

# USB BICR function
ro.sys.usb.bicr=no

# USB MTP WHQL
ro.sys.usb.mtp.whql.enable=0

# Zygote
ro.zygote.preload.enable=0
