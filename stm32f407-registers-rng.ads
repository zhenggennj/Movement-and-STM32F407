pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.rng is
  --*
   --  * @brief RNG
   --

  --!< RNG control register, Address offset: 16#00
  --!< RNG status register,  Address offset: 16#04
  --!< RNG data register,    Address offset: 16#08
   type RNG_Register is record
      CR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:804
      SR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:805
      DR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:806
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      RNG_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:807
   subtype RNG_TypeDef is RNG_Register;
      
         RNG : RNG_Register with
      Volatile,
      Address => System'To_Address (RNG_BASE),
      Import;

-- /******************************************************************************/
-- /*                                                                            */
-- /*                                    RNG                                     */
-- /*                                                                            */
-- /******************************************************************************/
-- /********************  Bits definition for RNG_CR register  *******************/
  RNG_CR_RNGEN                         :constant word :=16#00000004#;
  RNG_CR_IE                            :constant word :=16#00000008#;

-- /********************  Bits definition for RNG_SR register  *******************/
  RNG_SR_DRDY                          :constant word :=16#00000001#;
  RNG_SR_CECS                          :constant word :=16#00000002#;
  RNG_SR_SECS                          :constant word :=16#00000004#;
  RNG_SR_CEIS                          :constant word :=16#00000020#;
  RNG_SR_SEIS                          :constant word :=16#00000040#;

      
end stm32f407.registers.rng;
