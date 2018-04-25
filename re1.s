; what does this return?
section .text
do_this:
  push ebp      ;prolog assemply function, this line and the next line stores the 
  mov ebp, esp  ;previous base pointer (ebp) and set the ase pointer as it was at 
                ;the top of the stack
  mov ecx, 4
  mov dl, 0ffh

f:
  shl eax, 8
  or al, dl
  loop f

  mov ecx, 8
  mov dx, 6761h
  shl edx, cl
  shl edx, cl
  mov dx, 6c66h

  xor eax, edx
  not eax

  mov esp, ebp
  pop ebp
  ret
