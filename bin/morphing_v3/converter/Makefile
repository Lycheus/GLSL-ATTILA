all: asm_mapping

asm_mapping: main.o
	g++ -o asm_mapping main.o

main.o: main.cpp
	g++ -c main.cpp

dep:
	echo "Do nothing"

clean:
	rm -f asm_mapping *.o