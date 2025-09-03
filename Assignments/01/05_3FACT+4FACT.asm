.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    ; INITIALIZING DS
    MOV AX, @DATA
    MOV DS, AX
    
    CALL RESET
    
    MOV AX, 1
    MOV CL, 3
    
    FACT1:      ; 3!
    MUL CL
    LOOP FACT1
    
    MOV DX, AX
    
    MOV AX, 1
    MOV CL, 4
    
    FACT2:      ; 4!
    MUL CL
    LOOP FACT2
    
    ADD AX, DX  ; 3! + 4!
    
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
    