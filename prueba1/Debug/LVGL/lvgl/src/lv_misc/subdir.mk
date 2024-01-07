################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lvgl/src/lv_misc/lv_anim.c \
../LVGL/lvgl/src/lv_misc/lv_area.c \
../LVGL/lvgl/src/lv_misc/lv_async.c \
../LVGL/lvgl/src/lv_misc/lv_bidi.c \
../LVGL/lvgl/src/lv_misc/lv_color.c \
../LVGL/lvgl/src/lv_misc/lv_debug.c \
../LVGL/lvgl/src/lv_misc/lv_fs.c \
../LVGL/lvgl/src/lv_misc/lv_gc.c \
../LVGL/lvgl/src/lv_misc/lv_ll.c \
../LVGL/lvgl/src/lv_misc/lv_log.c \
../LVGL/lvgl/src/lv_misc/lv_math.c \
../LVGL/lvgl/src/lv_misc/lv_mem.c \
../LVGL/lvgl/src/lv_misc/lv_printf.c \
../LVGL/lvgl/src/lv_misc/lv_task.c \
../LVGL/lvgl/src/lv_misc/lv_templ.c \
../LVGL/lvgl/src/lv_misc/lv_txt.c \
../LVGL/lvgl/src/lv_misc/lv_txt_ap.c \
../LVGL/lvgl/src/lv_misc/lv_utils.c 

C_DEPS += \
./LVGL/lvgl/src/lv_misc/lv_anim.d \
./LVGL/lvgl/src/lv_misc/lv_area.d \
./LVGL/lvgl/src/lv_misc/lv_async.d \
./LVGL/lvgl/src/lv_misc/lv_bidi.d \
./LVGL/lvgl/src/lv_misc/lv_color.d \
./LVGL/lvgl/src/lv_misc/lv_debug.d \
./LVGL/lvgl/src/lv_misc/lv_fs.d \
./LVGL/lvgl/src/lv_misc/lv_gc.d \
./LVGL/lvgl/src/lv_misc/lv_ll.d \
./LVGL/lvgl/src/lv_misc/lv_log.d \
./LVGL/lvgl/src/lv_misc/lv_math.d \
./LVGL/lvgl/src/lv_misc/lv_mem.d \
./LVGL/lvgl/src/lv_misc/lv_printf.d \
./LVGL/lvgl/src/lv_misc/lv_task.d \
./LVGL/lvgl/src/lv_misc/lv_templ.d \
./LVGL/lvgl/src/lv_misc/lv_txt.d \
./LVGL/lvgl/src/lv_misc/lv_txt_ap.d \
./LVGL/lvgl/src/lv_misc/lv_utils.d 

OBJS += \
./LVGL/lvgl/src/lv_misc/lv_anim.o \
./LVGL/lvgl/src/lv_misc/lv_area.o \
./LVGL/lvgl/src/lv_misc/lv_async.o \
./LVGL/lvgl/src/lv_misc/lv_bidi.o \
./LVGL/lvgl/src/lv_misc/lv_color.o \
./LVGL/lvgl/src/lv_misc/lv_debug.o \
./LVGL/lvgl/src/lv_misc/lv_fs.o \
./LVGL/lvgl/src/lv_misc/lv_gc.o \
./LVGL/lvgl/src/lv_misc/lv_ll.o \
./LVGL/lvgl/src/lv_misc/lv_log.o \
./LVGL/lvgl/src/lv_misc/lv_math.o \
./LVGL/lvgl/src/lv_misc/lv_mem.o \
./LVGL/lvgl/src/lv_misc/lv_printf.o \
./LVGL/lvgl/src/lv_misc/lv_task.o \
./LVGL/lvgl/src/lv_misc/lv_templ.o \
./LVGL/lvgl/src/lv_misc/lv_txt.o \
./LVGL/lvgl/src/lv_misc/lv_txt_ap.o \
./LVGL/lvgl/src/lv_misc/lv_utils.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lvgl/src/lv_misc/%.o LVGL/lvgl/src/lv_misc/%.su LVGL/lvgl/src/lv_misc/%.cyclo: ../LVGL/lvgl/src/lv_misc/%.c LVGL/lvgl/src/lv_misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lvgl-2f-src-2f-lv_misc

