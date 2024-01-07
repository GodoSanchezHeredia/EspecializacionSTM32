################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lv_examples/assets/img_cogwheel_alpha16.c \
../LVGL/lv_examples/assets/img_cogwheel_argb.c \
../LVGL/lv_examples/assets/img_cogwheel_chroma_keyed.c \
../LVGL/lv_examples/assets/img_cogwheel_indexed16.c \
../LVGL/lv_examples/assets/img_cogwheel_rgb.c \
../LVGL/lv_examples/assets/lv_font_montserrat_12_compr_az.c \
../LVGL/lv_examples/assets/lv_font_montserrat_16_compr_az.c \
../LVGL/lv_examples/assets/lv_font_montserrat_28_compr_az.c 

C_DEPS += \
./LVGL/lv_examples/assets/img_cogwheel_alpha16.d \
./LVGL/lv_examples/assets/img_cogwheel_argb.d \
./LVGL/lv_examples/assets/img_cogwheel_chroma_keyed.d \
./LVGL/lv_examples/assets/img_cogwheel_indexed16.d \
./LVGL/lv_examples/assets/img_cogwheel_rgb.d \
./LVGL/lv_examples/assets/lv_font_montserrat_12_compr_az.d \
./LVGL/lv_examples/assets/lv_font_montserrat_16_compr_az.d \
./LVGL/lv_examples/assets/lv_font_montserrat_28_compr_az.d 

OBJS += \
./LVGL/lv_examples/assets/img_cogwheel_alpha16.o \
./LVGL/lv_examples/assets/img_cogwheel_argb.o \
./LVGL/lv_examples/assets/img_cogwheel_chroma_keyed.o \
./LVGL/lv_examples/assets/img_cogwheel_indexed16.o \
./LVGL/lv_examples/assets/img_cogwheel_rgb.o \
./LVGL/lv_examples/assets/lv_font_montserrat_12_compr_az.o \
./LVGL/lv_examples/assets/lv_font_montserrat_16_compr_az.o \
./LVGL/lv_examples/assets/lv_font_montserrat_28_compr_az.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lv_examples/assets/%.o LVGL/lv_examples/assets/%.su LVGL/lv_examples/assets/%.cyclo: ../LVGL/lv_examples/assets/%.c LVGL/lv_examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lv_examples-2f-assets

clean-LVGL-2f-lv_examples-2f-assets:
	-$(RM) ./LVGL/lv_examples/assets/img_cogwheel_alpha16.cyclo ./LVGL/lv_examples/assets/img_cogwheel_alpha16.d ./LVGL/lv_examples/assets/img_cogwheel_alpha16.o ./LVGL/lv_examples/assets/img_cogwheel_alpha16.su ./LVGL/lv_examples/assets/img_cogwheel_argb.cyclo ./LVGL/lv_examples/assets/img_cogwheel_argb.d ./LVGL/lv_examples/assets/img_cogwheel_argb.o ./LVGL/lv_examples/assets/img_cogwheel_argb.su ./LVGL/lv_examples/assets/img_cogwheel_chroma_keyed.cyclo ./LVGL/lv_examples/assets/img_cogwheel_chroma_keyed.d ./LVGL/lv_examples/assets/img_cogwheel_chroma_keyed.o ./LVGL/lv_examples/assets/img_cogwheel_chroma_keyed.su ./LVGL/lv_examples/assets/img_cogwheel_indexed16.cyclo ./LVGL/lv_examples/assets/img_cogwheel_indexed16.d ./LVGL/lv_examples/assets/img_cogwheel_indexed16.o ./LVGL/lv_examples/assets/img_cogwheel_indexed16.su ./LVGL/lv_examples/assets/img_cogwheel_rgb.cyclo ./LVGL/lv_examples/assets/img_cogwheel_rgb.d ./LVGL/lv_examples/assets/img_cogwheel_rgb.o ./LVGL/lv_examples/assets/img_cogwheel_rgb.su ./LVGL/lv_examples/assets/lv_font_montserrat_12_compr_az.cyclo ./LVGL/lv_examples/assets/lv_font_montserrat_12_compr_az.d ./LVGL/lv_examples/assets/lv_font_montserrat_12_compr_az.o ./LVGL/lv_examples/assets/lv_font_montserrat_12_compr_az.su ./LVGL/lv_examples/assets/lv_font_montserrat_16_compr_az.cyclo ./LVGL/lv_examples/assets/lv_font_montserrat_16_compr_az.d ./LVGL/lv_examples/assets/lv_font_montserrat_16_compr_az.o ./LVGL/lv_examples/assets/lv_font_montserrat_16_compr_az.su ./LVGL/lv_examples/assets/lv_font_montserrat_28_compr_az.cyclo ./LVGL/lv_examples/assets/lv_font_montserrat_28_compr_az.d ./LVGL/lv_examples/assets/lv_font_montserrat_28_compr_az.o ./LVGL/lv_examples/assets/lv_font_montserrat_28_compr_az.su

.PHONY: clean-LVGL-2f-lv_examples-2f-assets

