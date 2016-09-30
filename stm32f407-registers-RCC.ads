pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.rcc is
  --*
   --  * @brief Reset and Clock Control
   --

  --!< RCC clock control register,                                  Address offset: 16#00
  --!< RCC PLL configuration register,                              Address offset: 16#04
  --!< RCC clock configuration register,                            Address offset: 16#08
  --!< RCC clock interrupt register,                                Address offset: 16#0C
  --!< RCC AHB1 peripheral reset register,                          Address offset: 16#10
  --!< RCC AHB2 peripheral reset register,                          Address offset: 16#14
  --!< RCC AHB3 peripheral reset register,                          Address offset: 16#18
  --!< Reserved, 16#1C
  --!< RCC APB1 peripheral reset register,                          Address offset: 16#20
  --!< RCC APB2 peripheral reset register,                          Address offset: 16#24
  --!< Reserved, 16#28-:constant word :=16#2C
  --!< RCC AHB1 peripheral clock register,                          Address offset: 16#30
  --!< RCC AHB2 peripheral clock register,                          Address offset: 16#34
  --!< RCC AHB3 peripheral clock register,                          Address offset: 16#38
  --!< Reserved, 16#3C
  --!< RCC APB1 peripheral clock enable register,                   Address offset: 16#40
  --!< RCC APB2 peripheral clock enable register,                   Address offset: 16#44
  --!< Reserved, 16#48-:constant word :=16#4C
  --!< RCC AHB1 peripheral clock enable in low power mode register, Address offset: 16#50
  --!< RCC AHB2 peripheral clock enable in low power mode register, Address offset: 16#54
  --!< RCC AHB3 peripheral clock enable in low power mode register, Address offset: 16#58
  --!< Reserved, 16#5C
  --!< RCC APB1 peripheral clock enable in low power mode register, Address offset: 16#60
  --!< RCC APB2 peripheral clock enable in low power mode register, Address offset: 16#64
  --!< Reserved, 16#68-:constant word :=16#6C
  --!< RCC Backup domain control register,                          Address offset: 16#70
  --!< RCC clock control & status register,                         Address offset: 16#74
  --!< Reserved, 16#78-:constant word :=16#7C
  --!< RCC spread spectrum clock generation register,               Address offset: 16#80
  --!< RCC PLLI2S configuration register,                           Address offset: 16#84
   type RCC_Register_RESERVED1_array is array (0 .. 1) of aliased Word;
   type RCC_Register_RESERVED3_array is array (0 .. 1) of aliased Word;
   type RCC_Register_RESERVED5_array is array (0 .. 1) of aliased Word;
   type RCC_Register_RESERVED6_array is array (0 .. 1) of aliased Word;
   type RCC_Register is record
      CR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:616
      PLLCFGR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:617
      CFGR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:618
      CIR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:619
      AHB1RSTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:620
      AHB2RSTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:621
      AHB3RSTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:622
      RESERVED0 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:623
      APB1RSTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:624
      APB2RSTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:625
      RESERVED1 : aliased RCC_Register_RESERVED1_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:626
      AHB1ENR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:627
      AHB2ENR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:628
      AHB3ENR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:629
      RESERVED2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:630
      APB1ENR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:631
      APB2ENR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:632
      RESERVED3 : aliased RCC_Register_RESERVED3_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:633
      AHB1LPENR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:634
      AHB2LPENR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:635
      AHB3LPENR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:636
      RESERVED4 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:637
      APB1LPENR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:638
      APB2LPENR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:639
      RESERVED5 : aliased RCC_Register_RESERVED5_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:640
      BDCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:641
      CSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:642
      RESERVED6 : aliased RCC_Register_RESERVED6_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:643
      SSCGR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:644
      PLLI2SCFGR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:645
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      RCC_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:647
   subtype RCC_TypeDef is RCC_Register;
   RCC : RCC_Register with
      Volatile,
      Address => System'To_Address (RCC_BASE),
      Import;
      
 
