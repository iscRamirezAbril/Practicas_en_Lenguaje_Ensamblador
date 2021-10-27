; --- Practica 26. Operaciones Básicas de matemáticas con numero de dos dígitos. ---
; Unidad 3: Modularización.
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL MENÚ ======|-----------------|

; ==============================================================================================================

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS PARA EL DISEÑO DEL MENÚ ======|-----------------|
; |--- Cadenas de caracteres ---|
cadMenu1 db  "+----------------------------------------------------+$"
cadMenu2 db  "|    BIENVENIDO AL PROGRAMA DE OPERACIONES BASICAS   |$"
cadMenu3 db  "|                Programa realizado por:             |$"
cadMenu4 db  "|            Ramirez Flores Abril - 19211715         |$"
cadMenu5 db  "+ ----------------       Menu       ---------------- +$"
cadMenu6 db  "|                                                    |$"
cadMenu7 db  "| A) Suma.                                           |$"
cadMenu8 db  "| B) Resta.                                          |$"
cadMenu9 db  "| C) Multiplicacion.                                 |$"
cadMenu10 db "| D) Division.                                       |$"
cadMenu11 db "|                                                    |$"
cadMenu12 db "|    Que desea realizar?                             |$"
cadMenu13 db "+----------------------------------------------------+$"

; |--- Variables ---|
opcion db 2 dup(' '),'$' ; Variable encargada para la captura de la opción del menú.

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS PARA EL DISEÑO DE LA OPCIÓN SUMA ======|-----------------|
cadMenuSum0 db  "+----------------------------------------------------+$"
cadMenuSum1 db  "|                Programa realizado por:             |$"
cadMenuSum2 db  "|            Ramirez Flores Abril - 19211715         |$"
cadMenuSum3 db  "+ ----------------       SUMA       ---------------- +$"

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS PARA EL DISEÑO DE LA OPCIÓN RESTA ======|-----------------|
cadMenuRes0 db  "+----------------------------------------------------+$"
cadMenuRes1 db  "|                Programa realizado por:             |$"
cadMenuRes2 db  "|            Ramirez Flores Abril - 19211715         |$"
cadMenuRes3 db  "+ ----------------      RESTA       ---------------- +$"

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS PARA EL DISEÑO DE LA OPCIÓN MULTIPLICACIÓN ======|-----------------|
cadMenuMul0 db  "+----------------------------------------------------+$"
cadMenuMul1 db  "|                Programa realizado por:             |$"
cadMenuMul2 db  "|            Ramirez Flores Abril - 19211715         |$"
cadMenuMul3 db  "+ ----------------  MULTIPLICACION  ---------------- +$"

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS PARA EL DISEÑO DE LA OPCIÓN DIVISIÓN ======|-----------------|
cadMenuDiv0 db  "+----------------------------------------------------+$"
cadMenuDiv1 db  "|                Programa realizado por:             |$"
cadMenuDiv2 db  "|            Ramirez Flores Abril - 19211715         |$"
cadMenuDiv3 db  "+ ----------------     DIVISION     ---------------- +$"

readkeyOp  db "     Presione cualquier tecla para regresar al menu...$"

; |-----------------|====== DECLARACIÓN DE VARIABLES PARA LA CAPTURA Y ALMACENAMIENTO DE VARIABLES ======|-----------------|
dece db 0 ; Variable para almacenar las decenas.
uni db 0 ; Variable para almacenar las unidades.
n00 db 0 ; Variable para almacenar el primer número de dos cifras.
n01 db 0 ; Variable para almacenar el segundo número de dos cifras.
res db 0 ; Variable para almacenar el resultado.

subtituloNum1 db 10,13,7,'                    =====| Captura del primer numero |===== ','$'
msg0 db 10,13,7,' - Ingresa el primer numero: ','$'
subtituloNum2 db 10,13,7,'                    =====| Captura del segundo numero |===== ','$'
msg1 db 10,13,7,' - Ingresa el segundo numero: ','$'
subtituloNumCap db 10,13,7,'                    =====| Numeros capturados |===== ','$'
msgn00 db 10,13,7,' - El primer numero capturado es: ','$'
msgn01 db 10,13,7,' - El segundo numero capturado es: ','$'
subtituloTotal db 10,13,7,'                       =====| Impresion del total |===== ','$'

