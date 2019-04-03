
; Gazi University, Computer Engineering Dept.
; CENG318 - Microprocessors
; Spring '19
; Res. Asst. Metehan GUZEL             
; metehanguzel@gazi.edu.tr
; https://metehanguzel.github.io/

org 100h

.data
vector DB 0FFH, 0EEH, 0AEH, 98H, 82H, 76H, 65H, 43H, 29H, 0H              
array_size DW 0AH

.code
start:

; SET LOOP COUNTER INITIALS
MOV CX, array_size
DEC CX

; SET INDEX n BASE POINTERS
MOV DI, 0H
MOV BP, OFFSET vector

outer_loop:
    MOV DI, 0H 
    MOV DX,CX
    inner_loop:      
        MOV AH, [BP][DI]
        MOV AL, [BP][DI][1]
        CMP AH,AL
        JNAE skip_swap
        MOV [BP][DI], AL
        MOV [BP][DI][1], AH
        skip_swap: 
        INC DI
    loop inner_loop
    MOV CX,DX
CMP CX, 0H
JE exit:
loop outer_loop
exit:
RET
