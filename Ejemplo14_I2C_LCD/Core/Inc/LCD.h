/*
 * LCD.h
 *
 *  Created on: Sep 23, 2023
 *      Author: DELL
 */

#ifndef INC_LCD_H_
#define INC_LCD_H_


#include "stdint.h"
#include "main.h"
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_gpio.h"

#define ADD_LCD 0X4E

#define RS_BIT	0
#define RW_BIT	1
#define E_BIT 	2
#define D4_BIT 	4
#define D5_BIT 	5
#define D6_BIT  6
#define D7_BIT  7


typedef enum{
	fila1=0,
	fila2,
	fila3,
	fila4
}Ubicacion;


void LCD_STM32_CMD(uint8_t a,uint8_t rs);
void LCD_STM32_BUS(uint8_t a);
void LCD_STM32_INIT(void);
void LCD_STM32_SET_CURSOR(uint8_t x,Ubicacion y);
void LCD_STM32_PRINT_CHAR(char a);
void LCD_STM32_PRINT_STRING(char *a);
void LCD_STM32_New_Char(uint8_t a,uint8_t b,uint8_t c,uint8_t d ,uint8_t e ,uint8_t f,uint8_t g,uint8_t h,uint8_t i);
void LCD_STM32_Print_New_Char(uint8_t a);
void LCD_STM32_Clear(void);
void LCD_STM32_Home(void);




#endif /* INC_LCD_H_ */
