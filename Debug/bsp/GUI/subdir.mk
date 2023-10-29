################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bsp/GUI/GUI_Paint.c \
../bsp/GUI/imagerbw.c \
../bsp/GUI/imagerbw2_13.c 

OBJS += \
./bsp/GUI/GUI_Paint.o \
./bsp/GUI/imagerbw.o \
./bsp/GUI/imagerbw2_13.o 

C_DEPS += \
./bsp/GUI/GUI_Paint.d \
./bsp/GUI/imagerbw.d \
./bsp/GUI/imagerbw2_13.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/GUI/%.o bsp/GUI/%.su bsp/GUI/%.cyclo: ../bsp/GUI/%.c bsp/GUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G070xx -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/Config" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/e-Paper" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/Fonts" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/GUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-bsp-2f-GUI

clean-bsp-2f-GUI:
	-$(RM) ./bsp/GUI/GUI_Paint.cyclo ./bsp/GUI/GUI_Paint.d ./bsp/GUI/GUI_Paint.o ./bsp/GUI/GUI_Paint.su ./bsp/GUI/imagerbw.cyclo ./bsp/GUI/imagerbw.d ./bsp/GUI/imagerbw.o ./bsp/GUI/imagerbw.su ./bsp/GUI/imagerbw2_13.cyclo ./bsp/GUI/imagerbw2_13.d ./bsp/GUI/imagerbw2_13.o ./bsp/GUI/imagerbw2_13.su

.PHONY: clean-bsp-2f-GUI

