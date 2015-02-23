opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F628A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCLATH equ 0Ah ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INTCON equ 0Bh ;# 
# 378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIR1 equ 0Ch ;# 
# 434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1 equ 0Eh ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1L equ 0Eh ;# 
# 446 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1H equ 0Fh ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T1CON equ 010h ;# 
# 510 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR2 equ 011h ;# 
# 516 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T2CON equ 012h ;# 
# 586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1 equ 015h ;# 
# 592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1L equ 015h ;# 
# 598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1H equ 016h ;# 
# 604 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCP1CON equ 017h ;# 
# 661 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCSTA equ 018h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXREG equ 019h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCREG equ 01Ah ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CMCON equ 01Fh ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
OPTION_REG equ 081h ;# 
# 881 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISA equ 085h ;# 
# 942 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISB equ 086h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1059 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCON equ 08Eh ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PR2 equ 092h ;# 
# 1113 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXSTA equ 098h ;# 
# 1169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
SPBRG equ 099h ;# 
# 1175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1181 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEADR equ 09Bh ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1224 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1230 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
VRCON equ 09Fh ;# 
	FNCALL	_main,_setBCDCharacterNumber
	FNCALL	_setBCDCharacterNumber,_getBCDByteBitForNumber
	FNCALL	_getBCDByteBitForNumber,___wmul
	FNROOT	_main
	global	_SEGMENT_MAP
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"../main.c"
	line	31
_SEGMENT_MAP:
	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	0
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	retlw	01h
	retlw	0

	global __end_of_SEGMENT_MAP
__end_of_SEGMENT_MAP:
	global	_SEGMENT_MAP
	global	_CMCON
_CMCON	set	0x1F
	global	_PORTA
_PORTA	set	0x5
	global	_PORTAbits
_PORTAbits	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_TRISAbits
_TRISAbits	set	0x85
	global	_TRISB
_TRISB	set	0x86
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"Debug.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_main:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	2
??___wmul:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
	global	?_getBCDByteBitForNumber
?_getBCDByteBitForNumber:	; 2 bytes @ 0x6
	global	getBCDByteBitForNumber@b
getBCDByteBitForNumber@b:	; 2 bytes @ 0x6
	ds	2
	global	getBCDByteBitForNumber@number
getBCDByteBitForNumber@number:	; 2 bytes @ 0x8
	ds	2
??_getBCDByteBitForNumber:	; 0 bytes @ 0xA
	ds	4
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	getBCDByteBitForNumber@row
getBCDByteBitForNumber@row:	; 2 bytes @ 0x0
	ds	2
	global	getBCDByteBitForNumber@id
getBCDByteBitForNumber@id:	; 2 bytes @ 0x2
	ds	2
?_setBCDCharacterNumber:	; 0 bytes @ 0x4
	global	setBCDCharacterNumber@num
setBCDCharacterNumber@num:	; 2 bytes @ 0x4
	ds	2
??_setBCDCharacterNumber:	; 0 bytes @ 0x6
	ds	1
	global	main@acumulated
main@acumulated:	; 2 bytes @ 0x7
	ds	2
	global	main@currentNumber
