; Inicializacion del programa.
.model small
.stack
; Comienza la definición de data
.data
name0 db "Abril Ramirez Flores$"
name1 db "Profesor: Rodrigo Cañez Valle$"

.code

; |=======| |=========| Inicializamos variables |==========| |========|
; Es como el _Permiso_ para imprimir cadenas
mov ax, @data
mov ds, ax

; |========|  |=========| Limpieza de pantalla |==========|  |========|
mov ah, 00h
mov al, 03h
int 10h

; |========|  |========| Inicia bloque de codigo |========|  |========|

mov ah, 09h     ; Función para imprimir una cadena
lea dx, name0   ; Carga la cadena
int 21h         ; Imprime la cadena

mov ah, 09h     ; Función para imprimir una cadena
lea dx, name1   ; Carga la cadena
int 21h         ; Imprime la cadena

.exit       ; Finaliza la ejecucion del codigo.

; // Termina el bloque de codigo //
end
