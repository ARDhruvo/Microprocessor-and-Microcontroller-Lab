.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    ; INITIALIZING DS
    MOV AX, @DATA
    MOV DS, AX
    
    CALL RESET
    
    MOV AX, 1       ; 1!
    MOV CL, 2
    
    FACT1:          ; 1! * 2!
    MUL CL
    LOOP FACT1
    
    MOV CL, 6
    
    FACT2:          ; 1! * 2! * 6!
    MUL CX
    LOOP FACT2
        
    INT 3

    CALL EXIT      
    
RESET PROC          ; CLEARS ALL REGISTERS
    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX
    RET
ENDP RESET    

EXIT PROC
    MOV AH,4CH
    INT 21H
ENDP EXIT

END MAIN
    