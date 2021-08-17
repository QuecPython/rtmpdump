# Copyright (c) Quectel Wireless Solution, Co., Ltd.All Rights Reserved.
#  
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#  
#     http://www.apache.org/licenses/LICENSE-2.0
#  
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

NAME := RTMPDUMP

$(NAME)_SRCS += \
	librtmp/src/amf.c \
	librtmp/src/hashswf.c \
	librtmp/src/parseurl.c \
	librtmp/src/rtmp.c \
	libz/src/adler32.c \
	libz/src/crc32.c \
	libz/src/deflate.c \
	libz/src/infback.c \
	libz/src/inffast.c \
	libz/src/inflate.c \
	libz/src/inftrees.c \
	libz/src/trees.c \
	libz/src/zutil.c \
	libz/src/compress.c \
	libz/src/uncompr.c \
	libz/src/gzclose.c \
	libz/src/gzlib.c \
	libz/src/gzread.c \
	libz/src/gzwrite.c 
	

GLOBAL_INCS += \
	. \
	librtmp/inc \
	libz/inc 

$(NAME)_CFLAGS += --include=system/lwip/$(strip $(PLAT))/src/include/lwip/errno.h

$(NAME)_CFLAGS = \
	-Wno-error=unused-parameter \
	-Wno-error=unused-function \
	-Wno-error=unused-variable \
	-Wno-error=sign-compare \
	-Wno-error=cpp \
	-Wno-pointer-sign \
	-Wno-incompatible-pointer-types \
	-Wno-implicit-fallthrough \
	-Wno-unused-const-variable \
	-Wno-unused-but-set-variable





