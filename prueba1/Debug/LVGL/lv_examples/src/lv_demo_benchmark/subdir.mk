################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lv_examples/src/lv_demo_benchmark/lv_demo_benchmark.c 

C_DEPS += \
./LVGL/lv_examples/src/lv_demo_benchmark/lv_demo_benchmark.d 

OBJS += \
./LVGL/lv_examples/src/lv_demo_benchmark/lv_demo_benchmark.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lv_examples/src/lv_demo_benchmark/%.o LVGL/lv_examples/src/lv_demo_benchmark/%.su LVGL/lv_examples/src/lv_demo_benchmark/%.cyclo: ../LVGL/lv_examples/src/lv_demo_benchmark/%.c LVGL/lv_examples/src/lv_demo_benchmark/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lv_examples-2f-src-2f-lv_demo_benchmark

clean-LVGL-2f-lv_examples-2f-src-2f-lv_demo_benchmark:
	-$(RM) ./LVGL/lv_examples/src/lv_demo_benchmark/lv_demo_benchmark.cyclo ./LVGL/lv_examples/src/lv_demo_benchmark/lv_demo_benchmark.d ./LVGL/lv_examples/src/lv_demo_benchmark/lv_demo_benchmark.o ./LVGL/lv_examples/src/lv_demo_benchmark/lv_demo_benchmark.su

.PHONY: clean-LVGL-2f-lv_examples-2f-src-2f-lv_demo_benchmark

