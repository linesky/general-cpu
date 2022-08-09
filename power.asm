;https://schweigi.github.io/assembler-simulator/
mov b,4
mov a,2
call power


hlt

mul:
push a
push c
push d
mov c,0
mul0:
cmp b,0
jz mul1
add c,a,c
dec b
cmp b,0
jnz mul0
mul1:
mov b,c
pop d
pop c
pop a
ret

power:
push b
push c
push d
mov c,a
cmp b,0
jz power1
dec b
cmp b,0
jz power2
power0:
push b
mov b,c
call mul
mov c,b
pop b
cmp b,0
jz power2
dec b
cmp b,0
jnz power0
jmp power2
power1:
mov c,1
power2:
mov a,c
pop d
pop c
pop b
ret