-- /******************************************************************************/
-- /*                                                                            */
-- /*                         Reset and Clock Control                            */
-- /*                                                                            */
-- /******************************************************************************/
-- /********************  Bit definition for RCC_CR register  ********************/
   RCC_CR_HSION                        :constant word :=16#00000001#;
   RCC_CR_HSIRDY                       :constant word :=16#00000002#;

   RCC_CR_HSITRIM                      :constant word :=16#000000F8#;
   RCC_CR_HSITRIM_0                    :constant word :=16#00000008#;-- /*!<Bit 0 */
   RCC_CR_HSITRIM_1                    :constant word :=16#00000010#;-- /*!<Bit 1 */
   RCC_CR_HSITRIM_2                    :constant word :=16#00000020#;-- /*!<Bit 2 */
   RCC_CR_HSITRIM_3                    :constant word :=16#00000040#;-- /*!<Bit 3 */
   RCC_CR_HSITRIM_4                    :constant word :=16#00000080#;-- /*!<Bit 4 */

   RCC_CR_HSICAL                       :constant word :=16#0000FF00#;
   RCC_CR_HSICAL_0                     :constant word :=16#00000100#;-- /*!<Bit 0 */
   RCC_CR_HSICAL_1                     :constant word :=16#00000200#;-- /*!<Bit 1 */
   RCC_CR_HSICAL_2                     :constant word :=16#00000400#;-- /*!<Bit 2 */
   RCC_CR_HSICAL_3                     :constant word :=16#00000800#;-- /*!<Bit 3 */
   RCC_CR_HSICAL_4                     :constant word :=16#00001000#;-- /*!<Bit 4 */
   RCC_CR_HSICAL_5                     :constant word :=16#00002000#;-- /*!<Bit 5 */
   RCC_CR_HSICAL_6                     :constant word :=16#00004000#;-- /*!<Bit 6 */
   RCC_CR_HSICAL_7                     :constant word :=16#00008000#;-- /*!<Bit 7 */

   RCC_CR_HSEON                        :constant word :=16#00010000#;
   RCC_CR_HSERDY                       :constant word :=16#00020000#;
   RCC_CR_HSEBYP                       :constant word :=16#00040000#;
   RCC_CR_CSSON                        :constant word :=16#00080000#;
   RCC_CR_PLLON                        :constant word :=16#01000000#;
   RCC_CR_PLLRDY                       :constant word :=16#02000000#;
   RCC_CR_PLLI2SON                     :constant word :=16#04000000#;
   RCC_CR_PLLI2SRDY                    :constant word :=16#08000000#;

-- /********************  Bit definition for RCC_PLLCFGR register  ***************/
   RCC_PLLCFGR_PLLM                    :constant word :=16#0000003F#;
   RCC_PLLCFGR_PLLM_0                  :constant word :=16#00000001#;
   RCC_PLLCFGR_PLLM_1                  :constant word :=16#00000002#;
   RCC_PLLCFGR_PLLM_2                  :constant word :=16#00000004#;
   RCC_PLLCFGR_PLLM_3                  :constant word :=16#00000008#;
   RCC_PLLCFGR_PLLM_4                  :constant word :=16#00000010#;
   RCC_PLLCFGR_PLLM_5                  :constant word :=16#00000020#;

   RCC_PLLCFGR_PLLN                     :constant word :=16#00007FC0#;
   RCC_PLLCFGR_PLLN_0                   :constant word :=16#00000040#;
   RCC_PLLCFGR_PLLN_1                   :constant word :=16#00000080#;
   RCC_PLLCFGR_PLLN_2                   :constant word :=16#00000100#;
   RCC_PLLCFGR_PLLN_3                   :constant word :=16#00000200#;
   RCC_PLLCFGR_PLLN_4                   :constant word :=16#00000400#;
   RCC_PLLCFGR_PLLN_5                   :constant word :=16#00000800#;
   RCC_PLLCFGR_PLLN_6                   :constant word :=16#00001000#;
   RCC_PLLCFGR_PLLN_7                   :constant word :=16#00002000#;
   RCC_PLLCFGR_PLLN_8                   :constant word :=16#00004000#;

   RCC_PLLCFGR_PLLP                    :constant word :=16#00030000#;
   RCC_PLLCFGR_PLLP_0                  :constant word :=16#00010000#;
   RCC_PLLCFGR_PLLP_1                  :constant word :=16#00020000#;

   RCC_PLLCFGR_PLLSRC                  :constant word :=16#00400000#;
   RCC_PLLCFGR_PLLSRC_HSE              :constant word :=16#00400000#;
   RCC_PLLCFGR_PLLSRC_HSI              :constant word :=16#00000000#;

   RCC_PLLCFGR_PLLQ                    :constant word :=16#0F000000#;
   RCC_PLLCFGR_PLLQ_0                  :constant word :=16#01000000#;
   RCC_PLLCFGR_PLLQ_1                  :constant word :=16#02000000#;
   RCC_PLLCFGR_PLLQ_2                  :constant word :=16#04000000#;
   RCC_PLLCFGR_PLLQ_3                  :constant word :=16#08000000#;

-- /********************  Bit definition for RCC_CFGR register  ******************/
-- /*!< SW configuration */
   RCC_CFGR_SW                         :constant word :=16#00000003#;       -- /*!< SW[1:0] bits (System clock Switch) */
   RCC_CFGR_SW_0                       :constant word :=16#00000001#;       -- /*!< Bit 0 */
   RCC_CFGR_SW_1                       :constant word :=16#00000002#;       -- /*!< Bit 1 */

   RCC_CFGR_SW_HSI                     :constant word :=16#00000000#;       -- /*!< HSI selected as system clock */
   RCC_CFGR_SW_HSE                     :constant word :=16#00000001#;       -- /*!< HSE selected as system clock */
   RCC_CFGR_SW_PLL                     :constant word :=16#00000002#;       -- /*!< PLL selected as system clock */

