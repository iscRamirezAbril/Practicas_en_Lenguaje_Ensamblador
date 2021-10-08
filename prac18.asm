; --- Practica 18. Sumas y restas combinadas. ---
; Unidad 2: Programación básica.
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL MENÚ ======|-----------------|

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para el menú de opciones |=====
menuTituloPrac18 db "|=====| BIENVENIDO AL PROGRAMA DE SUMAS Y RESTAS! |=====|$"

menu1Prac18 db "Escriba el numero correspondiente a la operacion que quiera visualizar...$"
menu2Prac18 db "Para salir del programa, presione una tecla distintia a las de menu.   $"

menuOpcionA db " ... A.- Operacion 1: Suma y resta de 5 numeros.                        $"
menuOpcionB db " ... B.- Operacion 2: Suma y resta de 6 numeros                         $"
menuOpcionC db " ... C.- Operacion 3: Suma y resta de 7 numeros                         $"

menuSelOpcionPrac18 db "|----- Seleccione la operacion que desee realizar:   -----|      $"

opcion db 2 dup(' '),'$' ; Cadena donde se guardará la opción capturada.
readkeyOp  db "     Presione cualquier tecla para regresar al menu...$"

; ===============================================================================================================

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS DE CARACTERES PARA LAS OPERACIONES ======|-----------------|
; ======|----- Operación #1 -----|=====
tituloOpA db "    Suma y resta de 5 numeros...$"
n0A db 0 ; variable para el primer número
n1A db 0 ; variable para el segundo número
n2A db 0 ; variable para el tercer número
n3A db 0 ; variable para el cuarto número
n4A db 0 ; variable para el quinto número

; ======|----- Operación #2 -----|=====
tituloOpB db "    Suma y resta de 6 numeros...$"
n0B db 0 ; variable para el primer número
n1B db 0 ; variable para el segundo número
n2B db 0 ; variable para el tercer número
n3B db 0 ; variable para el cuarto número
n4B db 0 ; variable para el quinto número
n5B db 0 ; variable para el sexto número

; ======|----- Operación #3 -----|=====
tituloOpC db "    Suma y resta de 7 numeros...$"
n0C db 0 ; variable para el primer número
n1C db 0 ; variable para el segundo número
n2C db 0 ; variable para el tercer número
n3C db 0 ; variable para el cuarto número
n4C db 0 ; variable para el quinto número
n5C db 0 ; variable para el sexto número
n6C db 0 ; variable para el septimo número

res0 db 0
res1 db 0
res2 db 0
res3 db 0
res4 db 0
res5 db 0
res6 db 0
res7 db 0
res8 db 0
res9 db 0

; |-----------------|====== OTRAS CADENAS ======|-----------------|
pregChar db 10, 13, 7, '- Ingrese un numero: ','$'
charCadenaExtra0 db "Programa realizado por:$"
charNombrePrac18 db "- RAMIREZ FLORES ABRIL$"
charNoControlPrac18 db "- 19211715$"
charCadenaExtra1 db "--------------------------------------------------------------------$"
charCadenaExtra2 db "La operacion realizada es:$"
charSuma db " + $"
charResta db " - $"
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

    ; |--- Título del menú ---|
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, menuTituloPrac18   ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 3             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de las instrucciones ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menu1Prac18   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 5             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de las instrucciones ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menu2Prac18   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 5             ; Direccionamiento para la fila
    mov dl, 5             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de una cadena de diseño---|
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, charCadenaExtra1   ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 6             ; Direccionamiento para la fila
    mov dl, 5             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionA   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 7             ; Direccionamiento para la fila
    mov dl, 5             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la segunda opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionB   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 8             ; Direccionamiento para la fila
    mov dl, 5             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la tercera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionC   ; Carga la cadena
    int 21h               ; Imprime la cadena

; |-----------------|====== IMPRESIÓN DE LOS DATOS DEL ALUMNO ======|-----------------|

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas ---|  
    mov ah, 02h     ; Petición para colocar el cursor
    mov dh, 13      ; Direccionamiento para la fila
    mov dl, 45      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charCadenaExtra0      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 14            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charNombrePrac18      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 15            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                      ; Función para imprimir una cadena
    lea dx, charNoControlPrac18      ; Carga la cadena
    int 21h                          ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 11             ; Direccionamiento para la fila
    mov dl, 5             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de una cadena de diseño---|
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, charCadenaExtra1   ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; -----------------------------------------------------------------------------

; |-----------------|====== CAPTURA DE LA OPCIÓN DESEADA DEL MENÚ ======|-----------------|

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h     ; Petición para colocar el cursor
    mov dh, 10      ; Direccionamiento para la fila
    mov dl, 5      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Pregunta para la captura de la opción ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, menuSelOpcionPrac18   ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 10            ; Direccionamiento para la fila
    mov dl, 56            ; Direccionamiento para la columna
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
        jz OPERACION_1
        jmp CASE_B

    CASE_B:
        cmp opcion, 066
        jz OPERACION_2
        jmp CASE_C

    CASE_C:
        cmp opcion, 067
        jz OPERACION_3
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

