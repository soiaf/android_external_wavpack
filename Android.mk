LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES = \
    src/bits.c \
    src/float.c \
    src/metadata.c \
    src/tags.c \
    src/unpack.c \
    src/unpack3.c \
    src/words.c \
    src/wputils.c

LOCAL_CFLAGS+= -DNO_PACK -DVER4_ONLY -DNO_USE_FSTREAMS
	
LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/.

LOCAL_ARM_MODE := arm

LOCAL_MODULE := libWavPack

include $(BUILD_SHARED_LIBRARY)
