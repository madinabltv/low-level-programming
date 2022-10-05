assume CS:code,DS:data, SS:STK

;вывод результата
data segment
msg db ' $'
counter db 0
a db 3
b db 4
c db 2
d db 5
res db ?
data ends

STK SEGMENT STACK
db 256 dup('')
dw 256 dup('')
STK ENDS

code segment
start:
mov AX, data
mov DS, AX
mov AH,0
mov AL,b
div c
add AL,a
mov AH,0
mul d
sub AL,4

@twodigits:
mov counter, 1
mov bl, 10
div bl
add al, 48
add ah, 48
mov cl, al ;celaya chast
mov ch, ah ;ostatok
mov msg, cl
jmp @print

@seconddigit:
mov msg, ch
inc counter
jmp @print

@print:
lea dx, msg
mov ah,09
int 21h
cmp counter, 2
je @exit
jl @seconddigit

@exit:
mov ah,4ch
int 21h


code ends
end start
