;Universidad del Valle de Guatemala
;Nancy Gabriela Mazariegos Molina (22513)
;Jose Santiago Pereira Alvarado (22318)
;Curso: Organización de computadoras y Assembler
;Profesor: Roger Diaz
;Descripcion: Laboratorio 9
;24/05/2023

includelib libcmt.lib
includelib libvcruntime.lib
includelib libucrt.lib
includelib legacy_stdio_definitions.lib

.386
.model flat, stdcall, C
.stack 4096


.data
arrI  DWORD 12 DUP(0,0,0,0,0,0,0,0,0,0,0,0)
arrF DWORD 12 DUP(0,0,0,0,0,0,0,0,0,0,0,0)


msg BYTE "Bienvenido a la calculadora de IVA",0Ah,0
msg1 BYTE "Ingresa el monto a facturar del mes de enero:",0Ah,0
msg2 BYTE "Ingresa el monto a facturar del mes de febrero:",0Ah,0
msg3 BYTE "Ingresa el monto a facturar del mes de marzo:",0Ah,0
msg4 BYTE "Ingresa el monto a facturar del mes de abril:",0Ah,0
msg5 BYTE "Ingresa el monto a facturar del mes de mayo:",0Ah,0
msg6 BYTE "Ingresa el monto a facturar del mes de junio:",0Ah,0
msg7 BYTE "Ingresa el monto a facturar del mes de julio:",0Ah,0
msg8 BYTE "Ingresa el monto a facturar del mes de agosto:",0Ah,0
msg9 BYTE "Ingresa el monto a facturar del mes de septiembre:",0Ah,0
msg10 BYTE "Ingresa el monto a facturar del mes de octubre:",0Ah,0
msg11 BYTE "Ingresa el monto a facturar del mes de noviembre:",0Ah,0
msg12 BYTE "Ingresa el monto a facturar del mes de diciembre:",0Ah,0

fmt db "%d",0



.code 


extrn printf:near
extrn scanf:near
extrn exit: near
	
public main 
main proc 

push offset msg
call printf 

push offset msg1
call printf 
add esp, 4
lea eax, [ebp-4]

push eax 
push offset	fmt 
call scanf 

add esp, 8
mov eax, [ebp-4]
push eax

add esp, 8
push 0
call exit



RET                 
main endp

lector proc


lector endp

end
