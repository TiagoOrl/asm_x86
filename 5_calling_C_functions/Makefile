# install gcc-multilib

run: test.c main.o
	gcc -no-pie -m32 main.o test.c -o run

main.o: main.asm
	nasm -f elf -o main.o main.asm


cl:
	rm run main.o