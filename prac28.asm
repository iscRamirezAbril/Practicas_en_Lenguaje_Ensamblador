; --- Practica 28. Macros. ---
; Unidad 3: Modularización.
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

; |--- Declaración de Macros ---|
; |= Macro para impresión de cadenas =|
imprime MACRO t
    lea dx, t
    mov ah, 9
    int 21h
ENDM ; Break

; |= Macro para limpiar pantalla =|
limpia MACRO
    mov ah, 00
    mov al, 03h
    int 10h
ENDM ; Break

; |= Macro para salto de línea =|
salto MACRO
    mov ah, 02h
    mov dl, 0ah
    int 21h
ENDM ; Break

; |= Macro para captura =|
captura MACRO o
    mov ah, 3fh
    mov bx, 00
    mov cx, 50
    mov dx, offset [o]
    int 21h
ENDM ; Break

; |= Macro para la espera de selección de una tecla =|
tecla MACRO o
    mov ah, 01h
    int 21h
ENDM ; Break

; |= Macro para el posicionamiento del cursor =|
cursor MACRO f, c
    mov ah, 02h           ; Petición para colocar el cursor
    mov dh, f            ; Direccionamiento para la fila
    mov dl, c            ; Direccionamiento para la columna
    int 10h               ; Ejecutamos la interrupcion para posicionamiento
ENDM ; Break

; |= Macro para imprimir caracteres =|
caracter MACRO h
    mov ah, 02h ; funcion para imprimir un caracter
    mov dx, h
    int 21h ; ejecuta la funcion
ENDM ; Break

; |= Macro para capturar caracteres ingresados por el usuario =|
caracterUsuario MACRO
    mov ah, 01h
    int 21h
    mov cl, al ; mover al a cl
ENDM ; Break

; |= Macro para imprimir caracteres ingresados por el usuario =|
imprimeCaracterUsuario MACRO
    mov ah, 02h
    mov dl, cl
    int 21h
ENDM ; Break

; |= Macro para capturar caracteres ingresados por el usuario =|
capturaVarUsuario MACRO v
    mov ah, 01h
    int 21h
    mov v, al
ENDM ; Break

; |= Macro para imprimir variables ingresados por el usuario =|
imprimeVarUsuario MACRO v
    mov ah, 02h
    mov dl, v
    int 21h
ENDM ; Break

.model small
.stack
.data

; |-----------------|====== DECLARACIÓN DE CADENAS DE CARACTERES PARA EL MENÚ ======|-----------------|
cadMenu1 db  "            +----------------------------------------------------+$"
cadMenu2 db  "            |       |-- MENU DE UTILIZACION DE MACROS --|        |$"
cadMenu3 db  "            |               Ramirez Flores Abril                 |$"
cadMenu4 db  "            |                      19211715                      |$"
cadMenu5 db  "            |                                                    |$"
cadMenu6 db  "            + ----------------       Menu       ---------------- +$"
cadMenu7 db  "            |                                                    |$"
cadMenu8 db  "            | A) Practica 2: Impresion de mi nombre.             |$"
cadMenu9 db  "            | B) Practica 4: Impresion de una cancion.           |$"
cadMenu10 db "            | C) Practica 7: Captura e impresion de 3 caracteres.|$"
cadMenu11 db "            | D) Practica 8: Cuestionario de 7 preguntas.        |$"
cadMenu12 db "            | E) Practica 10: Captura de 2 variables.            |$"
cadMenu13 db "            | F) Practica 13: Impresion de una lista.            |$"
cadMenu14 db "            |                                                    |$"
cadMenu15 db "            |    Que desea realizar?                             |$"
cadMenu16 db "            +----------------------------------------------------+$"

opcion db 2 dup(' '),'$' ; Variable encargada para la captura de la opción del menú.
readkeyOp  db "     Presione cualquier tecla para regresar al menu...$"

; |-----------------|====== DECLARACIÓN DE CADENAS PARA LA PRACTICA 4 ======|-----------------|
; |--- Título de la canción ---|
msg0 db "                       PUT A LITTLE LOVE ON ME - NIALL HORAN$"

; |--- Primera estrofa ---|
msg1 db "We fight, we get high holding on to love$"
msg2 db "We came down 'cause there was nothing holding us$"
msg3 db "Is it wrong that I still wonder where you are?$"
msg4 db "Is it wrong that I still don't know my heart?$"

