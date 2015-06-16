#-------------------------------------------------------------------------------
#
#
#	Notes:
#-------------------------------------------------------------------------------
APPNAME = appname
#Compiler:
	CC=g++

#Compiler flags
	CFLAGS=-c -g -Wall

#Directories
	DIRlib= /usr/local/lib	
	incDIR= /usr/local/include
	INCLUIDES=$(shell pkg-config --cflags glib-2.0)
	LIBS=$(shell pkg-config --libs glib-2.0)
#main function
	mainP= main
#-------------------------------------------------------------------------------
all: Project

Project: mainP.o ADT_SerialPort.o
	$(CC) -o $(APPNAME) \
	$(mainP).o \
	ADT_SerialPort.o \
	-I $(incDIR) \
	$(LIBS) \
	-L $(DIRlib)

ADT_SerialPort.o: ADT_SerialPort.cpp
	$(CC) $(INCLUIDES) $(CFLAGS) \
	ADT_SerialPort.cpp
	
mainP.o: $(mainP).cpp
	$(CC) $(INCLUIDES) $(CFLAGS) \
	$(mainP).cpp

