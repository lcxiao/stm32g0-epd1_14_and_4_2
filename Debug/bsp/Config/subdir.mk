################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bsp/Config/DEV_Config.c 

OBJS += \
./bsp/Config/DEV_Config.o 

C_DEPS += \
./bsp/Config/DEV_Config.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/Config/%.o bsp/Config/%.su bsp/Config/%.cyclo: ../bsp/Config/%.c bsp/Config/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G070xx -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/Config" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/e-Paper" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/Fonts" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/GUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-bsp-2f-Config

clean-bsp-2f-Config:
	-$(RM) ./bsp/Config/DEV_Config.cyclo ./bsp/Config/DEV_Config.d ./bsp/Config/DEV_Config.o ./bsp/Config/DEV_Config.su

.PHONY: clean-bsp-2f-Config