main@currentNumber:	; 2 bytes @ 0x9
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    140
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     11      11
;!    BANK1            80      0       0
;!    BANK2            48      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _setBCDCharacterNumber->_getBCDByteBitForNumber
;!    _getBCDByteBitForNumber->___wmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_setBCDCharacterNumber
;!    _setBCDCharacterNumber->_getBCDByteBitForNumber
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0    1518
;!                                              7 BANK0      4     4      0
;!              _setBCDCharacterNumber
;! ---------------------------------------------------------------------------------
;! (1) _setBCDCharacterNumber                                3     1      2    1424
;!                                              4 BANK0      3     1      2
;!             _getBCDByteBitForNumber
;! ---------------------------------------------------------------------------------
;! (2) _getBCDByteBitForNumber                              12     8      4    1206
;!                                              6 COMMON     8     4      4
;!                                              0 BANK0      4     4      0
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     220
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _setBCDCharacterNumber
;!     _getBCDByteBitForNumber
;!       ___wmul
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              80      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               50      B       B       3       13.8%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0       0       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!BANK2               30      0       0       9        0.0%
;!DATA                 0      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 63 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  currentNumbe    2    9[BANK0 ] int 
;;  acumulated      2    7[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_setBCDCharacterNumber
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"../main.c"
	line	63
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../main.c"
	line	63
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	65
	
l583:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	66
	
l585:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h,0	;volatile
	line	67
	
l587:	
	bcf	(133)^080h,1	;volatile
	line	68
	
l589:	
	bsf	(133)^080h,2	;volatile
	line	69
	
l591:	
	bsf	(133)^080h,3	;volatile
	line	70
	
l593:	
	bsf	(133)^080h,4	;volatile
	line	71
	
l595:	
	bsf	(133)^080h,5	;volatile
	line	72
	
l597:	
	bsf	(133)^080h,6	;volatile
	line	73
	
l599:	
	bsf	(133)^080h,7	;volatile
	line	75
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	76
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	77
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	81
	
l601:	
	movlw	(07h)
	movwf	(31)	;volatile
	line	83
	
l603:	
	movlw	low(09h)
	movwf	(main@currentNumber)
	movlw	high(09h)
	movwf	((main@currentNumber))+1
	line	84
	clrf	(main@acumulated)
	clrf	(main@acumulated+1)
	goto	l605
	line	85
	
l28:	
	line	86
	
l605:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(5),3	;volatile
	goto	u131
	goto	u130
u131:
	goto	l29
u130:
	
l607:	
	movf	((main@acumulated+1)),w
	iorwf	((main@acumulated)),w
	skipz
	goto	u141
	goto	u140
u141:
	goto	l29
u140:
	line	87
	
l609:	
	movlw	09h
	xorwf	(main@currentNumber),w
	iorwf	(main@currentNumber+1),w
	skipnz
	goto	u151
	goto	u150
u151:
	goto	l613
u150:
	
l611:	
	movf	(main@currentNumber),w
	addlw	low(01h)
	movwf	(main@currentNumber)
	movf	(main@currentNumber+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@currentNumber)
	goto	l615
	
l31:	
	
l613:	
	clrf	(main@currentNumber)
	clrf	(main@currentNumber+1)
	goto	l615
	
l33:	
	line	88
	
l615:	
	movlw	low(01h)
	movwf	(main@acumulated)
	movlw	high(01h)
	movwf	((main@acumulated))+1
	line	89
	goto	l619
	
l29:	
	btfsc	(5),3	;volatile
	goto	u161
	goto	u160
u161:
	goto	l619
u160:
	line	90
	
l617:	
	clrf	(main@acumulated)
	clrf	(main@acumulated+1)
	goto	l619
	line	91
	
l35:	
	goto	l619
	line	92
	
l34:	
	
l619:	
	movf	(main@currentNumber+1),w
	clrf	(setBCDCharacterNumber@num+1)
	addwf	(setBCDCharacterNumber@num+1)
	movf	(main@currentNumber),w
	clrf	(setBCDCharacterNumber@num)
	addwf	(setBCDCharacterNumber@num)

	fcall	_setBCDCharacterNumber
	goto	l605
	line	93
	
l36:	
	line	85
	goto	l605
	
l37:	
	line	94
	
l38:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_setBCDCharacterNumber

;; *************** function _setBCDCharacterNumber *****************
;; Defined at:
;;		line 46 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  num             2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_getBCDByteBitForNumber
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	46
global __ptext1
__ptext1:	;psect for function _setBCDCharacterNumber
psect	text1
	file	"../main.c"
	line	46
	global	__size_of_setBCDCharacterNumber
	__size_of_setBCDCharacterNumber	equ	__end_of_setBCDCharacterNumber-_setBCDCharacterNumber
	
_setBCDCharacterNumber:	
;incstack = 0
	opt	stack 5
; Regs used in _setBCDCharacterNumber: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	47
	
l581:	
	movlw	low(0)
	movwf	(getBCDByteBitForNumber@b)
	movlw	high(0)
	movwf	((getBCDByteBitForNumber@b))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setBCDCharacterNumber@num+1),w
	clrf	(getBCDByteBitForNumber@number+1)
	addwf	(getBCDByteBitForNumber@number+1)
	movf	(setBCDCharacterNumber@num),w
	clrf	(getBCDByteBitForNumber@number)
	addwf	(getBCDByteBitForNumber@number)

	fcall	_getBCDByteBitForNumber
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	xorwf	(0+(?_getBCDByteBitForNumber)),w
	andlw	not ((1<<1)-1)
	xorwf	(0+(?_getBCDByteBitForNumber)),w
	movwf	(6)	;volatile
	line	48
	movlw	low(01h)
	movwf	(getBCDByteBitForNumber@b)
	movlw	high(01h)
	movwf	((getBCDByteBitForNumber@b))+1
	movf	(setBCDCharacterNumber@num+1),w
	clrf	(getBCDByteBitForNumber@number+1)
	addwf	(getBCDByteBitForNumber@number+1)
	movf	(setBCDCharacterNumber@num),w
	clrf	(getBCDByteBitForNumber@number)
	addwf	(getBCDByteBitForNumber@number)

	fcall	_getBCDByteBitForNumber
	movf	(0+(?_getBCDByteBitForNumber)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setBCDCharacterNumber+0)+0
	rlf	(??_setBCDCharacterNumber+0)+0,f
	movf	(6),w	;volatile
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	movwf	(6)	;volatile
	line	49
	movlw	low(02h)
	movwf	(getBCDByteBitForNumber@b)
	movlw	high(02h)
	movwf	((getBCDByteBitForNumber@b))+1
	movf	(setBCDCharacterNumber@num+1),w
	clrf	(getBCDByteBitForNumber@number+1)
	addwf	(getBCDByteBitForNumber@number+1)
	movf	(setBCDCharacterNumber@num),w
	clrf	(getBCDByteBitForNumber@number)
	addwf	(getBCDByteBitForNumber@number)

	fcall	_getBCDByteBitForNumber
	movf	(0+(?_getBCDByteBitForNumber)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setBCDCharacterNumber+0)+0
	rlf	(??_setBCDCharacterNumber+0)+0,f
	rlf	(??_setBCDCharacterNumber+0)+0,f
	movf	(6),w	;volatile
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	movwf	(6)	;volatile
	line	50
	movlw	low(03h)
	movwf	(getBCDByteBitForNumber@b)
	movlw	high(03h)
	movwf	((getBCDByteBitForNumber@b))+1
	movf	(setBCDCharacterNumber@num+1),w
	clrf	(getBCDByteBitForNumber@number+1)
	addwf	(getBCDByteBitForNumber@number+1)
	movf	(setBCDCharacterNumber@num),w
	clrf	(getBCDByteBitForNumber@number)
	addwf	(getBCDByteBitForNumber@number)

	fcall	_getBCDByteBitForNumber
	movf	(0+(?_getBCDByteBitForNumber)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setBCDCharacterNumber+0)+0
	rlf	(??_setBCDCharacterNumber+0)+0,f
	rlf	(??_setBCDCharacterNumber+0)+0,f
	rlf	(??_setBCDCharacterNumber+0)+0,f
	movf	(6),w	;volatile
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	movwf	(6)	;volatile
	line	51
	movlw	low(04h)
	movwf	(getBCDByteBitForNumber@b)
	movlw	high(04h)
	movwf	((getBCDByteBitForNumber@b))+1
	movf	(setBCDCharacterNumber@num+1),w
	clrf	(getBCDByteBitForNumber@number+1)
	addwf	(getBCDByteBitForNumber@number+1)
	movf	(setBCDCharacterNumber@num),w
	clrf	(getBCDByteBitForNumber@number)
	addwf	(getBCDByteBitForNumber@number)

	fcall	_getBCDByteBitForNumber
	movf	(0+(?_getBCDByteBitForNumber)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setBCDCharacterNumber+0)+0
	swapf	(??_setBCDCharacterNumber+0)+0,f
	movf	(6),w	;volatile
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	movwf	(6)	;volatile
	line	52
	movlw	low(05h)
	movwf	(getBCDByteBitForNumber@b)
	movlw	high(05h)
	movwf	((getBCDByteBitForNumber@b))+1
	movf	(setBCDCharacterNumber@num+1),w
	clrf	(getBCDByteBitForNumber@number+1)
	addwf	(getBCDByteBitForNumber@number+1)
	movf	(setBCDCharacterNumber@num),w
	clrf	(getBCDByteBitForNumber@number)
	addwf	(getBCDByteBitForNumber@number)

	fcall	_getBCDByteBitForNumber
	movf	(0+(?_getBCDByteBitForNumber)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setBCDCharacterNumber+0)+0
	swapf	(??_setBCDCharacterNumber+0)+0,f
	rlf	(??_setBCDCharacterNumber+0)+0,f
	movf	(6),w	;volatile
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	movwf	(6)	;volatile
	line	53
	movlw	low(06h)
	movwf	(getBCDByteBitForNumber@b)
	movlw	high(06h)
	movwf	((getBCDByteBitForNumber@b))+1
	movf	(setBCDCharacterNumber@num+1),w
	clrf	(getBCDByteBitForNumber@number+1)
	addwf	(getBCDByteBitForNumber@number+1)
	movf	(setBCDCharacterNumber@num),w
	clrf	(getBCDByteBitForNumber@number)
	addwf	(getBCDByteBitForNumber@number)

	fcall	_getBCDByteBitForNumber
	movf	(0+(?_getBCDByteBitForNumber)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setBCDCharacterNumber+0)+0
	swapf	(??_setBCDCharacterNumber+0)+0,f
	rlf	(??_setBCDCharacterNumber+0)+0,f
	rlf	(??_setBCDCharacterNumber+0)+0,f
	movf	(6),w	;volatile
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	andlw	not (((1<<1)-1)<<6)
	xorwf	(??_setBCDCharacterNumber+0)+0,w
	movwf	(6)	;volatile
	line	54
	
