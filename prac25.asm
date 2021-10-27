; --- Practica 25. Captura de dos numeros de dos digitos. ---
; Unidad 3: Modularización.
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

tituloPrograma25 db '        |------ PROGRAMA QUE CAPTURA DOS NUMERO DE DOS DIGITOS ------|$'
subtituloNum1 db 10,13,7,'                    =====| Captura del primer numero |===== ','$'
msg0 db 10,13,7,' - Ingresa el primer numero que desee visualizar: ','$'
subtituloNum2 db 10,13,7,'                    =====| Captura del segundo numero |===== ','$'
msg1 db 10,13,7,' - Ingresa el segundo numero que desee visualizar: ','$'
msgFinal db 10,13,7,' El numero capturado fue: ','$'
msgVolver db 13, 10, 'Desea volver a capturar? (1) Si, (2) No: $'
resp db 1 dup(' '),'$'
;Declaramos nuestras 3 variables, uni (unidades), dece (decenas) y cen (centenas)

dece db 0
uni db 0
n db 0

.code
mov dx, seg @data
mov ds, dx

inicio:

; |-----------------|====== COMIENZA LA IMPRESIÓN DEL MENÚ ======|-----------------|
; |--- Limpieza de pantalla ---|
mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
mov al, 03h ; Limpieza de pantalla.
int 10h     ; Se ejecuta la interrupcion

; |--- Título del programa ---|
mov ah, 09h
lea dx, tituloPrograma25
int 21h

; |--- Salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Subtitulo para la captura del primer número ---|
mov ah, 09h
lea dx, subtituloNum1
int 21h

; |--- Impresión del mensaje 'Ingresa el primer numero que desee visualizar:' ---|
mov ah, 09h
lea dx, msg0
int 21h

; |--- Captura de la decena (primer dígito) ---|
mov ah, 01h
int 21h
sub al, 30h
mov dece,al

; |--- Captura de la unidad (segundo dígito) ---|
mov ah, 01h
int 21h
sub al, 30h
mov uni,al

; |--- Salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah,02h

; |--- Bloque de código para almecenar dos dígitos en una sola variable ---|
mov al, dece
mov bl, 10
mul bl
add al, uni
mov n, al

; |--- Mensaje de impresión ---|
mov ah, 09h
lea dx, msgFinal
int 21h

mov al, n ; al = res1 = 8, res1 = 0
aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
mov ah, 02h  ; desplega un caracter
mov dl, bh 
add dl, 30h  ; dl = 3 + 48 = 51 '3'
int 21h

mov ah, 02h
mov dl, bl
add dl, 30h
int 21h 

; |--- Salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Subtitulo para la captura del primer número ---|
mov ah, 09h
lea dx, subtituloNum2
int 21h

; |--- Impresión del mensaje 'Ingresa el primer numero que desee visualizar:' ---|
mov ah, 09h
lea dx, msg0
int 21h

; |--- Captura de la decena (primer dígito) ---|
mov ah, 01h
int 21h
sub al, 30h
mov dece,al

; |--- Captura de la unidad (segundo dígito) ---|
mov ah, 01h
int 21h
sub al, 30h
mov uni,al

; |--- Salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah,02h

; |--- Bloque de código para almecenar dos dígitos en una sola variable ---|
mov al, dece
mov bl, 10
mul bl
add al, uni
mov n, al

; |--- Mensaje de impresión ---|
mov ah, 09h
lea dx, msgFinal
int 21h

mov al, n ; al = res1 = 8, res1 = 0
aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
mov ah, 02h  ; desplega un caracter
mov dl, bh 
add dl, 30h  ; dl = 3 + 48 = 51 '3'
int 21h

mov ah, 02h
mov dl, bl
add dl, 30h
int 21h 

jmp Volver

Volver:
; |--- Salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Mensaje de 'Volver a capturar' ---|
mov ah,09h
lea dx, msgVolver
int 21h

; |--- Captura de la respuesta ---|
mov ah, 3fh
mov bx, 00
mov cx, 100
mov dx, offset [resp]
int 21h

; |--- Condiciones ---|
cmp resp, '1'
je Inicio
cmp resp, '2'
je fin

fin:
mov ah,04ch
int 21h

.exit   ; Termina el código.
end     ; Termina todo el programa.