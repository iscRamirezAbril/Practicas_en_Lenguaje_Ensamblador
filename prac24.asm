; --- Practica 24. Nota de compra/venta. ---
; Unidad 2: Programación básica.
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
cadMenu2 db  "|        ABRIL'S COMPUTER PLACE, S.A., DE C.V.       |$"
cadMenu3 db  "|      Av. 5 de Mayo, 65, Los pajaritos, Tijuana     |$"
cadMenu4 db  "|                 RFC: MOV1004082C1                  |$"
cadMenu5 db  "|                  (664) 832-84-19                   |$"
cadMenu6 db  "+ ----------------       Menu       ---------------- +$"
cadMenu7 db  "|                                                    |$"
cadMenu8 db  "| A) Capturar 7 productos para su compra.            |$"
cadMenu9 db  "| B) Realizar nota de venta.                         |$"
cadMenu10 db "|                                                    |$"
cadMenu11 db "|    Que desea realizar?                             |$"
cadMenu12 db "+----------------------------------------------------+$"

; |--- Variables ---|
opcion db 2 dup(' '),'$' ; Variable encargada para la captura de la opción del menú.

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS PARA EL DISEÑO DE LA CAPTURA DE LOS PRODUCTOS ======|-----------------|
; |--- Cadenas de caracteres para diseño ---|
cadCaptura1 db  "+----------------------------------------------------+$"
cadCaptura2 db  "|        ABRIL'S COMPUTER PLACE, S.A., DE C.V.       |$"
cadCaptura3 db  "|      Av. 5 de Mayo, 65, Los pajaritos, Tijuana     |$"
cadCaptura4 db  "|                 RFC: MOV1004082C1                  |$"
cadCaptura5 db  "|                  (664) 832-84-19                   |$"
cadCaptura6 db  "+ ------------- Registro de productos -------------- +$"
cadCaptura7 db  "                                                      $"
cadCaptura8 db  "+-------------------------------------+--------------+$"
cadCaptura9 db  "|          Nombre del producto        |    Precio    |$"
cadCaptura10 db "+-------------------------------------+--------------+$"
cadCaptura11 db "|                                     |              |$"
cadCaptura12 db "+-------------------------------------+--------------+$"
cadCaptura13 db "|                                     |              |$"
cadCaptura14 db "+-------------------------------------+--------------+$"
cadCaptura15 db "|                                     |              |$"
cadCaptura16 db "+-------------------------------------+--------------+$"
cadCaptura17 db "|                                     |              |$"
cadCaptura18 db "+-------------------------------------+--------------+$"
cadCaptura19 db "|                                     |              |$"
cadCaptura20 db "+-------------------------------------+--------------+$"
cadCaptura21 db "|                                     |              |$"
cadCaptura22 db "+-------------------------------------+--------------+$"
cadCaptura23 db "|                                     |              |$"
cadCaptura24 db "+-------------------------------------+--------------+$"

; |--- Cadenas de caracteres para captura de los nombres de los productos ---|
prod1 db 100 dup(' '),'$'                                                                                          
prod2 db 100 dup(' '),'$'                                                                                          
prod3 db 100 dup(' '),'$'                                                                                          
prod4 db 100 dup(' '),'$'                                                                                          
prod5 db 100 dup(' '),'$'                                                                                          
prod6 db 100 dup(' '),'$'                                                                                          
prod7 db 100 dup(' '),'$'                                                                                          

readkeyOp  db "     Presione cualquier tecla para regresar al menu...$"

; |--- Variables para la captura de los precios ---|
precio1 db 0
precio2 db 0                                      
precio3 db 0                                      
precio4 db 0                                      
precio5 db 0                                      
precio6 db 0                                      
precio7 db 0   
subtotal db 0                                                                       
total db 0                                      

