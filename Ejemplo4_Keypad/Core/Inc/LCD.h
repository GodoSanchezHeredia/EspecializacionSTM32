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


#define E_ON   	HAL_GPIO_WritePin(E_GPIO_Port, E_Pin, 1);
#define E_OFF  	HAL_GPIO_WritePin(E_GPIO_Port, E_Pin, 0);

#define RS_ON 	HAL_GPIO_WritePin(RS_GPIO_Port, RS_Pin, 1);
#define RS_OFF 	HAL_GPIO_WritePin(RS_GPIO_Port, RS_Pin, 0);

#define D4_ON 	HAL_GPIO_WritePin(D4_GPIO_Port, D4_Pin, 1);
#define D4_OFF 	HAL_GPIO_WritePin(D4_GPIO_Port, D4_Pin, 0);

#define D5_ON 	HAL_GPIO_WritePin(D5_GPIO_Port, D5_Pin, 1);
#define D5_OFF 	HAL_GPIO_WritePin(D5_GPIO_Port, D5_Pin, 0);

#define D6_ON 	HAL_GPIO_WritePin(D6_GPIO_Port, D6_Pin, 1);
#define D6_OFF 	HAL_GPIO_WritePin(D6_GPIO_Port, D6_Pin, 0);

#define D7_ON 	HAL_GPIO_WritePin(D7_GPIO_Port, D7_Pin, 1);
#define D7_OFF 	HAL_GPIO_WritePin(D7_GPIO_Port, D7_Pin, 0);


typedef enum{
	fila1=0,
	fila2,
	fila3,
	fila4
}Ubicacion;


void LCD_STM32_CMD(uint8_t a);
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
