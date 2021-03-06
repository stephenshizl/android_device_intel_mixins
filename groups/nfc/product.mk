# Common NFC feature files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

# Common NFC packages
PRODUCT_PACKAGES += \
    NfcNci

ifeq ($(FLAG_GMS_AVAILABLE),yes)
PRODUCT_PACKAGES += \
    TagGoogle
else
PRODUCT_PACKAGES += \
    Tag
endif
