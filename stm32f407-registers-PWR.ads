pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.pwr is
  --*
   --  * @brief Power Control
   --

  --!< PWR power control register,        Address offset: 16#00
  --!< PWR power control/status register, Address offset: 16#04
   type PWR_Register is record
      CR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:606
      CSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:607
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      PWR_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:608
   subtype PWR_TypeDef is PWR_Register;      
      
      
   PWR : PWR_Register with
      Volatile,
      Address => System'To_Address (PWR_BASE),
     Import;
   
 
-- /******************************************************************************/
-- /*                                                                            */
-- /*                             Power Control                                  */
-- /*                                                                            */
-- /******************************************************************************/
-- /********************  Bit definition for PWR_CR register  ********************/
   PWR_CR_LPDS                         :constant word :=16#00000001#;    -- /*!< Low-Power Deepsleep                 */
   PWR_CR_PDDS                         :constant word :=16#00000002#;    -- /*!< Power Down Deepsleep                */
   PWR_CR_CWUF                         :constant word :=16#00000004#;    -- /*!< Clear Wakeup Flag                   */
   PWR_CR_CSBF                         :constant word :=16#00000008#;    -- /*!< Clear Standby Flag                  */
   PWR_CR_PVDE                         :constant word :=16#00000010#;    -- /*!< Power Voltage Detector Enable       */

   PWR_CR_PLS                          :constant word :=16#000000E0#;    -- /*!< PLS[2:0] bits (PVD Level Selection) */
   PWR_CR_PLS_0                        :constant word :=16#00000020#;    -- /*!< Bit 0 */
   PWR_CR_PLS_1                        :constant word :=16#00000040#;    -- /*!< Bit 1 */
   PWR_CR_PLS_2                        :constant word :=16#00000080#;    -- /*!< Bit 2 */

-- /*!< PVD level configuration */
   PWR_CR_PLS_LEV0                     :constant word :=16#00000000#;    -- /*!< PVD level 0 */
   PWR_CR_PLS_LEV1                     :constant word :=16#00000020#;    -- /*!< PVD level 1 */
   PWR_CR_PLS_LEV2                     :constant word :=16#00000040#;    -- /*!< PVD level 2 */
   PWR_CR_PLS_LEV3                     :constant word :=16#00000060#;    -- /*!< PVD level 3 */
   PWR_CR_PLS_LEV4                     :constant word :=16#00000080#;    -- /*!< PVD level 4 */
   PWR_CR_PLS_LEV5                     :constant word :=16#000000A0#;    -- /*!< PVD level 5 */
   PWR_CR_PLS_LEV6                     :constant word :=16#000000C0#;    -- /*!< PVD level 6 */
   PWR_CR_PLS_LEV7                     :constant word :=16#000000E0#;    -- /*!< PVD level 7 */

   PWR_CR_DBP                          :constant word :=16#00000100#;    -- /*!< Disable Backup Domain write protection               */
   PWR_CR_FPDS                         :constant word :=16#00000200#;    -- /*!< Flash power down in Stop mode                        */
   PWR_CR_VOS                          :constant word :=16#00004000#;    -- /*!< VOS bit (Regulator voltage scaling output selection) */

-- /* Legacy define */
   PWR_CR_PMODE   :constant word :=                     PWR_CR_VOS;

-- /*******************  Bit definition for PWR_CSR register  ********************/
   PWR_CSR_WUF                         :constant word :=16#00000001#;    -- /*!< Wakeup Flag                                      */
   PWR_CSR_SBF                         :constant word :=16#00000002#;    -- /*!< Standby Flag                                     */
   PWR_CSR_PVDO                        :constant word :=16#00000004#;    -- /*!< PVD Output                                       */
   PWR_CSR_BRR                         :constant word :=16#00000008#;    -- /*!< Backup regulator ready                           */
   PWR_CSR_EWUP                        :constant word :=16#00000100#;    -- /*!< Enable WKUP pin                                  */
   PWR_CSR_BRE                         :constant word :=16#00000200#;    -- /*!< Backup regulator enable                          */
   PWR_CSR_VOSRDY                      :constant word :=16#00004000#;    -- /*!< Regulator voltage scaling output selection ready */

-- /* Legacy define */
   PWR_CSR_REGRDY    :constant word :=                    PWR_CSR_VOSRDY;
  
end stm32f407.registers.pwr;
