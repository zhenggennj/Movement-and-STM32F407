pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.syscfg is
  --*
   --  * @brief System configuration controller
   --

  --!< SYSCFG memory remap register,                      Address offset: 16#00
  --!< SYSCFG peripheral mode configuration register,     Address offset: 16#04
  --!< SYSCFG external interrupt configuration registers, Address offset: 16#08-:constant word :=16#14
  --!< Reserved, 16#18-:constant word :=16#1C
  --!< SYSCFG Compensation cell control register,         Address offset: 16#20
   type SYSCFG_Register_EXTICR_array is array (0 .. 3) of aliased Word;
   type SYSCFG_Register_RESERVED_array is array (0 .. 1) of aliased Word;
   type SYSCFG_Register is record
      MEMRMP : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:563
      PMC : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:564
      EXTICR : aliased SYSCFG_Register_EXTICR_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:565
      RESERVED : aliased SYSCFG_Register_RESERVED_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:566
      CMPCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:567
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      SYSCFG_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:568
   subtype SYSCFG_TypeDef is SYSCFG_Register;

   SYSCFG : SYSCFG_Register with
      Volatile,
      Address => System'To_Address (SYSCFG_BASE),
     Import;

-- /******************************************************************************/
-- /*                                                                            */
-- /*                                 SYSCFG                                     */
-- /*                                                                            */
-- /******************************************************************************/
-- /******************  Bit definition for SYSCFG_MEMRMP register  ***************/
  SYSCFG_MEMRMP_MEM_MODE          :constant word :=16#00000007#;-- /*!< SYSCFG_Memory Remap Config */
  SYSCFG_MEMRMP_MEM_MODE_0        :constant word :=16#00000001#;
  SYSCFG_MEMRMP_MEM_MODE_1        :constant word :=16#00000002#;
  SYSCFG_MEMRMP_MEM_MODE_2        :constant word :=16#00000004#;

-- /******************  Bit definition for SYSCFG_PMC register  ******************/
  SYSCFG_PMC_MII_RMII_SEL         :constant word :=16#00800000#;-- /*!<Ethernet PHY interface selection */
-- /* Old MII_RMII_SEL bit definition, maintained for legacy purpose */
  SYSCFG_PMC_MII_RMII  :constant word := SYSCFG_PMC_MII_RMII_SEL;

-- /*****************  Bit definition for SYSCFG_EXTICR1 register  ***************/
  SYSCFG_EXTICR1_EXTI0            :constant word :=16#000F#;-- /*!<EXTI 0 configuration */
  SYSCFG_EXTICR1_EXTI1            :constant word :=16#00F0#;-- /*!<EXTI 1 configuration */
  SYSCFG_EXTICR1_EXTI2            :constant word :=16#0F00#;-- /*!<EXTI 2 configuration */
  SYSCFG_EXTICR1_EXTI3            :constant word :=16#F000#;-- /*!<EXTI 3 configuration */
-- /**
-- * @brief   EXTI0 configuration
-- */
  SYSCFG_EXTICR1_EXTI0_PA         :constant word :=16#0000#;-- /*!<PA[0] pin */
  SYSCFG_EXTICR1_EXTI0_PB         :constant word :=16#0001#;-- /*!<PB[0] pin */
  SYSCFG_EXTICR1_EXTI0_PC         :constant word :=16#0002#;-- /*!<PC[0] pin */
  SYSCFG_EXTICR1_EXTI0_PD         :constant word :=16#0003#;-- /*!<PD[0] pin */
  SYSCFG_EXTICR1_EXTI0_PE         :constant word :=16#0004#;-- /*!<PE[0] pin */
  SYSCFG_EXTICR1_EXTI0_PF         :constant word :=16#0005#;-- /*!<PF[0] pin */
  SYSCFG_EXTICR1_EXTI0_PG         :constant word :=16#0006#;-- /*!<PG[0] pin */
  SYSCFG_EXTICR1_EXTI0_PH         :constant word :=16#0007#;-- /*!<PH[0] pin */
  SYSCFG_EXTICR1_EXTI0_PI         :constant word :=16#0008#;-- /*!<PI[0] pin */

