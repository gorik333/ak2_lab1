
CC = g++
CCFLAGS = -g
RM = rm -fr


BINARY = calculatorTest
LIBRARY = calculator.a



all: $(BINARY)


$(BINARY): $(BINARY).o $(LIBRARY)
	$(CC) $(CCFLAGS) $(BINARY).o -o $(BINARY) -L. -l:$(LIBRARY)


$(BINARY).o: $(BINARY).cpp
	$(CC) $(CCFLAGS) -c $(BINARY).cpp


$(LIBRARY): calculator.o
	$(AR) $(ARFLAGS) $@ calculator.o


calculator.o: calculator.cpp calculator.h
	$(CC) $(CCFLAGS) -c calculator.cpp


clean:
	$(RM) $(BINARY) *.a *.o
