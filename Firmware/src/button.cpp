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
#include <avr/io.h>
#include "button.h"

const uint16_t long_press_dly = 100;
static volatile uint8_t btn_state = 0;
static volatile uint8_t btn_latch = 0;
static volatile uint8_t btn_press = 0;
static volatile uint8_t btn_press_long = 0;


/**
 * @brief button init: using TCB0 for periodic interrupt and debouncing
 *      TCB0 input frequency is Fclk/2 = 10MHz, CCMP=0xFFFF -> int every 6.25ms
 *      Debouncing time = 2 (toggle!) * 26ms = 52ms
 * 
 */

void btn_init(void)
{
    // init ports
    pinMode(BTN1_PIN, INPUT_PULLUP);
    pinMode(BTN2_PIN, INPUT_PULLUP);
    pinMode(BTN3_PIN, INPUT_PULLUP);
    pinMode(PUMP_EN_PIN, INPUT_PULLUP);
    // init TCB0
    TCB0.CCMP = 0xFFFF;
    TCB0.CTRLA = 0x01 << TCB_CLKSEL_gp; // input clock = Fclk/2
    TCB0.CTRLB = 0x00;                  // Periodic interrrupt mode
    TCB0.INTCTRL |= 0x01;               // enable Capture Interrupt
    TCB0.CTRLA |= TCB_ENABLE_bm;        // enable timer
}

uint8_t btn_get_long(uint8_t btn_mask)
{
    uint8_t sreg = SREG;
    cli();
	btn_mask &= btn_press_long;		// read key(s)
	SREG = sreg;
    if (btn_mask) btn_press_long &= ~btn_mask;
	return btn_mask;
}

uint8_t btn_get_press(uint8_t btn_mask)
{
    uint8_t sreg = SREG;
    cli();
	btn_mask &= btn_press;		// read key(s)
	SREG = sreg;
    
    if (btn_mask) 
    {
        btn_latch = btn_mask;
        btn_press &= ~btn_mask;
    }

	return btn_mask;
}
uint8_t btn_get_release(uint8_t btn_mask)
{
    uint8_t result = (btn_latch & btn_mask) && !(btn_state & btn_mask);
    if (result) 
    {
        btn_latch &= ~btn_mask;
    }
	return result;
}

ISR(TCB0_INT_vect)
{
    uint8_t i;
    static uint8_t toggle = 0;
    static uint16_t rpt;
    static uint8_t ct0, ct1, btn_released;
    uint8_t _btn_state = btn_state;
    TCB0.INTFLAGS = 0x01;       // clr the flag

    toggle ^=1;
    if (toggle)
    {
        i = _btn_state ^ (~PORTA_IN & BTN_MASK);
        ct0 = ~(ct0 & i);
        ct1 = ct0 ^ (ct1 & i);
        i &= ct0 & ct1;
        _btn_state  ^= i;

        btn_press |= _btn_state & i;
        if (!_btn_state) 
        {
            rpt = long_press_dly;
            btn_released = 1;
        }
        if ((--rpt == 0) && btn_released)	
        {
            btn_press_long |= _btn_state;
            btn_released = 0;
        }
        btn_state = _btn_state;
    }
}