pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.dcmi is
  --*
   --  * @brief DCMI
   --

  --!< DCMI control register 1,                       Address offset: 16#00
  --!< DCMI status register,                          Address offset: 16#04
  --!< DCMI raw interrupt status register,            Address offset: 16#08
  --!< DCMI interrupt enable register,                Address offset: 16#0C
  --!< DCMI masked interrupt status register,         Address offset: 16#10
  --!< DCMI interrupt clear register,                 Address offset: 16#14
  --!< DCMI embedded synchronization code register,   Address offset: 16#18
  --!< DCMI embedded synchronization unmask register, Address offset: 16#1C
  --!< DCMI crop window start,                        Address offset: 16#20
  --!< DCMI crop window size,                         Address offset: 16#24
  --!< DCMI data register,                            Address offset: 16#28
   type DCMI_Register is record
      CR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:346
      SR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:347
      RISR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:348
      IER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:349
      MISR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:350
      ICR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:351
      ESCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:352
      ESUR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:353
      CWSTRTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:354
      CWSIZER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:355
      DR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:356
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      DCMI_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:357
   subtype DCMI_TypeDef is DCMI_Register;

   DCMI : DCMI_Register with
      Volatile,
      Address => System'To_Address (DCMI_BASE),
      Import;



-- /******************************************************************************/
-- /*                                                                            */
-- /*                                    DCMI                                    */
-- /*                                                                            */
-- /******************************************************************************/
-- /********************  Bits definition for DCMI_CR register  ******************/
  DCMI_CR_CAPTURE                      :constant word :=16#00000001#;
  DCMI_CR_CM                           :constant word :=16#00000002#;
  DCMI_CR_CROP                         :constant word :=16#00000004#;
  DCMI_CR_JPEG                         :constant word :=16#00000008#;
  DCMI_CR_ESS                          :constant word :=16#00000010#;
  DCMI_CR_PCKPOL                       :constant word :=16#00000020#;
  DCMI_CR_HSPOL                        :constant word :=16#00000040#;
  DCMI_CR_VSPOL                        :constant word :=16#00000080#;
  DCMI_CR_FCRC_0                       :constant word :=16#00000100#;
  DCMI_CR_FCRC_1                       :constant word :=16#00000200#;
  DCMI_CR_EDM_0                        :constant word :=16#00000400#;
  DCMI_CR_EDM_1                        :constant word :=16#00000800#;
  DCMI_CR_CRE                          :constant word :=16#00001000#;
  DCMI_CR_ENABLE                       :constant word :=16#00004000#;

-- /********************  Bits definition for DCMI_SR register  ******************/
  DCMI_SR_HSYNC                        :constant word :=16#00000001#;
  DCMI_SR_VSYNC                        :constant word :=16#00000002#;
  DCMI_SR_FNE                          :constant word :=16#00000004#;

-- /********************  Bits definition for DCMI_RIS register  *****************/
  DCMI_RIS_FRAME_RIS                   :constant word :=16#00000001#;
  DCMI_RIS_OVR_RIS                     :constant word :=16#00000002#;
  DCMI_RIS_ERR_RIS                     :constant word :=16#00000004#;
  DCMI_RIS_VSYNC_RIS                   :constant word :=16#00000008#;
  DCMI_RIS_LINE_RIS                    :constant word :=16#00000010#;
-- /* Legacy defines */
  DCMI_RISR_FRAME_RIS:constant word :=                DCMI_RIS_FRAME_RIS;
  DCMI_RISR_OVR_RIS:constant word :=                  DCMI_RIS_OVR_RIS;
  DCMI_RISR_ERR_RIS:constant word :=                  DCMI_RIS_ERR_RIS;
  DCMI_RISR_VSYNC_RIS:constant word :=                DCMI_RIS_VSYNC_RIS;
  DCMI_RISR_LINE_RIS:constant word :=                 DCMI_RIS_LINE_RIS;
  DCMI_RISR_OVF_RIS:constant word :=                  DCMI_RIS_OVR_RIS;