-- /*!< SWS configuration */
   RCC_CFGR_SWS                        :constant word :=16#0000000C#;       -- /*!< SWS[1:0] bits (System Clock Switch Status) */
   RCC_CFGR_SWS_0                      :constant word :=16#00000004#;       -- /*!< Bit 0 */
   RCC_CFGR_SWS_1                      :constant word :=16#00000008#;       -- /*!< Bit 1 */

   RCC_CFGR_SWS_HSI                    :constant word :=16#00000000#;       -- /*!< HSI oscillator used as system clock */
   RCC_CFGR_SWS_HSE                    :constant word :=16#00000004#;       -- /*!< HSE oscillator used as system clock */
   RCC_CFGR_SWS_PLL                    :constant word :=16#00000008#;       -- /*!< PLL used as system clock */

-- /*!< HPRE configuration */
   RCC_CFGR_HPRE                       :constant word :=16#000000F0#;       -- /*!< HPRE[3:0] bits (AHB prescaler) */
   RCC_CFGR_HPRE_0                     :constant word :=16#00000010#;       -- /*!< Bit 0 */
   RCC_CFGR_HPRE_1                     :constant word :=16#00000020#;       -- /*!< Bit 1 */
   RCC_CFGR_HPRE_2                     :constant word :=16#00000040#;       -- /*!< Bit 2 */
   RCC_CFGR_HPRE_3                     :constant word :=16#00000080#;       -- /*!< Bit 3 */

   RCC_CFGR_HPRE_DIV1                  :constant word :=16#00000000#;       -- /*!< SYSCLK not divided */
   RCC_CFGR_HPRE_DIV2                  :constant word :=16#00000080#;       -- /*!< SYSCLK divided by 2 */
   RCC_CFGR_HPRE_DIV4                  :constant word :=16#00000090#;       -- /*!< SYSCLK divided by 4 */
   RCC_CFGR_HPRE_DIV8                  :constant word :=16#000000A0#;       -- /*!< SYSCLK divided by 8 */
   RCC_CFGR_HPRE_DIV16                 :constant word :=16#000000B0#;       -- /*!< SYSCLK divided by 16 */
   RCC_CFGR_HPRE_DIV64                 :constant word :=16#000000C0#;       -- /*!< SYSCLK divided by 64 */
   RCC_CFGR_HPRE_DIV128                :constant word :=16#000000D0#;       -- /*!< SYSCLK divided by 128 */
   RCC_CFGR_HPRE_DIV256                :constant word :=16#000000E0#;       -- /*!< SYSCLK divided by 256 */
   RCC_CFGR_HPRE_DIV512                :constant word :=16#000000F0#;       -- /*!< SYSCLK divided by 512 */

-- /*!< PPRE1 configuration */
   RCC_CFGR_PPRE1                      :constant word :=16#00001C00#;       -- /*!< PRE1[2:0] bits (APB1 prescaler) */
   RCC_CFGR_PPRE1_0                    :constant word :=16#00000400#;       -- /*!< Bit 0 */
   RCC_CFGR_PPRE1_1                    :constant word :=16#00000800#;       -- /*!< Bit 1 */
   RCC_CFGR_PPRE1_2                    :constant word :=16#00001000#;       -- /*!< Bit 2 */

   RCC_CFGR_PPRE1_DIV1                 :constant word :=16#00000000#;       -- /*!< HCLK not divided */
   RCC_CFGR_PPRE1_DIV2                 :constant word :=16#00001000#;       -- /*!< HCLK divided by 2 */
   RCC_CFGR_PPRE1_DIV4                 :constant word :=16#00001400#;       -- /*!< HCLK divided by 4 */
   RCC_CFGR_PPRE1_DIV8                 :constant word :=16#00001800#;       -- /*!< HCLK divided by 8 */
   RCC_CFGR_PPRE1_DIV16                :constant word :=16#00001C00#;       -- /*!< HCLK divided by 16 */

-- /*!< PPRE2 configuration */
   RCC_CFGR_PPRE2                      :constant word :=16#0000E000#;       -- /*!< PRE2[2:0] bits (APB2 prescaler) */
   RCC_CFGR_PPRE2_0                    :constant word :=16#00002000#;       -- /*!< Bit 0 */
   RCC_CFGR_PPRE2_1                    :constant word :=16#00004000#;       -- /*!< Bit 1 */
   RCC_CFGR_PPRE2_2                    :constant word :=16#00008000#;       -- /*!< Bit 2 */

   RCC_CFGR_PPRE2_DIV1                 :constant word :=16#00000000#;       -- /*!< HCLK not divided */
   RCC_CFGR_PPRE2_DIV2                 :constant word :=16#00008000#;       -- /*!< HCLK divided by 2 */
   RCC_CFGR_PPRE2_DIV4                 :constant word :=16#0000A000#;       -- /*!< HCLK divided by 4 */
   RCC_CFGR_PPRE2_DIV8                 :constant word :=16#0000C000#;       -- /*!< HCLK divided by 8 */
   RCC_CFGR_PPRE2_DIV16                :constant word :=16#0000E000#;       -- /*!< HCLK divided by 16 */

