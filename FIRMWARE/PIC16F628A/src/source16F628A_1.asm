	list      p=16f628A           ; list directive to define processor
	#include <p16F628A.inc>       ; processor specific variable definitions

	errorlevel  -302              ; suppress message 302 from list file

	__CONFIG b'11111101101001'
	radix hex



	contador EQU 0x20 ; Registro para almacenar conteo de digitos(este registro se crea en la memoria de registros file register)
	retardo EQU 0x21 ; Registro utilizado en antirebote




vecReset
	ORG 	0x000
 	GOTO doReset

	
	org 0x05 ; Origen del codigo de tabla.-
	BCD7SEG: ; retlw b'gfedcba'  para display catodo comun
	addwf PCL,1 ; Se incrementa el contador del programa.-
	retlw b'0111111' ; 0
	retlw b'0000110' ; 1
	retlw b'1011011' ; 2
	retlw b'1001111' ; 3
	retlw b'1100110' ; 4
	retlw b'1101101' ; 5
	retlw b'1111101' ; 6
	retlw b'0000111' ; 7
	retlw b'1111111' ; 8
	retlw b'1101111' ; 9
	clrf contador ; Si llega 10, se resetea contador
	retlw b'0111111' ; 0

doReset
	bsf	STATUS,RP0 ; Banco 1

	movlw b'11111111' ; PORTA entradas
	movwf TRISA

	clrf TRISB ; PORTB salidas


	bcf	STATUS,RP0 ; Banco 0.

	movlw b'00000111' ; comparadores desactivados, I/O digitales.
	movwf CMCON ; 

	clrf PORTB
	clrf PORTA

	
doMain
	movlw b'0111111' ; Digitos comienza en cero.-
	movwf PORTB
	clrf contador
Testeo
	btfss PORTA,3 ; Testeamos si esta a 1 logico.-
		goto Testeo

		call antirebote
		btfss PORTA,3 ; Testeamos nuevamente.-
		goto Testeo

		incf contador,1 ; Se ha pulsado, incrementamos contador.-
		movfw contador ; pasamos contador a W
		call BCD7SEG ; Llamamos tabla.-
		movwf PORTB ; Cargamos valor recibido por Tabla en PORTB
		btfsc PORTA,3 ; Esperamos a que se suelte el pulsador -**-
		goto $-1 ; No, PCL - 1, --> btfss PORTA,Pulsador.-

		call antirebote
		btfsc PORTA,3 ; Testeamos nuevamente.-
		goto $-4 ; No, Falsa alarma, volvemos a testear a que se suelte (**).-

		goto Testeo 
		
		
		
antirebote
	movlw 0xFF
	movwf retardo
antireboteB
   	decfsz retardo,1
	goto antireboteB
	return

	end