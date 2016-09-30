pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.dbg is
  --*
   --  * @brief Debug MC#;
   --

  --!< MC#;device ID code,               Address offset: 16#00
  --!< Debug MC#;configuration register, Address offset: 16#04
  --!< Debug MC#;APB1 freeze register,   Address offset: 16#08
  --!< Debug MC#;APB2 freeze register,   Address offset: 16#0C
   type DBGMCU_Register is record
      IDCODE : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:334
      CR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:335
      APB1FZ : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:336
      APB2FZ : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:337
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      DBGMCU_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:338
   subtype DBGMCU_TypeDef is DBGMCU_Register;

   DBGMCU: DBGMCU_Register with
      Volatile,
      Address => System'To_Address (DBGMCU_BASE),
      Import;


-- /******************************************************************************/
-- /*                                                                            */
-- /*                                 Debug MC#;                                 */
-- /*                                                                            */
-- /******************************************************************************/

-- /******************************************************************************/
-- /*                                                                            */
-- /*                                DBG                                         */
-- /*                                                                            */
-- /******************************************************************************/
-- /********************  Bit definition for DBGMCU_IDCODE register  *************/
   DBGMCU_IDCODE_DEV_ID                :constant word :=16#00000FFF#;
   DBGMCU_IDCODE_REV_ID                :constant word :=16#FFFF0000#;

-- /********************  Bit definition for DBGMCU_CR register  *****************/
   DBGMCU_CR_DBG_SLEEP                 :constant word :=16#00000001#;
   DBGMCU_CR_DBG_STOP                  :constant word :=16#00000002#;
   DBGMCU_CR_DBG_STANDBY               :constant word :=16#00000004#;
   DBGMCU_CR_TRACE_IOEN                :constant word :=16#00000020#;

   DBGMCU_CR_TRACE_MODE                :constant word :=16#000000C0#;
   DBGMCU_CR_TRACE_MODE_0              :constant word :=16#00000040#;-- /*!<Bit 0 */
   DBGMCU_CR_TRACE_MODE_1              :constant word :=16#00000080#;-- /*!<Bit 1 */

-- /********************  Bit definition for DBGMCU_APB1_FZ register  ************/
   DBGMCU_APB1_FZ_DBG_TIM2_STOP            :constant word :=16#00000001#;
   DBGMCU_APB1_FZ_DBG_TIM3_STOP            :constant word :=16#00000002#;
   DBGMCU_APB1_FZ_DBG_TIM4_STOP            :constant word :=16#00000004#;
   DBGMCU_APB1_FZ_DBG_TIM5_STOP            :constant word :=16#00000008#;
   DBGMCU_APB1_FZ_DBG_TIM6_STOP            :constant word :=16#00000010#;
   DBGMCU_APB1_FZ_DBG_TIM7_STOP            :constant word :=16#00000020#;
   DBGMCU_APB1_FZ_DBG_TIM12_STOP           :constant word :=16#00000040#;
   DBGMCU_APB1_FZ_DBG_TIM13_STOP           :constant word :=16#00000080#;
   DBGMCU_APB1_FZ_DBG_TIM14_STOP           :constant word :=16#00000100#;
   DBGMCU_APB1_FZ_DBG_RTC_STOP             :constant word :=16#00000400#;
   DBGMCU_APB1_FZ_DBG_WWDG_STOP            :constant word :=16#00000800#;
   DBGMCU_APB1_FZ_DBG_IWDG_STOP            :constant word :=16#00001000#;
   DBGMCU_APB1_FZ_DBG_I2C1_SMBUS_TIMEOUT   :constant word :=16#00200000#;
   DBGMCU_APB1_FZ_DBG_I2C2_SMBUS_TIMEOUT   :constant word :=16#00400000#;
   DBGMCU_APB1_FZ_DBG_I2C3_SMBUS_TIMEOUT   :constant word :=16#00800000#;
   DBGMCU_APB1_FZ_DBG_CAN1_STOP            :constant word :=16#02000000#;
   DBGMCU_APB1_FZ_DBG_CAN2_STOP            :constant word :=16#04000000#;
-- /* Old IWDGSTOP bit definition, maintained for legacy purpose */
   DBGMCU_APB1_FZ_DBG_IWDEG_STOP:constant word := DBGMCU_APB1_FZ_DBG_IWDG_STOP;

-- /********************  Bit definition for DBGMCU_APB2_FZ register  ************/
   DBGMCU_APB2_FZ_DBG_TIM1_STOP        :constant word :=16#00000001#;
   DBGMCU_APB2_FZ_DBG_TIM8_STOP        :constant word :=16#00000002#;
   DBGMCU_APB2_FZ_DBG_TIM9_STOP        :constant word :=16#00010000#;
   DBGMCU_APB2_FZ_DBG_TIM10_STOP       :constant word :=16#00020000#;
   DBGMCU_APB2_FZ_DBG_TIM11_STOP       :constant word :=16#00040000#;



end stm32f407.registers.dbg;
