; --- Practica 19. Multiplicación y división de 3 dígitos. ---
; Unidad 2: Programación básica.
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL MENÚ ======|-----------------|
; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para el menú de opciones |=====
menuTituloPrac19 db "|=====| BIENVENIDO AL MENU DE MULTIPLICACIONES Y DIVISIONES! |=====|$"

menu1Prac19 db "Escriba el numero correspondiente a la operacion que quiera visualizar...$"
menu2Prac19 db "Para salir del programa, presione una tecla distintia a las del menu.   $"

menuOpcionA db " ... A.- Operacion 1: Multiplicacion de 3 numeros.      $"
menuOpcionB db " ... B.- Operacion 2: Division de 3 numeros             $"

menuSelOpcionPrac19 db "|----- Seleccione la operacion que desee realizar:   -----|      $"

opcion db 2 dup(' '),'$' ; Cadena donde se guardará la opción capturada.
readkeyOp  db "     Presione cualquier tecla para regresar al menu...$"

; ==============================================================================================================

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS DE CARACTERES PARA LAS OPERACIONES ======|-----------------|
; ======|----- Multiplicación -----|=====
tituloMul db "             |=====|--- Multiplicacion de 3 numeros ---|=====|$"

; ======|----- División -----|=====
tituloDiv db "                  |=====|--- Division de 3 numeros ---|=====|$"

; |-----------------|====== VARIABLES PARA INGRESAR VALORES Y ALMACENAR RESULTADOS ======|-----------------|
n0 db 0 ; Variable que almacena el primer valor.
n1 db 0 ; Variable que almacena el segundo valor.
n3 db 0 ; Variable que almacena el tercer valor.
res0 db 0 ; Variable que almacena el resultado de la operación.

; |-----------------|====== OTRAS CADENAS ======|-----------------|
pregChar db 10, 13, 7, '- Ingrese un numero: ','$'
charCadenaExtra0 db "---------------------------------------------------------------------$"
charCadenaExtra1 db "Programa realizado por:$"
charNombrePrac19 db "- RAMIREZ FLORES ABRIL$"
charNoControlPrac19 db "- 19211715$"
resul0 db "El primer resultado es: $"
resul1 db "El segundo resultado es: $"

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
    mov dl, 5             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Título del menú ---|
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, menuTituloPrac19   ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 3             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de las instrucciones ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menu1Prac19   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 4             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de las instrucciones ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menu2Prac19   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 5             ; Direccionamiento para la fila
    mov dl, 4             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de una cadena de diseño---|
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, charCadenaExtra0   ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 7             ; Direccionamiento para la fila
    mov dl, 5             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la primera opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionA   ; Carga la cadena
    int 21h               ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 8             ; Direccionamiento para la fila
    mov dl, 5             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de la segunda opción del menú ---|
    mov ah, 09h           ; Función para imprimir una cadena
    lea dx, menuOpcionB   ; Carga la cadena
    int 21h               ; Imprime la cadena

; -----------------------------------------------------------------------------

    ; |-----------------|====== IMPRESIÓN DE LOS DATOS DEL ALUMNO ======|-----------------|

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas ---|  
    mov ah, 02h     ; Petición para colocar el cursor
    mov dh, 14      ; Direccionamiento para la fila
    mov dl, 45      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charCadenaExtra1      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 15            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, charNombrePrac19      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 16            ; Direccionamiento para la fila
    mov dl, 45             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de datos del alumno ---|
    mov ah, 09h                      ; Función para imprimir una cadena
    lea dx, charNoControlPrac19      ; Carga la cadena
    int 21h                          ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10             ; Direccionamiento para la fila
    mov dl, 4             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; |--- Impresión de una cadena de diseño---|
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, charCadenaExtra0   ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; -----------------------------------------------------------------------------

; |-----------------|====== CAPTURA DE LA OPCIÓN DESEADA DEL MENÚ ======|-----------------|

    ; -----------------------------------------------------------------------------

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h     ; Petición para colocar el cursor
    mov dh, 12      ; Direccionamiento para la fila
    mov dl, 5      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Pregunta para la captura de la opción ---|
    mov ah, 09h                   ; Función para imprimir una cadena
    lea dx, menuSelOpcionPrac19   ; Carga la cadena
    int 21h                       ; Imprime la cadena

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 12            ; Direccionamiento para la fila
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
        jz MULTIPLICACION
        jmp CASE_B

    CASE_B:
        cmp opcion, 066
        jz DIVISION
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

; |-----------------|====== COMIENZA LA ETIQUETA DE LA MULTIPLICACIÓN ======|-----------------|
MULTIPLICACION:
    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, tituloMul  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, pregChar
    int 21h

    mov ah, 01h ; captura del numero 1
    int 21h
    sub al, 30h
    mov n0, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, pregChar
    int 21h
    
    mov ah, 01h ; captura del numero 2
    int 21h
    sub al, 30h
    mov n1, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; Multiplicación
    mov al, n0
    mov bl, n1
    mul bl ; se está realizando la multiplicación
    mov res0, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, resul0
    int 21h

    mov al, res0 ; al = res1 = 8, res1 = 0
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

    mov ah, 09h
    lea dx, pregChar
    int 21h
    
    mov ah, 01h ; captura del numero 3
    int 21h
    sub al, 30h
    mov n3, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; Multiplicación
    mov al, res0
    mov bl, n3
    mul bl ; se está realizando la multiplicación
    mov res0, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, resul1
    int 21h

    mov al, res0 ; al = res1 = 8, res1 = 0
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
    
jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA DIVISIÓN ======|-----------------|
DIVISION:
    mov ah, 09h        ; Petición para imprimir una cadena
    lea dx, tituloDiv  ; Carga la cadena
    int 21h            ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, pregChar
    int 21h

    mov ah, 01h ; captura del numero 1
    int 21h
    sub al, 30h
    mov n0, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, pregChar
    int 21h
    
    mov ah, 01h ; captura del numero 2
    int 21h
    sub al, 30h
    mov n1, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    
    ; División
    xor ax, ax ; se realiza una limpieza
    mov al, n0
    mov bl, n1
    div bl ; se está realizando la multiplicación
    mov res0, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, resul0
    int 21h

    mov al, res0 ; al = res1 = 8, res1 = 0
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

    mov ah, 09h
    lea dx, pregChar
    int 21h
    
    mov ah, 01h ; captura del numero 3
    int 21h
    sub al, 30h
    mov n3, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; División
    xor ax, ax ; se realiza una limpieza
    mov al, res0
    mov bl, n3
    div bl ; se está realizando la multiplicación
    mov res0, al

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    lea dx, resul1
    int 21h

    mov al, res0 ; al = res1 = 8, res1 = 0
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

jmp READKEY

FIN:

.exit   ; Termina el código.
end     ; Termina todo el programa.