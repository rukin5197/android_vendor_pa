# Check for target product
ifeq (pa_primoc,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit CM device configuration
$(call inherit-product, device/htc/primoc/cm.mk)

PRODUCT_NAME := pa_primoc

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

endif
