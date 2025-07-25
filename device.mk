PRODUCT_SHIPPING_API_LEVEL := 28


PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service \
    android.hardware.bluetooth@1.0-service-mediatek \
    android.hardware.light@2.0-service-mediatek \
    android.hardware.audio@4.0-service-mediatek \
    android.hardware.audio.effect@4.0-service-mediatek \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi@1.0-service-mediatek \
    wpa_supplicant \
    wificond \
    libwifi \
    libwpa_client \
    wpa_supplicant_legacy \
    dhcpclient \
    hostapd \
    libnetutils \
    libdpm \
    libnl \
    libpcap \
    wifi-service \
    WifiOverlay

PRODUCT_ENFORCE_RRO_TARGETS := *


PRODUCT_CHARACTERISTICS := tablet

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=TAB-A05-BD \
    ro.product.board=TAB-A05-BD \
    ro.product.device=TAB-A05-BD \
    ro.product.locale=ja-JP \
    ro.build.system_root_image=true \
    persist.sys.locale=ja-JP \
    ro.treble.enabled=true \
    ro.build.characteristics=tablet \
    ro.product.first_api_level=28 \

PRODUCT_PROPERTY_OVERRIDES += \
    qemu.hw.mainkeys=0

PRODUCT_PACKAGES += \
    fstab.mt8168 \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt8168.rc \
    init.mt8168.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \


PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)


$(call inherit-product, vendor/sts/a05bd/a05bd-vendor.mk)


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/init.ago.rc:vendor/etc/init/init.ago.rc \
    $(LOCAL_PATH)/etc/init.connectivity.rc:vendor/etc/init/init.connectivity.rc \
    $(LOCAL_PATH)/etc/init.modem.rc:vendor/etc/init/init.modem.rc \
    $(LOCAL_PATH)/etc/init.mt8168.rc:vendor/etc/init/init.mt8168.rc \
    $(LOCAL_PATH)/etc/init.mt8168.usb.rc:vendor/etc/init/init.mt8168.usb.rc \
    $(LOCAL_PATH)/etc/init.project.rc:vendor/etc/init/init.project.rc \
    $(LOCAL_PATH)/etc/init.sensor_1_0.rc:vendor/etc/init/init.sensor_1_0.rc \
    $(LOCAL_PATH)/etc/meta_init.connectivity.rc:vendor/etc/init/meta_init.connectivity.rc \
    $(LOCAL_PATH)/etc/meta_init.modem.rc:vendor/etc/init/meta_init.modem.rc \
    $(LOCAL_PATH)/etc/meta_init.project.rc:vendor/etc/init/meta_init.project.rc \
    $(LOCAL_PATH)/etc/meta_init.rc:vendor/etc/init/meta_init.rc \
    $(LOCAL_PATH)/etc/multi_init.rc:vendor/etc/init/multi_init.rc \
    $(LOCAL_PATH)/etc/fstab.mt8168:vendor/etc/fstab.mt8168 \
    $(LOCAL_PATH)/etc/ueventd.rc:vendor/ueventd.rc \
    $(LOCAL_PATH)/TouchPanel/Wacom_I2C_AES.idc:system/usr/idc/Wacom_I2C_AES.idc \
    $(LOCAL_PATH)/TouchPanel/Wacom_I2C_Digitizer.idc:system/usr/idc/Wacom_I2C_Digitizer.idc \
    $(LOCAL_PATH)/TouchPanel/Wacom_I2C_TOUCH.idc:system/usr/idc/Wacom_I2C_TOUCH.idc \


