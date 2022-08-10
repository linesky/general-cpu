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
	CALL reverse
	
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
    
        
        

reverse:			; print(C:*from, D:*to)
	PUSH A
	PUSH B
	PUSH C
        PUSH D
        PUSH D
        MOV D,0
        MOV B,0
        CMP B,[C]
	JZ reverse1
reverse0:
	
	INC D
	INC C
	CMP B, [C]	; Check if end
	JNZ reverse0	; jump if not
	DEC C
reverse1:


      MOV B,D
       POP D
       CMP B,0
     JZ reverse10
reverse5:
         MOV A,[C]
         MOV [D],A
         DEC C
         INC D 
         DEC B
         JNZ reverse5
         

reverse10:
        MOV A,0
        MOV [D],A
       
        POP D
        POP C
	POP B
	POP A
	RET