-- /**
-- * @brief   EXTI1 configuration
-- */
  SYSCFG_EXTICR1_EXTI1_PA         :constant word :=16#0000#;-- /*!<PA[1] pin */
  SYSCFG_EXTICR1_EXTI1_PB         :constant word :=16#0010#;-- /*!<PB[1] pin */
  SYSCFG_EXTICR1_EXTI1_PC         :constant word :=16#0020#;-- /*!<PC[1] pin */
  SYSCFG_EXTICR1_EXTI1_PD         :constant word :=16#0030#;-- /*!<PD[1] pin */
  SYSCFG_EXTICR1_EXTI1_PE         :constant word :=16#0040#;-- /*!<PE[1] pin */
  SYSCFG_EXTICR1_EXTI1_PF         :constant word :=16#0050#;-- /*!<PF[1] pin */
  SYSCFG_EXTICR1_EXTI1_PG         :constant word :=16#0060#;-- /*!<PG[1] pin */
  SYSCFG_EXTICR1_EXTI1_PH         :constant word :=16#0070#;-- /*!<PH[1] pin */
  SYSCFG_EXTICR1_EXTI1_PI         :constant word :=16#0080#;-- /*!<PI[1] pin */

-- /**
-- * @brief   EXTI2 configuration
-- */
  SYSCFG_EXTICR1_EXTI2_PA         :constant word :=16#0000#;-- /*!<PA[2] pin */
  SYSCFG_EXTICR1_EXTI2_PB         :constant word :=16#0100#;-- /*!<PB[2] pin */
  SYSCFG_EXTICR1_EXTI2_PC         :constant word :=16#0200#;-- /*!<PC[2] pin */
  SYSCFG_EXTICR1_EXTI2_PD         :constant word :=16#0300#;-- /*!<PD[2] pin */
  SYSCFG_EXTICR1_EXTI2_PE         :constant word :=16#0400#;-- /*!<PE[2] pin */
  SYSCFG_EXTICR1_EXTI2_PF         :constant word :=16#0500#;-- /*!<PF[2] pin */
  SYSCFG_EXTICR1_EXTI2_PG         :constant word :=16#0600#;-- /*!<PG[2] pin */
  SYSCFG_EXTICR1_EXTI2_PH         :constant word :=16#0700#;-- /*!<PH[2] pin */
  SYSCFG_EXTICR1_EXTI2_PI         :constant word :=16#0800#;-- /*!<PI[2] pin */

-- /**
-- * @brief   EXTI3 configuration
-- */
  SYSCFG_EXTICR1_EXTI3_PA         :constant word :=16#0000#;-- /*!<PA[3] pin */
  SYSCFG_EXTICR1_EXTI3_PB         :constant word :=16#1000#;-- /*!<PB[3] pin */
  SYSCFG_EXTICR1_EXTI3_PC         :constant word :=16#2000#;-- /*!<PC[3] pin */
  SYSCFG_EXTICR1_EXTI3_PD         :constant word :=16#3000#;-- /*!<PD[3] pin */
  SYSCFG_EXTICR1_EXTI3_PE         :constant word :=16#4000#;-- /*!<PE[3] pin */
  SYSCFG_EXTICR1_EXTI3_PF         :constant word :=16#5000#;-- /*!<PF[3] pin */
  SYSCFG_EXTICR1_EXTI3_PG         :constant word :=16#6000#;-- /*!<PG[3] pin */
  SYSCFG_EXTICR1_EXTI3_PH         :constant word :=16#7000#;-- /*!<PH[3] pin */
  SYSCFG_EXTICR1_EXTI3_PI         :constant word :=16#8000#;-- /*!<PI[3] pin */

