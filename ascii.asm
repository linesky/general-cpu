;https://schweigi.github.io/assembler-simulator
mov b,48
mov c,10
mov d,232
again:
mov [d],b
inc b
inc d
dec c
cmp c,0
jnz again

hlt
