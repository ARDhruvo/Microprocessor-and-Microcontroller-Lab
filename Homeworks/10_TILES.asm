.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    ; INITIALIZING DS
    MOV AX, @DATA
    MOV DS, AX
    
    CALL RESET
    
    MOV AX, 4       ; EDGE OF TILE    
    MUL AL          ; AREA OF TILE
    
    MOV BX, AX      ; SAVING TILE AREA
    
    MOV AX, 80      ; EDGE OF FLOOR    
    MUL AL          ; AREA OF FLOOR
    
    DIV BX          ; AREA OF FLOOR / AREA OF TILE = NUM OF TILE
    
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
    