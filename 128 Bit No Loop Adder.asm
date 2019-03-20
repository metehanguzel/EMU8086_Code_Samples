
; Gazi University, Computer Engineering Dept.
; CENG318 - Microprocessors
; Spring '19
; Res. Asst. Metehan GUZEL

org 100h
                     
.data       
number1 DD 12345678h, 12345678h, 0h, 1h
number2 DW 01234h, 05678h, 01234h, 05678h, 0FFFFh, 0FFFFh, 0FFFFh, 0FFFFh

.code 
start:
    mov AX, @data
    mov DS, AX
              
    ; Based Indexed with Displacement Addressing     
              
        ; Number1 0700:0210H - 0700:021FH   
           
    mov BP, 0310H
    mov DI, 0H
      
    mov AX, number1
    mov [BP][DI], AX   
    add DI, 02H  
    
    mov AX, number1 + DI         
    mov [BP][DI], AX  
    add DI, 02H        
    
    mov AX, number1 + DI
    mov [BP][DI], AX    
    add DI, 02H  
    
    mov AX, number1 + DI  
    mov [BP][DI], AX
    add DI, 02H  
    
    mov AX, number1 + DI
    mov [BP][DI], AX    
    add DI, 02H  
    
    mov AX, number1 + DI         
    mov [BP][DI], AX         
    add DI, 02H            
    
    mov AX, number1 + DI
    mov [BP][DI], AX    
    add DI, 02H   
    
    mov AX, number1 + DI  
    mov [BP][DI], AX
    add DI, 02H   
    
        ; Number2 0700:0220H - 0700:022FH  
        
    mov SI, 0H
          
    mov AX, number2
    mov [BP][DI], AX    
    add SI, 02H     
    add DI, 02H           
    
    mov AX, number2  + SI 
    mov [BP][DI], AX  
    add SI, 02H        
    add DI, 02H   
    
    mov AX, number2  + SI 
    mov [BP][DI], AX  
    add SI, 02H        
    add DI, 02H  
    
    mov AX, number2  + SI 
    mov [BP][DI], AX  
    add SI, 02H        
    add DI, 02H  
    
    mov AX, number2  + SI 
    mov [BP][DI], AX  
    add SI, 02H         
    add DI, 02H 
    
    mov AX, number2  + SI 
    mov [BP][DI], AX  
    add SI, 02H       
    add DI, 02H   
    
    mov AX, number2  + SI 
    mov [BP][DI], AX  
    add SI, 02H        
    add DI, 02H  
    
    mov AX, number2  + SI 
    mov [BP][DI], AX  
    add SI, 02H       
    add DI, 02H 
    
        ; Toplama Islemi  
                 
    mov SI, 0EH
    mov DI, 2CH
    
    mov AX, [BP][SI]
    mov BX, [BP][SI][010H]     
    dec SI
    dec SI
    mov CX, [BP][SI]
    mov DX, [BP][SI][010H]  
    adc BX, CX
    adc AX, DX
    mov [BP][DI][02H], BX
    mov [BP][DI], AX    
    dec SI
    dec SI
    dec DI  
    dec DI
    dec DI
    dec DI
      
    mov AX, [BP][SI]
    mov BX, [BP][SI][010H]    
    dec SI
    dec SI
    mov CX, [BP][SI]
    mov DX, [BP][SI][010H]   
    adc BX, CX
    adc AX, DX
    mov [BP][DI][02H], BX
    mov [BP][DI], AX 
    dec SI
    dec SI
    dec DI  
    dec DI
    dec DI
    dec DI
     
    mov AX, [BP][SI]
    mov BX, [BP][SI][010H]    
    dec SI
    dec SI
    mov CX, [BP][SI]
    mov DX, [BP][SI][010H]   
    adc BX, CX
    adc AX, DX
    mov [BP][DI][02H], BX
    mov [BP][DI], AX  
    dec SI
    dec SI
    dec DI  
    dec DI
    dec DI
    dec DI     
    
    mov AX, [BP][SI]
    mov BX, [BP][SI][010H]    
    dec SI
    dec SI
    mov CX, [BP][SI]
    mov DX, [BP][SI][010H]  
    adc BX, CX
    adc AX, DX
    mov [BP][DI][02H], BX
    mov [BP][DI], AX   
    dec SI
    dec SI
    dec DI  
    dec DI
    dec DI
    dec DI 
  
ret