-- /*!< RTCPRE configuration */
   RCC_CFGR_RTCPRE                     :constant word :=16#001F0000#;
   RCC_CFGR_RTCPRE_0                   :constant word :=16#00010000#;
   RCC_CFGR_RTCPRE_1                   :constant word :=16#00020000#;
   RCC_CFGR_RTCPRE_2                   :constant word :=16#00040000#;
   RCC_CFGR_RTCPRE_3                   :constant word :=16#00080000#;
   RCC_CFGR_RTCPRE_4                   :constant word :=16#00100000#;

-- /*!< MCO1 configuration */
   RCC_CFGR_MCO1                       :constant word :=16#00600000#;
   RCC_CFGR_MCO1_0                     :constant word :=16#00200000#;
   RCC_CFGR_MCO1_1                     :constant word :=16#00400000#;

   RCC_CFGR_I2SSRC                     :constant word :=16#00800000#;

   RCC_CFGR_MCO1PRE                    :constant word :=16#07000000#;
   RCC_CFGR_MCO1PRE_0                  :constant word :=16#01000000#;
   RCC_CFGR_MCO1PRE_1                  :constant word :=16#02000000#;
   RCC_CFGR_MCO1PRE_2                  :constant word :=16#04000000#;

   RCC_CFGR_MCO2PRE                    :constant word :=16#38000000#;
   RCC_CFGR_MCO2PRE_0                  :constant word :=16#08000000#;
   RCC_CFGR_MCO2PRE_1                  :constant word :=16#10000000#;
   RCC_CFGR_MCO2PRE_2                  :constant word :=16#20000000#;

   RCC_CFGR_MCO2                       :constant word :=16#C0000000#;
   RCC_CFGR_MCO2_0                     :constant word :=16#40000000#;
   RCC_CFGR_MCO2_1                     :constant word :=16#80000000#;

-- /********************  Bit definition for RCC_CIR register  *******************/
   RCC_CIR_LSIRDYF                     :constant word :=16#00000001#;
   RCC_CIR_LSERDYF                     :constant word :=16#00000002#;
   RCC_CIR_HSIRDYF                     :constant word :=16#00000004#;
   RCC_CIR_HSERDYF                     :constant word :=16#00000008#;
   RCC_CIR_PLLRDYF                     :constant word :=16#00000010#;
   RCC_CIR_PLLI2SRDYF                  :constant word :=16#00000020#;

   RCC_CIR_CSSF                        :constant word :=16#00000080#;
   RCC_CIR_LSIRDYIE                    :constant word :=16#00000100#;
   RCC_CIR_LSERDYIE                    :constant word :=16#00000200#;
   RCC_CIR_HSIRDYIE                    :constant word :=16#00000400#;
   RCC_CIR_HSERDYIE                    :constant word :=16#00000800#;
   RCC_CIR_PLLRDYIE                    :constant word :=16#00001000#;
   RCC_CIR_PLLI2SRDYIE                 :constant word :=16#00002000#;

   RCC_CIR_LSIRDYC                     :constant word :=16#00010000#;
   RCC_CIR_LSERDYC                     :constant word :=16#00020000#;
   RCC_CIR_HSIRDYC                     :constant word :=16#00040000#;
   RCC_CIR_HSERDYC                     :constant word :=16#00080000#;
   RCC_CIR_PLLRDYC                     :constant word :=16#00100000#;
   RCC_CIR_PLLI2SRDYC                  :constant word :=16#00200000#;

   RCC_CIR_CSSC                        :constant word :=16#00800000#;

-- /********************  Bit definition for RCC_AHB1RSTR register  **************/
   RCC_AHB1RSTR_GPIOARST               :constant word :=16#00000001#;
   RCC_AHB1RSTR_GPIOBRST               :constant word :=16#00000002#;
   RCC_AHB1RSTR_GPIOCRST               :constant word :=16#00000004#;
   RCC_AHB1RSTR_GPIODRST               :constant word :=16#00000008#;
   RCC_AHB1RSTR_GPIOERST               :constant word :=16#00000010#;
   RCC_AHB1RSTR_GPIOFRST               :constant word :=16#00000020#;
   RCC_AHB1RSTR_GPIOGRST               :constant word :=16#00000040#;
   RCC_AHB1RSTR_GPIOHRST               :constant word :=16#00000080#;
   RCC_AHB1RSTR_GPIOIRST               :constant word :=16#00000100#;
   RCC_AHB1RSTR_CRCRST                 :constant word :=16#00001000#;
   RCC_AHB1RSTR_DMA1RST                :constant word :=16#00200000#;
   RCC_AHB1RSTR_DMA2RST                :constant word :=16#00400000#;
   RCC_AHB1RSTR_ETHMACRST              :constant word :=16#02000000#;
   RCC_AHB1RSTR_OTGHRST                :constant word :=16#20000000#;

