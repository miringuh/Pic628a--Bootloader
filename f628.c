#include <xc.h>
#include "headers/f628.h"

int main(int argc, char const *argv[])
{
    __delay_ms(400);
    // led(0X02);
    // __delay_ms(10);
    while (1)
    {
        led(1);
        __delay_ms(60);
        led(2);
        __delay_ms(60);
    }
    return 0;
}
