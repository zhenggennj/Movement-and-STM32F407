pragma Ada_2012;
pragma Style_Checks (Off);
--with System;
package stm32f407.registers is
   FLASH_BASE                : constant Word := 16#08000000#;
   CCMDATARAM_BASE           : constant Word := 16#10000000#;
   SRAM1_BASE                : constant Word := 16#20000000#;
   SRAM2_BASE                : constant Word := 16#2001C000#;
   PERIPH_BASE               : constant Word := 16#40000000#;
   BKPSRAM_BASE              : constant Word := 16#40024000#;
   FSMC_R_BASE               : constant Word := 16#A0000000#;
   SRAM1_BB_BASE             : constant Word := 16#22000000#;
   SRAM2_BB_BASE             : constant Word := 16#22380000#;
   PERIPH_BB_BASE            : constant Word := 16#42000000#;
   BKPSRAM_BB_BASE           : constant Word := 16#42480000#;
   FLASH_END                 : constant Word := 16#080FFFFF#;
   CCMDATARAM_END            : constant Word := 16#1000FFFF#;
   SRAM_BASE                 : constant Word := SRAM1_BASE;
   SRAM_BB_BASE              : constant Word := SRAM1_BB_BASE;
   APB1PERIPH_BASE           : constant Word := PERIPH_BASE;
   APB2PERIPH_BASE           : constant Word := (PERIPH_BASE + 16#00010000#);
   AHB1PERIPH_BASE           : constant Word := (PERIPH_BASE + 16#00020000#);
   AHB2PERIPH_BASE           : constant Word := (PERIPH_BASE + 16#10000000#);
   TIM2_BASE                 : constant Word := (APB1PERIPH_BASE + 16#0000#);
   TIM3_BASE                 : constant Word := (APB1PERIPH_BASE + 16#0400#);
   TIM4_BASE                 : constant Word := (APB1PERIPH_BASE + 16#0800#);
   TIM5_BASE                 : constant Word := (APB1PERIPH_BASE + 16#0C00#);
   TIM6_BASE                 : constant Word := (APB1PERIPH_BASE + 16#1000#);
   TIM7_BASE                 : constant Word := (APB1PERIPH_BASE + 16#1400#);
   TIM12_BASE                : constant Word := (APB1PERIPH_BASE + 16#1800#);
   TIM13_BASE                : constant Word := (APB1PERIPH_BASE + 16#1C00#);
   TIM14_BASE                : constant Word := (APB1PERIPH_BASE + 16#2000#);
   RTC_BASE                  : constant Word := (APB1PERIPH_BASE + 16#2800#);
   WWDG_BASE                 : constant Word := (APB1PERIPH_BASE + 16#2C00#);
   IWDG_BASE                 : constant Word := (APB1PERIPH_BASE + 16#3000#);
   I2S2ext_BASE              : constant Word := (APB1PERIPH_BASE + 16#3400#);
   SPI2_BASE                 : constant Word := (APB1PERIPH_BASE + 16#3800#);
   SPI3_BASE                 : constant Word := (APB1PERIPH_BASE + 16#3C00#);
   I2S3ext_BASE              : constant Word := (APB1PERIPH_BASE + 16#4000#);
   USART2_BASE               : constant Word := (APB1PERIPH_BASE + 16#4400#);
   USART3_BASE               : constant Word := (APB1PERIPH_BASE + 16#4800#);
   UART4_BASE                : constant Word := (APB1PERIPH_BASE + 16#4C00#);
   UART5_BASE                : constant Word := (APB1PERIPH_BASE + 16#5000#);
   I2C1_BASE                 : constant Word := (APB1PERIPH_BASE + 16#5400#);
   I2C2_BASE                 : constant Word := (APB1PERIPH_BASE + 16#5800#);
   I2C3_BASE                 : constant Word := (APB1PERIPH_BASE + 16#5C00#);
   CAN1_BASE                 : constant Word := (APB1PERIPH_BASE + 16#6400#);
   CAN2_BASE                 : constant Word := (APB1PERIPH_BASE + 16#6800#);
   PWR_BASE                  : constant Word := (APB1PERIPH_BASE + 16#7000#);
   DAC_BASE                  : constant Word := (APB1PERIPH_BASE + 16#7400#);
   TIM1_BASE                 : constant Word := (APB2PERIPH_BASE + 16#0000#);
   TIM8_BASE                 : constant Word := (APB2PERIPH_BASE + 16#0400#);
   USART1_BASE               : constant Word := (APB2PERIPH_BASE + 16#1000#);
   USART6_BASE               : constant Word := (APB2PERIPH_BASE + 16#1400#);
   ADC1_BASE                 : constant Word := (APB2PERIPH_BASE + 16#2000#);
   ADC2_BASE                 : constant Word := (APB2PERIPH_BASE + 16#2100#);
   ADC3_BASE                 : constant Word := (APB2PERIPH_BASE + 16#2200#);
   ADC_BASE                  : constant Word := (APB2PERIPH_BASE + 16#2300#);
   SDIO_BASE                 : constant Word := (APB2PERIPH_BASE + 16#2C00#);
   SPI1_BASE                 : constant Word := (APB2PERIPH_BASE + 16#3000#);
   SYSCFG_BASE               : constant Word := (APB2PERIPH_BASE + 16#3800#);
   EXTI_BASE                 : constant Word := (APB2PERIPH_BASE + 16#3C00#);
   TIM9_BASE                 : constant Word := (APB2PERIPH_BASE + 16#4000#);
   TIM10_BASE                : constant Word := (APB2PERIPH_BASE + 16#4400#);
   TIM11_BASE                : constant Word := (APB2PERIPH_BASE + 16#4800#);
   GPIOA_BASE                : constant Word := (AHB1PERIPH_BASE + 16#0000#);
   GPIOB_BASE                : constant Word := (AHB1PERIPH_BASE + 16#0400#);
   GPIOC_BASE                : constant Word := (AHB1PERIPH_BASE + 16#0800#);
   GPIOD_BASE                : constant Word := (AHB1PERIPH_BASE + 16#0C00#);
   GPIOE_BASE                : constant Word := (AHB1PERIPH_BASE + 16#1000#);
   GPIOF_BASE                : constant Word := (AHB1PERIPH_BASE + 16#1400#);
   GPIOG_BASE                : constant Word := (AHB1PERIPH_BASE + 16#1800#);
   GPIOH_BASE                : constant Word := (AHB1PERIPH_BASE + 16#1C00#);
   GPIOI_BASE                : constant Word := (AHB1PERIPH_BASE + 16#2000#);
   CRC_BASE                  : constant Word := (AHB1PERIPH_BASE + 16#3000#);
   RCC_BASE                  : constant Word := (AHB1PERIPH_BASE + 16#3800#);
   FLASH_R_BASE              : constant Word := (AHB1PERIPH_BASE + 16#3C00#);
   DMA1_BASE                 : constant Word := (AHB1PERIPH_BASE + 16#6000#);
   DMA1_Stream0_BASE         : constant Word := (DMA1_BASE + 16#010#);
   DMA1_Stream1_BASE         : constant Word := (DMA1_BASE + 16#028#);
   DMA1_Stream2_BASE         : constant Word := (DMA1_BASE + 16#040#);
   DMA1_Stream3_BASE         : constant Word := (DMA1_BASE + 16#058#);
   DMA1_Stream4_BASE         : constant Word := (DMA1_BASE + 16#070#);
   DMA1_Stream5_BASE         : constant Word := (DMA1_BASE + 16#088#);
   DMA1_Stream6_BASE         : constant Word := (DMA1_BASE + 16#0A0#);
   DMA1_Stream7_BASE         : constant Word := (DMA1_BASE + 16#0B8#);
   DMA2_BASE                 : constant Word := (AHB1PERIPH_BASE + 16#6400#);
   DMA2_Stream0_BASE         : constant Word := (DMA2_BASE + 16#010#);
   DMA2_Stream1_BASE         : constant Word := (DMA2_BASE + 16#028#);
   DMA2_Stream2_BASE         : constant Word := (DMA2_BASE + 16#040#);
   DMA2_Stream3_BASE         : constant Word := (DMA2_BASE + 16#058#);
   DMA2_Stream4_BASE         : constant Word := (DMA2_BASE + 16#070#);
   DMA2_Stream5_BASE         : constant Word := (DMA2_BASE + 16#088#);
   DMA2_Stream6_BASE         : constant Word := (DMA2_BASE + 16#0A0#);
   DMA2_Stream7_BASE         : constant Word := (DMA2_BASE + 16#0B8#);
   ETH_BASE                  : constant Word := (AHB1PERIPH_BASE + 16#8000#);
   ETH_MAC_BASE              : constant Word := (ETH_BASE);
   ETH_MMC_BASE              : constant Word := (ETH_BASE + 16#0100#);
   ETH_PTP_BASE              : constant Word := (ETH_BASE + 16#0700#);
   ETH_DMA_BASE              : constant Word := (ETH_BASE + 16#1000#);
   DCMI_BASE                 : constant Word := (AHB2PERIPH_BASE + 16#50000#);
   RNG_BASE                  : constant Word := (AHB2PERIPH_BASE + 16#60800#);
   FSMC_Bank1_R_BASE         : constant Word := (FSMC_R_BASE + 16#0000#);
   FSMC_Bank1E_R_BASE        : constant Word := (FSMC_R_BASE + 16#0104#);
   FSMC_Bank2_3_R_BASE       : constant Word := (FSMC_R_BASE + 16#0060#);
   FSMC_Bank4_R_BASE         : constant Word := (FSMC_R_BASE + 16#00A0#);
   DBGMCU_BASE               : constant Word := 16#E0042000#;
   USB_OTG_HS_PERIPH_BASE    : constant Word := 16#40040000#;
   USB_OTG_FS_PERIPH_BASE    : constant Word := 16#50000000#;
   USB_OTG_GLOBAL_BASE       : constant Word := 16#000#;
   USB_OTG_DEVICE_BASE       : constant Word := 16#800#;
   USB_OTG_IN_ENDPOINT_BASE  : constant Word := 16#900#;
   USB_OTG_OUT_ENDPOINT_BASE : constant Word := 16#B00#;
   USB_OTG_EP_REG_SIZE       : constant Word := 16#20#;
   USB_OTG_HOST_BASE         : constant Word := 16#400#;
   USB_OTG_HOST_PORT_BASE    : constant Word := 16#440#;
   USB_OTG_HOST_CHANNEL_BASE : constant Word := 16#500#;
   USB_OTG_HOST_CHANNEL_SIZE : constant Word := 16#20#;
   USB_OTG_PCGCCTL_BASE      : constant Word := 16#E00#;
   USB_OTG_FIFO_BASE         : constant Word := 16#1000#;
   USB_OTG_FIFO_SIZE         : constant Word := 16#1000#;

--     FMC_IRQn :constant word := FSMC_IRQn
--     FMC_IRQHandler :constant word := FSMC_IRQHandler;
  --*
   --  ******************************************************************************
   --  * @file    stm32f407xx.h
   --  * @author  MCD Application Team
   --  * @version V2.5.0
   --  * @date    22-April-2016
   --  * @brief   CMSIS STM32F407xx Device Peripheral Access Layer Header File.
   --  *
   --  *          This file contains:
   --  *           - Data structures and the address mapping for all peripherals
   --  *           - peripherals registers declarations and bits definition
   --  *           - Macros to access peripheralӳ registers hardware
   --  *
   --  ******************************************************************************
   --  * @attention
   --  *
   --  * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
   --  *
   --  * Redistribution and use in source and binary forms, with or without modification,
   --  * are permitted provided that the following conditions are met:
   --  *   1. Redistributions of source code must retain the above copyright notice,
   --  *      this list of conditions and the following disclaimer.
   --  *   2. Redistributions in binary form must reproduce the above copyright notice,
   --  *      this list of conditions and the following disclaimer in the documentation
   --  *      and/or other materials provided with the distribution.
   --  *   3. Neither the name of STMicroelectronics nor the names of its contributors
   --  *      may be used to endorse or promote products derived from this software
   --  *      without specific prior written permission.
   --  *
   --  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
   --  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
   --  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
   --  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
   --  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
   --  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
   --  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
   --  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
   --  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
   --  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
   --  *
   --  ******************************************************************************
   --

  --* @addtogroup CMSIS
   --  * @{
   --

  --* @addtogroup stm32f407xx
   --  * @{
   --

  --* @addtogroup Configuration_section_for_CMSIS
   --  * @{
   --

  --*
   --  * @brief Configuration of the Cortex-M4 Processor and Core Peripherals
   --

  --*
   --  * @}
   --

  --* @addtogroup Peripheral_interrupt_number_definition
   --  * @{
   --

  --*
   -- * @brief STM32F4XX Interrupt Number Definition, according to the selected device
   -- *        in @ref Library_configuration_section
   --

  --*****  Cortex-M4 Processor Exceptions Numbers ***************************************************************
  --!< 2 Non Maskable Interrupt
  --!< 4 Cortex-M4 Memory Management Interrupt
  --!< 5 Cortex-M4 Bus Fault Interrupt
  --!< 6 Cortex-M4 Usage Fault Interrupt
  --!< 11 Cortex-M4 SV Call Interrupt
  --!< 12 Cortex-M4 Debug Monitor Interrupt
  --!< 14 Cortex-M4 Pend SV Interrupt
  --!< 15 Cortex-M4 System Tick Interrupt
  --*****  STM32 specific Interrupt Numbers *********************************************************************
  --!< Window WatchDog Interrupt
  --!< PVD through EXTI Line detection Interrupt
  --!< Tamper and TimeStamp interrupts through the EXTI line
  --!< RTC Wakeup interrupt through the EXTI line
  --!< FLASH global Interrupt
  --!< RCC global Interrupt
  --!< EXTI Line0 Interrupt
  --!< EXTI Line1 Interrupt
  --!< EXTI Line2 Interrupt
  --!< EXTI Line3 Interrupt
  --!< EXTI Line4 Interrupt
  --!< DMA1 Stream 0 global Interrupt
  --!< DMA1 Stream 1 global Interrupt
  --!< DMA1 Stream 2 global Interrupt
  --!< DMA1 Stream 3 global Interrupt
  --!< DMA1 Stream 4 global Interrupt
  --!< DMA1 Stream 5 global Interrupt
  --!< DMA1 Stream 6 global Interrupt
  --!< ADC1, ADC2 and ADC3 global Interrupts
  --!< CAN1 TX Interrupt
  --!< CAN1 RX0 Interrupt
  --!< CAN1 RX1 Interrupt
  --!< CAN1 SCE Interrupt
  --!< External Line[9:5] Interrupts
  --!< TIM1 Break interrupt and TIM9 global interrupt
  --!< TIM1 Update Interrupt and TIM10 global interrupt
  --!< TIM1 Trigger and Commutation Interrupt and TIM11 global interrupt
  --!< TIM1 Capture Compare Interrupt
  --!< TIM2 global Interrupt
  --!< TIM3 global Interrupt
  --!< TIM4 global Interrupt
  --!< I2C1 Event Interrupt
  --!< I2C1 Error Interrupt
  --!< I2C2 Event Interrupt
  --!< I2C2 Error Interrupt
  --!< SPI1 global Interrupt
  --!< SPI2 global Interrupt
  --!< USART1 global Interrupt
  --!< USART2 global Interrupt
  --!< USART3 global Interrupt
  --!< External Line[15:10] Interrupts
  --!< RTC Alarm (A and B) through EXTI Line Interrupt
  --!< USB OTG FS Wakeup through EXTI line interrupt
  --!< TIM8 Break Interrupt and TIM12 global interrupt
  --!< TIM8 Update Interrupt and TIM13 global interrupt
  --!< TIM8 Trigger and Commutation Interrupt and TIM14 global interrupt
  --!< TIM8 Capture Compare Interrupt
  --!< DMA1 Stream7 Interrupt
  --!< FSMC global Interrupt
  --!< SDIO global Interrupt
  --!< TIM5 global Interrupt
  --!< SPI3 global Interrupt
  --!< UART4 global Interrupt
  --!< UART5 global Interrupt
  --!< TIM6 global and DAC1&2 underrun error  interrupts
  --!< TIM7 global interrupt
  --!< DMA2 Stream 0 global Interrupt
  --!< DMA2 Stream 1 global Interrupt
  --!< DMA2 Stream 2 global Interrupt
  --!< DMA2 Stream 3 global Interrupt
  --!< DMA2 Stream 4 global Interrupt
  --!< Ethernet global Interrupt
  --!< Ethernet Wakeup through EXTI line Interrupt
  --!< CAN2 TX Interrupt
  --!< CAN2 RX0 Interrupt
  --!< CAN2 RX1 Interrupt
  --!< CAN2 SCE Interrupt
  --!< USB OTG FS global Interrupt
  --!< DMA2 Stream 5 global interrupt
  --!< DMA2 Stream 6 global interrupt
  --!< DMA2 Stream 7 global interrupt
  --!< USART6 global interrupt
  --!< I2C3 event interrupt
  --!< I2C3 error interrupt
  --!< USB OTG HS End Point 1 Out global interrupt
  --!< USB OTG HS End Point 1 In global interrupt
  --!< USB OTG HS Wakeup through EXTI interrupt
  --!< USB OTG HS global interrupt
  --!< DCMI global interrupt
  --!< Hash and RNG global interrupt
  --!< FPU global interrupt
   subtype IRQn_Type is Integer;  --unsigned
   NonMaskableInt_IRQn     : constant IRQn_Type := -14;
   MemoryManagement_IRQn   : constant IRQn_Type := -12;
   BusFault_IRQn           : constant IRQn_Type := -11;
   UsageFault_IRQn         : constant IRQn_Type := -10;
   SVCall_IRQn             : constant IRQn_Type := -5;
   DebugMonitor_IRQn       : constant IRQn_Type := -4;
   PendSV_IRQn             : constant IRQn_Type := -2;
   SysTick_IRQn            : constant IRQn_Type := -1;
   WWDG_IRQn               : constant IRQn_Type := 0;
   PVD_IRQn                : constant IRQn_Type := 1;
   TAMP_STAMP_IRQn         : constant IRQn_Type := 2;
   RTC_WKUP_IRQn           : constant IRQn_Type := 3;
   FLASH_IRQn              : constant IRQn_Type := 4;
   RCC_IRQn                : constant IRQn_Type := 5;
   EXTI0_IRQn              : constant IRQn_Type := 6;
   EXTI1_IRQn              : constant IRQn_Type := 7;
   EXTI2_IRQn              : constant IRQn_Type := 8;
   EXTI3_IRQn              : constant IRQn_Type := 9;
   EXTI4_IRQn              : constant IRQn_Type := 10;
   DMA1_Stream0_IRQn       : constant IRQn_Type := 11;
   DMA1_Stream1_IRQn       : constant IRQn_Type := 12;
   DMA1_Stream2_IRQn       : constant IRQn_Type := 13;
   DMA1_Stream3_IRQn       : constant IRQn_Type := 14;
   DMA1_Stream4_IRQn       : constant IRQn_Type := 15;
   DMA1_Stream5_IRQn       : constant IRQn_Type := 16;
   DMA1_Stream6_IRQn       : constant IRQn_Type := 17;
   ADC_IRQn                : constant IRQn_Type := 18;
   CAN1_TX_IRQn            : constant IRQn_Type := 19;
   CAN1_RX0_IRQn           : constant IRQn_Type := 20;
   CAN1_RX1_IRQn           : constant IRQn_Type := 21;
   CAN1_SCE_IRQn           : constant IRQn_Type := 22;
   EXTI9_5_IRQn            : constant IRQn_Type := 23;
   TIM1_BRK_TIM9_IRQn      : constant IRQn_Type := 24;
   TIM1_UP_TIM10_IRQn      : constant IRQn_Type := 25;
   TIM1_TRG_COM_TIM11_IRQn : constant IRQn_Type := 26;
   TIM1_CC_IRQn            : constant IRQn_Type := 27;
   TIM2_IRQn               : constant IRQn_Type := 28;
   TIM3_IRQn               : constant IRQn_Type := 29;
   TIM4_IRQn               : constant IRQn_Type := 30;
   I2C1_EV_IRQn            : constant IRQn_Type := 31;
   I2C1_ER_IRQn            : constant IRQn_Type := 32;
   I2C2_EV_IRQn            : constant IRQn_Type := 33;
   I2C2_ER_IRQn            : constant IRQn_Type := 34;
   SPI1_IRQn               : constant IRQn_Type := 35;
   SPI2_IRQn               : constant IRQn_Type := 36;
   USART1_IRQn             : constant IRQn_Type := 37;
   USART2_IRQn             : constant IRQn_Type := 38;
   USART3_IRQn             : constant IRQn_Type := 39;
   EXTI15_10_IRQn          : constant IRQn_Type := 40;
   RTC_Alarm_IRQn          : constant IRQn_Type := 41;
   OTG_FS_WKUP_IRQn        : constant IRQn_Type := 42;
   TIM8_BRK_TIM12_IRQn     : constant IRQn_Type := 43;
   TIM8_UP_TIM13_IRQn      : constant IRQn_Type := 44;
   TIM8_TRG_COM_TIM14_IRQn : constant IRQn_Type := 45;
   TIM8_CC_IRQn            : constant IRQn_Type := 46;
   DMA1_Stream7_IRQn       : constant IRQn_Type := 47;
   FSMC_IRQn               : constant IRQn_Type := 48;
   SDIO_IRQn               : constant IRQn_Type := 49;
   TIM5_IRQn               : constant IRQn_Type := 50;
   SPI3_IRQn               : constant IRQn_Type := 51;
   UART4_IRQn              : constant IRQn_Type := 52;
   UART5_IRQn              : constant IRQn_Type := 53;
   TIM6_DAC_IRQn           : constant IRQn_Type := 54;
   TIM7_IRQn               : constant IRQn_Type := 55;
   DMA2_Stream0_IRQn       : constant IRQn_Type := 56;
   DMA2_Stream1_IRQn       : constant IRQn_Type := 57;
   DMA2_Stream2_IRQn       : constant IRQn_Type := 58;
   DMA2_Stream3_IRQn       : constant IRQn_Type := 59;
   DMA2_Stream4_IRQn       : constant IRQn_Type := 60;
   ETH_IRQn                : constant IRQn_Type := 61;
   ETH_WKUP_IRQn           : constant IRQn_Type := 62;
   CAN2_TX_IRQn            : constant IRQn_Type := 63;
   CAN2_RX0_IRQn           : constant IRQn_Type := 64;
   CAN2_RX1_IRQn           : constant IRQn_Type := 65;
   CAN2_SCE_IRQn           : constant IRQn_Type := 66;
   OTG_FS_IRQn             : constant IRQn_Type := 67;
   DMA2_Stream5_IRQn       : constant IRQn_Type := 68;
   DMA2_Stream6_IRQn       : constant IRQn_Type := 69;
   DMA2_Stream7_IRQn       : constant IRQn_Type := 70;
   USART6_IRQn             : constant IRQn_Type := 71;
   I2C3_EV_IRQn            : constant IRQn_Type := 72;
   I2C3_ER_IRQn            : constant IRQn_Type := 73;
   OTG_HS_EP1_OUT_IRQn     : constant IRQn_Type := 74;
   OTG_HS_EP1_IN_IRQn      : constant IRQn_Type := 75;
   OTG_HS_WKUP_IRQn        : constant IRQn_Type := 76;
   OTG_HS_IRQn             : constant IRQn_Type := 77;
   DCMI_IRQn               : constant IRQn_Type := 78;
   HASH_RNG_IRQn           : constant IRQn_Type := 80;
   FPU_IRQn                : constant IRQn_Type := 81;
 
end stm32f407.registers;
