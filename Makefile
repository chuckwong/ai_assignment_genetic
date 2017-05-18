#############################################################################
# Makefile for building: ai_assignment_genetic.app/Contents/MacOS/ai_assignment_genetic
# Generated by qmake (2.01a) (Qt 4.8.7) on: Thu May 18 22:29:14 2017
# Project:  ai_assignment_genetic.pro
# Template: app
# Command: /usr/local/bin/qmake -o Makefile ai_assignment_genetic.pro
#############################################################################

####### Compiler, tools and options

CC            = clang
CXX           = clang++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -mmacosx-version-min=10.7 -O2 -arch x86_64 -Wall -W $(DEFINES)
CXXFLAGS      = -pipe -stdlib=libc++ -mmacosx-version-min=10.7 -O2 -arch x86_64 -Wall -W $(DEFINES)
INCPATH       = -I/usr/local/Cellar/qt/4.8.7_2/mkspecs/unsupported/macx-clang-libc++ -I. -I/usr/local/Cellar/qt/4.8.7_2/lib/QtCore.framework/Versions/4/Headers -I/usr/local/Cellar/qt/4.8.7_2/lib/QtCore.framework/Versions/4/Headers -I/usr/local/Cellar/qt/4.8.7_2/lib/QtGui.framework/Versions/4/Headers -I/usr/local/Cellar/qt/4.8.7_2/lib/QtGui.framework/Versions/4/Headers -I/usr/local/Cellar/qt/4.8.7_2/include -I. -I. -F/usr/local/Cellar/qt/4.8.7_2/lib
LINK          = clang++
LFLAGS        = -headerpad_max_install_names -stdlib=libc++ -mmacosx-version-min=10.7 -arch x86_64
LIBS          = $(SUBLIBS) -F/usr/local/Cellar/qt/4.8.7_2/lib -L/usr/local/Cellar/qt/4.8.7_2/lib -framework QtGui -L/usr/local/opt/openssl/lib -L/usr/local/Cellar/qt/4.8.7_2/lib -F/usr/local/Cellar/qt/4.8.7_2/lib -framework QtCore 
AR            = ar cq
RANLIB        = ranlib -s
QMAKE         = /usr/local/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = 
INSTALL_FILE  = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = $(COPY_FILE)
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
export MACOSX_DEPLOYMENT_TARGET = 10.7

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = constant.cpp \
		mydialog.cpp \
		chromosome.cpp \
		genetic.cpp \
		main.cpp moc_mydialog.cpp \
		qrc_application.cpp
OBJECTS       = constant.o \
		mydialog.o \
		chromosome.o \
		genetic.o \
		main.o \
		moc_mydialog.o \
		qrc_application.o
DIST          = /usr/local/Cellar/qt/4.8.7_2/mkspecs/common/unix.conf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/mac.conf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/gcc-base.conf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/gcc-base-macx.conf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/clang.conf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/qconfig.pri \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/modules/qt_webkit_version.pri \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/qt_functions.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/qt_config.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/exclusive_builds.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/default_pre.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/default_pre.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/release.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/default_post.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/default_post.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/x86_64.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/objective_c.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/shared.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/warn_on.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/qt.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/unix/thread.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/moc.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/rez.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/sdk.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/resources.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/uic.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/yacc.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/lex.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/include_source_dir.prf \
		ai_assignment_genetic.pro
QMAKE_TARGET  = ai_assignment_genetic
DESTDIR       = 
TARGET        = ai_assignment_genetic.app/Contents/MacOS/ai_assignment_genetic

####### Custom Compiler Variables
QMAKE_COMP_QMAKE_OBJECTIVE_CFLAGS = -pipe \
		-O2 \
		-arch \
		x86_64 \
		-Wall \
		-W


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile ai_assignment_genetic.app/Contents/PkgInfo ai_assignment_genetic.app/Contents/Resources/empty.lproj ai_assignment_genetic.app/Contents/Info.plist $(TARGET)

$(TARGET):  $(OBJECTS)  
	@$(CHK_DIR_EXISTS) ai_assignment_genetic.app/Contents/MacOS/ || $(MKDIR) ai_assignment_genetic.app/Contents/MacOS/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: ai_assignment_genetic.pro  /usr/local/Cellar/qt/4.8.7_2/mkspecs/unsupported/macx-clang-libc++/qmake.conf /usr/local/Cellar/qt/4.8.7_2/mkspecs/common/unix.conf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/mac.conf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/gcc-base.conf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/gcc-base-macx.conf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/clang.conf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/qconfig.pri \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/modules/qt_webkit_version.pri \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/qt_functions.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/qt_config.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/exclusive_builds.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/default_pre.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/default_pre.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/release.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/default_post.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/default_post.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/x86_64.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/objective_c.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/shared.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/warn_on.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/qt.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/unix/thread.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/moc.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/rez.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/sdk.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/resources.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/uic.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/yacc.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/lex.prf \
		/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/include_source_dir.prf \
		/usr/local/Cellar/qt/4.8.7_2/lib/QtGui.framework/QtGui.prl \
		/usr/local/Cellar/qt/4.8.7_2/lib/QtCore.framework/QtCore.prl
	$(QMAKE) -o Makefile ai_assignment_genetic.pro
