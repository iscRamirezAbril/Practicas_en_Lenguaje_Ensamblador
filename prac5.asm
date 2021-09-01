; --- Practica 4. Imprimir una canción. ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |--- Título de la canción ---|
msg0 db "PUT A LITTLE LOVE ON ME - NIALL HORAN$"

; |--- Primera estrofa ---|
msg1 db "We fight, we get high holding on to love$"
msg2 db "We came down 'cause there was nothing holding us$"
msg3 db "Is it wrong that I still wonder where you are?$"
msg4 db "Is it wrong that I still don't know my heart?$"

; |--- Segunda estrofa ---|
msg5 db "Are you all dressed up but with nowhere to go?$"
msg6 db "Are your tears falling down when the lights are low?$"
msg7 db "Another Friday night tryna put on a show$"
msg8 db "Do you hate the weekend 'cause nobody's calling?$"
msg9 db "Another Friday night tryna put on a show$"
msg10 db "I've still got so much love hidden beneath this skin$"
msg11 db "So darling$"

; |--- Tercer estrofa ---|
msg12 db "Put a little love on me$"
msg13 db "And put a little love on me$"
msg14 db "When the lights come up and there's no shadows dancing$"
msg15 db "I look around as my heart is collapsing$"
msg16 db "'Cause you're the only one I need$"
msg17 db "To put a little love on me$"

; |--- Cuarta estrofa ---|
msg18 db "We wrote and we wrote$"
msg19 db "'Til there were no more words$"
msg20 db "We laughed and we cried$"
msg21 db "Until we saw our worst$"
msg22 db "Is it wrong that I still wonder where you are?$"
msg23 db "Is it wrong that I still don't know my heart?$"

; |--- Quinta estrofa ---|
; Es igual a la Segunda Estrofa, excepto el último verso
msg24 db "Will someone$"

; |--- Sexta estrofa ---|
; Parecida a la Tercer Estrofa; los versos que cambian son los primeros dos.
msg25 db "Put a little love on me, yeah$"

; |--- Septima estrofa ---|
msg26 db "Last night I lay awake$"
msg27 db "Stuck on the things we say$"
msg28 db "And when I close my eyes, the first thing I hear you say is$"

; |--- Octava estrofa ---|
; Parecida a la Sexta Estrofa; los versos que cambian son los 3 y 4
msg29 db "When the lights come up, we're the only one's dancing$"
msg30 db "I look around and you're standing there asking$"

; |--- Novena estrofa ---|
msg31 db "You're the only one I need$"
msg32 db "Put your love on me$"

.code
; |--- Inicializar variables para el permiso de imprimir cadenas ---|
mov ax, @data
mov ds, ax

; |--- Limpieza de pantalla ---|
mov ah, 00h
mov al, 03h
int 10h

; |--- Inicializar variables para el permiso de imprimir cadenas ---|
mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla

; |--- Título de la canción ---|
mov ah, 09h ; Función para imprimir una cadena
lea dx, msg0 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; ===== |--- Primera estrofa ---| =====
; ---- Verso 1 -----
mov ah, 09h
lea dx, msg1
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 2 -----
mov ah, 09h
lea dx, msg2
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 3 -----
mov ah, 09h
lea dx, msg3
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 4 -----
mov ah, 09h
lea dx, msg4
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; ===== |--- Segunda estrofa ---| =====
; ---- Verso 5 -----
mov ah, 09h
lea dx, msg5
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 6 -----
mov ah, 09h
lea dx, msg6
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 7 -----
mov ah, 09h
lea dx, msg7
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 8 -----
mov ah, 09h
lea dx, msg8
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 9 -----
mov ah, 09h
lea dx, msg9
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 10 -----
mov ah, 09h
lea dx, msg10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 11 -----
mov ah, 09h
lea dx, msg11
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; ===== |--- Tercera estrofa ---| =====
; ---- Verso 12 -----
mov ah, 09h
lea dx, msg12
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 13 -----
mov ah, 09h
lea dx, msg13
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 14 -----
mov ah, 09h
lea dx, msg14
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 15 -----
mov ah, 09h
lea dx, msg15
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 16 -----
mov ah, 09h
lea dx, msg16
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 17 -----
mov ah, 09h
lea dx, msg17
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; ===== |--- Cuarta estrofa ---| =====
; ---- Verso 18 -----
mov ah, 09h
lea dx, msg18
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 19 -----
mov ah, 09h
lea dx, msg19
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 20 -----
mov ah, 09h
lea dx, msg20
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 21 -----
mov ah, 09h
lea dx, msg21
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 22 -----
mov ah, 09h
lea dx, msg22
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 23 -----
mov ah, 09h
lea dx, msg23
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; ===== |--- Quinta estrofa ---| =====
; ---- Verso 24 -----
mov ah, 09h
lea dx, msg5
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 25 -----
mov ah, 09h
lea dx, msg6
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 26 -----
mov ah, 09h
lea dx, msg7
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 27 -----
mov ah, 09h
lea dx, msg8
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 28 -----
mov ah, 09h
lea dx, msg9
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 29 -----
mov ah, 09h
lea dx, msg10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 30 -----
mov ah, 09h
lea dx, msg24
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; ===== |--- Sexta estrofa ---| =====
; ---- Verso 31 -----
mov ah, 09h
lea dx, msg25
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 32 -----
mov ah, 09h
lea dx, msg12
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 33 -----
mov ah, 09h
lea dx, msg14
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 34 -----
mov ah, 09h
lea dx, msg15
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 35 -----
mov ah, 09h
lea dx, msg16
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 36 -----
mov ah, 09h
lea dx, msg17
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; ===== |--- Septima estrofa ---| =====
; ---- Verso 37 -----
mov ah, 09h
lea dx, msg26
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 38 -----
mov ah, 09h
lea dx, msg27
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 39 -----
mov ah, 09h
lea dx, msg28
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; ===== |--- Octava estrofa ---| =====
; ---- Verso 40 -----
mov ah, 09h
lea dx, msg25
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 41 -----
mov ah, 09h
lea dx, msg12
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 42 -----
mov ah, 09h
lea dx, msg29
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 43 -----
mov ah, 09h
lea dx, msg30
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 44 -----
mov ah, 09h
lea dx, msg16
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 45 -----
mov ah, 09h
lea dx, msg17
int 21h

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; ===== |--- Novena estrofa ---| =====
; ---- Verso 46 -----
mov ah, 09h
lea dx, msg31
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; ---- Verso 47 -----
mov ah, 09h
lea dx, msg32
int 21h

.exit
end