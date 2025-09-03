.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    ; INITIALIZING DS
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, 37  ; 37 DEG C
    
    ; CONVERSION
    MOV BX, 9
    MUL BX      ; 9C
    MOV BX, 5
    DIV BX      ; 9C / 5
    ADD AX, 32  ; (9C / 5) + 32
    INT 3       ; SPECIAL INTERRUPT IDK WHY

    EXIT:
    MOV AH,4CH
    INT 21H
    END MAIN