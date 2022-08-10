
;https://schweigi.github.io/assembler-simulator/

JMP start
hello: DB "HeLlO wOrLd!" ; Variable
       DB 0	; String terminator

start:
	MOV C, hello    ; Point to var 
	MOV D, 232	; Point to output
	CALL strcpy
	MOV C, 232
	CALL lcase
	
	
        HLT             ; Stop execution

strcpy:			; print(C:*from, D:*to)
	PUSH A
	PUSH B
	MOV B, 0
strcpy0:
	MOV A, [C]	; Get char from var
	MOV [D], A	; Write to output
	INC C
	INC D  
	CMP B, [C]	; Check if end
	JNZ strcpy0	; jump if not

       MOV [D], B
	POP B
	POP A
	RET
	
	
lcase:
PUSH A
PUSH B
PUSH C
PUSH D
mov a,[c]
cmp a,0
jz lcase10
lcase0:
mov a,[c]
cmp a,0
jz lcase10
cmp a,65
jc lcase9
mov b,90
cmp b,a
jc lcase9
add a,32
mov [c],a
lcase9:
inc c
mov a,[c]
cmp a,0
jnz lcase0

lcase10:
pop d
pop b
pop b
pop a
ret