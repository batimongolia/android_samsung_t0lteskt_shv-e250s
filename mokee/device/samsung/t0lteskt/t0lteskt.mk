#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/t0lteskt

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.SHV-E250S:root/fstab.SHV-E250S \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/rootdir/ueventd.SHV-E250S.rc:root/ueventd.SHV-E250S.rc

# recovery.rc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/init.recovery.SHV-E250S.rc:root/init.recovery.SHV-E250S.rc \
    $(LOCAL_PATH)/recovery/etc/recovery.fstab:root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/lib/modules/dhd.ko:root/lib/modules/dhd.ko \
    $(LOCAL_PATH)/recovery/lib/modules/scsi_wait_scan.ko:root/lib/modules/scsi_wait_scan.ko

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Include common makefile
$(call inherit-product, device/samsung/t0lteskt/common.mk)

$(call inherit-product-if-exists, vendor/samsung/t0lteskt/t0lteskt-vendor.mk)
