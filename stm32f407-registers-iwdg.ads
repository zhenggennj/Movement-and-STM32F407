pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.iwdg is

  --*
   --  * @brief Independent WATCHDOG
   --

  --!< IWDG Key register,       Address offset: 16#00
  --!< IWDG Prescaler register, Address offset: 16#04
  --!< IWDG Reload register,    Address offset: 16#08
  --!< IWDG Status register,    Address offset: 16#0C
   type IWDG_Register is record
      KR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:594
      PR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:595
      RLR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:596
      SR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:597
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      IWDG_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:598
   subtype IWDG_TypeDef is IWDG_Register;

   IWDG : IWDG_Register with
      Volatile,
      Address => System'To_Address (IWDG_BASE),
      Import;

-- /******************************************************************************/
-- /*                                                                            */
-- /*                           Independent WATCHDOG                             */
-- /*                                                                            */
-- /******************************************************************************/
-- /*******************  Bit definition for IWDG_KR register  ********************/
   IWDG_KR_KEY : constant Word :=
     16#FFFF#;           -- /*!<Key value (write only, read 0000h)  */

-- /*******************  Bit definition for IWDG_PR register  ********************/
   IWDG_PR_PR : constant Word :=
     16#07#;              -- /*!<PR[2:0] (Prescaler divider)         */
   IWDG_PR_PR_0 : constant Word := 16#01#;              -- /*!<Bit 0 */
   IWDG_PR_PR_1 : constant Word := 16#02#;              -- /*!<Bit 1 */
   IWDG_PR_PR_2 : constant Word := 16#04#;              -- /*!<Bit 2 */

-- /*******************  Bit definition for IWDG_RLR register  *******************/
   IWDG_RLR_RL : constant Word :=
     16#0FFF#;           -- /*!<Watchdog counter reload value        */

-- /*******************  Bit definition for IWDG_SR register  ********************/
   IWDG_SR_PVU : constant Word :=
     16#01#;              -- /*!<Watchdog prescaler value update      */
   IWDG_SR_RVU : constant Word :=
     16#02#;              -- /*!<Watchdog counter reload value update */

end stm32f407.registers.iwdg;
