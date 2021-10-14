; --- Practica 20. Sumas y restas, multiplicaciones y divisiones combinadas. ---
; Unidad 2: Programación básica.
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL MENÚ ======|-----------------|

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para el menú de opciones |=====
menuTituloPrac20 db "|=====| BIENVENIDO AL PROGRAMA DE OPERACIONES BASICAS! |=====|$"

menu1Prac20 db "Escriba el numero correspondiente a la operacion que quiera visualizar...$"
menu2Prac20 db "Para salir del programa, presione una tecla distintia a las de menu.     $"

menuOpcionA db " ... A.- Operacion 1: Primera opcion de operaciones basicas de 6 numeros.           $"
menuOpcionB db " ... B.- Operacion 2: Primera opcion de operaciones basicas de 7 numeros.           $"
menuOpcionC db " ... C.- Operacion 3: Segunda opcion de operaciones basicasa de 7 numeros.          $"

menuSelOpcionPrac20 db "|----- Seleccione la operacion que desee realizar:   -----|      $"

opcion db 2 dup(' '),'$' ; Cadena donde se guardará la opción capturada.
readkeyOp  db "     Presione cualquier tecla para regresar al menu...$"

; ==============================================================================================================

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS DE CARACTERES PARA LAS OPERACIONES ======|-----------------|
; ======|----- Operación #1 -----|=====
tituloOpA db "|--- Primera opcion de operaciones basicas de 6 numeros ---|$"
n0A db 0 ; variable para el primer número
n1A db 0 ; variable para el segundo número

; ======|----- Operación #2 -----|=====
tituloOpB db "|--- Primera opcion de operaciones basicas de 7 numeros ---|$"

; ======|----- Operación #3 -----|=====
tituloOpC db "|--- Segunda opcion de operaciones basicas de 7 numeros ---|$"

; |-----------------|====== OTRAS CADENAS ======|-----------------|
pregChar db 10, 13, 7, '- Operaciones: ','$'
charCadenaExtra0 db "Programa realizado por:$"
charNombrePrac20 db "RAMIREZ FLORES ABRIL$"
charNoControlPrac20 db "19211715$"
charCadenaExtra1 db "---------------------------------------------------------------------------$"
charCadenaExtra2 db "El resultado final es: $"
charSuma db " + $"
charResta db " - $"
charMult db " x $"
charDiv db " / $"
charIgual db " = $"

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

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 0             ; Direccionamiento para la fila
    mov dl, 10            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

; |-----------------|====== IMPRESIÓN DE LOS DATOS DEL ALUMNO ======|-----------------|

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas ---|  
    mov ah, 02h     ; Petición para colocar el cursor
    mov dh, 0       ; Direccionamiento para la fila
    mov dl, 28      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charCadenaExtra0      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1            ; Direccionamiento para la fila
    mov dl, 30             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charNombrePrac20      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2            ; Direccionamiento para la fila
    mov dl, 35             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                      ; Función para imprimir una cadena
    lea dx, charNoControlPrac20      ; Carga la cadena
    int 21h                          ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 2             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de una cadena de diseño---|
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, charCadenaExtra1   ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 5             ; Direccionamiento para la fila
    mov dl, 8             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Título del menú ---|
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, menuTituloPrac20   ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 7             ; Direccionamiento para la fila
    mov dl, 3             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de las instrucciones ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menu1Prac20   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 8             ; Direccionamiento para la fila
    mov dl, 5             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de las instrucciones ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menu2Prac20   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10             ; Direccionamiento para la fila
    mov dl, 2             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionA   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 11             ; Direccionamiento para la fila
    mov dl, 2             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la segunda opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionB   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12             ; Direccionamiento para la fila
    mov dl, 2             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la tercera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionC   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 14             ; Direccionamiento para la fila
    mov dl, 2             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de una cadena de diseño---|
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, charCadenaExtra1   ; Carga la cadena
    int 21h                    ; Imprime la cadena

; |-----------------|====== CAPTURA DE LA OPCIÓN DESEADA DEL MENÚ ======|-----------------|

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h     ; Petición para colocar el cursor
    mov dh, 16      ; Direccionamiento para la fila
    mov dl, 10      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Pregunta para la captura de la opción ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, menuSelOpcionPrac20   ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 16            ; Direccionamiento para la fila
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
        jz OPERACIONES_1
        jmp CASE_B

    CASE_B:
        cmp opcion, 066
        jz OPERACIONES_2
        jmp CASE_C

    CASE_C:
        cmp opcion, 067
        jz OPERACIONES_3
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

; |-----------------|====== COMIENZA LA ETIQUETA DE LA OPCIÓN  #1 ======|-----------------|
OPERACIONES_1:

; |-----------------|====== IMPRESIÓN DE LOS DATOS DEL ALUMNO ======|-----------------|
    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas ---|  
    mov ah, 02h     ; Petición para colocar el cursor
    mov dh, 0       ; Direccionamiento para la fila
    mov dl, 28      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charNombrePrac20      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 35            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                      ; Función para imprimir una cadena
    lea dx, charNoControlPrac20      ; Carga la cadena
    int 21h                          ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 2             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 10            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, tituloOpA  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |-----------------|====== COMIENZA LA EJECUCIÓN DE LAS OPERACIONES ======|-----------------|
    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 4      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, pregChar   ; Carga la cadena
    int 21h            ; Imprime la cadena

    ;  |=====| Comienzan las operaciones. |=====|
    ; |--- Captura del numero 1 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    mov ah, 09h
    lea dx, charDiv
    int 21h

    ; |--- Captura del numero 2 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n1A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la DIVISIÓN ---|
    xor ax, ax ; se realiza una limpieza
    mov al, n0A
    mov bl, n1A
    div bl ; se está realizando la multiplicación
    mov n1A, al

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charResta
    int 21h

    ; |--- Captura del numero 3 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la RESTA ---|
    mov al, n1A   ; al = 5, n1 = 0
    sub al, n0A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charMult
    int 21h

    ; |--- Captura del numero 4 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la MULTIPLICACIÓN ---|
    mov al, n1A
    mov bl, n0A
    mul bl ; se está realizando la multiplicación
    mov n1A, al

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charResta
    int 21h

    ; |--- Captura del numero 5 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la RESTA ---|
    mov al, n1A   ; al = 5, n1 = 0
    sub al, n0A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charSuma
    int 21h

    ; |--- Captura del numero 6 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la SUMA ---|
    mov al, n1A   ; al = 5, n1 = 0
    add al, n0A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA OPCIÓN  #2 ======|-----------------|
