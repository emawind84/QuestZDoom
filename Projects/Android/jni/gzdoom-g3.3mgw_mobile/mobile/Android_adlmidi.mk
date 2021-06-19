
LOCAL_PATH := $(call my-dir)/../libraries/adlmidi


include $(CLEAR_VARS)


LOCAL_MODULE    := adlmidi_lz

LOCAL_CFLAGS := -DADLMIDI_DISABLE_MIDI_SEQUENCER -fsigned-char
LOCAL_CPPFLAGS :=  -fexceptions

LOCAL_LDLIBS += -llog

LOCAL_C_INCLUDES :=


LOCAL_SRC_FILES =  	\
	adlmidi.cpp \
	adlmidi_load.cpp \
	adlmidi_midiplay.cpp \
	adlmidi_opl3.cpp \
	adlmidi_private.cpp \
	chips/dosbox/dbopl.cpp \
	chips/dosbox_opl3.cpp \
	chips/java_opl3.cpp \
	chips/nuked_opl3.cpp \
	chips/nuked_opl3_v174.cpp \
	chips/opal_opl3.cpp \
	inst_db.cpp \
	chips/nuked/nukedopl3_174.c \
	chips/nuked/nukedopl3.c \
	wopl/wopl_file.c \


include $(BUILD_STATIC_LIBRARY)








