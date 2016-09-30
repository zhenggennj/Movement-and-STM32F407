pragma Ada_2012;
pragma Style_Checks (Off);
--  with Interfaces.C; use Interfaces.C;
--  with HalDriver.ustdint_h;
--  with HalDriver.stm32f4xx_hal_def_h;
with stm32f407.registers;use stm32f407.registers;
with stm32f407.registers.rcc;use stm32f407.registers.rcc;
package stm32f407.hal.rcc_ex is
type RCC_PERIPHCLK_t is (
     RCC_PERIPHCLK_I2S    ,
     RCC_PERIPHCLK_RTC    ,
     RCC_PERIPHCLK_PLLI2S 
     ) with size=>32;
for RCC_PERIPHCLK_t use (
     RCC_PERIPHCLK_I2S    =>16#00000001#,
     RCC_PERIPHCLK_RTC    =>16#00000002#,
     RCC_PERIPHCLK_PLLI2S =>16#00000004#
     );
     type RCC_I2SCLKSOURCE_T is (
     RCC_I2SCLKSOURCE_PLLI2S ,
     RCC_I2SCLKSOURCE_EXT    
     ) with size=>32;
     for RCC_I2SCLKSOURCE_T use (
     RCC_I2SCLKSOURCE_PLLI2S =>16#00000000#,
     RCC_I2SCLKSOURCE_EXT    =>16#00000001#
     );
     type RCC_MCO2SOURCE_t is (
     RCC_MCO2SOURCE_SYSCLK,
     RCC_MCO2SOURCE_PLLI2SCLK,
     RCC_MCO2SOURCE_HSE,
     RCC_MCO2SOURCE_PLLCLK
     ) with size=>32;
     for RCC_MCO2SOURCE_t use (
     RCC_MCO2SOURCE_SYSCLK =>16#00000000#,
     RCC_MCO2SOURCE_PLLI2SCLK=>RCC_CFGR_MCO2_0,
     RCC_MCO2SOURCE_HSE=>RCC_CFGR_MCO2_1,
     RCC_MCO2SOURCE_PLLCLK=>RCC_CFGR_MCO2
     ) ;
     
     RCC_PLLI2SON_BIT_NUMBER:constant Word := 16#1A#;
     RCC_CR_PLLI2SON_BB:constant Word := (PERIPH_BB_BASE + (RCC_CR_OFFSET * 32) + (RCC_PLLI2SON_BIT_NUMBER * 4));
     RCC_CFGR_OFFSET:constant Word := (RCC_OFFSET + 16#08#);
     RCC_I2SSRC_BIT_NUMBER :constant Word:= 16#17#;
     RCC_CFGR_I2SSRC_BB:constant Word:= (PERIPH_BB_BASE + (RCC_CFGR_OFFSET * 32) + (RCC_I2SSRC_BIT_NUMBER * 4));
     PLLI2S_TIMEOUT_VALUE :constant Word := 2;
     PLL_TIMEOUT_VALUE :constant Word := 2;--((uint32_t)2)  
     
   type RCC_PLLInitTypeDef is record
   
      PLLState : aliased Word;  -- Inc/stm32f4xx_hal_rcc_ex.h:67
      PLLSource : aliased Word;  -- Inc/stm32f4xx_hal_rcc_ex.h:70
      PLLM : aliased Word;  -- Inc/stm32f4xx_hal_rcc_ex.h:73
      PLLN : aliased Word;  -- Inc/stm32f4xx_hal_rcc_ex.h:76
      PLLP : aliased Word;  -- Inc/stm32f4xx_hal_rcc_ex.h:80
      PLLQ : aliased Word;  -- Inc/stm32f4xx_hal_rcc_ex.h:83
   end record;
   pragma Convention (C_Pass_By_Copy, RCC_PLLInitTypeDef);  -- Inc/stm32f4xx_hal_rcc_ex.h:92
   type RCC_PLLI2SInitTypeDef is record
      PLLI2SN : aliased Word;  -- Inc/stm32f4xx_hal_rcc_ex.h:381
      PLLI2SR : aliased Word;  -- Inc/stm32f4xx_hal_rcc_ex.h:386
   end record;
   pragma Convention (C_Pass_By_Copy, RCC_PLLI2SInitTypeDef);  -- Inc/stm32f4xx_hal_rcc_ex.h:390
   type RCC_PeriphCLKInitTypeDef is record
      PeriphClockSelection : aliased Word;  -- Inc/stm32f4xx_hal_rcc_ex.h:397
      PLLI2S : aliased RCC_PLLI2SInitTypeDef;  -- Inc/stm32f4xx_hal_rcc_ex.h:400
      RTCClockSelection : aliased Word;  -- Inc/stm32f4xx_hal_rcc_ex.h:403
   end record;
   pragma Convention (C_Pass_By_Copy, RCC_PeriphCLKInitTypeDef);  -- Inc/stm32f4xx_hal_rcc_ex.h:409

  -- Exported functions -------------------------------------------------------- 
   function HAL_RCCEx_PeriphCLKConfig (PeriphClkInit : access RCC_PeriphCLKInitTypeDef) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_rcc_ex.h:6269
   pragma Import (C, HAL_RCCEx_PeriphCLKConfig, "HAL_RCCEx_PeriphCLKConfig");
   procedure HAL_RCCEx_GetPeriphCLKConfig (PeriphClkInit : access RCC_PeriphCLKInitTypeDef);  -- Inc/stm32f4xx_hal_rcc_ex.h:6270
   pragma Import (C, HAL_RCCEx_GetPeriphCLKConfig, "HAL_RCCEx_GetPeriphCLKConfig");
end stm32f407.hal.rcc_ex;
