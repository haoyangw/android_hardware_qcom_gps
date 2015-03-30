# Only include gps.conf from this folder if vendor tree or device tree doesn't already have one and result in override
ifneq ($(strip $(TARGET_USES_CUSTOM_GPS_CONF)),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := gps.conf
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/
LOCAL_SRC_FILES := gps.conf

include $(BUILD_PREBUILT)

endif