; |-----------------|====== DECLARACIÓN DE VARIABLES Y CADENAS PARA EL DISEÑO DE LA NOTA ======|-----------------|
cadNota1 db   "+----------------------------------------------------+$"
cadNota2 db   "|        ABRIL'S COMPUTER PLACE, S.A., DE C.V.       |$"
cadNota3 db   "|      Av. 5 de Mayo, 65, Los pajaritos, Tijuana     |$"
cadNota4 db   "|                 RFC: MOV1004082C1                  |$"
cadNota5 db   "| ================================================== |$"
cadNota6 db   "| Cajero                 2       21/10/2021    10:30 |$"
cadNota7 db   "|                                                    |$"
cadNota8 db   "|                                                    |$"
cadNota9 db   "|                                                    |$"
cadNota10 db  "|                                                    |$"
cadNota11 db  "|                                                    |$"
cadNota12 db  "|                                                    |$"
cadNota13 db  "|                                                    |$"
cadNota14 db  "|                                                    |$"
cadNota15 db  "| Subtotal:      pesos                               |$"
cadNota16 db  "| Total:         pesos          Cambio: 0.00   pesos |$"
cadNota17 db  "|                 LUGAR DE EXPEDICION                |$"
cadNota18 db  "|                  LOS PAJARITOS #65                 |$"
cadNota19 db  "|                       TIJUANA                      |$"
cadNota20 db  "|                   BAJA CALIFORNIA                  |$"
cadNota21 db  "|                      C.P. 88271                    |$"
cadNota22 db  "|  email: atencionclientes@abrilscomputerplace.com   |$"
cadNota23 db  "|                Tel: (664) 832-84-19                |$"
cadNota24 db  "+----------------------------------------------------+$"

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
    int 10h     ; Se ejecuta la interrupcion

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

; |-----------------|====== CAPTURA DE LA OPCIÓN DESEADA DEL MENÚ ======|-----------------|
CAPTURA_OPCIONMENU:
    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, 10            ; Direccionamiento para la fila
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
    jz PRODUCTOS
    jmp CASE_B

CASE_B:
    cmp opcion, 066
    jz TICKET
    jmp FIN

; |-----------------|====== COMIENZA LA ETIQUETA DEL READKEY ======|-----------------|
READKEY:
    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, readkeyOp        ; Carga la cadena
    int 21h                  ; Imprime la cadena

    mov ah, 01h
    int 21h

jmp MENU

