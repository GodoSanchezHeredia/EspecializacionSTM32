################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_1.c \
../LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_2.c \
../LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_3.c 

C_DEPS += \
./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_1.d \
./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_2.d \
./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_3.d 

OBJS += \
./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_1.o \
./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_2.o \
./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_3.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lv_examples/src/lv_ex_get_started/%.o LVGL/lv_examples/src/lv_ex_get_started/%.su LVGL/lv_examples/src/lv_ex_get_started/%.cyclo: ../LVGL/lv_examples/src/lv_ex_get_started/%.c LVGL/lv_examples/src/lv_ex_get_started/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lv_examples-2f-src-2f-lv_ex_get_started

clean-LVGL-2f-lv_examples-2f-src-2f-lv_ex_get_started:
	-$(RM) ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_1.cyclo ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_1.d ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_1.o ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_1.su ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_2.cyclo ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_2.d ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_2.o ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_2.su ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_3.cyclo ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_3.d ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_3.o ./LVGL/lv_examples/src/lv_ex_get_started/lv_ex_get_started_3.su

.PHONY: clean-LVGL-2f-lv_examples-2f-src-2f-lv_ex_get_started

