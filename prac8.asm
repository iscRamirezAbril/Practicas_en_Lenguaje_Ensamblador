; --- Practica 8. Imprimir 7 preguntas, haciendo uso de cadenas de caracteres. ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

    preg1 db "Cual es tu nombre?: ","$"
    res1 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
    preg2 db "Cual es tu pasatiempo favorito?: ","$"
    res2 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
    preg3 db "Cual es tu pelicula favorita?: ","$"
    res3 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
    preg4 db "Cual es tu artista favorito?: ","$"
    res4 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
    preg5 db "Cual es tu comida favorita?: ","$"
    res5 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
    preg6 db "Que carrera estas estudiando?: ","$"
    res6 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
    preg7 db "Tienes hermanos?: ","$"
    res7 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
    texto1 db "Tu respuesta es: ","$"

.code

    mov ax, seg @data
    mov ds, ax

    ; |--- Limpieza de pantalla ---|
    mov ah, 00h
    mov al, 03h
    int 10h

    ; |----- Bloque para pregunta 1: Cuál es tu nombre? -----|
    mov ah, 09h
    lea dx, preg1
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res1]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res1]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 2: Cuál es tu pasatiempo favorito? -----|
    mov ah, 09h
    lea dx, preg2
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res2]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res2]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 3: Cuál es tu pelicula favoria? -----|
    mov ah, 09h
    lea dx, preg3
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res3]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res3]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 4: Cuál es tu artista favorito? -----|
    mov ah, 09h
    lea dx, preg4
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res4]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res4]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 5: Cuál es tu comida favorita? -----|
    mov ah, 09h
    lea dx, preg5
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res5]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res5]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 6: Qué carrera estás estudiando? -----|
    mov ah, 09h
    lea dx, preg6
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res6]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res6]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 7: Tienes hermanos? -----|
    mov ah, 09h
    lea dx, preg7
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res7]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res7]
    int 21h

.exit
end
