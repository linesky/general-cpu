	;https://schweigi.github.io/assembler-simulator/

JMP start
hello: DB "Hello World!" ; Variable
       DB 0	; String terminator

start:
	MOV D, 232    ; Point to var 
	MOV A,65	; Point to output
	MOV C,10
	CALL fill
        HLT             ; Stop execution

fill:			; print(C:*from, D:*to)
	PUSH A
	PUSH B
	PUSH C
        PUSH D

        CMP C,0
        JZ fill1
fill0:
     MOV [D],A
     INC D
	DEC C
	CMP C,0	; Check if end
	JNZ fill0	; jump if not
fill1:
        POP D
        POP C
	POP B
	POP A
	RET