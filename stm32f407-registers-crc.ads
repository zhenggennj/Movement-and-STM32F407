pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.CRC is

   --  * @brief CRC calculation unit
   --

  --!< CRC Data register,             Address offset: 16#00
  --!< CRC Independent data register, Address offset: 16#04
  --!< Reserved, 16#05
  --!< Reserved, 16#06
  --!< CRC Control register,          Address offset: 16#08
   type CRC_Register is record
      DR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:299
      IDR : aliased Byte;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:300
      RESERVED0 : aliased Byte;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:301
      RESERVED1 : aliased HWord;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:302
      CR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:303
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      CRC_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:304
   subtype CRC_TypeDef is CRC_Register;

   CRC : CRC_Register with
      Volatile,
      Address => System'To_Address (CRC_BASE),
      Import;

-- /******************************************************************************/
-- /*                                                                            */
-- /*                          CRC calculation unit                              */
-- /*                                                                            */
-- /******************************************************************************/
-- /*******************  Bit definition for CRC_DR register  *********************/
   CRC_DR_DR : constant Word := 16#FFFFFFFF#;-- /*!< Data register bits */

-- /*******************  Bit definition for CRC_IDR register  ********************/
   CRC_IDR_IDR : constant Word :=
     16#FF#;       -- /*!< General-purpose 8-bit data register bits */

-- /********************  Bit definition for CRC_CR register  ********************/
   CRC_CR_RESET : constant Word := 16#01#;       -- /*!< RESET bit */

end stm32f407.registers.CRC;
