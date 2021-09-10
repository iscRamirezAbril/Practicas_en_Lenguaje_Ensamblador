; --- Practica 11. Captura de 10 numeros en diferentes variables e imprimirlos en forma de lista. (0-9). ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; |-----------------|====== DECLARACIÓN DE VARIABLES PARA CAPTURA ======|-----------------|
char0 db 0 ; declaración de variable para el caracter "0"
char1 db 0 ; declaración de variable para el caracter "1"
char2 db 0 ; declaración de variable para el caracter "2"
char3 db 0 ; declaración de variable para el caracter "3"
char4 db 0 ; declaración de variable para el caracter "4"
char5 db 0 ; declaración de variable para el caracter "5"
char6 db 0 ; declaración de variable para el caracter "6"
char7 db 0 ; declaración de variable para el caracter "7"
char8 db 0 ; declaración de variable para el caracter "8"
char9 db 0 ; declaración de variable para el caracter "9"

; |-----------------|====== DECLARACIÓN DE VARIABLES PARA CARACTERES ======|-----------------|
titulo0 db "Programa que captura 10 numeros en diferentes variables y los muestra en forma de lista. (0-9).$"

titulo1 db "|======== CAPTURA DE CARACTERES ========|$"
preg0 db "Ingrese el primer caracter:","$"
preg1 db "Ingrese el segundo caracter:","$"
preg2 db "Ingrese el tercer caracter:","$"
preg3 db "Ingrese el cuarto caracter:","$"
preg4 db "Ingrese el quinto caracter:","$"
preg5 db "Ingrese el sexto caracter:","$"
preg6 db "Ingrese el septimo caracter:","$"
preg7 db "Ingrese el octavo caracter:","$"
preg8 db "Ingrese el noveno caracter:","$"
preg9 db "Ingrese el decimo caracter:","$"

titulo2 db "|======== IMPRESION DE CARACTERES ========|$"
titulo3 db "La lista de caracteres queda de la siguiente manera:$"
fin db "Gracias por utilizar el programa! =)$"

; |-----------------|====== COMIENZA EL CÓDIGO ======|-----------------|
.code
    mov ax, seg @data
    mov ds, ax

    ; |--- Limpieza de pantalla ---|
    mov ah, 00h
    mov al, 03h
    int 10h

    ; |--- Impresión del título ---|
    mov ah, 09h
    mov dx, offset titulo0
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Impresión del título1 "CAPTURA DE CARACTERES" ---|
    mov ah, 09h
    mov dx, offset titulo1
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----------------|====== COMIENZA LA CAPTURA DE LOS CARCATERES ======|-----------------|

    ; |-----|====== CAPTURA DEL PRIMER CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el primer caracter: "
    mov ah, 09h
    mov dx, offset preg0
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char0" ---|
    mov ah, 01h
    int 21h
    mov char0, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL SEGUNDO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el segundo caracter: "
    mov ah, 09h
    mov dx, offset preg1
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char1" ---|
    mov ah, 01h
    int 21h
    mov char1, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL TERCER CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el tercer caracter: "
    mov ah, 09h
    mov dx, offset preg2
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char2" ---|
    mov ah, 01h
    int 21h
    mov char2, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL CUARTO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el cuarto caracter: "
    mov ah, 09h
    mov dx, offset preg3
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char3" ---|
    mov ah, 01h
    int 21h
    mov char3, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL QUINTO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el segundo caracter: "
    mov ah, 09h
    mov dx, offset preg4
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char4" ---|
    mov ah, 01h
    int 21h
    mov char4, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL SEXTO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el segundo caracter: "
    mov ah, 09h
    mov dx, offset preg5
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char5" ---|
    mov ah, 01h
    int 21h
    mov char5, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL SÉPTIMO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el segundo caracter: "
    mov ah, 09h
    mov dx, offset preg6
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char6" ---|
    mov ah, 01h
    int 21h
    mov char6, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL OCTAVO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el segundo caracter: "
    mov ah, 09h
    mov dx, offset preg7
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char7" ---|
    mov ah, 01h
    int 21h
    mov char7, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL NOVENO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el segundo caracter: "
    mov ah, 09h
    mov dx, offset preg8
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char8" ---|
    mov ah, 01h
    int 21h
    mov char8, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL DÉCIMO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el segundo caracter: "
    mov ah, 09h
    mov dx, offset preg9
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char9" ---|
    mov ah, 01h
    int 21h
    mov char9, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Limpieza de pantalla ---|
    mov ah, 00h
    mov al, 03h
    int 10h

    ; |-----------------|====== COMIENZA LA IMPRESIÓN DE CARACTERES ======|-----------------|
    ; |--- Impresión del título2 "IMPRESION DE CARACTERES" ---|
    mov ah, 09h
    mov dx, offset titulo2
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Impresión del título3 "La lista de caracteres queda de la siguiente manera:" ---|
    mov ah, 09h
    mov dx, offset titulo3
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char0" ---|
    mov ah, 02h
    mov dl, char0
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char1" ---|
    mov ah, 02h
    mov dl, char1
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char2" ---|
    mov ah, 02h
    mov dl, char2
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char3" ---|
    mov ah, 02h
    mov dl, char3
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char4" ---|
    mov ah, 02h
    mov dl, char4
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char5" ---|
    mov ah, 02h
    mov dl, char5
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char6" ---|
    mov ah, 02h
    mov dl, char6
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char7" ---|
    mov ah, 02h
    mov dl, char7
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char8" ---|
    mov ah, 02h
    mov dl, char8
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char9" ---|
    mov ah, 02h
    mov dl, char9
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Impresión del mensaje "Gracias por utilizar el programa! =)" ---|
    mov ah, 09h
    mov dx, offset fin
    int 21h

; |-----------------|====== FIN DEL PROGRAMA ======|-----------------|
.exit
end

; Practica 12: Capturar un número de telefono e imprimirlo.