-- /********************  Bit definition for RCC_AHB2RSTR register  **************/
   RCC_AHB2RSTR_DCMIRST                :constant word :=16#00000001#;
   RCC_AHB2RSTR_RNGRST                 :constant word :=16#00000040#;
   RCC_AHB2RSTR_OTGFSRST               :constant word :=16#00000080#;

-- /********************  Bit definition for RCC_AHB3RSTR register  **************/

   RCC_AHB3RSTR_FSMCRST                :constant word :=16#00000001#;

-- /********************  Bit definition for RCC_APB1RSTR register  **************/
   RCC_APB1RSTR_TIM2RST                :constant word :=16#00000001#;
   RCC_APB1RSTR_TIM3RST                :constant word :=16#00000002#;
   RCC_APB1RSTR_TIM4RST                :constant word :=16#00000004#;
   RCC_APB1RSTR_TIM5RST                :constant word :=16#00000008#;
   RCC_APB1RSTR_TIM6RST                :constant word :=16#00000010#;
   RCC_APB1RSTR_TIM7RST                :constant word :=16#00000020#;
   RCC_APB1RSTR_TIM12RST               :constant word :=16#00000040#;
   RCC_APB1RSTR_TIM13RST               :constant word :=16#00000080#;
   RCC_APB1RSTR_TIM14RST               :constant word :=16#00000100#;
   RCC_APB1RSTR_WWDGRST                :constant word :=16#00000800#;
   RCC_APB1RSTR_SPI2RST                :constant word :=16#00004000#;
   RCC_APB1RSTR_SPI3RST                :constant word :=16#00008000#;
   RCC_APB1RSTR_USART2RST              :constant word :=16#00020000#;
   RCC_APB1RSTR_USART3RST              :constant word :=16#00040000#;
   RCC_APB1RSTR_UART4RST               :constant word :=16#00080000#;
   RCC_APB1RSTR_UART5RST               :constant word :=16#00100000#;
   RCC_APB1RSTR_I2C1RST                :constant word :=16#00200000#;
   RCC_APB1RSTR_I2C2RST                :constant word :=16#00400000#;
   RCC_APB1RSTR_I2C3RST                :constant word :=16#00800000#;
   RCC_APB1RSTR_CAN1RST                :constant word :=16#02000000#;
   RCC_APB1RSTR_CAN2RST                :constant word :=16#04000000#;
   RCC_APB1RSTR_PWRRST                 :constant word :=16#10000000#;
   RCC_APB1RSTR_DACRST                 :constant word :=16#20000000#;

-- /********************  Bit definition for RCC_APB2RSTR register  **************/
   RCC_APB2RSTR_TIM1RST                :constant word :=16#00000001#;
   RCC_APB2RSTR_TIM8RST                :constant word :=16#00000002#;
   RCC_APB2RSTR_USART1RST              :constant word :=16#00000010#;
   RCC_APB2RSTR_USART6RST              :constant word :=16#00000020#;
   RCC_APB2RSTR_ADCRST                 :constant word :=16#00000100#;
   RCC_APB2RSTR_SDIORST                :constant word :=16#00000800#;
   RCC_APB2RSTR_SPI1RST                :constant word :=16#00001000#;
   RCC_APB2RSTR_SYSCFGRST              :constant word :=16#00004000#;
   RCC_APB2RSTR_TIM9RST                :constant word :=16#00010000#;
   RCC_APB2RSTR_TIM10RST               :constant word :=16#00020000#;
   RCC_APB2RSTR_TIM11RST               :constant word :=16#00040000#;

-- /* Old SPI1RST bit definition, maintained for legacy purpose */
   RCC_APB2RSTR_SPI1    :constant word :=   RCC_APB2RSTR_SPI1RST;

