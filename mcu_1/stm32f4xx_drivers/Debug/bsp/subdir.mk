################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bsp/ds1307.c \
../bsp/lcd.c 

OBJS += \
./bsp/ds1307.o \
./bsp/lcd.o 

C_DEPS += \
./bsp/ds1307.d \
./bsp/lcd.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/ds1307.o: ../bsp/ds1307.c bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F407VGTx -DSTM32F407G_DISC1 -DDEBUG -c -I"C:/STM32/MCU1_course/mcu_1/stm32f4xx_drivers/drivers/inc" -I"C:/STM32/MCU1_course/mcu_1/stm32f4xx_drivers/bsp" -I"C:/ST/STM32CubeIDE_1.6.1/STM32CubeIDE/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.9-2020-q2-update.win32_1.5.0.202011040924/tools/arm-none-eabi/include/newlib-nano" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"bsp/ds1307.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
bsp/lcd.o: ../bsp/lcd.c bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F407VGTx -DSTM32F407G_DISC1 -DDEBUG -c -I"C:/STM32/MCU1_course/mcu_1/stm32f4xx_drivers/drivers/inc" -I"C:/STM32/MCU1_course/mcu_1/stm32f4xx_drivers/bsp" -I"C:/ST/STM32CubeIDE_1.6.1/STM32CubeIDE/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.9-2020-q2-update.win32_1.5.0.202011040924/tools/arm-none-eabi/include/newlib-nano" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"bsp/lcd.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

