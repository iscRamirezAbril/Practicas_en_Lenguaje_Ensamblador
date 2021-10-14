; --- Practica 21. Tablas de multiplicar con un menú de opciones. ---
; Unidad 2: Programación básica.
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL MENÚ ======|-----------------|

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para el menú de opciones |=====
menuTituloPrac21 db "|=====| BIENVENIDO AL PROGRAMA DE TABLAS DE MULTIPLICAR! |=====|$"

menu1Prac21 db "Escriba el numero correspondiente a la tabla que quiera visualizar...$"
menu2Prac21 db "Para salir del programa, presione una tecla distinta a las de menu.     $"

menuCharExtra0 db "-------------------------------------------------------------$"
menuOpcionA db " ... A.- Tabla de multiplicar del 1           $"
menuOpcionB db " ... B.- Tabla de multiplicar del 2           $"
menuOpcionC db " ... C.- Tabla de multiplicar del 3           $"
menuOpcionD db " ... D.- Tabla de multiplicar del 4           $"
menuOpcionE db " ... E.- Tabla de multiplicar del 5           $"
menuOpcionF db " ... F.- Tabla de multiplicar del 6           $"
menuOpcionG db " ... G.- Tabla de multiplicar del 7           $"
menuOpcionH db " ... H.- Tabla de multiplicar del 8           $"
menuOpcionI db " ... I.- Tabla de multiplicar del 9           $"
menuOpcionJ db " ... J.- Tabla de multiplicar del 10          $"
menuCharExtra1 db "-------------------------------------------------------------$"
menuNombreAl db "                           Ramirez Flores Abril$"
menuNoControl db "                                      19211715$"

menuSelOpcionPrac21 db "|----- Seleccione la operacion que desee realizar:   -----|      $"

opcion db 2 dup(' '),'$' ; Cadena donde se guardará la opción capturada.
readkeyOp  db "     Presione cualquier tecla para regresar al menu...$"

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS DE CARACTERES PARA LAS OPERACIONES ======|-----------------|
nT1 db 1 ; contador para la tabla del 1
nT2 db 2 ; contador para la tabla del 2
nT3 db 3 ; contador para la tabla del 3
nT4 db 4 ; contador para la tabla del 4
nT5 db 5 ; contador para la tabla del 5
nT6 db 6 ; contador para la tabla del 6
nT7 db 7 ; contador para la tabla del 7
nT8 db 8 ; contador para la tabla del 8
nT9 db 9 ; contador para la tabla del 9
nT10 db 10 ; contador para la tabla del 10

contaTabla db 0 ; contador para el incremento.
resultado db 0 ; variable que almacena el resultado.
contaFila db 0 ; 

; |-----------------|====== COMIENZA EL CÓDIGO ======|-----------------|
.code

; |--- Instrucciones que nos permiten trabajar con cadenas ---|
mov ax, seg @data
mov ds, ax

; |-----------------|====== COMIENZA LA ETIQUETA DEL MENÚ ======|-----------------|
MENU:
    ; |--- Limpieza de pantalla ---|
    mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
    mov al, 03h ; Limpieza de pantalla.
    int 10h     ; Se ejecuta la interrupcion

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 8             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Título del menú ---|
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, menuTituloPrac21   ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 6             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de las instrucciones ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menu1Prac21   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 7             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de las instrucciones ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menu2Prac21   ; Carga la cadena
    int 21h               ; Imprime la cadena

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
    mov dh, 6             ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionA   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 7             ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionB   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 8             ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionC   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 9             ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionD   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10            ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionE   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 11            ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionF   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionG   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 13            ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionH   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 14            ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionI   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 15            ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionJ   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 16            ; Direccionamiento para la fila
    mov dl, 9             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuCharExtra1   ; Carga la cadena
    int 21h                  ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 17            ; Direccionamiento para la fila
    mov dl, 23             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuNombreAl     ; Carga la cadena
    int 21h                  ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 18            ; Direccionamiento para la fila
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
    mov dh, 20      ; Direccionamiento para la fila
    mov dl, 10      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Pregunta para la captura de la opción ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, menuSelOpcionPrac21   ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 20            ; Direccionamiento para la fila
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
        jz TABLA1
        jmp CASE_B

    CASE_B:
        cmp opcion, 066
        jz TABLA2
        jmp CASE_C

    CASE_C:
        cmp opcion, 067
        jz TABLA3
        jmp CASE_D

    CASE_D:
        cmp opcion, 068
        jz TABLA4
        jmp CASE_E

    CASE_E:
        cmp opcion, 069
        jz TABLA5
        jmp CASE_F

    CASE_F:
        cmp opcion, 070
        jz TABLA6
        jmp CASE_G

    CASE_G:
        cmp opcion, 071
        jz TABLA7
        jmp CASE_H

    CASE_H:
        cmp opcion, 072
        jz TABLA8
        jmp CASE_I

    CASE_I:
        cmp opcion, 073
        jz TABLA9
        jmp CASE_J

    CASE_J:
        cmp opcion, 074
        jz TABLA10
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

