BITS 32 

section .text
    align 4
    dd 0x1BADB002
    dd 0x00000000
    dd -(0x1BADB002 + 0x00000000)

golbal start
extern kmain

start:
    cli
    mov esp, stack
    call kmain
    hlt
hltk:
    cli
    hlt
    jmp hltk

section .bss
    resb 8192
stack: