; --- Practica 16. Menú de opciones con sentencia if. ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small ; Inicializa nuestro programa. Se le avisa al procesador que se utilizará un pequeño espacio de memoria.
.stack 100 ; segmento especial de memoria para operar las instrucciones.
.data ; A partir de esta instrucción, se empieza el código.

; |-----------------|====== DECLARACIÓN DE CARACTERES Y VARIABLES ======|-----------------|

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para el menú de opciones |=====
menuTitulo db "    |=====| BIENVENIDO AL PROGRAMA DE PRACTICAS DE ABRIL RAMIREZ! |=====|$"

menuChar1 db "    Escriba el numero correspondiente a la practica que desee visualizar...$"
menuChar2 db "    Para salir del programa, presione una tecla distintia a las de menu.   $"

menuOpcionA db " ... A.- Practica 1: Introduccion al lenguaje ensamblador.             $"
menuOpcionB db " ... B.- Practica 2: Imprimir mi nombre con lenguaje ensamblador.      $"
menuOpcionC db " ... C.- Practica 3: Mostrar portada institucional.                    $"
menuOpcionD db " ... D.- Practica 4: Imprmir la letra de una cancion.                  $"
menuOpcionE db " ... E.- Practica 5: Imprimir el juego del gato.                       $"
menuOpcionF db " ... F.- Practica 6: Imprmir una boleta de calificaciones.             $"
menuOpcionG db " ... G.- Practica 7: Impresion de 3 caracteres distintos.              $"
menuOpcionH db " ... H.- Practica 8: Imprimir un cuestionario de 7 preguntas.          $"
menuOpcionI db " ... I.- Practica 9: Imprimir una boleta medica.                       $"
menuOpcionJ db " ... J.- Practica 10: Captura e impresion de caracteres con variables. $"
menuOpcionK db " ... K.- Practica 11: Impresion de 10 caracteres en forma de lista.    $"
menuOpcionL db " ... L.- Practica 12: Captura e impresion de un numero de celular.     $"
menuOpcionM db " ... M.- Practica 13: Captura de una lista con sentencia if.           $"
menuOpcionN db " ... N.- Practica 14: Impresion de dos listas con sentencias if.       $"
menuOpcionO db " ... O.- Practica 15: Impresion de una figura con sentencias if.       $"

menuchar3 db "  |----- Seleccione la practica que desea visualizar:   -----|           $"
opcion db 2 dup(' '),'$' ; Cadena donde se guardará la opción capturada.
readkeyOp  db "     Presione cualquier tecla para regresar al menu...$"

; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #1 |=====
tituloPrac1 db "       |----- Practica 1: Introduccion al lenguaje ensamblador -----|$"
charpractica1_0   db "   La primera practica consistio en realizar una presentacion de Power Point,$"
charpractica1_1   db "   por lo que no es posible visualizarla desde la terminal...$"
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #2 |=====
tituloPrac2 db "     |----- Practica 2: Imprimir mi nombre con lenguaje ensamblador -----|$"
instruccionPrac2 db "     Programa que imprime mi nombre, letra por letra.$"
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #3 |=====
tituloPrac3 db "          |----- Practica 3: Mostrar portada institucional. -----|$"
instruccionPrac3 db "     Programa que imprime la portada institucional del TEC.$"
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #4 |=====
tituloPrac4 db "       |----- Practica 4: Imprmir la letra de una cancion. -----|$"
instruccionPrac4 db "     Programa que imprime la letra de una cancion.$"

; |--- Título de la canción ---|
msg0 db "PUT A LITTLE LOVE ON ME - NIALL HORAN$"

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

; |--- Cuarta estrofa ---|
msg18 db "We wrote and we wrote$"
msg19 db "'Til there were no more words$"
msg20 db "We laughed and we cried$"
msg21 db "Until we saw our worst$"
msg22 db "Is it wrong that I still wonder where you are?$"
msg23 db "Is it wrong that I still don't know my heart?$"

; |--- Quinta estrofa ---|
; Es igual a la Segunda Estrofa, excepto el último verso
msg24 db "Will someone$"

; |--- Sexta estrofa ---|
; Parecida a la Tercer Estrofa; los versos que cambian son los primeros dos.
msg25 db "Put a little love on me, yeah$"

; |--- Septima estrofa ---|
msg26 db "Last night I lay awake$"
msg27 db "Stuck on the things we say$"
msg28 db "And when I close my eyes, the first thing I hear you say is$"

; |--- Octava estrofa ---|
; Parecida a la Sexta Estrofa; los versos que cambian son los 3 y 4
msg29 db "When the lights come up, we're the only one's dancing$"
msg30 db "I look around and you're standing there asking$"

; |--- Novena estrofa ---|
msg31 db "You're the only one I need$"
msg32 db "Put your love on me$"
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #5 |=====
tituloPrac5 db "               |----- Practica 5: Imprimir el juego del gato. -----|$"
instruccionPrac5 db "     Programa que imprime el juego del gato.$"
; |--- Título del juego ---|
gato0 db "                                 EL JUEGO DEL$"

; |--- Declaración de otros mensajes ---|
gato1 db "                           ####  ####  ####  ####$"
gato2 db "                           #     #  #   ##   #  #$"
gato3 db "                           # ##  ####   ##   #  #$"
gato4 db "                           #  #  #  #   ##   #  #$"
gato5 db "                           ####  #  #   ##   ####$"
gato6 db "                                    |   |$"
gato7 db "                                  1 | 2 | 3$"
gato8 db "                                 ---+---+---$"
; gato6
gato10 db "                                  4 | 5 | 6$"
; gato6
; gato8
gato11 db "                                  7 | 8 | 9$"
; gato6

gato12 db "     JUGADORES$"
gato13 db "     ==> X -Abril$"
gato14 db "     ==> O -Ramirez$"

gato15 db "                           ---------------------$"
gato16 db "                             | BIENVENIDOS! |$"
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #6 |=====
tituloPrac6 db "               |----- Practica 6: Imprmir una boleta de calificaciones. -----|$"
instruccionPrac6 db "     Programa que imprime una boleta de calificaciones.$"
; |--- DISEÑO DE LA BOLETA ---|
boleta0 db "                        SISTEMA EDUCATIVO NACIONAL$"
boleta1 db "                           BOLETA DE EVALUACION$"

boleta2 db "DATOS DEL ALUMNO$"
boleta3 db "_________________________________________________________$"
boleta4 db "______________$"

boleta5 db "Primer apellido$"
boleta6 db "        Segundo apellido$"
boleta7 db "       Nombre(s)$"
boleta8 db "        CURP$"

boleta9 db "DATOS DE LA ESCUELA$"
boleta10 db "__________________________________$"
boleta11 db "_______$"
boleta12 db "________________$"
boleta13 db "______________$"

boleta14 db "Nombre de la escuela$"
boleta15 db "          Grupo$"
boleta16 db "        Turno$"
boleta17 db "           CCT$"

boleta18 db "________________________________________________________________________$"
boleta19 db "|$"
boleta20 db "PERIODOS DE EVALUACION$"

boleta21 db "PROMEDIO$"
boleta22 db "ASIGNATURAS\AREAS$"

boleta23 db "___________________________$"
boleta24 db "FINAL$"

boleta25 db "1er$"
boleta26 db "2do$"
boleta27 db "3er$"

boleta28 db "ESPANOL$"
boleta29 db "8$"
boleta30 db "8.0$"

boleta31 db "MATEMATICAS$"
boleta32 db "INGLES$"
boleta33 db "----$"
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #7 |=====
tituloPrac7 db "        |----- Practica 7: Impresion de 3 caracteres distintos. -----|$"
instruccionPrac7 DB "     Programa que ingresa 3 caracteres distintos.$"

Ingresar1 DB "Ingrese el primer caracter: $"
Mostrar1 DB "El primer caracter que ingreso es el $"
Ingresar2 DB "Ahora ingrese un segundo caracter: $"
Mostrar2 DB "El caracter 2 que usted ingreso es el $"
Ingresar3 DB "Por ultimo, ingrese un tercer caracter: $"
Mostrar3 DB "El ultimo caracter ingresado es el $"
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #8 |=====
tituloPrac8 db "        |----- Practica 8: Imprimir un cuestionario de 7 preguntas. -----|$"
instruccionPrac8 DB "     Programa que imprime un cuestionario de 7 preguntas a responder.$"

preg1 db "1.- Cual es tu nombre?: ","$"
res1 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg2 db "2.- Cual es tu pasatiempo favorito?: ","$"
res2 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg3 db "3.- Cual es tu pelicula favorita?: ","$"
res3 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg4 db "4.- Cual es tu artista favorito?: ","$"
res4 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg5 db "5.- Cual es tu comida favorita?: ","$"
res5 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg6 db "6.- Que carrera estas estudiando?: ","$"
res6 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
preg7 db "7.- Tienes hermanos?: ","$"
res7 db 100 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
texto1 db "Tu respuesta es: ","$"
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #9 |=====
tituloPrac9 db "        |----- Practica 8: Imprimir una boleta medica. -----|$"
instruccionPrac9 DB "     Programa que imprime una boleta medica de un paciente.$"

titulo db "BOLETA DE CONSULTA PARA UN PACIENTE$"

titulo1 db "Datos Personales...$"
pregBol1 db "Apellidos Paciente: ","$"
resBol1 db 20 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
pregBol2 db "Nombre Paciente: ","$"
resBol2 db 10 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
pregBol3 db "Direccion: ","$"
resBol3 db 20 dup(" "),"$"
pregBol4 db "C. Postal: ","$"
resBol4 db 20 dup(" "),"$"
pregBol5 db "Localidad: ","$"
resBol5 db 20 dup(" "),"$"    
pregBol6 db "Provincia: ","$"
resBol6 db 20 dup(" "),"$"
pregBol7 db "F. nacimiento: ","$"
resBol7 db 30 dup(" "),"$"    
pregBol8 db "No. Seguro Social: ","$"
resBol8 db 30 dup(" "),"$" 
pregBol9 db "Sexo: ","$"
resBol9 db 30 dup(" "),"$" 
pregBol10 db "Telefono: ","$"
resBol10 db 30 dup(" "),"$" 
linea db "--------------------------------------------------------------------------------$"