; |-----------------|====== COMIENZA LA ETIQUETA DE LA TABLA DEL 1 ======|-----------------|
TABLA1:
    inc contaTabla
    inc contaFila

    ; |--- Posicionamiento de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, contaFila ;Direccionamiento para la fila
    mov dl, 0 ;Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; 1 x n = res
    ; |--- Imprimir un "1" ---| 
    mov ah, 02h     ; Funcion para imprimir un caracter
    mov dx, 049     ; Mover un 64 a Dx para imprimir en pantalla
    int 21h         ; Ejecuta la interrupción

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "x" ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 120      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir el valor del contador ---|
    mov al, contaTabla
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

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "=" ---|
    mov ah, 02h      ; funcion para imprimir un carácter
    mov dx, 061      ; mover un 00 a Dx para imprimir en pantalla
    int 21h          ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función
    
    ; |--- Se realiza la multiplicación ---|
    mov al, nT1
    mov bl, contaTabla
    mul bl ; se está realizando la multiplicación
    mov resultado, al

    mov al, resultado
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

    ; |--- Imprimir un salto de línea ---|
    mov dl, 0ah
    int 21h

    cmp contaTabla, 10
    jz READKEY
    jmp TABLA1

; |-----------------|====== COMIENZA LA ETIQUETA DE LA TABLA DEL 2 ======|-----------------|
TABLA2:
    inc contaTabla
    inc contaFila

    ; |--- Posicionamiento de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, contaFila ;Direccionamiento para la fila
    mov dl, 0 ;Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; 2 x n = res
    ; |--- Imprimir un "2" ---| 
    mov ah, 02h     ; Funcion para imprimir un caracter
    mov dx, 050     ; Mover un 64 a Dx para imprimir en pantalla
    int 21h         ; Ejecuta la interrupción

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "x" ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 120      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir el valor del contador ---|
    mov al, contaTabla
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

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "=" ---|
    mov ah, 02h      ; funcion para imprimir un carácter
    mov dx, 061      ; mover un 00 a Dx para imprimir en pantalla
    int 21h          ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función
    
    ; |--- Se realiza la multiplicación ---|
    mov al, nT2
    mov bl, contaTabla
    mul bl ; se está realizando la multiplicación
    mov resultado, al

    mov al, resultado
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

    ; |--- Imprimir un salto de línea ---|
    mov dl, 0ah
    int 21h

    cmp contaTabla, 10
    jz READKEY
    jmp TABLA2

; |-----------------|====== COMIENZA LA ETIQUETA DE LA TABLA DEL 3 ======|-----------------|
TABLA3:
    inc contaTabla
    inc contaFila

    ; |--- Posicionamiento de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, contaFila ;Direccionamiento para la fila
    mov dl, 0 ;Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; 3 x n = res
    ; |--- Imprimir un "3" ---| 
    mov ah, 02h     ; Funcion para imprimir un caracter
    mov dx, 051     ; Mover un 64 a Dx para imprimir en pantalla
    int 21h         ; Ejecuta la interrupción

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "x" ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 120      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir el valor del contador ---|
    mov al, contaTabla
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

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "=" ---|
    mov ah, 02h      ; funcion para imprimir un carácter
    mov dx, 061      ; mover un 00 a Dx para imprimir en pantalla
    int 21h          ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función
    
    ; |--- Se realiza la multiplicación ---|
    mov al, nT3
    mov bl, contaTabla
    mul bl ; se está realizando la multiplicación
    mov resultado, al

    mov al, resultado
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

    ; |--- Imprimir un salto de línea ---|
    mov dl, 0ah
    int 21h

    cmp contaTabla, 10
    jz READKEY
    jmp TABLA3

