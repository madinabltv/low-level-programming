assume CS:code,DS:data

data segment
a db 1
b db 2
c db 3
d db 4
res db ?
data ends

code segment
start:
mov AX, data
mov DS, AX
mov AH, a
mul c
mov res, AH
mov AH, 0
mov AH, b
mul d
add AH, res
sub res, 2
mov AX,4C00h
int 21h
code ends
end start
