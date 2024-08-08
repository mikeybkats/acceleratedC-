CXX=clang++
CXXFLAGS=-std=c++11 -Wall
TARGET=build/src/outputExecutable
SRC_DIR=src
OBJDIR=build/src

SRC_FILES=$(wildcard $(SRC_DIR)/*.cpp)
OBJ_FILES=$(patsubst $(SRC_DIR)/%.cpp,$(OBJDIR)/%.o,$(SRC_FILES))

# Ensure the output directory exists
# $(shell mkdir -p build)
$(shell mkdir -p build $(OBJDIR))


$(TARGET): $(OBJ_FILES)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(OBJDIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@	

clean:
	rm -f $(OBJ_FILES) $(TARGET)
