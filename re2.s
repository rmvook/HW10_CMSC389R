; what does this return?
section .text
do_this:
  push ebp      ;prolog assemply function, this line and the next line stores the 
  mov ebp, esp  ;previous base pointer (ebp) and set the ase pointer as it was at the top of the stack
  push edi      ; save off contentes from time of call

  mov al, 33h   ;save 33 hex to al
  mov cl, 4     ;set counter to 4
  lea edi, [x]  ;load the effective address of [x] into edi

  rep stosb     ;stores a byte from the AL register into address pointed to by edi 4 times/

  xor BYTE [x], 0     ;sets the data at [x] to hex 33
  xor BYTE [x+1], 0bh ;sets the data at [x + 1] to hex 38
  xor BYTE [x+2], 0ah ;sets the data at [x + 2] to hex 39
  xor BYTE [x+3], 61h ;sets the data at [x + 3] to hex 52

  mov eax, [x]    ;moves whats in [x] to eax to return 52 39 38 33

  pop edi
  mov esp, ebp  ;used to save a reference of previous stack frame
  pop ebp       ;unwinding the stack frame
  ret

section .data
x dd 0          ;setx x to 32 bit's of 0's, which is why xor above sets them to the values

;eax is hex 00 0B 0A 61