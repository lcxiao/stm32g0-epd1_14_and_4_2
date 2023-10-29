################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bsp/e-Paper/EPD_2in13b_V3.c \
../bsp/e-Paper/EPD_4in2b_V2.c 

OBJS += \
./bsp/e-Paper/EPD_2in13b_V3.o \
./bsp/e-Paper/EPD_4in2b_V2.o 

C_DEPS += \
./bsp/e-Paper/EPD_2in13b_V3.d \
./bsp/e-Paper/EPD_4in2b_V2.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/e-Paper/%.o bsp/e-Paper/%.su bsp/e-Paper/%.cyclo: ../bsp/e-Paper/%.c bsp/e-Paper/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G070xx -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/Config" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/e-Paper" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/Fonts" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/GUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-bsp-2f-e-2d-Paper

clean-bsp-2f-e-2d-Paper:
	-$(RM) ./bsp/e-Paper/EPD_2in13b_V3.cyclo ./bsp/e-Paper/EPD_2in13b_V3.d ./bsp/e-Paper/EPD_2in13b_V3.o ./bsp/e-Paper/EPD_2in13b_V3.su ./bsp/e-Paper/EPD_4in2b_V2.cyclo ./bsp/e-Paper/EPD_4in2b_V2.d ./bsp/e-Paper/EPD_4in2b_V2.o ./bsp/e-Paper/EPD_4in2b_V2.su

.PHONY: clean-bsp-2f-e-2d-Paper

