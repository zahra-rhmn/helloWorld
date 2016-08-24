all: program

bill.o: bill.c 
	gcc -c bill.c -o bill.o

fred.o: fred.c
	gcc -c fred.c -o fred.o

program.o: program.c 
	gcc -c program.c -o program.o

program: program.o bill.o fred.o lib.h
	gcc -o program program.o libfoo.a

clean:
	rm -f *.o
lib:
	ar crv libfoo.a bill.o fred.o
