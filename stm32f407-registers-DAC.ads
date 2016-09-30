pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.DAC is
  --*
   --  * @brief Digital to Analog Converter
   --

  --!< DAC control register,                                    Address offset: 16#00
  --!< DAC software trigger register,                           Address offset: 16#04
  --!< DAC channel1 12-bit right-aligned data holding register, Address offset: 16#08
  --!< DAC channel1 12-bit left aligned data holding register,  Address offset: 16#0C
  --!< DAC channel1 8-bit right aligned data holding register,  Address offset: 16#10
  --!< DAC channel2 12-bit right aligned data holding register, Address offset: 16#14
  --!< DAC channel2 12-bit left aligned data holding register,  Address offset: 16#18
  --!< DAC channel2 8-bit right-aligned data holding register,  Address offset: 16#1C
  --!< Dual DAC 12-bit right-aligned data holding register,     Address offset: 16#20
  --!< DUAL DAC 12-bit left aligned data holding register,      Address offset: 16#24
  --!< DUAL DAC 8-bit right aligned data holding register,      Address offset: 16#28
  --!< DAC channel1 data output register,                       Address offset: 16#2C
  --!< DAC channel2 data output register,                       Address offset: 16#30
  --!< DAC status register,                                     Address offset: 16#34
   type DAC_Register is record
      CR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:312
      SWTRIGR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:313
      DHR12R1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:314
      DHR12L1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:315
      DHR8R1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:316
      DHR12R2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:317
      DHR12L2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:318
      DHR8R2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:319
      DHR12RD : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:320
      DHR12LD : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:321
      DHR8RD : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:322
      DOR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:323
      DOR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:324
      SR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:325
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      DAC_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:326
   subtype DAC_TypeDef is DAC_Register;
   DAC : DAC_Register with
      Volatile,
      Address => System'To_Address (DAC_BASE),
      Import;

-- /******************************************************************************/
-- /*                                                                            */
-- /*                      Digital to Analog Converter                           */
-- /*                                                                            */
-- /******************************************************************************/
-- /********************  Bit definition for DAC_CR register  ********************/
   DAC_CR_EN1 : constant Word :=
     16#00000001#;       -- /*!<DAC channel1 enable */
   DAC_CR_BOFF1 : constant Word :=
     16#00000002#;       -- /*!<DAC channel1 output buffer disable */
   DAC_CR_TEN1 : constant Word :=
     16#00000004#;       -- /*!<DAC channel1 Trigger enable */

   DAC_CR_TSEL1 : constant Word :=
     16#00000038#;       -- /*!<TSEL1[2:0] (DAC channel1 Trigger selection) */
   DAC_CR_TSEL1_0 : constant Word := 16#00000008#;       -- /*!<Bit 0 */
   DAC_CR_TSEL1_1 : constant Word := 16#00000010#;       -- /*!<Bit 1 */
   DAC_CR_TSEL1_2 : constant Word := 16#00000020#;       -- /*!<Bit 2 */

   DAC_CR_WAVE1 : constant Word :=
     16#000000C0#;       -- /*!<WAVE1[1:0] (DAC channel1 noise/triangle wave generation enable) */
   DAC_CR_WAVE1_0 : constant Word := 16#00000040#;       -- /*!<Bit 0 */
   DAC_CR_WAVE1_1 : constant Word := 16#00000080#;       -- /*!<Bit 1 */

   DAC_CR_MAMP1 : constant Word :=
     16#00000F00#;       -- /*!<MAMP1[3:0] (DAC channel1 Mask/Amplitude selector) */
   DAC_CR_MAMP1_0 : constant Word := 16#00000100#;       -- /*!<Bit 0 */
   DAC_CR_MAMP1_1 : constant Word := 16#00000200#;       -- /*!<Bit 1 */
   DAC_CR_MAMP1_2 : constant Word := 16#00000400#;       -- /*!<Bit 2 */
   DAC_CR_MAMP1_3 : constant Word := 16#00000800#;       -- /*!<Bit 3 */

   DAC_CR_DMAEN1 : constant Word :=
     16#00001000#;       -- /*!<DAC channel1 DMA enable */
   DAC_CR_DMAUDRIE1 : constant Word :=
     16#00002000#;       -- /*!<DAC channel1 DMA underrun interrupt enable*/
   DAC_CR_EN2 : constant Word :=
     16#00010000#;       -- /*!<DAC channel2 enable */
   DAC_CR_BOFF2 : constant Word :=
     16#00020000#;       -- /*!<DAC channel2 output buffer disable */
   DAC_CR_TEN2 : constant Word :=
     16#00040000#;       -- /*!<DAC channel2 Trigger enable */

   DAC_CR_TSEL2 : constant Word :=
     16#00380000#;       -- /*!<TSEL2[2:0] (DAC channel2 Trigger selection) */
   DAC_CR_TSEL2_0 : constant Word := 16#00080000#;       -- /*!<Bit 0 */
   DAC_CR_TSEL2_1 : constant Word := 16#00100000#;       -- /*!<Bit 1 */
   DAC_CR_TSEL2_2 : constant Word := 16#00200000#;       -- /*!<Bit 2 */

   DAC_CR_WAVE2 : constant Word :=
     16#00C00000#;       -- /*!<WAVE2[1:0] (DAC channel2 noise/triangle wave generation enable) */
   DAC_CR_WAVE2_0 : constant Word := 16#00400000#;       -- /*!<Bit 0 */
   DAC_CR_WAVE2_1 : constant Word := 16#00800000#;       -- /*!<Bit 1 */

   DAC_CR_MAMP2 : constant Word :=
     16#0F000000#;       -- /*!<MAMP2[3:0] (DAC channel2 Mask/Amplitude selector) */
   DAC_CR_MAMP2_0 : constant Word := 16#01000000#;       -- /*!<Bit 0 */
   DAC_CR_MAMP2_1 : constant Word := 16#02000000#;       -- /*!<Bit 1 */
   DAC_CR_MAMP2_2 : constant Word := 16#04000000#;       -- /*!<Bit 2 */
   DAC_CR_MAMP2_3 : constant Word := 16#08000000#;       -- /*!<Bit 3 */

   DAC_CR_DMAEN2 : constant Word :=
     16#10000000#;       -- /*!<DAC channel2 DMA enabled */
   DAC_CR_DMAUDRIE2 : constant Word :=
     16#20000000#;       -- /*!<DAC channel2 DMA underrun interrupt enable*/

