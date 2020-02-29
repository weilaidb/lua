###############################################################################

TARGET        = `basename $(PWD)`
LIBDIR        = lib
SRC           = $(shell find source -name '*.c')
SRC_INC_DIR	 = $(shell find source -type d)
SRC_INC	 = $(SRC_INC_DIR:%=-I%)
OBJ           = $(SRC:%.c=%.o)
LOCAL_LIBS    = -Llib 
LOCAL_INC     = -Iinclude  -I/usr/local/include/ $(SRC_INC)

CPPSRC        = $(shell find source -name '*.cpp')
CPPOBJ        = $(CPPSRC:%.cpp=%.o)
LIBTARGET     = 


###############################################################################

CC            = gcc
CXX           = g++
DEFINES       = -DLUA_COMPAT_APIINTCASTS #-D_LARGEFILE64_SOURCE
CFLAGS        = -w -fPIC -g -x c -pipe $(EXTRA_OPTS) $(OPT_CFLAGS) -pipe -O2 -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -w -fPIC -g -pipe $(EXTRA_OPTS) $(OPT_CFLAGS) -pipe -O2 -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = $(LOCAL_INC) 
LINK          = g++
LFLAGS        = -Wl,-O1 
RPATH_LINK    = 
LIBS          = $(LOCAL_LIBS) $(RPATH_LINK) -lpthread -lrt -ldl -llua
AR            = ar rcs
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -sf
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

all: $(TARGET)

$(TARGET):$(OBJ) $(CPPOBJ) 
	@echo "$(LINK)  $(LFLAGS) -o $(TARGET)  $(OBJ) $(CPPOBJ)  $(LIBS) "
	@$(LINK)  $(LFLAGS) -o $(TARGET)  $(OBJ) $(CPPOBJ)  $(LIBS) 
	@mkdir -p bin
	@$(MOVE)	$(TARGET)	bin/
clean:
	@echo " Cleaning... "
	@echo rm -f $(OBJ) $(CPPOBJ) $(TARGET)  $(TARGET)
	@rm -f $(OBJ) $(CPPOBJ) $(TARGET)  $(TARGET)
	 
	
%.o : %.cpp
	@$(CXX) $(CXXFLAGS) $(INCPATH) -c $< -o $@

%.o : %.c
	@$(CXX) $(CFLAGS) $(INCPATH)  -c $< -o $@


help:
	@echo ============== help begin =====================
	@echo TARGET : $(TARGET)
	@echo SRC    : $(SRC)
	@echo CPPSRC : $(CPPSRC)
	@echo DEFINES: $(DEFINES)
	@echo INCPATH: $(INCPATH)
	@echo OBJ    : $(OBJ)
	@echo CPPOBJ : $(CPPOBJ)
	@echo LIBSHAREDTARGET: $(LIBSHAREDTARGET)
	@echo ============== help end   =====================

