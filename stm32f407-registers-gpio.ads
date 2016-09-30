pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.gpio is
  --*
   --  * @brief General Purpose I/O
   --

  --!< GPIO port mode register,               Address offset: 16#00
  --!< GPIO port output type register,        Address offset: 16#04
  --!< GPIO port output speed register,       Address offset: 16#08
  --!< GPIO port pull-up/pull-down register,  Address offset: 16#0C
  --!< GPIO port input data register,         Address offset: 16#10
  --!< GPIO port output data register,        Address offset: 16#14
  --!< GPIO port bit set/reset register,      Address offset: 16#18
  --!< GPIO port configuration lock register, Address offset: 16#1C
  --!< GPIO alternate function registers,     Address offset: 16#20-:constant word :=16#24
   type GPIO_Register_AFR_array is array (0 .. 1) of aliased Word;
   type GPIO_Register is record
      MODER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:546
      OTYPER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:547
      OSPEEDR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:548
      PUPDR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:549
      IDR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:550
      ODR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:551
      BSRR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:552
      LCKR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:553
      AFR : aliased GPIO_Register_AFR_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:554
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      GPIO_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:555
   subtype GPIO_TypeDef is GPIO_Register;

   GPIOA : GPIO_Register with
      Volatile,
      Address => System'To_Address (GPIOA_BASE),
      Import;
   GPIOB : GPIO_Register with
      Volatile,
      Address => System'To_Address (GPIOB_BASE),
      Import;
   GPIOC : GPIO_Register with
      Volatile,
      Address => System'To_Address (GPIOC_BASE),
      Import;
   GPIOD : GPIO_Register with
      Volatile,
      Address => System'To_Address (GPIOD_BASE),
      Import;
   GPIOE : GPIO_Register with
      Volatile,
      Address => System'To_Address (GPIOE_BASE),
      Import;
   GPIOF : GPIO_Register with
      Volatile,
      Address => System'To_Address (GPIOF_BASE),
      Import;
   GPIOG : GPIO_Register with
      Volatile,
      Address => System'To_Address (GPIOG_BASE),
      Import;
   GPIOH : GPIO_Register with
      Volatile,
      Address => System'To_Address (GPIOH_BASE),
      Import;
   GPIOI : GPIO_Register with
      Volatile,
      Address => System'To_Address (GPIOI_BASE),
      Import;

-- /******************************************************************************/
-- /*                                                                            */
-- /*                            General Purpose I/O                             */
-- /*                                                                            */
-- /******************************************************************************/
-- /******************  Bits definition for GPIO_MODER register  *****************/
   GPIO_MODER_MODER0   : constant Word := 16#00000003#;
   GPIO_MODER_MODER0_0 : constant Word := 16#00000001#;
   GPIO_MODER_MODER0_1 : constant Word := 16#00000002#;

   GPIO_MODER_MODER1   : constant Word := 16#0000000C#;
   GPIO_MODER_MODER1_0 : constant Word := 16#00000004#;
   GPIO_MODER_MODER1_1 : constant Word := 16#00000008#;

   GPIO_MODER_MODER2   : constant Word := 16#00000030#;
   GPIO_MODER_MODER2_0 : constant Word := 16#00000010#;
   GPIO_MODER_MODER2_1 : constant Word := 16#00000020#;

   GPIO_MODER_MODER3   : constant Word := 16#000000C0#;
   GPIO_MODER_MODER3_0 : constant Word := 16#00000040#;
   GPIO_MODER_MODER3_1 : constant Word := 16#00000080#;

   GPIO_MODER_MODER4   : constant Word := 16#00000300#;
   GPIO_MODER_MODER4_0 : constant Word := 16#00000100#;
   GPIO_MODER_MODER4_1 : constant Word := 16#00000200#;

   GPIO_MODER_MODER5   : constant Word := 16#00000C00#;
   GPIO_MODER_MODER5_0 : constant Word := 16#00000400#;
   GPIO_MODER_MODER5_1 : constant Word := 16#00000800#;

   GPIO_MODER_MODER6   : constant Word := 16#00003000#;
   GPIO_MODER_MODER6_0 : constant Word := 16#00001000#;
   GPIO_MODER_MODER6_1 : constant Word := 16#00002000#;

   GPIO_MODER_MODER7   : constant Word := 16#0000C000#;
   GPIO_MODER_MODER7_0 : constant Word := 16#00004000#;
   GPIO_MODER_MODER7_1 : constant Word := 16#00008000#;

   GPIO_MODER_MODER8   : constant Word := 16#00030000#;
   GPIO_MODER_MODER8_0 : constant Word := 16#00010000#;
   GPIO_MODER_MODER8_1 : constant Word := 16#00020000#;

   GPIO_MODER_MODER9   : constant Word := 16#000C0000#;
   GPIO_MODER_MODER9_0 : constant Word := 16#00040000#;
   GPIO_MODER_MODER9_1 : constant Word := 16#00080000#;

   GPIO_MODER_MODER10   : constant Word := 16#00300000#;
   GPIO_MODER_MODER10_0 : constant Word := 16#00100000#;
   GPIO_MODER_MODER10_1 : constant Word := 16#00200000#;

   GPIO_MODER_MODER11   : constant Word := 16#00C00000#;
   GPIO_MODER_MODER11_0 : constant Word := 16#00400000#;
   GPIO_MODER_MODER11_1 : constant Word := 16#00800000#;

   GPIO_MODER_MODER12   : constant Word := 16#03000000#;
   GPIO_MODER_MODER12_0 : constant Word := 16#01000000#;
   GPIO_MODER_MODER12_1 : constant Word := 16#02000000#;

   GPIO_MODER_MODER13   : constant Word := 16#0C000000#;
   GPIO_MODER_MODER13_0 : constant Word := 16#04000000#;
   GPIO_MODER_MODER13_1 : constant Word := 16#08000000#;

   GPIO_MODER_MODER14   : constant Word := 16#30000000#;
   GPIO_MODER_MODER14_0 : constant Word := 16#10000000#;
   GPIO_MODER_MODER14_1 : constant Word := 16#20000000#;

   GPIO_MODER_MODER15   : constant Word := 16#C0000000#;
   GPIO_MODER_MODER15_0 : constant Word := 16#40000000#;
   GPIO_MODER_MODER15_1 : constant Word := 16#80000000#;

