all: assemble load run

assemble: tribonacci.s
	nasm -felf32 tribonacci.s

load: tribonacci.o
	ld -m elf_i386 tribonacci.o -o tribonacci.x

run: tribonacci.x
	./tribonacci.x

disasmo: tribonacci.o
	objdump -D -Mintel tribonacci.o

disasmx: tribonacci.x
	objdump -D -Mintel tribonacci.x

clean:
	rm tribonacci.o
	rm tribonacci.x
