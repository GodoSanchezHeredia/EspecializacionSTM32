################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lv_examples/src/lv_ex_style/lv_ex_style_1.c \
../LVGL/lv_examples/src/lv_ex_style/lv_ex_style_10.c \
../LVGL/lv_examples/src/lv_ex_style/lv_ex_style_11.c \
../LVGL/lv_examples/src/lv_ex_style/lv_ex_style_2.c \
../LVGL/lv_examples/src/lv_ex_style/lv_ex_style_3.c \
../LVGL/lv_examples/src/lv_ex_style/lv_ex_style_4.c \
../LVGL/lv_examples/src/lv_ex_style/lv_ex_style_5.c \
../LVGL/lv_examples/src/lv_ex_style/lv_ex_style_6.c \
../LVGL/lv_examples/src/lv_ex_style/lv_ex_style_7.c \
../LVGL/lv_examples/src/lv_ex_style/lv_ex_style_8.c \
../LVGL/lv_examples/src/lv_ex_style/lv_ex_style_9.c 

C_DEPS += \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_1.d \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_10.d \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_11.d \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_2.d \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_3.d \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_4.d \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_5.d \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_6.d \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_7.d \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_8.d \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_9.d 

OBJS += \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_1.o \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_10.o \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_11.o \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_2.o \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_3.o \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_4.o \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_5.o \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_6.o \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_7.o \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_8.o \
./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_9.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lv_examples/src/lv_ex_style/%.o LVGL/lv_examples/src/lv_ex_style/%.su LVGL/lv_examples/src/lv_ex_style/%.cyclo: ../LVGL/lv_examples/src/lv_ex_style/%.c LVGL/lv_examples/src/lv_ex_style/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lv_examples-2f-src-2f-lv_ex_style

clean-LVGL-2f-lv_examples-2f-src-2f-lv_ex_style:
	-$(RM) ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_1.cyclo ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_1.d ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_1.o ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_1.su ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_10.cyclo ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_10.d ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_10.o ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_10.su ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_11.cyclo ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_11.d ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_11.o ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_11.su ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_2.cyclo ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_2.d ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_2.o ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_2.su ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_3.cyclo ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_3.d ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_3.o ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_3.su ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_4.cyclo ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_4.d ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_4.o ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_4.su ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_5.cyclo ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_5.d ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_5.o ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_5.su ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_6.cyclo ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_6.d ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_6.o ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_6.su ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_7.cyclo ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_7.d ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_7.o ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_7.su ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_8.cyclo ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_8.d ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_8.o ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_8.su ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_9.cyclo ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_9.d ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_9.o ./LVGL/lv_examples/src/lv_ex_style/lv_ex_style_9.su

.PHONY: clean-LVGL-2f-lv_examples-2f-src-2f-lv_ex_style