l22:	
	return
	opt stack 0
GLOBAL	__end_of_setBCDCharacterNumber
	__end_of_setBCDCharacterNumber:
	signat	_setBCDCharacterNumber,4216
	global	_getBCDByteBitForNumber

;; *************** function _getBCDByteBitForNumber *****************
;; Defined at:
;;		line 41 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  b               2    6[COMMON] int 
;;  number          2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  id              2    2[BANK0 ] int 
;;  row             2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         0       4       0       0
;;      Temps:          4       0       0       0
;;      Totals:         8       4       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_setBCDCharacterNumber
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	41
global __ptext2
__ptext2:	;psect for function _getBCDByteBitForNumber
psect	text2
	file	"../main.c"
	line	41
	global	__size_of_getBCDByteBitForNumber
	__size_of_getBCDByteBitForNumber	equ	__end_of_getBCDByteBitForNumber-_getBCDByteBitForNumber
	
_getBCDByteBitForNumber:	
;incstack = 0
	opt	stack 5
; Regs used in _getBCDByteBitForNumber: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	42
	
l573:	
	movf	(getBCDByteBitForNumber@number+1),w
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	(getBCDByteBitForNumber@number),w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(07h)
	movwf	(___wmul@multiplicand)
	movlw	high(07h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getBCDByteBitForNumber@row+1)
	addwf	(getBCDByteBitForNumber@row+1)
	movf	(0+(?___wmul)),w
	clrf	(getBCDByteBitForNumber@row)
	addwf	(getBCDByteBitForNumber@row)

	line	43
	