; |-----------------|====== COMIENZA LA ETIQUETA DE LA OPERACIÓN #1 ======|-----------------|
OPERACION_1:
    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, tituloOpA  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |-----------------|====== COMIENZA LA CAPTURA DE LOS NUMEROS ======|-----------------|
    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 1      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, pregChar   ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Captura del numero 1 (5) ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n0A, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 2      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 2 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n1A, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 3      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 3 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n2A, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 4      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 4 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n3A, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 5      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 5 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n4A, al  ; n1 = 5, al = 0

; |-----------------|====== COMIENZAN A REALIZARSE LAS OPERACIONES ======|-----------------|
    ; --- Se realiza la primer Suma ---
    mov al, n0A   ; al = 5, n1 = 0
    add al, n1A   ; al = al + n2 (al = 5 + 6) = 11
    mov res0, al ; res1 = al = 11, al = 0

    ; --- Se realiza la segunda parte de la operación - Resta ---
    mov al, res0   ; al = 5, n1 = 0
    sub al, n2A   ; al = al + n2 (al = 5 + 6) = 11
    mov res1, al ; res1 = al = 11, al = 0

    ; --- Se realiza la tercera parte de la operación - Suma ---
    mov al, res1   ; al = 5, n1 = 0
    add al, n3A   ; al = al + n2 (al = 5 + 6) = 11
    mov res2, al ; res1 = al = 11, al = 0

    ; --- Se realiza la cuarta parte de la operación - Resta ---
    mov al, res2   ; al = 5, n1 = 0
    sub al, n4A   ; al = al + n2 (al = 5 + 6) = 11
    mov res3, al ; res1 = al = 11, al = 0

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

; |-----------------|====== IMPRESIÓN DE LOS DATOS DEL ALUMNO ======|-----------------|

    ; -----------------------------------------------------------------------------
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charCadenaExtra0      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 11            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charNombrePrac18      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                      ; Función para imprimir una cadena
    lea dx, charNoControlPrac18      ; Carga la cadena
    int 21h                          ; Imprime la cadena

    ; |-----------------|====== COMIENZA A IMPRIMIRSE EL RESULTADO ======|-----------------|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 8            ; Direccionamiento para la fila
    mov dl, 1             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charCadenaExtra2  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir el primer caracter ---|
    mov al, n0A ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h   

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charSuma  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el segundo caracter ---|
    mov al, n1A ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charResta  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el tercer caracter ---|
    mov al, n2A ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charSuma  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el cuarto caracter ---|
    mov al, n3A ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charResta  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el quinto caracter ---|
    mov al, n4A ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charIgual  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el resultado ---|
    mov al, res3 ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h   

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA OPERACIÓN #2 ======|-----------------|
OPERACION_2:
    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, tituloOpB  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |-----------------|====== COMIENZA LA CAPTURA DE LOS NUMEROS ======|-----------------|
    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 1      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, pregChar   ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Captura del numero 1 (5) ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n0B, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 2      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 2 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n1B, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 3      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 3 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n2B, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 4      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 4 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n3B, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 5      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 5 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n4B, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 6      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 6 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n5B, al  ; n1 = 5, al = 0

; |-----------------|====== COMIENZAN A REALIZARSE LAS OPERACIONES ======|-----------------|
    ; --- Se realiza la primer Suma ---
    mov al, n0B   ; al = 5, n1 = 0
    add al, n1B   ; al = al + n2 (al = 5 + 6) = 11
    mov res0, al ; res1 = al = 11, al = 0

    ; --- Se realiza la segunda parte de la operación - Resta ---
    mov al, res0   ; al = 5, n1 = 0
    add al, n2B   ; al = al + n2 (al = 5 + 6) = 11
    mov res1, al ; res1 = al = 11, al = 0

    ; --- Se realiza la tercera parte de la operación - Suma ---
    mov al, res1   ; al = 5, n1 = 0
    sub al, n3B   ; al = al + n2 (al = 5 + 6) = 11
    mov res2, al ; res1 = al = 11, al = 0

    ; --- Se realiza la cuarta parte de la operación - Resta ---
    mov al, res2   ; al = 5, n1 = 0
    add al, n4B   ; al = al + n2 (al = 5 + 6) = 11
    mov res3, al ; res1 = al = 11, al = 0

    ; --- Se realiza la cuarta parte de la operación - Resta ---
    mov al, res3   ; al = 5, n1 = 0
    sub al, n5B   ; al = al + n2 (al = 5 + 6) = 11
    mov res4, al ; res1 = al = 11, al = 0

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |-----------------|====== IMPRESIÓN DE LOS DATOS DEL ALUMNO ======|-----------------|
    ; -----------------------------------------------------------------------------
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 11            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charCadenaExtra0      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charNombrePrac18      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 13            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                      ; Función para imprimir una cadena
    lea dx, charNoControlPrac18      ; Carga la cadena
    int 21h                          ; Imprime la cadena

    ; |-----------------|====== COMIENZA A IMPRIMIRSE EL RESULTADO ======|-----------------|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 9            ; Direccionamiento para la fila
    mov dl, 1             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charCadenaExtra2  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir el primer caracter ---|
    mov al, n0B ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h   

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charSuma  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el segundo caracter ---|
    mov al, n1B ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charSuma  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el tercer caracter ---|
    mov al, n2B ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charResta  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el cuarto caracter ---|
    mov al, n3B ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charSuma  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el quinto caracter ---|
    mov al, n4B ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charResta  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el sexto caracter ---|
    mov al, n5B ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charIgual  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el resultado ---|
    mov al, res4 ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA OPERACIÓN #3 ======|-----------------|