-- /*****************  Bit definition for SYSCFG_EXTICR2 register  ***************/
  SYSCFG_EXTICR2_EXTI4            :constant word :=16#000F#;-- /*!<EXTI 4 configuration */
  SYSCFG_EXTICR2_EXTI5            :constant word :=16#00F0#;-- /*!<EXTI 5 configuration */
  SYSCFG_EXTICR2_EXTI6            :constant word :=16#0F00#;-- /*!<EXTI 6 configuration */
  SYSCFG_EXTICR2_EXTI7            :constant word :=16#F000#;-- /*!<EXTI 7 configuration */
-- /**
-- * @brief   EXTI4 configuration
-- */
  SYSCFG_EXTICR2_EXTI4_PA         :constant word :=16#0000#;-- /*!<PA[4] pin */
  SYSCFG_EXTICR2_EXTI4_PB         :constant word :=16#0001#;-- /*!<PB[4] pin */
  SYSCFG_EXTICR2_EXTI4_PC         :constant word :=16#0002#;-- /*!<PC[4] pin */
  SYSCFG_EXTICR2_EXTI4_PD         :constant word :=16#0003#;-- /*!<PD[4] pin */
  SYSCFG_EXTICR2_EXTI4_PE         :constant word :=16#0004#;-- /*!<PE[4] pin */
  SYSCFG_EXTICR2_EXTI4_PF         :constant word :=16#0005#;-- /*!<PF[4] pin */
  SYSCFG_EXTICR2_EXTI4_PG         :constant word :=16#0006#;-- /*!<PG[4] pin */
  SYSCFG_EXTICR2_EXTI4_PH         :constant word :=16#0007#;-- /*!<PH[4] pin */
  SYSCFG_EXTICR2_EXTI4_PI         :constant word :=16#0008#;-- /*!<PI[4] pin */

-- /**
-- * @brief   EXTI5 configuration
-- */
  SYSCFG_EXTICR2_EXTI5_PA         :constant word :=16#0000#;-- /*!<PA[5] pin */
  SYSCFG_EXTICR2_EXTI5_PB         :constant word :=16#0010#;-- /*!<PB[5] pin */
  SYSCFG_EXTICR2_EXTI5_PC         :constant word :=16#0020#;-- /*!<PC[5] pin */
  SYSCFG_EXTICR2_EXTI5_PD         :constant word :=16#0030#;-- /*!<PD[5] pin */
  SYSCFG_EXTICR2_EXTI5_PE         :constant word :=16#0040#;-- /*!<PE[5] pin */
  SYSCFG_EXTICR2_EXTI5_PF         :constant word :=16#0050#;-- /*!<PF[5] pin */
  SYSCFG_EXTICR2_EXTI5_PG         :constant word :=16#0060#;-- /*!<PG[5] pin */
  SYSCFG_EXTICR2_EXTI5_PH         :constant word :=16#0070#;-- /*!<PH[5] pin */
  SYSCFG_EXTICR2_EXTI5_PI         :constant word :=16#0080#;-- /*!<PI[5] pin */

-- /**
-- * @brief   EXTI6 configuration
-- */
  SYSCFG_EXTICR2_EXTI6_PA         :constant word :=16#0000#;-- /*!<PA[6] pin */
  SYSCFG_EXTICR2_EXTI6_PB         :constant word :=16#0100#;-- /*!<PB[6] pin */
  SYSCFG_EXTICR2_EXTI6_PC         :constant word :=16#0200#;-- /*!<PC[6] pin */
  SYSCFG_EXTICR2_EXTI6_PD         :constant word :=16#0300#;-- /*!<PD[6] pin */
  SYSCFG_EXTICR2_EXTI6_PE         :constant word :=16#0400#;-- /*!<PE[6] pin */
  SYSCFG_EXTICR2_EXTI6_PF         :constant word :=16#0500#;-- /*!<PF[6] pin */
  SYSCFG_EXTICR2_EXTI6_PG         :constant word :=16#0600#;-- /*!<PG[6] pin */
  SYSCFG_EXTICR2_EXTI6_PH         :constant word :=16#0700#;-- /*!<PH[6] pin */
  SYSCFG_EXTICR2_EXTI6_PI         :constant word :=16#0800#;-- /*!<PI[6] pin */

