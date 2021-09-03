; --- Practica 7. Imprimir tres caracteres. ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

    Descripcion DB "Programa que ingresa un caracter desde el teclado$"
    Ingresar1 DB "Ingrese el primer caracter: $"
    Mostrar1 DB "El primer caracter que ingreso es el $"
    Ingresar2 DB "Ahora ingrese un segundo caracter: $"
    Mostrar2 DB "El caracter 2 que usted ingreso es el $"
    Ingresar3 DB "Por ultimo, ingrese un tercer caracter: $"
    Mostrar3 DB "El ultimo caracter ingresado es el $"

.code

    inicio:
            ; |--- Inicializar variables para el permiso de imprimir cadenas ---|
            mov ax, @data
            mov ds, ax

            ; |--- Limpieza de pantalla ---|
            mov ah, 00h
            mov al, 03h
            int 10h

            mov ah, 09h
            mov dx, offset Descripcion
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

.exit
end
