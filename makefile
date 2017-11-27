CC = g++
LFLAGS = -std=c++11
CFLAGS = -c -Wall

SOURCES = main.cpp StartApp.cpp SystemManager.cpp Devices.cpp CPU.cpp Memory.cpp PCB.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE_NAME = cpu

all: $(EXECUTABLE_NAME)

$(EXECUTABLE_NAME): $(OBJECTS)
	$(CC) -o $(EXECUTABLE_NAME) $(OBJECTS)

.cpp.o:
	$(CC) $(CFLAGS) $(LFLAGS) $< -o $@

clean:
	$(RM) *.o *~ $(EXECUTABLE_NAME)
