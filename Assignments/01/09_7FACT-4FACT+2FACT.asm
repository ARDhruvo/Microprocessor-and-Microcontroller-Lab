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
    MOV CL, 7
    
    FACT1:      ; 7!
    MUL CX
    LOOP FACT1
    
    MOV DX, AX
    
    MOV AX, 1
    MOV CL, 4
    
    FACT2:      ; 4!
    MUL CL
    LOOP FACT2
    
    SUB DX, AX  ; (7! - 4!)
    
    MOV AX, 1
    MOV CL, 2
    
    FACT3:      ; 2!
    MUL CL
    LOOP FACT3
    
    ADD AX, DX  ; (7! - 4!) + 2!
    
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
    