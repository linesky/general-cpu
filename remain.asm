;https://schweigi.github.io/assembler-simulator/
mov b,2
mov a,9
call div

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