OPERACION_3:
    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, tituloOpC  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |-----------------|====== COMIENZA LA CAPTURA DE LOS NUMEROS ======|-----------------|
    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 1      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, pregChar   ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Captura del numero 1 (5) ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n0C, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 2      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 2 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n1C, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 3      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 3 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n2C, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 4      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 4 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n3C, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 5      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 5 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n4C, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 6      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 6 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n5C, al  ; n1 = 5, al = 0

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h    ; Petición para colocar el cursor
    mov dh, 7      ; Direccionamiento para la fila
    mov dl, 0      ; Direccionamiento para la columna
    int 10h        ; Ejecutamos la interrupcion para posicionamiento

    mov ah, 09h
    lea dx, pregChar
    int 21h

    ; |--- Captura del numero 7 ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov n6C, al  ; n1 = 5, al = 0

    ; |-----------------|====== COMIENZAN A REALIZARSE LAS OPERACIONES ======|-----------------|
    ; --- Se realiza la primer Suma ---
    mov al, n0C   ; al = 5, n1 = 0
    add al, n1C   ; al = al + n2 (al = 5 + 6) = 11
    mov res0, al ; res1 = al = 11, al = 0

    ; --- Se realiza la segunda parte de la operación - Resta ---
    mov al, res0   ; al = 5, n1 = 0
    add al, n2C   ; al = al + n2 (al = 5 + 6) = 11
    mov res1, al ; res1 = al = 11, al = 0

    ; --- Se realiza la tercera parte de la operación - Suma ---
    mov al, res1   ; al = 5, n1 = 0
    sub al, n3C   ; al = al + n2 (al = 5 + 6) = 11
    mov res2, al ; res1 = al = 11, al = 0

    ; --- Se realiza la cuarta parte de la operación - Resta ---
    mov al, res2   ; al = 5, n1 = 0
    add al, n4C   ; al = al + n2 (al = 5 + 6) = 11
    mov res3, al ; res1 = al = 11, al = 0

    ; --- Se realiza la cuarta parte de la operación - Resta ---
    mov al, res3   ; al = 5, n1 = 0
    sub al, n5C   ; al = al + n2 (al = 5 + 6) = 11
    mov res4, al ; res1 = al = 11, al = 0

    ; --- Se realiza la cuarta parte de la operación - Resta ---
    mov al, res4   ; al = 5, n1 = 0
    add al, n6C   ; al = al + n2 (al = 5 + 6) = 11
    mov res5, al ; res1 = al = 11, al = 0

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |-----------------|====== IMPRESIÓN DE LOS DATOS DEL ALUMNO ======|-----------------|
    ; -----------------------------------------------------------------------------
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charCadenaExtra0      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 13            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charNombrePrac18      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 14            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                      ; Función para imprimir una cadena
    lea dx, charNoControlPrac18      ; Carga la cadena
    int 21h                          ; Imprime la cadena

    ; |-----------------|====== COMIENZA A IMPRIMIRSE EL RESULTADO ======|-----------------|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10            ; Direccionamiento para la fila
    mov dl, 1             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charCadenaExtra2  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir el primer caracter ---|
    mov al, n0C ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h   

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charSuma  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el segundo caracter ---|
    mov al, n1C ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charSuma  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el tercer caracter ---|
    mov al, n2C ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charResta  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el cuarto caracter ---|
    mov al, n3C ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charSuma  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el quinto caracter ---|
    mov al, n4C ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charResta  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el sexto caracter ---|
    mov al, n5C ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h       ; Petición para imprimir una cadena
    lea dx, charSuma  ; Carga la cadena
    int 21h           ; Imprime la cadena

    ; |--- Imprimir el séptimo caracter ---|
    mov al, n6C ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, charIgual  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir el resultado ---|
    mov al, res5 ; al = res1 = 8, res1 = 0
    aam          ; empaquetado y desempacando para mostrar el resultado de dos digitos
    mov bx, ax   ; mover todo lo que se encuentra dentro del registro ax a dx
    mov ah, 02h  ; desplega un caracter
    mov dl, bh 
    add dl, 30h  ; dl = 3 + 48 = 51 '3'
    int 21h

    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h 

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

jmp READKEY

FIN:

.exit   ; Termina el código.
end     ; Termina todo el programa.
