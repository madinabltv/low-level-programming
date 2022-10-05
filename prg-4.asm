assume CS:code,DS:data

data segment
a db 3
b db 2
c db 4
d db 5
res db ?
data ends

;(a*c+b*d)+2
code segment
start:
mov AX, data
mov DS, AX
mov AH,0
mov Al,a
mul c
mov res, Al
mov AL,0
mov AL,b
mul d
add AL,res
sub AL,2
mov res, AL
mov AX,4C00h
int 21h
code ends
end start
