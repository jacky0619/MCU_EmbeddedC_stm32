################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/017rtc_lcd.c \
../src/sysmem.c 

OBJS += \
./src/017rtc_lcd.o \
./src/sysmem.o 

C_DEPS += \
./src/017rtc_lcd.d \
./src/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
src/017rtc_lcd.o: ../src/017rtc_lcd.c src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F407VGTx -DSTM32F407G_DISC1 -DDEBUG -c -I"C:/STM32/MCU1_course/mcu_1/stm32f4xx_drivers/drivers/inc" -I"C:/STM32/MCU1_course/mcu_1/stm32f4xx_drivers/bsp" -I"C:/ST/STM32CubeIDE_1.6.1/STM32CubeIDE/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.9-2020-q2-update.win32_1.5.0.202011040924/tools/arm-none-eabi/include/newlib-nano" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/017rtc_lcd.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"
src/sysmem.o: ../src/sysmem.c src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F407VGTx -DSTM32F407G_DISC1 -DDEBUG -c -I"C:/STM32/MCU1_course/mcu_1/stm32f4xx_drivers/drivers/inc" -I"C:/STM32/MCU1_course/mcu_1/stm32f4xx_drivers/bsp" -I"C:/ST/STM32CubeIDE_1.6.1/STM32CubeIDE/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.9-2020-q2-update.win32_1.5.0.202011040924/tools/arm-none-eabi/include/newlib-nano" -O0 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"src/sysmem.d" -MT"$@"  -mfloat-abi=soft -mthumb -o "$@"

