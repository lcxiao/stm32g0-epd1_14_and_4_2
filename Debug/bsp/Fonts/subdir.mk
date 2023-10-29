################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bsp/Fonts/font12.c \
../bsp/Fonts/font12CN.c \
../bsp/Fonts/font16.c \
../bsp/Fonts/font20.c \
../bsp/Fonts/font24.c \
../bsp/Fonts/font24CN.c \
../bsp/Fonts/font8.c 

OBJS += \
./bsp/Fonts/font12.o \
./bsp/Fonts/font12CN.o \
./bsp/Fonts/font16.o \
./bsp/Fonts/font20.o \
./bsp/Fonts/font24.o \
./bsp/Fonts/font24CN.o \
./bsp/Fonts/font8.o 

C_DEPS += \
./bsp/Fonts/font12.d \
./bsp/Fonts/font12CN.d \
./bsp/Fonts/font16.d \
./bsp/Fonts/font20.d \
./bsp/Fonts/font24.d \
./bsp/Fonts/font24CN.d \
./bsp/Fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/Fonts/%.o bsp/Fonts/%.su bsp/Fonts/%.cyclo: ../bsp/Fonts/%.c bsp/Fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G070xx -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/Config" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/e-Paper" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/Fonts" -I"C:/Users/lcxia/Desktop/g070kb_EPD_test/bsp/GUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-bsp-2f-Fonts

clean-bsp-2f-Fonts:
	-$(RM) ./bsp/Fonts/font12.cyclo ./bsp/Fonts/font12.d ./bsp/Fonts/font12.o ./bsp/Fonts/font12.su ./bsp/Fonts/font12CN.cyclo ./bsp/Fonts/font12CN.d ./bsp/Fonts/font12CN.o ./bsp/Fonts/font12CN.su ./bsp/Fonts/font16.cyclo ./bsp/Fonts/font16.d ./bsp/Fonts/font16.o ./bsp/Fonts/font16.su ./bsp/Fonts/font20.cyclo ./bsp/Fonts/font20.d ./bsp/Fonts/font20.o ./bsp/Fonts/font20.su ./bsp/Fonts/font24.cyclo ./bsp/Fonts/font24.d ./bsp/Fonts/font24.o ./bsp/Fonts/font24.su ./bsp/Fonts/font24CN.cyclo ./bsp/Fonts/font24CN.d ./bsp/Fonts/font24CN.o ./bsp/Fonts/font24CN.su ./bsp/Fonts/font8.cyclo ./bsp/Fonts/font8.d ./bsp/Fonts/font8.o ./bsp/Fonts/font8.su

.PHONY: clean-bsp-2f-Fonts

