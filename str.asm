;https://schweigi.github.io/assembler-simulator/
mov a,128
mov b,232
call str

hlt

div:
push c
push d
mov c,0
div0:
cmp b,0
jz div1
cmp a,b
jc div2
sub a,b
inc c
cmp a,b
jnc div0
div1:
div2:
mov b,a
mov a,c
pop d
pop c
ret


str:
push a
push b
push c
push d
str0:
mov d,b
mov b,100
call div
mov c,48
add a,c
mov [d],a
mov a,b
inc d
mov b,10
call div
mov c,48
add a,c
mov [d],a
mov a,b
inc d
mov b,1
call div
mov c,48
add a,c
mov [d],a
mov a,b
inc d
mov a,0
mov [d],a
pop d
pop c
pop b
pop a
ret



