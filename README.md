Microcontroller and Embedded Driver 
===========================

### :memo: About this project.
- The board which I use in this course
    * STM32F407VG DISC1.
![](https://i.imgur.com/hykQJ26.png)
- IDE
    * STM32CUBEIDE
    [IDE link](https://www.st.com/en/development-tools/stm32cubeide.html) 
## Documents 
- Microcontroller
    * [reference manual](https://www.st.com/resource/en/reference_manual/dm00031020-stm32f405-415-stm32f407-417-stm32f427-437-and-stm32f429-439-advanced-arm-based-32-bit-mcus-stmicroelectronics.pdf)
    * [data sheet](https://www.st.com/resource/en/datasheet/dm00037051.pdf)
- Discovery board
    * [board brief](https://www.st.com/resource/en/data_brief/stm32f4discovery.pdf)
    * [user manual](https://www.st.com/resource/en/user_manual/dm00039084-discovery-kit-with-stm32f407vg-mcu-stmicroelectronics.pdf)
## Online course
[Udemy link](https://www.udemy.com/course/mastering-microcontroller-with-peripheral-driver-development/)

## Catalog
* [GPIO](#GPIO)
* [SPI](#SPI)

## What I learned in this tutorial
| Features          | descriptions            | link                  |
| ----------------- |:----------------------- |:----------------------|
| SWV & Semihosting | liddd                   |[SWV](#SWV_Semihosting)         |
| debug options     |                         |[debug options](#debug_options) |
| USB analyzer      |                         |[analyzer](#USB_analyzer)       |
| bus interface     |                         |[bus](#bus_interface)           |
| clock tree        |                         |[GPIO](#GPIO)                   |
| GPIO              |                         |[clock](#clock_tree)            |
| SPI               |                         |[SPI](#SPI)                     |
| I2C               |                         |[I2C](#I2C)                     |
| UART              |                         |[UART](#UART)                   |
| RTC on LCD        |                         |[RTC on LCD](#RTC_on_LCD)       |

## SWV_Semihosting
### SWV
> descriptions
1. SWD stands for **serial wire debug** which is a two wire protocol for accessing the ARM debug interface.
2. In STM32F4 Discovery board there is a **ST-Link** on board debug circuit.
3. Debug circuit will talk to your PC over a USB connection. And there is a pin called **SWO pin**.
4. In ARM Cortex processor we can make **printf** work by using the SWO pin of the SWD interface.
5. Inside the ARM Cortex M4 processor, there is a unit or a peripheral called **ITM uint**. ITM stands for **Instrumentation Trace Macrocell Unit**.
6. ITM unit has a **FIFO** and printf should write into that FIFO. FIFO is connected to the SWO pin so that we can get that message back to the IDE.
>  demonstrations
1. Go into the debug configurations.
![](https://i.imgur.com/AmA6xZK.png)
2. Enable swv.
![](https://i.imgur.com/fcrOOAI.png)
3. Then connect the board to PC.
4. Open SWV ITM data console.
![](https://i.imgur.com/aYggjmR.png)
5. Select the port and start trace.
![](https://i.imgur.com/zVKvtuU.png)
6. Then we can see the printf messages.
![](https://i.imgur.com/qO7S7JI.png)





### Semihosting feature of OpenOCD
> descriptions
1. It stands for **open on chip debugger**.
2. OpenOCD is a debugger which helps you to program and debug your code on the board.
>  demonstrations
1. Go into the **dbug configurations** and change the **debug probe to OpenOCD**.
![](https://i.imgur.com/sVskLPS.png)
2. Then go into **startup** and type **monitor arm semihosting enable** in Run commands.
![](https://i.imgur.com/ZHMFesK.png)
3. properties >> C/C++ Build >>Settings >> MCU GCC Linker >> Miscellaneous then type **specs=rdimon.specs -lc -lrdimon**.
![](https://i.imgur.com/HtP7DqN.png)
4. Call this function, add it's prototype and **exclude syscalls.c**.
![](https://i.imgur.com/P6vdNUH.png)
6. Then we can see the log information and messages in the console.
 ![](https://i.imgur.com/dHvTqcd.png)

## debug_options
1. **step into / step over / step return**
![](https://i.imgur.com/xRxf8aK.png)
2. **Expression and variables windows**
![](https://i.imgur.com/rn9TTKB.png)
**variables windows**
![](https://i.imgur.com/fufKxvV.png)
----
3. **expressions windows**
![](https://i.imgur.com/4uvO40o.png)
4. **Memory browser**
![](https://i.imgur.com/3yaXtNt.png)
-------
![](https://i.imgur.com/LWNSuyy.png)
5. **Disassembly**
![](https://i.imgur.com/g7yL56r.png)


## USB_analyzer
1 
1
1
1
1

1
1
## bus_interface 
1 
1
1
1
1

1
1
## clock_tree 
1 
1
1
1
1

1
1

## GPIO
1
1
1
1
1
1
1
1

## SPI
1
1
1
1
1
11
1
1
## I2C
1
1
1
1
1
11
1
## UART
1
1
1
1
1
11
1
1
## RTC_on_LCD 
1111
1
1
1
1
1

1
1
1

11
1
