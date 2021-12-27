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
#include <Arduino.h>
#include "button.h"
#include "Wire.h"
#include "pump.h"
#include "valve.h"

// pin definiions 
#define POT_PIN     PIN_PA1

#define V1_PIN      PIN_PB4
#define V2_PIN      PIN_PB5
#define V3_PIN      PIN_PA4

#define LED1_PIN    PIN_PC0
#define LED2_PIN    PIN_PC1
#define LED3_PIN    PIN_PC2

#define PUMP_PIN    PIN_PA3

uint8_t speed = 0, speed_old = 0;

ValveSystem valves(V1_PIN, V2_PIN, V3_PIN);
Pump pump(PUMP_PIN);

void setup()
{
    //Serial.begin(115200);
    //Serial.println(F("VacuumPick"));
    pump.init();
    pinMode(LED1_PIN, OUTPUT); digitalWrite(LED1_PIN, HIGH);
    pinMode(LED2_PIN, OUTPUT); digitalWrite(LED2_PIN, LOW);
    pinMode(LED3_PIN, OUTPUT); digitalWrite(LED3_PIN, LOW);

    btn_init();
    analogReadResolution(8);
}

void loop()
{
    speed = analogRead(POT_PIN);
    if (speed != speed_old)
    {
        pump.setSpeed(speed);
        speed_old = speed;
    }

    if (btn_get_press(1<<BTN1))
    {
        valves.set(VALVE_MODE_VACUUM);
        digitalWriteFast(LED1_PIN, HIGH);
        digitalWriteFast(LED2_PIN, LOW);
    }
    if (btn_get_press(1<<BTN2))
    {
        valves.set(VALVE_MODE_BLOW);
        digitalWriteFast(LED1_PIN, LOW);
        digitalWriteFast(LED2_PIN, HIGH);
    }
    if (btn_get_press(1<<BTN3))
    {
        bool result = pump.toogleAlwaysOn();
        digitalWrite(LED3_PIN, result);
    }
    if (btn_get_press(1<<PUMP_EN))
    {
        pump.on();
    }
    if (btn_get_release(1<<PUMP_EN))
    {
        pump.off();
    }
    if (btn_get_long(1<<PUMP_EN))
    {
        Serial.println(F("Pump LONG"));
    }

    pump.update();
}
