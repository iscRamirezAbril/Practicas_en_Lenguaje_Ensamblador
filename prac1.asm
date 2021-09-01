; --- Practica 1. Impresion de un caracter ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack 
.code
mov ah, 02h ; funcion para imprimir un caracter
mov dx, 64 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la funcion
.exit
end