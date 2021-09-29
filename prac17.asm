; --- Practica 17. Suma y resta de tres caracteres. ---
; Unidad 2: Programación básica.
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

n1 db 0 ; variable para el primer número
n2 db 0 ; variable para el segundo número
n3 db 0 ; variable para el tercer número
res1 db 0 ; variable para el primer resultado
res2 db 0 ; variable para el segundo resultado

tituloSuma db "                |=====| SUMA DE TRES CARACTERES |=====|$"
tituloResta db "                |=====| RESTA DE TRES CARACTERES |=====|$"
pregChar db 10, 13, 7, '- Ingrese un numero: ','$'
msg1 db 10, 13, 7, 'Resultado de la primer suma: ','$'
msg2 db 10, 13, 7, 'Resultado de la segunda suma: ','$'

.code
    mov ax, seg @data
    mov ds, ax

    ; |--- Limpieza de pantalla ---|
    mov ah, 00h
    mov al, 03h
    int 10h

    mov ah, 09h
    lea dx, tituloSuma
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; captura del numero 1 (5)
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n1, al  ; n1 = 5, al = 0

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, pregChar
    int 21h
    
    ; captura del numero 2 (3)
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n2, al  ; n2 = 3, al = 0

    ; suma
    mov al, n1   ; al = 5, n1 = 0
    add al, n2   ; al = al + n2 (al = 5 + 6) = 11
    mov res1, al ; res1 = al = 11, al = 0

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, msg1
    int 21h

    mov al, res1 ; al = res1 = 8, res1 = 0
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

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, pregChar
    int 21h

    mov ah, 01h ; captura del numero 3
    int 21h ; al = 60 (se captura un 4)
    sub al, 30h ; al = 12
    mov n3, al ; al = 0, n3 = 12

    ; suma
    mov al, n3
    add al, res1 ; se está realizando la suma
    mov res2, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, msg2
    int 21h

    mov al, res2
    aam ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h ; desplega un caracter
    mov dl, bh 
    add dl, 30h ; ajuste para que aparezca en decimal.
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h

    ; |========== COMIENZA LA RESTA ===========|
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, tituloResta
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; captura del numero 1 (5)
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n1, al  ; n1 = 5, al = 0

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, pregChar
    int 21h
    
    ; captura del numero 2 (3)
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n2, al  ; n2 = 3, al = 0

    ; resta
    mov al, n1   ; al = 5, n1 = 0
    sub al, n2   ; al = al + n2 (al = 5 - 3) = 2
    mov res1, al ; res1 = al = 2, al = 0

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, msg1
    int 21h

    mov al, res1 ; al = res1 = 2, res1 = 0
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

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, pregChar
    int 21h

    mov res1, al ; res1 = 2, 
    mov ah, 01h ; captura del numero 3 (se captura un 1)
    int 21h     ; al = 60 (se captura un 1)
    sub al, 30h ; al = 12
    ; mov n3, al  ; al = 0, n3 = 12

    ; resta
    mov al, res1 ; al = 1
    sub al, n3 ; se está realizando la resta
    mov res2, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, msg2
    int 21h

    mov al, res2
    aam ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h ; desplega un caracter
    mov dl, bh 
    add dl, 30h ; ajuste para que aparezca en decimal.
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h

.exit
end