msgFinal db 10,13,7,' El total es: ','$'

; |-----------------|====== COMIENZA EL CÓDIGO ======|-----------------|
.code
; |--- Instrucciones que nos permiten trabajar con cadenas ---|
mov ax, seg @data
mov ds, ax
; |-----------------|====== COMIENZA LA ETIQUETA DEL MENÚ ======|-----------------|
MENU:
    ; |-----------------|====== COMIENZA LA IMPRESIÓN DEL MENÚ ======|-----------------|
    ; |--- Limpieza de pantalla ---|
    mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
    mov al, 03h ; Limpieza de pantalla.
    int 10h     ; Se ejecuta la interrupción
    
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 0             ; Direccionamiento para la fila
    mov dl, 12             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu1           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu2           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu3           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu4           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 4             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu5           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 5             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu6           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 6             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu7           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 7             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu8           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 8             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu9           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 9             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu10          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu11          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 11            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu12          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenu13          ; Carga la cadena
    int 21h                    ; Imprime la cadena

; |-----------------|====== CAPTURA DE LA OPCIÓN DESEADA DEL MENÚ ======|-----------------|
CAPTURA_OPCIONMENU:
    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 11            ; Direccionamiento para la fila
    mov dl, 37            ; Direccionamiento para la columna
    int 10h               ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Captura de la respuesta/opción ---|  
    mov ah, 3fh
    mov bx, 00
    mov cx, 2
    mov dx, offset [opcion]
    int 21h

; CASOS:
; |--- Limpieza de pantalla ---|
mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
mov al, 03h ; Limpieza de pantalla.
int 10h     ; Se ejecuta la interrupcion

CASE_A:
    cmp opcion, 065
    jz SUMA
    jmp CASE_B

CASE_B:
    cmp opcion, 066
    jz RESTA
    jmp CASE_C

CASE_C:
    cmp opcion, 067
    jz MULTIPLICACION
    jmp CASE_D

CASE_D:
    cmp opcion, 068
    jz DIVISION
    jmp FIN

; |-----------------|====== COMIENZA LA ETIQUETA DEL READKEY ======|-----------------|
READKEY:
    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, readkeyOp        ; Carga la cadena
    int 21h                  ; Imprime la cadena

    mov ah, 01h
    int 21h

jmp MENU

