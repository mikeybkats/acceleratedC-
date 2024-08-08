CXX=clang++
CXXFLAGS=-std=c++11 -Wall
SRC_DIR=src
OBJ_DIR=build
BIN_DIR=$(OBJ_DIR)/bin

SRC_FILES=$(wildcard $(SRC_DIR)/*.cpp)
EXE_FILES=$(patsubst $(SRC_DIR)/%.cpp,$(BIN_DIR)/%,$(SRC_FILES))

# Ensure the output directories exist
$(shell mkdir -p $(OBJ_DIR) $(BIN_DIR))

all: $(EXE_FILES)

$(BIN_DIR)/%: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

clean:
	rm -f $(BIN_DIR)/*

.PHONY: all clean