-- /*****************  Bit definition for DAC_SWTRIGR register  ******************/
   DAC_SWTRIGR_SWTRIG1 : constant Word :=
     16#01#;              -- /*!<DAC channel1 software trigger */
   DAC_SWTRIGR_SWTRIG2 : constant Word :=
     16#02#;              -- /*!<DAC channel2 software trigger */

-- /*****************  Bit definition for DAC_DHR12R1 register  ******************/
   DAC_DHR12R1_DACC1DHR : constant Word :=
     16#0FFF#;           -- /*!<DAC channel1 12-bit Right aligned data */

-- /*****************  Bit definition for DAC_DHR12L1 register  ******************/
   DAC_DHR12L1_DACC1DHR : constant Word :=
     16#FFF0#;           -- /*!<DAC channel1 12-bit Left aligned data */

-- /******************  Bit definition for DAC_DHR8R1 register  ******************/
   DAC_DHR8R1_DACC1DHR : constant Word :=
     16#FF#;              -- /*!<DAC channel1 8-bit Right aligned data */

-- /*****************  Bit definition for DAC_DHR12R2 register  ******************/
   DAC_DHR12R2_DACC2DHR : constant Word :=
     16#0FFF#;           -- /*!<DAC channel2 12-bit Right aligned data */

-- /*****************  Bit definition for DAC_DHR12L2 register  ******************/
   DAC_DHR12L2_DACC2DHR : constant Word :=
     16#FFF0#;           -- /*!<DAC channel2 12-bit Left aligned data */

-- /******************  Bit definition for DAC_DHR8R2 register  ******************/
   DAC_DHR8R2_DACC2DHR : constant Word :=
     16#FF#;              -- /*!<DAC channel2 8-bit Right aligned data */

-- /*****************  Bit definition for DAC_DHR12RD register  ******************/
   DAC_DHR12RD_DACC1DHR : constant Word :=
     16#00000FFF#;       -- /*!<DAC channel1 12-bit Right aligned data */
   DAC_DHR12RD_DACC2DHR : constant Word :=
     16#0FFF0000#;       -- /*!<DAC channel2 12-bit Right aligned data */

-- /*****************  Bit definition for DAC_DHR12LD register  ******************/
   DAC_DHR12LD_DACC1DHR : constant Word :=
     16#0000FFF0#;       -- /*!<DAC channel1 12-bit Left aligned data */
   DAC_DHR12LD_DACC2DHR : constant Word :=
     16#FFF00000#;       -- /*!<DAC channel2 12-bit Left aligned data */

-- /******************  Bit definition for DAC_DHR8RD register  ******************/
   DAC_DHR8RD_DACC1DHR : constant Word :=
     16#00FF#;           -- /*!<DAC channel1 8-bit Right aligned data */
   DAC_DHR8RD_DACC2DHR : constant Word :=
     16#FF00#;           -- /*!<DAC channel2 8-bit Right aligned data */

-- /*******************  Bit definition for DAC_DOR1 register  *******************/
   DAC_DOR1_DACC1DOR : constant Word :=
     16#0FFF#;           -- /*!<DAC channel1 data output */

-- /*******************  Bit definition for DAC_DOR2 register  *******************/
   DAC_DOR2_DACC2DOR : constant Word :=
     16#0FFF#;           -- /*!<DAC channel2 data output */

-- /********************  Bit definition for DAC_SR register  ********************/
   DAC_SR_DMAUDR1 : constant Word :=
     16#00002000#;       -- /*!<DAC channel1 DMA underrun flag */
   DAC_SR_DMAUDR2 : constant Word :=
     16#20000000#;       -- /*!<DAC channel2 DMA underrun flag */

end stm32f407.registers.DAC;
