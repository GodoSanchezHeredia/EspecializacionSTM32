################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/extra/widgets/msgbox/lv_msgbox.c 

OBJS += \
./lvgl/src/extra/widgets/msgbox/lv_msgbox.o 

C_DEPS += \
./lvgl/src/extra/widgets/msgbox/lv_msgbox.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/extra/widgets/msgbox/%.o lvgl/src/extra/widgets/msgbox/%.su lvgl/src/extra/widgets/msgbox/%.cyclo: ../lvgl/src/extra/widgets/msgbox/%.c lvgl/src/extra/widgets/msgbox/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/Ejemplo39_LVGL/ui" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-extra-2f-widgets-2f-msgbox

clean-lvgl-2f-src-2f-extra-2f-widgets-2f-msgbox:
	-$(RM) ./lvgl/src/extra/widgets/msgbox/lv_msgbox.cyclo ./lvgl/src/extra/widgets/msgbox/lv_msgbox.d ./lvgl/src/extra/widgets/msgbox/lv_msgbox.o ./lvgl/src/extra/widgets/msgbox/lv_msgbox.su

.PHONY: clean-lvgl-2f-src-2f-extra-2f-widgets-2f-msgbox

