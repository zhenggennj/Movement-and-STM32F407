pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.flash is

  --*
   --  * @brief FLASH Registers
   --

  --!< FLASH access control register,   Address offset: 16#00
  --!< FLASH key register,              Address offset: 16#04
  --!< FLASH option key register,       Address offset: 16#08
  --!< FLASH status register,           Address offset: 16#0C
  --!< FLASH control register,          Address offset: 16#10
  --!< FLASH option control register ,  Address offset: 16#14
  --!< FLASH option control register 1, Address offset: 16#18
   type FLASH_Register is record
      ACR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:476
      KEYR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:477
      OPTKEYR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:478
      SR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:479
      CR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:480
      OPTCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:481
      OPTCR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:482
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      FLASH_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:483
   subtype FLASH_TypeDef is FLASH_Register;
 
   FLASH : FLASH_Register with
      Volatile,
      Address => System'To_Address (FLASH_R_BASE),
      Import;

   
-- /******************************************************************************/
-- /*                                                                            */
-- /*                                    FLASH                                   */
-- /*                                                                            */
-- /******************************************************************************/
-- /*******************  Bits definition for FLASH_ACR register  *****************/
  FLASH_ACR_LATENCY  :constant word :=16#0000000F#;
  FLASH_ACR_LATENCY_0WS  :constant word :=16#00000000#;
  FLASH_ACR_LATENCY_1WS  :constant word :=16#00000001#;
  FLASH_ACR_LATENCY_2WS  :constant word :=16#00000002#;
  FLASH_ACR_LATENCY_3WS  :constant word :=16#00000003#;
  FLASH_ACR_LATENCY_4WS  :constant word :=16#00000004#;
  FLASH_ACR_LATENCY_5WS  :constant word :=16#00000005#;
  FLASH_ACR_LATENCY_6WS  :constant word :=16#00000006#;
  FLASH_ACR_LATENCY_7WS  :constant word :=16#00000007#;

  FLASH_ACR_PRFTEN  :constant word :=16#00000100#;
  FLASH_ACR_ICEN  :constant word :=16#00000200#;
  FLASH_ACR_DCEN  :constant word :=16#00000400#;
  FLASH_ACR_ICRST  :constant word :=16#00000800#;
  FLASH_ACR_DCRST  :constant word :=16#00001000#;
  FLASH_ACR_BYTE0_ADDRESS  :constant word :=16#40023C00#;
  FLASH_ACR_BYTE2_ADDRESS  :constant word :=16#40023C03#;

-- /*******************  Bits definition for FLASH_SR register  ******************/
  FLASH_SR_EOP  :constant word :=16#00000001#;
  FLASH_SR_SOP  :constant word :=16#00000002#;
  FLASH_SR_WRPERR  :constant word :=16#00000010#;
  FLASH_SR_PGAERR  :constant word :=16#00000020#;
  FLASH_SR_PGPERR  :constant word :=16#00000040#;
  FLASH_SR_PGSERR  :constant word :=16#00000080#;
  FLASH_SR_BSY  :constant word :=16#00010000#;

-- /*******************  Bits definition for FLASH_CR register  ******************/
  FLASH_CR_PG  :constant word :=16#00000001#;
  FLASH_CR_SER  :constant word :=16#00000002#;
  FLASH_CR_MER  :constant word :=16#00000004#;
  FLASH_CR_SNB  :constant word :=16#000000F8#;
  FLASH_CR_SNB_0  :constant word :=16#00000008#;
  FLASH_CR_SNB_1  :constant word :=16#00000010#;
  FLASH_CR_SNB_2  :constant word :=16#00000020#;
  FLASH_CR_SNB_3  :constant word :=16#00000040#;
  FLASH_CR_SNB_4  :constant word :=16#00000080#;
  FLASH_CR_PSIZE  :constant word :=16#00000300#;
  FLASH_CR_PSIZE_0  :constant word :=16#00000100#;
  FLASH_CR_PSIZE_1  :constant word :=16#00000200#;
  FLASH_CR_STRT  :constant word :=16#00010000#;
  FLASH_CR_EOPIE  :constant word :=16#01000000#;
  FLASH_CR_LOCK  :constant word :=16#80000000#;