/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/unix.conf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/mac.conf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/gcc-base.conf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/gcc-base-macx.conf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/common/clang.conf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/qconfig.pri:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/modules/qt_webkit_version.pri:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/qt_functions.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/qt_config.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/exclusive_builds.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/default_pre.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/default_pre.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/release.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/default_post.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/default_post.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/x86_64.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/objective_c.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/shared.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/warn_on.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/qt.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/unix/thread.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/moc.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/rez.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/mac/sdk.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/resources.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/uic.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/yacc.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/lex.prf:
/usr/local/Cellar/qt/4.8.7_2/mkspecs/features/include_source_dir.prf:
/usr/local/Cellar/qt/4.8.7_2/lib/QtGui.framework/QtGui.prl:
/usr/local/Cellar/qt/4.8.7_2/lib/QtCore.framework/QtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile ai_assignment_genetic.pro

ai_assignment_genetic.app/Contents/PkgInfo: 
	@$(CHK_DIR_EXISTS) ai_assignment_genetic.app/Contents || $(MKDIR) ai_assignment_genetic.app/Contents 
	@$(DEL_FILE) ai_assignment_genetic.app/Contents/PkgInfo
	@echo "APPL????" >ai_assignment_genetic.app/Contents/PkgInfo
ai_assignment_genetic.app/Contents/Resources/empty.lproj: 
	@$(CHK_DIR_EXISTS) ai_assignment_genetic.app/Contents/Resources || $(MKDIR) ai_assignment_genetic.app/Contents/Resources 
	@touch ai_assignment_genetic.app/Contents/Resources/empty.lproj
	
ai_assignment_genetic.app/Contents/Info.plist: 
	@$(CHK_DIR_EXISTS) ai_assignment_genetic.app/Contents || $(MKDIR) ai_assignment_genetic.app/Contents 
	@$(DEL_FILE) ai_assignment_genetic.app/Contents/Info.plist
	@sed -e "s,@SHORT_VERSION@,1.0,g" -e "s,@TYPEINFO@,????,g" -e "s,@ICON@,,g" -e "s,@EXECUTABLE@,ai_assignment_genetic,g" -e "s,@TYPEINFO@,????,g" /usr/local/Cellar/qt/4.8.7_2/mkspecs/unsupported/macx-clang-libc++/Info.plist.app >ai_assignment_genetic.app/Contents/Info.plist
dist: 
	@$(CHK_DIR_EXISTS) .tmp/ai_assignment_genetic1.0.0 || $(MKDIR) .tmp/ai_assignment_genetic1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/ai_assignment_genetic1.0.0/ && $(COPY_FILE) --parents constant.h mydialog.h chromosome.h genetic.h .tmp/ai_assignment_genetic1.0.0/ && $(COPY_FILE) --parents application.qrc .tmp/ai_assignment_genetic1.0.0/ && $(COPY_FILE) --parents constant.cpp mydialog.cpp chromosome.cpp genetic.cpp main.cpp .tmp/ai_assignment_genetic1.0.0/ && (cd `dirname .tmp/ai_assignment_genetic1.0.0` && $(TAR) ai_assignment_genetic1.0.0.tar ai_assignment_genetic1.0.0 && $(COMPRESS) ai_assignment_genetic1.0.0.tar) && $(MOVE) `dirname .tmp/ai_assignment_genetic1.0.0`/ai_assignment_genetic1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/ai_assignment_genetic1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) -r ai_assignment_genetic.app
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_objective_c_make_all:
compiler_objective_c_clean:
compiler_moc_header_make_all: moc_mydialog.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mydialog.cpp
moc_mydialog.cpp: mydialog.h
	/usr/local/Cellar/qt/4.8.7_2/bin/moc $(DEFINES) $(INCPATH) -D__APPLE__ -D__GNUC__ mydialog.h -o moc_mydialog.cpp

compiler_rcc_make_all: qrc_application.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_application.cpp
qrc_application.cpp: application.qrc \
		images/genetic.jpg
	/usr/local/Cellar/qt/4.8.7_2/bin/rcc -name application application.qrc -o qrc_application.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_rez_source_make_all:
compiler_rez_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean 

####### Compile

constant.o: constant.cpp constant.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o constant.o constant.cpp

mydialog.o: mydialog.cpp mydialog.h \
		genetic.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mydialog.o mydialog.cpp

chromosome.o: chromosome.cpp chromosome.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o chromosome.o chromosome.cpp

genetic.o: genetic.cpp genetic.h \
		constant.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o genetic.o genetic.cpp

main.o: main.cpp mydialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

moc_mydialog.o: moc_mydialog.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mydialog.o moc_mydialog.cpp

qrc_application.o: qrc_application.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_application.o qrc_application.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