-- /******************  Bits definition for GPIO_OTYPER register  ****************/
   GPIO_OTYPER_OT_0  : constant Word := 16#00000001#;
   GPIO_OTYPER_OT_1  : constant Word := 16#00000002#;
   GPIO_OTYPER_OT_2  : constant Word := 16#00000004#;
   GPIO_OTYPER_OT_3  : constant Word := 16#00000008#;
   GPIO_OTYPER_OT_4  : constant Word := 16#00000010#;
   GPIO_OTYPER_OT_5  : constant Word := 16#00000020#;
   GPIO_OTYPER_OT_6  : constant Word := 16#00000040#;
   GPIO_OTYPER_OT_7  : constant Word := 16#00000080#;
   GPIO_OTYPER_OT_8  : constant Word := 16#00000100#;
   GPIO_OTYPER_OT_9  : constant Word := 16#00000200#;
   GPIO_OTYPER_OT_10 : constant Word := 16#00000400#;
   GPIO_OTYPER_OT_11 : constant Word := 16#00000800#;
   GPIO_OTYPER_OT_12 : constant Word := 16#00001000#;
   GPIO_OTYPER_OT_13 : constant Word := 16#00002000#;
   GPIO_OTYPER_OT_14 : constant Word := 16#00004000#;
   GPIO_OTYPER_OT_15 : constant Word := 16#00008000#;