-- /*******************  Bits definition for FLASH_OPTCR register  ***************/
  FLASH_OPTCR_OPTLOCK  :constant word :=16#00000001#;
  FLASH_OPTCR_OPTSTRT  :constant word :=16#00000002#;
  FLASH_OPTCR_BOR_LEV_0  :constant word :=16#00000004#;
  FLASH_OPTCR_BOR_LEV_1  :constant word :=16#00000008#;
  FLASH_OPTCR_BOR_LEV  :constant word :=16#0000000C#;

  FLASH_OPTCR_WDG_SW  :constant word :=16#00000020#;
  FLASH_OPTCR_nRST_STOP  :constant word :=16#00000040#;
  FLASH_OPTCR_nRST_STDBY  :constant word :=16#00000080#;
  FLASH_OPTCR_RDP  :constant word :=16#0000FF00#;
  FLASH_OPTCR_RDP_0  :constant word :=16#00000100#;
  FLASH_OPTCR_RDP_1  :constant word :=16#00000200#;
  FLASH_OPTCR_RDP_2  :constant word :=16#00000400#;
  FLASH_OPTCR_RDP_3  :constant word :=16#00000800#;
  FLASH_OPTCR_RDP_4  :constant word :=16#00001000#;
  FLASH_OPTCR_RDP_5  :constant word :=16#00002000#;
  FLASH_OPTCR_RDP_6  :constant word :=16#00004000#;
  FLASH_OPTCR_RDP_7  :constant word :=16#00008000#;
  FLASH_OPTCR_nWRP  :constant word :=16#0FFF0000#;
  FLASH_OPTCR_nWRP_0  :constant word :=16#00010000#;
  FLASH_OPTCR_nWRP_1  :constant word :=16#00020000#;
  FLASH_OPTCR_nWRP_2  :constant word :=16#00040000#;
  FLASH_OPTCR_nWRP_3  :constant word :=16#00080000#;
  FLASH_OPTCR_nWRP_4  :constant word :=16#00100000#;
  FLASH_OPTCR_nWRP_5  :constant word :=16#00200000#;
  FLASH_OPTCR_nWRP_6  :constant word :=16#00400000#;
  FLASH_OPTCR_nWRP_7  :constant word :=16#00800000#;
  FLASH_OPTCR_nWRP_8  :constant word :=16#01000000#;
  FLASH_OPTCR_nWRP_9  :constant word :=16#02000000#;
  FLASH_OPTCR_nWRP_10  :constant word :=16#04000000#;
  FLASH_OPTCR_nWRP_11  :constant word :=16#08000000#;
                                             
-- /******************  Bits definition for FLASH_OPTCR1 register  ***************/
  FLASH_OPTCR1_nWRP  :constant word :=16#0FFF0000#;
  FLASH_OPTCR1_nWRP_0  :constant word :=16#00010000#;
  FLASH_OPTCR1_nWRP_1  :constant word :=16#00020000#;
  FLASH_OPTCR1_nWRP_2  :constant word :=16#00040000#;
  FLASH_OPTCR1_nWRP_3  :constant word :=16#00080000#;
  FLASH_OPTCR1_nWRP_4  :constant word :=16#00100000#;
  FLASH_OPTCR1_nWRP_5  :constant word :=16#00200000#;
  FLASH_OPTCR1_nWRP_6  :constant word :=16#00400000#;
  FLASH_OPTCR1_nWRP_7  :constant word :=16#00800000#;
  FLASH_OPTCR1_nWRP_8  :constant word :=16#01000000#;
  FLASH_OPTCR1_nWRP_9  :constant word :=16#02000000#;
  FLASH_OPTCR1_nWRP_10  :constant word :=16#04000000#;
  FLASH_OPTCR1_nWRP_11  :constant word :=16#08000000#;

   

end stm32f407.registers.flash;
