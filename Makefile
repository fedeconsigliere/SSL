# Makes FahrCel.exe
# JMS
# 2016
# K&R Exercise 1.15. Rewrite the temperature conversion program
# of Section 1.2 to use a function for conversion.
BIN = FahrCel.exe
OBJ = FahrCel.o Conversion.o
CC = gcc
CFLAGS = -std=c11 -Wall -pedantic-errors -m32 -D __DEBUG__ -g3 $(INCS)
# LDFLAGS = -static-libgcc
INCS = -I"C:/Program Files/Dev-Cpp/MinGW64/x86_64-w64-mingw32/
include"
LDLIBS = -L"C:/Program Files/Dev-Cpp/MinGW64/x86_64-w64-mingw32/lib32"
RM = rm -f
$(BIN): $(OBJ)
 $(CC) $(OBJ) -o $(BIN) $(CFLAGS) $(LDFLAGS) $(LDLIBS)
FahrCel.o: FahrCel.c Conversion.h
 $(CC) -c FahrCel.c -o FahrCel.o $(CFLAGS)
Conversion.o: Conversion.h Conversion.c
 $(CC) -c Conversion.c -o Conversion.o $(CFLAGS)
.PHONY: clean
clean:
 $(RM) $(OBJ) $(BIN)

