/*
 * Keypad.c
 *
 *  Created on: Sep 23, 2023
 *      Author: DELL
 */

#include "Keypad.h"
#include "stm32f4xx_hal.h"
void Keypad_Init(void){

	//habiltamos las estructuras
	GPIO_InitTypeDef GPIO_InitStruct = {0};

	 //inicializamos el clock de los puertos
	__HAL_RCC_GPIOA_CLK_ENABLE();
	  __HAL_RCC_GPIOB_CLK_ENABLE();

	  // inicializando las salidas digitales de las filas
	  GPIO_InitStruct.Pin = ROW1_Pin;
	  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	  GPIO_InitStruct.Pull = GPIO_NOPULL;
	  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	  HAL_GPIO_Init(ROW1_GPIO_Port, &GPIO_InitStruct);

	  GPIO_InitStruct.Pin = ROW2_Pin;
	  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	  GPIO_InitStruct.Pull = GPIO_NOPULL;
	  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	  HAL_GPIO_Init(ROW2_GPIO_Port, &GPIO_InitStruct);

	  GPIO_InitStruct.Pin = ROW3_Pin;
	  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	  GPIO_InitStruct.Pull = GPIO_NOPULL;
	  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	  HAL_GPIO_Init(ROW3_GPIO_Port, &GPIO_InitStruct);

	  GPIO_InitStruct.Pin = ROW4_Pin;
	  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	  GPIO_InitStruct.Pull = GPIO_NOPULL;
	  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	  HAL_GPIO_Init(ROW4_GPIO_Port, &GPIO_InitStruct);

	  //las filas inician en 0
	  HAL_GPIO_WritePin(ROW1_GPIO_Port, ROW1_Pin, 0);
	  HAL_GPIO_WritePin(ROW2_GPIO_Port, ROW2_Pin, 0);
	  HAL_GPIO_WritePin(ROW3_GPIO_Port, ROW3_Pin, 0);
	  HAL_GPIO_WritePin(ROW4_GPIO_Port, ROW4_Pin, 0);

	  //inicializamos las columnas como entradas
	  GPIO_InitStruct.Pin = COL1_Pin;
	  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	  GPIO_InitStruct.Pull = GPIO_PULLUP;
	  HAL_GPIO_Init(COL1_GPIO_Port, &GPIO_InitStruct);

	  GPIO_InitStruct.Pin = COL2_Pin;
	  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	  GPIO_InitStruct.Pull = GPIO_PULLUP;
	  HAL_GPIO_Init(COL2_GPIO_Port, &GPIO_InitStruct);

	  GPIO_InitStruct.Pin = COL3_Pin;
	  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	  GPIO_InitStruct.Pull = GPIO_PULLUP;
	  HAL_GPIO_Init(COL3_GPIO_Port, &GPIO_InitStruct);

	  GPIO_InitStruct.Pin = COL4_Pin;
	  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	  GPIO_InitStruct.Pull = GPIO_PULLUP;
	  HAL_GPIO_Init(COL4_GPIO_Port, &GPIO_InitStruct);



}
char  Keypad_Read(void){

	 char keys[4][4] = {{'1', '2', '3', 'A'},
	                     {'4', '5', '6', 'B'},
	                     {'7', '8', '9', 'C'},
	                     {'*', '0', '#', 'D'}};

	  for(int i = 0; i < 4; i++)
	  {
	    // Set current column as output and low
	    switch(i)
	    {
	      case 0:
	        HAL_GPIO_WritePin(ROW1_GPIO_Port, ROW1_Pin, GPIO_PIN_RESET);
	        HAL_GPIO_WritePin(ROW2_GPIO_Port, ROW2_Pin, GPIO_PIN_SET);
	        HAL_GPIO_WritePin(ROW3_GPIO_Port, ROW3_Pin, GPIO_PIN_SET);
	        HAL_GPIO_WritePin(ROW4_GPIO_Port, ROW4_Pin, GPIO_PIN_SET);
	        break;

	      case 1:
	        HAL_GPIO_WritePin(ROW1_GPIO_Port, ROW1_Pin, GPIO_PIN_SET);
	        HAL_GPIO_WritePin(ROW2_GPIO_Port, ROW2_Pin, GPIO_PIN_RESET);
	        HAL_GPIO_WritePin(ROW3_GPIO_Port, ROW3_Pin, GPIO_PIN_SET);
	        HAL_GPIO_WritePin(ROW4_GPIO_Port, ROW4_Pin, GPIO_PIN_SET);
	    break;

	  case 2:
	    HAL_GPIO_WritePin(ROW1_GPIO_Port, ROW1_Pin, GPIO_PIN_SET);
	    HAL_GPIO_WritePin(ROW2_GPIO_Port, ROW2_Pin, GPIO_PIN_SET);
	    HAL_GPIO_WritePin(ROW3_GPIO_Port, ROW3_Pin, GPIO_PIN_RESET);
	    HAL_GPIO_WritePin(ROW4_GPIO_Port, ROW4_Pin, GPIO_PIN_SET);
	    break;

	  case 3:
	    HAL_GPIO_WritePin(ROW1_GPIO_Port, ROW1_Pin, GPIO_PIN_SET);
	    HAL_GPIO_WritePin(ROW2_GPIO_Port, ROW2_Pin, GPIO_PIN_SET);
	    HAL_GPIO_WritePin(ROW3_GPIO_Port, ROW3_Pin, GPIO_PIN_SET);
	    HAL_GPIO_WritePin(ROW4_GPIO_Port, ROW4_Pin, GPIO_PIN_RESET);
	    break;
	}
	// Read current rows
	if(HAL_GPIO_ReadPin(COL1_GPIO_Port, COL1_Pin) == GPIO_PIN_RESET)
	  return keys[i][0];
	if(HAL_GPIO_ReadPin(COL2_GPIO_Port, COL2_Pin) == GPIO_PIN_RESET)
	  return keys[i][1];
	if(HAL_GPIO_ReadPin(COL3_GPIO_Port, COL3_Pin) == GPIO_PIN_RESET)
	  return keys[i][2];
	if(HAL_GPIO_ReadPin(COL4_GPIO_Port, COL4_Pin) == GPIO_PIN_RESET)
	  return keys[i][3];
	}
	return 0; // No key pressed

}


