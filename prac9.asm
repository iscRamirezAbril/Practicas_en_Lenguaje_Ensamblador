; --- Practica 9. Imprimir un formulario y al mismo tiempo capturar. ---
; - Alumna: Ramirez Flores Abril
; - No. de Control: 19211715

.model small
.stack
.data

    titulo db "BOLETA DE CONSULTA PARA UN PACIENTE$"

    titulo1 db "Datos Personales...$"
    preg1 db "Apellidos Paciente: ","$"
    res1 db 20 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
    preg2 db "Nombre Paciente: ","$"
    res2 db 10 dup(" "),"$" ; Esta línea nos permite capturar la cadena de respuesta, con un máximo de 100 caracteres
    preg3 db "Direccion: ","$"
    res3 db 20 dup(" "),"$"
    preg4 db "C. Postal: ","$"
    res4 db 20 dup(" "),"$"
    preg5 db "Localidad: ","$"
    res5 db 20 dup(" "),"$"    
    preg6 db "Provincia: ","$"
    res6 db 20 dup(" "),"$"
    preg7 db "F. nacimiento: ","$"
    res7 db 30 dup(" "),"$"    
    preg8 db "No. Seguro Social: ","$"
    res8 db 30 dup(" "),"$" 
    preg9 db "Sexo: ","$"
    res9 db 30 dup(" "),"$" 
    preg10 db "Telefono: ","$"
    res10 db 30 dup(" "),"$" 
    linea db "--------------------------------------------------------------------------------$"

    titulo2 db "Datos Medicos...$"
    preg11 db "F. Consulta: ","$"
    res11 db 30 dup(" "),"$" 
    preg12 db "F. Alta: ","$"
    res12 db 30 dup(" "),"$" 
    preg13 db "Duracion Proceso: ","$"
    res13 db 30 dup(" "),"$" 
  
    titulo3 db "Notas...$"
    preg14 db "Diagnostico: ","$"
    res14 db 150 dup(" "),"$" 
    preg15 db "Tratamiento: ","$"
    res15 db 150 dup(" "),"$" 
    preg16 db "Otros datos de interes: ","$"
    res16 db 150 dup(" "),"$" 
    preg17 db "Notas/Observaciones: ","$"
    res17 db 150 dup(" "),"$" 
.code

    mov ax, seg @data
    mov ds, ax

    ; |--- Limpieza de pantalla ---|
    mov ah, 00h
    mov al, 03h
    int 10h

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
    lea dx, preg1
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res1]
    int 21h

    ; Pregunta 2. - Nombre Paciente.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 3 ; Direccionamiento para la fila
    mov dl, 43 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg2
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res2]
    int 21h

    ; Pregunta 3. - Dirección
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 4 ; Direccionamiento para la fila
    mov dl, 7 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg3
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res3]
    int 21h

    ; Pregunta 4. - C. Postal
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 4 ; Direccionamiento para la fila
    mov dl, 45 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg4
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res4]
    int 21h

    ; Pregunta 5. - Localidad.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 5 ; Direccionamiento para la fila
    mov dl, 7 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg5
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res5]
    int 21h

    ; Pregunta 6. - Provincia.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 5 ; Direccionamiento para la fila
    mov dl, 45 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg6
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res6]
    int 21h

    ; Pregunta 7. - F. Nacimiento.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 6 ; Direccionamiento para la fila
    mov dl, 5 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg7
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res7]
    int 21h

    ; Pregunta 8. - No. Seguro Social.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 6 ; Direccionamiento para la fila
    mov dl, 42 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg8
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res8]
    int 21h

    ; Pregunta 9. - Sexo.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 7 ; Direccionamiento para la fila
    mov dl, 10 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg9
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res9]
    int 21h

    ; Pregunta 10. - Teléfono.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 7 ; Direccionamiento para la fila
    mov dl, 46 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg10
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res10]
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
    lea dx, preg11
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res11]
    int 21h

    ; Pregunta 12. - F. Alta.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 12 ; Direccionamiento para la fila
    mov dl, 46 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg12
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res12]
    int 21h

    ; Pregunta 13. - Duración proceso.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 13 ; Direccionamiento para la fila
    mov dl, 19 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg13
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res13]
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
    lea dx, preg14
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res14]
    int 21h

    ; Pregunta 15. - Tratamiento.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 19 ; Direccionamiento para la fila
    mov dl, 6 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg15
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res15]
    int 21h

    ; Pregunta 16. - Tratamiento.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 21 ; Direccionamiento para la fila
    mov dl, 2 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg16
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res16]
    int 21h

    ; Pregunta 17. - Notas/Observaciones.
    ; |--- Configuración de filas y columnas ---|
    mov ah, 02h ; Peticion para colocar el curso
    mov dh, 23 ; Direccionamiento para la fila
    mov dl, 4 ; Direccionamiento para la columna
    int 10h  ;Interrupcion ejecuta la instruccion

    mov ah, 09h
    lea dx, preg17
    int 21h

    mov ah, 3fh ; Pedir permiso para capturar la cadena
    mov bx, 00
    mov cx, 100
    mov dx, offset [res17]
    int 21h
.exit
end