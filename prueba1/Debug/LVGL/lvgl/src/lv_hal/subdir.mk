################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lvgl/src/lv_hal/lv_hal_disp.c \
../LVGL/lvgl/src/lv_hal/lv_hal_indev.c \
../LVGL/lvgl/src/lv_hal/lv_hal_tick.c 

C_DEPS += \
./LVGL/lvgl/src/lv_hal/lv_hal_disp.d \
./LVGL/lvgl/src/lv_hal/lv_hal_indev.d \
./LVGL/lvgl/src/lv_hal/lv_hal_tick.d 

OBJS += \
./LVGL/lvgl/src/lv_hal/lv_hal_disp.o \
./LVGL/lvgl/src/lv_hal/lv_hal_indev.o \
./LVGL/lvgl/src/lv_hal/lv_hal_tick.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lvgl/src/lv_hal/%.o LVGL/lvgl/src/lv_hal/%.su LVGL/lvgl/src/lv_hal/%.cyclo: ../LVGL/lvgl/src/lv_hal/%.c LVGL/lvgl/src/lv_hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lvgl-2f-src-2f-lv_hal

clean-LVGL-2f-lvgl-2f-src-2f-lv_hal:
	-$(RM) ./LVGL/lvgl/src/lv_hal/lv_hal_disp.cyclo ./LVGL/lvgl/src/lv_hal/lv_hal_disp.d ./LVGL/lvgl/src/lv_hal/lv_hal_disp.o ./LVGL/lvgl/src/lv_hal/lv_hal_disp.su ./LVGL/lvgl/src/lv_hal/lv_hal_indev.cyclo ./LVGL/lvgl/src/lv_hal/lv_hal_indev.d ./LVGL/lvgl/src/lv_hal/lv_hal_indev.o ./LVGL/lvgl/src/lv_hal/lv_hal_indev.su ./LVGL/lvgl/src/lv_hal/lv_hal_tick.cyclo ./LVGL/lvgl/src/lv_hal/lv_hal_tick.d ./LVGL/lvgl/src/lv_hal/lv_hal_tick.o ./LVGL/lvgl/src/lv_hal/lv_hal_tick.su

.PHONY: clean-LVGL-2f-lvgl-2f-src-2f-lv_hal

