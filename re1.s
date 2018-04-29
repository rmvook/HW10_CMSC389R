; what does this return?
section .text
do_this:
  push ebp      ;prolog assemply function, this line and the next line stores the 
  mov ebp, esp  ;previous base pointer (ebp) and set the ase pointer as it was at 
                ;the top of the stack
  mov ecx, 4    ;moves 4 into ecx, the counter register
  mov dl, 0ffh  ;moves 1111 1111 binary into dl, which is 8 bits of edx

f:
  shl eax, 8    ;shifts eax 8 bits left, does 4 times until eax is -1
  or al, dl     ;sets AL to 1111 1111 
  loop f        ;loops 4 times because ecx starts at 4

  mov ecx, 8    ;moves 8 into ecx
  mov dx, 6761h ;moves hex 6761 into dx 
  shl edx, cl   ;shifts edc by 2^8 because cl is last 8 bits of ecx
  shl edx, cl   ;shifts edc by 2^8 because cl is last 8 bits of ecx
  mov dx, 6c66h ;moves hex 6c66 into dx, which is half of edx

  xor eax, edx  ;xor values in registers eax and edx 
  not eax       ;flips all bit values in eax
                ;two above statements actually do nothing...
  mov esp, ebp  ;used to save a reference of previous stack frame
  pop ebp       ;unwinding the stack fram
  ret

;eax is the value returned, therefore it is hex 67 61 6c 66 which is "galf" when read left to right, but is flipped to be "flag"