; |-----------------|====== COMIENZA LA ETIQUETA DE LA TABLA DEL 4 ======|-----------------|
TABLA4:
    inc contaTabla
    inc contaFila

    ; |--- Posicionamiento de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, contaFila ;Direccionamiento para la fila
    mov dl, 0 ;Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; 4 x n = res
    ; |--- Imprimir un "4" ---| 
    mov ah, 02h     ; Funcion para imprimir un caracter
    mov dx, 052     ; Mover un 64 a Dx para imprimir en pantalla
    int 21h         ; Ejecuta la interrupción

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "x" ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 120      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir el valor del contador ---|
    mov al, contaTabla
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

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "=" ---|
    mov ah, 02h      ; funcion para imprimir un carácter
    mov dx, 061      ; mover un 00 a Dx para imprimir en pantalla
    int 21h          ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función
    
    ; |--- Se realiza la multiplicación ---|
    mov al, nT4
    mov bl, contaTabla
    mul bl ; se está realizando la multiplicación
    mov resultado, al

    mov al, resultado
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

    ; |--- Imprimir un salto de línea ---|
    mov dl, 0ah
    int 21h

    cmp contaTabla, 10
    jz READKEY
    jmp TABLA4

; |-----------------|====== COMIENZA LA ETIQUETA DE LA TABLA DEL 5 ======|-----------------|
TABLA5:
    inc contaTabla
    inc contaFila

    ; |--- Posicionamiento de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, contaFila ;Direccionamiento para la fila
    mov dl, 0 ;Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; 5 x n = res
    ; |--- Imprimir un "5" ---| 
    mov ah, 02h     ; Funcion para imprimir un caracter
    mov dx, 053     ; Mover un 64 a Dx para imprimir en pantalla
    int 21h         ; Ejecuta la interrupción

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "x" ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 120      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir el valor del contador ---|
    mov al, contaTabla
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

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "=" ---|
    mov ah, 02h      ; funcion para imprimir un carácter
    mov dx, 061      ; mover un 00 a Dx para imprimir en pantalla
    int 21h          ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función
    
    ; |--- Se realiza la multiplicación ---|
    mov al, nT5
    mov bl, contaTabla
    mul bl ; se está realizando la multiplicación
    mov resultado, al

    mov al, resultado
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

    ; |--- Imprimir un salto de línea ---|
    mov dl, 0ah
    int 21h

    cmp contaTabla, 10
    jz READKEY
    jmp TABLA5

; |-----------------|====== COMIENZA LA ETIQUETA DE LA TABLA DEL 6 ======|-----------------|
TABLA6:
    inc contaTabla
    inc contaFila

    ; |--- Posicionamiento de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, contaFila ;Direccionamiento para la fila
    mov dl, 0 ;Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; 6 x n = res
    ; |--- Imprimir un "6" ---| 
    mov ah, 02h     ; Funcion para imprimir un caracter
    mov dx, 054     ; Mover un 64 a Dx para imprimir en pantalla
    int 21h         ; Ejecuta la interrupción

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "x" ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 120      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir el valor del contador ---|
    mov al, contaTabla
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

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "=" ---|
    mov ah, 02h      ; funcion para imprimir un carácter
    mov dx, 061      ; mover un 00 a Dx para imprimir en pantalla
    int 21h          ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función
    
    ; |--- Se realiza la multiplicación ---|
    mov al, nT6
    mov bl, contaTabla
    mul bl ; se está realizando la multiplicación
    mov resultado, al

    mov al, resultado
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

    ; |--- Imprimir un salto de línea ---|
    mov dl, 0ah
    int 21h

    cmp contaTabla, 10
    jz READKEY
    jmp TABLA6

; |-----------------|====== COMIENZA LA ETIQUETA DE LA TABLA DEL 7 ======|-----------------|
TABLA7:
    inc contaTabla
    inc contaFila

    ; |--- Posicionamiento de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, contaFila ;Direccionamiento para la fila
    mov dl, 0 ;Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; 7 x n = res
    ; |--- Imprimir un "7" ---| 
    mov ah, 02h     ; Funcion para imprimir un caracter
    mov dx, 055     ; Mover un 64 a Dx para imprimir en pantalla
    int 21h         ; Ejecuta la interrupción

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "x" ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 120      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir el valor del contador ---|
    mov al, contaTabla
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

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "=" ---|
    mov ah, 02h      ; funcion para imprimir un carácter
    mov dx, 061      ; mover un 00 a Dx para imprimir en pantalla
    int 21h          ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función
    
    ; |--- Se realiza la multiplicación ---|
    mov al, nT7
    mov bl, contaTabla
    mul bl ; se está realizando la multiplicación
    mov resultado, al

    mov al, resultado
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

    ; |--- Imprimir un salto de línea ---|
    mov dl, 0ah
    int 21h

    cmp contaTabla, 10
    jz READKEY
    jmp TABLA7

