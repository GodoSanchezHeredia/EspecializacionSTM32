################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp.c \
../LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp_osa.c \
../LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_vglite.c \
../LVGL/lvgl/src/lv_gpu/lv_gpu_stm32_dma2d.c 

C_DEPS += \
./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp.d \
./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp_osa.d \
./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_vglite.d \
./LVGL/lvgl/src/lv_gpu/lv_gpu_stm32_dma2d.d 

OBJS += \
./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp.o \
./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp_osa.o \
./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_vglite.o \
./LVGL/lvgl/src/lv_gpu/lv_gpu_stm32_dma2d.o 


# Each subdirectory must supply rules for building sources it contributes
LVGL/lvgl/src/lv_gpu/%.o LVGL/lvgl/src/lv_gpu/%.su LVGL/lvgl/src/lv_gpu/%.cyclo: ../LVGL/lvgl/src/lv_gpu/%.c LVGL/lvgl/src/lv_gpu/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lvgl/src/lv_font" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL/lv_examples/src" -I"C:/Users/DELL/Documents/GitHub/EspecializacionSTM32/prueba1/LVGL" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LVGL-2f-lvgl-2f-src-2f-lv_gpu

clean-LVGL-2f-lvgl-2f-src-2f-lv_gpu:
	-$(RM) ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp.cyclo ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp.d ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp.o ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp.su ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp_osa.cyclo ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp_osa.d ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp_osa.o ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_pxp_osa.su ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_vglite.cyclo ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_vglite.d ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_vglite.o ./LVGL/lvgl/src/lv_gpu/lv_gpu_nxp_vglite.su ./LVGL/lvgl/src/lv_gpu/lv_gpu_stm32_dma2d.cyclo ./LVGL/lvgl/src/lv_gpu/lv_gpu_stm32_dma2d.d ./LVGL/lvgl/src/lv_gpu/lv_gpu_stm32_dma2d.o ./LVGL/lvgl/src/lv_gpu/lv_gpu_stm32_dma2d.su

.PHONY: clean-LVGL-2f-lvgl-2f-src-2f-lv_gpu

