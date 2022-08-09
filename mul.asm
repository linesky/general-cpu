;https://schweigi.github.io/assembler-simulator/
mov b,0
mov c,3
mov d,232
mov a,2
again:
push b
call mul
add b,48
mov [d],b
pop b
inc b
inc d
dec c
cmp c,0
jnz again

hlt

mul:
push a
push c
push d
mov c,0
mul0:
cmp b,0
jz mul1
add c,c,a
dec b
cmp b,0
jnz mul0
mul1:
mov b,c
pop d
pop c
pop a
ret