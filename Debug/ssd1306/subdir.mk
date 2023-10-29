################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ssd1306/fonts.c \
../ssd1306/ssd1306.c 

OBJS += \
./ssd1306/fonts.o \
./ssd1306/ssd1306.o 

C_DEPS += \
./ssd1306/fonts.d \
./ssd1306/ssd1306.d 


# Each subdirectory must supply rules for building sources it contributes
ssd1306/%.o ssd1306/%.su ssd1306/%.cyclo: ../ssd1306/%.c ssd1306/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G070xx -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/ssd1306" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-ssd1306

clean-ssd1306:
	-$(RM) ./ssd1306/fonts.cyclo ./ssd1306/fonts.d ./ssd1306/fonts.o ./ssd1306/fonts.su ./ssd1306/ssd1306.cyclo ./ssd1306/ssd1306.d ./ssd1306/ssd1306.o ./ssd1306/ssd1306.su

.PHONY: clean-ssd1306

