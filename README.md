# Movement-and-STM32F407
Detect movement of the board using onboard lis3dsh accelo-sensor on a STM32F407 discovery board

The Objective
=============
There is a accelo-meter on STM32F407 discovery board. It can be used to detect movement of the board. With hardware float point computing support, STM32F407 can do more things than STM32F1xx series.
The project plan
================
For a STM32F407 disco board, software package named STM32Cube can be downloaded from ST website. It is written in C. This is a good start point when no other resource is available. (The project was started before I came across GNAT Driver Library ). It is obvious that programming based on a driver library is more robust than programming on register level. In order to do programming using Ada on library level, there are many things to do.

   1. Write a few Makefile files so as to build a sample project or demenstration project together with the driver library using GCC. 
   2. Create Ada specification files from C head files by using -fdump-ada-spec switch.
   3. Some manual modification to the generated Ada specification files have to be done because all the #define statements remains marked as "--unsupported macro...".
   4. Using APIs exported from the driver library to do application programming.

The project status
==================
1. Build "demonstration" application and the driver library using GCC based on STM32Cube_FW_F4_V1.12.0. Finished. The work is done in Cygwin environment.
2. The packages are ordered in the following way.  
stm32f407->registers->ADC,...spi,rcc,...  
stm32f407->hal->spi,rcc,...  
BSPDrv_LED  
App_Leds  
App_buttons  
...           
           
Register level packages for each peripheral in the MCU are created.  They contains  peripheral register  record definitions, respective peripheral instances and bit definations of individual register. The "--unsupported macro" are replaced by Ada constant definitions using sed program. The sed commands are stored in a file named sed_cmd.txt.
Only hal drivers for dma,gpio,rcc and spi are created. To ease the rewriting of the "--unsupported macro" into structures like:  
type RCC_PERIPHCLK_t is (   
  ...   
  ) with  size->32;  
  for RCC_PERPHCLK_t use (  
  ...
  );  
  A console application named "deal_with_unsupported_macro" is developed.  When the treatment is applied to the respective ads file, the only work which has to be done by hand are those like "with" missing spec files, correct order problem for some enumeration definition, and most importantly the type of arguments in high level API routines so that argument validation can be realized by runtime based on their enumeration nature.
  

