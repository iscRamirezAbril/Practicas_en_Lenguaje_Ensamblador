; --- Practica 13. Capturar una variable y una cadena e imprimirlos en forma de lista, haciendo uso de la sentencia if. ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack 
.data

; |-----------------|====== DECLARACIÓN DE VARIABLES PARA CARACTERES ======|-----------------|
titulo0 db "Programa que captura una oracion y numero, y lo imprime en una lista.$"
preguntaOracion db 'Favor de capturar una oracion corta: ','$'
charOracion db 100 dup(" "),"$" 
preguntaNumero db 'Favor de capturar un numero: ','$'

; |-----------------|====== DECLARACIÓN DE VARIABLES ======|-----------------|
char0 db 0
conta db 2

; |-----------------|====== COMIENZA EL CÓDIGO ======|-----------------|
.code; texto

mov ax,@data
mov ds,ax

; |--- Limpieza de pantalla ---|
mov ah, 00
mov al, 03h
int 10h

; |--- Impresión de la preguntaOracion "Favor de capturar una oración corta" ---|
mov ah, 09h
lea dx, offset titulo0
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Impresión de la preguntaOracion "Favor de capturar una oración corta" ---|
mov ah, 09h
lea dx, offset preguntaOracion
int 21h

; |--- Captura de la oración en una cadena ---|
mov ah, 3fh ; Pedir permiso para capturar la cadena
mov bx, 00
mov cx, 100
mov dx, offset [charOracion]
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Impresión de la preguntaNumero "Favor de capturar un número" ---|
mov ah, 09h
lea dx, offset preguntaNumero
int 21h

; |--- Captura del caracter "char0" ---|
mov ah, 01h
int 21h
mov char0, al

; |-----------------|====== INICIO DEL CICLO ======|-----------------|
ciclo:

inc conta

mov ah,02h ; peticion para color el cursor
mov dh, conta ; direccionamiento para la fila
mov dl, 1 ; direccionamiento para la columna
int 10h    ; interuppcion ejecuta la instruccion

; |--- Imprimir el número ingresado por el usuario ---|
mov ah, 02h
mov dl, char0
int 21h

; |--- Imprimir eun espacio en blanco ---|
mov dx, 000
mov ah, 02h
int 21h

; |--- Imprimir la oración ingresada por el usuario ---|
mov ah,09h;primera linea 
lea dx, offset charOracion  ;carga lo de dx 
int 21h;

cmp conta, 12 ;if conta=12
jz fin
jmp ciclo

fin:

.exit
end