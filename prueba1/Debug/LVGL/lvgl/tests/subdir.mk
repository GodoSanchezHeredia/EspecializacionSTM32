################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lvgl/tests/lv_test_assert.c \
../LVGL/lvgl/tests/lv_test_main.c 

C_DEPS += \
./LVGL/lvgl/tests/lv_test_assert.d \
./LVGL/lvgl/tests/lv_test_main.d 

OBJS += \
./LVGL/lvgl/tests/lv_test_assert.o \
./LVGL/lvgl/tests/lv_test_main.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lvgl/tests/%.o LVGL/lvgl/tests/%.su LVGL/lvgl/tests/%.cyclo: ../LVGL/lvgl/tests/%.c LVGL/lvgl/tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lvgl-2f-tests

clean-LVGL-2f-lvgl-2f-tests:
	-$(RM) ./LVGL/lvgl/tests/lv_test_assert.cyclo ./LVGL/lvgl/tests/lv_test_assert.d ./LVGL/lvgl/tests/lv_test_assert.o ./LVGL/lvgl/tests/lv_test_assert.su ./LVGL/lvgl/tests/lv_test_main.cyclo ./LVGL/lvgl/tests/lv_test_main.d ./LVGL/lvgl/tests/lv_test_main.o ./LVGL/lvgl/tests/lv_test_main.su

.PHONY: clean-LVGL-2f-lvgl-2f-tests

