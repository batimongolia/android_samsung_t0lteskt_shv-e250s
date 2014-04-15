# Specify phone tech before including full_phone
$(call inherit-product, vendor/mk/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := t0lteskt

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/t0lteskt/full_t0lteskt.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t0lteskt
PRODUCT_NAME := mk_t0lteskt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SHV-E250S
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0lteskt TARGET_DEVICE=t0lteskt BUILD_FINGERPRINT="samsung/t0ltexx/t0lteskt:4.1.2/JZO54K/N7105XXDLL4:user/release-keys" PRIVATE_BUILD_DESC="t0ltexx-user 4.1.2 JZO54K N7105XXDLL4 release-keys"
