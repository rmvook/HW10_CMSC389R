section .text
global _start

_start:
    mov ebp, esp; for correct debugging
    mov eax, 10
    call tribonacci
        
tribonacci:
    cmp eax, 0      ;jump to end if aex is 0
    je end
    
    cmp eax, 1      ;jump to end if aex is 1
    je end
    
    cmp eax, 2      ;jump to fix if aex is 2
    je fix
    
    mov ecx, eax   ;move requested number to ecx for the loop counter
    
    mov eax, 0     ;initialize eax to 0
    mov esi, 1     ;initialize esi to 0
    mov edi, 1     ;initialize edi to 1
l:
    add eax, esi  
    add eax, edi
    
    mov edx, eax
    mov eax, esi
    mov esi, edi
    mov edi, edx
    
    loop l
    
end:
    mov esp, ebp
    pop ebp
    ret

fix:            ;decrements eax and jumps to the end 
    dec eax
    jmp end
