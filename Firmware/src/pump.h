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
#ifndef _PUMP_H
#define _PUMP_H

#include <Arduino.h>

typedef enum
{
    PUMP_STATE_OFF,
    PUMP_STATE_ON,
    PUMP_STATE_ALWAYS_ON
}pump_state_t;

class Pump 
{
public:
    Pump(uint8_t pin) : _pin(pin) {};
    ~Pump() {};
    void init()
    {
        pinMode(_pin, OUTPUT);
        analogWrite(_pin, 0x00); 
    }
    void on()
    {
        if (state != PUMP_STATE_ALWAYS_ON)
        {
            state = PUMP_STATE_ON;
            analogWrite(_pin, speed);
        }
    }
    void off()
    {
        if (state != PUMP_STATE_ALWAYS_ON)
        {
            state = PUMP_STATE_OFF;
            analogWrite(_pin, 0x00);
        }
    }
    void pause(bool p)
    {
        if (state != PUMP_STATE_ALWAYS_ON)
        {
            if (p)  off();
            else    on();
        }
    }
    void toggle()
    {
        switch(state)
        {
            case PUMP_STATE_OFF:
                on();
                break;
            case PUMP_STATE_ON:
                off();
                break;
            case PUMP_STATE_ALWAYS_ON:
                break;
            default: break;
        }
    }
    void setAlwaysOn(bool p)
    {
        if (p) 
        {
            state = PUMP_STATE_ALWAYS_ON;
            analogWrite(_pin, speed);
        }
        else
        {
            state = PUMP_STATE_OFF;
            analogWrite(_pin, 0x00);
        }
    }
    bool toogleAlwaysOn()
    {
        if (state == PUMP_STATE_ALWAYS_ON)  setAlwaysOn(false);
        else                                setAlwaysOn(true);
        return (state == PUMP_STATE_ALWAYS_ON); 
    }
    void setSpeed(uint8_t spd)
    {
        uint16_t tmp16 = (uint16_t)spd * spd;
        tmp16 = ((uint16_t)spd<<1) - (tmp16>>8);
        speed = tmp16 > 0xFF ? 0xFF : tmp16;  
    }
    void update()
    {
        if (state == PUMP_STATE_ALWAYS_ON || state == PUMP_STATE_ON)
            analogWrite(_pin, speed);
    }

private:
    const uint8_t _pin;
    uint8_t speed = 0;
    pump_state_t state = PUMP_STATE_OFF;
};

#endif // _PUMP_H