clean-LVGL-2f-lvgl-2f-src-2f-lv_misc:
	-$(RM) ./LVGL/lvgl/src/lv_misc/lv_anim.cyclo ./LVGL/lvgl/src/lv_misc/lv_anim.d ./LVGL/lvgl/src/lv_misc/lv_anim.o ./LVGL/lvgl/src/lv_misc/lv_anim.su ./LVGL/lvgl/src/lv_misc/lv_area.cyclo ./LVGL/lvgl/src/lv_misc/lv_area.d ./LVGL/lvgl/src/lv_misc/lv_area.o ./LVGL/lvgl/src/lv_misc/lv_area.su ./LVGL/lvgl/src/lv_misc/lv_async.cyclo ./LVGL/lvgl/src/lv_misc/lv_async.d ./LVGL/lvgl/src/lv_misc/lv_async.o ./LVGL/lvgl/src/lv_misc/lv_async.su ./LVGL/lvgl/src/lv_misc/lv_bidi.cyclo ./LVGL/lvgl/src/lv_misc/lv_bidi.d ./LVGL/lvgl/src/lv_misc/lv_bidi.o ./LVGL/lvgl/src/lv_misc/lv_bidi.su ./LVGL/lvgl/src/lv_misc/lv_color.cyclo ./LVGL/lvgl/src/lv_misc/lv_color.d ./LVGL/lvgl/src/lv_misc/lv_color.o ./LVGL/lvgl/src/lv_misc/lv_color.su ./LVGL/lvgl/src/lv_misc/lv_debug.cyclo ./LVGL/lvgl/src/lv_misc/lv_debug.d ./LVGL/lvgl/src/lv_misc/lv_debug.o ./LVGL/lvgl/src/lv_misc/lv_debug.su ./LVGL/lvgl/src/lv_misc/lv_fs.cyclo ./LVGL/lvgl/src/lv_misc/lv_fs.d ./LVGL/lvgl/src/lv_misc/lv_fs.o ./LVGL/lvgl/src/lv_misc/lv_fs.su ./LVGL/lvgl/src/lv_misc/lv_gc.cyclo ./LVGL/lvgl/src/lv_misc/lv_gc.d ./LVGL/lvgl/src/lv_misc/lv_gc.o ./LVGL/lvgl/src/lv_misc/lv_gc.su ./LVGL/lvgl/src/lv_misc/lv_ll.cyclo ./LVGL/lvgl/src/lv_misc/lv_ll.d ./LVGL/lvgl/src/lv_misc/lv_ll.o ./LVGL/lvgl/src/lv_misc/lv_ll.su ./LVGL/lvgl/src/lv_misc/lv_log.cyclo ./LVGL/lvgl/src/lv_misc/lv_log.d ./LVGL/lvgl/src/lv_misc/lv_log.o ./LVGL/lvgl/src/lv_misc/lv_log.su ./LVGL/lvgl/src/lv_misc/lv_math.cyclo ./LVGL/lvgl/src/lv_misc/lv_math.d ./LVGL/lvgl/src/lv_misc/lv_math.o ./LVGL/lvgl/src/lv_misc/lv_math.su ./LVGL/lvgl/src/lv_misc/lv_mem.cyclo ./LVGL/lvgl/src/lv_misc/lv_mem.d ./LVGL/lvgl/src/lv_misc/lv_mem.o ./LVGL/lvgl/src/lv_misc/lv_mem.su ./LVGL/lvgl/src/lv_misc/lv_printf.cyclo ./LVGL/lvgl/src/lv_misc/lv_printf.d ./LVGL/lvgl/src/lv_misc/lv_printf.o ./LVGL/lvgl/src/lv_misc/lv_printf.su ./LVGL/lvgl/src/lv_misc/lv_task.cyclo ./LVGL/lvgl/src/lv_misc/lv_task.d ./LVGL/lvgl/src/lv_misc/lv_task.o ./LVGL/lvgl/src/lv_misc/lv_task.su ./LVGL/lvgl/src/lv_misc/lv_templ.cyclo ./LVGL/lvgl/src/lv_misc/lv_templ.d ./LVGL/lvgl/src/lv_misc/lv_templ.o ./LVGL/lvgl/src/lv_misc/lv_templ.su ./LVGL/lvgl/src/lv_misc/lv_txt.cyclo ./LVGL/lvgl/src/lv_misc/lv_txt.d ./LVGL/lvgl/src/lv_misc/lv_txt.o ./LVGL/lvgl/src/lv_misc/lv_txt.su ./LVGL/lvgl/src/lv_misc/lv_txt_ap.cyclo ./LVGL/lvgl/src/lv_misc/lv_txt_ap.d ./LVGL/lvgl/src/lv_misc/lv_txt_ap.o ./LVGL/lvgl/src/lv_misc/lv_txt_ap.su ./LVGL/lvgl/src/lv_misc/lv_utils.cyclo ./LVGL/lvgl/src/lv_misc/lv_utils.d ./LVGL/lvgl/src/lv_misc/lv_utils.o ./LVGL/lvgl/src/lv_misc/lv_utils.su

.PHONY: clean-LVGL-2f-lvgl-2f-src-2f-lv_misc

