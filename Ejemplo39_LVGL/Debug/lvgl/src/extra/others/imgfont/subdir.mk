################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/extra/others/imgfont/lv_imgfont.c 

OBJS += \
./lvgl/src/extra/others/imgfont/lv_imgfont.o 

C_DEPS += \
./lvgl/src/extra/others/imgfont/lv_imgfont.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/extra/others/imgfont/%.o lvgl/src/extra/others/imgfont/%.su lvgl/src/extra/others/imgfont/%.cyclo: ../lvgl/src/extra/others/imgfont/%.c lvgl/src/extra/others/imgfont/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL/ui" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-extra-2f-others-2f-imgfont

clean-lvgl-2f-src-2f-extra-2f-others-2f-imgfont:
	-$(RM) ./lvgl/src/extra/others/imgfont/lv_imgfont.cyclo ./lvgl/src/extra/others/imgfont/lv_imgfont.d ./lvgl/src/extra/others/imgfont/lv_imgfont.o ./lvgl/src/extra/others/imgfont/lv_imgfont.su

.PHONY: clean-lvgl-2f-src-2f-extra-2f-others-2f-imgfont

