
;https://schweigi.github.io/assembler-simulator/

JMP start
hello: DB " *" ; Variable
       DB 0	; String terminator
       
start:
    mov a,15
	MOV D, 232	; Point to output
again:
	MOV C, hello
	CALL strcpy
	inc d
	dec a
	cmp a,0
	jnz again
        HLT             ; Stop execution

strcpy:			; print(C:*from, D:*to)
	PUSH A
	PUSH B
	PUSH C
	PUSH D
	MOV B, 0
strcpy0:
	MOV A, [C]	; Get char from var
	MOV [D], A	; Write to output
	INC C
	INC D  
	CMP B, [C]	; Check if end
	JNZ strcpy0	; jump if not

       MOV [D], B
    POP D
    POP C
	POP B
	POP A
	RET