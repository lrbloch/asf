/**
 * \file
 *
 * \brief TCC Quick Start configuration for SAM R21 Xplained Pro
 *
 * Copyright (c) 2014-2015 Atmel Corporation. All rights reserved.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. The name of Atmel may not be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * 4. This software may only be redistributed and used in connection with an
 *    Atmel microcontroller product.
 *
 * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * \asf_license_stop
 *
 */
/*
 * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
 */

#ifndef CONF_QUICK_START_H_INCLUDED
#define CONF_QUICK_START_H_INCLUDED

//[definition_pwm]
/** PWM module to use */
#define CONF_PWM_MODULE      TCC1
/** PWM channel */
#define CONF_PWM_CHANNEL     0
/** PWM output */
#define CONF_PWM_OUTPUT      0
/** PWM output pin */
#define CONF_PWM_OUT_PIN     PIN_PA06E_TCC1_WO0
/** PWM output pin mux */
#define CONF_PWM_OUT_MUX     MUX_PA06E_TCC1_WO0
//[definition_pwm]

//[definition_fault]
/** FAULT EIC pin */
#define CONF_FAULT_EIC_PIN       SW0_EIC_PIN
/** FAULT EIC pin mux */
#define CONF_FAULT_EIC_PIN_MUX   SW0_EIC_PINMUX
/** FAULT EIC line */
#define CONF_FAULT_EIC_LINE      SW0_EIC_LINE

/** FAULT event generator */
#define CONF_FAULT_EVENT_GENERATOR EVSYS_ID_GEN_EIC_EXTINT_8
/** FAULT event user for recoverable fault */
#define CONF_FAULT_EVENT_USER      EVSYS_ID_USER_TCC1_MC_0
//[definition_fault]

#endif /* CONF_QUICK_START_H_INCLUDED */