; |-----------------|====== COMIENZA LA ETIQUETA DE LA TABLA DEL 8 ======|-----------------|
TABLA8:
    inc contaTabla
    inc contaFila

    ; |--- Posicionamiento de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, contaFila ;Direccionamiento para la fila
    mov dl, 0 ;Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; 8 x n = res
    ; |--- Imprimir un "8" ---| 
    mov ah, 02h     ; Funcion para imprimir un caracter
    mov dx, 056     ; Mover un 64 a Dx para imprimir en pantalla
    int 21h         ; Ejecuta la interrupción

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "x" ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 120      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir el valor del contador ---|
    mov al, contaTabla
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

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "=" ---|
    mov ah, 02h      ; funcion para imprimir un carácter
    mov dx, 061      ; mover un 00 a Dx para imprimir en pantalla
    int 21h          ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función
    
    ; |--- Se realiza la multiplicación ---|
    mov al, nT8
    mov bl, contaTabla
    mul bl ; se está realizando la multiplicación
    mov resultado, al

    mov al, resultado
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

    ; |--- Imprimir un salto de línea ---|
    mov dl, 0ah
    int 21h

    cmp contaTabla, 10
    jz READKEY
    jmp TABLA8

; |-----------------|====== COMIENZA LA ETIQUETA DE LA TABLA DEL 9 ======|-----------------|
TABLA9:
    inc contaTabla
    inc contaFila

    ; |--- Posicionamiento de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, contaFila ;Direccionamiento para la fila
    mov dl, 0 ;Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; 9 x n = res
    ; |--- Imprimir un "9" ---| 
    mov ah, 02h     ; Funcion para imprimir un caracter
    mov dx, 057     ; Mover un 64 a Dx para imprimir en pantalla
    int 21h         ; Ejecuta la interrupción

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "x" ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 120      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir el valor del contador ---|
    mov al, contaTabla
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

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "=" ---|
    mov ah, 02h      ; funcion para imprimir un carácter
    mov dx, 061      ; mover un 00 a Dx para imprimir en pantalla
    int 21h          ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función
    
    ; |--- Se realiza la multiplicación ---|
    mov al, nT9
    mov bl, contaTabla
    mul bl ; se está realizando la multiplicación
    mov resultado, al

    mov al, resultado
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

    ; |--- Imprimir un salto de línea ---|
    mov dl, 0ah
    int 21h

    cmp contaTabla, 10
    jz READKEY
    jmp TABLA9

; |-----------------|====== COMIENZA LA ETIQUETA DE LA TABLA DEL 10 ======|-----------------|
TABLA10:
    inc contaTabla
    inc contaFila

    ; |--- Posicionamiento de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, contaFila ;Direccionamiento para la fila
    mov dl, 0 ;Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; 10 x n = res
    ; |--- Imprimir un "1" ---| 
    mov ah, 02h     ; Funcion para imprimir un caracter
    mov dx, 049     ; Mover un 64 a Dx para imprimir en pantalla
    int 21h         ; Ejecuta la interrupción

    ; |--- Imprimir un "0" ---| 
    mov ah, 02h     ; Funcion para imprimir un caracter
    mov dx, 048     ; Mover un 64 a Dx para imprimir en pantalla
    int 21h         ; Ejecuta la interrupción

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "x" ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 120      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir el valor del contador ---|
    mov al, contaTabla
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

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función

    ; |--- Imprimir una "=" ---|
    mov ah, 02h      ; funcion para imprimir un carácter
    mov dx, 061      ; mover un 00 a Dx para imprimir en pantalla
    int 21h          ; ejecuta la función

    ; |--- Imprimir un espacio en blanco ---|
    mov ah, 02h     ; funcion para imprimir un carácter
    mov dx, 00      ; mover un 00 a Dx para imprimir en pantalla
    int 21h         ; ejecuta la función
    
    ; |--- Se realiza la multiplicación ---|
    mov al, nT10
    mov bl, contaTabla
    mul bl ; se está realizando la multiplicación
    mov resultado, al

    mov al, resultado
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

    ; |--- Imprimir un salto de línea ---|
    mov dl, 0ah
    int 21h

    cmp contaTabla, 10
    jz READKEY
    jmp TABLA10

FIN:

.exit   ; Termina el código.
end     ; Termina todo el programa.