-- /********************  Bit definition for RCC_AHB1ENR register  ***************/
   RCC_AHB1ENR_GPIOAEN                 :constant word :=16#00000001#;
   RCC_AHB1ENR_GPIOBEN                 :constant word :=16#00000002#;
   RCC_AHB1ENR_GPIOCEN                 :constant word :=16#00000004#;
   RCC_AHB1ENR_GPIODEN                 :constant word :=16#00000008#;
   RCC_AHB1ENR_GPIOEEN                 :constant word :=16#00000010#;
   RCC_AHB1ENR_GPIOFEN                 :constant word :=16#00000020#;
   RCC_AHB1ENR_GPIOGEN                 :constant word :=16#00000040#;
   RCC_AHB1ENR_GPIOHEN                 :constant word :=16#00000080#;
   RCC_AHB1ENR_GPIOIEN                 :constant word :=16#00000100#;
   RCC_AHB1ENR_CRCEN                   :constant word :=16#00001000#;
   RCC_AHB1ENR_BKPSRAMEN               :constant word :=16#00040000#;
   RCC_AHB1ENR_CCMDATARAMEN            :constant word :=16#00100000#;
   RCC_AHB1ENR_DMA1EN                  :constant word :=16#00200000#;
   RCC_AHB1ENR_DMA2EN                  :constant word :=16#00400000#;

   RCC_AHB1ENR_ETHMACEN                :constant word :=16#02000000#;
   RCC_AHB1ENR_ETHMACTXEN              :constant word :=16#04000000#;
   RCC_AHB1ENR_ETHMACRXEN              :constant word :=16#08000000#;
   RCC_AHB1ENR_ETHMACPTPEN             :constant word :=16#10000000#;
   RCC_AHB1ENR_OTGHSEN                 :constant word :=16#20000000#;
   RCC_AHB1ENR_OTGHSULPIEN             :constant word :=16#40000000#;

-- /********************  Bit definition for RCC_AHB2ENR register  ***************/
   RCC_AHB2ENR_DCMIEN                  :constant word :=16#00000001#;
   RCC_AHB2ENR_RNGEN                   :constant word :=16#00000040#;
   RCC_AHB2ENR_OTGFSEN                 :constant word :=16#00000080#;

-- /********************  Bit definition for RCC_AHB3ENR register  ***************/

   RCC_AHB3ENR_FSMCEN                  :constant word :=16#00000001#;

-- /********************  Bit definition for RCC_APB1ENR register  ***************/
   RCC_APB1ENR_TIM2EN                  :constant word :=16#00000001#;
   RCC_APB1ENR_TIM3EN                  :constant word :=16#00000002#;
   RCC_APB1ENR_TIM4EN                  :constant word :=16#00000004#;
   RCC_APB1ENR_TIM5EN                  :constant word :=16#00000008#;
   RCC_APB1ENR_TIM6EN                  :constant word :=16#00000010#;
   RCC_APB1ENR_TIM7EN                  :constant word :=16#00000020#;
   RCC_APB1ENR_TIM12EN                 :constant word :=16#00000040#;
   RCC_APB1ENR_TIM13EN                 :constant word :=16#00000080#;
   RCC_APB1ENR_TIM14EN                 :constant word :=16#00000100#;
   RCC_APB1ENR_WWDGEN                  :constant word :=16#00000800#;
   RCC_APB1ENR_SPI2EN                  :constant word :=16#00004000#;
   RCC_APB1ENR_SPI3EN                  :constant word :=16#00008000#;
   RCC_APB1ENR_USART2EN                :constant word :=16#00020000#;
   RCC_APB1ENR_USART3EN                :constant word :=16#00040000#;
   RCC_APB1ENR_UART4EN                 :constant word :=16#00080000#;
   RCC_APB1ENR_UART5EN                 :constant word :=16#00100000#;
   RCC_APB1ENR_I2C1EN                  :constant word :=16#00200000#;
   RCC_APB1ENR_I2C2EN                  :constant word :=16#00400000#;
   RCC_APB1ENR_I2C3EN                  :constant word :=16#00800000#;
   RCC_APB1ENR_CAN1EN                  :constant word :=16#02000000#;
   RCC_APB1ENR_CAN2EN                  :constant word :=16#04000000#;
   RCC_APB1ENR_PWREN                   :constant word :=16#10000000#;
   RCC_APB1ENR_DACEN                   :constant word :=16#20000000#;

-- /********************  Bit definition for RCC_APB2ENR register  ***************/
   RCC_APB2ENR_TIM1EN                  :constant word :=16#00000001#;
   RCC_APB2ENR_TIM8EN                  :constant word :=16#00000002#;
   RCC_APB2ENR_USART1EN                :constant word :=16#00000010#;
   RCC_APB2ENR_USART6EN                :constant word :=16#00000020#;
   RCC_APB2ENR_ADC1EN                  :constant word :=16#00000100#;
   RCC_APB2ENR_ADC2EN                  :constant word :=16#00000200#;
   RCC_APB2ENR_ADC3EN                  :constant word :=16#00000400#;
   RCC_APB2ENR_SDIOEN                  :constant word :=16#00000800#;
   RCC_APB2ENR_SPI1EN                  :constant word :=16#00001000#;
   RCC_APB2ENR_SYSCFGEN                :constant word :=16#00004000#;
   RCC_APB2ENR_TIM9EN                  :constant word :=16#00010000#;
   RCC_APB2ENR_TIM10EN                 :constant word :=16#00020000#;
   RCC_APB2ENR_TIM11EN                 :constant word :=16#00040000#;
   RCC_APB2ENR_SPI5EN                  :constant word :=16#00100000#;
   RCC_APB2ENR_SPI6EN                  :constant word :=16#00200000#;

