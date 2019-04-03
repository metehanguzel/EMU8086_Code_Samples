
; Gazi University, Computer Engineering Dept.
; CENG318 - Microprocessors
; Spring '19
; Res. Asst. Metehan GUZEL                   
; metehanguzel@gazi.edu.tr
; https://metehanguzel.github.io/

org 100h

.data
vector DB 012H, 0EH, 0AH, 3H, 0FFH, 45H, 63H, 42H, 21H, 0H              
array_size DW 0AH

.code
start:

; SET LOOP COUNTER INITIALS
MOV CX, array_size
DEC CX

; SET INDEX n BASE POINTERS
MOV DI, 0H
MOV SI, 0H
MOV BP, OFFSET vector

outer_loop:
    ; SI 4 INITIAL INDEX
    ; DI 4 FINAL INDEX
    MOV DI, 0H 
    MOV DX,CX
    ; AH Min Val
    ; AL Read Val      
    ; BX Min Index
    MOV AH, [BP][SI]
    LEA BX, [BP][SI]
    MOV DI, SI
    INC DI
    inner_loop:
        MOV AL,[BP][DI]
        CMP AH,AL
        JNAE skip_swap      
            MOV AH, [BP][DI]
            LEA BX, [BP][DI]
        skip_swap: 
        INC DI
    loop inner_loop
    MOV AL, [BP][SI]
    MOV [BP][SI], AH
    MOV [BX], AL 
    INC SI
    MOV CX,DX
    CMP CX, 0H
    JE exit:
loop outer_loop
exit:
RET