-- /**
-- * @brief   EXTI7 configuration
-- */
  SYSCFG_EXTICR2_EXTI7_PA         :constant word :=16#0000#;-- /*!<PA[7] pin */
  SYSCFG_EXTICR2_EXTI7_PB         :constant word :=16#1000#;-- /*!<PB[7] pin */
  SYSCFG_EXTICR2_EXTI7_PC         :constant word :=16#2000#;-- /*!<PC[7] pin */
  SYSCFG_EXTICR2_EXTI7_PD         :constant word :=16#3000#;-- /*!<PD[7] pin */
  SYSCFG_EXTICR2_EXTI7_PE         :constant word :=16#4000#;-- /*!<PE[7] pin */
  SYSCFG_EXTICR2_EXTI7_PF         :constant word :=16#5000#;-- /*!<PF[7] pin */
  SYSCFG_EXTICR2_EXTI7_PG         :constant word :=16#6000#;-- /*!<PG[7] pin */
  SYSCFG_EXTICR2_EXTI7_PH         :constant word :=16#7000#;-- /*!<PH[7] pin */
  SYSCFG_EXTICR2_EXTI7_PI         :constant word :=16#8000#;-- /*!<PI[7] pin */


-- /*****************  Bit definition for SYSCFG_EXTICR3 register  ***************/
  SYSCFG_EXTICR3_EXTI8            :constant word :=16#000F#;-- /*!<EXTI 8 configuration */
  SYSCFG_EXTICR3_EXTI9            :constant word :=16#00F0#;-- /*!<EXTI 9 configuration */
  SYSCFG_EXTICR3_EXTI10           :constant word :=16#0F00#;-- /*!<EXTI 10 configuration */
  SYSCFG_EXTICR3_EXTI11           :constant word :=16#F000#;-- /*!<EXTI 11 configuration */

-- /**
-- * @brief   EXTI8 configuration
-- */
  SYSCFG_EXTICR3_EXTI8_PA         :constant word :=16#0000#;-- /*!<PA[8] pin */
  SYSCFG_EXTICR3_EXTI8_PB         :constant word :=16#0001#;-- /*!<PB[8] pin */
  SYSCFG_EXTICR3_EXTI8_PC         :constant word :=16#0002#;-- /*!<PC[8] pin */
  SYSCFG_EXTICR3_EXTI8_PD         :constant word :=16#0003#;-- /*!<PD[8] pin */
  SYSCFG_EXTICR3_EXTI8_PE         :constant word :=16#0004#;-- /*!<PE[8] pin */
  SYSCFG_EXTICR3_EXTI8_PF         :constant word :=16#0005#;-- /*!<PF[8] pin */
  SYSCFG_EXTICR3_EXTI8_PG         :constant word :=16#0006#;-- /*!<PG[8] pin */
  SYSCFG_EXTICR3_EXTI8_PH         :constant word :=16#0007#;-- /*!<PH[8] pin */
  SYSCFG_EXTICR3_EXTI8_PI         :constant word :=16#0008#;-- /*!<PI[8] pin */

-- /**
-- * @brief   EXTI9 configuration
-- */
  SYSCFG_EXTICR3_EXTI9_PA         :constant word :=16#0000#;-- /*!<PA[9] pin */
  SYSCFG_EXTICR3_EXTI9_PB         :constant word :=16#0010#;-- /*!<PB[9] pin */
  SYSCFG_EXTICR3_EXTI9_PC         :constant word :=16#0020#;-- /*!<PC[9] pin */
  SYSCFG_EXTICR3_EXTI9_PD         :constant word :=16#0030#;-- /*!<PD[9] pin */
  SYSCFG_EXTICR3_EXTI9_PE         :constant word :=16#0040#;-- /*!<PE[9] pin */
  SYSCFG_EXTICR3_EXTI9_PF         :constant word :=16#0050#;-- /*!<PF[9] pin */
  SYSCFG_EXTICR3_EXTI9_PG         :constant word :=16#0060#;-- /*!<PG[9] pin */
  SYSCFG_EXTICR3_EXTI9_PH         :constant word :=16#0070#;-- /*!<PH[9] pin */
  SYSCFG_EXTICR3_EXTI9_PI         :constant word :=16#0080#;-- /*!<PI[9] pin */

