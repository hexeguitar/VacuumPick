/*
 * Copyright (c) 2021 by Piotr Zapart / www.hexefx.com
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this list 
 * of conditions and the following disclaimer.
 * 
 * Redistributions in binary form must reproduce the above copyright notice, this 
 * list of conditions and the following disclaimer in the documentation and/or other
 * materials provided with the distribution.
 *  
 * Neither the name of the Piotr Zapart or HEXE FX nor the names of its 
 * contributors may be used to endorse or promote products derived from this software 
 * without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
 * IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT 
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
 * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 * 
 */
#ifndef _VALVE_H
#define _VALVE_H

#include "Arduino.h"

typedef enum
{
    VALVE_MODE_VACUUM, 
    VALVE_MODE_BLOW,
}Valve_mode_t;

class Valve
{
public:
    Valve(uint8_t pin) : _pin(pin) {};
    ~Valve() {};
    void init()
    {
        pinMode(_pin, OUTPUT);
        digitalWrite(_pin, LOW);
    }
    void on(void) { digitalWrite(_pin, HIGH);}
    void off(void) {digitalWrite(_pin, LOW);}

private:
    const uint8_t _pin;
};


class ValveSystem
{
public:
    ValveSystem(uint8_t v1_pin, uint8_t v2_pin, uint8_t v3_pin) :
    v1(v1_pin), v2(v2_pin), v3(v3_pin)
    {
        v1.init();
        v2.init();
        v3.init();
        set(VALVE_MODE_VACUUM);
    }

    void set(Valve_mode_t newMode)
    {
        if (newMode != mode)
        {
            mode = newMode;
            switch (mode)
            {
            case VALVE_MODE_VACUUM:
                v1.off();
                v2.off();
                v3.off();
                break;
            case VALVE_MODE_BLOW:
                v1.on();
                v2.on();
                v3.on();
                break;
            default:
                break;
            }
        }
    }
private:
    Valve v1, v2, v3;
    Valve_mode_t mode = VALVE_MODE_VACUUM;
};

#endif // _VALVE_H
