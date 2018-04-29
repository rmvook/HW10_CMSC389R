section .text
global _start

_start:
	mov eax, 0
	call tribonacci
	

tribonacci:	;when its called we have n in eax
	push ebp
	mov ebp, esp

	push edi 
	push esi

	mov ecx, [ebp + 8]

	cmp ecx, 0
	je done

	cmp ecx, 1
	je one

	cmp ecx, 2
	je two

	dec ecx
	push ecx
	call tribonacci
	pop ecx

	dec ecx
	push ecx
	call tribonacci
	pop ecx

	dec ecx
	push ecx
	call tribonacci
	pop ecx

	jmp done



one:	;
	add eax, 1
	jmp done

two:	;adds 1 to eax
	add eax, 1
	jmp done

done:	;ending call
	mov esp, ebp
	pop ebp
	ret