l575:	
	comf	(getBCDByteBitForNumber@b),w
	movwf	(??_getBCDByteBitForNumber+0)+0
	comf	(getBCDByteBitForNumber@b+1),w
	movwf	((??_getBCDByteBitForNumber+0)+0+1)
	incf	(??_getBCDByteBitForNumber+0)+0,f
	skipnz
	incf	((??_getBCDByteBitForNumber+0)+0+1),f
	movf	(getBCDByteBitForNumber@row),w
	addwf	0+(??_getBCDByteBitForNumber+0)+0,w
	movwf	(??_getBCDByteBitForNumber+2)+0
	movf	(getBCDByteBitForNumber@row+1),w
	skipnc
	incf	(getBCDByteBitForNumber@row+1),w
	addwf	1+(??_getBCDByteBitForNumber+0)+0,w
	movwf	1+(??_getBCDByteBitForNumber+2)+0
	movf	0+(??_getBCDByteBitForNumber+2)+0,w
	addlw	low(06h)
	movwf	(getBCDByteBitForNumber@id)
	movf	1+(??_getBCDByteBitForNumber+2)+0,w
	skipnc
	addlw	1
	addlw	high(06h)
	movwf	1+(getBCDByteBitForNumber@id)
	line	44
	
l577:	
	movf	(getBCDByteBitForNumber@id),w
	movwf	(??_getBCDByteBitForNumber+0)+0
	addwf	(??_getBCDByteBitForNumber+0)+0,w
	addlw	low((_SEGMENT_MAP)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(?_getBCDByteBitForNumber)
	fcall	stringdir
	movwf	(?_getBCDByteBitForNumber+1)
	goto	l19
	
l579:	
	line	45
	
l19:	
	return
	opt stack 0
GLOBAL	__end_of_getBCDByteBitForNumber
	__end_of_getBCDByteBitForNumber:
	signat	_getBCDByteBitForNumber,8314
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getBCDByteBitForNumber
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext3
__ptext3:	;psect for function ___wmul
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l561:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l563
	line	44
	
l121:	
	line	45
	
l563:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u91
	goto	u90
u91:
	goto	l122
u90:
	line	46
	
l565:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l122:	
	line	47
	movlw	01h
	
u105:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u105
	line	48
	
l567:	
	movlw	01h
	
u115:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u115
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u121
	goto	u120
u121:
	goto	l563
u120:
	goto	l569
	
l123:	
	line	52
	
l569:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l124
	
l571:	
	line	53
	
l124:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
