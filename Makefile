CC=g++ 

CFLAGS=-std=c++0x -O3 -g
OPTFLAGS=-O3
OPTFLAGS=-O2
DIALECT=-std=c++11 
CXXFLAGS=$(DIALECT) $(OPTFLAGS) -W -Wall -Werror -g
LDFLAGS=$(DIALECT) $(OPTFLAGS)
OBJECTS=utility.o main.o
TARGET=run

default: all

all: clean simple

main: $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $(OBJECTS) $(LDLIBS) -o $@


main.o: main.cpp searchchallenge.h


utility.o: utility.cpp utility.h


makerun: main
	$(CC) $(CFLAGS) -o run *.o


run: makerun
	./run.exe



test: testrun
	./testrun


clean:
	rm -rf *.o *.exe
	rm -rf testrun
	rm -rf run