-- /********************  Bit definition for RCC_AHB1LPENR register  *************/
   RCC_AHB1LPENR_GPIOALPEN             :constant word :=16#00000001#;
   RCC_AHB1LPENR_GPIOBLPEN             :constant word :=16#00000002#;
   RCC_AHB1LPENR_GPIOCLPEN             :constant word :=16#00000004#;
   RCC_AHB1LPENR_GPIODLPEN             :constant word :=16#00000008#;
   RCC_AHB1LPENR_GPIOELPEN             :constant word :=16#00000010#;
   RCC_AHB1LPENR_GPIOFLPEN             :constant word :=16#00000020#;
   RCC_AHB1LPENR_GPIOGLPEN             :constant word :=16#00000040#;
   RCC_AHB1LPENR_GPIOHLPEN             :constant word :=16#00000080#;
   RCC_AHB1LPENR_GPIOILPEN             :constant word :=16#00000100#;
   RCC_AHB1LPENR_CRCLPEN               :constant word :=16#00001000#;
   RCC_AHB1LPENR_FLITFLPEN             :constant word :=16#00008000#;
   RCC_AHB1LPENR_SRAM1LPEN             :constant word :=16#00010000#;
   RCC_AHB1LPENR_SRAM2LPEN             :constant word :=16#00020000#;
   RCC_AHB1LPENR_BKPSRAMLPEN           :constant word :=16#00040000#;
   RCC_AHB1LPENR_DMA1LPEN              :constant word :=16#00200000#;
   RCC_AHB1LPENR_DMA2LPEN              :constant word :=16#00400000#;
   RCC_AHB1LPENR_ETHMACLPEN            :constant word :=16#02000000#;
   RCC_AHB1LPENR_ETHMACTXLPEN          :constant word :=16#04000000#;
   RCC_AHB1LPENR_ETHMACRXLPEN          :constant word :=16#08000000#;
   RCC_AHB1LPENR_ETHMACPTPLPEN         :constant word :=16#10000000#;
   RCC_AHB1LPENR_OTGHSLPEN             :constant word :=16#20000000#;
   RCC_AHB1LPENR_OTGHSULPILPEN         :constant word :=16#40000000#;

-- /********************  Bit definition for RCC_AHB2LPENR register  *************/
   RCC_AHB2LPENR_DCMILPEN              :constant word :=16#00000001#;
   RCC_AHB2LPENR_RNGLPEN               :constant word :=16#00000040#;
   RCC_AHB2LPENR_OTGFSLPEN             :constant word :=16#00000080#;

-- /********************  Bit definition for RCC_AHB3LPENR register  *************/

   RCC_AHB3LPENR_FSMCLPEN              :constant word :=16#00000001#;

-- /********************  Bit definition for RCC_APB1LPENR register  *************/
   RCC_APB1LPENR_TIM2LPEN              :constant word :=16#00000001#;
   RCC_APB1LPENR_TIM3LPEN              :constant word :=16#00000002#;
   RCC_APB1LPENR_TIM4LPEN              :constant word :=16#00000004#;
   RCC_APB1LPENR_TIM5LPEN              :constant word :=16#00000008#;
   RCC_APB1LPENR_TIM6LPEN              :constant word :=16#00000010#;
   RCC_APB1LPENR_TIM7LPEN              :constant word :=16#00000020#;
   RCC_APB1LPENR_TIM12LPEN             :constant word :=16#00000040#;
   RCC_APB1LPENR_TIM13LPEN             :constant word :=16#00000080#;
   RCC_APB1LPENR_TIM14LPEN             :constant word :=16#00000100#;
   RCC_APB1LPENR_WWDGLPEN              :constant word :=16#00000800#;
   RCC_APB1LPENR_SPI2LPEN              :constant word :=16#00004000#;
   RCC_APB1LPENR_SPI3LPEN              :constant word :=16#00008000#;
   RCC_APB1LPENR_USART2LPEN            :constant word :=16#00020000#;
   RCC_APB1LPENR_USART3LPEN            :constant word :=16#00040000#;
   RCC_APB1LPENR_UART4LPEN             :constant word :=16#00080000#;
   RCC_APB1LPENR_UART5LPEN             :constant word :=16#00100000#;
   RCC_APB1LPENR_I2C1LPEN              :constant word :=16#00200000#;
   RCC_APB1LPENR_I2C2LPEN              :constant word :=16#00400000#;
   RCC_APB1LPENR_I2C3LPEN              :constant word :=16#00800000#;
   RCC_APB1LPENR_CAN1LPEN              :constant word :=16#02000000#;
   RCC_APB1LPENR_CAN2LPEN              :constant word :=16#04000000#;
   RCC_APB1LPENR_PWRLPEN               :constant word :=16#10000000#;
   RCC_APB1LPENR_DACLPEN               :constant word :=16#20000000#;

