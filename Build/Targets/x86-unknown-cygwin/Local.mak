#######################################################################
#
#   Makefile for x86-unknown-cygwin
#
#######################################################################
all: Apps

#######################################################################
#    configuration variables
#######################################################################
TARGET = x86-unknown-cygwin
ROOT   = ../../../..

#######################################################################
#    tools
#######################################################################
# how to make dependencies
AUTODEP_CPP = gcc -MM

# how to archive of object files
ARCHIVE = ar rs

# how to make a library
MAKELIB = ar rs

# how to optimize the layout of a library
RANLIB = ranlib

# how to strip executables
STRIP = strip

# how to compile source code
COMPILE_CPP  = g++ 

# how to link object files
LINK_CPP = g++ -L.

# optimization flags
OPTIMIZE_CPP = -Os

# debug flags
DEBUG_CPP = -g

# profiling flags
PROFILE_CPP = -pg

# compilation flags
DEFINES_CPP = -D_REENTRANT -DAP4_PLATFORM_BYTE_ORDER=AP4_PLATFORM_LITTLE_ENDIAN

# warning flags
WARNINGS_CPP = -Wall -Werror -Wshadow -Wpointer-arith -Wcast-qual 

# include directories
INCLUDES_CPP =

# libraries
LIBRARIES_CPP = 

#######################################################################
#    module selection
#######################################################################
FILE_BYTE_STREAM_IMPLEMENTATION = Ap4StdCFileByteStream

#######################################################################
#    includes
#######################################################################
include $(ROOT)/Build/Makefiles/TopLevel.mak