; |--- Segunda estrofa ---|
msg5 db "Are you all dressed up but with nowhere to go?$"
msg6 db "Are your tears falling down when the lights are low?$"
msg7 db "Another Friday night tryna put on a show$"
msg8 db "Do you hate the weekend 'cause nobody's calling?$"
msg9 db "Another Friday night tryna put on a show$"
msg10 db "I've still got so much love hidden beneath this skin$"
msg11 db "So darling$"

; |--- Tercer estrofa ---|
msg12 db "Put a little love on me$"
msg13 db "And put a little love on me$"
msg14 db "When the lights come up and there's no shadows dancing$"
msg15 db "I look around as my heart is collapsing$"
msg16 db "'Cause you're the only one I need$"
msg17 db "To put a little love on me$"

; |-----------------|====== DECLARACIÓN DE CADENAS PARA LA PRACTICA 7 ======|-----------------|
Ingresar1 db "Ingrese el primer caracter: $"
Mostrar1 db "El primer caracter que ingreso es el $"
Ingresar2 db "Ahora ingrese un segundo caracter: $"
Mostrar2 db "El caracter 2 que usted ingreso es el $"
Ingresar3 db "Por ultimo, ingrese un tercer caracter: $"
Mostrar3 db "El ultimo caracter ingresado es el $"

; |-----------------|====== DECLARACIÓN DE CADENAS PARA LA PRACTICA 8 ======|-----------------|
preg1 db "1. Cual es tu nombre?: ","$"
res1 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg2 db "2. Cual es tu pasatiempo favorito?: ","$"
res2 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg3 db "3. Cual es tu pelicula favorita?: ","$"
res3 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg4 db "4. Cual es tu artista favorito?: ","$"
res4 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg5 db "5. Cual es tu comida favorita?: ","$"
res5 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg6 db "6. Que carrera estas estudiando?: ","$"
res6 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg7 db "7. Tienes hermanos?: ","$"
res7 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
texto1 db "Tu respuesta es: ","$"

; |-----------------|====== DECLARACIÓN DE CADENAS PARA LA PRACTICA 10 ======|-----------------|
titulo1 db "                   |======== CAPTURA DE VARIABLES ========|$"
pregunta1 db "Ingrese la primera variable: ","$"
pregunta2 db "Ingrese la segunda variable: ","$"
titulo2 db "                  |======== IMPRESION DE VARIABLES ========|$"
respuesta1 db "La primera variable que ingreso es: $"
respuesta2 db "La segunda variable que ingreso es: $"

char1 db 0 ; declaración de variable para el primer caracter
char2 db 0 ; declaración de variable para el segundo caracter

; |-----------------|====== DECLARACIÓN DE CADENAS PARA LA PRACTICA 13 ======|-----------------|
preguntaOracion db 'Favor de capturar una oracion corta: ','$'
charOracion db 100 dup(" "),"$" 
preguntaNumero db 'Favor de capturar un numero: ','$'

char0 db 0
conta db 5

; |-----------------|====== DECLARACIÓN DE OTRAS CADENAS ======|-----------------|
cadTituloPrac2 db "                 |===== Practica 2: Impresion de mi nombre =====|$"
cadTituloPrac4 db "                |===== Practica 4: Impresion de una cancion =====|$"
cadTituloPrac7 db "           |===== Practica 7: Captura e impresion de 3 caracteres =====|$"
cadTituloPrac8 db "               |===== Practica 8: Cuestionario de 7 pregunta =====|$"
cadTituloPrac10 db "               |===== Practica 10: Captura de 2 variables =====|$"
cadTituloPrac13 db "               |===== Practica 13: Impresion de una lista =====|$"

; |-----------------|====== COMIENZA EL CÓDIGO ======|-----------------|
.code
; |--- Instrucción necesaria para utilizar las Macros ---|
.startup

; |--- Inicializar variables para el permiso de imprimir cadenas ---|
mov ax, @data
mov ds, ax

; |-----------------|====== COMIENZA LA ETIQUETA DEL MENÚ ======|-----------------|
MENU:
    limpia              ; Llamada a la Macro que limpia la pantalla.
    imprime cadMenu1    ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu2    ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu3    ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu4    ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu5    ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu6    ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu7    ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu8    ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu9    ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu10   ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu11   ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu12   ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu13   ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu14   ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu15   ; Llamada a la Macro de impresión.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime cadMenu16   ; Llamada a la Macro de impresión.

; |-----------------|====== CAPTURA DE LA OPCIÓN DESEADA DEL MENÚ ======|-----------------|
CAPTURA_OPCIONMENU:
    cursor 14, 37
    captura opcion

; CASOS:
limpia  ; Llamada a la Macro que limpia la pantalla.

