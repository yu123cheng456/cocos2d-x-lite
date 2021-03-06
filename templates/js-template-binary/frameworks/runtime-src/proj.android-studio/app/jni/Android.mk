LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2djs_shared

LOCAL_MODULE_FILENAME := libcocos2djs

ifeq ($(USE_ARM_MODE),1)
LOCAL_ARM_MODE := arm
endif

LOCAL_SRC_FILES := \
../../../Classes/AppDelegate.cpp \
hellojavascript/main.cpp \
../../../Classes/SDKManager.cpp \
../../../Classes/jsb_anysdk_basic_conversions.cpp \
../../../Classes/manualanysdkbindings.cpp \
../../../Classes/jsb_anysdk_protocols_auto.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../Classes \

LOCAL_STATIC_LIBRARIES := cocos2d_js_static
LOCAL_WHOLE_STATIC_LIBRARIES := PluginProtocolStatic

include $(BUILD_SHARED_LIBRARY)


$(call import-module,scripting/js-bindings/proj.android/prebuilt-mk)
