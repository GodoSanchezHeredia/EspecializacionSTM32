################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lvgl/src/lv_core/lv_disp.c \
../LVGL/lvgl/src/lv_core/lv_group.c \
../LVGL/lvgl/src/lv_core/lv_indev.c \
../LVGL/lvgl/src/lv_core/lv_obj.c \
../LVGL/lvgl/src/lv_core/lv_refr.c \
../LVGL/lvgl/src/lv_core/lv_style.c 

C_DEPS += \
./LVGL/lvgl/src/lv_core/lv_disp.d \
./LVGL/lvgl/src/lv_core/lv_group.d \
./LVGL/lvgl/src/lv_core/lv_indev.d \
./LVGL/lvgl/src/lv_core/lv_obj.d \
./LVGL/lvgl/src/lv_core/lv_refr.d \
./LVGL/lvgl/src/lv_core/lv_style.d 

OBJS += \
./LVGL/lvgl/src/lv_core/lv_disp.o \
./LVGL/lvgl/src/lv_core/lv_group.o \
./LVGL/lvgl/src/lv_core/lv_indev.o \
./LVGL/lvgl/src/lv_core/lv_obj.o \
./LVGL/lvgl/src/lv_core/lv_refr.o \
./LVGL/lvgl/src/lv_core/lv_style.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lvgl/src/lv_core/%.o LVGL/lvgl/src/lv_core/%.su LVGL/lvgl/src/lv_core/%.cyclo: ../LVGL/lvgl/src/lv_core/%.c LVGL/lvgl/src/lv_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lvgl-2f-src-2f-lv_core

clean-LVGL-2f-lvgl-2f-src-2f-lv_core:
	-$(RM) ./LVGL/lvgl/src/lv_core/lv_disp.cyclo ./LVGL/lvgl/src/lv_core/lv_disp.d ./LVGL/lvgl/src/lv_core/lv_disp.o ./LVGL/lvgl/src/lv_core/lv_disp.su ./LVGL/lvgl/src/lv_core/lv_group.cyclo ./LVGL/lvgl/src/lv_core/lv_group.d ./LVGL/lvgl/src/lv_core/lv_group.o ./LVGL/lvgl/src/lv_core/lv_group.su ./LVGL/lvgl/src/lv_core/lv_indev.cyclo ./LVGL/lvgl/src/lv_core/lv_indev.d ./LVGL/lvgl/src/lv_core/lv_indev.o ./LVGL/lvgl/src/lv_core/lv_indev.su ./LVGL/lvgl/src/lv_core/lv_obj.cyclo ./LVGL/lvgl/src/lv_core/lv_obj.d ./LVGL/lvgl/src/lv_core/lv_obj.o ./LVGL/lvgl/src/lv_core/lv_obj.su ./LVGL/lvgl/src/lv_core/lv_refr.cyclo ./LVGL/lvgl/src/lv_core/lv_refr.d ./LVGL/lvgl/src/lv_core/lv_refr.o ./LVGL/lvgl/src/lv_core/lv_refr.su ./LVGL/lvgl/src/lv_core/lv_style.cyclo ./LVGL/lvgl/src/lv_core/lv_style.d ./LVGL/lvgl/src/lv_core/lv_style.o ./LVGL/lvgl/src/lv_core/lv_style.su

.PHONY: clean-LVGL-2f-lvgl-2f-src-2f-lv_core

