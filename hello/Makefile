

run: hello.o
	ld -m elf_i386 hello.o -o run

hello.o: hello.asm
	nasm -f elf -o hello.o hello.asm

cl:
	rm run hello.o