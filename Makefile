

CXX=clang++-5.0
CXXFLAGS=-std=c++14
all: Board.o Condition.o 

Board.o: Board.cpp Board.h Condition.h
	$(CXX) $(CXXFLAGS) -c  Board.cpp -o Board.o
	
Condition.o: Condition.cpp Condition.h Board.h
	$(CXX) $(CXXFLAGS) -c  Condition.cpp -o Condition.o
	

clean:
	rm *.o a.out