-- /******************  Bits definition for GPIO_OSPEEDR register  ***************/
   GPIO_OSPEEDER_OSPEEDR0   : constant Word := 16#00000003#;
   GPIO_OSPEEDER_OSPEEDR0_0 : constant Word := 16#00000001#;
   GPIO_OSPEEDER_OSPEEDR0_1 : constant Word := 16#00000002#;

   GPIO_OSPEEDER_OSPEEDR1   : constant Word := 16#0000000C#;
   GPIO_OSPEEDER_OSPEEDR1_0 : constant Word := 16#00000004#;
   GPIO_OSPEEDER_OSPEEDR1_1 : constant Word := 16#00000008#;

   GPIO_OSPEEDER_OSPEEDR2   : constant Word := 16#00000030#;
   GPIO_OSPEEDER_OSPEEDR2_0 : constant Word := 16#00000010#;
   GPIO_OSPEEDER_OSPEEDR2_1 : constant Word := 16#00000020#;

   GPIO_OSPEEDER_OSPEEDR3   : constant Word := 16#000000C0#;
   GPIO_OSPEEDER_OSPEEDR3_0 : constant Word := 16#00000040#;
   GPIO_OSPEEDER_OSPEEDR3_1 : constant Word := 16#00000080#;

   GPIO_OSPEEDER_OSPEEDR4   : constant Word := 16#00000300#;
   GPIO_OSPEEDER_OSPEEDR4_0 : constant Word := 16#00000100#;
   GPIO_OSPEEDER_OSPEEDR4_1 : constant Word := 16#00000200#;

   GPIO_OSPEEDER_OSPEEDR5   : constant Word := 16#00000C00#;
   GPIO_OSPEEDER_OSPEEDR5_0 : constant Word := 16#00000400#;
   GPIO_OSPEEDER_OSPEEDR5_1 : constant Word := 16#00000800#;

   GPIO_OSPEEDER_OSPEEDR6   : constant Word := 16#00003000#;
   GPIO_OSPEEDER_OSPEEDR6_0 : constant Word := 16#00001000#;
   GPIO_OSPEEDER_OSPEEDR6_1 : constant Word := 16#00002000#;

   GPIO_OSPEEDER_OSPEEDR7   : constant Word := 16#0000C000#;
   GPIO_OSPEEDER_OSPEEDR7_0 : constant Word := 16#00004000#;
   GPIO_OSPEEDER_OSPEEDR7_1 : constant Word := 16#00008000#;

   GPIO_OSPEEDER_OSPEEDR8   : constant Word := 16#00030000#;
   GPIO_OSPEEDER_OSPEEDR8_0 : constant Word := 16#00010000#;
   GPIO_OSPEEDER_OSPEEDR8_1 : constant Word := 16#00020000#;

   GPIO_OSPEEDER_OSPEEDR9   : constant Word := 16#000C0000#;
   GPIO_OSPEEDER_OSPEEDR9_0 : constant Word := 16#00040000#;
   GPIO_OSPEEDER_OSPEEDR9_1 : constant Word := 16#00080000#;

   GPIO_OSPEEDER_OSPEEDR10   : constant Word := 16#00300000#;
   GPIO_OSPEEDER_OSPEEDR10_0 : constant Word := 16#00100000#;
   GPIO_OSPEEDER_OSPEEDR10_1 : constant Word := 16#00200000#;

   GPIO_OSPEEDER_OSPEEDR11   : constant Word := 16#00C00000#;
   GPIO_OSPEEDER_OSPEEDR11_0 : constant Word := 16#00400000#;
   GPIO_OSPEEDER_OSPEEDR11_1 : constant Word := 16#00800000#;

   GPIO_OSPEEDER_OSPEEDR12   : constant Word := 16#03000000#;
   GPIO_OSPEEDER_OSPEEDR12_0 : constant Word := 16#01000000#;
   GPIO_OSPEEDER_OSPEEDR12_1 : constant Word := 16#02000000#;

   GPIO_OSPEEDER_OSPEEDR13   : constant Word := 16#0C000000#;
   GPIO_OSPEEDER_OSPEEDR13_0 : constant Word := 16#04000000#;
   GPIO_OSPEEDER_OSPEEDR13_1 : constant Word := 16#08000000#;

   GPIO_OSPEEDER_OSPEEDR14   : constant Word := 16#30000000#;
   GPIO_OSPEEDER_OSPEEDR14_0 : constant Word := 16#10000000#;
   GPIO_OSPEEDER_OSPEEDR14_1 : constant Word := 16#20000000#;

   GPIO_OSPEEDER_OSPEEDR15   : constant Word := 16#C0000000#;
   GPIO_OSPEEDER_OSPEEDR15_0 : constant Word := 16#40000000#;
   GPIO_OSPEEDER_OSPEEDR15_1 : constant Word := 16#80000000#;

