
;https://schweigi.github.io/assembler-simulator/

JMP start
hello: DB "HeLlO wOrLd!" ; Variable
       DB 0	; String terminator

start:
	MOV C, hello    ; Point to var 
	MOV D, 232	; Point to output
	CALL strcpy
	MOV C, 232
	CALL ucase
	
	
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
	
	
ucase:
PUSH A
PUSH B
PUSH C
PUSH D
mov a,[c]
cmp a,0
jz ucase10
ucase0:
mov a,[c]
cmp a,0
jz ucase10
cmp a,97
jc ucase9
mov b,122
cmp b,a
jc ucase9
sub a,32
mov [c],a
ucase9:
inc c
mov a,[c]
cmp a,0
jnz ucase0
ucase10:
pop d
pop c
pop b
pop a
ret