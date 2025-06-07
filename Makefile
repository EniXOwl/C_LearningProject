# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra

# Source and output folders
SRC_DIR = src
BIN_DIR = bin

# Rule: target name becomes the source and output name
%:
	$(CC) $(CFLAGS) $(SRC_DIR)/$@.c -o $(BIN_DIR)/$@

# Clean rule: remove all compiled binaries
clean:
	rm -f $(BIN_DIR)/*

.PHONY: clean