-- /******************  Bits definition for GPIO_PUPDR register  *****************/
   GPIO_PUPDR_PUPDR0   : constant Word := 16#00000003#;
   GPIO_PUPDR_PUPDR0_0 : constant Word := 16#00000001#;
   GPIO_PUPDR_PUPDR0_1 : constant Word := 16#00000002#;

   GPIO_PUPDR_PUPDR1   : constant Word := 16#0000000C#;
   GPIO_PUPDR_PUPDR1_0 : constant Word := 16#00000004#;
   GPIO_PUPDR_PUPDR1_1 : constant Word := 16#00000008#;

   GPIO_PUPDR_PUPDR2   : constant Word := 16#00000030#;
   GPIO_PUPDR_PUPDR2_0 : constant Word := 16#00000010#;
   GPIO_PUPDR_PUPDR2_1 : constant Word := 16#00000020#;

   GPIO_PUPDR_PUPDR3   : constant Word := 16#000000C0#;
   GPIO_PUPDR_PUPDR3_0 : constant Word := 16#00000040#;
   GPIO_PUPDR_PUPDR3_1 : constant Word := 16#00000080#;

   GPIO_PUPDR_PUPDR4   : constant Word := 16#00000300#;
   GPIO_PUPDR_PUPDR4_0 : constant Word := 16#00000100#;
   GPIO_PUPDR_PUPDR4_1 : constant Word := 16#00000200#;

   GPIO_PUPDR_PUPDR5   : constant Word := 16#00000C00#;
   GPIO_PUPDR_PUPDR5_0 : constant Word := 16#00000400#;
   GPIO_PUPDR_PUPDR5_1 : constant Word := 16#00000800#;

   GPIO_PUPDR_PUPDR6   : constant Word := 16#00003000#;
   GPIO_PUPDR_PUPDR6_0 : constant Word := 16#00001000#;
   GPIO_PUPDR_PUPDR6_1 : constant Word := 16#00002000#;

   GPIO_PUPDR_PUPDR7   : constant Word := 16#0000C000#;
   GPIO_PUPDR_PUPDR7_0 : constant Word := 16#00004000#;
   GPIO_PUPDR_PUPDR7_1 : constant Word := 16#00008000#;

   GPIO_PUPDR_PUPDR8   : constant Word := 16#00030000#;
   GPIO_PUPDR_PUPDR8_0 : constant Word := 16#00010000#;
   GPIO_PUPDR_PUPDR8_1 : constant Word := 16#00020000#;

   GPIO_PUPDR_PUPDR9   : constant Word := 16#000C0000#;
   GPIO_PUPDR_PUPDR9_0 : constant Word := 16#00040000#;
   GPIO_PUPDR_PUPDR9_1 : constant Word := 16#00080000#;

   GPIO_PUPDR_PUPDR10   : constant Word := 16#00300000#;
   GPIO_PUPDR_PUPDR10_0 : constant Word := 16#00100000#;
   GPIO_PUPDR_PUPDR10_1 : constant Word := 16#00200000#;

   GPIO_PUPDR_PUPDR11   : constant Word := 16#00C00000#;
   GPIO_PUPDR_PUPDR11_0 : constant Word := 16#00400000#;
   GPIO_PUPDR_PUPDR11_1 : constant Word := 16#00800000#;

   GPIO_PUPDR_PUPDR12   : constant Word := 16#03000000#;
   GPIO_PUPDR_PUPDR12_0 : constant Word := 16#01000000#;
   GPIO_PUPDR_PUPDR12_1 : constant Word := 16#02000000#;

   GPIO_PUPDR_PUPDR13   : constant Word := 16#0C000000#;
   GPIO_PUPDR_PUPDR13_0 : constant Word := 16#04000000#;
   GPIO_PUPDR_PUPDR13_1 : constant Word := 16#08000000#;

   GPIO_PUPDR_PUPDR14   : constant Word := 16#30000000#;
   GPIO_PUPDR_PUPDR14_0 : constant Word := 16#10000000#;
   GPIO_PUPDR_PUPDR14_1 : constant Word := 16#20000000#;

   GPIO_PUPDR_PUPDR15   : constant Word := 16#C0000000#;
   GPIO_PUPDR_PUPDR15_0 : constant Word := 16#40000000#;
   GPIO_PUPDR_PUPDR15_1 : constant Word := 16#80000000#;

-- /******************  Bits definition for GPIO_IDR register  *******************/
   GPIO_IDR_IDR_0  : constant Word := 16#00000001#;
   GPIO_IDR_IDR_1  : constant Word := 16#00000002#;
   GPIO_IDR_IDR_2  : constant Word := 16#00000004#;
   GPIO_IDR_IDR_3  : constant Word := 16#00000008#;
   GPIO_IDR_IDR_4  : constant Word := 16#00000010#;
   GPIO_IDR_IDR_5  : constant Word := 16#00000020#;
   GPIO_IDR_IDR_6  : constant Word := 16#00000040#;
   GPIO_IDR_IDR_7  : constant Word := 16#00000080#;
   GPIO_IDR_IDR_8  : constant Word := 16#00000100#;
   GPIO_IDR_IDR_9  : constant Word := 16#00000200#;
   GPIO_IDR_IDR_10 : constant Word := 16#00000400#;
   GPIO_IDR_IDR_11 : constant Word := 16#00000800#;
   GPIO_IDR_IDR_12 : constant Word := 16#00001000#;
   GPIO_IDR_IDR_13 : constant Word := 16#00002000#;
   GPIO_IDR_IDR_14 : constant Word := 16#00004000#;
   GPIO_IDR_IDR_15 : constant Word := 16#00008000#;
