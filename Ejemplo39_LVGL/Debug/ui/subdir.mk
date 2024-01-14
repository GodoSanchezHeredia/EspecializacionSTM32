################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ui/ui.c \
../ui/ui_events.c \
../ui/ui_helpers.c 

OBJS += \
./ui/ui.o \
./ui/ui_events.o \
./ui/ui_helpers.o 

C_DEPS += \
./ui/ui.d \
./ui/ui_events.d \
./ui/ui_helpers.d 


# Each subdirectory must supply rules for building sources it contributes
ui/%.o ui/%.su ui/%.cyclo: ../ui/%.c ui/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL/ui" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ui

clean-ui:
	-$(RM) ./ui/ui.cyclo ./ui/ui.d ./ui/ui.o ./ui/ui.su ./ui/ui_events.cyclo ./ui/ui_events.d ./ui/ui_events.o ./ui/ui_events.su ./ui/ui_helpers.cyclo ./ui/ui_helpers.d ./ui/ui_helpers.o ./ui/ui_helpers.su

.PHONY: clean-ui

