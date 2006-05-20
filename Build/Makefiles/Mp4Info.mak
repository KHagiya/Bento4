##########################################################################
#
#    Mp4Info Program
#
#    (c) 2001-2002 Gilles Boccon-Gibod
#
##########################################################################
all: mp4info

##########################################################################
# includes
##########################################################################
include $(BUILD_ROOT)/Makefiles/Lib.exp

##########################################################################
# targets
##########################################################################
TARGET_SOURCES = Mp4Info.cpp

##########################################################################
# make path
##########################################################################
VPATH += $(SOURCE_ROOT)/Apps/Mp4Info

##########################################################################
# includes
##########################################################################
include $(BUILD_ROOT)/Makefiles/Rules.mak

##########################################################################
# rules
##########################################################################
mp4info: $(TARGET_OBJECTS) $(TARGET_LIBRARY_FILES)
	$(LINK) $(TARGET_OBJECTS) -o $@ $(LINK_LIBRARIES)