-- /* Old GPIO_IDR register bits definition, maintained for legacy purpose */
   GPIO_OTYPER_IDR_0  : constant Word := GPIO_IDR_IDR_0;
   GPIO_OTYPER_IDR_1  : constant Word := GPIO_IDR_IDR_1;
   GPIO_OTYPER_IDR_2  : constant Word := GPIO_IDR_IDR_2;
   GPIO_OTYPER_IDR_3  : constant Word := GPIO_IDR_IDR_3;
   GPIO_OTYPER_IDR_4  : constant Word := GPIO_IDR_IDR_4;
   GPIO_OTYPER_IDR_5  : constant Word := GPIO_IDR_IDR_5;
   GPIO_OTYPER_IDR_6  : constant Word := GPIO_IDR_IDR_6;
   GPIO_OTYPER_IDR_7  : constant Word := GPIO_IDR_IDR_7;
   GPIO_OTYPER_IDR_8  : constant Word := GPIO_IDR_IDR_8;
   GPIO_OTYPER_IDR_9  : constant Word := GPIO_IDR_IDR_9;
   GPIO_OTYPER_IDR_10 : constant Word := GPIO_IDR_IDR_10;
   GPIO_OTYPER_IDR_11 : constant Word := GPIO_IDR_IDR_11;
   GPIO_OTYPER_IDR_12 : constant Word := GPIO_IDR_IDR_12;
   GPIO_OTYPER_IDR_13 : constant Word := GPIO_IDR_IDR_13;
   GPIO_OTYPER_IDR_14 : constant Word := GPIO_IDR_IDR_14;
   GPIO_OTYPER_IDR_15 : constant Word := GPIO_IDR_IDR_15;

-- /******************  Bits definition for GPIO_ODR register  *******************/
   GPIO_ODR_ODR_0  : constant Word := 16#00000001#;
   GPIO_ODR_ODR_1  : constant Word := 16#00000002#;
   GPIO_ODR_ODR_2  : constant Word := 16#00000004#;
   GPIO_ODR_ODR_3  : constant Word := 16#00000008#;
   GPIO_ODR_ODR_4  : constant Word := 16#00000010#;
   GPIO_ODR_ODR_5  : constant Word := 16#00000020#;
   GPIO_ODR_ODR_6  : constant Word := 16#00000040#;
   GPIO_ODR_ODR_7  : constant Word := 16#00000080#;
   GPIO_ODR_ODR_8  : constant Word := 16#00000100#;
   GPIO_ODR_ODR_9  : constant Word := 16#00000200#;
   GPIO_ODR_ODR_10 : constant Word := 16#00000400#;
   GPIO_ODR_ODR_11 : constant Word := 16#00000800#;
   GPIO_ODR_ODR_12 : constant Word := 16#00001000#;
   GPIO_ODR_ODR_13 : constant Word := 16#00002000#;
   GPIO_ODR_ODR_14 : constant Word := 16#00004000#;
   GPIO_ODR_ODR_15 : constant Word := 16#00008000#;
-- /* Old GPIO_ODR register bits definition, maintained for legacy purpose */
   GPIO_OTYPER_ODR_0  : constant Word := GPIO_ODR_ODR_0;
   GPIO_OTYPER_ODR_1  : constant Word := GPIO_ODR_ODR_1;
   GPIO_OTYPER_ODR_2  : constant Word := GPIO_ODR_ODR_2;
   GPIO_OTYPER_ODR_3  : constant Word := GPIO_ODR_ODR_3;
   GPIO_OTYPER_ODR_4  : constant Word := GPIO_ODR_ODR_4;
   GPIO_OTYPER_ODR_5  : constant Word := GPIO_ODR_ODR_5;
   GPIO_OTYPER_ODR_6  : constant Word := GPIO_ODR_ODR_6;
   GPIO_OTYPER_ODR_7  : constant Word := GPIO_ODR_ODR_7;
   GPIO_OTYPER_ODR_8  : constant Word := GPIO_ODR_ODR_8;
   GPIO_OTYPER_ODR_9  : constant Word := GPIO_ODR_ODR_9;
   GPIO_OTYPER_ODR_10 : constant Word := GPIO_ODR_ODR_10;
   GPIO_OTYPER_ODR_11 : constant Word := GPIO_ODR_ODR_11;
   GPIO_OTYPER_ODR_12 : constant Word := GPIO_ODR_ODR_12;
   GPIO_OTYPER_ODR_13 : constant Word := GPIO_ODR_ODR_13;
   GPIO_OTYPER_ODR_14 : constant Word := GPIO_ODR_ODR_14;
   GPIO_OTYPER_ODR_15 : constant Word := GPIO_ODR_ODR_15;

