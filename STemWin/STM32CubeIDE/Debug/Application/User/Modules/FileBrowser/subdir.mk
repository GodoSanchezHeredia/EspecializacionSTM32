################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Modules/filebrowser/filebrowser_app.c \
C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Gui/Core/filebrowser/filebrowser_win.c 

OBJS += \
./Application/User/Modules/FileBrowser/filebrowser_app.o \
./Application/User/Modules/FileBrowser/filebrowser_win.o 

C_DEPS += \
./Application/User/Modules/FileBrowser/filebrowser_app.d \
./Application/User/Modules/FileBrowser/filebrowser_win.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Modules/FileBrowser/filebrowser_app.o: C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Modules/filebrowser/filebrowser_app.c Application/User/Modules/FileBrowser/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DUSE_STM32F429I_DISCO -DUSE_USB_HS -DSTM32F429xx -c -I../../Core/Inc -I../../Config -I../../Gui/Target -I../../Modules/filebrowser -I../../Utilities/CPU -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32F429I-Discovery -I../../Drivers/BSP/Components/Common -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Middlewares/ST/STemWin/inc -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FatFs/src/drivers -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Modules/FileBrowser/filebrowser_win.o: C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/STemWin/Gui/Core/filebrowser/filebrowser_win.c Application/User/Modules/FileBrowser/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DUSE_STM32F429I_DISCO -DUSE_USB_HS -DSTM32F429xx -c -I../../Core/Inc -I../../Config -I../../Gui/Target -I../../Modules/filebrowser -I../../Utilities/CPU -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32F429I-Discovery -I../../Drivers/BSP/Components/Common -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Middlewares/ST/STemWin/inc -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FatFs/src/drivers -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Modules-2f-FileBrowser

clean-Application-2f-User-2f-Modules-2f-FileBrowser:
	-$(RM) ./Application/User/Modules/FileBrowser/filebrowser_app.cyclo ./Application/User/Modules/FileBrowser/filebrowser_app.d ./Application/User/Modules/FileBrowser/filebrowser_app.o ./Application/User/Modules/FileBrowser/filebrowser_app.su ./Application/User/Modules/FileBrowser/filebrowser_win.cyclo ./Application/User/Modules/FileBrowser/filebrowser_win.d ./Application/User/Modules/FileBrowser/filebrowser_win.o ./Application/User/Modules/FileBrowser/filebrowser_win.su

.PHONY: clean-Application-2f-User-2f-Modules-2f-FileBrowser

