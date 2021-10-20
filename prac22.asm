; --- Practica 22. Operadores lógicos en lenguaje ensamblador. ---
; Unidad 2: Programación básica.
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |-----------------|====== DECLARACIÓN DE CADENAS PARA EL PROGRAMA ======|-----------------|
menutituloPrac22 db "|=====| BIENVENIDO AL PROGRAMA DE OPERADORES LOGICOS! |=====|$"

menu1Prac22 db "Escriba el numero correspondiente a la tabla que quiera visualizar...$"
menu2Prac22 db "Para salir del programa, presione una tecla distinta a las de menu.     $"

menuCharExtra0 db "-------------------------------------------------------------$"
menuOpcionA db " ... A.- Capturar la primera variable.        $"
menuOpcionB db " ... B.- Capturar la segunda variable.        $"
menuOpcionC db " ... C.- Comparar.                            $"
menuCharExtra1 db "-------------------------------------------------------------$"
menuNombreAl db "                           Ramirez Flores Abril$"
menuNoControl db "                                      19211715$"

menuSelOpcionPrac22 db "|----- Seleccione la operacion que desee realizar:   -----|      $"

preguntaVar0 db " Capture el primer numero: $"
preguntaVar1 db " Capture el segundo numero: $"

tituloCapVar0 db "|----- Captura del primer numero -----| $"
tituloCapVar1 db "|----- Captura del segundo numero -----| $"
tituloComp db "|----- Resultado -----| $"
opcion db 2 dup(' '),'$'

readkeyOp  db "     Presione cualquier tecla para regresar al menu...$"

msg1 db 10,13,7,'menor','$'
msg2 db 10,13,7,'mayor','$'
msg3 db 10,13,7,'igual','$'
msg4 db 10,13,7,'mayor o igual','$'
msg5 db 10,13,7,'menor o igual','$'

; |-----------------|====== DECLARACIÓN DE VARIABLES PARA EL PROGRAMA ======|-----------------|
var0 db 0 ; Variable para almacenar el primer número
var1 db 0 ; Variable para almacenar el segundo número

; |-----------------|====== COMIENZA EL CÓDIGO ======|-----------------|
.code
    mov ax,@data
    mov ds,ax

; |-----------------|====== COMIENZA LA ETIQUETA DEL MENÚ ======|-----------------|
MENU:
    ; |--- Limpieza de pantalla ---|
    mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
    mov al, 03h ; Limpieza de pantalla.
    int 10h     ; Se ejecuta la interrupcion

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 10            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Título del menú ---|
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, menuTituloPrac22   ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 6             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de las instrucciones ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menu1Prac22   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 7             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de las instrucciones ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menu2Prac22   ; Carga la cadena
    int 21h 

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 5             ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h                 ; Función para imprimir una cadena
    lea dx, menuCharExtra0      ; Carga la cadena
    int 21h                     ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 7             ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionA   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 8             ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionB   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 9             ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionC   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 11            ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuCharExtra1   ; Carga la cadena
    int 21h                  ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 23             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuNombreAl     ; Carga la cadena
    int 21h                  ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 13            ; Direccionamiento para la fila
    mov dl, 24             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuNoControl    ; Carga la cadena
    int 21h                  ; Imprime la cadena   


; |-----------------|====== CAPTURA DE LA OPCIÓN DESEADA DEL MENÚ ======|-----------------|

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h     ; Petición para colocar el cursor
    mov dh, 17      ; Direccionamiento para la fila
    mov dl, 10      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Pregunta para la captura de la opción ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, menuSelOpcionPrac22   ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 17            ; Direccionamiento para la fila
    mov dl, 61            ; Direccionamiento para la columna
    int 10h               ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Captura de la respuesta/opción ---|  
    mov ah, 3fh
    mov bx, 00
    mov cx, 2
    mov dx, offset [opcion]
    int 21h

; -----------------------------------------------------------------------------
    ; |--- Limpieza de pantalla ---|
    mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
    mov al, 03h ; Limpieza de pantalla.
    int 10h     ; Se ejecuta la interrupcion

    CASE_A:
        cmp opcion, 065
        jz VAR_1
        jmp CASE_B

    CASE_B:
        cmp opcion, 066
        jz VAR_2
        jmp CASE_C

    CASE_C:
        cmp opcion, 067
        jz COMP
        jmp FIN

