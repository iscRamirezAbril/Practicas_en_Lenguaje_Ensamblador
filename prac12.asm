; --- Practica 12. Captura de un número de celular, haciendo uso de cadenas y variavles. ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

; Mexico(+52) 6643352557

; |-----------------|====== DECLARACIÓN DE VARIABLES PARA CAPTURA ======|-----------------|
; |--- Caracteres correspondientes a la LADA del país ---|
charLADA1 db 0
charLADA2 db 0

; |--- Caracteres correspondientes a los dígitos de celular ---|
charCEL1 db 0 
charCEL2 db 0
charCEL3 db 0
charCEL4 db 0
charCEL5 db 0
charCEL6 db 0
charCEL7 db 0
charCEL8 db 0
charCEL9 db 0
charCEL10 db 0

; |-----------------|====== DECLARACIÓN DE VARIABLES PARA CARACTERES ======|-----------------|
titulo0 db "Programa que captura e imprime un numero de celular$"

tituloPAIS db "|======== CAPTURA DE PAIS ========|$"
mensajePAIS db "Favor de capturar el pais al que pertenece su numero de celular: ","$"
charPais db 100 dup(" "),"$" 

tituloLADA db "|======== CAPTURA DE LADA ========|$"
mensajeLADA db "Favor de capturar los dos digitos correspondientes a la LADA de su pais: ","$"
pregLADA1 db "Primer caracter:","$"
pregLADA2 db "Segundo caracter:","$"

tituloCELULAR db "|======== CAPTURA DE DIGITOS DE CELULAR ========|$"
mensajeCELULAR db "Favor de capturar los dos digitos de su numero de celular: ","$"
pregCEL1 db "Ingrese el primer digito:","$"
pregCEL2 db "Ingrese el segundo digito:","$"
pregCEL3 db "Ingrese el tercer digito:","$"
pregCEL4 db "Ingrese el cuarto digito:","$"
pregCEL5 db "Ingrese el quinto digito:","$"
pregCEL6 db "Ingrese el sexto digito:","$"
pregCEL7 db "Ingrese el septimo digito:","$"
pregCEL8 db "Ingrese el octavo digito:","$"
pregCEL9 db "Ingrese el noveno digito:","$"
pregCEL10 db "Ingrese el decimo digito:","$"

tituloIMPRESION db "|======== IMPRESION DE NUMERO DE CELULAR ========|$"
mensajeIMPRESION db "Su numero de celular es el siguiente: $"

