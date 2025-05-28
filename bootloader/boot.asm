[BITS 16]
[ORG 0x7c00] 

start:
   mov si, message
   call print
   jmp $
hang:
    hlt 
    jmp hang

print:  
     lodsb
     or al, al
     jz done 
     mov ah, 0x0E
     int 0x10
     jmp print
done:
     ret 

 message db "Hello from  xos!", 0
 times  510 - ($ - $$) db  0
 dw 0xAA55  