; |-----------------|====== COMIENZA LA ETIQUETA PARA REALIZAR LA SUMA ======|-----------------|
SUMA:
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 0             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuSum0        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuSum1        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuSum2        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuSum3        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para la captura del primer número ---|
    mov ah, 09h
    lea dx, subtituloNum1
    int 21h

    ; |--- Impresión del mensaje 'Ingresa el primer numero que desee visualizar:' ---|
    mov ah, 09h
    lea dx, msg0
    int 21h

    ; |--- Captura de la decena (primer dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov dece,al

    ; |--- Captura de la unidad (segundo dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov uni,al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah,02h

    ; |--- Bloque de código para almecenar dos dígitos en una sola variable ---|
    mov al, dece
    mov bl, 10
    mul bl
    add al, uni
    mov n00, al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para la captura del segundo número ---|
    mov ah, 09h
    lea dx, subtituloNum2
    int 21h

    ; |--- Impresión del mensaje 'Ingresa el segundo numero que desee visualizar:' ---|
    mov ah, 09h
    lea dx, msg0
    int 21h

    ; |--- Captura de la decena (primer dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov dece, al

    ; |--- Captura de la unidad (segundo dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov uni, al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Bloque de código para almecenar dos dígitos en una sola variable ---|
    mov al, dece
    mov bl, 10
    mul bl
    add al, uni
    mov n01, al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para mostrar los números capturados ---|
    mov ah, 09h
    lea dx, subtituloNumCap
    int 21h

    ; |--- Impresión del mensaje 'El primer numero capturado es:' ---|
    mov ah, 09h
    lea dx, msgn00
    int 21h

    mov al, n00 ; al = res1 = 8, res1 = 0
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

    ; |--- Impresión del mensaje 'El segundo numero capturado es:' ---|
    mov ah, 09h
    lea dx, msgn01
    int 21h

    mov al, n01 ; al = res1 = 8, res1 = 0
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

    ; |--- Se realiza la SUMA ---|
    mov al, n00   ; al = 5, n1 = 0
    add al, n01   ; al = al + n2 (al = 5 + 6) = 11
    mov res, al ; res1 = al = 11, al = 0

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para la impresión del resultado ---|
    mov ah, 09h
    lea dx, subtituloTotal
    int 21h

    ; |--- Mensaje de impresión ---|
    mov ah, 09h
    lea dx, msgFinal
    int 21h

    mov al, res ; al = res1 = 8, res1 = 0
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

; |-----------------|====== COMIENZA LA ETIQUETA PARA REALIZAR LA RESTA ======|-----------------|
RESTA:
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 0             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuRes0        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuRes1        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuRes2        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuRes3        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para la captura del primer número ---|
    mov ah, 09h
    lea dx, subtituloNum1
    int 21h

    ; |--- Impresión del mensaje 'Ingresa el primer numero que desee visualizar:' ---|
    mov ah, 09h
    lea dx, msg0
    int 21h

    ; |--- Captura de la decena (primer dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov dece,al

    ; |--- Captura de la unidad (segundo dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov uni,al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah,02h

    ; |--- Bloque de código para almecenar dos dígitos en una sola variable ---|
    mov al, dece
    mov bl, 10
    mul bl
    add al, uni
    mov n00, al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para la captura del segundo número ---|
    mov ah, 09h
    lea dx, subtituloNum2
    int 21h

    ; |--- Impresión del mensaje 'Ingresa el primer numero que desee visualizar:' ---|
    mov ah, 09h
    lea dx, msg0
    int 21h

    ; |--- Captura de la decena (primer dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov dece, al

    ; |--- Captura de la unidad (segundo dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov uni, al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Bloque de código para almecenar dos dígitos en una sola variable ---|
    mov al, dece
    mov bl, 10
    mul bl
    add al, uni
    mov n01, al

   ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para mostrar los números capturados ---|
    mov ah, 09h
    lea dx, subtituloNumCap
    int 21h

    ; |--- Impresión del mensaje 'El primer numero capturado es:' ---|
    mov ah, 09h
    lea dx, msgn00
    int 21h

    mov al, n00 ; al = res1 = 8, res1 = 0
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

    ; |--- Impresión del mensaje 'El segundo numero capturado es:' ---|
    mov ah, 09h
    lea dx, msgn01
    int 21h

    mov al, n01 ; al = res1 = 8, res1 = 0
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

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se realiza la RESTA ---|
    mov al, n00   ; al = 5, n1 = 0
    sub al, n01   ; al = al + n2 (al = 5 + 6) = 11
    mov res, al ; res1 = al = 11, al = 0

    ; |--- Subtitulo para la impresión del resultado ---|
    mov ah, 09h
    lea dx, subtituloTotal
    int 21h

    ; |--- Mensaje de impresión ---|
    mov ah, 09h
    lea dx, msgFinal
    int 21h

    mov al, res ; al = res1 = 8, res1 = 0
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

; |-----------------|====== COMIENZA LA ETIQUETA PARA REALIZAR LA MULTIPLICACIÓN ======|-----------------|
MULTIPLICACION:
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 0             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuMul0        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuMul1        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuMul2        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuMul3        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para la captura del primer número ---|
    mov ah, 09h
    lea dx, subtituloNum1
    int 21h

    ; |--- Impresión del mensaje 'Ingresa el primer numero que desee visualizar:' ---|
    mov ah, 09h
    lea dx, msg0
    int 21h

    ; |--- Captura de la decena (primer dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov dece,al

    ; |--- Captura de la unidad (segundo dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov uni,al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah,02h

    ; |--- Bloque de código para almecenar dos dígitos en una sola variable ---|
    mov al, dece
    mov bl, 10
    mul bl
    add al, uni
    mov n00, al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para la captura del segundo número ---|
    mov ah, 09h
    lea dx, subtituloNum2
    int 21h

    ; |--- Impresión del mensaje 'Ingresa el primer numero que desee visualizar:' ---|
    mov ah, 09h
    lea dx, msg0
    int 21h

    ; |--- Captura de la decena (primer dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov dece, al

    ; |--- Captura de la unidad (segundo dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov uni, al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Bloque de código para almecenar dos dígitos en una sola variable ---|
    mov al, dece
    mov bl, 10
    mul bl
    add al, uni
    mov n01, al

   ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para mostrar los números capturados ---|
    mov ah, 09h
    lea dx, subtituloNumCap
    int 21h

    ; |--- Impresión del mensaje 'El primer numero capturado es:' ---|
    mov ah, 09h
    lea dx, msgn00
    int 21h

    mov al, n00 ; al = res1 = 8, res1 = 0
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

    ; |--- Impresión del mensaje 'El segundo numero capturado es:' ---|
    mov ah, 09h
    lea dx, msgn01
    int 21h

    mov al, n01 ; al = res1 = 8, res1 = 0
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

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se realiza la MULTIPLICACIÓN ---|
    mov al, n00
    mov bl, n01
    mul bl ; se está realizando la multiplicación
    mov res, al

    ; |--- Subtitulo para la impresión del resultado ---|
    mov ah, 09h
    lea dx, subtituloTotal
    int 21h

    ; |--- Mensaje de impresión ---|
    mov ah, 09h
    lea dx, msgFinal
    int 21h

    mov al, res ; al = res1 = 8, res1 = 0
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

; |-----------------|====== COMIENZA LA ETIQUETA PARA REALIZAR LA DIVISIÓN ======|-----------------|
DIVISION:
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 0             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuDiv0        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuDiv1        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuDiv2        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadMenuDiv3        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para la captura del primer número ---|
    mov ah, 09h
    lea dx, subtituloNum1
    int 21h

    ; |--- Impresión del mensaje 'Ingresa el primer numero que desee visualizar:' ---|
    mov ah, 09h
    lea dx, msg0
    int 21h

    ; |--- Captura de la decena (primer dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov dece,al

    ; |--- Captura de la unidad (segundo dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov uni,al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah,02h

    ; |--- Bloque de código para almecenar dos dígitos en una sola variable ---|
    mov al, dece
    mov bl, 10
    mul bl
    add al, uni
    mov n00, al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Subtitulo para la captura del segundo número ---|
    mov ah, 09h
    lea dx, subtituloNum2
    int 21h

    ; |--- Impresión del mensaje 'Ingresa el primer numero que desee visualizar:' ---|
    mov ah, 09h
    lea dx, msg0
    int 21h

    ; |--- Captura de la decena (primer dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov dece, al

    ; |--- Captura de la unidad (segundo dígito) ---|
    mov ah, 01h
    int 21h
    sub al, 30h
    mov uni, al

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Bloque de código para almecenar dos dígitos en una sola variable ---|
    mov al, dece
    mov bl, 10
    mul bl
    add al, uni
    mov n01, al

    ; |--- Subtitulo para mostrar los números capturados ---|
    mov ah, 09h
    lea dx, subtituloNumCap
    int 21h

    ; |--- Impresión del mensaje 'El primer numero capturado es:' ---|
    mov ah, 09h
    lea dx, msgn00
    int 21h

    mov al, n00 ; al = res1 = 8, res1 = 0
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

    ; |--- Impresión del mensaje 'El segundo numero capturado es:' ---|
    mov ah, 09h
    lea dx, msgn01
    int 21h

    mov al, n01 ; al = res1 = 8, res1 = 0
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

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se realiza la DIVISIÓN ---|
    xor ax, ax      ; se realiza una limpieza
    mov al, n00
    mov bl, n01
    div bl ; se está realizando la multiplicación
    mov res, al

    ; |--- Subtitulo para la impresión del resultado ---|
    mov ah, 09h
    lea dx, subtituloTotal
    int 21h

    ; |--- Mensaje de impresión ---|
    mov ah, 09h
    lea dx, msgFinal
    int 21h

    mov al, res ; al = res1 = 8, res1 = 0
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

; |-----------------|====== COMIENZA LA ETIQUETA DE LA FINALIZACIÓN DEL PROGRAMA ======|-----------------|
FIN:
.exit   ; Termina el código.
end     ; Termina todo el programa.