titulo2 db "Datos Medicos...$"
pregBol11 db "F. Consulta: ","$"
resBol11 db 30 dup(" "),"$" 
pregBol12 db "F. Alta: ","$"
resBol12 db 30 dup(" "),"$" 
pregBol13 db "Duracion Proceso: ","$"
resBol13 db 30 dup(" "),"$" 

titulo3 db "Notas...$"
pregBol14 db "Diagnostico: ","$"
resBol14 db 150 dup(" "),"$" 
pregBol15 db "Tratamiento: ","$"
resBol15 db 150 dup(" "),"$" 
pregBol16 db "Otros datos de interes: ","$"
resBol16 db 150 dup(" "),"$" 
pregBol17 db "Notas/Observaciones: ","$"
resBol17 db 150 dup(" "),"$" 
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #10 |=====
; --- CADENAS DE CARACTERES ---
tituloPrac10 db "  |----- Practica 10: Captura e impresion de caracteres con variables. -----|$"
instruccionPrac10 db "     Programa que captura dos caracteres/numeros y despues los imprime.$"

subtitulo1 db "|======== CAPTURA DE CARACTERES ========|$"
pregChar1 db "Ingrese el primer caracter:","$"
pregChar2 db "Ingrese el segundo caracter:","$"

subtitulo2 db "|======== IMPRESION DE CARACTERES ========|$"
respuestaChar1 db "El primer caracter que ingreso es: $"
respuestaChar2 db "El segundo caracter que ingreso es: $"

finPrac10 db "Gracias por utilizar el programa! =)$"

; --- VARIABLES ---
char1 db 0 ; declaración de variable para el primer caracter
char2 db 0 ; declaración de variable para el segundo caracter
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #11 |=====
; --- CADENAS DE CARACTERES ---
tituloPrac11 db "   |----- Practica 11: Impresion de 10 caracteres en forma de lista. -----|$"
instruccionPrac11 db " Programa que captura 10 numeros en diferentes variables y los muestra en forma de lista. (0-9).$"

titulo1Prac11 db "|======== CAPTURA DE CARACTERES ========|$"
preg0Prac11 db "Ingrese el primer caracter:","$"
preg1Prac11 db "Ingrese el segundo caracter:","$"
preg2Prac11 db "Ingrese el tercer caracter:","$"
preg3Prac11 db "Ingrese el cuarto caracter:","$"
preg4Prac11 db "Ingrese el quinto caracter:","$"
preg5Prac11 db "Ingrese el sexto caracter:","$"
preg6Prac11 db "Ingrese el septimo caracter:","$"
preg7Prac11 db "Ingrese el octavo caracter:","$"
preg8Prac11 db "Ingrese el noveno caracter:","$"
preg9Prac11 db "Ingrese el decimo caracter:","$"

titulo2Prac11 db "|======== IMPRESION DE CARACTERES ========|$"
titulo3Prac11 db "La lista de caracteres queda de la siguiente manera:$"
finPrac11 db "Gracias por utilizar el programa! =)$"

; --- VARIABLES ---
char0Prac11 db 0 ; declaración de variable para el caracter "0"
char1Prac11 db 0 ; declaración de variable para el caracter "1"
char2Prac11 db 0 ; declaración de variable para el caracter "2"
char3Prac11 db 0 ; declaración de variable para el caracter "3"
char4Prac11 db 0 ; declaración de variable para el caracter "4"
char5Prac11 db 0 ; declaración de variable para el caracter "5"
char6Prac11 db 0 ; declaración de variable para el caracter "6"
char7Prac11 db 0 ; declaración de variable para el caracter "7"
char8Prac11 db 0 ; declaración de variable para el caracter "8"
char9Prac11 db 0 ; declaración de variable para el caracter "9"
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #12 |=====
; --- CADENAS DE CARACTERES ---
tituloPrac12 db "   |----- Practica 12: Captura e impresion de un numero de celular. -----|$"
instruccionPrac12 db "     Programa que captura e imprime un numero de celular$"

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

finPrac12 db "Gracias por utilizar el programa! =)$"

; --- VARIABLES ---
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
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #13 |=====
; --- CADENAS DE CARACTERES ---
tituloPrac13 db "      |----- Practica 13: Captura de una lista con sentencia if. -----|$"
instruccionPrac13 db "Programa que captura una oracion y numero, y lo imprime en una lista.$"
preguntaOracion db 'Favor de capturar una oracion corta: ','$'
charOracion db 100 dup(" "),"$" 
preguntaNumero db 'Favor de capturar un numero: ','$'

; --- VARIABLES ---
char0Prac13 db 0
contaPrac13 db 4
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #14 |=====
; --- CADENAS DE CARACTERES ---
tituloPrac14 db "    |----- Practica 14: Impresion de dos listas con sentencias if. -----|$"
instruccionPrac14 db "Programa que imprime dos listas, haciendo uso de sentencias if.$"

preguntaPrac14 db 'Que quieres imprimir: ','$' ; Declaración de una cadena de caracteres.
resPrac14 db 100 dup(' '),'$' ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres

; --- VARIABLES ---
contaPrac14 db 5 ; Declaración de la Variable 1, que servirá para nuestro primer contador, que servirá para nuestro tercer contador para el direccionamiento del cursor para la posición de la primer columna.
conta2Prac14 db 0 ; Declaración de la Variables 2, que servirá para nuestro segundo contador.
conta3Prac14 db 10 ; Declaración de la Variable 3.
conta4Prac14 db 40 ; Declaración de la Variable 4, que servirá para nuestro cuarto contador para el direccionamiento del cursor para la posición de la segunda columna.
; ==============================================================================================================

; ==============================================================================================================
; =====| Variables y cadenas de caracteres necesarias para la PRÁCTICA #15 |=====
; --- CADENAS DE CARACTERES ---
tituloPrac15 db "    |----- Practica 15: Impresion de una figura con sentencias if. -----|$"
instruccionPrac15 db "Programa que imprime 4 listas en forma de una figura, con sentencias if.$"

preguntaPrac15 db 'Que frase desea imprimir: ','$' ; Declaración de una cadena de caracteres.
resPrac15 db 20 dup(' '),'$' ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres

; --- VARIABLES ---
cont1Prac15 db 10 ; Declaración de la Variable 1, que servirá para nuestro primer contador, que servirá para nuestro tercer contador para el direccionamiento del cursor para la posición de la primer columna.
cont2Prac15 db 0 ; Declaración de la Variables 2, que servirá para nuestro segundo contador.
cont3Prac15 db 5 ; Declaración de la Variable 3.
cont4Prac15 db 40 ; Declaración de la Variable 4, que servirá para nuestro cuarto contador para el direccionamiento del cursor para la posición de la segunda columna.
; ==============================================================================================================

; |-----------------|====== COMIENZA EL CÓDIGO ======|-----------------|
.code

; |--- Instrucciones que nos permiten trabajar con cadenas ---|
mov ax,@data
mov ds,ax

