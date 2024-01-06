################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Config/usbh_conf.c 

OBJS += \
./Middlewares/STM32_USBH_Library/Config/usbh_conf.o 

C_DEPS += \
./Middlewares/STM32_USBH_Library/Config/usbh_conf.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_USBH_Library/Config/usbh_conf.o: C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Config/usbh_conf.c Middlewares/STM32_USBH_Library/Config/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DUSE_STM32F429I_DISCO -DUSE_USB_HS -DSTM32F429xx -c -I../../Core/Inc -I../../Config -I../../Gui/Target -I../../Modules/filebrowser -I../../Utilities/CPU -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32F429I-Discovery -I../../Drivers/BSP/Components/Common -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Middlewares/ST/STemWin/inc -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FatFs/src/drivers -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-STM32_USBH_Library-2f-Config

clean-Middlewares-2f-STM32_USBH_Library-2f-Config:
	-$(RM) ./Middlewares/STM32_USBH_Library/Config/usbh_conf.cyclo ./Middlewares/STM32_USBH_Library/Config/usbh_conf.d ./Middlewares/STM32_USBH_Library/Config/usbh_conf.o ./Middlewares/STM32_USBH_Library/Config/usbh_conf.su

.PHONY: clean-Middlewares-2f-STM32_USBH_Library-2f-Config

