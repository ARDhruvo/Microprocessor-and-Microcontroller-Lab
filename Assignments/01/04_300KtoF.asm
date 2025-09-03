.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    ; INITIALIZING DS
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, 300  ; 300 K
    
    ; CONVERSION
    SUB AX, 273 ; K - 273
    MOV BX, 9
    MUL BX      ; 9(K - 273)
    MOV BX, 5
    DIV BX      ; 9(K - 273) / 5
    ADD AX, 32  ; (9(K - 273) / 5) + 32
    INT 3       ; SPECIAL INTERRUPT IDK WHY

    EXIT:
    MOV AH,4CH
    INT 21H
    END MAIN