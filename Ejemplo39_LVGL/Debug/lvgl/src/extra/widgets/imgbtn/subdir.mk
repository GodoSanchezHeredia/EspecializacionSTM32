################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/extra/widgets/imgbtn/lv_imgbtn.c 

OBJS += \
./lvgl/src/extra/widgets/imgbtn/lv_imgbtn.o 

C_DEPS += \
./lvgl/src/extra/widgets/imgbtn/lv_imgbtn.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/extra/widgets/imgbtn/%.o lvgl/src/extra/widgets/imgbtn/%.su lvgl/src/extra/widgets/imgbtn/%.cyclo: ../lvgl/src/extra/widgets/imgbtn/%.c lvgl/src/extra/widgets/imgbtn/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL/ui" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-extra-2f-widgets-2f-imgbtn

clean-lvgl-2f-src-2f-extra-2f-widgets-2f-imgbtn:
	-$(RM) ./lvgl/src/extra/widgets/imgbtn/lv_imgbtn.cyclo ./lvgl/src/extra/widgets/imgbtn/lv_imgbtn.d ./lvgl/src/extra/widgets/imgbtn/lv_imgbtn.o ./lvgl/src/extra/widgets/imgbtn/lv_imgbtn.su

.PHONY: clean-lvgl-2f-src-2f-extra-2f-widgets-2f-imgbtn