-- /**
-- * @brief   EXTI10 configuration
-- */
  SYSCFG_EXTICR3_EXTI10_PA        :constant word :=16#0000#;-- /*!<PA[10] pin */
  SYSCFG_EXTICR3_EXTI10_PB        :constant word :=16#0100#;-- /*!<PB[10] pin */
  SYSCFG_EXTICR3_EXTI10_PC        :constant word :=16#0200#;-- /*!<PC[10] pin */
  SYSCFG_EXTICR3_EXTI10_PD        :constant word :=16#0300#;-- /*!<PD[10] pin */
  SYSCFG_EXTICR3_EXTI10_PE        :constant word :=16#0400#;-- /*!<PE[10] pin */
  SYSCFG_EXTICR3_EXTI10_PF        :constant word :=16#0500#;-- /*!<PF[10] pin */
  SYSCFG_EXTICR3_EXTI10_PG        :constant word :=16#0600#;-- /*!<PG[10] pin */
  SYSCFG_EXTICR3_EXTI10_PH        :constant word :=16#0700#;-- /*!<PH[10] pin */
  SYSCFG_EXTICR3_EXTI10_PI        :constant word :=16#0800#;-- /*!<PI[10] pin */

-- /**
-- * @brief   EXTI11 configuration
-- */
  SYSCFG_EXTICR3_EXTI11_PA        :constant word :=16#0000#;-- /*!<PA[11] pin */
  SYSCFG_EXTICR3_EXTI11_PB        :constant word :=16#1000#;-- /*!<PB[11] pin */
  SYSCFG_EXTICR3_EXTI11_PC        :constant word :=16#2000#;-- /*!<PC[11] pin */
  SYSCFG_EXTICR3_EXTI11_PD        :constant word :=16#3000#;-- /*!<PD[11] pin */
  SYSCFG_EXTICR3_EXTI11_PE        :constant word :=16#4000#;-- /*!<PE[11] pin */
  SYSCFG_EXTICR3_EXTI11_PF        :constant word :=16#5000#;-- /*!<PF[11] pin */
  SYSCFG_EXTICR3_EXTI11_PG        :constant word :=16#6000#;-- /*!<PG[11] pin */
  SYSCFG_EXTICR3_EXTI11_PH        :constant word :=16#7000#;-- /*!<PH[11] pin */
  SYSCFG_EXTICR3_EXTI11_PI        :constant word :=16#8000#;-- /*!<PI[11] pin */

-- /*****************  Bit definition for SYSCFG_EXTICR4 register  ***************/
  SYSCFG_EXTICR4_EXTI12           :constant word :=16#000F#;-- /*!<EXTI 12 configuration */
  SYSCFG_EXTICR4_EXTI13           :constant word :=16#00F0#;-- /*!<EXTI 13 configuration */
  SYSCFG_EXTICR4_EXTI14           :constant word :=16#0F00#;-- /*!<EXTI 14 configuration */
  SYSCFG_EXTICR4_EXTI15           :constant word :=16#F000#;-- /*!<EXTI 15 configuration */
-- /**
-- * @brief   EXTI12 configuration
-- */
  SYSCFG_EXTICR4_EXTI12_PA        :constant word :=16#0000#;-- /*!<PA[12] pin */
  SYSCFG_EXTICR4_EXTI12_PB        :constant word :=16#0001#;-- /*!<PB[12] pin */
  SYSCFG_EXTICR4_EXTI12_PC        :constant word :=16#0002#;-- /*!<PC[12] pin */
  SYSCFG_EXTICR4_EXTI12_PD        :constant word :=16#0003#;-- /*!<PD[12] pin */
  SYSCFG_EXTICR4_EXTI12_PE        :constant word :=16#0004#;-- /*!<PE[12] pin */
  SYSCFG_EXTICR4_EXTI12_PF        :constant word :=16#0005#;-- /*!<PF[12] pin */
  SYSCFG_EXTICR4_EXTI12_PG        :constant word :=16#0006#;-- /*!<PG[12] pin */
  SYSCFG_EXTICR4_EXTI12_PH        :constant word :=16#0007#;-- /*!<PH[12] pin */