CASE_A:
    cmp opcion, 065
    jz PRACTICA_2
    jmp CASE_B

CASE_B:
    cmp opcion, 066
    jz PRACTICA_4
    jmp CASE_C

CASE_C:
    cmp opcion, 067
    jz PRACTICA_7
    jmp CASE_D

CASE_D:
    cmp opcion, 068
    jz PRACTICA_8
    jmp CASE_E

CASE_E:
    cmp opcion, 069
    jz PRACTICA_10
    jmp CASE_F

CASE_F:
    cmp opcion, 070
    jz PRACTICA_13
    jmp FIN

; |-----------------|====== COMIENZA LA ETIQUETA DEL READKEY ======|-----------------|
READKEY:
    salto               ; Llamada a la Macro que realiza un salto de línea.
    salto               ; Llamada a la Macro que realiza un salto de línea.
    imprime readkeyOp   ; Llamada a la Macro de impresión.
    tecla               ; Llamada a la Macro de espera de una tecla.

jmp MENU

; |-----------------|====== COMIENZA LA ETIQUETA PARA REALIZAR LA PRACTICA 2 ======|-----------------|
PRACTICA_2:
    imprime cadTituloPrac2
    salto
    caracter 65
    caracter 66
    caracter 82
    caracter 73
    caracter 76

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA PARA REALIZAR LA PRACTICA 4 ======|-----------------|
PRACTICA_4:
    imprime cadTituloPrac4
    salto
    imprime msg0
    salto
    salto
    imprime msg1
    salto
    imprime msg2
    salto
    imprime msg3
    salto
    imprime msg4
    salto
    salto
    imprime msg5
    salto
    imprime msg6
    salto
    imprime msg7
    salto
    imprime msg8
    salto
    imprime msg9
    salto
    imprime msg10
    salto
    imprime msg11
    salto
    salto
    imprime msg12
    salto
    imprime msg13
    salto
    imprime msg14
    salto
    imprime msg15
    salto
    imprime msg16
    salto
    imprime msg17 

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA PARA REALIZAR LA PRACTICA 7 ======|-----------------|
PRACTICA_7:
    imprime cadTituloPrac7
    salto
    salto
    imprime Ingresar1
    caracterUsuario
    salto
    imprime Mostrar1
    imprimeCaracterUsuario
    salto
    salto
    imprime Ingresar2
    caracterUsuario
    salto
    imprime Mostrar2
    imprimeCaracterUsuario
    salto
    salto
    imprime Ingresar3
    caracterUsuario
    salto
    imprime Mostrar3
    imprimeCaracterUsuario

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA PARA REALIZAR LA PRACTICA 8 ======|-----------------|
PRACTICA_8:
    imprime cadTituloPrac8
    salto
    salto
    imprime preg1
    captura res1
    imprime texto1
    imprime res1

    imprime preg2
    captura res2
    imprime texto1
    imprime res2

    imprime preg3
    captura res3
    imprime texto1
    imprime res3

    imprime preg4
    captura res4
    imprime texto1
    imprime res4

    imprime preg5
    captura res5
    imprime texto1
    imprime res5

    imprime preg6
    captura res6
    imprime texto1
    imprime res6

    imprime preg7
    captura res7
    imprime texto1
    imprime res7

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA PARA REALIZAR LA PRACTICA 10 ======|-----------------|
PRACTICA_10:
    imprime cadTituloPrac10
    salto
    salto
    imprime titulo1
    salto
    imprime pregunta1
    capturaVarUsuario char1
    salto
    imprime pregunta2
    capturaVarUsuario char2
    salto
    salto
    imprime titulo2
    salto
    imprime respuesta1
    imprimeVarUsuario char1
    salto
    imprime respuesta2
    imprimeVarUsuario char2

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA PARA REALIZAR LA PRACTICA 13 ======|-----------------|
PRACTICA_13:
    imprime cadTituloPrac13
    salto
    salto
    imprime preguntaOracion
    captura charOracion
    salto
    imprime preguntaNumero
    capturaVarUsuario char0

    ; |-----------------|====== INICIO DEL CICLO ======|-----------------|
    Ciclo:
    inc conta
    cursor conta, 1
    imprimeVarUsuario char0
    caracter 000
    imprime charOracion

    cmp conta, 15 ; if conta = 14
    jz finCiclo
    jmp Ciclo

    ; |-----------------|====== TERMINA EL CICLO ======|-----------------|
    finCiclo:

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE FINALIZACIÓN DEL PROGRAMA ======|-----------------|
FIN:
    .exit   ; Termina el código.
    end     ; Termina todo el programa.