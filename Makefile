#all: compile assemblere1 loadre1  assemblere2 loadre2 
#have to run theseseparately to get them to work because they fail.
#runre1 runre2

compile: tribonacci.c
	gcc -S -masm=intel tribonacci.c
	gcc tribonacci.c -o tribonacci.x

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
	rm tribonacci.s

assemblere1: re1.s
	nasm -felf32 re1.s

loadre1: re1.o
	ld -m elf_i386 re1.o -o re1.x

runre1: re1.x
	./re1.x

assemblere2: re2.s
	nasm -felf32 re2.s

loadre2: re2.o
	ld -m elf_i386 re2.o -o re2.x

runre2: re2.x
	./re2.x

allt: assemblet loadt runt

assemblet: trib.s
	nasm -felf32 trib.s

loadt: trib.o
	ld -m elf_i386 trib.o -o trib.x

runt: trib.x
	./trib.x

disasmot: trib.o
	objdump -D -Mintel trib.o

disasmxt: trib.x
	objdump -D -Mintel trib.x

cleant:
	rm trib.o
	rm trib.x
