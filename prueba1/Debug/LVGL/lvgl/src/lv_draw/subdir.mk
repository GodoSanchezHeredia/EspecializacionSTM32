################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lvgl/src/lv_draw/lv_draw_arc.c \
../LVGL/lvgl/src/lv_draw/lv_draw_blend.c \
../LVGL/lvgl/src/lv_draw/lv_draw_img.c \
../LVGL/lvgl/src/lv_draw/lv_draw_label.c \
../LVGL/lvgl/src/lv_draw/lv_draw_line.c \
../LVGL/lvgl/src/lv_draw/lv_draw_mask.c \
../LVGL/lvgl/src/lv_draw/lv_draw_rect.c \
../LVGL/lvgl/src/lv_draw/lv_draw_triangle.c \
../LVGL/lvgl/src/lv_draw/lv_img_buf.c \
../LVGL/lvgl/src/lv_draw/lv_img_cache.c \
../LVGL/lvgl/src/lv_draw/lv_img_decoder.c 

C_DEPS += \
./LVGL/lvgl/src/lv_draw/lv_draw_arc.d \
./LVGL/lvgl/src/lv_draw/lv_draw_blend.d \
./LVGL/lvgl/src/lv_draw/lv_draw_img.d \
./LVGL/lvgl/src/lv_draw/lv_draw_label.d \
./LVGL/lvgl/src/lv_draw/lv_draw_line.d \
./LVGL/lvgl/src/lv_draw/lv_draw_mask.d \
./LVGL/lvgl/src/lv_draw/lv_draw_rect.d \
./LVGL/lvgl/src/lv_draw/lv_draw_triangle.d \
./LVGL/lvgl/src/lv_draw/lv_img_buf.d \
./LVGL/lvgl/src/lv_draw/lv_img_cache.d \
./LVGL/lvgl/src/lv_draw/lv_img_decoder.d 

OBJS += \
./LVGL/lvgl/src/lv_draw/lv_draw_arc.o \
./LVGL/lvgl/src/lv_draw/lv_draw_blend.o \
./LVGL/lvgl/src/lv_draw/lv_draw_img.o \
./LVGL/lvgl/src/lv_draw/lv_draw_label.o \
./LVGL/lvgl/src/lv_draw/lv_draw_line.o \
./LVGL/lvgl/src/lv_draw/lv_draw_mask.o \
./LVGL/lvgl/src/lv_draw/lv_draw_rect.o \
./LVGL/lvgl/src/lv_draw/lv_draw_triangle.o \
./LVGL/lvgl/src/lv_draw/lv_img_buf.o \
./LVGL/lvgl/src/lv_draw/lv_img_cache.o \
./LVGL/lvgl/src/lv_draw/lv_img_decoder.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lvgl/src/lv_draw/%.o LVGL/lvgl/src/lv_draw/%.su LVGL/lvgl/src/lv_draw/%.cyclo: ../LVGL/lvgl/src/lv_draw/%.c LVGL/lvgl/src/lv_draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lvgl-2f-src-2f-lv_draw

clean-LVGL-2f-lvgl-2f-src-2f-lv_draw:
	-$(RM) ./LVGL/lvgl/src/lv_draw/lv_draw_arc.cyclo ./LVGL/lvgl/src/lv_draw/lv_draw_arc.d ./LVGL/lvgl/src/lv_draw/lv_draw_arc.o ./LVGL/lvgl/src/lv_draw/lv_draw_arc.su ./LVGL/lvgl/src/lv_draw/lv_draw_blend.cyclo ./LVGL/lvgl/src/lv_draw/lv_draw_blend.d ./LVGL/lvgl/src/lv_draw/lv_draw_blend.o ./LVGL/lvgl/src/lv_draw/lv_draw_blend.su ./LVGL/lvgl/src/lv_draw/lv_draw_img.cyclo ./LVGL/lvgl/src/lv_draw/lv_draw_img.d ./LVGL/lvgl/src/lv_draw/lv_draw_img.o ./LVGL/lvgl/src/lv_draw/lv_draw_img.su ./LVGL/lvgl/src/lv_draw/lv_draw_label.cyclo ./LVGL/lvgl/src/lv_draw/lv_draw_label.d ./LVGL/lvgl/src/lv_draw/lv_draw_label.o ./LVGL/lvgl/src/lv_draw/lv_draw_label.su ./LVGL/lvgl/src/lv_draw/lv_draw_line.cyclo ./LVGL/lvgl/src/lv_draw/lv_draw_line.d ./LVGL/lvgl/src/lv_draw/lv_draw_line.o ./LVGL/lvgl/src/lv_draw/lv_draw_line.su ./LVGL/lvgl/src/lv_draw/lv_draw_mask.cyclo ./LVGL/lvgl/src/lv_draw/lv_draw_mask.d ./LVGL/lvgl/src/lv_draw/lv_draw_mask.o ./LVGL/lvgl/src/lv_draw/lv_draw_mask.su ./LVGL/lvgl/src/lv_draw/lv_draw_rect.cyclo ./LVGL/lvgl/src/lv_draw/lv_draw_rect.d ./LVGL/lvgl/src/lv_draw/lv_draw_rect.o ./LVGL/lvgl/src/lv_draw/lv_draw_rect.su ./LVGL/lvgl/src/lv_draw/lv_draw_triangle.cyclo ./LVGL/lvgl/src/lv_draw/lv_draw_triangle.d ./LVGL/lvgl/src/lv_draw/lv_draw_triangle.o ./LVGL/lvgl/src/lv_draw/lv_draw_triangle.su ./LVGL/lvgl/src/lv_draw/lv_img_buf.cyclo ./LVGL/lvgl/src/lv_draw/lv_img_buf.d ./LVGL/lvgl/src/lv_draw/lv_img_buf.o ./LVGL/lvgl/src/lv_draw/lv_img_buf.su ./LVGL/lvgl/src/lv_draw/lv_img_cache.cyclo ./LVGL/lvgl/src/lv_draw/lv_img_cache.d ./LVGL/lvgl/src/lv_draw/lv_img_cache.o ./LVGL/lvgl/src/lv_draw/lv_img_cache.su ./LVGL/lvgl/src/lv_draw/lv_img_decoder.cyclo ./LVGL/lvgl/src/lv_draw/lv_img_decoder.d ./LVGL/lvgl/src/lv_draw/lv_img_decoder.o ./LVGL/lvgl/src/lv_draw/lv_img_decoder.su

.PHONY: clean-LVGL-2f-lvgl-2f-src-2f-lv_draw

