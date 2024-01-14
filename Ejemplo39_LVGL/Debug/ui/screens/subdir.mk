################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ui/screens/ui_Screen1.c \
../ui/screens/ui_Screen2.c \
../ui/screens/ui_Screen3.c 

OBJS += \
./ui/screens/ui_Screen1.o \
./ui/screens/ui_Screen2.o \
./ui/screens/ui_Screen3.o 

C_DEPS += \
./ui/screens/ui_Screen1.d \
./ui/screens/ui_Screen2.d \
./ui/screens/ui_Screen3.d 


# Each subdirectory must supply rules for building sources it contributes
ui/screens/%.o ui/screens/%.su ui/screens/%.cyclo: ../ui/screens/%.c ui/screens/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL/ui" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ui-2f-screens

clean-ui-2f-screens:
	-$(RM) ./ui/screens/ui_Screen1.cyclo ./ui/screens/ui_Screen1.d ./ui/screens/ui_Screen1.o ./ui/screens/ui_Screen1.su ./ui/screens/ui_Screen2.cyclo ./ui/screens/ui_Screen2.d ./ui/screens/ui_Screen2.o ./ui/screens/ui_Screen2.su ./ui/screens/ui_Screen3.cyclo ./ui/screens/ui_Screen3.d ./ui/screens/ui_Screen3.o ./ui/screens/ui_Screen3.su

.PHONY: clean-ui-2f-screens

