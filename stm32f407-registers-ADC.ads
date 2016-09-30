pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.ADC is

  --*
   --  * @}
   --

   -- Cortex-M4 processor and core peripherals
  --* @addtogroup Peripheral_registers_structures
   --  * @{
   --

  --*
   --  * @brief Analog to Digital Converter
   --

  --!< ADC status register,                         Address offset: 16#00
  --!< ADC control register 1,                      Address offset: 16#04
  --!< ADC control register 2,                      Address offset: 16#08
  --!< ADC sample time register 1,                  Address offset: 16#0C
  --!< ADC sample time register 2,                  Address offset: 16#10
  --!< ADC injected channel data offset register 1, Address offset: 16#14
  --!< ADC injected channel data offset register 2, Address offset: 16#18
  --!< ADC injected channel data offset register 3, Address offset: 16#1C
  --!< ADC injected channel data offset register 4, Address offset: 16#20
  --!< ADC watchdog higher threshold register,      Address offset: 16#24
  --!< ADC watchdog lower threshold register,       Address offset: 16#28
  --!< ADC regular sequence register 1,             Address offset: 16#2C
  --!< ADC regular sequence register 2,             Address offset: 16#30
  --!< ADC regular sequence register 3,             Address offset: 16#34
  --!< ADC injected sequence register,              Address offset: 16#38
  --!< ADC injected data register 1,                Address offset: 16#3C
  --!< ADC injected data register 2,                Address offset: 16#40
  --!< ADC injected data register 3,                Address offset: 16#44
  --!< ADC injected data register 4,                Address offset: 16#48
  --!< ADC regular data register,                   Address offset: 16#4C
   type ADC_Register is record
      SR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:198
      CR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:199
      CR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:200
      SMPR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:201
      SMPR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:202
      JOFR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:203
      JOFR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:204
      JOFR3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:205
      JOFR4 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:206
      HTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:207
      LTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:208
      SQR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:209
      SQR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:210
      SQR3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:211
      JSQR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:212
      JDR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:213
      JDR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:214
      JDR3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:215
      JDR4 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:216
      DR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:217
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      ADC_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:218
   subtype ADC_TypeDef is ADC_Register;

  --!< ADC Common status register,                  Address offset: ADC1 base address + 16#300
  --!< ADC common control register,                 Address offset: ADC1 base address + 16#304
  --!< ADC common regular data register for dual
   --                             AND triple modes,                            Address offset: ADC1 base address + 16#308

   type ADC_Common_Register is record
      CSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:222
      CCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:223
      CDR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:224
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      ADC_Common_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:226
   subtype ADC_Common_TypeDef is ADC_Common_Register;

   ADC : ADC_Common_Register with
      Volatile,
      Address => System'To_Address (ADC_BASE),
      Import;
   ADC1 : ADC_Register with
      Volatile,
      Address => System'To_Address (ADC1_BASE),
      Import;
   ADC2 : ADC_Register with
      Volatile,
      Address => System'To_Address (ADC2_BASE),
      Import;
   ADC3 : ADC_Register with
      Volatile,
      Address => System'To_Address (ADC3_BASE),
      Import;

-- /******************************************************************************/
-- /*                         Peripheral Registers_Bits_Definition               */
-- /******************************************************************************/

-- /******************************************************************************/
-- /*                                                                            */
-- /*                        Analog to Digital Converter                         */
-- /*                                                                            */
-- /******************************************************************************/
-- /********************  Bit definition for ADC_SR register  ********************/
   ADC_SR_AWD : constant Word :=
     16#00000001#;      -- /*!<Analog watchdog flag */
   ADC_SR_EOC : constant Word := 16#00000002#;      -- /*!<End of conversion */
   ADC_SR_JEOC : constant Word :=
     16#00000004#;      -- /*!<Injected channel end of conversion */
   ADC_SR_JSTRT : constant Word :=
     16#00000008#;      -- /*!<Injected channel Start flag */
   ADC_SR_STRT : constant Word :=
     16#00000010#;      -- /*!<Regular channel Start flag */
   ADC_SR_OVR : constant Word := 16#00000020#;      -- /*!<Overrun flag */

-- /*******************  Bit definition for ADC_CR1 register  ********************/
   ADC_CR1_AWDCH : constant Word :=
     16#0000001F#;       -- /*!<AWDCH[4:0] bits (Analog watchdog channel select bits) */
   ADC_CR1_AWDCH_0 : constant Word := 16#00000001#;       -- /*!<Bit 0 */
   ADC_CR1_AWDCH_1 : constant Word := 16#00000002#;       -- /*!<Bit 1 */
   ADC_CR1_AWDCH_2 : constant Word := 16#00000004#;       -- /*!<Bit 2 */
   ADC_CR1_AWDCH_3 : constant Word := 16#00000008#;       -- /*!<Bit 3 */
   ADC_CR1_AWDCH_4 : constant Word := 16#00000010#;       -- /*!<Bit 4 */
   ADC_CR1_EOCIE   : constant Word :=
     16#00000020#;       -- /*!<Interrupt enable for EOC */
   ADC_CR1_AWDIE : constant Word :=
     16#00000040#;       -- /*!<AAnalog Watchdog interrupt enable */
   ADC_CR1_JEOCIE : constant Word :=
     16#00000080#;       -- /*!<Interrupt enable for injected channels */
   ADC_CR1_SCAN   : constant Word := 16#00000100#;       -- /*!<Scan mode */
   ADC_CR1_AWDSGL : constant Word :=
     16#00000200#;       -- /*!<Enable the watchdog on a single channel in scan mode */
   ADC_CR1_JAUTO : constant Word :=
     16#00000400#;       -- /*!<Automatic injected group conversion */
   ADC_CR1_DISCEN : constant Word :=
     16#00000800#;       -- /*!<Discontinuous mode on regular channels */
   ADC_CR1_JDISCEN : constant Word :=
     16#00001000#;       -- /*!<Discontinuous mode on injected channels */
   ADC_CR1_DISCNUM : constant Word :=
     16#0000E000#;       -- /*!<DISCNUM[2:0] bits (Discontinuous mode channel count) */
   ADC_CR1_DISCNUM_0 : constant Word := 16#00002000#;       -- /*!<Bit 0 */
   ADC_CR1_DISCNUM_1 : constant Word := 16#00004000#;       -- /*!<Bit 1 */
   ADC_CR1_DISCNUM_2 : constant Word := 16#00008000#;       -- /*!<Bit 2 */
   ADC_CR1_JAWDEN    : constant Word :=
     16#00400000#;       -- /*!<Analog watchdog enable on injected channels */
   ADC_CR1_AWDEN : constant Word :=
     16#00800000#;       -- /*!<Analog watchdog enable on regular channels */
   ADC_CR1_RES : constant Word :=
     16#03000000#;       -- /*!<RES[2:0] bits (Resolution) */
   ADC_CR1_RES_0 : constant Word := 16#01000000#;       -- /*!<Bit 0 */
   ADC_CR1_RES_1 : constant Word := 16#02000000#;       -- /*!<Bit 1 */
   ADC_CR1_OVRIE : constant Word :=
     16#04000000#;        -- /*!<overrun interrupt enable */

-- /*******************  Bit definition for ADC_CR2 register  ********************/
   ADC_CR2_ADON : constant Word :=
     16#00000001#;       -- /*!<A/D Converter ON / OFF */
   ADC_CR2_CONT : constant Word :=
     16#00000002#;       -- /*!<Continuous Conversion */
   ADC_CR2_DMA : constant Word :=
     16#00000100#;       -- /*!<Direct Memory access mode */
   ADC_CR2_DDS : constant Word :=
     16#00000200#;       -- /*!<DMA disable selection (Single ADC) */
   ADC_CR2_EOCS : constant Word :=
     16#00000400#;       -- /*!<End of conversion selection */
   ADC_CR2_ALIGN : constant Word :=
     16#00000800#;       -- /*!<Data Alignment */
   ADC_CR2_JEXTSEL : constant Word :=
     16#000F0000#;       -- /*!<JEXTSEL[3:0] bits (External event select for injected group) */
   ADC_CR2_JEXTSEL_0 : constant Word := 16#00010000#;       -- /*!<Bit 0 */
   ADC_CR2_JEXTSEL_1 : constant Word := 16#00020000#;       -- /*!<Bit 1 */
   ADC_CR2_JEXTSEL_2 : constant Word := 16#00040000#;       -- /*!<Bit 2 */
   ADC_CR2_JEXTSEL_3 : constant Word := 16#00080000#;       -- /*!<Bit 3 */
   ADC_CR2_JEXTEN    : constant Word :=
     16#00300000#;       -- /*!<JEXTEN[1:0] bits (External Trigger Conversion mode for injected channelsp) */
   ADC_CR2_JEXTEN_0 : constant Word := 16#00100000#;       -- /*!<Bit 0 */
   ADC_CR2_JEXTEN_1 : constant Word := 16#00200000#;       -- /*!<Bit 1 */
   ADC_CR2_JSWSTART : constant Word :=
     16#00400000#;       -- /*!<Start Conversion of injected channels */
   ADC_CR2_EXTSEL : constant Word :=
     16#0F000000#;       -- /*!<EXTSEL[3:0] bits (External Event Select for regular group) */
   ADC_CR2_EXTSEL_0 : constant Word := 16#01000000#;       -- /*!<Bit 0 */
   ADC_CR2_EXTSEL_1 : constant Word := 16#02000000#;       -- /*!<Bit 1 */
   ADC_CR2_EXTSEL_2 : constant Word := 16#04000000#;       -- /*!<Bit 2 */
   ADC_CR2_EXTSEL_3 : constant Word := 16#08000000#;       -- /*!<Bit 3 */
   ADC_CR2_EXTEN    : constant Word :=
     16#30000000#;       -- /*!<EXTEN[1:0] bits (External Trigger Conversion mode for regular channelsp) */
   ADC_CR2_EXTEN_0 : constant Word := 16#10000000#;       -- /*!<Bit 0 */
   ADC_CR2_EXTEN_1 : constant Word := 16#20000000#;       -- /*!<Bit 1 */
   ADC_CR2_SWSTART : constant Word :=
     16#40000000#;       -- /*!<Start Conversion of regular channels */

-- /******************  Bit definition for ADC_SMPR1 register  *******************/
   ADC_SMPR1_SMP10 : constant Word :=
     16#00000007#;       -- /*!<SMP10[2:0] bits (Channel 10 Sample time selection) */
   ADC_SMPR1_SMP10_0 : constant Word := 16#00000001#;       -- /*!<Bit 0 */
   ADC_SMPR1_SMP10_1 : constant Word := 16#00000002#;       -- /*!<Bit 1 */
   ADC_SMPR1_SMP10_2 : constant Word := 16#00000004#;       -- /*!<Bit 2 */
   ADC_SMPR1_SMP11   : constant Word :=
     16#00000038#;       -- /*!<SMP11[2:0] bits (Channel 11 Sample time selection) */
   ADC_SMPR1_SMP11_0 : constant Word := 16#00000008#;       -- /*!<Bit 0 */
   ADC_SMPR1_SMP11_1 : constant Word := 16#00000010#;       -- /*!<Bit 1 */
   ADC_SMPR1_SMP11_2 : constant Word := 16#00000020#;       -- /*!<Bit 2 */
   ADC_SMPR1_SMP12   : constant Word :=
     16#000001C0#;       -- /*!<SMP12[2:0] bits (Channel 12 Sample time selection) */
   ADC_SMPR1_SMP12_0 : constant Word := 16#00000040#;       -- /*!<Bit 0 */
   ADC_SMPR1_SMP12_1 : constant Word := 16#00000080#;       -- /*!<Bit 1 */
   ADC_SMPR1_SMP12_2 : constant Word := 16#00000100#;       -- /*!<Bit 2 */
   ADC_SMPR1_SMP13   : constant Word :=
     16#00000E00#;       -- /*!<SMP13[2:0] bits (Channel 13 Sample time selection) */
   ADC_SMPR1_SMP13_0 : constant Word := 16#00000200#;       -- /*!<Bit 0 */
   ADC_SMPR1_SMP13_1 : constant Word := 16#00000400#;       -- /*!<Bit 1 */
   ADC_SMPR1_SMP13_2 : constant Word := 16#00000800#;       -- /*!<Bit 2 */
   ADC_SMPR1_SMP14   : constant Word :=
     16#00007000#;       -- /*!<SMP14[2:0] bits (Channel 14 Sample time selection) */
   ADC_SMPR1_SMP14_0 : constant Word := 16#00001000#;       -- /*!<Bit 0 */
   ADC_SMPR1_SMP14_1 : constant Word := 16#00002000#;       -- /*!<Bit 1 */
   ADC_SMPR1_SMP14_2 : constant Word := 16#00004000#;       -- /*!<Bit 2 */
   ADC_SMPR1_SMP15   : constant Word :=
     16#00038000#;       -- /*!<SMP15[2:0] bits (Channel 15 Sample time selection) */
   ADC_SMPR1_SMP15_0 : constant Word := 16#00008000#;       -- /*!<Bit 0 */
   ADC_SMPR1_SMP15_1 : constant Word := 16#00010000#;       -- /*!<Bit 1 */
   ADC_SMPR1_SMP15_2 : constant Word := 16#00020000#;       -- /*!<Bit 2 */
   ADC_SMPR1_SMP16   : constant Word :=
     16#001C0000#;       -- /*!<SMP16[2:0] bits (Channel 16 Sample time selection) */
   ADC_SMPR1_SMP16_0 : constant Word := 16#00040000#;       -- /*!<Bit 0 */
   ADC_SMPR1_SMP16_1 : constant Word := 16#00080000#;       -- /*!<Bit 1 */
   ADC_SMPR1_SMP16_2 : constant Word := 16#00100000#;       -- /*!<Bit 2 */
   ADC_SMPR1_SMP17   : constant Word :=
     16#00E00000#;       -- /*!<SMP17[2:0] bits (Channel 17 Sample time selection) */
   ADC_SMPR1_SMP17_0 : constant Word := 16#00200000#;       -- /*!<Bit 0 */
   ADC_SMPR1_SMP17_1 : constant Word := 16#00400000#;       -- /*!<Bit 1 */
   ADC_SMPR1_SMP17_2 : constant Word := 16#00800000#;       -- /*!<Bit 2 */
   ADC_SMPR1_SMP18   : constant Word :=
     16#07000000#;       -- /*!<SMP18[2:0] bits (Channel 18 Sample time selection) */
   ADC_SMPR1_SMP18_0 : constant Word := 16#01000000#;       -- /*!<Bit 0 */
   ADC_SMPR1_SMP18_1 : constant Word := 16#02000000#;       -- /*!<Bit 1 */
   ADC_SMPR1_SMP18_2 : constant Word := 16#04000000#;       -- /*!<Bit 2 */

-- /******************  Bit definition for ADC_SMPR2 register  *******************/
   ADC_SMPR2_SMP0 : constant Word :=
     16#00000007#;       -- /*!<SMP0[2:0] bits (Channel 0 Sample time selection) */
   ADC_SMPR2_SMP0_0 : constant Word := 16#00000001#;       -- /*!<Bit 0 */
   ADC_SMPR2_SMP0_1 : constant Word := 16#00000002#;       -- /*!<Bit 1 */
   ADC_SMPR2_SMP0_2 : constant Word := 16#00000004#;       -- /*!<Bit 2 */
   ADC_SMPR2_SMP1   : constant Word :=
     16#00000038#;       -- /*!<SMP1[2:0] bits (Channel 1 Sample time selection) */
   ADC_SMPR2_SMP1_0 : constant Word := 16#00000008#;       -- /*!<Bit 0 */
   ADC_SMPR2_SMP1_1 : constant Word := 16#00000010#;       -- /*!<Bit 1 */
   ADC_SMPR2_SMP1_2 : constant Word := 16#00000020#;       -- /*!<Bit 2 */
   ADC_SMPR2_SMP2   : constant Word :=
     16#000001C0#;       -- /*!<SMP2[2:0] bits (Channel 2 Sample time selection) */
   ADC_SMPR2_SMP2_0 : constant Word := 16#00000040#;       -- /*!<Bit 0 */
   ADC_SMPR2_SMP2_1 : constant Word := 16#00000080#;       -- /*!<Bit 1 */
   ADC_SMPR2_SMP2_2 : constant Word := 16#00000100#;       -- /*!<Bit 2 */
   ADC_SMPR2_SMP3   : constant Word :=
     16#00000E00#;       -- /*!<SMP3[2:0] bits (Channel 3 Sample time selection) */
   ADC_SMPR2_SMP3_0 : constant Word := 16#00000200#;       -- /*!<Bit 0 */
   ADC_SMPR2_SMP3_1 : constant Word := 16#00000400#;       -- /*!<Bit 1 */
   ADC_SMPR2_SMP3_2 : constant Word := 16#00000800#;       -- /*!<Bit 2 */
   ADC_SMPR2_SMP4   : constant Word :=
     16#00007000#;       -- /*!<SMP4[2:0] bits (Channel 4 Sample time selection) */
   ADC_SMPR2_SMP4_0 : constant Word := 16#00001000#;       -- /*!<Bit 0 */
   ADC_SMPR2_SMP4_1 : constant Word := 16#00002000#;       -- /*!<Bit 1 */
   ADC_SMPR2_SMP4_2 : constant Word := 16#00004000#;       -- /*!<Bit 2 */
   ADC_SMPR2_SMP5   : constant Word :=
     16#00038000#;       -- /*!<SMP5[2:0] bits (Channel 5 Sample time selection) */
   ADC_SMPR2_SMP5_0 : constant Word := 16#00008000#;       -- /*!<Bit 0 */
   ADC_SMPR2_SMP5_1 : constant Word := 16#00010000#;       -- /*!<Bit 1 */
   ADC_SMPR2_SMP5_2 : constant Word := 16#00020000#;       -- /*!<Bit 2 */
   ADC_SMPR2_SMP6   : constant Word :=
     16#001C0000#;       -- /*!<SMP6[2:0] bits (Channel 6 Sample time selection) */
   ADC_SMPR2_SMP6_0 : constant Word := 16#00040000#;       -- /*!<Bit 0 */
   ADC_SMPR2_SMP6_1 : constant Word := 16#00080000#;       -- /*!<Bit 1 */
   ADC_SMPR2_SMP6_2 : constant Word := 16#00100000#;       -- /*!<Bit 2 */
   ADC_SMPR2_SMP7   : constant Word :=
     16#00E00000#;       -- /*!<SMP7[2:0] bits (Channel 7 Sample time selection) */
   ADC_SMPR2_SMP7_0 : constant Word := 16#00200000#;       -- /*!<Bit 0 */
   ADC_SMPR2_SMP7_1 : constant Word := 16#00400000#;       -- /*!<Bit 1 */
   ADC_SMPR2_SMP7_2 : constant Word := 16#00800000#;       -- /*!<Bit 2 */
   ADC_SMPR2_SMP8   : constant Word :=
     16#07000000#;       -- /*!<SMP8[2:0] bits (Channel 8 Sample time selection) */
   ADC_SMPR2_SMP8_0 : constant Word := 16#01000000#;       -- /*!<Bit 0 */
   ADC_SMPR2_SMP8_1 : constant Word := 16#02000000#;       -- /*!<Bit 1 */
   ADC_SMPR2_SMP8_2 : constant Word := 16#04000000#;       -- /*!<Bit 2 */
   ADC_SMPR2_SMP9   : constant Word :=
     16#38000000#;       -- /*!<SMP9[2:0] bits (Channel 9 Sample time selection) */
   ADC_SMPR2_SMP9_0 : constant Word := 16#08000000#;       -- /*!<Bit 0 */
   ADC_SMPR2_SMP9_1 : constant Word := 16#10000000#;       -- /*!<Bit 1 */
   ADC_SMPR2_SMP9_2 : constant Word := 16#20000000#;       -- /*!<Bit 2 */

-- /******************  Bit definition for ADC_JOFR1 register  *******************/
   ADC_JOFR1_JOFFSET1 : constant Word :=
     16#0FFF#;           -- /*!<Data offset for injected channel 1 */

-- /******************  Bit definition for ADC_JOFR2 register  *******************/
   ADC_JOFR2_JOFFSET2 : constant Word :=
     16#0FFF#;           -- /*!<Data offset for injected channel 2 */

-- /******************  Bit definition for ADC_JOFR3 register  *******************/
   ADC_JOFR3_JOFFSET3 : constant Word :=
     16#0FFF#;           -- /*!<Data offset for injected channel 3 */

-- /******************  Bit definition for ADC_JOFR4 register  *******************/
   ADC_JOFR4_JOFFSET4 : constant Word :=
     16#0FFF#;           -- /*!<Data offset for injected channel 4 */

-- /*******************  Bit definition for ADC_HTR register  ********************/
   ADC_HTR_HT : constant Word :=
     16#0FFF#;           -- /*!<Analog watchdog high threshold */

-- /*******************  Bit definition for ADC_LTR register  ********************/
   ADC_LTR_LT : constant Word :=
     16#0FFF#;           -- /*!<Analog watchdog low threshold */

-- /*******************  Bit definition for ADC_SQR1 register  *******************/
   ADC_SQR1_SQ13 : constant Word :=
     16#0000001F#;       -- /*!<SQ13[4:0] bits (13th conversion in regular sequence) */
   ADC_SQR1_SQ13_0 : constant Word := 16#00000001#;       -- /*!<Bit 0 */
   ADC_SQR1_SQ13_1 : constant Word := 16#00000002#;       -- /*!<Bit 1 */
   ADC_SQR1_SQ13_2 : constant Word := 16#00000004#;       -- /*!<Bit 2 */
   ADC_SQR1_SQ13_3 : constant Word := 16#00000008#;       -- /*!<Bit 3 */
   ADC_SQR1_SQ13_4 : constant Word := 16#00000010#;       -- /*!<Bit 4 */
   ADC_SQR1_SQ14   : constant Word :=
     16#000003E0#;       -- /*!<SQ14[4:0] bits (14th conversion in regular sequence) */
   ADC_SQR1_SQ14_0 : constant Word := 16#00000020#;       -- /*!<Bit 0 */
   ADC_SQR1_SQ14_1 : constant Word := 16#00000040#;       -- /*!<Bit 1 */
   ADC_SQR1_SQ14_2 : constant Word := 16#00000080#;       -- /*!<Bit 2 */
   ADC_SQR1_SQ14_3 : constant Word := 16#00000100#;       -- /*!<Bit 3 */
   ADC_SQR1_SQ14_4 : constant Word := 16#00000200#;       -- /*!<Bit 4 */
   ADC_SQR1_SQ15   : constant Word :=
     16#00007C00#;       -- /*!<SQ15[4:0] bits (15th conversion in regular sequence) */
   ADC_SQR1_SQ15_0 : constant Word := 16#00000400#;       -- /*!<Bit 0 */
   ADC_SQR1_SQ15_1 : constant Word := 16#00000800#;       -- /*!<Bit 1 */
   ADC_SQR1_SQ15_2 : constant Word := 16#00001000#;       -- /*!<Bit 2 */
   ADC_SQR1_SQ15_3 : constant Word := 16#00002000#;       -- /*!<Bit 3 */
   ADC_SQR1_SQ15_4 : constant Word := 16#00004000#;       -- /*!<Bit 4 */
   ADC_SQR1_SQ16   : constant Word :=
     16#000F8000#;       -- /*!<SQ16[4:0] bits (16th conversion in regular sequence) */
   ADC_SQR1_SQ16_0 : constant Word := 16#00008000#;       -- /*!<Bit 0 */
   ADC_SQR1_SQ16_1 : constant Word := 16#00010000#;       -- /*!<Bit 1 */
   ADC_SQR1_SQ16_2 : constant Word := 16#00020000#;       -- /*!<Bit 2 */
   ADC_SQR1_SQ16_3 : constant Word := 16#00040000#;       -- /*!<Bit 3 */
   ADC_SQR1_SQ16_4 : constant Word := 16#00080000#;       -- /*!<Bit 4 */
   ADC_SQR1_L      : constant Word :=
     16#00F00000#;       -- /*!<L[3:0] bits (Regular channel sequence length) */
   ADC_SQR1_L_0 : constant Word := 16#00100000#;       -- /*!<Bit 0 */
   ADC_SQR1_L_1 : constant Word := 16#00200000#;       -- /*!<Bit 1 */
   ADC_SQR1_L_2 : constant Word := 16#00400000#;       -- /*!<Bit 2 */
   ADC_SQR1_L_3 : constant Word := 16#00800000#;       -- /*!<Bit 3 */

-- /*******************  Bit definition for ADC_SQR2 register  *******************/
   ADC_SQR2_SQ7 : constant Word :=
     16#0000001F#;       -- /*!<SQ7[4:0] bits (7th conversion in regular sequence) */
   ADC_SQR2_SQ7_0 : constant Word := 16#00000001#;       -- /*!<Bit 0 */
   ADC_SQR2_SQ7_1 : constant Word := 16#00000002#;       -- /*!<Bit 1 */
   ADC_SQR2_SQ7_2 : constant Word := 16#00000004#;       -- /*!<Bit 2 */
   ADC_SQR2_SQ7_3 : constant Word := 16#00000008#;       -- /*!<Bit 3 */
   ADC_SQR2_SQ7_4 : constant Word := 16#00000010#;       -- /*!<Bit 4 */
   ADC_SQR2_SQ8   : constant Word :=
     16#000003E0#;       -- /*!<SQ8[4:0] bits (8th conversion in regular sequence) */
   ADC_SQR2_SQ8_0 : constant Word := 16#00000020#;       -- /*!<Bit 0 */
   ADC_SQR2_SQ8_1 : constant Word := 16#00000040#;       -- /*!<Bit 1 */
   ADC_SQR2_SQ8_2 : constant Word := 16#00000080#;       -- /*!<Bit 2 */
   ADC_SQR2_SQ8_3 : constant Word := 16#00000100#;       -- /*!<Bit 3 */
   ADC_SQR2_SQ8_4 : constant Word := 16#00000200#;       -- /*!<Bit 4 */
   ADC_SQR2_SQ9   : constant Word :=
     16#00007C00#;       -- /*!<SQ9[4:0] bits (9th conversion in regular sequence) */
   ADC_SQR2_SQ9_0 : constant Word := 16#00000400#;       -- /*!<Bit 0 */
   ADC_SQR2_SQ9_1 : constant Word := 16#00000800#;       -- /*!<Bit 1 */
   ADC_SQR2_SQ9_2 : constant Word := 16#00001000#;       -- /*!<Bit 2 */
   ADC_SQR2_SQ9_3 : constant Word := 16#00002000#;       -- /*!<Bit 3 */
   ADC_SQR2_SQ9_4 : constant Word := 16#00004000#;       -- /*!<Bit 4 */
   ADC_SQR2_SQ10  : constant Word :=
     16#000F8000#;       -- /*!<SQ10[4:0] bits (10th conversion in regular sequence) */
   ADC_SQR2_SQ10_0 : constant Word := 16#00008000#;       -- /*!<Bit 0 */
   ADC_SQR2_SQ10_1 : constant Word := 16#00010000#;       -- /*!<Bit 1 */
   ADC_SQR2_SQ10_2 : constant Word := 16#00020000#;       -- /*!<Bit 2 */
   ADC_SQR2_SQ10_3 : constant Word := 16#00040000#;       -- /*!<Bit 3 */
   ADC_SQR2_SQ10_4 : constant Word := 16#00080000#;       -- /*!<Bit 4 */
   ADC_SQR2_SQ11   : constant Word :=
     16#01F00000#;       -- /*!<SQ11[4:0] bits (11th conversion in regular sequence) */
   ADC_SQR2_SQ11_0 : constant Word := 16#00100000#;       -- /*!<Bit 0 */
   ADC_SQR2_SQ11_1 : constant Word := 16#00200000#;       -- /*!<Bit 1 */
   ADC_SQR2_SQ11_2 : constant Word := 16#00400000#;       -- /*!<Bit 2 */
   ADC_SQR2_SQ11_3 : constant Word := 16#00800000#;       -- /*!<Bit 3 */
   ADC_SQR2_SQ11_4 : constant Word := 16#01000000#;       -- /*!<Bit 4 */
   ADC_SQR2_SQ12   : constant Word :=
     16#3E000000#;       -- /*!<SQ12[4:0] bits (12th conversion in regular sequence) */
   ADC_SQR2_SQ12_0 : constant Word := 16#02000000#;       -- /*!<Bit 0 */
   ADC_SQR2_SQ12_1 : constant Word := 16#04000000#;       -- /*!<Bit 1 */
   ADC_SQR2_SQ12_2 : constant Word := 16#08000000#;       -- /*!<Bit 2 */
   ADC_SQR2_SQ12_3 : constant Word := 16#10000000#;       -- /*!<Bit 3 */
   ADC_SQR2_SQ12_4 : constant Word := 16#20000000#;       -- /*!<Bit 4 */

-- /*******************  Bit definition for ADC_SQR3 register  *******************/
   ADC_SQR3_SQ1 : constant Word :=
     16#0000001F#;       -- /*!<SQ1[4:0] bits (1st conversion in regular sequence) */
   ADC_SQR3_SQ1_0 : constant Word := 16#00000001#;       -- /*!<Bit 0 */
   ADC_SQR3_SQ1_1 : constant Word := 16#00000002#;       -- /*!<Bit 1 */
   ADC_SQR3_SQ1_2 : constant Word := 16#00000004#;       -- /*!<Bit 2 */
   ADC_SQR3_SQ1_3 : constant Word := 16#00000008#;       -- /*!<Bit 3 */
   ADC_SQR3_SQ1_4 : constant Word := 16#00000010#;       -- /*!<Bit 4 */
   ADC_SQR3_SQ2   : constant Word :=
     16#000003E0#;       -- /*!<SQ2[4:0] bits (2nd conversion in regular sequence) */
   ADC_SQR3_SQ2_0 : constant Word := 16#00000020#;       -- /*!<Bit 0 */
   ADC_SQR3_SQ2_1 : constant Word := 16#00000040#;       -- /*!<Bit 1 */
   ADC_SQR3_SQ2_2 : constant Word := 16#00000080#;       -- /*!<Bit 2 */
   ADC_SQR3_SQ2_3 : constant Word := 16#00000100#;       -- /*!<Bit 3 */
   ADC_SQR3_SQ2_4 : constant Word := 16#00000200#;       -- /*!<Bit 4 */
   ADC_SQR3_SQ3   : constant Word :=
     16#00007C00#;       -- /*!<SQ3[4:0] bits (3rd conversion in regular sequence) */
   ADC_SQR3_SQ3_0 : constant Word := 16#00000400#;       -- /*!<Bit 0 */
   ADC_SQR3_SQ3_1 : constant Word := 16#00000800#;       -- /*!<Bit 1 */
   ADC_SQR3_SQ3_2 : constant Word := 16#00001000#;       -- /*!<Bit 2 */
   ADC_SQR3_SQ3_3 : constant Word := 16#00002000#;       -- /*!<Bit 3 */
   ADC_SQR3_SQ3_4 : constant Word := 16#00004000#;       -- /*!<Bit 4 */
   ADC_SQR3_SQ4   : constant Word :=
     16#000F8000#;       -- /*!<SQ4[4:0] bits (4th conversion in regular sequence) */
   ADC_SQR3_SQ4_0 : constant Word := 16#00008000#;       -- /*!<Bit 0 */
   ADC_SQR3_SQ4_1 : constant Word := 16#00010000#;       -- /*!<Bit 1 */
   ADC_SQR3_SQ4_2 : constant Word := 16#00020000#;       -- /*!<Bit 2 */
   ADC_SQR3_SQ4_3 : constant Word := 16#00040000#;       -- /*!<Bit 3 */
   ADC_SQR3_SQ4_4 : constant Word := 16#00080000#;       -- /*!<Bit 4 */
   ADC_SQR3_SQ5   : constant Word :=
     16#01F00000#;       -- /*!<SQ5[4:0] bits (5th conversion in regular sequence) */
   ADC_SQR3_SQ5_0 : constant Word := 16#00100000#;       -- /*!<Bit 0 */
   ADC_SQR3_SQ5_1 : constant Word := 16#00200000#;       -- /*!<Bit 1 */
   ADC_SQR3_SQ5_2 : constant Word := 16#00400000#;       -- /*!<Bit 2 */
   ADC_SQR3_SQ5_3 : constant Word := 16#00800000#;       -- /*!<Bit 3 */
   ADC_SQR3_SQ5_4 : constant Word := 16#01000000#;       -- /*!<Bit 4 */
   ADC_SQR3_SQ6   : constant Word :=
     16#3E000000#;       -- /*!<SQ6[4:0] bits (6th conversion in regular sequence) */
   ADC_SQR3_SQ6_0 : constant Word := 16#02000000#;       -- /*!<Bit 0 */
   ADC_SQR3_SQ6_1 : constant Word := 16#04000000#;       -- /*!<Bit 1 */
   ADC_SQR3_SQ6_2 : constant Word := 16#08000000#;       -- /*!<Bit 2 */
   ADC_SQR3_SQ6_3 : constant Word := 16#10000000#;       -- /*!<Bit 3 */
   ADC_SQR3_SQ6_4 : constant Word := 16#20000000#;       -- /*!<Bit 4 */

-- /*******************  Bit definition for ADC_JSQR register  *******************/
   ADC_JSQR_JSQ1 : constant Word :=
     16#0000001F#;       -- /*!<JSQ1[4:0] bits (1st conversion in injected sequence) */
   ADC_JSQR_JSQ1_0 : constant Word := 16#00000001#;       -- /*!<Bit 0 */
   ADC_JSQR_JSQ1_1 : constant Word := 16#00000002#;       -- /*!<Bit 1 */
   ADC_JSQR_JSQ1_2 : constant Word := 16#00000004#;       -- /*!<Bit 2 */
   ADC_JSQR_JSQ1_3 : constant Word := 16#00000008#;       -- /*!<Bit 3 */
   ADC_JSQR_JSQ1_4 : constant Word := 16#00000010#;       -- /*!<Bit 4 */
   ADC_JSQR_JSQ2   : constant Word :=
     16#000003E0#;       -- /*!<JSQ2[4:0] bits (2nd conversion in injected sequence) */
   ADC_JSQR_JSQ2_0 : constant Word := 16#00000020#;       -- /*!<Bit 0 */
   ADC_JSQR_JSQ2_1 : constant Word := 16#00000040#;       -- /*!<Bit 1 */
   ADC_JSQR_JSQ2_2 : constant Word := 16#00000080#;       -- /*!<Bit 2 */
   ADC_JSQR_JSQ2_3 : constant Word := 16#00000100#;       -- /*!<Bit 3 */
   ADC_JSQR_JSQ2_4 : constant Word := 16#00000200#;       -- /*!<Bit 4 */
   ADC_JSQR_JSQ3   : constant Word :=
     16#00007C00#;       -- /*!<JSQ3[4:0] bits (3rd conversion in injected sequence) */
   ADC_JSQR_JSQ3_0 : constant Word := 16#00000400#;       -- /*!<Bit 0 */
   ADC_JSQR_JSQ3_1 : constant Word := 16#00000800#;       -- /*!<Bit 1 */
   ADC_JSQR_JSQ3_2 : constant Word := 16#00001000#;       -- /*!<Bit 2 */
   ADC_JSQR_JSQ3_3 : constant Word := 16#00002000#;       -- /*!<Bit 3 */
   ADC_JSQR_JSQ3_4 : constant Word := 16#00004000#;       -- /*!<Bit 4 */
   ADC_JSQR_JSQ4   : constant Word :=
     16#000F8000#;       -- /*!<JSQ4[4:0] bits (4th conversion in injected sequence) */
   ADC_JSQR_JSQ4_0 : constant Word := 16#00008000#;       -- /*!<Bit 0 */
   ADC_JSQR_JSQ4_1 : constant Word := 16#00010000#;       -- /*!<Bit 1 */
   ADC_JSQR_JSQ4_2 : constant Word := 16#00020000#;       -- /*!<Bit 2 */
   ADC_JSQR_JSQ4_3 : constant Word := 16#00040000#;       -- /*!<Bit 3 */
   ADC_JSQR_JSQ4_4 : constant Word := 16#00080000#;       -- /*!<Bit 4 */
   ADC_JSQR_JL     : constant Word :=
     16#00300000#;       -- /*!<JL[1:0] bits (Injected Sequence length) */
   ADC_JSQR_JL_0 : constant Word := 16#00100000#;       -- /*!<Bit 0 */
   ADC_JSQR_JL_1 : constant Word := 16#00200000#;       -- /*!<Bit 1 */

-- /*******************  Bit definition for ADC_JDR1 register  *******************/
   ADC_JDR1_JDATA : constant Word :=
     16#FFFF#;           -- /*!<Injected data */

-- /*******************  Bit definition for ADC_JDR2 register  *******************/
   ADC_JDR2_JDATA : constant Word :=
     16#FFFF#;           -- /*!<Injected data */

-- /*******************  Bit definition for ADC_JDR3 register  *******************/
   ADC_JDR3_JDATA : constant Word :=
     16#FFFF#;           -- /*!<Injected data */

-- /*******************  Bit definition for ADC_JDR4 register  *******************/
   ADC_JDR4_JDATA : constant Word :=
     16#FFFF#;           -- /*!<Injected data */

-- /********************  Bit definition for ADC_DR register  ********************/
   ADC_DR_DATA : constant Word := 16#0000FFFF#;       -- /*!<Regular data */
   ADC_DR_ADC2DATA : constant Word := 16#FFFF0000#;       -- /*!<ADC2 data */

-- /*******************  Bit definition for ADC_CSR register  ********************/
   ADC_CSR_AWD1 : constant Word :=
     16#00000001#;       -- /*!<ADC1 Analog watchdog flag */
   ADC_CSR_EOC1 : constant Word :=
     16#00000002#;       -- /*!<ADC1 End of conversion */
   ADC_CSR_JEOC1 : constant Word :=
     16#00000004#;       -- /*!<ADC1 Injected channel end of conversion */
   ADC_CSR_JSTRT1 : constant Word :=
     16#00000008#;       -- /*!<ADC1 Injected channel Start flag */
   ADC_CSR_STRT1 : constant Word :=
     16#00000010#;       -- /*!<ADC1 Regular channel Start flag */
   ADC_CSR_OVR1 : constant Word :=
     16#00000020#;       -- /*!<ADC1 DMA overrun  flag */
   ADC_CSR_AWD2 : constant Word :=
     16#00000100#;       -- /*!<ADC2 Analog watchdog flag */
   ADC_CSR_EOC2 : constant Word :=
     16#00000200#;       -- /*!<ADC2 End of conversion */
   ADC_CSR_JEOC2 : constant Word :=
     16#00000400#;       -- /*!<ADC2 Injected channel end of conversion */
   ADC_CSR_JSTRT2 : constant Word :=
     16#00000800#;       -- /*!<ADC2 Injected channel Start flag */
   ADC_CSR_STRT2 : constant Word :=
     16#00001000#;       -- /*!<ADC2 Regular channel Start flag */
   ADC_CSR_OVR2 : constant Word :=
     16#00002000#;       -- /*!<ADC2 DMA overrun  flag */
   ADC_CSR_AWD3 : constant Word :=
     16#00010000#;       -- /*!<ADC3 Analog watchdog flag */
   ADC_CSR_EOC3 : constant Word :=
     16#00020000#;       -- /*!<ADC3 End of conversion */
   ADC_CSR_JEOC3 : constant Word :=
     16#00040000#;       -- /*!<ADC3 Injected channel end of conversion */
   ADC_CSR_JSTRT3 : constant Word :=
     16#00080000#;       -- /*!<ADC3 Injected channel Start flag */
   ADC_CSR_STRT3 : constant Word :=
     16#00100000#;       -- /*!<ADC3 Regular channel Start flag */
   ADC_CSR_OVR3 : constant Word :=
     16#00200000#;       -- /*!<ADC3 DMA overrun  flag */

-- /* Legacy defines */
   ADC_CSR_DOVR1 : constant Word := ADC_CSR_OVR1;
   ADC_CSR_DOVR2 : constant Word := ADC_CSR_OVR2;
   ADC_CSR_DOVR3 : constant Word := ADC_CSR_OVR3;

-- /*******************  Bit definition for ADC_CCR register  ********************/
   ADC_CCR_MULTI : constant Word :=
     16#0000001F#;       -- /*!<MULTI[4:0] bits (Multi-ADC mode selection) */
   ADC_CCR_MULTI_0 : constant Word := 16#00000001#;       -- /*!<Bit 0 */
   ADC_CCR_MULTI_1 : constant Word := 16#00000002#;       -- /*!<Bit 1 */
   ADC_CCR_MULTI_2 : constant Word := 16#00000004#;       -- /*!<Bit 2 */
   ADC_CCR_MULTI_3 : constant Word := 16#00000008#;       -- /*!<Bit 3 */
   ADC_CCR_MULTI_4 : constant Word := 16#00000010#;       -- /*!<Bit 4 */
   ADC_CCR_DELAY   : constant Word :=
     16#00000F00#;       -- /*!<DELAY[3:0] bits (Delay between 2 sampling phases) */
   ADC_CCR_DELAY_0 : constant Word := 16#00000100#;       -- /*!<Bit 0 */
   ADC_CCR_DELAY_1 : constant Word := 16#00000200#;       -- /*!<Bit 1 */
   ADC_CCR_DELAY_2 : constant Word := 16#00000400#;       -- /*!<Bit 2 */
   ADC_CCR_DELAY_3 : constant Word := 16#00000800#;       -- /*!<Bit 3 */
   ADC_CCR_DDS     : constant Word :=
     16#00002000#;       -- /*!<DMA disable selection (Multi-ADC mode) */
   ADC_CCR_DMA : constant Word :=
     16#0000C000#;       -- /*!<DMA[1:0] bits (Direct Memory Access mode for multimode) */
   ADC_CCR_DMA_0  : constant Word := 16#00004000#;       -- /*!<Bit 0 */
   ADC_CCR_DMA_1  : constant Word := 16#00008000#;       -- /*!<Bit 1 */
   ADC_CCR_ADCPRE : constant Word :=
     16#00030000#;       -- /*!<ADCPRE[1:0] bits (ADC prescaler) */
   ADC_CCR_ADCPRE_0 : constant Word := 16#00010000#;       -- /*!<Bit 0 */
   ADC_CCR_ADCPRE_1 : constant Word := 16#00020000#;       -- /*!<Bit 1 */
   ADC_CCR_VBATE : constant Word := 16#00400000#;       -- /*!<VBAT Enable */
   ADC_CCR_TSVREFE  : constant Word :=
     16#00800000#;       -- /*!<Temperature Sensor and VREFINT Enable */

-- /*******************  Bit definition for ADC_CDR register  ********************/
   ADC_CDR_DATA1 : constant Word :=
     16#0000FFFF#;        -- /*!<1st data of a pair of regular conversions */
   ADC_CDR_DATA2 : constant Word :=
     16#FFFF0000#;        -- /*!<2nd data of a pair of regular conversions */
end stm32f407.registers.ADC;
