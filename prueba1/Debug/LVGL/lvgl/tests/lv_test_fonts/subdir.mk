################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lvgl/tests/lv_test_fonts/font_1.c \
../LVGL/lvgl/tests/lv_test_fonts/font_2.c \
../LVGL/lvgl/tests/lv_test_fonts/font_3.c 

C_DEPS += \
./LVGL/lvgl/tests/lv_test_fonts/font_1.d \
./LVGL/lvgl/tests/lv_test_fonts/font_2.d \
./LVGL/lvgl/tests/lv_test_fonts/font_3.d 

OBJS += \
./LVGL/lvgl/tests/lv_test_fonts/font_1.o \
./LVGL/lvgl/tests/lv_test_fonts/font_2.o \
./LVGL/lvgl/tests/lv_test_fonts/font_3.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lvgl/tests/lv_test_fonts/%.o LVGL/lvgl/tests/lv_test_fonts/%.su LVGL/lvgl/tests/lv_test_fonts/%.cyclo: ../LVGL/lvgl/tests/lv_test_fonts/%.c LVGL/lvgl/tests/lv_test_fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lvgl-2f-tests-2f-lv_test_fonts

clean-LVGL-2f-lvgl-2f-tests-2f-lv_test_fonts:
	-$(RM) ./LVGL/lvgl/tests/lv_test_fonts/font_1.cyclo ./LVGL/lvgl/tests/lv_test_fonts/font_1.d ./LVGL/lvgl/tests/lv_test_fonts/font_1.o ./LVGL/lvgl/tests/lv_test_fonts/font_1.su ./LVGL/lvgl/tests/lv_test_fonts/font_2.cyclo ./LVGL/lvgl/tests/lv_test_fonts/font_2.d ./LVGL/lvgl/tests/lv_test_fonts/font_2.o ./LVGL/lvgl/tests/lv_test_fonts/font_2.su ./LVGL/lvgl/tests/lv_test_fonts/font_3.cyclo ./LVGL/lvgl/tests/lv_test_fonts/font_3.d ./LVGL/lvgl/tests/lv_test_fonts/font_3.o ./LVGL/lvgl/tests/lv_test_fonts/font_3.su

.PHONY: clean-LVGL-2f-lvgl-2f-tests-2f-lv_test_fonts

