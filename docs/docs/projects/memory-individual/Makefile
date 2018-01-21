hello.S: hello.c
	gcc -S hello.c -o hello.S -fno-stack-protector -fno-asynchronous-unwind-tables

hello.o: hello.c
	gcc -c hello.c -o hello.o
