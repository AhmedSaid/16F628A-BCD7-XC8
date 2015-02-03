#include <xc.h>
#include <stdlib.h>
#define _XTAL_FREQ       4000000

// CONFIG FOR 16F628A BY ROBER = 3F61
#pragma config FOSC = XT        // Oscillator Selection bits (XT oscillator: Crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = ON       // Power-up Timer Enable bit (PWRT enabled)
#pragma config MCLRE = ON       // RA5/MCLR/VPP Pin Function Select bit (RA5/MCLR/VPP pin function is MCLR)
#pragma config BOREN = ON       // Brown-out Detect Enable bit (BOD enabled)
#pragma config LVP = OFF        // Low-Voltage Programming Enable bit (RB4/PGM pin has digital I/O function, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EE Memory Code Protection bit (Data memory code protection off)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// END CONFIG


////////////////////////////////////////////////////////////
//                    BCD
////////////////////////////////////////////////////////////
#define BCDa              PORTBbits.RB0
#define BCDb              PORTBbits.RB1
#define BCDc              PORTBbits.RB2
#define BCDd              PORTBbits.RB3
#define BCDe              PORTBbits.RB4
#define BCDf              PORTBbits.RB5
#define BCDg              PORTBbits.RB6
#define BCDdot            PORTBbits.RB7

//unsigned char const SEGMENT_MAP[10] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
unsigned int const SEGMENT_MAP[70] = {0,1,1,1,1,1,1, // 0
                                      0,0,0,0,1,1,0, // 1
                                      1,0,1,1,0,1,1, // 2
                                      1,0,0,1,1,1,1, // 3
                                      1,1,0,0,1,1,0, // 4
                                      1,1,0,1,1,0,1, // 5
                                      1,1,1,1,1,0,1, // 6
                                      0,0,0,0,1,1,1, // 7
                                      1,1,1,1,1,1,1, // 8
                                      1,1,0,1,1,1,1}; // 9
int getBCDByteBitForNumber(int b, int number) {
    int row = 7*number;
    int id = row+6-b;
    return SEGMENT_MAP[id];
}
void setBCDCharacterNumber(int num) {
    BCDa = getBCDByteBitForNumber(0, num);
    BCDb = getBCDByteBitForNumber(1, num);
    BCDc = getBCDByteBitForNumber(2, num);
    BCDd = getBCDByteBitForNumber(3, num);
    BCDe = getBCDByteBitForNumber(4, num);
    BCDf = getBCDByteBitForNumber(5, num);
    BCDg = getBCDByteBitForNumber(6, num);
}
void setBCDDotCharacter(int num) {
    BCDdot = 1;
}


////////////////////////////////////////////////////////////
//                    MAIN
////////////////////////////////////////////////////////////
void main(void) {
    // InitAllLEDs
    PORTA = 0x00;
    TRISAbits.TRISA0 = 0; // 1 input
    TRISAbits.TRISA1 = 0; // 1 input
    TRISAbits.TRISA2 = 1; // 1 input
    TRISAbits.TRISA3 = 1; // 1 input
    TRISAbits.TRISA4 = 1; // 1 input
    TRISAbits.TRISA5 = 1; // 1 input
    TRISAbits.TRISA6 = 1; // 1 input
    TRISAbits.TRISA7 = 1; // 1 input

    PORTB = 0x00;
    TRISB = 0x00; // 0x00 all as output
    PORTB = 0x00;


    
    CMCON = 0x07; // 0x07 = 00000111 (comparadores desactivados para 16F628A, I/O digitales.)

    int currentNumber = 9;
    int acumulated = 0;
    while(1) {
        if(PORTAbits.RA3 == 1 && acumulated == 0) {
            currentNumber = (currentNumber == 9) ? 0 : currentNumber+1;
            acumulated = 1;
        } else if(PORTAbits.RA3 == 0) {
            acumulated = 0;
        }
        setBCDCharacterNumber(currentNumber);
    }
 }