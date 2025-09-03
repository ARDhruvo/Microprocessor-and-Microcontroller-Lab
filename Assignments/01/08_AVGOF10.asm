.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    ; INITIALIZING DS
    MOV AX, @DATA
    MOV DS, AX
    
    CALL RESET
    
    MOV AX, 0
    MOV CX, 10      
    MOV BX, 10
    
    SUM:            ; 10 + 9 + 8 + ... + 2 + 1
    ADD AX,CX
    LOOP SUM
    
    DIV BX          ; SUM / NUM
        
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
    