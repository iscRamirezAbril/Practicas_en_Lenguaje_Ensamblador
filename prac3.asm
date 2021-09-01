; --- Practica 3. Imprimir portada institucional ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.code

; |------ LIMPIEZA DE PANTALLA -----|
mov ah, 00h ; pedir permiso para utilizar la pantalla
mov al, 03h ; limpieza de pantalla
int 10h ; se ejecuta la función

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

.exit
end