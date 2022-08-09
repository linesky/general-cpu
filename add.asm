
;https://schweigi.github.io/assembler-simulator/mov 
mov b,48
mov c,5
mov d,232
mov a,2
again:
mov [d],b
add b,a
inc d
dec c
cmp c,0
jnz again

hlt