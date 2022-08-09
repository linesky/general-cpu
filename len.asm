	;https://schweigi.github.io/assembler-simulator/

JMP start
hello: DB "Hello World!" ; Variable
       DB 0	; String terminator

start:
	MOV C, hello    ; Point to var 
	MOV D, 232	; Point to output
	CALL strlen
        HLT             ; Stop execution

strlen:			; print(C:*from, D:*to)
	PUSH A
	PUSH B
        PUSH D
	MOV B, 0
        MOV D,0
strlen0:
	CMP B,[C]
	JZ strlen1
	INC C
	INC D  
	CMP B, [C]	; Check if end
	JNZ strlen0	; jump if not
strlen1:
        MOV C,D
        POP D
	POP B
	POP A
	RET