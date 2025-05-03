

run: main.o
	ld -m elf_i386 main.o -o run

main.o: main.asm
	nasm -f elf -o main.o main.asm

cl:
	rm run main.o