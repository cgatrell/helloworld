CC=g++
FLAGS=-Wall -c
CFILES:=$(shell ls | grep .cpp)
OBJS:=$(CFILES:%.cpp=%.o)

EXECUTABLE=helloworld

all:$(OBJS)
		$(CC) $(OBJS) -o $(EXECUTABLE)
$(OBJS):$(CFILES)
		$(CC) $(FLAGS) $(CFILES)
