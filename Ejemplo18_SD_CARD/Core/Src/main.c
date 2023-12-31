/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
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
#include "fatfs.h"
#include "spi.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "fatfs_sd.h"
#include "string.h"
#include "stdio.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

FATFS fs; //Manager del systema
FIL file; //archivos
FILINFO fno;//pedir informacion de los archivos
FRESULT fresul;//resultado de operacion
UINT br,bw;
//archivos pra lectura de almacenamiento
FATFS *pfs;
DWORD free_clust;
uint32_t Mtotal,Mlibre;
DIR di;
char buffer[300];
int __io_putchar(int ch){

	  HAL_UART_Transmit(&huart2, (const uint8_t *)&ch, (uint16_t)1, HAL_MAX_DELAY);

	  return ch;
}


int buffesize(char *s){

	int bs=0;
	while(*s++)bs++;

	return bs;
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

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
  MX_SPI1_Init();
  MX_USART2_UART_Init();
  MX_FATFS_Init();
  /* USER CODE BEGIN 2 */
  printf("Tema SDCARD\r\n");
  //Capacidad de almacenamiento
 fresul = f_mount(&fs, "/", 1);
switch (fresul) {
	case FR_OK:
		printf("SD CARD Correctamente Montado\n\r");
		break;
	default:
		printf("SD CARD Fallo en el Montaje :C \n\r");
		Error_Handler();
		break;
}

	f_getfree("", &free_clust, &pfs);
	Mtotal = (uint32_t)  pfs->n_fatent*(pfs->csize*0.5);
	printf("Espacio total : %lu\n\r",Mtotal);
	Mlibre = (uint32_t)  pfs->free_clst*(pfs->csize*0.5);
	printf("Espacio libre: %lu\n\r",Mlibre);
	HAL_Delay(500);

	//Creacion & escritura de un archivo
	fresul = f_open(&file, "doc1.txt", FA_WRITE);
	switch (fresul) {
		case FR_OK:
			printf("Archivo creado :D\n\r");
			break;
		default:
			printf("ERROR :C \n\r");
			Error_Handler();
			break;
	}

char * text = " hola a todos";
f_write(&file,text , buffesize(text), &bw);
	fresul = f_close(&file);
	if (fresul == FR_OK) {
		printf("Archivo Cerrado y escrito\n\r");
	}

	f_mkdir("Dir1");
	//f_opendir(&di, "Dir1");

	//Lectura sd CARD

	fresul = f_open(&file, "tramajson.txt", FA_READ);
	if (fresul == FR_OK) {
		printf("Archivo JSON ABIERTO\n\r");
	}



	f_read(&file, buffer, 50, &br);
	printf(buffer);
	printf("\n\r");
	fresul = f_close(&file);

//Me Desmonto de la BOARD
fresul = f_mount(NULL, "/", 1);
switch (fresul) {
	case FR_OK:
		printf("SD CARD Correctamente DESMontado\n\r");
		break;
	default:
		printf("SD CARD Fallo en el DesMontaje :C \n\r");
		Error_Handler();
		break;
}
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

/* USER CODE END 4 */

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
