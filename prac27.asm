; --- Practica 27. Impresión de un número de tres dígitos. ---
; Unidad 3: Modularización.
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack 100
.data

tituloPrograma25 db '        |------ PROGRAMA QUE CAPTURA UN NUMERO DE TRES DIGITOS ------|$'
subtituloNum1 db 10,13,7,'                    =====| Captura del primer numero |===== ','$'
msg0 db 10,13,7,' - Ingresa el primer numero que desee visualizar: ','$'
msgFinal db 10,13,7,' El numero capturado fue: ','$'
msgVolver db 13, 10, 'Desea volver a capturar? (1) Si, (2) No: $'
resp db 1 dup(' '),'$'
;Declaramos nuestras 3 variables, uni (unidades), dece (decenas) y cen (centenas)

cent db 0
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

; |--- Subtitulo para la captura del número ---|
mov ah, 09h
lea dx, subtituloNum1
int 21h

; |--- Impresión del mensaje 'Ingresa el primer numero que desee visualizar:' ---|
mov ah, 09h
lea dx, msg0
int 21h

; |--- Captura de las centenas (primer dígito) ---|
mov ah, 01h
int 21h
sub al, 30h
mov cent, al

; |--- Captura de la decena (segundo dígito) ---|
mov ah, 01h
int 21h
sub al, 30h
mov dece, al

; |--- Captura de la unidad (tercer dígito) ---|
mov ah, 01h
int 21h
sub al, 30h
mov uni, al

; |--- Salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah,02h

; |--- Mensaje de impresión ---|
mov ah, 09h
lea dx, msgFinal
int 21h

; |--- Impresión de las centenas ---|
mov ah, 02h
mov dl, cent
add dl, 30h
int 21h

; |--- Impresión de las decenas ---|
mov ah, 02h
mov dl, dece
add dl, 30h
int 21h

; |--- Impresión de las unidades ---|
mov ah, 02h
mov dl, uni
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