################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lvgl/tests/lv_test_core/lv_test_core.c \
../LVGL/lvgl/tests/lv_test_core/lv_test_font_loader.c \
../LVGL/lvgl/tests/lv_test_core/lv_test_obj.c \
../LVGL/lvgl/tests/lv_test_core/lv_test_style.c 

C_DEPS += \
./LVGL/lvgl/tests/lv_test_core/lv_test_core.d \
./LVGL/lvgl/tests/lv_test_core/lv_test_font_loader.d \
./LVGL/lvgl/tests/lv_test_core/lv_test_obj.d \
./LVGL/lvgl/tests/lv_test_core/lv_test_style.d 

OBJS += \
./LVGL/lvgl/tests/lv_test_core/lv_test_core.o \
./LVGL/lvgl/tests/lv_test_core/lv_test_font_loader.o \
./LVGL/lvgl/tests/lv_test_core/lv_test_obj.o \
./LVGL/lvgl/tests/lv_test_core/lv_test_style.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lvgl/tests/lv_test_core/%.o LVGL/lvgl/tests/lv_test_core/%.su LVGL/lvgl/tests/lv_test_core/%.cyclo: ../LVGL/lvgl/tests/lv_test_core/%.c LVGL/lvgl/tests/lv_test_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lvgl-2f-tests-2f-lv_test_core

clean-LVGL-2f-lvgl-2f-tests-2f-lv_test_core:
	-$(RM) ./LVGL/lvgl/tests/lv_test_core/lv_test_core.cyclo ./LVGL/lvgl/tests/lv_test_core/lv_test_core.d ./LVGL/lvgl/tests/lv_test_core/lv_test_core.o ./LVGL/lvgl/tests/lv_test_core/lv_test_core.su ./LVGL/lvgl/tests/lv_test_core/lv_test_font_loader.cyclo ./LVGL/lvgl/tests/lv_test_core/lv_test_font_loader.d ./LVGL/lvgl/tests/lv_test_core/lv_test_font_loader.o ./LVGL/lvgl/tests/lv_test_core/lv_test_font_loader.su ./LVGL/lvgl/tests/lv_test_core/lv_test_obj.cyclo ./LVGL/lvgl/tests/lv_test_core/lv_test_obj.d ./LVGL/lvgl/tests/lv_test_core/lv_test_obj.o ./LVGL/lvgl/tests/lv_test_core/lv_test_obj.su ./LVGL/lvgl/tests/lv_test_core/lv_test_style.cyclo ./LVGL/lvgl/tests/lv_test_core/lv_test_style.d ./LVGL/lvgl/tests/lv_test_core/lv_test_style.o ./LVGL/lvgl/tests/lv_test_core/lv_test_style.su

.PHONY: clean-LVGL-2f-lvgl-2f-tests-2f-lv_test_core

