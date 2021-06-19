
LOCAL_PATH := $(call my-dir)/../libraries/opnmidi


include $(CLEAR_VARS)


LOCAL_MODULE    := opnmidi_lz

LOCAL_CFLAGS :=  -DOPNMIDI_DISABLE_MIDI_SEQUENCER -DOPNMIDI_DISABLE_GX_EMULATOR -fsigned-char
LOCAL_CPPFLAGS :=  -fexceptions

LOCAL_LDLIBS += -llog

LOCAL_C_INCLUDES :=


LOCAL_SRC_FILES =  	\
	chips/gens_opn2.cpp \
    	chips/gens/Ym2612_Emu.cpp \
    	chips/gx_opn2.cpp \
    	chips/mamefm/fm.cpp \
    	chips/mamefm/resampler.cpp \
    	chips/mamefm/ymdeltat.cpp \
    	chips/mame_opn2.cpp \
    	chips/mame_opna.cpp \
    	chips/np2/fmgen_file.cpp \
    	chips/np2/fmgen_fmgen.cpp \
    	chips/np2/fmgen_fmtimer.cpp \
    	chips/np2/fmgen_opna.cpp \
    	chips/np2/fmgen_psg.cpp \
    	chips/np2_opna.cpp \
    	chips/nuked_opn2.cpp \
    	chips/pmdwin_opna.cpp \
    	opnmidi.cpp \
    	opnmidi_load.cpp \
    	opnmidi_midiplay.cpp \
    	opnmidi_opn2.cpp \
    	opnmidi_private.cpp \
    	chips/gx/gx_ym2612.c \
    	chips/mamefm/emu2149.c \
    	chips/mame/mame_ym2612fm.c \
    	chips/nuked/ym3438.c \
    	chips/pmdwin/opna.c \
    	chips/pmdwin/psg.c \
    	chips/pmdwin/rhythmdata.c \
    	wopn/wopn_file.c \


include $(BUILD_STATIC_LIBRARY)








