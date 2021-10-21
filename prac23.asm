; --- Practica 23. Promediar calificaciones y determinar el resultado. ---
; Unidad 2: Programación básica.
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL MENÚ ======|-----------------|

; ==============================================================================================================

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS DE CARACTERES PARA LAS OPERACIONES ======|-----------------|
tituloPractica23 db "|=====| BIENVENIDO AL PROGRAMA DE PROMEDIOS! |=====|$"
n0A db 0 ; variable para el primer número
n1A db 0 ; variable para el segundo número

subCapVariables db "|----- Paso 1: Captura de Variables -----|$"
preguntaCali db "- Capture una calificacion: $"
subPromedioPress db "|----- Paso 2: Visualizacion de Promedio y Resultado -----|$"
cadVisProm1 db "Su promedio se ha calculado con exito.$"
cadVisProm2 db "Presione cualquier tecla para visualizarlo...$"

cadPromedio db "El promedio final es: $"
cadResultado db "Su calificacion se considera: $"
cadAprobatoria db "Aprobatoria$"
cadReprobatoria db "Reprobatoria$"

; |-----------------|====== COMIENZA EL CÓDIGO ======|-----------------|
.code

; |--- Instrucciones que nos permiten trabajar con cadenas ---|
mov ax, seg @data
mov ds, ax

; |--- Limpieza de pantalla ---|
mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
mov al, 03h ; Limpieza de pantalla.
int 10h     ; Se ejecuta la interrupcion

; |--- Configuración de filas y columnas ---|
mov ah, 02h           ; Peticion para colocar el curso
mov dh, 1             ; Direccionamiento para la fila
mov dl, 13            ; Direccionamiento para la columna
int 10h               ; Interrupcion ejecuta la instruccion

mov ah, 09h                 ; Petición para imprimir una cadena
lea dx, tituloPractica23    ; Carga la cadena
int 21h                     ; Imprime la cadena

; |-----------------|====== COMIENZA LA CAPTURA DE LAS CALIFICACIONES ======|-----------------|
CAPTURA:
    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 3      ; Direccionamiento para la fila
    mov dl, 5      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h                 ; Petición para imprimir una cadena
    lea dx, subCapVariables     ; Carga la cadena
    int 21h                     ; Imprime la cadena

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 4      ; Direccionamiento para la fila
    mov dl, 6      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de la pregunta "Capture una calificacion: " ---|
    mov ah, 09h                 ; Petición para imprimir una cadena
    lea dx, preguntaCali        ; Carga la cadena
    int 21h                     ; Imprime la cadena

    ; |--- Captura de la calificación 1 ---|
    mov ah, 01h  ; al = 0
    int 21h      ; al = 51
    sub al, 30h  ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 5      ; Direccionamiento para la fila
    mov dl, 6      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de la pregunta "Capture una calificacion: " ---|
    mov ah, 09h                 ; Petición para imprimir una cadena
    lea dx, preguntaCali        ; Carga la cadena
    int 21h                     ; Imprime la cadena

    ; |--- Captura de la calificación 2 ---|
    mov ah, 01h  ; al = 0
    int 21h      ; al = 51
    sub al, 30h  ; al = 3 (51-48)
    mov n1A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la SUMA ---|
    mov al, n1A   ; al = 5, n1 = 0
    add al, n0A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 6      ; Direccionamiento para la fila
    mov dl, 6      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de la pregunta "Capture una calificacion: " ---|
    mov ah, 09h                 ; Petición para imprimir una cadena
    lea dx, preguntaCali        ; Carga la cadena
    int 21h                     ; Imprime la cadena

    ; |--- Captura de la calificación 3 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la SUMA ---|
    mov al, n1A   ; al = 5, n1 = 0
    add al, n0A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    ; |--- Se realiza la DIVISIÓN PARA PROMEDIAR ---|
    xor ax, ax     ; Se realiza una limpieza
    mov al, n1A      ; Se divide entre 3 porque es el número de calificaciones capturadas.
    mov bl, 3
    div bl          ; Se está realizando la multiplicación
    mov n1A, al

PRESSANYKEY:
    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 8      ; Direccionamiento para la fila
    mov dl, 5      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de la pregunta "Capture una calificacion: " ---|
    mov ah, 09h                 ; Petición para imprimir una cadena
    lea dx, subPromedioPress    ; Carga la cadena
    int 21h                     ; Imprime la cadena

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 9      ; Direccionamiento para la fila
    mov dl, 6      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

PROMEDIO:
    ; |--- Impresión de la pregunta "Capture una calificacion: " ---|
    mov ah, 09h                 ; Petición para imprimir una cadena
    lea dx, cadVisProm1          ; Carga la cadena
    int 21h                     ; Imprime la cadena

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 10      ; Direccionamiento para la fila
    mov dl, 6      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de la pregunta "Capture una calificacion: " ---|
    mov ah, 09h                 ; Petición para imprimir una cadena
    lea dx, cadVisProm2         ; Carga la cadena
    int 21h                     ; Imprime la cadena

    mov ah, 01h
    int 21h

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 12     ; Direccionamiento para la fila
    mov dl, 6      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de la pregunta "Capture una calificacion: " ---|
    mov ah, 09h                 ; Petición para imprimir una cadena
    lea dx, cadPromedio         ; Carga la cadena
    int 21h                     ; Imprime la cadena

    ; |--- Impresión del promedio ---|
    mov al, n1A
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

RESULTADO:
    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 13     ; Direccionamiento para la fila
    mov dl, 6      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de la pregunta "Capture una calificacion: " ---|
    mov ah, 09h                 ; Petición para imprimir una cadena
    lea dx, cadResultado        ; Carga la cadena
    int 21h                     ; Imprime la cadena

    ; |--- Se realiza la comparacion ---|
    cmp n1A, 07h
    ja APROBATORIA ; MAYOR O IGUAL
    je APROBATORIA ; IGUAL
    jb REPROBATORIA ; MENOR

APROBATORIA:
    ; |--- Impresión de la pregunta "Capture una calificacion: " ---|
    mov ah, 09h                   ; Petición para imprimir una cadena
    lea dx, cadAprobatoria        ; Carga la cadena
    int 21h                       ; Imprime la cadena
jmp FIN

REPROBATORIA:
    ; |--- Impresión de la pregunta "Capture una calificacion: " ---|
    mov ah, 09h                   ; Petición para imprimir una cadena
    lea dx, cadReprobatoria        ; Carga la cadena
    int 21h      
jmp FIN

FIN:
.exit   ; Termina el código.
end     ; Termina todo el programa.