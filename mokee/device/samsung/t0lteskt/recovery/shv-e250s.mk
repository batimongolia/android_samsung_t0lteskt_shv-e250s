#
# Copyright (C) 2014 The CyanogenMod Project
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

MY_DEVICE=SHV-E250S

# recovery.rc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/init.recovery.smdk4x12.rc:root/init.recovery.smdk4x12.rc \
    $(LOCAL_PATH)/recovery/etc/recovery.fstab:root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/lib/modules/dhd.ko:root/lib/modules/dhd.ko \
    $(LOCAL_PATH)/recovery/lib/modules/scsi_wait_scan.ko:root/lib/modules/scsi_wait_scan.ko

$(shell mv $(TARGET_RECOVERY_ROOT_OUT)/fstab.smdk4x12 $(TARGET_RECOVERY_ROOT_OUT)/fstab.SHV-E250S)
$(sudo shell sed  's/smdk4x12/SHV-E250S/g' $(TARGET_RECOVERY_ROOT_OUT)/init.smdk4x12.rc  > $(TARGET_RECOVERY_ROOT_OUT)/init.SHV-E250S.rc)
$(shell rm $(TARGET_RECOVERY_ROOT_OUT)/init.smdk4x12.rc)
$(shell mv $(TARGET_RECOVERY_ROOT_OUT)/init.smdk4x12.usb.rc $(TARGET_RECOVERY_ROOT_OUT)/init.SHV-E250S.usb.rc)
$(shell mv $(TARGET_RECOVERY_ROOT_OUT)/ueventd.smdk4x12.rc $(TARGET_RECOVERY_ROOT_OUT)/ueventd.SHV-E250S.rc)
$(sudo shell chmod 777 $(TARGET_RECOVERY_ROOT_OUT)/init.SHV-E250S.rc)
