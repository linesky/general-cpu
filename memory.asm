mov d,3
again:
mov c,16
call reserve
mov b,65
mov [a],b
dec d
cmp d,0
jnz again
hlt


reserve:
push b
push c
push d
mov a,endff
mov b,[a]
cmp b,0
jnz reserve1
mov a,endf
mov b,a
mov a,4
add b,a
mov a,endff
mov [a],b
reserve1:
mov a,endff
mov b,[a]
mov a,sp
cmp sp,b
jc reserve2
push b
add b,c
mov a,4
add b,a
mov a,sp
cmp sp,b
jc reserve5
mov a,endff
mov [a],b
pop b
mov a,b
jmp reserve3
reserve5:
pop b
reserve2:
mov a,255
reserve3:
pop d
pop c
pop b
ret
endff:
db 0
endf:
db 0