; |-----------------|====== COMIENZA LA ETIQUETA DEL MENÚ ======|-----------------|
MENU:
    ; |--- Limpieza de pantalla ---|
    mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
    mov al, 03h ; Limpieza de pantalla.
    int 10h     ; Se ejecuta la interrupcion

    mov ah, 02h
    mov dx, 10d
    int 21h

    ; -----------------------------------------------------------------------------

    ; |--- Título del menú ---|
    mov ah, 09h          ; Función para imprimir una cadena
    lea dx, menuTitulo   ; Carga la cadena
    int 21h              ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Primera parte de las instrucciones ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuChar1        ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Segunda parte de las instrucciones ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuChar2        ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #1 - Práctica 1 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionA      ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #2 - Práctica 2 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionB      ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #3 - Práctica 3 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionC      ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #4 - Práctica 4 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionD      ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #5 - Práctica 5 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionE      ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #6 - Práctica 6 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionF      ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #7 - Práctica 7 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionG      ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #8 - Práctica 8 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionH      ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #9 - Práctica 9 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionI      ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #10 - Práctica 10 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionJ     ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #11 - Práctica 11 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionK     ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #12 - Práctica 12 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionL     ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #13 - Práctica 13 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionM     ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #14 - Práctica 14 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionN     ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Opción #15 - Práctica 15 ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuOpcionO     ; Carga la cadena
    int 21h                  ; Imprime la cadena
    mov ah, 02h
    mov dx, 10d
    int 21h

    ; -----------------------------------------------------------------------------

    mov ah, 02h
    mov dx, 10d
    int 21h

    ; -----------------------------------------------------------------------------

    ; |--- Pregunta para la captura de la opción ---|  
    mov ah, 09h              ; Función para imprimir una cadena
    lea dx, menuchar3        ; Carga la cadena
    int 21h                  ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Configuración de filas y columnas para el posicionamiento del cursor de captura ---|  
    mov ah, 02h     ; Petición para colocar el cursor
    mov dh, 22      ; Direccionamiento para la fila
    mov dl, 54      ; Direccionamiento para la columna
    int 10h         ; Ejecutamos la interrupcion para posicionamiento

    ; |--- Captura de la respuesta/opción ---|  
    mov ah, 3fh
    mov bx, 00
    mov cx, 100
    mov dx, offset [opcion]
    int 21h

    ; -----------------------------------------------------------------------------

    ; |--- Limpieza de pantalla ---|
    mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
    mov al, 03h ; Limpieza de pantalla.
    int 10h     ; Se ejecuta la interrupcion

    CASE_1:
        cmp opcion, 065
        jz PRACTICA_1
        jmp CASE_2

    CASE_2:
        cmp opcion, 066
        jz PRACTICA_2
        jmp CASE_3

    CASE_3:
        cmp opcion, 067
        jz PRACTICA_3
        jmp CASE_4

    CASE_4:
        cmp opcion, 068
        jz PRACTICA_4
        jmp CASE_5

    CASE_5:
        cmp opcion, 069
        jz PRACTICA_5
        jmp CASE_6

    CASE_6:
        cmp opcion, 070
        jz PRACTICA_6
        jmp CASE_7

    CASE_7:
        cmp opcion, 071
        jz PRACTICA_7
        jmp CASE_8

    CASE_8:
        cmp opcion, 072
        jz PRACTICA_8
        jmp CASE_9

    CASE_9:
        cmp opcion, 073
        jz PRACTICA_9
        jmp CASE_10

    CASE_10:
        cmp opcion, 074
        jz PRACTICA_10
        jmp CASE_11

    CASE_11:
        cmp opcion, 075
        jz PRACTICA_11
        jmp CASE_12

    CASE_12:
        cmp opcion, 076
        jz PRACTICA_12
        jmp CASE_13

    CASE_13:
        cmp opcion, 077
        jz PRACTICA_13
        jmp CASE_14

    CASE_14:
        cmp opcion, 078
        jz PRACTICA_14
        jmp CASE_15

    CASE_15:
        cmp opcion, 079
        jz PRACTICA_15  
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

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #1 ======|-----------------|
PRACTICA_1:

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, tituloPrac1      ; Carga la cadena
    int 21h                  ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, charpractica1_0  ; Carga la cadena
    int 21h                  ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h              ; Peticiónpara imprimir una cadena
    lea dx, charpractica1_1  ; Carga la cadena
    int 21h                  ; Imprime la cadena

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #2 ======|-----------------|
PRACTICA_2:

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, tituloPrac2      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h                   ; Petición para imprimir una cadena
    lea dx, instruccionPrac2      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h ; Petición para imprimir un caracter
    mov dx, 65 ; Mover un 65 a Dx para imprimir en pantalla
    int 21h ; Ejecuta la funcion

    mov ah, 02h ; Petición para imprimir un caracter
    mov dx, 66 ; Mover un 66 a Dx para imprimir en pantalla
    int 21h ; Ejecuta la funcion

    mov ah, 02h ; Petición para imprimir un caracter
    mov dx, 82 ; Mover un 82 a Dx para imprimir en pantalla
    int 21h ; Ejecuta la funcion

    mov ah, 02h ; Petición para imprimir un caracter
    mov dx, 73 ; Mover un 73 a Dx para imprimir en pantalla
    int 21h ; Ejecuta la funcion

    mov ah, 02h ; Petición para imprimir un caracter
    mov dx, 76 ; Mover un 76 a Dx para imprimir en pantalla
    int 21h ; Ejecuta la funcion

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #3 ======|-----------------|
PRACTICA_3:

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, tituloPrac3      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    mov ah, 09h                   ; Petición para imprimir una cadena
    lea dx, instruccionPrac3      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |------ TECNOLOGICO NACIONAL DE MEXICO -----|
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== TECNOLOGICO ===>
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- L ---|
    mov ah, 02h
    mov dx, 76
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- G ---|
    mov ah, 02h
    mov dx, 71
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== NACIONAL ===>
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- L ---|
    mov ah, 02h
    mov dx, 76
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== DE ===>
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== MEXICO ===>
    mov ah, 02h
    mov dx, 77
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- X ---|
    mov ah, 02h
    mov dx, 88
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ INSTITUTO TECNOLOGICO DE TIJUANA -----|
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== INSTITUTO ===>
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- U ---|
    mov ah, 02h
    mov dx, 85
    int 21h
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== TECNOLOGICO ===>
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- L ---|
    mov ah, 02h
    mov dx, 76
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- G ---|
    mov ah, 02h
    mov dx, 71
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== DE ===>
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== TIJUANA ===>
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- J ---|
    mov ah, 02h
    mov dx, 74
    int 21h
    ; |--- U ---|
    mov ah, 02h
    mov dx, 85
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ SUBDIRECCION ACADEMICA -----|

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== SUBDIRECCION ===>
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h
    ; |--- U ---|
    mov ah, 02h
    mov dx, 85
    int 21h
    ; |--- B ---|
    mov ah, 02h
    mov dx, 66
    int 21h
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== ACADEMICA ===>
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- M ---|
    mov ah, 02h
    mov dx, 77
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ DEPARTAMENTO DE SISTEMAS Y COMPUTACION -----|

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== DEPARTAMENTO ===>
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- P ---|
    mov ah, 02h
    mov dx, 80
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- M ---|
    mov ah, 02h
    mov dx, 77
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== DE ===>
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== SISTEMAS ===>
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- M ---|
    mov ah, 02h
    mov dx, 77
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Y ===>
    ; |--- Y ---|
    mov ah, 02h
    mov dx, 89
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== COMPUTACION ===>
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- M ---|
    mov ah, 02h
    mov dx, 77
    int 21h
    ; |--- P ---|
    mov ah, 02h
    mov dx, 80
    int 21h
    ; |--- U ---|
    mov ah, 02h
    mov dx, 85
    int 21h
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ SEMESTRE FEBRERO - JUNIO 2021 -----|

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== SEMESTRE ===>
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- M ---|
    mov ah, 02h
    mov dx, 77
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== FEBRERO ===>
    ; |--- F ---|
    mov ah, 02h
    mov dx, 70
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- B ---|
    mov ah, 02h
    mov dx, 66
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== - ===>
    ; |--- - ---|
    mov ah, 02h
    mov dx, 45
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== JUNIO ===>
    ; |--- J ---|
    mov ah, 02h
    mov dx, 74
    int 21h
    ; |--- U ---|
    mov ah, 02h
    mov dx, 85
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== 2021 ===>
    ; |--- 2 ---|
    mov ah, 02h
    mov dx, 50
    int 21h
    ; |--- 0 ---|
    mov ah, 02h
    mov dx, 48
    int 21h
    ; |--- 2 ---|
    mov ah, 02h
    mov dx, 50
    int 21h
    ; |--- 1 ---|
    mov ah, 02h
    mov dx, 49
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función
    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ CARRERA: -----|

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Carrera ===>
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- : ---|
    mov ah, 02h
    mov dx, 58
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ Ingenieria en Sistemas Computacionales -----|

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Ingenieria ===>
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- n ---|
    mov ah, 02h
    mov dx, 110
    int 21h
    ; |--- g ---|
    mov ah, 02h
    mov dx, 103
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- n ---|
    mov ah, 02h
    mov dx, 110
    int 21h
    ; |--- i ---|
    mov ah, 02h
    mov dx, 105
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- r ---|
    mov ah, 02h
    mov dx, 114
    int 21h
    ; |--- i ---|
    mov ah, 02h
    mov dx, 105
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== en ===>
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- n ---|
    mov ah, 02h
    mov dx, 110
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Sistemas ===>
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h
    ; |--- i ---|
    mov ah, 02h
    mov dx, 105
    int 21h
    ; |--- s ---|
    mov ah, 02h
    mov dx, 115
    int 21h
    ; |--- t ---|
    mov ah, 02h
    mov dx, 116
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- m ---|
    mov ah, 02h
    mov dx, 109
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- s ---|
    mov ah, 02h
    mov dx, 115
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Computacionales ===>
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- o ---|
    mov ah, 02h
    mov dx, 111
    int 21h
    ; |--- m ---|
    mov ah, 02h
    mov dx, 109
    int 21h
    ; |--- p ---|
    mov ah, 02h
    mov dx, 112
    int 21h
    ; |--- u ---|
    mov ah, 02h
    mov dx, 117
    int 21h
    ; |--- t ---|
    mov ah, 02h
    mov dx, 116
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- c ---|
    mov ah, 02h
    mov dx, 99
    int 21h
    ; |--- i ---|
    mov ah, 02h
    mov dx, 105
    int 21h
    ; |--- o ---|
    mov ah, 02h
    mov dx, 111
    int 21h
    ; |--- n ---|
    mov ah, 02h
    mov dx, 110
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- l ---|
    mov ah, 02h
    mov dx, 108
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- s ---|
    mov ah, 02h
    mov dx, 115
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función
    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ MATERIA Y SERIE:-----|

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== MATERIA ===>
    ; |--- M ---|
    mov ah, 02h
    mov dx, 77
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Y ===>
    ; |--- Y ---|
    mov ah, 02h
    mov dx, 89
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== SERIE ===>
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- : ---|
    mov ah, 02h
    mov dx, 58
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ Lenguajes de Interfaz - SCC-1014 ------|

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Lenguajes ===>
    ; |--- L ---|
    mov ah, 02h
    mov dx, 76
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- n ---|
    mov ah, 02h
    mov dx, 110
    int 21h
    ; |--- g ---|
    mov ah, 02h
    mov dx, 103
    int 21h
    ; |--- u ---|
    mov ah, 02h
    mov dx, 117
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- j ---|
    mov ah, 02h
    mov dx, 106
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- s ---|
    mov ah, 02h
    mov dx, 115
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== de ===>
    ; |--- d ---|
    mov ah, 02h
    mov dx, 100
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Interfaz ===>
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- n ---|
    mov ah, 02h
    mov dx, 110
    int 21h
    ; |--- t ---|
    mov ah, 02h
    mov dx, 116
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- r ---|
    mov ah, 02h
    mov dx, 114
    int 21h
    ; |--- f ---|
    mov ah, 02h
    mov dx, 102
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- z ---|
    mov ah, 02h
    mov dx, 122
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== - ===>
    ; |--- - ---|
    mov ah, 02h
    mov dx, 45
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== SCC-1014 ===>
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- - ---|
    mov ah, 02h
    mov dx, 45
    int 21h
    ; |--- 1 ---|
    mov ah, 02h
    mov dx, 49
    int 21h
    ; |--- 0 ---|
    mov ah, 02h
    mov dx, 48
    int 21h
    ; |--- 1 ---|
    mov ah, 02h
    mov dx, 49
    int 21h
    ; |--- 4 ---|
    mov ah, 02h
    mov dx, 52
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función
    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ Practica #3: Portada Institucional en Ensamblador ------|

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Practica ===>
    ; |--- P ---|
    mov ah, 02h
    mov dx, 80
    int 21h
    ; |--- r ---|
    mov ah, 02h
    mov dx, 114
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- c ---|
    mov ah, 02h
    mov dx, 99
    int 21h
    ; |--- t ---|
    mov ah, 02h
    mov dx, 116
    int 21h
    ; |--- i ---|
    mov ah, 02h
    mov dx, 105
    int 21h
    ; |--- c ---|
    mov ah, 02h
    mov dx, 99
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== #3: ===>
    ; |--- # ---|
    mov ah, 02h
    mov dx, 35
    int 21h
    ; |--- 3 ---|
    mov ah, 02h
    mov dx, 51
    int 21h
    ; |--- : ---|
    mov ah, 02h
    mov dx, 58
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Portada ===>
    ; |--- P ---|
    mov ah, 02h
    mov dx, 80
    int 21h
    ; |--- o ---|
    mov ah, 02h
    mov dx, 111
    int 21h
    ; |--- r ---|
    mov ah, 02h
    mov dx, 114
    int 21h
    ; |--- t ---|
    mov ah, 02h
    mov dx, 116
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- d ---|
    mov ah, 02h
    mov dx, 100
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Institucional ===>
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- n ---|
    mov ah, 02h
    mov dx, 110
    int 21h
    ; |--- s ---|
    mov ah, 02h
    mov dx, 115
    int 21h
    ; |--- t ---|
    mov ah, 02h
    mov dx, 116
    int 21h
    ; |--- i ---|
    mov ah, 02h
    mov dx, 105
    int 21h
    ; |--- t ---|
    mov ah, 02h
    mov dx, 116
    int 21h
    ; |--- u ---|
    mov ah, 02h
    mov dx, 117
    int 21h
    ; |--- c ---|
    mov ah, 02h
    mov dx, 99
    int 21h
    ; |--- i ---|
    mov ah, 02h
    mov dx, 105
    int 21h
    ; |--- o ---|
    mov ah, 02h
    mov dx, 111
    int 21h
    ; |--- n ---|
    mov ah, 02h
    mov dx, 110
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- l ---|
    mov ah, 02h
    mov dx, 108
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== en ===>
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- n ---|
    mov ah, 02h
    mov dx, 110
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Ensamblador ===>
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- n ---|
    mov ah, 02h
    mov dx, 110
    int 21h
    ; |--- s ---|
    mov ah, 02h
    mov dx, 115
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- m ---|
    mov ah, 02h
    mov dx, 109
    int 21h
    ; |--- b ---|
    mov ah, 02h
    mov dx, 98
    int 21h
    ; |--- l ---|
    mov ah, 02h
    mov dx, 108
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- d ---|
    mov ah, 02h
    mov dx, 100
    int 21h
    ; |--- o ---|
    mov ah, 02h
    mov dx, 111
    int 21h
    ; |--- r ---|
    mov ah, 02h
    mov dx, 114
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función
    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ UNIDAD 1: INTRODUCCION AL LENGUAJE ENSAMBLADOR ------|
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== UNIDAD ===>
    ; |--- U ---|
    mov ah, 02h
    mov dx, 85
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== 1:===>
    ; |--- 1 ---|
    mov ah, 02h
    mov dx, 49
    int 21h
    ; |--- : ---|
    mov ah, 02h
    mov dx, 58
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== INTRODUCCION ===>
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h
    ; |--- U ---|
    mov ah, 02h
    mov dx, 85
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- I ---|
    mov ah, 02h
    mov dx, 73
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== AL ===>
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- L ---|
    mov ah, 02h
    mov dx, 76
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== LENGUAJE ===>
    ; |--- L ---|
    mov ah, 02h
    mov dx, 76
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- G ---|
    mov ah, 02h
    mov dx, 71
    int 21h
    ; |--- U ---|
    mov ah, 02h
    mov dx, 85
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- J ---|
    mov ah, 02h
    mov dx, 74
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== ENSAMBLADOR ===>
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- M ---|
    mov ah, 02h
    mov dx, 77
    int 21h
    ; |--- B ---|
    mov ah, 02h
    mov dx, 66
    int 21h
    ; |--- L ---|
    mov ah, 02h
    mov dx, 76
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función
    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ ALUMNA: ------|
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== ALUMNA: ===>
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- L ---|
    mov ah, 02h
    mov dx, 76
    int 21h
    ; |--- U ---|
    mov ah, 02h
    mov dx, 85
    int 21h
    ; |--- M ---|
    mov ah, 02h
    mov dx, 77
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- : ---|
    mov ah, 02h
    mov dx, 58
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ Ramirez Flores Abril ------|

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Ramirez ===>
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- m ---|
    mov ah, 02h
    mov dx, 109
    int 21h
    ; |--- i ---|
    mov ah, 02h
    mov dx, 105
    int 21h
    ; |--- r ---|
    mov ah, 02h
    mov dx, 114
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- z ---|
    mov ah, 02h
    mov dx, 122
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Flores ===>
    ; |--- F ---|
    mov ah, 02h
    mov dx, 70
    int 21h
    ; |--- l ---|
    mov ah, 02h
    mov dx, 108
    int 21h
    ; |--- o ---|
    mov ah, 02h
    mov dx, 111
    int 21h
    ; |--- r ---|
    mov ah, 02h
    mov dx, 114
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- s ---|
    mov ah, 02h
    mov dx, 115
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Abril ===>
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- b ---|
    mov ah, 02h
    mov dx, 98
    int 21h
    ; |--- r ---|
    mov ah, 02h
    mov dx, 114
    int 21h
    ; |--- i ---|
    mov ah, 02h
    mov dx, 105
    int 21h
    ; |--- l ---|
    mov ah, 02h
    mov dx, 108
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== - ===>
    ; |--- - ---|
    mov ah, 02h
    mov dx, 45
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; |------ 19211715 ------|
    ; <=== 19211715 ===>
    ; |--- 1 ---|
    mov ah, 02h
    mov dx, 49
    int 21h
    ; |--- 9 ---|
    mov ah, 02h
    mov dx, 57
    int 21h
    ; |--- 2 ---|
    mov ah, 02h
    mov dx, 50
    int 21h
    ; |--- 1 ---|
    mov ah, 02h
    mov dx, 49
    int 21h
    ; |--- 1 ---|
    mov ah, 02h
    mov dx, 49
    int 21h
    ; |--- 7 ---|
    mov ah, 02h
    mov dx, 55
    int 21h
    ; |--- 1 ---|
    mov ah, 02h
    mov dx, 49
    int 21h
    ; |--- 5 ---|
    mov ah, 02h
    mov dx, 53
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función
    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ NOMBRE DEL PROFESOR: Cañez Valle Rodrigo ------|
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== NOMBRE ===>
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- M ---|
    mov ah, 02h
    mov dx, 77
    int 21h
    ; |--- B ---|
    mov ah, 02h
    mov dx, 66
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== DEL ===>
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- L ---|
    mov ah, 02h
    mov dx, 76
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== PROFESOR ===>
    ; |--- P ---|
    mov ah, 02h
    mov dx, 80
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- F ---|
    mov ah, 02h
    mov dx, 70
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- S ---|
    mov ah, 02h
    mov dx, 83
    int 21h
    ; |--- O ---|
    mov ah, 02h
    mov dx, 79
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- : ---|
    mov ah, 02h
    mov dx, 58
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Cañez ===>
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- ñ ---|
    mov ah, 02h
    mov dx, 164
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- z ---|
    mov ah, 02h
    mov dx, 122
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Valle ===>
    ; |--- V ---|
    mov ah, 02h
    mov dx, 86
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- l ---|
    mov ah, 02h
    mov dx, 108
    int 21h
    ; |--- l ---|
    mov ah, 02h
    mov dx, 108
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Rodrigo ===>
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- o ---|
    mov ah, 02h
    mov dx, 111
    int 21h
    ; |--- d ---|
    mov ah, 02h
    mov dx, 100
    int 21h
    ; |--- r ---|
    mov ah, 02h
    mov dx, 114
    int 21h
    ; |--- i ---|
    mov ah, 02h
    mov dx, 105
    int 21h
    ; |--- g ---|
    mov ah, 02h
    mov dx, 103
    int 21h
    ; |--- o ---|
    mov ah, 02h
    mov dx, 111
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función
    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ FECHA DE ENTREGA ------|
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== FECHA ===>
    ; |--- F ---|
    mov ah, 02h
    mov dx, 70
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- H ---|
    mov ah, 02h
    mov dx, 72
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== DE ===>
    ; |--- D ---|
    mov ah, 02h
    mov dx, 68
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== ENTREGA ===>
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- N ---|
    mov ah, 02h
    mov dx, 78
    int 21h
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- R ---|
    mov ah, 02h
    mov dx, 82
    int 21h
    ; |--- E ---|
    mov ah, 02h
    mov dx, 69
    int 21h
    ; |--- G ---|
    mov ah, 02h
    mov dx, 71
    int 21h
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- : ---|
    mov ah, 02h
    mov dx, 58
    int 21h

    ; <=== SALTO DE LINEA ===>
    mov dl, 0ah ; pedir permiso para utilizar la pantalla
    int 21h ; se ejecuta la función

    ; |------ Tiuana B.C. a 27 de Agosto del 2021 ------|
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Tijuana ===>
    ; |--- T ---|
    mov ah, 02h
    mov dx, 84
    int 21h
    ; |--- i ---|
    mov ah, 02h
    mov dx, 105
    int 21h
    ; |--- j ---|
    mov ah, 02h
    mov dx, 106
    int 21h
    ; |--- u ---|
    mov ah, 02h
    mov dx, 117
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h
    ; |--- n ---|
    mov ah, 02h
    mov dx, 110
    int 21h
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== B.C. ===>
    ; |--- B ---|
    mov ah, 02h
    mov dx, 66
    int 21h
    ; |--- . ---|
    mov ah, 02h
    mov dx, 46
    int 21h
    ; |--- C ---|
    mov ah, 02h
    mov dx, 67
    int 21h
    ; |--- . ---|
    mov ah, 02h
    mov dx, 46
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== a ===>
    ; |--- a ---|
    mov ah, 02h
    mov dx, 97
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== 27 ===>
    ; |--- 2 ---|
    mov ah, 02h
    mov dx, 50
    int 21h
    ; |--- 7 ---|
    mov ah, 02h
    mov dx, 55
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== de ===>
    ; |--- d ---|
    mov ah, 02h
    mov dx, 100
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== Agosto ===>
    ; |--- A ---|
    mov ah, 02h
    mov dx, 65
    int 21h
    ; |--- g ---|
    mov ah, 02h
    mov dx, 103
    int 21h
    ; |--- o ---|
    mov ah, 02h
    mov dx, 111
    int 21h
    ; |--- s ---|
    mov ah, 02h
    mov dx, 115
    int 21h
    ; |--- t ---|
    mov ah, 02h
    mov dx, 116
    int 21h
    ; |--- o ---|
    mov ah, 02h
    mov dx, 111
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== del ===>
    ; |--- d ---|
    mov ah, 02h
    mov dx, 100
    int 21h
    ; |--- e ---|
    mov ah, 02h
    mov dx, 101
    int 21h
    ; |--- l ---|
    mov ah, 02h
    mov dx, 108
    int 21h

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    ; <=== 2021 ===>
    ; |--- 2 ---|
    mov ah, 02h
    mov dx, 50
    int 21h
    ; |--- 0 ---|
    mov ah, 02h
    mov dx, 48
    int 21h
    ; |--- 2 ---|
    mov ah, 02h
    mov dx, 50
    int 21h
    ; |--- 1 ---|
    mov ah, 02h
    mov dx, 49
    int 21h

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #4 ======|-----------------|
PRACTICA_4:

    ; |--- Limpieza de pantalla ---|
    mov ah, 00h
    mov al, 03h
    int 10h

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, tituloPrac4      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    mov ah, 09h                   ; Petición para imprimir una cadena
    lea dx, instruccionPrac4      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Inicializar variables para el permiso de imprimir cadenas ---|
    mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
    mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
    mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
    mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
    mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
    mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
    mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
    mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
    mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)
    mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función (solo se utiliza para utilizar caracteres)mov ah, 02h ; funcion para imprimir un carácter
    mov dx, 00 ; mover un 64 a Dx para imprimir en pantalla

    ; |--- Título de la canción ---|
    mov ah, 09h ; Función para imprimir una cadena
    lea dx, msg0 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; ===== |--- Primera estrofa ---| =====
    ; ---- Verso 1 -----
    mov ah, 09h
    lea dx, msg1
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 2 -----
    mov ah, 09h
    lea dx, msg2
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 3 -----
    mov ah, 09h
    lea dx, msg3
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 4 -----
    mov ah, 09h
    lea dx, msg4
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; ===== |--- Segunda estrofa ---| =====
    ; ---- Verso 5 -----
    mov ah, 09h
    lea dx, msg5
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 6 -----
    mov ah, 09h
    lea dx, msg6
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 7 -----
    mov ah, 09h
    lea dx, msg7
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 8 -----
    mov ah, 09h
    lea dx, msg8
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 9 -----
    mov ah, 09h
    lea dx, msg9
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 10 -----
    mov ah, 09h
    lea dx, msg10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 11 -----
    mov ah, 09h
    lea dx, msg11
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; ===== |--- Tercera estrofa ---| =====
    ; ---- Verso 12 -----
    mov ah, 09h
    lea dx, msg12
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 13 -----
    mov ah, 09h
    lea dx, msg13
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 14 -----
    mov ah, 09h
    lea dx, msg14
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 15 -----
    mov ah, 09h
    lea dx, msg15
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 16 -----
    mov ah, 09h
    lea dx, msg16
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 17 -----
    mov ah, 09h
    lea dx, msg17
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; ===== |--- Cuarta estrofa ---| =====
    ; ---- Verso 18 -----
    mov ah, 09h
    lea dx, msg18
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 19 -----
    mov ah, 09h
    lea dx, msg19
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 20 -----
    mov ah, 09h
    lea dx, msg20
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 21 -----
    mov ah, 09h
    lea dx, msg21
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 22 -----
    mov ah, 09h
    lea dx, msg22
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 23 -----
    mov ah, 09h
    lea dx, msg23
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; ===== |--- Quinta estrofa ---| =====
    ; ---- Verso 24 -----
    mov ah, 09h
    lea dx, msg5
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 25 -----
    mov ah, 09h
    lea dx, msg6
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 26 -----
    mov ah, 09h
    lea dx, msg7
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 27 -----
    mov ah, 09h
    lea dx, msg8
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 28 -----
    mov ah, 09h
    lea dx, msg9
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 29 -----
    mov ah, 09h
    lea dx, msg10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 30 -----
    mov ah, 09h
    lea dx, msg24
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; ===== |--- Sexta estrofa ---| =====
    ; ---- Verso 31 -----
    mov ah, 09h
    lea dx, msg25
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 32 -----
    mov ah, 09h
    lea dx, msg12
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 33 -----
    mov ah, 09h
    lea dx, msg14
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 34 -----
    mov ah, 09h
    lea dx, msg15
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 35 -----
    mov ah, 09h
    lea dx, msg16
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 36 -----
    mov ah, 09h
    lea dx, msg17
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; ===== |--- Septima estrofa ---| =====
    ; ---- Verso 37 -----
    mov ah, 09h
    lea dx, msg26
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 38 -----
    mov ah, 09h
    lea dx, msg27
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 39 -----
    mov ah, 09h
    lea dx, msg28
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; ===== |--- Octava estrofa ---| =====
    ; ---- Verso 40 -----
    mov ah, 09h
    lea dx, msg25
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 41 -----
    mov ah, 09h
    lea dx, msg12
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 42 -----
    mov ah, 09h
    lea dx, msg29
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 43 -----
    mov ah, 09h
    lea dx, msg30
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 44 -----
    mov ah, 09h
    lea dx, msg16
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 45 -----
    mov ah, 09h
    lea dx, msg17
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; ===== |--- Novena estrofa ---| =====
    ; ---- Verso 46 -----
    mov ah, 09h
    lea dx, msg31
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; ---- Verso 47 -----
    mov ah, 09h
    lea dx, msg32
    int 21h

    jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #5 ======|-----------------|
