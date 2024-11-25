#include <xc.h>
#include <stdlib.h>
#include <stdint.h>
#include <ctype.h>
#include "config.h"

#if !defined(__f628)
#define __f628
#define _XTAL_FREQ 16000000

void led(uint8_t val){
    CMCON = 0X0F;
    TRISA = 0;
    PORTA = val;
}



#endif // __f628