-- /********************  Bits definition for DCMI_IER register  *****************/
  DCMI_IER_FRAME_IE                    :constant word :=16#00000001#;
  DCMI_IER_OVR_IE                      :constant word :=16#00000002#;
  DCMI_IER_ERR_IE                      :constant word :=16#00000004#;
  DCMI_IER_VSYNC_IE                    :constant word :=16#00000008#;
  DCMI_IER_LINE_IE                     :constant word :=16#00000010#;
-- /* Legacy defines */
  --DCMI_IER_OVF_IE                      DCMI_IER_OVR_IE

-- /********************  Bits definition for DCMI_MIS register  *****************/
  DCMI_MIS_FRAME_MIS                   :constant word :=16#00000001#;
  DCMI_MIS_OVR_MIS                     :constant word :=16#00000002#;
  DCMI_MIS_ERR_MIS                     :constant word :=16#00000004#;
  DCMI_MIS_VSYNC_MIS                   :constant word :=16#00000008#;
  DCMI_MIS_LINE_MIS                    :constant word :=16#00000010#;

-- /* Legacy defines */
--    DCMI_MISR_FRAME_MIS :constant word:=                 DCMI_MIS_FRAME_MIS;
--    DCMI_MISR_OVF_MIS :constant word:=                   DCMI_MIS_OVR_MIS;
--    DCMI_MISR_ERR_MIS :constant word:=                   DCMI_MIS_ERR_MIS;
--    DCMI_MISR_VSYNC_MIS :constant word:=                 DCMI_MIS_VSYNC_MIS;
--    DCMI_MISR_LINE_MIS :constant word:=                  DCMI_MIS_LINE_MIS;

-- /********************  Bits definition for DCMI_ICR register  *****************/
  DCMI_ICR_FRAME_ISC                   :constant word :=16#00000001#;
  DCMI_ICR_OVR_ISC                     :constant word :=16#00000002#;
  DCMI_ICR_ERR_ISC                     :constant word :=16#00000004#;
  DCMI_ICR_VSYNC_ISC                   :constant word :=16#00000008#;
  DCMI_ICR_LINE_ISC                    :constant word :=16#00000010#;

-- /* Legacy defines */
--  DCMI_ICR_OVF_ISC                     DCMI_ICR_OVR_ISC

-- /********************  Bits definition for DCMI_ESCR register  ******************/
  DCMI_ESCR_FSC                        :constant word :=16#000000FF#;
  DCMI_ESCR_LSC                        :constant word :=16#0000FF00#;
  DCMI_ESCR_LEC                        :constant word :=16#00FF0000#;
  DCMI_ESCR_FEC                        :constant word :=16#FF000000#;

-- /********************  Bits definition for DCMI_ESUR register  ******************/
  DCMI_ESUR_FSU                       :constant word :=16#000000FF#;
  DCMI_ESUR_LSU                       :constant word :=16#0000FF00#;
  DCMI_ESUR_LEU                       :constant word :=16#00FF0000#;
  DCMI_ESUR_FEU                       :constant word :=16#FF000000#;

-- /********************  Bits definition for DCMI_CWSTRT register  ******************/
  DCMI_CWSTRT_HOFFCNT                  :constant word :=16#00003FFF#;
  DCMI_CWSTRT_VST                      :constant word :=16#1FFF0000#;

-- /********************  Bits definition for DCMI_CWSIZE register  ******************/
  DCMI_CWSIZE_CAPCNT                   :constant word :=16#00003FFF#;
  DCMI_CWSIZE_VLINE                    :constant word :=16#3FFF0000#;

-- /********************  Bits definition for DCMI_DR register  ******************/
  DCMI_DR_BYTE0                        :constant word :=16#000000FF#;
  DCMI_DR_BYTE1                        :constant word :=16#0000FF00#;
  DCMI_DR_BYTE2                        :constant word :=16#00FF0000#;
  DCMI_DR_BYTE3                        :constant word :=16#FF000000#;



end stm32f407.registers.dcmi;
