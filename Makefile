CXX=clang++
CXXFLAGS=-std=c++17 -Wall -I/opt/homebrew/include/ -I/opt/homebrew/include/SDL2
LDFLAGS = -L/opt/homebrew/lib -lSDL2
SRC_DIR=src
OBJ_DIR=build
BIN_DIR=$(OBJ_DIR)/bin

SRC_FILES=$(wildcard $(SRC_DIR)/*.cpp)
EXE_FILES=$(patsubst $(SRC_DIR)/%.cpp,$(BIN_DIR)/%,$(SRC_FILES))

# Ensure the output directories exist
$(shell mkdir -p $(OBJ_DIR) $(BIN_DIR))

all: $(EXE_FILES)

$(BIN_DIR)/%: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm -f $(BIN_DIR)/*

.PHONY: all clean