-- /********************  Bit definition for RCC_APB2LPENR register  *************/
   RCC_APB2LPENR_TIM1LPEN              :constant word :=16#00000001#;
   RCC_APB2LPENR_TIM8LPEN              :constant word :=16#00000002#;
   RCC_APB2LPENR_USART1LPEN            :constant word :=16#00000010#;
   RCC_APB2LPENR_USART6LPEN            :constant word :=16#00000020#;
   RCC_APB2LPENR_ADC1LPEN              :constant word :=16#00000100#;
   RCC_APB2LPENR_ADC2LPEN              :constant word :=16#00000200#;
   RCC_APB2LPENR_ADC3LPEN              :constant word :=16#00000400#;
   RCC_APB2LPENR_SDIOLPEN              :constant word :=16#00000800#;
   RCC_APB2LPENR_SPI1LPEN              :constant word :=16#00001000#;
   RCC_APB2LPENR_SYSCFGLPEN            :constant word :=16#00004000#;
   RCC_APB2LPENR_TIM9LPEN              :constant word :=16#00010000#;
   RCC_APB2LPENR_TIM10LPEN             :constant word :=16#00020000#;
   RCC_APB2LPENR_TIM11LPEN             :constant word :=16#00040000#;

-- /********************  Bit definition for RCC_BDCR register  ******************/
   RCC_BDCR_LSEON                      :constant word :=16#00000001#;
   RCC_BDCR_LSERDY                     :constant word :=16#00000002#;
   RCC_BDCR_LSEBYP                     :constant word :=16#00000004#;

   RCC_BDCR_RTCSEL                    :constant word :=16#00000300#;
   RCC_BDCR_RTCSEL_0                  :constant word :=16#00000100#;
   RCC_BDCR_RTCSEL_1                  :constant word :=16#00000200#;

   RCC_BDCR_RTCEN                      :constant word :=16#00008000#;
   RCC_BDCR_BDRST                      :constant word :=16#00010000#;

-- /********************  Bit definition for RCC_CSR register  *******************/
   RCC_CSR_LSION                       :constant word :=16#00000001#;
   RCC_CSR_LSIRDY                      :constant word :=16#00000002#;
   RCC_CSR_RMVF                        :constant word :=16#01000000#;
   RCC_CSR_BORRSTF                     :constant word :=16#02000000#;
   RCC_CSR_PADRSTF                     :constant word :=16#04000000#;
   RCC_CSR_PORRSTF                     :constant word :=16#08000000#;
   RCC_CSR_SFTRSTF                     :constant word :=16#10000000#;
   RCC_CSR_WDGRSTF                     :constant word :=16#20000000#;
   RCC_CSR_WWDGRSTF                    :constant word :=16#40000000#;
   RCC_CSR_LPWRRSTF                    :constant word :=16#80000000#;

-- /********************  Bit definition for RCC_SSCGR register  *****************/
   RCC_SSCGR_MODPER                    :constant word :=16#00001FFF#;
   RCC_SSCGR_INCSTEP                   :constant word :=16#0FFFE000#;
   RCC_SSCGR_SPREADSEL                 :constant word :=16#40000000#;
   RCC_SSCGR_SSCGEN                    :constant word :=16#80000000#;

-- /********************  Bit definition for RCC_PLLI2SCFGR register  ************/
   RCC_PLLI2SCFGR_PLLI2SN              :constant word :=16#00007FC0#;
   RCC_PLLI2SCFGR_PLLI2SN_0            :constant word :=16#00000040#;
   RCC_PLLI2SCFGR_PLLI2SN_1            :constant word :=16#00000080#;
   RCC_PLLI2SCFGR_PLLI2SN_2            :constant word :=16#00000100#;
   RCC_PLLI2SCFGR_PLLI2SN_3            :constant word :=16#00000200#;
   RCC_PLLI2SCFGR_PLLI2SN_4            :constant word :=16#00000400#;
   RCC_PLLI2SCFGR_PLLI2SN_5            :constant word :=16#00000800#;
   RCC_PLLI2SCFGR_PLLI2SN_6            :constant word :=16#00001000#;
   RCC_PLLI2SCFGR_PLLI2SN_7            :constant word :=16#00002000#;
   RCC_PLLI2SCFGR_PLLI2SN_8            :constant word :=16#00004000#;

   RCC_PLLI2SCFGR_PLLI2SR              :constant word :=16#70000000#;
   RCC_PLLI2SCFGR_PLLI2SR_0            :constant word :=16#10000000#;
   RCC_PLLI2SCFGR_PLLI2SR_1            :constant word :=16#20000000#;
   RCC_PLLI2SCFGR_PLLI2SR_2            :constant word :=16#40000000#;
  
   
      end stm32f407.registers.rcc;
