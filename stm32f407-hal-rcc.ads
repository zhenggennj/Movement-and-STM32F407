pragma Ada_2012;
pragma Style_Checks (Off);

--  with Interfaces.C; use Interfaces.C;
--  with HalDriver.ustdint_h;
with stm32f407.hal.rcc_ex;
--  with HalDriver.stm32f4xx_hal_def_h;

package stm32f407.hal.rcc is

type RCC_OSCILLATORTYPE_t is (RCC_OSCILLATORTYPE_NONE,
RCC_OSCILLATORTYPE_HSE,
RCC_OSCILLATORTYPE_HSI,
RCC_OSCILLATORTYPE_LSE,
RCC_OSCILLATORTYPE_LSI
) with size=>32;
for RCC_OSCILLATORTYPE_t use (RCC_OSCILLATORTYPE_NONE => (          16#00000000#),
RCC_OSCILLATORTYPE_HSE => (          16#00000001#),
RCC_OSCILLATORTYPE_HSI => (          16#00000002#),
RCC_OSCILLATORTYPE_LSE => (          16#00000004#),
RCC_OSCILLATORTYPE_LSI => (          16#00000008#)
) ;
type RCC_HSE_t is (RCC_HSE_OFF,
RCC_HSE_ON,
RCC_HSE_BYPASS
) with size=>32;
for RCC_HSE_t use (RCC_HSE_OFF => (         16#00#),
RCC_HSE_ON => (         16#01#),
RCC_HSE_BYPASS => (         16#05#)
) ;
type RCC_LSE_t is (RCC_LSE_OFF,
RCC_LSE_ON,
RCC_LSE_BYPASS
) with size=>32;
for RCC_LSE_t use (RCC_LSE_OFF => (         16#00#),
RCC_LSE_ON => (         16#01#),
RCC_LSE_BYPASS => (         16#05#)
) ;
type RCC_HSI_t is (RCC_HSI_OFF,
RCC_HSI_ON
) with size=>32;
for RCC_HSI_t use (RCC_HSI_OFF => (         16#00#),
RCC_HSI_ON => (         16#01#)
) ;
RCC_HSICALIBRATION_DEFAULT: constant  Word := (          16#10#);
type RCC_LSI_t is (RCC_LSI_OFF,
RCC_LSI_ON
) with size=>32;
for RCC_LSI_t use (RCC_LSI_OFF => (         16#00#),
RCC_LSI_ON => (         16#01#)
) ;
type RCC_PLL_t is (RCC_PLL_NONE,
RCC_PLL_OFF,
RCC_PLL_ON
) with size=>32;
for RCC_PLL_t use (RCC_PLL_NONE => (         16#00#),
RCC_PLL_OFF => (         16#01#),
RCC_PLL_ON => (         16#02#)
) ;
type RCC_PLLP_t is (RCC_PLLP_DIV2,
RCC_PLLP_DIV4,
RCC_PLLP_DIV6,
RCC_PLLP_DIV8
) with size=>32;
for RCC_PLLP_t use (RCC_PLLP_DIV2 => (          16#00000002#),
RCC_PLLP_DIV4 => (          16#00000004#),
RCC_PLLP_DIV6 => (          16#00000006#),
RCC_PLLP_DIV8 => (          16#00000008#)
) ;
type RCC_PLLSOURCE_t is (RCC_PLLSOURCE_HSI,
RCC_PLLSOURCE_HSE
) with size=>32;
for RCC_PLLSOURCE_t use (RCC_PLLSOURCE_HSI => RCC_PLLCFGR_PLLSRC_HSI,
RCC_PLLSOURCE_HSE => RCC_PLLCFGR_PLLSRC_HSE
) ;
type RCC_CLOCKTYPE_t is (RCC_CLOCKTYPE_SYSCLK,
RCC_CLOCKTYPE_HCLK,
RCC_CLOCKTYPE_PCLK1,
RCC_CLOCKTYPE_PCLK2
) with size=>32;
for RCC_CLOCKTYPE_t use (RCC_CLOCKTYPE_SYSCLK => (          16#00000001#),
RCC_CLOCKTYPE_HCLK => (          16#00000002#),
RCC_CLOCKTYPE_PCLK1 => (          16#00000004#),
RCC_CLOCKTYPE_PCLK2 => (          16#00000008#)
) ;
type RCC_SYSCLKSOURCE_t is (RCC_SYSCLKSOURCE_HSI,
RCC_SYSCLKSOURCE_HSE,
RCC_SYSCLKSOURCE_PLLCLK,
RCC_SYSCLKSOURCE_PLLRCLK,
RCC_SYSCLKSOURCE_STATUS_HSI,
RCC_SYSCLKSOURCE_STATUS_HSE,
RCC_SYSCLKSOURCE_STATUS_PLLCLK,
RCC_SYSCLKSOURCE_STATUS_PLLRCLK
) with size=>32;
for RCC_SYSCLKSOURCE_t use (RCC_SYSCLKSOURCE_HSI => RCC_CFGR_SW_HSI,
RCC_SYSCLKSOURCE_HSE => RCC_CFGR_SW_HSE,
RCC_SYSCLKSOURCE_PLLCLK => RCC_CFGR_SW_PLL,
RCC_SYSCLKSOURCE_PLLRCLK => (          (RCC_CFGR_SW_0  or  RCC_CFGR_SW_1)),
RCC_SYSCLKSOURCE_STATUS_HSI => RCC_CFGR_SWS_HSI,
RCC_SYSCLKSOURCE_STATUS_HSE => RCC_CFGR_SWS_HSE,
RCC_SYSCLKSOURCE_STATUS_PLLCLK => RCC_CFGR_SWS_PLL,
RCC_SYSCLKSOURCE_STATUS_PLLRCLK => (          (RCC_CFGR_SWS_0  or  RCC_CFGR_SWS_1))
) ;
type RCC_SYSCLK_t is (RCC_SYSCLK_DIV1,
RCC_SYSCLK_DIV2,
RCC_SYSCLK_DIV4,
RCC_SYSCLK_DIV8,
RCC_SYSCLK_DIV16,
RCC_SYSCLK_DIV64,
RCC_SYSCLK_DIV128,
RCC_SYSCLK_DIV256,
RCC_SYSCLK_DIV512
) with size=>32;
for RCC_SYSCLK_t use (RCC_SYSCLK_DIV1 => RCC_CFGR_HPRE_DIV1,
RCC_SYSCLK_DIV2 => RCC_CFGR_HPRE_DIV2,
RCC_SYSCLK_DIV4 => RCC_CFGR_HPRE_DIV4,
RCC_SYSCLK_DIV8 => RCC_CFGR_HPRE_DIV8,
RCC_SYSCLK_DIV16 => RCC_CFGR_HPRE_DIV16,
RCC_SYSCLK_DIV64 => RCC_CFGR_HPRE_DIV64,
RCC_SYSCLK_DIV128 => RCC_CFGR_HPRE_DIV128,
RCC_SYSCLK_DIV256 => RCC_CFGR_HPRE_DIV256,
RCC_SYSCLK_DIV512 => RCC_CFGR_HPRE_DIV512
) ;
type RCC_HCLK_t is (RCC_HCLK_DIV1,
RCC_HCLK_DIV2,
RCC_HCLK_DIV4,
RCC_HCLK_DIV8,
RCC_HCLK_DIV16
) with size=>32;
for RCC_HCLK_t use (RCC_HCLK_DIV1 => RCC_CFGR_PPRE1_DIV1,
RCC_HCLK_DIV2 => RCC_CFGR_PPRE1_DIV2,
RCC_HCLK_DIV4 => RCC_CFGR_PPRE1_DIV4,
RCC_HCLK_DIV8 => RCC_CFGR_PPRE1_DIV8,
RCC_HCLK_DIV16 => RCC_CFGR_PPRE1_DIV16
) ;
type RCC_RTCCLKSOURCE_t is (RCC_RTCCLKSOURCE_LSE,
RCC_RTCCLKSOURCE_LSI,
RCC_RTCCLKSOURCE_HSE_DIV2,
RCC_RTCCLKSOURCE_HSE_DIV3,
RCC_RTCCLKSOURCE_HSE_DIV4,
RCC_RTCCLKSOURCE_HSE_DIV5,
RCC_RTCCLKSOURCE_HSE_DIV6,
RCC_RTCCLKSOURCE_HSE_DIV7,
RCC_RTCCLKSOURCE_HSE_DIV8,
RCC_RTCCLKSOURCE_HSE_DIV9,
RCC_RTCCLKSOURCE_HSE_DIV10,
RCC_RTCCLKSOURCE_HSE_DIV11,
RCC_RTCCLKSOURCE_HSE_DIV12,
RCC_RTCCLKSOURCE_HSE_DIV13,
RCC_RTCCLKSOURCE_HSE_DIV14,
RCC_RTCCLKSOURCE_HSE_DIV15,
RCC_RTCCLKSOURCE_HSE_DIV16,
RCC_RTCCLKSOURCE_HSE_DIV17,
RCC_RTCCLKSOURCE_HSE_DIV18,
RCC_RTCCLKSOURCE_HSE_DIV19,
RCC_RTCCLKSOURCE_HSE_DIV20,
RCC_RTCCLKSOURCE_HSE_DIV21,
RCC_RTCCLKSOURCE_HSE_DIV22,
RCC_RTCCLKSOURCE_HSE_DIV23,
RCC_RTCCLKSOURCE_HSE_DIV24,
RCC_RTCCLKSOURCE_HSE_DIV25,
RCC_RTCCLKSOURCE_HSE_DIV26,
RCC_RTCCLKSOURCE_HSE_DIV27,
RCC_RTCCLKSOURCE_HSE_DIV28,
RCC_RTCCLKSOURCE_HSE_DIV29,
RCC_RTCCLKSOURCE_HSE_DIV30,
RCC_RTCCLKSOURCE_HSE_DIV31
) with size=>32;
for RCC_RTCCLKSOURCE_t use (RCC_RTCCLKSOURCE_LSE => (          16#00000100#),
RCC_RTCCLKSOURCE_LSI => (          16#00000200#),
RCC_RTCCLKSOURCE_HSE_DIV2 => (          16#00020300#),
RCC_RTCCLKSOURCE_HSE_DIV3 => (          16#00030300#),
RCC_RTCCLKSOURCE_HSE_DIV4 => (          16#00040300#),
RCC_RTCCLKSOURCE_HSE_DIV5 => (          16#00050300#),
RCC_RTCCLKSOURCE_HSE_DIV6 => (          16#00060300#),
RCC_RTCCLKSOURCE_HSE_DIV7 => (          16#00070300#),
RCC_RTCCLKSOURCE_HSE_DIV8 => (          16#00080300#),
RCC_RTCCLKSOURCE_HSE_DIV9 => (          16#00090300#),
RCC_RTCCLKSOURCE_HSE_DIV10 => (          16#000A0300#),
RCC_RTCCLKSOURCE_HSE_DIV11 => (          16#000B0300#),
RCC_RTCCLKSOURCE_HSE_DIV12 => (          16#000C0300#),
RCC_RTCCLKSOURCE_HSE_DIV13 => (          16#000D0300#),
RCC_RTCCLKSOURCE_HSE_DIV14 => (          16#000E0300#),
RCC_RTCCLKSOURCE_HSE_DIV15 => (          16#000F0300#),
RCC_RTCCLKSOURCE_HSE_DIV16 => (          16#00100300#),
RCC_RTCCLKSOURCE_HSE_DIV17 => (          16#00110300#),
RCC_RTCCLKSOURCE_HSE_DIV18 => (          16#00120300#),
RCC_RTCCLKSOURCE_HSE_DIV19 => (          16#00130300#),
RCC_RTCCLKSOURCE_HSE_DIV20 => (          16#00140300#),
RCC_RTCCLKSOURCE_HSE_DIV21 => (          16#00150300#),
RCC_RTCCLKSOURCE_HSE_DIV22 => (          16#00160300#),
RCC_RTCCLKSOURCE_HSE_DIV23 => (          16#00170300#),
RCC_RTCCLKSOURCE_HSE_DIV24 => (          16#00180300#),
RCC_RTCCLKSOURCE_HSE_DIV25 => (          16#00190300#),
RCC_RTCCLKSOURCE_HSE_DIV26 => (          16#001A0300#),
RCC_RTCCLKSOURCE_HSE_DIV27 => (          16#001B0300#),
RCC_RTCCLKSOURCE_HSE_DIV28 => (          16#001C0300#),
RCC_RTCCLKSOURCE_HSE_DIV29 => (          16#001D0300#),
RCC_RTCCLKSOURCE_HSE_DIV30 => (          16#001E0300#),
RCC_RTCCLKSOURCE_HSE_DIV31 => (          16#001F0300#)
) ;
RCC_MCO1: constant  Word := (          16#00000000#);
RCC_MCO2: constant  Word := (          16#00000001#);
type RCC_MCO1SOURCE_t is (RCC_MCO1SOURCE_HSI,
RCC_MCO1SOURCE_LSE,
RCC_MCO1SOURCE_HSE,
RCC_MCO1SOURCE_PLLCLK
) with size=>32;
for RCC_MCO1SOURCE_t use (RCC_MCO1SOURCE_HSI => (          16#00000000#),
RCC_MCO1SOURCE_LSE => RCC_CFGR_MCO1_0,
RCC_MCO1SOURCE_HSE => RCC_CFGR_MCO1_1,
RCC_MCO1SOURCE_PLLCLK => RCC_CFGR_MCO1
) ;
type RCC_MCODIV_t is (RCC_MCODIV_1,
RCC_MCODIV_2,
RCC_MCODIV_3,
RCC_MCODIV_4,
RCC_MCODIV_5
) with size=>32;
for RCC_MCODIV_t use (RCC_MCODIV_1 => (          16#00000000#),
RCC_MCODIV_2 => RCC_CFGR_MCO1PRE_2,
RCC_MCODIV_3 => (          RCC_CFGR_MCO1PRE_0  or  RCC_CFGR_MCO1PRE_2),
RCC_MCODIV_4 => (          RCC_CFGR_MCO1PRE_1  or  RCC_CFGR_MCO1PRE_2),
RCC_MCODIV_5 => RCC_CFGR_MCO1PRE
) ;
type RCC_IT_t is (RCC_IT_LSIRDY,
RCC_IT_LSERDY,
RCC_IT_HSIRDY,
RCC_IT_HSERDY,
RCC_IT_PLLRDY,
RCC_IT_PLLI2SRDY,
RCC_IT_CSS
) with size=>32;
for RCC_IT_t use (RCC_IT_LSIRDY => (         16#01#),
RCC_IT_LSERDY => (         16#02#),
RCC_IT_HSIRDY => (         16#04#),
RCC_IT_HSERDY => (         16#08#),
RCC_IT_PLLRDY => (         16#10#),
RCC_IT_PLLI2SRDY => (         16#20#),
RCC_IT_CSS => (         16#80#)
) ;
type RCC_FLAG_t is (RCC_FLAG_HSIRDY,
RCC_FLAG_HSERDY,
RCC_FLAG_PLLRDY,
RCC_FLAG_PLLI2SRDY,
RCC_FLAG_LSERDY,
RCC_FLAG_LSIRDY,
RCC_FLAG_BORRST,
RCC_FLAG_PINRST,
RCC_FLAG_PORRST,
RCC_FLAG_SFTRST,
RCC_FLAG_IWDGRST,
RCC_FLAG_WWDGRST,
RCC_FLAG_LPWRRST,
RCC_FLAG_MASK
) with size=>32;
for RCC_FLAG_t use (RCC_FLAG_HSIRDY => (         16#21#),
RCC_FLAG_HSERDY => (         16#31#),
RCC_FLAG_PLLRDY => (         16#39#),
RCC_FLAG_PLLI2SRDY => (         16#3B#),
RCC_FLAG_LSERDY => (         16#41#),
RCC_FLAG_LSIRDY => (         16#61#),
RCC_FLAG_BORRST => (         16#79#),
RCC_FLAG_PINRST => (         16#7A#),
RCC_FLAG_PORRST => (         16#7B#),
RCC_FLAG_SFTRST => (         16#7C#),
RCC_FLAG_IWDGRST => (         16#7D#),
RCC_FLAG_WWDGRST => (         16#7E#),
RCC_FLAG_LPWRRST => (         16#7F#),
RCC_FLAG_MASK => (         16#1F#)
) ;
RCC_OFFSET: constant  Word := (RCC_BASE - PERIPH_BASE);
RCC_CR_OFFSET: constant  Word := (RCC_OFFSET + 16#00#);
RCC_HSION_BIT_NUMBER: constant  Word := 16#00#;
RCC_CR_HSION_BB: constant  Word := (PERIPH_BB_BASE + (RCC_CR_OFFSET * 32 ) + (RCC_HSION_BIT_NUMBER * 4 ));
RCC_CSSON_BIT_NUMBER: constant  Word := 16#13#;
RCC_CR_CSSON_BB: constant  Word := (PERIPH_BB_BASE + (RCC_CR_OFFSET * 32 ) + (RCC_CSSON_BIT_NUMBER * 4 ));
RCC_PLLON_BIT_NUMBER: constant  Word := 16#18#;
RCC_CR_PLLON_BB: constant  Word := (PERIPH_BB_BASE + (RCC_CR_OFFSET * 32 ) + (RCC_PLLON_BIT_NUMBER * 4 ));
RCC_BDCR_OFFSET: constant  Word := (RCC_OFFSET + 16#70#);
RCC_RTCEN_BIT_NUMBER: constant  Word := 16#0F#;
RCC_BDCR_RTCEN_BB: constant  Word := (PERIPH_BB_BASE + (RCC_BDCR_OFFSET * 32 ) + (RCC_RTCEN_BIT_NUMBER * 4 ));
RCC_BDRST_BIT_NUMBER: constant  Word := 16#10#;
RCC_BDCR_BDRST_BB: constant  Word := (PERIPH_BB_BASE + (RCC_BDCR_OFFSET * 32 ) + (RCC_BDRST_BIT_NUMBER * 4 ));
RCC_CSR_OFFSET: constant  Word := (RCC_OFFSET + 16#74#);
RCC_LSION_BIT_NUMBER: constant  Word := 16#00#;
RCC_CSR_LSION_BB: constant  Word := (PERIPH_BB_BASE + (RCC_CSR_OFFSET * 32 ) + (RCC_LSION_BIT_NUMBER * 4 ));
RCC_CR_BYTE2_ADDRESS: constant  Word := (          16#40023802#);
type RCC_CIR_t is (RCC_CIR_BYTE1_ADDRESS,
RCC_CIR_BYTE2_ADDRESS
) with size=>32;
for RCC_CIR_t use (RCC_CIR_BYTE1_ADDRESS => (          (RCC_BASE + 16#0C# + 16#01#)),
RCC_CIR_BYTE2_ADDRESS => (          (RCC_BASE + 16#0C# + 16#02#))
) ;
RCC_BDCR_BYTE0_ADDRESS: constant  Word := (PERIPH_BASE + RCC_BDCR_OFFSET);
RCC_DBP_TIMEOUT_VALUE: constant  Word := (          2 );
RCC_LSE_TIMEOUT_VALUE: constant  Word := LSE_STARTUP_TIMEOUT;
HSE_TIMEOUT_VALUE: constant  Word := HSE_STARTUP_TIMEOUT;
HSI_TIMEOUT_VALUE: constant  Word := (          2 );
LSI_TIMEOUT_VALUE: constant  Word := (          2 );
   --  arg-macro: function IS_RCC_OSCILLATORTYPE (OSCILLATOR)
   --    return (OSCILLATOR) <= 15U;
   --  arg-macro: function IS_RCC_HSE (HSE)
   --    return ((HSE) = RCC_HSE_OFF)  or else  ((HSE) = RCC_HSE_ON)  or else  ((HSE) = RCC_HSE_BYPASS);
   --  arg-macro: function IS_RCC_LSE (LSE)
   --    return ((LSE) = RCC_LSE_OFF)  or else  ((LSE) = RCC_LSE_ON)  or else  ((LSE) = RCC_LSE_BYPASS);
   --  arg-macro: function IS_RCC_HSI (HSI)
   --    return ((HSI) = RCC_HSI_OFF)  or else  ((HSI) = RCC_HSI_ON);
   --  arg-macro: function IS_RCC_LSI (LSI)
   --    return ((LSI) = RCC_LSI_OFF)  or else  ((LSI) = RCC_LSI_ON);
   --  arg-macro: function IS_RCC_PLL (PLL)
   --    return ((PLL) = RCC_PLL_NONE)  or else ((PLL) = RCC_PLL_OFF)  or else  ((PLL) = RCC_PLL_ON);
   --  arg-macro: function IS_RCC_PLLSOURCE (SOURCE)
   --    return ((SOURCE) = RCC_PLLSOURCE_HSI)  or else  ((SOURCE) = RCC_PLLSOURCE_HSE);
   --  arg-macro: function IS_RCC_SYSCLKSOURCE (SOURCE)
   --    return ((SOURCE) = RCC_SYSCLKSOURCE_HSI)  or else  ((SOURCE) = RCC_SYSCLKSOURCE_HSE)  or else  ((SOURCE) = RCC_SYSCLKSOURCE_PLLCLK)  or else  ((SOURCE) = RCC_SYSCLKSOURCE_PLLRCLK);
   --  arg-macro: function IS_RCC_RTCCLKSOURCE (__SOURCE__)
   --    return ((__SOURCE__) = RCC_RTCCLKSOURCE_LSE)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_LSI)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV2)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV3)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV4)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV5)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV6)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV7)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV8)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV9)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV10)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV11)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV12)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV13)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV14)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV15)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV16)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV17)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV18)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV19)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV20)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV21)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV22)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV23)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV24)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV25)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV26)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV27)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV28)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV29)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV30)  or else  ((__SOURCE__) = RCC_RTCCLKSOURCE_HSE_DIV31);
   --  arg-macro: function IS_RCC_PLLM_VALUE (VALUE)
   --    return (VALUE) <= 63U;
   --  arg-macro: function IS_RCC_PLLP_VALUE (VALUE)
   --    return ((VALUE) = 2U)  or else  ((VALUE) = 4U)  or else  ((VALUE) = 6U)  or else  ((VALUE) = 8U);
   --  arg-macro: function IS_RCC_PLLQ_VALUE (VALUE)
   --    return (4U <= (VALUE))  and then  ((VALUE) <= 15U);
   --  arg-macro: function IS_RCC_HCLK (HCLK)
   --    return ((HCLK) = RCC_SYSCLK_DIV1)  or else  ((HCLK) = RCC_SYSCLK_DIV2)  or else  ((HCLK) = RCC_SYSCLK_DIV4)  or else  ((HCLK) = RCC_SYSCLK_DIV8)  or else  ((HCLK) = RCC_SYSCLK_DIV16)  or else  ((HCLK) = RCC_SYSCLK_DIV64)  or else  ((HCLK) = RCC_SYSCLK_DIV128)  or else  ((HCLK) = RCC_SYSCLK_DIV256)  or else  ((HCLK) = RCC_SYSCLK_DIV512);
   --  arg-macro: function IS_RCC_CLOCKTYPE (CLK)
   --    return (1U <= (CLK))  and then  ((CLK) <= 15U);
   --  arg-macro: function IS_RCC_PCLK (PCLK)
   --    return ((PCLK) = RCC_HCLK_DIV1)  or else  ((PCLK) = RCC_HCLK_DIV2)  or else  ((PCLK) = RCC_HCLK_DIV4)  or else  ((PCLK) = RCC_HCLK_DIV8)  or else  ((PCLK) = RCC_HCLK_DIV16);
   --  arg-macro: function IS_RCC_MCO (MCOx)
   --    return ((MCOx) = RCC_MCO1)  or else  ((MCOx) = RCC_MCO2);
   --  arg-macro: function IS_RCC_MCO1SOURCE (SOURCE)
   --    return ((SOURCE) = RCC_MCO1SOURCE_HSI)  or else  ((SOURCE) = RCC_MCO1SOURCE_LSE)  or else  ((SOURCE) = RCC_MCO1SOURCE_HSE)  or else  ((SOURCE) = RCC_MCO1SOURCE_PLLCLK);
   --  arg-macro: function IS_RCC_MCODIV (DIV)
   --    return ((DIV) = RCC_MCODIV_1)  or else  ((DIV) = RCC_MCODIV_2)  or else  ((DIV) = RCC_MCODIV_3)  or else  ((DIV) = RCC_MCODIV_4)  or else  ((DIV) = RCC_MCODIV_5);
   --  arg-macro: function IS_RCC_CALIBRATION_VALUE (VALUE)
   --    return (VALUE) <= 0x1FU;
  --*
  --  ******************************************************************************
  --  * @file    stm32f4xx_hal_rcc.h
  --  * @author  MCD Application Team
  --  * @version V1.5.0
  --  * @date    06-May-2016
  --  * @brief   Header file of RCC HAL module.
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

  -- Define to prevent recursive inclusion ------------------------------------- 
  -- Includes ------------------------------------------------------------------ 
  -- Include RCC HAL Extended module  
  -- (include on top of file since RCC structures are defined in extended file)  
  --* @addtogroup STM32F4xx_HAL_Driver
  --  * @{
  --   

  --* @addtogroup RCC 
  --  * @{
  --   

  -- Exported types ------------------------------------------------------------ 
  --* @defgroup RCC_Exported_Types RCC Exported Types
  --  * @{
  --   

  --*
  --  * @brief  RCC Internal/External Oscillator (HSE, HSI, LSE and LSI) configuration structure definition  
  --   

  --!< The oscillators to be configured.
  --                                      This parameter can be a value of @ref RCC_Oscillator_Type                    

   type RCC_OscInitTypeDef is record
      OscillatorType : aliased Word;  -- Inc/stm32f4xx_hal_rcc.h:71
      HSEState : aliased Word;  -- Inc/stm32f4xx_hal_rcc.h:74
      LSEState : aliased Word;  -- Inc/stm32f4xx_hal_rcc.h:77
      HSIState : aliased Word;  -- Inc/stm32f4xx_hal_rcc.h:80
      HSICalibrationValue : aliased Word;  -- Inc/stm32f4xx_hal_rcc.h:83
      LSIState : aliased Word;  -- Inc/stm32f4xx_hal_rcc.h:86
      PLL : aliased stm32f407.hal.rcc_ex.RCC_PLLInitTypeDef;  -- Inc/stm32f4xx_hal_rcc.h:89
   end record;
   pragma Convention (C_Pass_By_Copy, RCC_OscInitTypeDef);  -- Inc/stm32f4xx_hal_rcc.h:90

   --  skipped anonymous struct anon_71

  --!< The new state of the HSE.
  --                                      This parameter can be a value of @ref RCC_HSE_Config                         

  --!< The new state of the LSE.
  --                                      This parameter can be a value of @ref RCC_LSE_Config                         

  --!< The new state of the HSI.
  --                                      This parameter can be a value of @ref RCC_HSI_Config                         

  --!< The HSI calibration trimming value (default is RCC_HSICALIBRATION_DEFAULT).
  --                                       This parameter must be a number between Min_Data = 0x00 and Max_Data = 0x1F  

  --!< The new state of the LSI.
  --                                      This parameter can be a value of @ref RCC_LSI_Config                         

  --!< PLL structure parameters                                                     
  --*
  --  * @brief  RCC System, AHB and APB busses clock configuration structure definition  
  --   

  --!< The clock to be configured.
  --                                       This parameter can be a value of @ref RCC_System_Clock_Type       

   type RCC_ClkInitTypeDef is record
      ClockType : aliased Word;  -- Inc/stm32f4xx_hal_rcc.h:97
      SYSCLKSource : aliased Word;  -- Inc/stm32f4xx_hal_rcc.h:100
      AHBCLKDivider : aliased Word;  -- Inc/stm32f4xx_hal_rcc.h:103
      APB1CLKDivider : aliased Word;  -- Inc/stm32f4xx_hal_rcc.h:106
      APB2CLKDivider : aliased Word;  -- Inc/stm32f4xx_hal_rcc.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, RCC_ClkInitTypeDef);  -- Inc/stm32f4xx_hal_rcc.h:112

   --  skipped anonymous struct anon_72

  --!< The clock source (SYSCLKS) used as system clock.
  --                                       This parameter can be a value of @ref RCC_System_Clock_Source     

  --!< The AHB clock (HCLK) divider. This clock is derived from the system clock (SYSCLK).
  --                                       This parameter can be a value of @ref RCC_AHB_Clock_Source        

  --!< The APB1 clock (PCLK1) divider. This clock is derived from the AHB clock (HCLK).
  --                                       This parameter can be a value of @ref RCC_APB1_APB2_Clock_Source  

  --!< The APB2 clock (PCLK2) divider. This clock is derived from the AHB clock (HCLK).
  --                                       This parameter can be a value of @ref RCC_APB1_APB2_Clock_Source  

  --*
  --  * @}
  --   

  -- Exported constants -------------------------------------------------------- 
  --* @defgroup RCC_Exported_Constants RCC Exported Constants
  --  * @{
  --   

  --* @defgroup RCC_Oscillator_Type Oscillator Type
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_HSE_Config HSE Config
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_LSE_Config LSE Config
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_HSI_Config HSI Config
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_LSI_Config LSI Config
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_PLL_Config PLL Config
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_PLLP_Clock_Divider PLLP Clock Divider
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_PLL_Clock_Source PLL Clock Source
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_System_Clock_Type System Clock Type
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_System_Clock_Source System Clock Source 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_System_Clock_Source_Status System Clock Source Status
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_AHB_Clock_Source AHB Clock Source
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_APB1_APB2_Clock_Source APB1/APB2 Clock Source
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_RTC_Clock_Source RTC Clock Source
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_MCO_Index MCO Index
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_MCO1_Clock_Source MCO1 Clock Source
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_MCOx_Clock_Prescaler MCOx Clock Prescaler
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_Interrupt Interrupts
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_Flag Flags
  --  *        Elements values convention: 0XXYYYYYb
  --  *           - YYYYY  : Flag position in the register
  --  *           - 0XX  : Register index
  --  *                 - 01: CR register
  --  *                 - 10: BDCR register
  --  *                 - 11: CSR register
  --  * @{
  --   

  -- Flags in the CR register  
  -- Flags in the BDCR register  
  -- Flags in the CSR register  
  --*
  --  * @}
  --   

  --*
  --  * @}
  --   

  -- Exported macro ------------------------------------------------------------ 
  --* @defgroup RCC_Exported_Macros RCC Exported Macros
  --  * @{
  --   

  --* @defgroup RCC_AHB1_Clock_Enable_Disable AHB1 Peripheral Clock Enable Disable
  --  * @brief  Enable or disable the AHB1 peripheral clock.
  --  * @note   After reset, the peripheral clock (used for registers read/write access)
  --  *         is disabled and the application software has to enable this clock before 
  --  *         using it.   
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_AHB1_Peripheral_Clock_Enable_Disable_Status AHB1 Peripheral Clock Enable Disable Status
  --  * @brief  Get the enable or disable status of the AHB1 peripheral clock.
  --  * @note   After reset, the peripheral clock (used for registers read/write access)
  --  *         is disabled and the application software has to enable this clock before
  --  *         using it.
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_APB1_Clock_Enable_Disable APB1 Peripheral Clock Enable Disable
  --  * @brief  Enable or disable the Low Speed APB (APB1) peripheral clock.
  --  * @note   After reset, the peripheral clock (used for registers read/write access)
  --  *         is disabled and the application software has to enable this clock before
  --  *         using it.
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_APB1_Peripheral_Clock_Enable_Disable_Status APB1 Peripheral Clock Enable Disable Status
  --  * @brief  Get the enable or disable status of the APB1 peripheral clock.
  --  * @note   After reset, the peripheral clock (used for registers read/write access)
  --  *         is disabled and the application software has to enable this clock before
  --  *         using it.
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_APB2_Clock_Enable_Disable APB2 Peripheral Clock Enable Disable
  --  * @brief  Enable or disable the High Speed APB (APB2) peripheral clock.
  --  * @note   After reset, the peripheral clock (used for registers read/write access)
  --  *         is disabled and the application software has to enable this clock before 
  --  *         using it.
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_APB2_Peripheral_Clock_Enable_Disable_Status APB2 Peripheral Clock Enable Disable Status
  --  * @brief  Get the enable or disable status of the APB2 peripheral clock.
  --  * @note   After reset, the peripheral clock (used for registers read/write access)
  --  *         is disabled and the application software has to enable this clock before
  --  *         using it.
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_AHB1_Force_Release_Reset AHB1 Force Release Reset 
  --  * @brief  Force or release AHB1 peripheral reset.
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_APB1_Force_Release_Reset APB1 Force Release Reset 
  --  * @brief  Force or release APB1 peripheral reset.
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_APB2_Force_Release_Reset APB2 Force Release Reset 
  --  * @brief  Force or release APB2 peripheral reset.
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_AHB1_LowPower_Enable_Disable AHB1 Peripheral Low Power Enable Disable 
  --  * @brief  Enable or disable the AHB1 peripheral clock during Low Power (Sleep) mode.
  --  * @note   Peripheral clock gating in SLEEP mode can be used to further reduce
  --  *         power consumption.
  --  * @note   After wake-up from SLEEP mode, the peripheral clock is enabled again.
  --  * @note   By default, all peripheral clocks are enabled during SLEEP mode.
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_APB1_LowPower_Enable_Disable APB1 Peripheral Low Power Enable Disable
  --  * @brief  Enable or disable the APB1 peripheral clock during Low Power (Sleep) mode.
  --  * @note   Peripheral clock gating in SLEEP mode can be used to further reduce
  --  *         power consumption.
  --  * @note   After wake-up from SLEEP mode, the peripheral clock is enabled again.
  --  * @note   By default, all peripheral clocks are enabled during SLEEP mode.
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_APB2_LowPower_Enable_Disable APB2 Peripheral Low Power Enable Disable
  --  * @brief  Enable or disable the APB2 peripheral clock during Low Power (Sleep) mode.
  --  * @note   Peripheral clock gating in SLEEP mode can be used to further reduce
  --  *         power consumption.
  --  * @note   After wake-up from SLEEP mode, the peripheral clock is enabled again.
  --  * @note   By default, all peripheral clocks are enabled during SLEEP mode.
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_HSI_Configuration HSI Configuration
  --  * @{   
  --   

  --* @brief  Macros to enable or disable the Internal High Speed oscillator (HSI).
  --  * @note   The HSI is stopped by hardware when entering STOP and STANDBY modes.
  --  *         It is used (enabled by hardware) as system clock source after startup
  --  *         from Reset, wake-up from STOP and STANDBY mode, or in case of failure
  --  *         of the HSE used directly or indirectly as system clock (if the Clock
  --  *         Security System CSS is enabled).             
  --  * @note   HSI can not be stopped if it is used as system clock source. In this case,
  --  *         you have to select another source of the system clock then stop the HSI.  
  --  * @note   After enabling the HSI, the application software should wait on HSIRDY
  --  *         flag to be set indicating that HSI clock is stable and can be used as
  --  *         system clock source.  
  --  *         This parameter can be: ENABLE or DISABLE.
  --  * @note   When the HSI is stopped, HSIRDY flag goes low after 6 HSI oscillator
  --  *         clock cycles.  
  --   

  --* @brief  Macro to adjust the Internal High Speed oscillator (HSI) calibration value.
  --  * @note   The calibration is used to compensate for the variations in voltage
  --  *         and temperature that influence the frequency of the internal HSI RC.
  --  * @param  __HSICalibrationValue__: specifies the calibration trimming value.
  --  *         (default is RCC_HSICALIBRATION_DEFAULT).
  --  *         This parameter must be a number between 0 and 0x1F.
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_LSI_Configuration LSI Configuration
  --  * @{   
  --   

  --* @brief  Macros to enable or disable the Internal Low Speed oscillator (LSI).
  --  * @note   After enabling the LSI, the application software should wait on 
  --  *         LSIRDY flag to be set indicating that LSI clock is stable and can
  --  *         be used to clock the IWDG and/or the RTC.
  --  * @note   LSI can not be disabled if the IWDG is running.
  --  * @note   When the LSI is stopped, LSIRDY flag goes low after 6 LSI oscillator
  --  *         clock cycles. 
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_HSE_Configuration HSE Configuration
  --  * @{   
  --   

  --*
  --  * @brief  Macro to configure the External High Speed oscillator (HSE).
  --  * @note   Transition HSE Bypass to HSE On and HSE On to HSE Bypass are not supported by this macro. 
  --  *         User should request a transition to HSE Off first and then HSE On or HSE Bypass.
  --  * @note   After enabling the HSE (RCC_HSE_ON or RCC_HSE_Bypass), the application
  --  *         software should wait on HSERDY flag to be set indicating that HSE clock
  --  *         is stable and can be used to clock the PLL and/or system clock.
  --  * @note   HSE state can not be changed if it is used directly or through the
  --  *         PLL as system clock. In this case, you have to select another source
  --  *         of the system clock then change the HSE state (ex. disable it).
  --  * @note   The HSE is stopped by hardware when entering STOP and STANDBY modes.  
  --  * @note   This function reset the CSSON bit, so if the clock security system(CSS)
  --  *         was previously enabled you have to enable it again after calling this
  --  *         function.    
  --  * @param  __STATE__: specifies the new state of the HSE.
  --  *         This parameter can be one of the following values:
  --  *            @arg RCC_HSE_OFF: turn OFF the HSE oscillator, HSERDY flag goes low after
  --  *                              6 HSE oscillator clock cycles.
  --  *            @arg RCC_HSE_ON: turn ON the HSE oscillator.
  --  *            @arg RCC_HSE_BYPASS: HSE oscillator bypassed with external clock.
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_LSE_Configuration LSE Configuration
  --  * @{   
  --   

  --*
  --  * @brief  Macro to configure the External Low Speed oscillator (LSE).
  --  * @note   Transition LSE Bypass to LSE On and LSE On to LSE Bypass are not supported by this macro. 
  --  *         User should request a transition to LSE Off first and then LSE On or LSE Bypass.
  --  * @note   As the LSE is in the Backup domain and write access is denied to
  --  *         this domain after reset, you have to enable write access using 
  --  *         HAL_PWR_EnableBkUpAccess() function before to configure the LSE
  --  *         (to be done once after reset).  
  --  * @note   After enabling the LSE (RCC_LSE_ON or RCC_LSE_BYPASS), the application
  --  *         software should wait on LSERDY flag to be set indicating that LSE clock
  --  *         is stable and can be used to clock the RTC.
  --  * @param  __STATE__: specifies the new state of the LSE.
  --  *         This parameter can be one of the following values:
  --  *            @arg RCC_LSE_OFF: turn OFF the LSE oscillator, LSERDY flag goes low after
  --  *                              6 LSE oscillator clock cycles.
  --  *            @arg RCC_LSE_ON: turn ON the LSE oscillator.
  --  *            @arg RCC_LSE_BYPASS: LSE oscillator bypassed with external clock.
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_Internal_RTC_Clock_Configuration RTC Clock Configuration
  --  * @{   
  --   

  --* @brief  Macros to enable or disable the RTC clock.
  --  * @note   These macros must be used only after the RTC clock source was selected.
  --   

  --* @brief  Macros to configure the RTC clock (RTCCLK).
  --  * @note   As the RTC clock configuration bits are in the Backup domain and write
  --  *         access is denied to this domain after reset, you have to enable write
  --  *         access using the Power Backup Access macro before to configure
  --  *         the RTC clock source (to be done once after reset).    
  --  * @note   Once the RTC clock is configured it can't be changed unless the  
  --  *         Backup domain is reset using __HAL_RCC_BackupReset_RELEASE() macro, or by
  --  *         a Power On Reset (POR).
  --  * @param  __RTCCLKSource__: specifies the RTC clock source.
  --  *         This parameter can be one of the following values:
  --  *            @arg RCC_RTCCLKSOURCE_LSE: LSE selected as RTC clock.
  --  *            @arg RCC_RTCCLKSOURCE_LSI: LSI selected as RTC clock.
  --  *            @arg RCC_RTCCLKSOURCE_HSE_DIVx: HSE clock divided by x selected
  --  *                                            as RTC clock, where x:[2,31]
  --  * @note   If the LSE or LSI is used as RTC clock source, the RTC continues to
  --  *         work in STOP and STANDBY modes, and can be used as wake-up source.
  --  *         However, when the HSE clock is used as RTC clock source, the RTC
  --  *         cannot be used in STOP and STANDBY modes.    
  --  * @note   The maximum input clock frequency for RTC is 1MHz (when using HSE as
  --  *         RTC clock source).
  --   

  --* @brief  Macros to force or release the Backup domain reset.
  --  * @note   This function resets the RTC peripheral (including the backup registers)
  --  *         and the RTC clock source selection in RCC_CSR register.
  --  * @note   The BKPSRAM is not affected by this reset.   
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_PLL_Configuration PLL Configuration
  --  * @{   
  --   

  --* @brief  Macros to enable or disable the main PLL.
  --  * @note   After enabling the main PLL, the application software should wait on 
  --  *         PLLRDY flag to be set indicating that PLL clock is stable and can
  --  *         be used as system clock source.
  --  * @note   The main PLL can not be disabled if it is used as system clock source
  --  * @note   The main PLL is disabled by hardware when entering STOP and STANDBY modes.
  --   

  --* @brief  Macro to configure the PLL clock source.
  --  * @note   This function must be used only when the main PLL is disabled.
  --  * @param  __PLLSOURCE__: specifies the PLL entry clock source.
  --  *         This parameter can be one of the following values:
  --  *            @arg RCC_PLLSOURCE_HSI: HSI oscillator clock selected as PLL clock entry
  --  *            @arg RCC_PLLSOURCE_HSE: HSE oscillator clock selected as PLL clock entry
  --  *      
  --   

  --* @brief  Macro to configure the PLL multiplication factor.
  --  * @note   This function must be used only when the main PLL is disabled.
  --  * @param  __PLLM__: specifies the division factor for PLL VCO input clock
  --  *         This parameter must be a number between Min_Data = 2 and Max_Data = 63.
  --  * @note   You have to set the PLLM parameter correctly to ensure that the VCO input
  --  *         frequency ranges from 1 to 2 MHz. It is recommended to select a frequency
  --  *         of 2 MHz to limit PLL jitter.
  --  *      
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_Get_Clock_source Get Clock source
  --  * @{   
  --   

  --*
  --  * @brief Macro to configure the system clock source.
  --  * @param __RCC_SYSCLKSOURCE__: specifies the system clock source.
  --  * This parameter can be one of the following values:
  --  *              - RCC_SYSCLKSOURCE_HSI: HSI oscillator is used as system clock source.
  --  *              - RCC_SYSCLKSOURCE_HSE: HSE oscillator is used as system clock source.
  --  *              - RCC_SYSCLKSOURCE_PLLCLK: PLL output is used as system clock source.
  --  *              - RCC_SYSCLKSOURCE_PLLRCLK: PLLR output is used as system clock source.
  --   

  --* @brief  Macro to get the clock source used as system clock.
  --  * @retval The clock source used as system clock. The returned value can be one
  --  *         of the following:
  --  *              - RCC_SYSCLKSOURCE_STATUS_HSI: HSI used as system clock.
  --  *              - RCC_SYSCLKSOURCE_STATUS_HSE: HSE used as system clock.
  --  *              - RCC_SYSCLKSOURCE_STATUS_PLLCLK: PLL used as system clock.
  --  *              - RCC_SYSCLKSOURCE_STATUS_PLLRCLK: PLLR used as system clock.
  --   

  --* @brief  Macro to get the oscillator used as PLL clock source.
  --  * @retval The oscillator used as PLL clock source. The returned value can be one
  --  *         of the following:
  --  *              - RCC_PLLSOURCE_HSI: HSI oscillator is used as PLL clock source.
  --  *              - RCC_PLLSOURCE_HSE: HSE oscillator is used as PLL clock source.
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCCEx_MCOx_Clock_Config RCC Extended MCOx Clock Config
  --  * @{   
  --   

  --* @brief  Macro to configure the MCO1 clock.
  --  * @param  __MCOCLKSOURCE__ specifies the MCO clock source.
  --  *          This parameter can be one of the following values:
  --  *            @arg RCC_MCO1SOURCE_HSI: HSI clock selected as MCO1 source
  --  *            @arg RCC_MCO1SOURCE_LSE: LSE clock selected as MCO1 source
  --  *            @arg RCC_MCO1SOURCE_HSE: HSE clock selected as MCO1 source
  --  *            @arg RCC_MCO1SOURCE_PLLCLK: main PLL clock selected as MCO1 source
  --  * @param  __MCODIV__ specifies the MCO clock prescaler.
  --  *          This parameter can be one of the following values:
  --  *            @arg RCC_MCODIV_1: no division applied to MCOx clock
  --  *            @arg RCC_MCODIV_2: division by 2 applied to MCOx clock
  --  *            @arg RCC_MCODIV_3: division by 3 applied to MCOx clock
  --  *            @arg RCC_MCODIV_4: division by 4 applied to MCOx clock
  --  *            @arg RCC_MCODIV_5: division by 5 applied to MCOx clock
  --   

  --* @brief  Macro to configure the MCO2 clock.
  --  * @param  __MCOCLKSOURCE__ specifies the MCO clock source.
  --  *          This parameter can be one of the following values:
  --  *            @arg RCC_MCO2SOURCE_SYSCLK: System clock (SYSCLK) selected as MCO2 source
  --  *            @arg RCC_MCO2SOURCE_PLLI2SCLK: PLLI2S clock selected as MCO2 source, available for all STM32F4 devices except STM32F410xx 
  --  *            @arg RCC_MCO2SOURCE_I2SCLK: I2SCLK clock selected as MCO2 source, available only for STM32F410Rx devices   
  --  *            @arg RCC_MCO2SOURCE_HSE: HSE clock selected as MCO2 source
  --  *            @arg RCC_MCO2SOURCE_PLLCLK: main PLL clock selected as MCO2 source
  --  * @param  __MCODIV__ specifies the MCO clock prescaler.
  --  *          This parameter can be one of the following values:
  --  *            @arg RCC_MCODIV_1: no division applied to MCOx clock
  --  *            @arg RCC_MCODIV_2: division by 2 applied to MCOx clock
  --  *            @arg RCC_MCODIV_3: division by 3 applied to MCOx clock
  --  *            @arg RCC_MCODIV_4: division by 4 applied to MCOx clock
  --  *            @arg RCC_MCODIV_5: division by 5 applied to MCOx clock
  --  * @note  For STM32F410Rx devices, to output I2SCLK clock on MCO2, you should have
  --  *        at least one of the SPI clocks enabled (SPI1, SPI2 or SPI5).
  --   

  --*
  --  * @}
  --   

  --* @defgroup RCC_Flags_Interrupts_Management Flags Interrupts Management
  --  * @brief macros to manage the specified RCC Flags and interrupts.
  --  * @{
  --   

  --* @brief  Enable RCC interrupt (Perform Byte access to RCC_CIR[14:8] bits to enable
  --  *         the selected interrupts).
  --  * @param  __INTERRUPT__: specifies the RCC interrupt sources to be enabled.
  --  *         This parameter can be any combination of the following values:
  --  *            @arg RCC_IT_LSIRDY: LSI ready interrupt.
  --  *            @arg RCC_IT_LSERDY: LSE ready interrupt.
  --  *            @arg RCC_IT_HSIRDY: HSI ready interrupt.
  --  *            @arg RCC_IT_HSERDY: HSE ready interrupt.
  --  *            @arg RCC_IT_PLLRDY: Main PLL ready interrupt.
  --  *            @arg RCC_IT_PLLI2SRDY: PLLI2S ready interrupt.
  --   

  --* @brief Disable RCC interrupt (Perform Byte access to RCC_CIR[14:8] bits to disable 
  --  *        the selected interrupts).
  --  * @param  __INTERRUPT__: specifies the RCC interrupt sources to be disabled.
  --  *         This parameter can be any combination of the following values:
  --  *            @arg RCC_IT_LSIRDY: LSI ready interrupt.
  --  *            @arg RCC_IT_LSERDY: LSE ready interrupt.
  --  *            @arg RCC_IT_HSIRDY: HSI ready interrupt.
  --  *            @arg RCC_IT_HSERDY: HSE ready interrupt.
  --  *            @arg RCC_IT_PLLRDY: Main PLL ready interrupt.
  --  *            @arg RCC_IT_PLLI2SRDY: PLLI2S ready interrupt.
  --   

  --* @brief  Clear the RCC's interrupt pending bits (Perform Byte access to RCC_CIR[23:16]
  --  *         bits to clear the selected interrupt pending bits.
  --  * @param  __INTERRUPT__: specifies the interrupt pending bit to clear.
  --  *         This parameter can be any combination of the following values:
  --  *            @arg RCC_IT_LSIRDY: LSI ready interrupt.
  --  *            @arg RCC_IT_LSERDY: LSE ready interrupt.
  --  *            @arg RCC_IT_HSIRDY: HSI ready interrupt.
  --  *            @arg RCC_IT_HSERDY: HSE ready interrupt.
  --  *            @arg RCC_IT_PLLRDY: Main PLL ready interrupt.
  --  *            @arg RCC_IT_PLLI2SRDY: PLLI2S ready interrupt.  
  --  *            @arg RCC_IT_CSS: Clock Security System interrupt
  --   

  --* @brief  Check the RCC's interrupt has occurred or not.
  --  * @param  __INTERRUPT__: specifies the RCC interrupt source to check.
  --  *         This parameter can be one of the following values:
  --  *            @arg RCC_IT_LSIRDY: LSI ready interrupt.
  --  *            @arg RCC_IT_LSERDY: LSE ready interrupt.
  --  *            @arg RCC_IT_HSIRDY: HSI ready interrupt.
  --  *            @arg RCC_IT_HSERDY: HSE ready interrupt.
  --  *            @arg RCC_IT_PLLRDY: Main PLL ready interrupt.
  --  *            @arg RCC_IT_PLLI2SRDY: PLLI2S ready interrupt.
  --  *            @arg RCC_IT_CSS: Clock Security System interrupt
  --  * @retval The new state of __INTERRUPT__ (TRUE or FALSE).
  --   

  --* @brief Set RMVF bit to clear the reset flags: RCC_FLAG_PINRST, RCC_FLAG_PORRST, 
  --  *        RCC_FLAG_SFTRST, RCC_FLAG_IWDGRST, RCC_FLAG_WWDGRST and RCC_FLAG_LPWRRST.
  --   

  --* @brief  Check RCC flag is set or not.
  --  * @param  __FLAG__: specifies the flag to check.
  --  *         This parameter can be one of the following values:
  --  *            @arg RCC_FLAG_HSIRDY: HSI oscillator clock ready.
  --  *            @arg RCC_FLAG_HSERDY: HSE oscillator clock ready.
  --  *            @arg RCC_FLAG_PLLRDY: Main PLL clock ready.
  --  *            @arg RCC_FLAG_PLLI2SRDY: PLLI2S clock ready.
  --  *            @arg RCC_FLAG_LSERDY: LSE oscillator clock ready.
  --  *            @arg RCC_FLAG_LSIRDY: LSI oscillator clock ready.
  --  *            @arg RCC_FLAG_BORRST: POR/PDR or BOR reset.
  --  *            @arg RCC_FLAG_PINRST: Pin reset.
  --  *            @arg RCC_FLAG_PORRST: POR/PDR reset.
  --  *            @arg RCC_FLAG_SFTRST: Software reset.
  --  *            @arg RCC_FLAG_IWDGRST: Independent Watchdog reset.
  --  *            @arg RCC_FLAG_WWDGRST: Window Watchdog reset.
  --  *            @arg RCC_FLAG_LPWRRST: Low Power reset.
  --  * @retval The new state of __FLAG__ (TRUE or FALSE).
  --   

  --*
  --  * @}
  --   

  --*
  --  * @}
  --   

  -- Exported functions -------------------------------------------------------- 
  --* @addtogroup RCC_Exported_Functions
  --  * @{
  --   

  --* @addtogroup RCC_Exported_Functions_Group1
  --  * @{
  --   

  -- Initialization and de-initialization functions  ***************************** 
   procedure HAL_RCC_DeInit;  -- Inc/stm32f4xx_hal_rcc.h:1210
   pragma Import (C, HAL_RCC_DeInit, "HAL_RCC_DeInit");

   function HAL_RCC_OscConfig (RCC_OscInitStruct : access RCC_OscInitTypeDef) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_rcc.h:1211
   pragma Import (C, HAL_RCC_OscConfig, "HAL_RCC_OscConfig");

   function HAL_RCC_ClockConfig (RCC_ClkInitStruct : access RCC_ClkInitTypeDef; FLatency : Word) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_rcc.h:1212
   pragma Import (C, HAL_RCC_ClockConfig, "HAL_RCC_ClockConfig");

  --*
  --  * @}
  --   

  --* @addtogroup RCC_Exported_Functions_Group2
  --  * @{
  --   

  -- Peripheral Control functions  *********************************************** 
   procedure HAL_RCC_MCOConfig
     (RCC_MCOx : Word;
      RCC_MCOSource : Word;
      RCC_MCODiv : Word);  -- Inc/stm32f4xx_hal_rcc.h:1221
   pragma Import (C, HAL_RCC_MCOConfig, "HAL_RCC_MCOConfig");

   procedure HAL_RCC_EnableCSS;  -- Inc/stm32f4xx_hal_rcc.h:1222
   pragma Import (C, HAL_RCC_EnableCSS, "HAL_RCC_EnableCSS");

   procedure HAL_RCC_DisableCSS;  -- Inc/stm32f4xx_hal_rcc.h:1223
   pragma Import (C, HAL_RCC_DisableCSS, "HAL_RCC_DisableCSS");

   function HAL_RCC_GetSysClockFreq return Word;  -- Inc/stm32f4xx_hal_rcc.h:1224
   pragma Import (C, HAL_RCC_GetSysClockFreq, "HAL_RCC_GetSysClockFreq");

   function HAL_RCC_GetHCLKFreq return Word;  -- Inc/stm32f4xx_hal_rcc.h:1225
   pragma Import (C, HAL_RCC_GetHCLKFreq, "HAL_RCC_GetHCLKFreq");

   function HAL_RCC_GetPCLK1Freq return Word;  -- Inc/stm32f4xx_hal_rcc.h:1226
   pragma Import (C, HAL_RCC_GetPCLK1Freq, "HAL_RCC_GetPCLK1Freq");

   function HAL_RCC_GetPCLK2Freq return Word;  -- Inc/stm32f4xx_hal_rcc.h:1227
   pragma Import (C, HAL_RCC_GetPCLK2Freq, "HAL_RCC_GetPCLK2Freq");

   procedure HAL_RCC_GetOscConfig (RCC_OscInitStruct : access RCC_OscInitTypeDef);  -- Inc/stm32f4xx_hal_rcc.h:1228
   pragma Import (C, HAL_RCC_GetOscConfig, "HAL_RCC_GetOscConfig");

   procedure HAL_RCC_GetClockConfig (RCC_ClkInitStruct : access RCC_ClkInitTypeDef; pFLatency : access Word);  -- Inc/stm32f4xx_hal_rcc.h:1229
   pragma Import (C, HAL_RCC_GetClockConfig, "HAL_RCC_GetClockConfig");

  -- CSS NMI IRQ handler  
   procedure HAL_RCC_NMI_IRQHandler;  -- Inc/stm32f4xx_hal_rcc.h:1232
   pragma Import (C, HAL_RCC_NMI_IRQHandler, "HAL_RCC_NMI_IRQHandler");

  -- User Callbacks in non blocking mode (IT mode)  
   procedure HAL_RCC_CSSCallback;  -- Inc/stm32f4xx_hal_rcc.h:1235
   pragma Import (C, HAL_RCC_CSSCallback, "HAL_RCC_CSSCallback");

  --*
  --  * @}
  --   

  --*
  --  * @}
  --   

  -- Private types ------------------------------------------------------------- 
  -- Private variables --------------------------------------------------------- 
  -- Private constants --------------------------------------------------------- 
  --* @defgroup RCC_Private_Constants RCC Private Constants
  --  * @{
  --   

  --* @defgroup RCC_BitAddress_AliasRegion RCC BitAddress AliasRegion
  --  * @brief RCC registers bit address in the alias region
  --  * @{
  --   

  -- --- CR Register --- 
  -- Alias word address of HSION bit  
  -- Alias word address of CSSON bit  
  -- Alias word address of PLLON bit  
  -- --- BDCR Register --- 
  -- Alias word address of RTCEN bit  
  -- Alias word address of BDRST bit  
  -- --- CSR Register --- 
  -- Alias word address of LSION bit  
  -- CR register byte 3 (Bits[23:16]) base address  
  -- CIR register byte 2 (Bits[15:8]) base address  
  -- CIR register byte 3 (Bits[23:16]) base address  
  -- BDCR register base address  
  --*
  --  * @}
  --   

  --*
  --  * @}
  --   

  -- Private macros ------------------------------------------------------------ 
  --* @defgroup RCC_Private_Macros RCC Private Macros
  --  * @{
  --   

  --* @defgroup RCC_IS_RCC_Definitions RCC Private macros to check input parameters
  --  * @{
  --   

  --*
  --  * @}
  --   

  --*
  --  * @}
  --   

  --*
  --  * @}
  --   

  --*
  --  * @}
  --   

  --*********************** (C) COPYRIGHT STMicroelectronics *****END OF FILE*** 
