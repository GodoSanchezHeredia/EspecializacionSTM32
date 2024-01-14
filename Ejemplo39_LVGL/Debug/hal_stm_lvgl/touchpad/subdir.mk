################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hal_stm_lvgl/touchpad/stmpe811.c \
../hal_stm_lvgl/touchpad/touchpad.c 

OBJS += \
./hal_stm_lvgl/touchpad/stmpe811.o \
./hal_stm_lvgl/touchpad/touchpad.o 

C_DEPS += \
./hal_stm_lvgl/touchpad/stmpe811.d \
./hal_stm_lvgl/touchpad/touchpad.d 


# Each subdirectory must supply rules for building sources it contributes
hal_stm_lvgl/touchpad/%.o hal_stm_lvgl/touchpad/%.su hal_stm_lvgl/touchpad/%.cyclo: ../hal_stm_lvgl/touchpad/%.c hal_stm_lvgl/touchpad/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL/ui" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-hal_stm_lvgl-2f-touchpad

clean-hal_stm_lvgl-2f-touchpad:
	-$(RM) ./hal_stm_lvgl/touchpad/stmpe811.cyclo ./hal_stm_lvgl/touchpad/stmpe811.d ./hal_stm_lvgl/touchpad/stmpe811.o ./hal_stm_lvgl/touchpad/stmpe811.su ./hal_stm_lvgl/touchpad/touchpad.cyclo ./hal_stm_lvgl/touchpad/touchpad.d ./hal_stm_lvgl/touchpad/touchpad.o ./hal_stm_lvgl/touchpad/touchpad.su

.PHONY: clean-hal_stm_lvgl-2f-touchpad