OPERACIONES_2:

; |-----------------|====== IMPRESIÓN DE LOS DATOS DEL ALUMNO ======|-----------------|
    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas ---|  
    mov ah, 02h     ; Petición para colocar el cursor
    mov dh, 0       ; Direccionamiento para la fila
    mov dl, 28      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charNombrePrac20      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 35            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                      ; Función para imprimir una cadena
    lea dx, charNoControlPrac20      ; Carga la cadena
    int 21h                          ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 2             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 10            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, tituloOpB  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |-----------------|====== COMIENZA LA EJECUCIÓN DE LAS OPERACIONES ======|-----------------|
    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 4      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, pregChar   ; Carga la cadena
    int 21h            ; Imprime la cadena

    ;  |=====| Comienzan las operaciones. |=====|
    ; |--- Captura del numero 1 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    mov ah, 09h
    lea dx, charSuma
    int 21h

    ; |--- Captura del numero 2 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n1A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la SUMA ---|
    mov al, n1A   ; al = 5, n1 = 0
    add al, n0A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charMult
    int 21h

    ; |--- Captura del numero 3 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la MULTIPLICACIÓN ---|
    mov al, n0A
    mov bl, n1A
    mul bl ; se está realizando la multiplicación
    mov n0A, al

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charSuma
    int 21h

    ; |--- Captura del numero 4 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la SUMA ---|
    mov al, n1A   ; al = 5, n1 = 0
    add al, n0A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charMult
    int 21h

    ; |--- Captura del numero 2 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la MULTIPLICACIÓN ---|
    mov al, n0A
    mov bl, n1A
    mul bl ; se está realizando la multiplicación
    mov n1A, al

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charSuma
    int 21h

    ; |--- Captura del numero 2 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la SUMA ---|
    mov al, n0A   ; al = 5, n1 = 0
    add al, n1A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charMult
    int 21h

    ; |--- Captura del numero 2 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la MULTIPLICACIÓN ---|
    mov al, n0A
    mov bl, n1A
    mul bl ; se está realizando la multiplicación
    mov n1A, al

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA OPCIÓN  #3 ======|-----------------|
OPERACIONES_3:

; |-----------------|====== IMPRESIÓN DE LOS DATOS DEL ALUMNO ======|-----------------|
    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas ---|  
    mov ah, 02h     ; Petición para colocar el cursor
    mov dh, 0       ; Direccionamiento para la fila
    mov dl, 28      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charNombrePrac20      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 35            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                      ; Función para imprimir una cadena
    lea dx, charNoControlPrac20      ; Carga la cadena
    int 21h                          ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 2             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 10            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, tituloOpC  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |-----------------|====== COMIENZA LA EJECUCIÓN DE LAS OPERACIONES ======|-----------------|
    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 4      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, pregChar   ; Carga la cadena
    int 21h            ; Imprime la cadena

    ;  |=====| Comienzan las operaciones. |=====|
    ; |--- Captura del numero 1 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    mov ah, 09h
    lea dx, charSuma
    int 21h

    ; |--- Captura del numero 2 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n1A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la SUMA ---|
    mov al, n1A   ; al = 5, n1 = 0
    add al, n0A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charMult
    int 21h

    ; |--- Captura del numero 3 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la MULTIPLICACIÓN ---|
    mov al, n1A
    mov bl, n0A
    mul bl ; se está realizando la multiplicación
    mov n1A, al

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charResta
    int 21h

    ; |--- Captura del numero 4 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la SUMA ---|
    mov al, n1A   ; al = 5, n1 = 0
    sub al, n0A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charSuma
    int 21h

    ; |--- Captura del numero 4 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la SUMA ---|
    mov al, n1A   ; al = 5, n1 = 0
    add al, n0A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

    mov ah, 09h
    lea dx, charResta
    int 21h

    ; |--- Captura del numero 4 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la SUMA ---|
    mov al, n1A   ; al = 5, n1 = 0
    sub al, n0A   ; al = al + n2 (al = 5 + 6) = 11
    mov n1A, al ; res1 = al = 11, al = 0

    mov ah, 09h
    lea dx, charIgual
    int 21h

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


    mov ah, 09h
    lea dx, charDiv
    int 21h

    ; |--- Captura del numero 2 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 51
    sub al, 30h ; al = 3 (51-48)
    mov n0A, al  ; n2 = 3, al = 0

    ; |--- Se realiza la DIVISIÓN ---|
    xor ax, ax ; se realiza una limpieza
    mov al, n1A
    mov bl, n0A
    div bl ; se está realizando la multiplicación
    mov n1A, al

    mov ah, 09h
    lea dx, charIgual
    int 21h

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

jmp READKEY

FIN:

.exit   ; Termina el código.
end     ; Termina todo el programa.