; |-----------------|====== COMIENZA LA ETIQUETA DE PARA LA CAPTURA DE PRODUCTOS ======|-----------------|
PRODUCTOS:
    ; |-----------------|====== COMIENZA LA IMPRESIÓN DEL FORMULARIO DE CAPTURA DE PRODUCTOS ======|-----------------|
    ; |--- Limpieza de pantalla ---|
    mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
    mov al, 03h ; Limpieza de pantalla.
    int 10h     ; Se ejecuta la interrupcion

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 0             ; Direccionamiento para la fila
    mov dl, 12             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura1        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura2        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura3        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura4        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 4             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura5        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 5             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura6        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 6             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx,cadCaptura7         ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 7             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura8        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 8             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura9        ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 9             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura10       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura11       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 11            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura12       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura13       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 13            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura14       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 14            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura15       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 15            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura16       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 16            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura17       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 17            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura18       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 18            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura19       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 19            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura20       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 20            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura21       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 21            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura22       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 22            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura23       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 23            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadCaptura24       ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |-----------------|====== COMIENZA LA CAPTURA DE PRODUCTOS CON SUS RESPECTIVOS PRECIOS ======|-----------------|
                                            ; |--- PRIMER PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10            ; Direccionamiento para la fila
    mov dl, 17            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    ; ======== Descripción ========
    mov ah, 3fh             ; Cargar 3fh al registro "ah".
    mov bx, 00              ; Cargar 00 al registro bx.
    mov cx, 100             ; Limita la cantidad de caracteres que el usuario puede capturar.
    mov dx, offset [prod1]  ; Lo que se capture en la cadena "res1" se mueve al registro dx.
    int 21h                 ; Se ejecuta la interrupción (captura de cadenas).

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10            ; Direccionamiento para la fila
    mov dl, 57            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    ; |--- Captura del caracter "precio1" ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov precio1, al  ; n1 = 5, al = 0

                                            ; |--- SEGUNDO PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 17            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    ; ======== Descripción ========
    mov ah, 3fh             ; Cargar 3fh al registro "ah".
    mov bx, 00              ; Cargar 00 al registro bx.
    mov cx, 100             ; Limita la cantidad de caracteres que el usuario puede capturar.
    mov dx, offset [prod2]  ; Lo que se capture en la cadena "res1" se mueve al registro dx.
    int 21h                 ; Se ejecuta la interrupción (captura de cadenas).

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 57            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    ; |--- Captura de la variable "precio2" ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov precio2, al  ; n1 = 5, al = 0

    ; |--- Se realiza la primer suma entre "precio1" y "precio2", almacenandolo en "subtotal" ---|
    mov al, precio1   ; al = 5, n1 = 0
    add al, precio2   ; al = al + n2 (al = 5 + 6) = 11
    mov subtotal, al ; res1 = al = 11, al = 0

                                            ; |--- TERCERO PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 14            ; Direccionamiento para la fila
    mov dl, 17            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    ; ======== Descripción ========
    mov ah, 3fh             ; Cargar 3fh al registro "ah".
    mov bx, 00              ; Cargar 00 al registro bx.
    mov cx, 100             ; Limita la cantidad de caracteres que el usuario puede capturar.
    mov dx, offset [prod3]  ; Lo que se capture en la cadena "res1" se mueve al registro dx.
    int 21h                 ; Se ejecuta la interrupción (captura de cadenas).

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 14            ; Direccionamiento para la fila
    mov dl, 57            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    ; |--- Captura de la variable "precio3" ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov precio3, al  ; n1 = 5, al = 0

    ; |--- Se realiza la segunda suma entre "subtotal" y "precio3", almacenandolo en "subtotal" ---|
    mov al, subtotal   ; al = 5, n1 = 0
    add al, precio3   ; al = al + n2 (al = 5 + 6) = 11
    mov subtotal, al ; res1 = al = 11, al = 0

                                            ; |--- CUARTO PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 16            ; Direccionamiento para la fila
    mov dl, 17            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    ; ======== Descripción ========
    mov ah, 3fh             ; Cargar 3fh al registro "ah".
    mov bx, 00              ; Cargar 00 al registro bx.
    mov cx, 100             ; Limita la cantidad de caracteres que el usuario puede capturar.
    mov dx, offset [prod4]  ; Lo que se capture en la cadena "res1" se mueve al registro dx.
    int 21h                 ; Se ejecuta la interrupción (captura de cadenas).

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 16            ; Direccionamiento para la fila
    mov dl, 57            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    ; |--- Captura de la variable "precio4" ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov precio4, al  ; n1 = 5, al = 0

    ; |--- Se realiza la segunda suma entre "subtotal" y "precio4", almacenandolo en "subtotal" ---|
    mov al, subtotal   ; al = 5, n1 = 0
    add al, precio4   ; al = al + n2 (al = 5 + 6) = 11
    mov subtotal, al ; res1 = al = 11, al = 0

                                            ; |--- QUINTO PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 18            ; Direccionamiento para la fila
    mov dl, 17            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    ; ======== Descripción ========
    mov ah, 3fh             ; Cargar 3fh al registro "ah".
    mov bx, 00              ; Cargar 00 al registro bx.
    mov cx, 100             ; Limita la cantidad de caracteres que el usuario puede capturar.
    mov dx, offset [prod5]  ; Lo que se capture en la cadena "res1" se mueve al registro dx.
    int 21h                 ; Se ejecuta la interrupción (captura de cadenas).

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 18            ; Direccionamiento para la fila
    mov dl, 57            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    ; |--- Captura de la variable "precio5" ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov precio5, al  ; n1 = 5, al = 0

    ; |--- Se realiza la segunda suma entre "subtotal" y "precio5", almacenandolo en "subtotal" ---|
    mov al, subtotal   ; al = 5, n1 = 0
    add al, precio5   ; al = al + n2 (al = 5 + 6) = 11
    mov subtotal, al ; res1 = al = 11, al = 0

                                            ; |--- SEXTO PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 20            ; Direccionamiento para la fila
    mov dl, 17            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    ; ======== Descripción ========
    mov ah, 3fh             ; Cargar 3fh al registro "ah".
    mov bx, 00              ; Cargar 00 al registro bx.
    mov cx, 100             ; Limita la cantidad de caracteres que el usuario puede capturar.
    mov dx, offset [prod6]  ; Lo que se capture en la cadena "res1" se mueve al registro dx.
    int 21h                 ; Se ejecuta la interrupción (captura de cadenas).

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 20            ; Direccionamiento para la fila
    mov dl, 57            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    ; |--- Captura de la variable "precio6" ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov precio6, al  ; n1 = 5, al = 0

    ; |--- Se realiza la segunda suma entre "subtotal" y "precio6", almacenandolo en "subtotal" ---|
    mov al, subtotal   ; al = 5, n1 = 0
    add al, precio6   ; al = al + n2 (al = 5 + 6) = 11
    mov subtotal, al ; res1 = al = 11, al = 0

                                            ; |--- SEPTIMO PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 22            ; Direccionamiento para la fila
    mov dl, 17            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    ; ======== Descripción ========
    mov ah, 3fh             ; Cargar 3fh al registro "ah".
    mov bx, 00              ; Cargar 00 al registro bx.
    mov cx, 100             ; Limita la cantidad de caracteres que el usuario puede capturar.
    mov dx, offset [prod7]  ; Lo que se capture en la cadena "res1" se mueve al registro dx.
    int 21h                 ; Se ejecuta la interrupción (captura de cadenas).

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 22            ; Direccionamiento para la fila
    mov dl, 57            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    ; |--- Captura de la variable "precio7" ---|
    mov ah, 01h ; al = 0
    int 21h     ; al = 53
    sub al, 30h ; al = 5 (53-48)
    mov precio7, al  ; n1 = 5, al = 0

    ; |--- Se realiza la segunda suma entre "subtotal" y "precio7", almacenandolo en "subtotal" ---|
    mov al, subtotal   ; al = 5, n1 = 0
    add al, precio7   ; al = al + n2 (al = 5 + 6) = 11
    mov subtotal, al ; res1 = al = 11, al = 0

    mov ah, 02h
    mov dx, 10d
    int 21h

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA PARA IMPRIMIR EL TICKET ======|-----------------|
TICKET:
    ; |-----------------|====== COMIENZA LA IMPRESIÓN DEL TICKET DE COMPRA ======|-----------------|
    ; |--- Limpieza de pantalla ---|
    mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
    mov al, 03h ; Limpieza de pantalla.
    int 10h     ; Se ejecuta la interrupcion

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 0             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota1           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 1             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota2           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 2             ; Direccionamiento para la fila
    mov dl, 12             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota3           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 3             ; Direccionamiento para la fila
    mov dl, 12             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota4           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 4             ; Direccionamiento para la fila
    mov dl, 12             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota5           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 5             ; Direccionamiento para la fila
    mov dl, 12             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota6           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 6             ; Direccionamiento para la fila
    mov dl, 12             ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota7           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 7             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota8           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 8             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota9           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 9             ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota10          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota11          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 11            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota12          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota13          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 13            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota14          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 14            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota15          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 15            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota16          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 16            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota17          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 17            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota18          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 18            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota19          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 19            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota20           ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 20            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota21          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 21            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota22          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 22            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota23          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 23            ; Direccionamiento para la fila
    mov dl, 12            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion
    
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, cadNota24          ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |-----------------|====== COMIENZA LA IMPRESIÓN DE LOS PRODUCTOS CON SUS RESPECTIVOS PRECIOS ======|-----------------|
                                            ; |--- PRIMER PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 6             ; Direccionamiento para la fila
    mov dl, 16            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Descripción ========
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, offset prod1              ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 6             ; Direccionamiento para la fila
    mov dl, 56            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    mov al, precio1 ; al = res1 = 8, res1 = 0
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

                                            ; |--- SEGUNDO PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 7             ; Direccionamiento para la fila
    mov dl, 16            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Descripción ========
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, offset prod2              ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 7             ; Direccionamiento para la fila
    mov dl, 56            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    mov al, precio2 ; al = res1 = 8, res1 = 0
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

                                            ; |--- TERCER PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 8             ; Direccionamiento para la fila
    mov dl, 16            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Descripción ========
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, offset prod3              ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 8             ; Direccionamiento para la fila
    mov dl, 56            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    mov al, precio3 ; al = res1 = 8, res1 = 0
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

                                            ; |--- CUARTO PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 9             ; Direccionamiento para la fila
    mov dl, 16            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Descripción ========
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, offset prod4              ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 9             ; Direccionamiento para la fila
    mov dl, 56            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    mov al, precio4 ; al = res1 = 8, res1 = 0
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

                                            ; |--- QUINTO PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10            ; Direccionamiento para la fila
    mov dl, 16            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Descripción ========
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, offset prod5              ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 10            ; Direccionamiento para la fila
    mov dl, 56            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    mov al, precio5 ; al = res1 = 8, res1 = 0
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

                                            ; |--- SEXTO PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 11            ; Direccionamiento para la fila
    mov dl, 16            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Descripción ========
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, offset prod6              ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 11            ; Direccionamiento para la fila
    mov dl, 56            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    mov al, precio6 ; al = res1 = 8, res1 = 0
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

                                            ; |--- SEPTIMO PRODUCTO ---|
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 16            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Descripción ========
    mov ah, 09h                ; Función para imprimir una cadena
    lea dx, offset prod7              ; Carga la cadena
    int 21h                    ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h           ; Peticion para colocar el curso
    mov dh, 12            ; Direccionamiento para la fila
    mov dl, 56            ; Direccionamiento para la columna
    int 10h               ; Interrupcion ejecuta la instruccion

    ; ======== Precio ========
    mov ah, 02h           ; Funcion para imprimir un caracter
    mov dx, 36            ; Mover un 64 a Dx para imprimir en pantalla ($)
    int 21h               ; Ejecuta la funcion

    mov al, precio7 ; al = res1 = 8, res1 = 0
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

    SUBTOTAL1:
                                                ; |--- SUBTOTAL ---|
        ; |--- Configuración de filas y columnas ---|
        mov ah, 02h           ; Peticion para colocar el curso
        mov dh, 14            ; Direccionamiento para la fila
        mov dl, 25            ; Direccionamiento para la columna
        int 10h               ; Interrupcion ejecuta la instruccion

        ; |--- Impresión del subtotal ---|
        mov al, subtotal
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

        ; |--- Configuración de filas y columnas ---|
        mov ah, 02h           ; Peticion para colocar el curso
        mov dh, 15            ; Direccionamiento para la fila
        mov dl, 25            ; Direccionamiento para la columna
        int 10h               ; Interrupcion ejecuta la instruccion

        COMPARACION:
            cmp subtotal, 30
            ja AUMENTAR6 ; MAYOR O IGUAL
            je AUMENTAR6 ; IGUAL
            jb AUMENTAR7 ; MENOR

            AUMENTAR6:
                ; |--- Configuración de filas y columnas ---|
                mov ah, 02h           ; Peticion para colocar el curso
                mov dh, 15            ; Direccionamiento para la fila
                mov dl, 25            ; Direccionamiento para la columna
                int 10h               ; Interrupcion ejecuta la instruccion

                mov al, subtotal   ; al = 5, n1 = 0
                add al, 6   ; al = al + n2 (al = 5 + 6) = 11
                mov total, al ; res1 = al = 11, al = 0

            jmp TOTAL1

            AUMENTAR7:
                ; |--- Configuración de filas y columnas ---|
                mov ah, 02h           ; Peticion para colocar el curso
                mov dh, 15            ; Direccionamiento para la fila
                mov dl, 25            ; Direccionamiento para la columna
                int 10h               ; Interrupcion ejecuta la instruccion

                mov al, subtotal   ; al = 5, n1 = 0
                add al, 7   ; al = al + n2 (al = 5 + 6) = 11
                mov total, al ; res1 = al = 11, al = 0

            jmp TOTAL1

    TOTAL1:
                                                ; |--- TOTAL ---|
        ; |--- Configuración de filas y columnas ---|
        mov ah, 02h           ; Peticion para colocar el curso
        mov dh, 15            ; Direccionamiento para la fila
        mov dl, 25            ; Direccionamiento para la columna
        int 10h               ; Interrupcion ejecuta la instruccion
        
        ; |--- Impresión del total ---|
        mov al, total
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

    ; |--- Saltos de línea ---|
    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA FINALIZACIÓN DEL PROGRAMA ======|-----------------|
FIN:
.exit   ; Termina el código.
end     ; Termina todo el programa.