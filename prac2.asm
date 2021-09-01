; --- Practica 2. Impresion de mi nombre ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack 
.code
mov ah, 02h ; funcion para imprimir un caracter
mov dx, 65 ; mover un 65 a Dx para imprimir en pantalla
int 21h ; ejecuta la funcion

mov ah, 02h ; funcion para imprimir un caracter
mov dx, 66 ; mover un 66 a Dx para imprimir en pantalla
int 21h ; ejecuta la funcion

mov ah, 02h ; funcion para imprimir un caracter
mov dx, 82 ; mover un 82 a Dx para imprimir en pantalla
int 21h ; ejecuta la funcion

mov ah, 02h ; funcion para imprimir un caracter
mov dx, 73 ; mover un 73 a Dx para imprimir en pantalla
int 21h ; ejecuta la funcion

mov ah, 02h ; funcion para imprimir un caracter
mov dx, 76 ; mover un 76 a Dx para imprimir en pantalla
int 21h ; ejecuta la funcion

.exit
end