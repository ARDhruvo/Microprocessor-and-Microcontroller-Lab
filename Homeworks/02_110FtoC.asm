.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    ; INITIALIZING DS
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, 110  ; 110 DEG F
    
    ; CONVERSION 
    SUB AX, 32  ; F - 32
    MOV BX, 5
    MUL BX      ; 5(F - 32)
    MOV BX, 9
    DIV BX      ; 5(F - 32) / 9
    INT 3       ; SPECIAL INTERRUPT IDK WHY

    EXIT:
    MOV AH,4CH
    INT 21H
    END MAIN