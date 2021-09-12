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
        * Memory map  
        ![](https://i.imgur.com/kHr8ysH.png)  
        * RCC registers  
        ![](https://i.imgur.com/ucI09eJ.png)  
    * [data sheet](https://www.st.com/resource/en/datasheet/dm00037051.pdf) 
        * block diagram  
        ![](https://i.imgur.com/YoE4rib.png)  
        * Memory mapping  
        ![](https://i.imgur.com/AUvGqyi.png)  
        * Alternate function mapping  
        ![](https://i.imgur.com/BatF41p.png)  

- Discovery board
    * [board brief](https://www.st.com/resource/en/data_brief/stm32f4discovery.pdf)
    * [user manual](https://www.st.com/resource/en/user_manual/dm00039084-discovery-kit-with-stm32f407vg-mcu-stmicroelectronics.pdf)
## Online course
[Udemy link](https://www.udemy.com/course/mastering-microcontroller-with-peripheral-driver-development/)

## What I learned in this tutorial
| Features          | descriptions            | link                  |
| ----------------- |:----------------------- |:----------------------|
| SWV & Semihosting | liddd                   |[SWV](#SWV_Semihosting)         |
| Debug options     |                         |[Debug options](#Debug_options) |
| USB analyzer      |                         |[Analyzer](#USB_analyzer)       |
| Bus interface     |                         |[Bus](#Bus_interface)           |
| Clock tree        |                         |[Clock tree ](#Clock_tree )     |
| Vector table      |                         |[Vector table](#Vector_table)   |
| GPIO              |                         |[GPIO](#GPIO)                   |
| SPI               |                         |[SPI](#SPI)                     |
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
<br> 
**variables windows**  
![](https://i.imgur.com/fufKxvV.png)  
<br>
**expressions windows**  
![](https://i.imgur.com/4uvO40o.png)  
4. **Memory browser**  
![](https://i.imgur.com/3yaXtNt.png)  
<br>
![](https://i.imgur.com/LWNSuyy.png)  
5. **Disassembly**  
![](https://i.imgur.com/g7yL56r.png)  


## USB_analyzer
*  The USB_analyzer Which I used in this project.  
![](https://i.imgur.com/6G2hYkw.png)
* [Sigrok Pulseview](https://sigrok.org/): Open-Source signal analysis software.
![](https://i.imgur.com/eLzY8CO.jpg)


1. USB logic analyzer as its name indicates, you can **connect this device to PC over USB communication**.
2. USB logic analyzers are **low-cost solution** to your digital oscilloscope.
3. It is a **debugging hardware** which is used to **trace various signals** of the microcontroller peripherals such as I2C, SPI, UART and other peripherals.
4. This is actually **8 channel, 24 MHz**, so that means the maximum signal frequency should be within 24 MHz.
5. 
## Bus_interface 
* The processor and the peripherals they actually talk via the **bus interfaces**.  
* The processor contains three external **Advanced High-performance Bus (AHB)**-Lite bus interfaces and one **Advanced Peripheral Bus (APB) interface**.
<br>
![](https://i.imgur.com/bgGtLbg.png)

- I-BUS: Instruction Buses
![](https://i.imgur.com/LakpmSh.png)
- D-BUS: Data buses
![](https://i.imgur.com/m8NYLZo.png)
- S-BUS: System buses
![](https://i.imgur.com/ksMZXjq.png)


* **Instructions, Constant data and vector tables** will get stored in **Flash Memory**.
* **Instruction memory** will go through **I-Bus**, **Constant data** will go through **D-bus**.
![](https://i.imgur.com/FVcMs5o.png)


## Clock_tree 

> In the [reference manual](https://www.st.com/resource/en/reference_manual/dm00031020-stm32f405-415-stm32f407-417-stm32f427-437-and-stm32f429-439-advanced-arm-based-32-bit-mcus-stmicroelectronics.pdf)  
![](https://i.imgur.com/DBOEi40.png)

* Three different clock sources can be used to drive the system clock (SYSCLK):
    * **RC Oscillator**(**internal** to the MCU) in all modern microcontrollers come inside the microcontroller itself.
    * **Crystal Oscillar** (**external** to the MCU) is nothing but an external component, which you have to connect for the microcontroller.
    * **PLL** (Phase Locked Loop) (**Internal** to the MCU) is also implemented inside the microcontroller, so we generate **higher frequency clock** by taking lower frequency clock as an input.

* **HSI** (High speed internal): RC oscillator is called as HSI (High speed internal).
![](https://i.imgur.com/fBGldGW.png)


* **HSE** (High speed external): Crystal oscillator is called HSE (High speed external)
![](https://i.imgur.com/bXIR6dP.png)


* We can see the clock information in IDE in **Clock Configuration**.  
![](https://i.imgur.com/AHcRn5k.png)

## Vector_table
* We can see the vector table in [reference manual](https://www.st.com/resource/en/reference_manual/dm00031020-stm32f405-415-stm32f407-417-stm32f427-437-and-stm32f429-439-advanced-arm-based-32-bit-mcus-stmicroelectronics.pdf).  
![](https://i.imgur.com/WSwum1M.png)  
* The nested vector interrupt controller NVIC includes 82 maskable interrupt channels.
* All interrupts including the core exceptions are managed by the NVIC.

## GPIO
* **GPIO**  stand for **general purpose Input Output**.
* **GPIO input mode with **pull-up/down** state**
    * There are **configuration registers** for every GPIO port which enables you to handle internal pull up or pull down resistors.
    ![](https://i.imgur.com/7NmFx07.jpg)
    [image reference](https://community.st.com/sfc/servlet.shepherd/version/renditionDownload?rendition=THUMB720BY480&versionId=0680X000009rlIB&operationContext=CHATTER&contentId=05T0X00000YMT7o&page=0)

* **GPIO output mode with **open drain** state**
    * There is just a **single NMOS transistor**. When the transistor is **switched ON**, the pin is **pulled to ground**. And when this transistor is **OFF**, the drain of the transistor will be **floating or open**.
    ![](https://i.imgur.com/dMZajvj.png)
    [image reference](https://www.udemy.com/course/mastering-microcontroller-with-peripheral-driver-development/)
    * To make use of open-drain in a real world application, it has to be used along with either **internal pull up or external pull up resistor**.
    ![](https://i.imgur.com/uhJi62F.png)
    [image reference](https://www.udemy.com/course/mastering-microcontroller-with-peripheral-driver-development/)
    ![](https://i.imgur.com/vGRsa2B.png)

* **GPIO Registers**
    * We can find various register details and the **offset address** of GPIO registers here.
    ![](https://i.imgur.com/oHCfYyp.png)

* **GPIO Alternate functionality register**
    * When GPIO pin is in alternate functionality mode it can be used for 16 different functionalities from AF0 to AF15.
    ![](https://i.imgur.com/f2qzVTi.png)


* **The handle structure and configuration structure of GPIO pin**.
    ![](https://i.imgur.com/JdxEpVP.png)
 
## SPI
* SPI stands for **Serial Peripheral interface**.
* SPI is a protocol which is used for serial data communication between **one master and a couple of slave devices**.
* Typically use of SPI is actually to gather data from the sensor at **higher frequencies**.
![](https://i.imgur.com/YmY7TLt.png)
[image reference](https://www.udemy.com/course/mastering-microcontroller-with-peripheral-driver-development/)
* MOSI of master is connected to MOSI of slave, the clock pins are connected, and the MISO of slave is connected to the MISO of master
![](https://i.imgur.com/VlI1BUP.png)
[image reference](https://www.udemy.com/course/mastering-microcontroller-with-peripheral-driver-development/)

* **Full duplex communication**
     ![](https://i.imgur.com/y4eXYtY.png)
     [image reference](https://www.udemy.com/course/mastering-microcontroller-with-peripheral-driver-development/)
* **Half-duplex communication**
    ![](https://i.imgur.com/dhkz5c8.png)
* **Simplex communication**
     ![](https://i.imgur.com/BmGqTHe.png)
* **SPI block diagram**
![](https://i.imgur.com/YtwFyqB.png)

## UART
* **UART** stands for **universal asynchronous receiver transmitter**, whereas **USART** stands for **universal synchronous, asynchronous receiver transmitter**. 
* **UART** supports **only asynchronous** mode whereas **USART** supports **both** synchronous as well as asynchronous modes.
* **UART pins**
    * We **receive data** into the UART module over **RX pin** and we **transmit data** out of the UART module over **TX**. 
    *  **CTS** which stands for **Clear To Send**, it's an active low pin. When hardware flow control is used, the data transmission on the **TX line**.
    *  **RTS stands** for **Request To Send**. It is also an active low pin. The device uses this line to **inform the other device that it needs a data**.

happens only if the CTS pin is pulled low.
![](https://i.imgur.com/K63Y5ku.png)


## RTC_on_LCD 
* references
    * [ds1307 datasheet](https://datasheets.maximintegrated.com/en/ds/DS1307.pdf)  
    ![](https://i.imgur.com/p9OJJlg.png)  

1. Connections
![](https://i.imgur.com/MJTt0ob.jpg)  
2. 
3. Then we can see the current time and current date messeges setting in semihosting. 
![](https://i.imgur.com/wcXIygV.png)  
4. Practical connections with STM32F407, LCD, DS1307 and 10K potentiometer
![](https://i.imgur.com/R0wCf6T.jpg)

