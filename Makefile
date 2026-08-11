CXX = C:/msys64/ucrt64/bin/g++.exe
EXEC = solarsystem.exe
SOURCES = main.cpp stars.cpp solarsystem.cpp
OBJECTS = main.o stars.o solarsystem.o
CXXFLAGS = -std=c++11 -I"C:/msys64/ucrt64/include"
LDFLAGS = -L"C:/msys64/ucrt64/lib" -lfreeglut -lopengl32 -lglu32

all: $(OBJECTS)
	$(CXX) $(OBJECTS) $(LDFLAGS) -o $(EXEC)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(EXEC) *.gdb *.o
