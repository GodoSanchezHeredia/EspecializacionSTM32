/*
 * Keypad.h
 *
 *  Created on: Sep 23, 2023
 *      Author: DELL
 */

#ifndef INC_KEYPAD_H_
#define INC_KEYPAD_H_

#include "stm32f4xx_hal.h"
#include "main.h"






void Keypad_Init(void);
char  Keypad_Read(void);




#endif /* INC_KEYPAD_H_ */
