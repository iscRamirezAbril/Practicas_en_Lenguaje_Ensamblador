; --- Practica 15. Sentencia If para imprimir tres listas. ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small ; Inicializa nuestro programa. Se le avisa al procesador que se utilizará un pequeño espacio de memoria.
.stack 100 ; segmento especial de memoria para operar las instrucciones.
.data ; A partir de esta instrucción, se empieza el código.

; |-----------------|====== DECLARACIÓN DE CARACTERES ======|-----------------|
pregunta db 'Que frase desea imprimir: ','$' ; Declaración de una cadena de caracteres.
res1 db 20 dup(' '),'$' ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres

; |-----------------|====== DECLARACIÓN DE VARIABLES ======|-----------------|
cont1 db 10 ; Declaración de la Variable 1, que servirá para nuestro primer contador, que servirá para nuestro tercer contador para el direccionamiento del cursor para la posición de la primer columna.
cont2 db 0 ; Declaración de la Variables 2, que servirá para nuestro segundo contador.
cont3 db 5 ; Declaración de la Variable 3.
cont4 db 40 ; Declaración de la Variable 4, que servirá para nuestro cuarto contador para el direccionamiento del cursor para la posición de la segunda columna.

; |-----------------|====== COMIENZA EL CÓDIGO ======|-----------------|
.code

; Requerimiento de permiso de imprimir cadenas.
mov ax,@data
mov ds,ax

; |--- Limpieza de pantalla ---|
mov ah, 00 ; (interrupción) Pedir permiso para utilizar la pantalla.
mov al, 03h ; Limpieza de pantalla.
int 10h ; Se ejecuta la interrupción.

;-----------------------------------------------------------
; |--- Configuración de filas y columnas para el posicionamiento de la pregunta ---|
mov ah, 02h ; Peticion para color el cursor
mov dh, 0 ; Direccionamiento para la fila
mov dl, 0 ; Direccionamiento para la columna
int 10h ; Interuppcion que ejecuta la instruccion.

mov ah, 09h ; Función para imprimir una cadena.
lea dx, pregunta ; Carga a dx lo que hay en ‘pregunta’.
int 21h ; Se ejecuta la interrupción (Imprimir la cadena de nombre "pregunta").

mov ah, 3fh ; Cargar 3fh al registro "ah".
mov bx, 00 ; Cargar 00 al registro bx.
mov cx, 20 ; Limita la cantidad de caracteres que el usuario puede capturar.
mov dx, offset [res1] ; Lo que se capture en la cadena "res1" se mueve al registro dx.
int 21h ; Se ejecuta la interrupción (captura de cadenas).
;-----------------------------------------------------------

; |--- Inicio del primer ciclo ---|
ciclo1: ; inicia ciclo

inc cont1 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.
inc cont2 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.

; |--- Configuración de filas y columnas para el posicionamiento de la impresión de caracteres ---|
mov ah, 02h ; Peticion para color el cursor.
mov dh, cont1 ; Direccionamiento para la fila. Como puede observar, se va a utilizar le valor del contador que se inicializó en "5".
mov dl, 10 ; Direccionamiento para la columna.
int 10h    ; Interuppcion ejecuta la instrucción.

mov dx, 000 ; Caracter para imprimir un espacio.
mov ah, 02h ; Se mueve 02h al registro "ah".
int 21h ; Se ejecuta la interrupción (Imprimir el espacio en blanco).

mov ah, 09h ; Cargar 09h al registro ah.
lea dx, res1 ; Carga a dx lo que hay en ‘res1’.
int 100001b ; ; Se ejecuta la interrupción. (Imprimir la cadena de nombre "res1", que es lo que capturó el usuario) (Se encuentra escrito en binario).

; |--- Configuración de filas y columnas para el posicionamiento de la impresión de caracteres ---|
mov ah, 02h ; Peticion para color el cursor.
mov dh, cont1 ; Direccionamiento para la fila. Como puede observar, se va a utilizar le valor del contador que se inicializó en "5".
mov dl, 45 ; Direccionamiento para la columna.
int 10h    ; Interuppcion ejecuta la instrucción.

mov dx, 000 ; Caracter para imprimir un espacio.
mov ah, 02h ; Se mueve 02h al registro "ah".
int 21h ; Se ejecuta la interrupción (Imprimir el espacio en blanco).

mov ah, 09h ; Cargar 09h al registro ah.
lea dx, res1 ; Carga a dx lo que hay en ‘res1’.
int 100001b ; ; Se ejecuta la interrupción. (Imprimir la cadena de nombre "res1", que es lo que capturó el usuario) (Se encuentra escrito en binario).

; |--- Estas dos instrucciones no son necesarias, ya que nunca se cumplen. ---|
; cmp conta, 5 ; Cuando la condición ("conta" = 5) se cumple, la operación es igual a "0", en caso contrario, será igual a "1".
; jz fin ; Debido a que la comparación anterior siempre es "1", esta instrucción nunca se cumple.

cmp cont2, 4 ; Esta instrucción ejecutará una "comparación" entre "conta2" y el valor de "5", en donde, si los valores coinciden, esta operación tendrá el valor de "0", en caso contrario, tomará el valor de "1".
jz fin ; Si la operación anterior tiene un valor de "0", esta instrucción se cumplirá.
jmp ciclo1 ; Esta instrucción regresa a la etiqueta "ciclo", que es el inicio del primer ciclo.

; |--- Fin del primer ciclo ---|
fin:

; |--- Inicio del segundo ciclo ---|
ciclo2: ; inicia ciclo

inc cont3 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.
inc cont4 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.

; |--- Configuración de filas y columnas ---|
mov ah, 02h ; Peticion para color el cursor
mov dh, cont3 ; Direccionamiento para la fila
mov dl, 28 ; Direccionamiento para la columna
int 10h ; Interuppcion ejecuta la instruccion

mov dx, 000 ; Caracter para imprimir un espacio.
mov ah, 02h ; Se mueve 02h al registro "ah".
int 21h ; Se ejecuta la interrupción (Imprimir el espacio en blanco).

mov ah, 09h ; Cargar 09h al registro ah.
lea dx, res1 ; Carga a dx lo que hay en ‘res1’.
int 100001b ; ; Se ejecuta la interrupción. (Imprimir la cadena de nombre "res1", que es lo que capturó el usuario) (Se encuentra escrito en binario).

; |--- Estas dos instrucciones no son necesarias, ya que nunca se cumplen. ---|
; cmp conta3, 47 ; Cuando la condición ("conta3" = 47) se cumple, la operación es igual a "0", en caso contrario, será igual a "1".
; jz fin1 ; Debido a que la comparación anterior siempre es "1", esta instrucción nunca se cumple.

cmp cont4, 57 ; Esta instrucción ejecutará una "comparación" entre "conta4" y el valor de "47", en donde, si los valores coinciden, esta operación tendrá el valor de "0", en caso contrario, tomará el valor de "1".
jz fin1 ; Si la operación anterior tiene un valor de "0", esta instrucción se cumplirá.
jmp ciclo2 ; Esta instrucción regresa a la etiqueta "ciclo1", que es el inicio del segundo ciclo.

; |--- Fin del segundo ciclo ---|
fin1:

.exit ; Termina el código.
end ; Termina todo el programa.