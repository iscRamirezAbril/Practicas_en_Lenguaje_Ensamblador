; --- Practica 5. Imprimir un juego de gato. ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |--- Título del juego ---|
msg0 db "                                 EL JUEGO DEL$"

; |--- Declaración de otros mensajes ---|
msg1 db "                           ####  ####  ####  ####$"
msg2 db "                           #     #  #   ##   #  #$"
msg3 db "                           # ##  ####   ##   #  #$"
msg4 db "                           #  #  #  #   ##   #  #$"
msg5 db "                           ####  #  #   ##   ####$"
msg6 db "                                    |   |$"
msg7 db "                                  1 | 2 | 3$"
msg8 db "                                 ---+---+---$"
; msg6
msg10 db "                                  4 | 5 | 6$"
; msg6
; msg8
msg11 db "                                  7 | 8 | 9$"
; msg6

msg12 db "     JUGADORES$"
msg13 db "     ==> X -Abril$"
msg14 db "     ==> O -Ramirez$"

msg15 db "                           ---------------------$"
msg16 db "                             | BIENVENIDOS! |$"
; msg15
.code
; |--- Inicializar variables para el permiso de imprimir cadenas ---|
mov ax, @data
mov ds, ax

; |--- Limpieza de pantalla ---|
mov ah, 00h
mov al, 03h
int 10h

; |--- Título del juego ---|
mov ah, 09h ; Función para imprimir una cadena
lea dx, msg0 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg1 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg2 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg3 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg4 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg5 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg6 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg7 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg8 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg10 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg6 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg8 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg11 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg6 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg12 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg13 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg14 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg15 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg16 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg15 ; Carga la cadena
int 21h ; Imprime la cadena
.exit
end