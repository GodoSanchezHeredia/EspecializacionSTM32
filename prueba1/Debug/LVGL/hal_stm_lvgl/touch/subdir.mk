################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/hal_stm_lvgl/touch/touchpad.c \
../LVGL/hal_stm_lvgl/touch/xpt2046.c 

C_DEPS += \
./LVGL/hal_stm_lvgl/touch/touchpad.d \
./LVGL/hal_stm_lvgl/touch/xpt2046.d 

OBJS += \
./LVGL/hal_stm_lvgl/touch/touchpad.o \
./LVGL/hal_stm_lvgl/touch/xpt2046.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/hal_stm_lvgl/touch/%.o LVGL/hal_stm_lvgl/touch/%.su LVGL/hal_stm_lvgl/touch/%.cyclo: ../LVGL/hal_stm_lvgl/touch/%.c LVGL/hal_stm_lvgl/touch/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-hal_stm_lvgl-2f-touch

clean-LVGL-2f-hal_stm_lvgl-2f-touch:
	-$(RM) ./LVGL/hal_stm_lvgl/touch/touchpad.cyclo ./LVGL/hal_stm_lvgl/touch/touchpad.d ./LVGL/hal_stm_lvgl/touch/touchpad.o ./LVGL/hal_stm_lvgl/touch/touchpad.su ./LVGL/hal_stm_lvgl/touch/xpt2046.cyclo ./LVGL/hal_stm_lvgl/touch/xpt2046.d ./LVGL/hal_stm_lvgl/touch/xpt2046.o ./LVGL/hal_stm_lvgl/touch/xpt2046.su

.PHONY: clean-LVGL-2f-hal_stm_lvgl-2f-touch

