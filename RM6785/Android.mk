LOCAL_PATH := $(call my-dir)

ifneq ($(filter RMX2001L1 RMX2151L1 RM6785,$(TARGET_DEVICE)),)
$(foreach f, $(notdir $(wildcard $(LOCAL_PATH)/*)), \
    $(call add-radio-file,$(f)))

include $(call all-makefiles-under,$(LOCAL_PATH))
endif
