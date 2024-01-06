################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Middlewares/ST/STemWin/OS/GUI_X_OS.c 

OBJS += \
./Middlewares/STemWin/OS/GUI_X_OS.o 

C_DEPS += \
./Middlewares/STemWin/OS/GUI_X_OS.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STemWin/OS/GUI_X_OS.o: C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Middlewares/ST/STemWin/OS/GUI_X_OS.c Middlewares/STemWin/OS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DUSE_STM32F429I_DISCO -DUSE_USB_HS -DSTM32F429xx -c -I../../Core/Inc -I../../Config -I../../Gui/Target -I../../Modules/filebrowser -I../../Utilities/CPU -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32F429I-Discovery -I../../Drivers/BSP/Components/Common -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Middlewares/ST/STemWin/inc -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FatFs/src/drivers -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-STemWin-2f-OS

clean-Middlewares-2f-STemWin-2f-OS:
	-$(RM) ./Middlewares/STemWin/OS/GUI_X_OS.cyclo ./Middlewares/STemWin/OS/GUI_X_OS.d ./Middlewares/STemWin/OS/GUI_X_OS.o ./Middlewares/STemWin/OS/GUI_X_OS.su

.PHONY: clean-Middlewares-2f-STemWin-2f-OS

