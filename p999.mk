$(call inherit-product, device/lge/star-common/star.mk)

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/lge/p999/p999-vendor.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/p999/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Board-specific init
PRODUCT_COPY_FILES += \
    device/lge/p999/init.p999.rc:root/init.rc

PRODUCT_COPY_FILES += \
    device/lge/p999/vold.fstab:system/etc/vold.fstab \

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/prebuilt/wireless.ko:system/lib/modules/wireless.ko

PRODUCT_NAME := lge_p999
PRODUCT_DEVICE := p999
PRODUCT_MODEL := LG-P999
