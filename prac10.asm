; ; --- Practica 10. Capturar 2 caracteres/numeros y después imprimirlos, utilizando variables. ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |-----------------|====== DECLARACIÓN DE VARIABLES PARA CAPTURA ======|-----------------|
char1 db 0 ; declaración de variable para el primer caracter
char2 db 0 ; declaración de variable para el segundo caracter

    ; |-----------------|====== DECLARACIÓN DE VARIABLES PARA CARACTERES ======|-----------------|
    titulo db "Programa que captura dos caracteres/numeros y despues los imprime.$"

    titulo1 db "|======== CAPTURA DE CARACTERES ========|$"
    preg1 db "Ingrese el primer caracter:","$"
    preg2 db "Ingrese el segundo caracter:","$"

    titulo2 db "|======== IMPRESION DE CARACTERES ========|$"
    respuesta1 db "El primer caracter que ingreso es: $"
    respuesta2 db "El segundo caracter que ingreso es: $"

    fin db "Gracias por utilizar el programa! =)$"

; |-----------------|====== COMIENZA EL CÓDIGO ======|-----------------|
.code

    mov ax, seg @data
    mov ds, ax

    ; |--- Limpieza de pantalla ---|
    mov ah, 00h
    mov al, 03h
    int 10h

    ; |--- Impresión del título ---|
    mov ah, 09h
    mov dx, offset titulo
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Impresión del título1 "CAPTURA DE CARACTERES" ---|
    mov ah, 09h
    mov dx, offset titulo1
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----------------|====== COMIENZA LA CAPTURA DE LOS CARCATERES ======|-----------------|

    ; |-----|====== CAPTURA DEL PRIMER CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el primer caracter: "
    mov ah, 09h
    mov dx, offset preg1
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char1" ---|
    mov ah, 01h
    int 21h
    mov char1, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL SEGUNDO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el segundo caracter: "
    mov ah, 09h
    mov dx, offset preg2
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char2" ---|
    mov ah, 01h
    int 21h
    mov char2, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Impresión del título1 "IMPRESION DE CARACTERES" ---|
    mov ah, 09h
    mov dx, offset titulo2
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----------------|====== COMIENZA LA IMPRESIÓN DE CARACTERES ======|-----------------|
    ; |--- Impresión del mensaje "El primer caracter que ingreso es:" ---|
    mov ah, 09h
    mov dx, offset respuesta1
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char1" ---|
    mov ah, 02h
    mov dl, char1
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Impresión del mensaje "El segundo caracter que ingreso es:" ---|
    mov ah, 09h
    mov dx, offset respuesta2
    int 21h

    ; |--- Se muestra el segundo caracter de nombre "char2" ---|
    mov ah, 02h
    mov dl, char2
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h
    
    ; |--- Impresión del mensaje "Gracias por utilizar el programa! =)" ---|
    mov ah, 09h
    mov dx, offset fin
    int 21h

    ; Practica 10: Capturar dos números e imprimirlos. Primero capturar y luego imprimir.
    ; Practica 11: Captura 10 numeros en diferentes variables e imprimelos en forma de lista. (0-9)
    ; Practica 12: Capturar un número de telefono e imprimirlo.
    
; |-----------------|====== FIN DEL PROGRAMA ======|-----------------|
.exit
end
