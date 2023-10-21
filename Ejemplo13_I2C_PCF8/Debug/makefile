################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := Ejemplo13_I2C_PCF8
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Ejemplo13_I2C_PCF8.elf \

MAP_FILES += \
Ejemplo13_I2C_PCF8.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Ejemplo13_I2C_PCF8.list \

OBJCOPY_HEX += \
Ejemplo13_I2C_PCF8.hex \


# All Target
all: main-build

# Main-build Target
main-build: Ejemplo13_I2C_PCF8.elf secondary-outputs

# Tool invocations
Ejemplo13_I2C_PCF8.elf Ejemplo13_I2C_PCF8.map: $(OBJS) $(USER_OBJS) C:\Users\DELL\Documents\GitHub\EspecializacionSTM32\Ejemplo13_I2C_PCF8\STM32F401RETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "Ejemplo13_I2C_PCF8.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\DELL\Documents\GitHub\EspecializacionSTM32\Ejemplo13_I2C_PCF8\STM32F401RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Ejemplo13_I2C_PCF8.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Ejemplo13_I2C_PCF8.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Ejemplo13_I2C_PCF8.list"
	@echo 'Finished building: $@'
	@echo ' '

Ejemplo13_I2C_PCF8.hex: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "Ejemplo13_I2C_PCF8.hex"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) Ejemplo13_I2C_PCF8.elf Ejemplo13_I2C_PCF8.hex Ejemplo13_I2C_PCF8.list Ejemplo13_I2C_PCF8.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