-- /**
-- * @brief   EXTI13 configuration
-- */
  SYSCFG_EXTICR4_EXTI13_PA        :constant word :=16#0000#;-- /*!<PA[13] pin */
  SYSCFG_EXTICR4_EXTI13_PB        :constant word :=16#0010#;-- /*!<PB[13] pin */
  SYSCFG_EXTICR4_EXTI13_PC        :constant word :=16#0020#;-- /*!<PC[13] pin */
  SYSCFG_EXTICR4_EXTI13_PD        :constant word :=16#0030#;-- /*!<PD[13] pin */
  SYSCFG_EXTICR4_EXTI13_PE        :constant word :=16#0040#;-- /*!<PE[13] pin */
  SYSCFG_EXTICR4_EXTI13_PF        :constant word :=16#0050#;-- /*!<PF[13] pin */
  SYSCFG_EXTICR4_EXTI13_PG        :constant word :=16#0060#;-- /*!<PG[13] pin */
  SYSCFG_EXTICR4_EXTI13_PH        :constant word :=16#0070#;-- /*!<PH[13] pin */

-- /**
-- * @brief   EXTI14 configuration
-- */
  SYSCFG_EXTICR4_EXTI14_PA        :constant word :=16#0000#;-- /*!<PA[14] pin */
  SYSCFG_EXTICR4_EXTI14_PB        :constant word :=16#0100#;-- /*!<PB[14] pin */
  SYSCFG_EXTICR4_EXTI14_PC        :constant word :=16#0200#;-- /*!<PC[14] pin */
  SYSCFG_EXTICR4_EXTI14_PD        :constant word :=16#0300#;-- /*!<PD[14] pin */
  SYSCFG_EXTICR4_EXTI14_PE        :constant word :=16#0400#;-- /*!<PE[14] pin */
  SYSCFG_EXTICR4_EXTI14_PF        :constant word :=16#0500#;-- /*!<PF[14] pin */
  SYSCFG_EXTICR4_EXTI14_PG        :constant word :=16#0600#;-- /*!<PG[14] pin */
  SYSCFG_EXTICR4_EXTI14_PH        :constant word :=16#0700#;-- /*!<PH[14] pin */

-- /**
-- * @brief   EXTI15 configuration
-- */
  SYSCFG_EXTICR4_EXTI15_PA        :constant word :=16#0000#;-- /*!<PA[15] pin */
  SYSCFG_EXTICR4_EXTI15_PB        :constant word :=16#1000#;-- /*!<PB[15] pin */
  SYSCFG_EXTICR4_EXTI15_PC        :constant word :=16#2000#;-- /*!<PC[15] pin */
  SYSCFG_EXTICR4_EXTI15_PD        :constant word :=16#3000#;-- /*!<PD[15] pin */
  SYSCFG_EXTICR4_EXTI15_PE        :constant word :=16#4000#;-- /*!<PE[15] pin */
  SYSCFG_EXTICR4_EXTI15_PF        :constant word :=16#5000#;-- /*!<PF[15] pin */
  SYSCFG_EXTICR4_EXTI15_PG        :constant word :=16#6000#;-- /*!<PG[15] pin */
  SYSCFG_EXTICR4_EXTI15_PH        :constant word :=16#7000#;-- /*!<PH[15] pin */

-- /******************  Bit definition for SYSCFG_CMPCR register  ****************/
  SYSCFG_CMPCR_CMP_PD             :constant word :=16#00000001#;-- /*!<Compensation cell ready flag */
  SYSCFG_CMPCR_READY              :constant word :=16#00000100#;-- /*!<Compensation cell power-down */



end stm32f407.registers.syscfg;