-- /******************  Bits definition for GPIO_BSRR register  ******************/
   GPIO_BSRR_BS_0  : constant Word := 16#00000001#;
   GPIO_BSRR_BS_1  : constant Word := 16#00000002#;
   GPIO_BSRR_BS_2  : constant Word := 16#00000004#;
   GPIO_BSRR_BS_3  : constant Word := 16#00000008#;
   GPIO_BSRR_BS_4  : constant Word := 16#00000010#;
   GPIO_BSRR_BS_5  : constant Word := 16#00000020#;
   GPIO_BSRR_BS_6  : constant Word := 16#00000040#;
   GPIO_BSRR_BS_7  : constant Word := 16#00000080#;
   GPIO_BSRR_BS_8  : constant Word := 16#00000100#;
   GPIO_BSRR_BS_9  : constant Word := 16#00000200#;
   GPIO_BSRR_BS_10 : constant Word := 16#00000400#;
   GPIO_BSRR_BS_11 : constant Word := 16#00000800#;
   GPIO_BSRR_BS_12 : constant Word := 16#00001000#;
   GPIO_BSRR_BS_13 : constant Word := 16#00002000#;
   GPIO_BSRR_BS_14 : constant Word := 16#00004000#;
   GPIO_BSRR_BS_15 : constant Word := 16#00008000#;
   GPIO_BSRR_BR_0  : constant Word := 16#00010000#;
   GPIO_BSRR_BR_1  : constant Word := 16#00020000#;
   GPIO_BSRR_BR_2  : constant Word := 16#00040000#;
   GPIO_BSRR_BR_3  : constant Word := 16#00080000#;
   GPIO_BSRR_BR_4  : constant Word := 16#00100000#;
   GPIO_BSRR_BR_5  : constant Word := 16#00200000#;
   GPIO_BSRR_BR_6  : constant Word := 16#00400000#;
   GPIO_BSRR_BR_7  : constant Word := 16#00800000#;
   GPIO_BSRR_BR_8  : constant Word := 16#01000000#;
   GPIO_BSRR_BR_9  : constant Word := 16#02000000#;
   GPIO_BSRR_BR_10 : constant Word := 16#04000000#;
   GPIO_BSRR_BR_11 : constant Word := 16#08000000#;
   GPIO_BSRR_BR_12 : constant Word := 16#10000000#;
   GPIO_BSRR_BR_13 : constant Word := 16#20000000#;
   GPIO_BSRR_BR_14 : constant Word := 16#40000000#;
   GPIO_BSRR_BR_15 : constant Word := 16#80000000#;

-- /****************** Bit definition for GPIO_LCKR register *********************/
   GPIO_LCKR_LCK0  : constant Word := 16#00000001#;
   GPIO_LCKR_LCK1  : constant Word := 16#00000002#;
   GPIO_LCKR_LCK2  : constant Word := 16#00000004#;
   GPIO_LCKR_LCK3  : constant Word := 16#00000008#;
   GPIO_LCKR_LCK4  : constant Word := 16#00000010#;
   GPIO_LCKR_LCK5  : constant Word := 16#00000020#;
   GPIO_LCKR_LCK6  : constant Word := 16#00000040#;
   GPIO_LCKR_LCK7  : constant Word := 16#00000080#;
   GPIO_LCKR_LCK8  : constant Word := 16#00000100#;
   GPIO_LCKR_LCK9  : constant Word := 16#00000200#;
   GPIO_LCKR_LCK10 : constant Word := 16#00000400#;
   GPIO_LCKR_LCK11 : constant Word := 16#00000800#;
   GPIO_LCKR_LCK12 : constant Word := 16#00001000#;
   GPIO_LCKR_LCK13 : constant Word := 16#00002000#;
   GPIO_LCKR_LCK14 : constant Word := 16#00004000#;
   GPIO_LCKR_LCK15 : constant Word := 16#00008000#;
   GPIO_LCKR_LCKK  : constant Word := 16#00010000#;

end stm32f407.registers.gpio;
