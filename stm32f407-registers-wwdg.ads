pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.wwdg is
  --*
   --  * @brief Window WATCHDOG
   --

  --!< WWDG Control register,       Address offset: 16#00
  --!< WWDG Configuration register, Address offset: 16#04
  --!< WWDG Status register,        Address offset: 16#08
   type WWDG_Register is record
      CR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:793
      CFR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:794
      SR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:795
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      WWDG_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:796
   subtype WWDG_TypeDef is WWDG_Register;

   WWDG : WWDG_Register with
      Volatile,
      Address => System'To_Address (WWDG_BASE),
      Import;


-- /******************************************************************************/
-- /*                                                                            */
-- /*                            Window WATCHDOG                                 */
-- /*                                                                            */
-- /******************************************************************************/
-- /*******************  Bit definition for WWDG_CR register  ********************/
   WWDG_CR_T                           :constant word :=16#7F#;              -- /*!<T[6:0] bits (7-Bit counter (MSB to LSB)) */
   WWDG_CR_T_0                         :constant word :=16#01#;              -- /*!<Bit 0 */
   WWDG_CR_T_1                         :constant word :=16#02#;              -- /*!<Bit 1 */
   WWDG_CR_T_2                         :constant word :=16#04#;              -- /*!<Bit 2 */
   WWDG_CR_T_3                         :constant word :=16#08#;              -- /*!<Bit 3 */
   WWDG_CR_T_4                         :constant word :=16#10#;              -- /*!<Bit 4 */
   WWDG_CR_T_5                         :constant word :=16#20#;              -- /*!<Bit 5 */
   WWDG_CR_T_6                         :constant word :=16#40#;              -- /*!<Bit 6 */
-- /* Legacy defines */
   WWDG_CR_T0 :constant word :=           WWDG_CR_T_0;
   WWDG_CR_T1 :constant word :=           WWDG_CR_T_1;
   WWDG_CR_T2 :constant word :=           WWDG_CR_T_2;
   WWDG_CR_T3 :constant word :=           WWDG_CR_T_3;
   WWDG_CR_T4 :constant word :=           WWDG_CR_T_4;
   WWDG_CR_T5 :constant word :=           WWDG_CR_T_5;
   WWDG_CR_T6 :constant word :=           WWDG_CR_T_6;

   WWDG_CR_WDGA         :constant word :=16#80#;              -- /*!<Activation bit */

-- /*******************  Bit definition for WWDG_CFR register  *******************/
   WWDG_CFR_W                          :constant word :=16#007F#;           -- /*!<W[6:0] bits (7-bit window value) */
   WWDG_CFR_W_0                        :constant word :=16#0001#;           -- /*!<Bit 0 */
   WWDG_CFR_W_1                        :constant word :=16#0002#;           -- /*!<Bit 1 */
   WWDG_CFR_W_2                        :constant word :=16#0004#;           -- /*!<Bit 2 */
   WWDG_CFR_W_3                        :constant word :=16#0008#;           -- /*!<Bit 3 */
   WWDG_CFR_W_4                        :constant word :=16#0010#;           -- /*!<Bit 4 */
   WWDG_CFR_W_5                        :constant word :=16#0020#;           -- /*!<Bit 5 */
   WWDG_CFR_W_6                        :constant word :=16#0040#;           -- /*!<Bit 6 */
-- /* Legacy defines */
   WWDG_CFR_W0       :constant word :=WWDG_CFR_W_0;
   WWDG_CFR_W1       :constant word :=WWDG_CFR_W_1;
   WWDG_CFR_W2       :constant word :=WWDG_CFR_W_2;
   WWDG_CFR_W3       :constant word :=WWDG_CFR_W_3;
   WWDG_CFR_W4       :constant word :=WWDG_CFR_W_4;
   WWDG_CFR_W5       :constant word :=WWDG_CFR_W_5;
   WWDG_CFR_W6       :constant word :=WWDG_CFR_W_6;

   WWDG_CFR_WDGTB                      :constant word :=16#0180#;           -- /*!<WDGTB[1:0] bits (Timer Base) */
   WWDG_CFR_WDGTB_0                    :constant word :=16#0080#;           -- /*!<Bit 0 */
   WWDG_CFR_WDGTB_1                    :constant word :=16#0100#;           -- /*!<Bit 1 */
-- /* Legacy defines */
   WWDG_CFR_WDGTB0   :constant word :=WWDG_CFR_WDGTB_0;
   WWDG_CFR_WDGTB1   :constant word :=WWDG_CFR_WDGTB_1;

   WWDG_CFR_EWI                        :constant word :=16#0200#;           -- /*!<Early Wakeup Interrupt */

-- /*******************  Bit definition for WWDG_SR register  ********************/
   WWDG_SR_EWIF                        :constant word :=16#01#;              -- /*!<Early Wakeup Interrupt Flag */


end stm32f407.registers.wwdg;