PRACTICA_5:

    ; |--- Limpieza de pantalla ---|
    mov ah, 00h
    mov al, 03h
    int 10h
    
    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, tituloPrac5      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h                   ; Petición para imprimir una cadena
    lea dx, instruccionPrac5      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Título del juego ---|
    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato0 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato1 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato2 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato3 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato4 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato5 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato6 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato7 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato8 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato10 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato6 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato8 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato11 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato6 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato12 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato13 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato14 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato15 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato16 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, gato15 ; Carga la cadena
    int 21h ; Imprime la cadena

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #6 ======|-----------------|
PRACTICA_6:

    ; |--- Limpieza de pantalla ---|
    mov ah, 00h
    mov al, 03h
    int 10h
    
    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, tituloPrac6      ; Carga la cadena
    int 21h  
    
    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h                   ; Petición para imprimir una cadena
    lea dx, instruccionPrac6      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    ; ======================| SE EMPIEZA A IMPRIMIR LA BOLETA |======================
    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta0 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta1 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 3 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta2 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 5 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta3 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función
    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta4 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 6 ; Direccionamiento para la fila
    mov dl, 4 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta5 ; Carga la cadena
    int 21h ; Imprime la cadena

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta6 ; Carga la cadena
    int 21h ; Imprime la cadena

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta7 ; Carga la cadena
    int 21h ; Imprime la cadena

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta8 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 8 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta9 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 10 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta10 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta11 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta12 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; | <--- Imprimir un espacio en blanco ---> |
    mov ah, 02h; funcion para imprimir un carácter
    mov dx, 00 ; mover un 00 a Dx para imprimir en pantalla
    int 21h ; ejecuta la función

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta13 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 11 ; Direccionamiento para la fila
    mov dl, 9 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta14 ; Carga la cadena
    int 21h ; Imprime la cadena

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta15 ; Carga la cadena
    int 21h ; Imprime la cadena

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta16 ; Carga la cadena
    int 21h ; Imprime la cadena

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta17 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 13 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta18 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 14 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 14 ; Direccionamiento para la fila
    mov dl, 27 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 14 ; Direccionamiento para la fila
    mov dl, 30 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta20 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 14 ; Direccionamiento para la fila
    mov dl, 55 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 14 ; Direccionamiento para la fila
    mov dl, 61 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta21 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 14 ; Direccionamiento para la fila
    mov dl, 74 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 15 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 15 ; Direccionamiento para la fila
    mov dl, 7 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta22 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 15 ; Direccionamiento para la fila
    mov dl, 27 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 15 ; Direccionamiento para la fila
    mov dl, 28 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta23 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 15 ; Direccionamiento para la fila
    mov dl, 55 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 15 ; Direccionamiento para la fila
    mov dl, 62 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta24 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 15 ; Direccionamiento para la fila
    mov dl, 74 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 16 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 16 ; Direccionamiento para la fila
    mov dl, 27 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 16 ; Direccionamiento para la fila
    mov dl, 31 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta25 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 16 ; Direccionamiento para la fila
    mov dl, 36 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 16 ; Direccionamiento para la fila
    mov dl, 40 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta26 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 16 ; Direccionamiento para la fila
    mov dl, 45 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 16 ; Direccionamiento para la fila
    mov dl, 49 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta27 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 16 ; Direccionamiento para la fila
    mov dl, 55 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 16 ; Direccionamiento para la fila
    mov dl, 74 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 17 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta18 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 18 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 18 ; Direccionamiento para la fila
    mov dl, 11 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta28 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 18 ; Direccionamiento para la fila
    mov dl, 27 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 18 ; Direccionamiento para la fila
    mov dl, 32 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta29 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 18 ; Direccionamiento para la fila
    mov dl, 36 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 18 ; Direccionamiento para la fila
    mov dl, 41 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta29 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 18 ; Direccionamiento para la fila
    mov dl, 45 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 18 ; Direccionamiento para la fila
    mov dl, 50 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta29 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 18 ; Direccionamiento para la fila
    mov dl, 55 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 18 ; Direccionamiento para la fila
    mov dl, 63 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta30 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 18 ; Direccionamiento para la fila
    mov dl, 74 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 19 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta18 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 9 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta31 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 27 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 32 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta29 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 36 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 41 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta29 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 45 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 50 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta29 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 55 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 63 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta30 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 74 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 21 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta18 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 22 ; Direccionamiento para la fila
    mov dl, 11 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta32 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 22 ; Direccionamiento para la fila
    mov dl, 27 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 22 ; Direccionamiento para la fila
    mov dl, 30 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta33 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 22 ; Direccionamiento para la fila
    mov dl, 36 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 22 ; Direccionamiento para la fila
    mov dl, 39 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta33 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 22 ; Direccionamiento para la fila
    mov dl, 45 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 22 ; Direccionamiento para la fila
    mov dl, 49 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta33 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 22 ; Direccionamiento para la fila
    mov dl, 55 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 63 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta30 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 20 ; Direccionamiento para la fila
    mov dl, 74 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta19 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 22 ; Direccionamiento para la fila
    mov dl, 63 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta33 ; Carga la cadena
    int 21h ; Imprime la cadena

    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 23 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h ; Función para imprimir una cadena
    lea dx, boleta18 ; Carga la cadena
    int 21h ; Imprime la cadena

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #7 ======|-----------------|
PRACTICA_7:

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, tituloPrac7      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h                          ; Petición para imprimir una cadena
    lea dx, offset instruccionPrac7      ; Carga la cadena
    int 21h                              ; Imprime la cadena

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    mov dx, offset Ingresar1
    int 21h

    ; |--- Instrucciones que nos permiten ingresar un caracter ---|
    mov ah, 01h
    int 21h

    mov cl, al ; mover al a cl

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    mov dx, offset Mostrar1
    int 21h

    ; |--- Instrucciones que nos permiten imprimir el caracter ingresado ---|
    mov ah, 02h
    mov dl, cl
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    mov dx, offset Ingresar2
    int 21h

    ; |--- Instrucciones que nos permiten ingresar un caracter ---|
    mov ah, 01h
    int 21h

    mov cl, al ; mover al a cl

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    mov dx, offset Mostrar2
    int 21h

    ; |--- Instrucciones que nos permiten imprimir el caracter ingresado ---|
    mov ah, 02h
    mov dl, cl
    int 21h
    
    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    mov dx, offset Ingresar3
    int 21h

    ; |--- Instrucciones que nos permiten ingresar un caracter ---|
    mov ah, 01h
    int 21h

    mov cl, al ; mover al a cl

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    mov ah, 09h
    mov dx, offset Mostrar3
    int 21h

    ; |--- Instrucciones que nos permiten imprimir el caracter ingresado ---|
    mov ah, 02h
    mov dl, cl
    int 21h

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #8 ======|-----------------|
PRACTICA_8:

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, tituloPrac8      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h                          ; Petición para imprimir una cadena
    lea dx, offset instruccionPrac8      ; Carga la cadena
    int 21h                              ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    ; |----- Bloque para pregunta 1: Cuál es tu nombre? -----|
    mov ah, 09h
    lea dx, preg1
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 50
    mov dx, offset [res1]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res1]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 2: Cuál es tu pasatiempo favorito? -----|
    mov ah, 09h
    lea dx, preg2
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res2]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res2]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 3: Cuál es tu pelicula favoria? -----|
    mov ah, 09h
    lea dx, preg3
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res3]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res3]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 4: Cuál es tu artista favorito? -----|
    mov ah, 09h
    lea dx, preg4
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res4]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res4]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 5: Cuál es tu comida favorita? -----|
    mov ah, 09h
    lea dx, preg5
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res5]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res5]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 6: Qué carrera estás estudiando? -----|
    mov ah, 09h
    lea dx, preg6
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res6]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res6]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |----- Bloque para pregunta 7: Tienes hermanos? -----|
    mov ah, 09h
    lea dx, preg7
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res7]
    int 21h

    mov ah, 09h
    lea dx, texto1
    int 21h
    
    mov ah, 09h
    lea dx, offset[res7]
    int 21h

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #9 ======|-----------------|
PRACTICA_9:

    ; Título
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 0 ; Direccionamiento para la fila
    mov dl, 20 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, titulo
    int 21h

    ; Título 1 - DATOS PERSONALES
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 1 ; Direccionamiento para la fila
    mov dl, 0 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, titulo1
    int 21h

    ; Línea divisora
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 2 ; Direccionamiento para la fila
    mov dl, 0 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, linea
    int 21h

    ; Pregunta 1. - Apellidos Paciente.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 3 ; Direccionamiento para la fila
    mov dl, 3 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol1
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol1]
    int 21h

    ; Pregunta 2. - Nombre Paciente.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 3 ; Direccionamiento para la fila
    mov dl, 43 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol2
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol2]
    int 21h

    ; Pregunta 3. - Dirección
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 4 ; Direccionamiento para la fila
    mov dl, 7 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol3
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol3]
    int 21h

    ; Pregunta 4. - C. Postal
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 4 ; Direccionamiento para la fila
    mov dl, 45 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol4
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol4]
    int 21h

    ; Pregunta 5. - Localidad.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 5 ; Direccionamiento para la fila
    mov dl, 7 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol5
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol5]
    int 21h

    ; Pregunta 6. - Provincia.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 5 ; Direccionamiento para la fila
    mov dl, 45 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol6
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol6]
    int 21h

    ; Pregunta 7. - F. Nacimiento.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 6 ; Direccionamiento para la fila
    mov dl, 5 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol7
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol7]
    int 21h

    ; Pregunta 8. - No. Seguro Social.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 6 ; Direccionamiento para la fila
    mov dl, 42 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol8
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol8]
    int 21h

    ; Pregunta 9. - Sexo.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 7 ; Direccionamiento para la fila
    mov dl, 10 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol9
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol9]
    int 21h

    ; Pregunta 10. - Teléfono.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 7 ; Direccionamiento para la fila
    mov dl, 46 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol10
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol10]
    int 21h

    ; Línea divisora
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 8 ; Direccionamiento para la fila
    mov dl, 0 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, linea
    int 21h

    ; Título 2 - DATOS MÉDICOS
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 10 ; Direccionamiento para la fila
    mov dl, 0 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, titulo2
    int 21h

    ; Línea divisora
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 11 ; Direccionamiento para la fila
    mov dl, 0 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, linea
    int 21h

    ; Pregunta 11. - F. Consulta.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 12 ; Direccionamiento para la fila
    mov dl, 6 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol11
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol11]
    int 21h

    ; Pregunta 12. - F. Alta.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 12 ; Direccionamiento para la fila
    mov dl, 46 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol12
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol12]
    int 21h

    ; Pregunta 13. - Duración proceso.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 13 ; Direccionamiento para la fila
    mov dl, 19 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol13
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol13]
    int 21h

    ; Título 3 - NOTAS...
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 15 ; Direccionamiento para la fila
    mov dl, 0 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, titulo3
    int 21h

    ; Línea divisora
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 16 ; Direccionamiento para la fila
    mov dl, 0 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, linea
    int 21h

    ; Pregunta 14. - Diagnóstico.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 17 ; Direccionamiento para la fila
    mov dl, 6 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol14
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol14]
    int 21h

    ; Pregunta 15. - Tratamiento.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 19 ; Direccionamiento para la fila
    mov dl, 6 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol15
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol15]
    int 21h

    ; Pregunta 16. - Tratamiento.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 21 ; Direccionamiento para la fila
    mov dl, 2 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol16
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol16]
    int 21h

    ; Pregunta 17. - Notas/Observaciones.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 23 ; Direccionamiento para la fila
    mov dl, 4 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, pregBol17
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [resBol17]
    int 21h

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #10 ======|-----------------|
PRACTICA_10:
    
    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, tituloPrac10      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, instruccionPrac10      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Impresión del título1 "CAPTURA DE CARACTERES" ---|
    mov ah, 09h
    mov dx, offset subtitulo1
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
    mov dx, offset pregChar1
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

    ; |-----|====== CAPTURA DEL SEGUNDO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el segundo caracter: "
    mov ah, 09h
    mov dx, offset pregChar2
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

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Impresión del título1 "IMPRESION DE CARACTERES" ---|
    mov ah, 09h
    mov dx, offset subtitulo2
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----------------|====== COMIENZA LA IMPRESIÓN DE CARACTERES ======|-----------------|
    ; |--- Impresión del mensaje "El primer caracter que ingreso es:" ---|
    mov ah, 09h
    mov dx, offset respuestaChar1
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char1" ---|
    mov ah, 02h
    mov dl, char1
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Impresión del mensaje "El segundo caracter que ingreso es:" ---|
    mov ah, 09h
    mov dx, offset respuestaChar2
    int 21h

    ; |--- Se muestra el segundo caracter de nombre "char2" ---|
    mov ah, 02h
    mov dl, char2
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h
    
    ; |--- Impresión del mensaje "Gracias por utilizar el programa! =)" ---|
    mov ah, 09h
    mov dx, offset finPrac10
    int 21h

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #11 ======|-----------------|
PRACTICA_11:

    mov ah, 02h 
    mov dx, 10d
    int 21h
    
    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, tituloPrac11      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h                   ; Petición para imprimir una cadena
    lea dx, instruccionPrac11      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Impresión del título1 "CAPTURA DE CARACTERES" ---|
    mov ah, 09h
    mov dx, offset titulo1Prac11
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
    mov dx, offset preg0Prac11
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char0" ---|
    mov ah, 01h
    int 21h
    mov char0Prac11, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL SEGUNDO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el segundo caracter: "
    mov ah, 09h
    mov dx, offset preg1Prac11
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char1" ---|
    mov ah, 01h
    int 21h
    mov char1Prac11, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL TERCER CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el tercer caracter: "
    mov ah, 09h
    mov dx, offset preg2Prac11
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char2" ---|
    mov ah, 01h
    int 21h
    mov char2Prac11, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL CUARTO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el cuarto caracter: "
    mov ah, 09h
    mov dx, offset preg3Prac11
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char3" ---|
    mov ah, 01h
    int 21h
    mov char3Prac11, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL QUINTO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el quinto caracter: "
    mov ah, 09h
    mov dx, offset preg4Prac11
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char4" ---|
    mov ah, 01h
    int 21h
    mov char4Prac11, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL SEXTO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el sexto caracter: "
    mov ah, 09h
    mov dx, offset preg5Prac11
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char5" ---|
    mov ah, 01h
    int 21h
    mov char5Prac11, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL SÉPTIMO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el septimo caracter: "
    mov ah, 09h
    mov dx, offset preg6Prac11
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char6" ---|
    mov ah, 01h
    int 21h
    mov char6Prac11, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL OCTAVO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el octavo caracter: "
    mov ah, 09h
    mov dx, offset preg7Prac11
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char7" ---|
    mov ah, 01h
    int 21h
    mov char7Prac11, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL NOVENO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el noveno caracter: "
    mov ah, 09h
    mov dx, offset preg8Prac11
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char8" ---|
    mov ah, 01h
    int 21h
    mov char8Prac11, al

    ; |--- Salto de línea ---|
    mov dl, 0ah
    int 21h

    ; |-----|====== CAPTURA DEL DÉCIMO CARACTER ======|-----|
    ; Impresión del mensaje "Ingrese el decimo caracter: "
    mov ah, 09h
    mov dx, offset preg9Prac11
    int 21h

    ; salto de línea
    mov ah, 02h
    mov dx, 000
    int 21h

    ; |--- Captura del caracter "char9" ---|
    mov ah, 01h
    int 21h
    mov char9Prac11, al

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
    mov dx, offset titulo2Prac11
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
    mov dx, offset titulo3Prac11
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char0" ---|
    mov ah, 02h
    mov dl, char0Prac11
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char1" ---|
    mov ah, 02h
    mov dl, char1Prac11
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char2" ---|
    mov ah, 02h
    mov dl, char2Prac11
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char3" ---|
    mov ah, 02h
    mov dl, char3Prac11
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char4" ---|
    mov ah, 02h
    mov dl, char4Prac11
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char5" ---|
    mov ah, 02h
    mov dl, char5Prac11
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char6" ---|
    mov ah, 02h
    mov dl, char6Prac11
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char7" ---|
    mov ah, 02h
    mov dl, char7Prac11
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char8" ---|
    mov ah, 02h
    mov dl, char8Prac11
    int 21h

    ; |--- Salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Se muestra el primer caracter de nombre "char9" ---|
    mov ah, 02h
    mov dl, char9Prac11
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
    mov dx, offset finPrac11
    int 21h

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #12 ======|-----------------|
PRACTICA_12:

    mov ah, 02h 
    mov dx, 10d
    int 21h
    
    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, tituloPrac12      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h                   ; Petición para imprimir una cadena
    lea dx, instruccionPrac12      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
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
    mov dx, offset finPrac12
    int 21h

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #13 ======|-----------------|
PRACTICA_13:

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, offset tituloPrac13      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h                   ; Petición para imprimir una cadena
    lea dx, offset instruccionPrac13      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Impresión de la preguntaOracion "Favor de capturar una oración corta" ---|
    mov ah, 09h
    lea dx, offset preguntaOracion
    int 21h

    ; |--- Captura de la oración en una cadena ---|
    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [charOracion]
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Imprimir un salto de línea ---|
    mov ah, 02h
    mov dx, 10
    int 21h

    ; |--- Impresión de la preguntaNumero "Favor de capturar un número" ---|
    mov ah, 09h
    lea dx, offset preguntaNumero
    int 21h

    ; |--- Captura del caracter "char0" ---|
    mov ah, 01h
    int 21h
    mov char0Prac13, al

    ; |--- Limpieza de pantalla ---|
    mov ah, 00  ; Inician los "permisos" para comenzar con la interrupcion 10h
    mov al, 03h ; Limpieza de pantalla.
    int 10h     ; Se ejecuta la interrupcion

    ; |-----------------|====== INICIO DEL CICLO ======|-----------------|
    ciclo:

        inc contaPrac13

        mov ah,02h ; peticion para color el cursor
        mov dh, contaPrac13 ; direccionamiento para la fila
        mov dl, 1 ; direccionamiento para la columna
        int 10h    ; interuppcion ejecuta la instruccion

        ; |--- Imprimir el número ingresado por el usuario ---|
        mov ah, 02h
        mov dl, char0Prac13
        int 21h

        ; |--- Imprimir eun espacio en blanco ---|
        mov dx, 000
        mov ah, 02h
        int 21h

        ; |--- Imprimir la oración ingresada por el usuario ---|
        mov ah,09h;primera linea 
        lea dx, offset charOracion  ;carga lo de dx 
        int 21h;

        cmp contaPrac13, 14 ;if conta=14
        jz finciclo
        jmp ciclo

    finciclo:

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #14 ======|-----------------|
PRACTICA_14:

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    mov ah, 09h              ; Petición para imprimir una cadena
    lea dx, offset tituloPrac14      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h                   ; Petición para imprimir una cadena
    lea dx, offset instruccionPrac14      ; Carga la cadena
    int 21h                       ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    ; |--- Inicio del primer ciclo ---|
    ciclo_1: ; inicia ciclo

        inc contaPrac14 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.
        inc conta2Prac14 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.

        ;-----------------------------------------------------------
        ; |--- Configuración de filas y columnas ---|
        mov ah, 02h ; Peticion para color el cursor
        mov dh, 4 ; Direccionamiento para la fila
        mov dl, 0 ; Direccionamiento para la columna
        int 10h ; Interuppcion que ejecuta la instruccion.

        mov ah, 09h ; Función para imprimir una cadena.
        lea dx, preguntaPrac14 ; Carga a dx lo que hay en ‘pregunta’.
        int 21h ; Se ejecuta la interrupción (Imprimir la cadena de nombre "pregunta").

        mov ah, 3fh ; Cargar 3fh al registro "ah".
        mov bx, 00 ; Cargar 00 al registro bx.
        mov cx, 100 ; Limita la cantidad de caracteres que el usuario puede capturar.
        mov dx, offset [resPrac14] ; Lo que se capture en la cadena "res1" se mueve al registro dx.
        int 21h ; Se ejecuta la interrupción (captura de cadenas).
    ;-----------------------------------------------------------

        ; |--- Configuración de filas y columnas ---|
        mov ah, 02h ; Peticion para color el cursor.
        mov dh, contaPrac14 ; Direccionamiento para la fila. Como puede observar, se va a utilizar le valor del contador que se inicializó en "5".
        mov dl, 10 ; Direccionamiento para la columna.
        int 10h    ; Interuppcion ejecuta la instrucción.

        mov dx, 000 ; Caracter para imprimir un espacio.
        mov ah, 02h ; Se mueve 02h al registro "ah".
        int 21h ; Se ejecuta la interrupción (Imprimir el espacio en blanco).

        mov ah, 09h ; Cargar 09h al registro ah.
        lea dx, resPrac14 ; Carga a dx lo que hay en ‘res1’.
        int 100001b ; ; Se ejecuta la interrupción. (Imprimir la cadena de nombre "res1", que es lo que capturó el usuario) (Se encuentra escrito en binario).

        ; |--- Estas dos instrucciones no son necesarias, ya que nunca se cumplen. ---|
        ; cmp conta, 5 ; Cuando la condición ("conta" = 5) se cumple, la operación es igual a "0", en caso contrario, será igual a "1".
        ; jz fin ; Debido a que la comparación anterior siempre es "1", esta instrucción nunca se cumple.

        cmp conta2Prac14, 5 ; Esta instrucción ejecutará una "comparación" entre "conta2" y el valor de "5", en donde, si los valores coinciden, esta operación tendrá el valor de "0", en caso contrario, tomará el valor de "1".
        jz finCiclo_1 ; Si la operación anterior tiene un valor de "0", esta instrucción se cumplirá.
        jmp ciclo_1 ; Esta instrucción regresa a la etiqueta "ciclo", que es el inicio del primer ciclo.

    ; |--- Fin del primer ciclo ---|
    finCiclo_1:

    ; |--- Inicio del segundo ciclo ---|
    ciclo_2: ; inicia ciclo

        inc conta3Prac14 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.
        inc conta4Prac14 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.

        ;-----------------------------------------------------------
        ; |--- Configuración de filas y columnas ---|
        mov ah, 02h ; Peticion para color el cursor
        mov dh, 4 ; Direccionamiento para la fila
        mov dl, 35 ; Direccionamiento para la columna
        int 10h ; Interuppcion que ejecuta la instruccion.

        mov ah, 09h ; Función para imprimir una cadena.
        lea dx, preguntaPrac14 ; Carga a dx lo que hay en ‘pregunta’.
        int 21h ; Se ejecuta la interrupción (Imprimir la cadena de nombre "pregunta").

        mov ah, 3fh ; Cargar 3fh al registro "ah".
        mov bx, 00 ; Cargar 00 al registro bx.
        mov cx, 100 ; Limita la cantidad de caracteres que el usuario puede capturar.
        mov dx, offset [resPrac14] ; Lo que se capture en la cadena "res1" se mueve al registro dx.
        int 21h ; Se ejecuta la interrupción (captura de cadenas).
        ;-----------------------------------------------------------

        ; |--- Configuración de filas y columnas ---|
        mov ah, 02h ; Peticion para color el cursor
        mov dh, conta3Prac14 ; Direccionamiento para la fila
        mov dl, 45 ; Direccionamiento para la columna
        int 10h ; Interuppcion ejecuta la instruccion

        mov dx, 000 ; Caracter para imprimir un espacio.
        mov ah, 02h ; Se mueve 02h al registro "ah".
        int 21h ; Se ejecuta la interrupción (Imprimir el espacio en blanco).

        mov ah, 09h ; Cargar 09h al registro ah.
        lea dx, resPrac14 ; Carga a dx lo que hay en ‘res1’.
        int 100001b ; ; Se ejecuta la interrupción. (Imprimir la cadena de nombre "res1", que es lo que capturó el usuario) (Se encuentra escrito en binario).

        ; |--- Estas dos instrucciones no son necesarias, ya que nunca se cumplen. ---|
        ; cmp conta3, 47 ; Cuando la condición ("conta3" = 47) se cumple, la operación es igual a "0", en caso contrario, será igual a "1".
        ; jz fin1 ; Debido a que la comparación anterior siempre es "1", esta instrucción nunca se cumple.

        cmp conta4Prac14, 47 ; Esta instrucción ejecutará una "comparación" entre "conta4" y el valor de "47", en donde, si los valores coinciden, esta operación tendrá el valor de "0", en caso contrario, tomará el valor de "1".
        jz finCiclo_2 ; Si la operación anterior tiene un valor de "0", esta instrucción se cumplirá.
        jmp ciclo_2 ; Esta instrucción regresa a la etiqueta "ciclo1", que es el inicio del segundo ciclo.

    ; |--- Fin del segundo ciclo ---|
    finCiclo_2:

