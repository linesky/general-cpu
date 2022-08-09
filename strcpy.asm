
;https://schweigi.github.io/assembler-simulator/

JMP start
hello: DB "Hello World!" ; Variable
       DB 0	; String terminator

start:
	MOV C, hello    ; Point to var 
	MOV D, 232	; Point to output
	CALL strcpy
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