; otros caracteres
extra0 db "($"
extra1 db "+$"
extra2 db ")$"
extra3 db " $"
espacio db "                                                                      ","$"

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
    lea dx, titulo0
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

    ; |-----------------|====== COMIENZA LA CAPTURA DE DATOS ======|-----------------|
    ; |-----|====== CAPTURA DEL PAIS ======|-----|

    ; |--- Impresión del títuloPAIS "CAPTURA DE PAIS" ---|
    mov ah, 09h
    lea dx, tituloPAIS
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Impresión del mensajePAIS "Favor de capturar el pais al que pertenece su numero de celular" ---|
    mov ah, 09h
    lea dx, mensajePAIS
    int 21h

    ; |--- Captura del pais en una cadena ---|
    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [charPais]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |-----------------|====== COMIENZA LA CAPTURA DE LA LADA ======|-----------------|

    ; |-----|====== CAPTURA DEL PRIMER CARACTER ======|-----|
    ; |--- Impresión del títuloLADA "CAPTURA DE LADA" ---|
    mov ah, 09h
    lea dx, tituloLADA
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; Impresión del mensaje "Favor de capturar los dos dígitos correspondientes a la LADA de su pais"
    mov ah, 09h
    lea dx, mensajeLADA
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; Impresión del mensaje "Primer caracter:"
    mov ah, 09h
    mov dx, offset pregLADA1
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charLADA1" ---|
    mov ah, 01h
    int 21h
    mov charLADA1, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL SEGUNDO CARACTER ======|-----|
    ; Impresión del mensaje "Segundo caracter:"
    mov ah, 09h
    mov dx, offset pregLADA2
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charLADA1" ---|
    mov ah, 01h
    int 21h
    mov charLADA2, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |-----------------|====== COMIENZA LA CAPTURA DE LOS DÍGITOS DE CELULAR ======|-----------------|

    ; |--- Impresión del títuloCELULAR "CAPTURA DE DIGITOS DE CEULAR" ---|
    mov ah, 09h
    lea dx, tituloCELULAR
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; Impresión del mensajeCELULAR "Favor de capturar los dos dígitos de su numero de celular:"
    mov ah, 09h
    lea dx, mensajeCELULAR
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |-----|====== CAPTURA DEL PRIMER DIGITO ======|-----|
    ; Impresión del mensaje "Ingrese el primer digito: "
    mov ah, 09h
    mov dx, offset pregCEL1
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charCEL1" ---|
    mov ah, 01h
    int 21h
    mov charCEL1, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL SEGUNDO DIGITO ======|-----|
    ; Impresión del mensaje "Ingrese el segundo caracter: "
    mov ah, 09h
    mov dx, offset pregCEL2
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charCEL3" ---|
    mov ah, 01h
    int 21h
    mov charCEL2, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL TERCER DIGITO ======|-----|
    ; Impresión del mensaje "Ingrese el tercer digito: "
    mov ah, 09h
    mov dx, offset pregCEL3
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charCEL3" ---|
    mov ah, 01h
    int 21h
    mov charCEL3, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL CUARTO DIGITO ======|-----|
    ; Impresión del mensaje "Ingrese el cuarto digito: "
    mov ah, 09h
    mov dx, offset pregCEL4
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charCEL4" ---|
    mov ah, 01h
    int 21h
    mov charCEL4, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL QUINTO DIGITO ======|-----|
    ; Impresión del mensaje "Ingrese el quinto digito: "
    mov ah, 09h
    mov dx, offset pregCEL5
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charCEL5" ---|
    mov ah, 01h
    int 21h
    mov charCEL5, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL SEXTO DIGITO ======|-----|
    ; Impresión del mensaje "Ingrese el sexto digito "
    mov ah, 09h
    mov dx, offset pregCEL6
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charCEL6" ---|
    mov ah, 01h
    int 21h
    mov charCEL6, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL SÉPTIMO DIGITO ======|-----|
    ; Impresión del mensaje "Ingrese el septimo digito "
    mov ah, 09h
    mov dx, offset pregCEL7
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charCEL7" ---|
    mov ah, 01h
    int 21h
    mov charCEL7, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL OCTAVO DIGITO ======|-----|
    ; Impresión del mensaje "Ingrese el octavo digito: "
    mov ah, 09h
    mov dx, offset pregCEL8
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charCEL8" ---|
    mov ah, 01h
    int 21h
    mov charCEL8, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL NOVENO DIGITO ======|-----|
    ; Impresión del mensaje "Ingrese el noveno digito: "
    mov ah, 09h
    mov dx, offset pregCEL9
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charCEL9" ---|
    mov ah, 01h
    int 21h
    mov charCEL9, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL DÉCIMO DIGITO ======|-----|
    ; Impresión del mensaje "Ingrese el decimo digito: : "
    mov ah, 09h
    mov dx, offset pregCEL10
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "charCEL10" ---|
    mov ah, 01h
    int 21h
    mov charCEL10, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----------------|====== COMIENZA LA IMPRESIÓN DE CARACTERES ======|-----------------|

    ; |--- Limpieza de pantalla ---|
    mov ah, 00h
    mov al, 03h
    int 10h
    
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 04 ; Direccionamiento para la fila
    mov dl, 01 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; |--- Impresión del títuloIMPRESION "IMPRESION DE NUMERO DE CELULAR" ---|

    ; |--- Limpieza de pantalla ---|
    mov ah, 00h
    mov al, 03h
    int 10h


    mov ah, 09h
    mov dx, offset tituloIMPRESION
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
    mov dx, offset mensajeIMPRESION
    int 21h

    ; |--- Impresión de la cadena "charPais" ---|
    mov ah, 09h
    lea dx, charPais
    int 21h
    
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 02 ; Direccionamiento para la fila
    mov dl, 45 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, extra0
    int 21h

    mov ah, 09h
    lea dx, extra1
    int 21h

    mov ah, 02h
    mov dl, charLADA1
    int 21h

    mov ah, 02h
    mov dl, charLADA2
    int 21h

    mov ah, 09h
    lea dx, extra2
    int 21h

    mov ah, 09h
    lea dx, extra3
    int 21h

    mov ah, 09h
    lea dx, charCEL1
    int 21h

    mov ah, 09h
    lea dx, charCEL2
    int 21h

    mov ah, 09h
    lea dx, charCEL3
    int 21h

    mov ah, 09h
    lea dx, charCEL4
    int 21h

    mov ah, 09h
    lea dx, charCEL5
    int 21h

    mov ah, 09h
    lea dx, charCEL6
    int 21h

    mov ah, 09h
    lea dx, charCEL7
    int 21h

    mov ah, 09h
    lea dx, charCEL8
    int 21h

    mov ah, 09h
    lea dx, charCEL9
    int 21h

    mov ah, 09h
    lea dx, charCEL10
    int 21h

    mov ah, 09h
    lea dx, charCEL1
    int 21h
    
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 02 ; Direccionamiento para la fila
    mov dl, 60 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    mov ah, 09h
    mov dx, offset espacio
    int 21h

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 04 ; Direccionamiento para la fila
    mov dl, 02 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    ; |--- Impresión del mensaje "Gracias por utilizar el programa! =)" ---|
    mov ah, 09h
    mov dx, offset fin
    int 21h

; |-----------------|====== FIN DEL PROGRAMA ======|-----------------|
.exit
end