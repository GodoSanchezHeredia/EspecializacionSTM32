/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
/**
 * 0 : no se desea usar segger system view
 * 1 : se usa para la depuracion
 */
#define SYSTEM_VIEW				1
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
TaskHandle_t task1_handle;
TaskHandle_t task3_handle;
QueueHandle_t xQueue;			//manejador del queue
QueueHandle_t xQueueUART;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
void Task1(void *params);
void Task2(void *params);
void Task3(void *params);



void UART_Printf(char *format,...);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
volatile uint8_t rx=0;
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	BaseType_t status;
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */
#if SYSTEM_VIEW
  DWT->CTRL |= 1;
  SEGGER_SYSVIEW_Conf();
  /*solo se va usar cuando se trabaje en modo one shot*/
//  SEGGER_SYSVIEW_Start();

#endif
  HAL_UART_Receive_IT(&huart2, &rx,1);
  status = xTaskCreate(Task1,
		  	  	  	  "tarea 1",
					  configMINIMAL_STACK_SIZE,
					  "hola mundo\r\n",
					  3,
					  &task1_handle);
  configASSERT(status == pdPASS);


  status = xTaskCreate(Task2,
		  	  	  	  "tarea 2",
					  configMINIMAL_STACK_SIZE,
					  NULL,
					  3,
					  NULL);
  configASSERT(status == pdPASS);
  xQueue = xQueueCreate(/*# de elementos*/ 5,
  		  	  	  	  	  /*# de bytes por item*/ sizeof(uint8_t));
  configASSERT(xQueue != NULL);

  xQueueUART = xQueueCreate(/*# de elementos*/ 5,
    		  	  	  	  	  /*# de bytes por item*/ sizeof(uint8_t));
    configASSERT(xQueue != NULL);


  /* inicializa el kernel*/
  vTaskStartScheduler();
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 84;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
void Task1(void *params){
	/*inicializacion*/
	uint8_t data = 0;
	BaseType_t status;			//verificar
	/*loop*/
	while(1){
		data++;
		//se envia un dato
		status = xQueueSend(xQueue, (void*)&data, 0xFFFFFFFF);
		//verificar si el queue se envio correctamente
		if(status == pdTRUE){
			SEGGER_SYSVIEW_PrintfHost("dato enviado\r\r");

		}else{
			SEGGER_SYSVIEW_PrintfHost("que lleno!\r\r");

		}
		vTaskDelay(50);

	vTaskDelay(pdMS_TO_TICKS(100));
	}
	/*Elimina la tarea*/
	vTaskDelete(NULL);
}
void Task2(void *params){
	uint8_t data;
	BaseType_t status;
	for(;;){
		//recibir informacion
		status = xQueueReceive(xQueue, (void *)&data, 400);

		if(status == pdTRUE){
			SEGGER_SYSVIEW_PrintfHost("dato recibido->%d\r\r",data);
		}else{
			SEGGER_SYSVIEW_PrintfHost("ningun dato disponible\r\r");
		}
		vTaskDelay(500);
	}
	/*Elimina la tarea*/
	vTaskDelete(NULL);
}
void Task3(void *params){
	uint8_t receivedByte;

	for(;;){
		 // Esperar a que llegue un byte a la cola desde la ISR de la UART
		        if (xQueueReceive(xQueueUART, &receivedByte, portMAX_DELAY) == pdPASS) {
		            // Procesar el byte recibido
		            UART_Printf("UART Received\n");
		            SEGGER_SYSVIEW_PrintfHost("dato recibido->%d\r\r",receivedByte);
		        }

	}
	/*Elimina la tarea*/
	vTaskDelete(NULL);
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart){
	BaseType_t xHigherPriorityTaskWoken = pdFALSE;
		xQueueSendFromISR(xQueueUART, &rx, &xHigherPriorityTaskWoken);
		///portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
		  HAL_UART_Receive_IT(&huart2, &rx,1);


}
void UART_Printf(char *format,...){
    char str[80];

    /*Extract the the argument list using VA apis */
    va_list args;
    va_start(args, format);
    vsprintf(str, format,args);
    HAL_UART_Transmit(&huart2, (uint8_t*)str, strlen(str), 10);
    va_end(args);
}
/* USER CODE END 4 */

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM11 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM11) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