jmp READKEY

; |-----------------|====== COMIENZA LA ETIQUETA DE LA PRÁCTICA #15 ======|-----------------|
PRACTICA_15:

    mov ah, 02h
    mov dx, 10d
    int 21h
    
    mov ah, 09h                      ; Petición para imprimir una cadena
    lea dx, offset tituloPrac15      ; Carga la cadena
    int 21h  

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 09h                           ; Petición para imprimir una cadena
    lea dx, offset instruccionPrac15      ; Carga la cadena
    int 21h                               ; Imprime la cadena

    mov ah, 02h
    mov dx, 10d
    int 21h

    mov ah, 02h
    mov dx, 10d
    int 21h

    ;-----------------------------------------------------------
    ; |--- Configuración de filas y columnas para el posicionamiento de la pregunta ---|
    mov ah, 02h ; Peticion para color el cursor
    mov dh, 5 ; Direccionamiento para la fila
    mov dl, 0 ; Direccionamiento para la columna
    int 10h ; Interuppcion que ejecuta la instruccion.

    mov ah, 09h ; Función para imprimir una cadena.
    lea dx, preguntaPrac15 ; Carga a dx lo que hay en ‘pregunta’.
    int 21h ; Se ejecuta la interrupción (Imprimir la cadena de nombre "pregunta").

    mov ah, 3fh ; Cargar 3fh al registro "ah".
    mov bx, 00 ; Cargar 00 al registro bx.
    mov cx, 30 ; Limita la cantidad de caracteres que el usuario puede capturar.
    mov dx, offset [resPrac15] ; Lo que se capture en la cadena "res1" se mueve al registro dx.
    int 21h ; Se ejecuta la interrupción (captura de cadenas).
    ;-----------------------------------------------------------

    ; |--- Inicio del primer ciclo ---|
    ciclo_1Prac15: ; inicia ciclo

        inc cont1Prac15 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.
        inc cont2Prac15 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.

        ; |--- Configuración de filas y columnas para el posicionamiento de la impresión de caracteres ---|
        mov ah, 02h ; Peticion para color el cursor.
        mov dh, cont1Prac15 ; Direccionamiento para la fila. Como puede observar, se va a utilizar le valor del contador que se inicializó en "5".
        mov dl, 10 ; Direccionamiento para la columna.
        int 10h    ; Interuppcion ejecuta la instrucción.

        mov dx, 000 ; Caracter para imprimir un espacio.
        mov ah, 02h ; Se mueve 02h al registro "ah".
        int 21h ; Se ejecuta la interrupción (Imprimir el espacio en blanco).

        mov ah, 09h ; Cargar 09h al registro ah.
        lea dx, resPrac15 ; Carga a dx lo que hay en ‘res1’.
        int 100001b ; ; Se ejecuta la interrupción. (Imprimir la cadena de nombre "res1", que es lo que capturó el usuario) (Se encuentra escrito en binario).

        ; |--- Configuración de filas y columnas para el posicionamiento de la impresión de caracteres ---|
        mov ah, 02h ; Peticion para color el cursor.
        mov dh, cont1Prac15 ; Direccionamiento para la fila. Como puede observar, se va a utilizar le valor del contador que se inicializó en "5".
        mov dl, 45 ; Direccionamiento para la columna.
        int 10h    ; Interuppcion ejecuta la instrucción.

        mov dx, 000 ; Caracter para imprimir un espacio.
        mov ah, 02h ; Se mueve 02h al registro "ah".
        int 21h ; Se ejecuta la interrupción (Imprimir el espacio en blanco).

        mov ah, 09h ; Cargar 09h al registro ah.
        lea dx, resPrac15 ; Carga a dx lo que hay en ‘res1’.
        int 100001b ; ; Se ejecuta la interrupción. (Imprimir la cadena de nombre "res1", que es lo que capturó el usuario) (Se encuentra escrito en binario).

        ; |--- Estas dos instrucciones no son necesarias, ya que nunca se cumplen. ---|
        ; cmp conta, 5 ; Cuando la condición ("conta" = 5) se cumple, la operación es igual a "0", en caso contrario, será igual a "1".
        ; jz fin ; Debido a que la comparación anterior siempre es "1", esta instrucción nunca se cumple.

        cmp cont2Prac15, 4 ; Esta instrucción ejecutará una "comparación" entre "conta2" y el valor de "5", en donde, si los valores coinciden, esta operación tendrá el valor de "0", en caso contrario, tomará el valor de "1".
        jz finCiclo_1Prac15 ; Si la operación anterior tiene un valor de "0", esta instrucción se cumplirá.
        jmp ciclo_1Prac15 ; Esta instrucción regresa a la etiqueta "ciclo", que es el inicio del primer ciclo.

    ; |--- Fin del primer ciclo ---|
    finCiclo_1Prac15:

    ; |--- Inicio del segundo ciclo ---|
    ciclo_2Prac15: ; inicia ciclo

        inc cont3Prac15 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.
        inc cont4Prac15 ; Incrementar el contador, es decir, podrá tener la función de incrementar cada vez que el ciclo se repita.

        ; |--- Configuración de filas y columnas ---|
        mov ah, 02h ; Peticion para color el cursor
        mov dh, cont3Prac15 ; Direccionamiento para la fila
        mov dl, 28 ; Direccionamiento para la columna
        int 10h ; Interuppcion ejecuta la instruccion

        mov dx, 000 ; Caracter para imprimir un espacio.
        mov ah, 02h ; Se mueve 02h al registro "ah".
        int 21h ; Se ejecuta la interrupción (Imprimir el espacio en blanco).

        mov ah, 09h ; Cargar 09h al registro ah.
        lea dx, resPrac15 ; Carga a dx lo que hay en ‘res1’.
        int 100001b ; ; Se ejecuta la interrupción. (Imprimir la cadena de nombre "res1", que es lo que capturó el usuario) (Se encuentra escrito en binario).

        ; |--- Estas dos instrucciones no son necesarias, ya que nunca se cumplen. ---|
        ; cmp conta3, 47 ; Cuando la condición ("conta3" = 47) se cumple, la operación es igual a "0", en caso contrario, será igual a "1".
        ; jz fin1 ; Debido a que la comparación anterior siempre es "1", esta instrucción nunca se cumple.

        cmp cont4Prac15, 57 ; Esta instrucción ejecutará una "comparación" entre "conta4" y el valor de "47", en donde, si los valores coinciden, esta operación tendrá el valor de "0", en caso contrario, tomará el valor de "1".
        jz finCiclo_2Prac15 ; Si la operación anterior tiene un valor de "0", esta instrucción se cumplirá.
        jmp ciclo_2Prac15 ; Esta instrucción regresa a la etiqueta "ciclo1", que es el inicio del segundo ciclo.

    ; |--- Fin del segundo ciclo ---|
    finCiclo_2Prac15:

jmp READKEY

FIN:

.exit   ; Termina el código.
end     ; Termina todo el programa.