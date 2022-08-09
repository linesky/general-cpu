;https://schweigi.github.io/assembler-simulator/
mov b,1
mov c,3
mov d,232
mov a,9
again:
push b
call div
add b,48
mov [d],b
pop b
inc b
inc d
dec c
cmp c,0
jnz again

hlt

div:
push a
push c
push d
mov c,0
div0:
cmp b,0
jz div1
cmp a,b
jc div2
push c
sub c,a,b
mov a,c
pop c
inc c
cmp a,b
jnc div0
div1:
div2:
mov b,c
pop d
pop c
pop a
ret