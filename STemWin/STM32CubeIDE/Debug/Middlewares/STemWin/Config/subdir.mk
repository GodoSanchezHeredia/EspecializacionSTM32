################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Gui/Target/GUIConf.c \
C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Gui/Target/LCDConf_stm32f429i_disco_MB1075.c 

OBJS += \
./Middlewares/STemWin/Config/GUIConf.o \
./Middlewares/STemWin/Config/LCDConf_stm32f429i_disco_MB1075.o 

C_DEPS += \
./Middlewares/STemWin/Config/GUIConf.d \
./Middlewares/STemWin/Config/LCDConf_stm32f429i_disco_MB1075.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STemWin/Config/GUIConf.o: C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Gui/Target/GUIConf.c Middlewares/STemWin/Config/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DUSE_STM32F429I_DISCO -DUSE_USB_HS -DSTM32F429xx -c -I../../Core/Inc -I../../Config -I../../Gui/Target -I../../Modules/filebrowser -I../../Utilities/CPU -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32F429I-Discovery -I../../Drivers/BSP/Components/Common -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Middlewares/ST/STemWin/inc -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FatFs/src/drivers -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STemWin/Config/LCDConf_stm32f429i_disco_MB1075.o: C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Gui/Target/LCDConf_stm32f429i_disco_MB1075.c Middlewares/STemWin/Config/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DUSE_STM32F429I_DISCO -DUSE_USB_HS -DSTM32F429xx -c -I../../Core/Inc -I../../Config -I../../Gui/Target -I../../Modules/filebrowser -I../../Utilities/CPU -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32F429I-Discovery -I../../Drivers/BSP/Components/Common -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Middlewares/ST/STemWin/inc -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FatFs/src/drivers -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-STemWin-2f-Config

clean-Middlewares-2f-STemWin-2f-Config:
	-$(RM) ./Middlewares/STemWin/Config/GUIConf.cyclo ./Middlewares/STemWin/Config/GUIConf.d ./Middlewares/STemWin/Config/GUIConf.o ./Middlewares/STemWin/Config/GUIConf.su ./Middlewares/STemWin/Config/LCDConf_stm32f429i_disco_MB1075.cyclo ./Middlewares/STemWin/Config/LCDConf_stm32f429i_disco_MB1075.d ./Middlewares/STemWin/Config/LCDConf_stm32f429i_disco_MB1075.o ./Middlewares/STemWin/Config/LCDConf_stm32f429i_disco_MB1075.su

.PHONY: clean-Middlewares-2f-STemWin-2f-Config

