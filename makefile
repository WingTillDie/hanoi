# Compiler and flags
CXX = g++
CXXFLAGS = -Wall -Wextra -O2 -std=c++11

# Target executable name
TARGET = hanoi

# Source files
SOURCES = hanoi.cc
OBJECTS = $(SOURCES:.cc=.o)

# Default target
all: py

# Default target for Python
py:
	python3 hanoi.py

# Default target for C++
cc: run

# Build target
build: $(TARGET)

# Linking rule
$(TARGET): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(TARGET)

# Compilation rule
%.o: %.cc
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean target
clean:
	rm -f $(OBJECTS) $(TARGET)

# Clean and rebuild
rebuild: clean build

# Run target
run: $(TARGET)
	./$(TARGET)

# Help target
help:
	@echo "Available targets:"
	@echo "  all     : Build and run the program (default)"
	@echo "  run     : Build and run the program (default)"
	@echo "  build     : Build the executable"
	@echo "  clean   : Remove object files and executable"
	@echo "  rebuild : Clean and rebuild"
	@echo "  help    : Show this help message"

.PHONY: all build clean rebuild run help