; |-----------------|====== COMIENZA LA ETIQUETA DEL READKEY ======|-----------------|
READKEY:
    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, readkeyOp        ; Carga la cadena
    int 21h                  ; Imprime la cadena

    mov ah, 01h
    int 21h

jmp MENU

; |-----------------|====== COMIENZA LA ETIQUETA DE LA CAPTURA DE LA PRIMERA VARIABLE ======|-----------------|
VAR_1:
   ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 20            ; Direccionamiento para la columna
    int 10h               ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de la preguntaNumero "Favor de capturar un número" ---|
    mov ah, 09h
    lea dx, offset tituloCapVar0
    int 21h

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 3             ; Direccionamiento para la columna
    int 10h               ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de la preguntaNumero "Capture el primer número" ---|
    mov ah, 09h
    lea dx, offset preguntaVar0
    int 21h

    ; |--- Captura del caracter "var0" ---|
    mov ah, 01h
    int 21h
    mov var0, al

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA CAPTURA DE LA SEGUNDA VARIABLE ======|-----------------|
VAR_2:
   ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 20            ; Direccionamiento para la columna
    int 10h               ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de la pregunta "Capture el segundo número" ---|
    mov ah, 09h
    lea dx, offset tituloCapVar1
    int 21h

   ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 3             ; Direccionamiento para la columna
    int 10h               ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de la pregunta "Favor de capturar un número" ---|
    mov ah, 09h
    lea dx, offset preguntaVar1
    int 21h

    ; |--- Captura del caracter "var1" ---|
    mov ah, 01h
    int 21h
    mov var1, al

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LAS COMPARACIONES ======|-----------------|
COMP:
   ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 25            ; Direccionamiento para la columna
    int 10h               ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión del título de la comparación ---|
    mov ah, 09h
    lea dx, offset tituloComp
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir el número almacenado en la variable de nombre "var0" ---|
    mov ah, 02h
    mov dl, var0
    int 21h

    ; |--- Se imprime un espacio en blanco ---|
    mov ah, 02h ; Funcion para imprimir un caracter.
    mov dx, 32  ; Mover un 32 a dx para imprimir en pantalla.
    int 21h     ; Ejecuta la funcion mediante la interrupcion 21h

    ; |-----------------|====== COMIENZAN LAS COMPARACIONES ======|-----------------|
    mov al, var0
    mov bl, var1
    cmp al, bl

    jl MENOR
    jg MAYOR
    je IGUAL

    ; |-----------------|====== ETIQUETA DE 'MENOR' ======|-----------------|
    MENOR:
        ; |--- Se imprime el símbolo '<' ---|
        mov ah, 02h ; Funcion para imprimir un caracter.
        mov dx, 60  ; Mover un 60 a dx para imprimir en pantalla.
        int 21h     ; Ejecuta la funcion mediante la interrupcion 21h.

        cmp al, bl
        jge IGUAL
        jmp PRNT_VAR1

    ; |-----------------|====== ETIQUETA DE 'MAYOR' ======|-----------------|
    MAYOR:
        ; |--- Se imprime el símbolo '>' ---|
        mov ah, 02h ; Funcion para imprimir un caracter.
        mov dx, 62  ; Mover un 62 a dx para imprimir en pantalla.
        int 21h     ; Ejecuta la funcion mediante la interrupcion 21h.

        cmp al, bl
        jle IGUAL
        jmp PRNT_VAR1

    ; |-----------------|====== ETIQUETA DE 'IGUAL' ======|-----------------|
    IGUAL:
        ; |--- Se imprime el símbolo '=' ---|
        mov ah, 02h ; Funcion para imprimir un caracter.
        mov dx, 61  ; Mover un 61 a dx para imprimir en pantalla.
        int 21h     ; Ejecuta la funcion mediante la interrupcion 21h.

    ; |-----------------|====== ETIQUETA DE LA IMPRESIÓN DE LA LETRA "B" ======|-----------------|
    PRNT_VAR1:
        ; |--- Se imprime un espacio en blanco ---|
        mov ah, 02h ; Funcion para imprimir un caracter.
        mov dx, 32  ; Mover un 32 a dx para imprimir en pantalla.
        int 21h     ; Ejecuta la funcion mediante la interrupcion 21h

        ; |--- Imprimir el número almacenado en la variable de nombre "var1" ---|
        mov ah, 02h
        mov dl, var1
        int 21h

jmp READKEY

; |-----------------|====== ETIQUETA DEL FIN DEL PROGRAMA ======|-----------------|
FIN:
.exit
end