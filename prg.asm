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
mov AH,0
mov AL,b
div c
add AL,a
mov AH,0
mul d
sub AL,4
mov res, AL

mov AX,4C00h
int 21h
code ends
end start
