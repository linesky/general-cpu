	;https://schweigi.github.io/assembler-simulator/

JMP start
hello: DB "Hello World!" ; Variable
       DB 0	; String terminator
 string2:db "xxxxxxxxxxxxxxxxxxxxxx"
 db 0
 string3:db "hi there"
 db 0
 

start:
	MOV C, hello    ; Point to var 
	MOV D, 232	; Point to output
	CALL strcpy
	MOV C,string3    ; Point to var 
	MOV D, 232	; Point to output
	CALL strcat
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
    
        
        

strcat:			; print(C:*from, D:*to)
	PUSH A
	PUSH B
	PUSH C
        PUSH D
        MOV B,0
strcat0:
	CMP B,[D]
	JZ strcat1
	INC D
	CMP B, [D]	; Check if end
	JNZ strcat0	; jump if not
strcat1:
   CALL strcpy
        POP D
        POP C
	POP B
	POP A
	RET