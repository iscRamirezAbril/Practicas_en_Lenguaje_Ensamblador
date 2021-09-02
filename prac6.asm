; --- Practica 6. Imprimir boleta de calificaciones. ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |--- DISEÑO DE LA BOLETA ---|
msg0 db "                        SISTEMA EDUCATIVO NACIONAL$"
msg1 db "                           BOLETA DE EVALUACION$"

msg2 db "DATOS DEL ALUMNO$"
msg3 db "_________________________________________________________$"
msg4 db "______________$"

msg5 db "Primer apellido$"
msg6 db "        Segundo apellido$"
msg7 db "       Nombre(s)$"
msg8 db "        CURP$"

msg9 db "DATOS DE LA ESCUELA$"
msg10 db "__________________________________$"
msg11 db "_______$"
msg12 db "________________$"
msg13 db "______________$"

msg14 db "Nombre de la escuela$"
msg15 db "          Grupo$"
msg16 db "        Turno$"
msg17 db "           CCT$"

msg18 db "________________________________________________________________________$"
msg19 db "|$"
msg20 db "PERIODOS DE EVALUACION$"

msg21 db "PROMEDIO$"
msg22 db "ASIGNATURAS\AREAS$"

msg23 db "___________________________$"
msg24 db "FINAL$"

msg25 db "1er$"
msg26 db "2do$"
msg27 db "3er$"

msg28 db "ESPANOL$"
msg29 db "8$"
msg30 db "8.0$"

msg31 db "MATEMATICAS$"
msg32 db "INGLES$"
msg33 db "----$"

.code

; |--- Inicializar variables para el permiso de imprimir cadenas ---|
mov ax, @data
mov ds, ax
; |--- Limpieza de pantalla ---|
mov ah, 00h
mov al, 03h
int 10h
; ======================| SE EMPIEZA A IMPRIMIR LA BOLETA |======================

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
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 3 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg2 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 5 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg3 ; Carga la cadena
int 21h ; Imprime la cadena

; | <--- Imprimir un espacio en blanco ---> |
mov ah, 02h; funcion para imprimir un carácter
mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
int 21h ; ejecuta la función
; | <--- Imprimir un espacio en blanco ---> |
mov ah, 02h; funcion para imprimir un carácter
mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
int 21h ; ejecuta la función

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg4 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 6 ; Direccionamiento para la fila
mov dl, 4 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg5 ; Carga la cadena
int 21h ; Imprime la cadena

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg6 ; Carga la cadena
int 21h ; Imprime la cadena

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg7 ; Carga la cadena
int 21h ; Imprime la cadena

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg8 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 8 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg9 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h
; |--- Imprimir un salto de línea ---|
mov ah, 02h
mov dx, 10
int 21h

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 10 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg10 ; Carga la cadena
int 21h ; Imprime la cadena

; | <--- Imprimir un espacio en blanco ---> |
mov ah, 02h; funcion para imprimir un carácter
mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
int 21h ; ejecuta la función

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg11 ; Carga la cadena
int 21h ; Imprime la cadena

; | <--- Imprimir un espacio en blanco ---> |
mov ah, 02h; funcion para imprimir un carácter
mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
int 21h ; ejecuta la función

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg12 ; Carga la cadena
int 21h ; Imprime la cadena

; | <--- Imprimir un espacio en blanco ---> |
mov ah, 02h; funcion para imprimir un carácter
mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
int 21h ; ejecuta la función

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg13 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 11 ; Direccionamiento para la fila
mov dl, 9 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg14 ; Carga la cadena
int 21h ; Imprime la cadena

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg15 ; Carga la cadena
int 21h ; Imprime la cadena

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg16 ; Carga la cadena
int 21h ; Imprime la cadena

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg17 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 13 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg18 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 14 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 14 ; Direccionamiento para la fila
mov dl, 27 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 14 ; Direccionamiento para la fila
mov dl, 30 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg20 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 14 ; Direccionamiento para la fila
mov dl, 55 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 14 ; Direccionamiento para la fila
mov dl, 61 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg21 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 14 ; Direccionamiento para la fila
mov dl, 74 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 15 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 15 ; Direccionamiento para la fila
mov dl, 7 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg22 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 15 ; Direccionamiento para la fila
mov dl, 27 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 15 ; Direccionamiento para la fila
mov dl, 28 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg23 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 15 ; Direccionamiento para la fila
mov dl, 55 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 15 ; Direccionamiento para la fila
mov dl, 62 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg24 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 15 ; Direccionamiento para la fila
mov dl, 74 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 16 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 16 ; Direccionamiento para la fila
mov dl, 27 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 16 ; Direccionamiento para la fila
mov dl, 31 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg25 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 16 ; Direccionamiento para la fila
mov dl, 36 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 16 ; Direccionamiento para la fila
mov dl, 40 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg26 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 16 ; Direccionamiento para la fila
mov dl, 45 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 16 ; Direccionamiento para la fila
mov dl, 49 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg27 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 16 ; Direccionamiento para la fila
mov dl, 55 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 16 ; Direccionamiento para la fila
mov dl, 74 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 17 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg18 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 18 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 18 ; Direccionamiento para la fila
mov dl, 11 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg28 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 18 ; Direccionamiento para la fila
mov dl, 27 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 18 ; Direccionamiento para la fila
mov dl, 32 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg29 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 18 ; Direccionamiento para la fila
mov dl, 36 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 18 ; Direccionamiento para la fila
mov dl, 41 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg29 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 18 ; Direccionamiento para la fila
mov dl, 45 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 18 ; Direccionamiento para la fila
mov dl, 50 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg29 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 18 ; Direccionamiento para la fila
mov dl, 55 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 18 ; Direccionamiento para la fila
mov dl, 63 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg30 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 18 ; Direccionamiento para la fila
mov dl, 74 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena




; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 19 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg18 ; Carga la cadena
int 21h ; Imprime la cadena




; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 9 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg31 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 27 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 32 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg29 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 36 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 41 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg29 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 45 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 50 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg29 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 55 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 63 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg30 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 74 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena



; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 21 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg18 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 22 ; Direccionamiento para la fila
mov dl, 11 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg32 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 22 ; Direccionamiento para la fila
mov dl, 27 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 22 ; Direccionamiento para la fila
mov dl, 30 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg33 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 22 ; Direccionamiento para la fila
mov dl, 36 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 22 ; Direccionamiento para la fila
mov dl, 39 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg33 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 22 ; Direccionamiento para la fila
mov dl, 45 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 22 ; Direccionamiento para la fila
mov dl, 49 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg33 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 22 ; Direccionamiento para la fila
mov dl, 55 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 63 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg30 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 20 ; Direccionamiento para la fila
mov dl, 74 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg19 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 22 ; Direccionamiento para la fila
mov dl, 63 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg33 ; Carga la cadena
int 21h ; Imprime la cadena

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para colocar el curso
mov dh, 23 ; Direccionamiento para la fila
mov dl, 3 ; Direccionamiento para la columna
int 10h  ;Interrupcion ejecuta la instruccion

mov ah, 09h ; Función para imprimir una cadena
lea dx, msg18 ; Carga la cadena
int 21h ; Imprime la cadena

.exit
end