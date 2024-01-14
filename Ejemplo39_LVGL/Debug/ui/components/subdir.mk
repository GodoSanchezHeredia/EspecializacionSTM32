################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ui/components/ui_comp_hook.c 

OBJS += \
./ui/components/ui_comp_hook.o 

C_DEPS += \
./ui/components/ui_comp_hook.d 


# Each subdirectory must supply rules for building sources it contributes
ui/components/%.o ui/components/%.su ui/components/%.cyclo: ../ui/components/%.c ui/components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL/ui" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ui-2f-components

clean-ui-2f-components:
	-$(RM) ./ui/components/ui_comp_hook.cyclo ./ui/components/ui_comp_hook.d ./ui/components/ui_comp_hook.o ./ui/components/ui_comp_hook.su

.PHONY: clean-ui-2f-components

