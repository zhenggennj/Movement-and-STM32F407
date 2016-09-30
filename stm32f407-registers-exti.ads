pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.exti is

   --*
   --  * @brief External Interrupt/Event Controller
   --

  --!< EXTI Interrupt mask register,            Address offset: 16#00
  --!< EXTI Event mask register,                Address offset: 16#04
  --!< EXTI Rising trigger selection register,  Address offset: 16#08
  --!< EXTI Falling trigger selection register, Address offset: 16#0C
  --!< EXTI Software interrupt event register,  Address offset: 16#10
  --!< EXTI Pending register,                   Address offset: 16#14
   type EXTI_Register is record
      IMR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:462
      EMR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:463
      RTSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:464
      FTSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:465
      SWIER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:466
      PR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:467
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      EXTI_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:468
   subtype EXTI_TypeDef is EXTI_Register;

   EXTI : EXTI_Register with
      Volatile,
      Address => System'To_Address (EXTI_BASE),
      Import;


-- /******************************************************************************/
-- /*                                                                            */
-- /*                    External Interrupt/Event Controller                     */
-- /*                                                                            */
-- /******************************************************************************/
-- /*******************  Bit definition for EXTI_IMR register  *******************/
   EXTI_IMR_MR0  :constant word :=16#00000001#;       -- /*!< Interrupt Mask on line 0 */
   EXTI_IMR_MR1  :constant word :=16#00000002#;       -- /*!< Interrupt Mask on line 1 */
   EXTI_IMR_MR2  :constant word :=16#00000004#;       -- /*!< Interrupt Mask on line 2 */
   EXTI_IMR_MR3  :constant word :=16#00000008#;       -- /*!< Interrupt Mask on line 3 */
   EXTI_IMR_MR4  :constant word :=16#00000010#;       -- /*!< Interrupt Mask on line 4 */
   EXTI_IMR_MR5  :constant word :=16#00000020#;       -- /*!< Interrupt Mask on line 5 */
   EXTI_IMR_MR6  :constant word :=16#00000040#;       -- /*!< Interrupt Mask on line 6 */
   EXTI_IMR_MR7  :constant word :=16#00000080#;       -- /*!< Interrupt Mask on line 7 */
   EXTI_IMR_MR8  :constant word :=16#00000100#;       -- /*!< Interrupt Mask on line 8 */
   EXTI_IMR_MR9  :constant word :=16#00000200#;       -- /*!< Interrupt Mask on line 9 */
   EXTI_IMR_MR10  :constant word :=16#00000400#;       -- /*!< Interrupt Mask on line 10 */
   EXTI_IMR_MR11  :constant word :=16#00000800#;       -- /*!< Interrupt Mask on line 11 */
   EXTI_IMR_MR12  :constant word :=16#00001000#;       -- /*!< Interrupt Mask on line 12 */
   EXTI_IMR_MR13  :constant word :=16#00002000#;       -- /*!< Interrupt Mask on line 13 */
   EXTI_IMR_MR14  :constant word :=16#00004000#;       -- /*!< Interrupt Mask on line 14 */
   EXTI_IMR_MR15  :constant word :=16#00008000#;       -- /*!< Interrupt Mask on line 15 */
   EXTI_IMR_MR16  :constant word :=16#00010000#;       -- /*!< Interrupt Mask on line 16 */
   EXTI_IMR_MR17  :constant word :=16#00020000#;       -- /*!< Interrupt Mask on line 17 */
   EXTI_IMR_MR18  :constant word :=16#00040000#;       -- /*!< Interrupt Mask on line 18 */
   EXTI_IMR_MR19  :constant word :=16#00080000#;       -- /*!< Interrupt Mask on line 19 */
   EXTI_IMR_MR20  :constant word :=16#00100000#;       -- /*!< Interrupt Mask on line 20 */
   EXTI_IMR_MR21  :constant word :=16#00200000#;       -- /*!< Interrupt Mask on line 21 */
   EXTI_IMR_MR22  :constant word :=16#00400000#;       -- /*!< Interrupt Mask on line 22 */

-- /*******************  Bit definition for EXTI_EMR register  *******************/
   EXTI_EMR_MR0  :constant word :=16#00000001#;       -- /*!< Event Mask on line 0 */
   EXTI_EMR_MR1  :constant word :=16#00000002#;       -- /*!< Event Mask on line 1 */
   EXTI_EMR_MR2  :constant word :=16#00000004#;       -- /*!< Event Mask on line 2 */
   EXTI_EMR_MR3  :constant word :=16#00000008#;       -- /*!< Event Mask on line 3 */
   EXTI_EMR_MR4  :constant word :=16#00000010#;       -- /*!< Event Mask on line 4 */
   EXTI_EMR_MR5  :constant word :=16#00000020#;       -- /*!< Event Mask on line 5 */
   EXTI_EMR_MR6  :constant word :=16#00000040#;       -- /*!< Event Mask on line 6 */
   EXTI_EMR_MR7  :constant word :=16#00000080#;       -- /*!< Event Mask on line 7 */
   EXTI_EMR_MR8  :constant word :=16#00000100#;       -- /*!< Event Mask on line 8 */
   EXTI_EMR_MR9  :constant word :=16#00000200#;       -- /*!< Event Mask on line 9 */
   EXTI_EMR_MR10  :constant word :=16#00000400#;       -- /*!< Event Mask on line 10 */
   EXTI_EMR_MR11  :constant word :=16#00000800#;       -- /*!< Event Mask on line 11 */
   EXTI_EMR_MR12  :constant word :=16#00001000#;       -- /*!< Event Mask on line 12 */
   EXTI_EMR_MR13  :constant word :=16#00002000#;       -- /*!< Event Mask on line 13 */
   EXTI_EMR_MR14  :constant word :=16#00004000#;       -- /*!< Event Mask on line 14 */
   EXTI_EMR_MR15  :constant word :=16#00008000#;       -- /*!< Event Mask on line 15 */
   EXTI_EMR_MR16  :constant word :=16#00010000#;       -- /*!< Event Mask on line 16 */
   EXTI_EMR_MR17  :constant word :=16#00020000#;       -- /*!< Event Mask on line 17 */
   EXTI_EMR_MR18  :constant word :=16#00040000#;       -- /*!< Event Mask on line 18 */
   EXTI_EMR_MR19  :constant word :=16#00080000#;       -- /*!< Event Mask on line 19 */
   EXTI_EMR_MR20  :constant word :=16#00100000#;       -- /*!< Event Mask on line 20 */
   EXTI_EMR_MR21  :constant word :=16#00200000#;       -- /*!< Event Mask on line 21 */
   EXTI_EMR_MR22  :constant word :=16#00400000#;       -- /*!< Event Mask on line 22 */

-- /******************  Bit definition for EXTI_RTSR register  *******************/
   EXTI_RTSR_TR0  :constant word :=16#00000001#;       -- /*!< Rising trigger event configuration bit of line 0 */
   EXTI_RTSR_TR1  :constant word :=16#00000002#;       -- /*!< Rising trigger event configuration bit of line 1 */
   EXTI_RTSR_TR2  :constant word :=16#00000004#;       -- /*!< Rising trigger event configuration bit of line 2 */
   EXTI_RTSR_TR3  :constant word :=16#00000008#;       -- /*!< Rising trigger event configuration bit of line 3 */
   EXTI_RTSR_TR4  :constant word :=16#00000010#;       -- /*!< Rising trigger event configuration bit of line 4 */
   EXTI_RTSR_TR5  :constant word :=16#00000020#;       -- /*!< Rising trigger event configuration bit of line 5 */
   EXTI_RTSR_TR6  :constant word :=16#00000040#;       -- /*!< Rising trigger event configuration bit of line 6 */
   EXTI_RTSR_TR7  :constant word :=16#00000080#;       -- /*!< Rising trigger event configuration bit of line 7 */
   EXTI_RTSR_TR8  :constant word :=16#00000100#;       -- /*!< Rising trigger event configuration bit of line 8 */
   EXTI_RTSR_TR9  :constant word :=16#00000200#;       -- /*!< Rising trigger event configuration bit of line 9 */
   EXTI_RTSR_TR10  :constant word :=16#00000400#;       -- /*!< Rising trigger event configuration bit of line 10 */
   EXTI_RTSR_TR11  :constant word :=16#00000800#;       -- /*!< Rising trigger event configuration bit of line 11 */
   EXTI_RTSR_TR12  :constant word :=16#00001000#;       -- /*!< Rising trigger event configuration bit of line 12 */
   EXTI_RTSR_TR13  :constant word :=16#00002000#;       -- /*!< Rising trigger event configuration bit of line 13 */
   EXTI_RTSR_TR14  :constant word :=16#00004000#;       -- /*!< Rising trigger event configuration bit of line 14 */
   EXTI_RTSR_TR15  :constant word :=16#00008000#;       -- /*!< Rising trigger event configuration bit of line 15 */
   EXTI_RTSR_TR16  :constant word :=16#00010000#;       -- /*!< Rising trigger event configuration bit of line 16 */
   EXTI_RTSR_TR17  :constant word :=16#00020000#;       -- /*!< Rising trigger event configuration bit of line 17 */
   EXTI_RTSR_TR18  :constant word :=16#00040000#;       -- /*!< Rising trigger event configuration bit of line 18 */
   EXTI_RTSR_TR19  :constant word :=16#00080000#;       -- /*!< Rising trigger event configuration bit of line 19 */
   EXTI_RTSR_TR20  :constant word :=16#00100000#;       -- /*!< Rising trigger event configuration bit of line 20 */
   EXTI_RTSR_TR21  :constant word :=16#00200000#;       -- /*!< Rising trigger event configuration bit of line 21 */
   EXTI_RTSR_TR22  :constant word :=16#00400000#;       -- /*!< Rising trigger event configuration bit of line 22 */

-- /******************  Bit definition for EXTI_FTSR register  *******************/
   EXTI_FTSR_TR0  :constant word :=16#00000001#;       -- /*!< Falling trigger event configuration bit of line 0 */
   EXTI_FTSR_TR1  :constant word :=16#00000002#;       -- /*!< Falling trigger event configuration bit of line 1 */
   EXTI_FTSR_TR2  :constant word :=16#00000004#;       -- /*!< Falling trigger event configuration bit of line 2 */
   EXTI_FTSR_TR3  :constant word :=16#00000008#;       -- /*!< Falling trigger event configuration bit of line 3 */
   EXTI_FTSR_TR4  :constant word :=16#00000010#;       -- /*!< Falling trigger event configuration bit of line 4 */
   EXTI_FTSR_TR5  :constant word :=16#00000020#;       -- /*!< Falling trigger event configuration bit of line 5 */
   EXTI_FTSR_TR6  :constant word :=16#00000040#;       -- /*!< Falling trigger event configuration bit of line 6 */
   EXTI_FTSR_TR7  :constant word :=16#00000080#;       -- /*!< Falling trigger event configuration bit of line 7 */
   EXTI_FTSR_TR8  :constant word :=16#00000100#;       -- /*!< Falling trigger event configuration bit of line 8 */
   EXTI_FTSR_TR9  :constant word :=16#00000200#;       -- /*!< Falling trigger event configuration bit of line 9 */
   EXTI_FTSR_TR10  :constant word :=16#00000400#;       -- /*!< Falling trigger event configuration bit of line 10 */
   EXTI_FTSR_TR11  :constant word :=16#00000800#;       -- /*!< Falling trigger event configuration bit of line 11 */
   EXTI_FTSR_TR12  :constant word :=16#00001000#;       -- /*!< Falling trigger event configuration bit of line 12 */
   EXTI_FTSR_TR13  :constant word :=16#00002000#;       -- /*!< Falling trigger event configuration bit of line 13 */
   EXTI_FTSR_TR14  :constant word :=16#00004000#;       -- /*!< Falling trigger event configuration bit of line 14 */
   EXTI_FTSR_TR15  :constant word :=16#00008000#;       -- /*!< Falling trigger event configuration bit of line 15 */
   EXTI_FTSR_TR16  :constant word :=16#00010000#;       -- /*!< Falling trigger event configuration bit of line 16 */
   EXTI_FTSR_TR17  :constant word :=16#00020000#;       -- /*!< Falling trigger event configuration bit of line 17 */
   EXTI_FTSR_TR18  :constant word :=16#00040000#;       -- /*!< Falling trigger event configuration bit of line 18 */
   EXTI_FTSR_TR19  :constant word :=16#00080000#;       -- /*!< Falling trigger event configuration bit of line 19 */
   EXTI_FTSR_TR20  :constant word :=16#00100000#;       -- /*!< Falling trigger event configuration bit of line 20 */
   EXTI_FTSR_TR21  :constant word :=16#00200000#;       -- /*!< Falling trigger event configuration bit of line 21 */
   EXTI_FTSR_TR22  :constant word :=16#00400000#;       -- /*!< Falling trigger event configuration bit of line 22 */

-- /******************  Bit definition for EXTI_SWIER register  ******************/
   EXTI_SWIER_SWIER0  :constant word :=16#00000001#;       -- /*!< Software Interrupt on line 0 */
   EXTI_SWIER_SWIER1  :constant word :=16#00000002#;       -- /*!< Software Interrupt on line 1 */
   EXTI_SWIER_SWIER2  :constant word :=16#00000004#;       -- /*!< Software Interrupt on line 2 */
   EXTI_SWIER_SWIER3  :constant word :=16#00000008#;       -- /*!< Software Interrupt on line 3 */
   EXTI_SWIER_SWIER4  :constant word :=16#00000010#;       -- /*!< Software Interrupt on line 4 */
   EXTI_SWIER_SWIER5  :constant word :=16#00000020#;       -- /*!< Software Interrupt on line 5 */
   EXTI_SWIER_SWIER6  :constant word :=16#00000040#;       -- /*!< Software Interrupt on line 6 */
   EXTI_SWIER_SWIER7  :constant word :=16#00000080#;       -- /*!< Software Interrupt on line 7 */
   EXTI_SWIER_SWIER8  :constant word :=16#00000100#;       -- /*!< Software Interrupt on line 8 */
   EXTI_SWIER_SWIER9  :constant word :=16#00000200#;       -- /*!< Software Interrupt on line 9 */
   EXTI_SWIER_SWIER10  :constant word :=16#00000400#;       -- /*!< Software Interrupt on line 10 */
   EXTI_SWIER_SWIER11  :constant word :=16#00000800#;       -- /*!< Software Interrupt on line 11 */
   EXTI_SWIER_SWIER12  :constant word :=16#00001000#;       -- /*!< Software Interrupt on line 12 */
   EXTI_SWIER_SWIER13  :constant word :=16#00002000#;       -- /*!< Software Interrupt on line 13 */
   EXTI_SWIER_SWIER14  :constant word :=16#00004000#;       -- /*!< Software Interrupt on line 14 */
   EXTI_SWIER_SWIER15  :constant word :=16#00008000#;       -- /*!< Software Interrupt on line 15 */
   EXTI_SWIER_SWIER16  :constant word :=16#00010000#;       -- /*!< Software Interrupt on line 16 */
   EXTI_SWIER_SWIER17  :constant word :=16#00020000#;       -- /*!< Software Interrupt on line 17 */
   EXTI_SWIER_SWIER18  :constant word :=16#00040000#;       -- /*!< Software Interrupt on line 18 */
   EXTI_SWIER_SWIER19  :constant word :=16#00080000#;       -- /*!< Software Interrupt on line 19 */
   EXTI_SWIER_SWIER20  :constant word :=16#00100000#;       -- /*!< Software Interrupt on line 20 */
   EXTI_SWIER_SWIER21  :constant word :=16#00200000#;       -- /*!< Software Interrupt on line 21 */
   EXTI_SWIER_SWIER22  :constant word :=16#00400000#;       -- /*!< Software Interrupt on line 22 */

-- /*******************  Bit definition for EXTI_PR register  ********************/
   EXTI_PR_PR0  :constant word :=16#00000001#;       -- /*!< Pending bit for line 0 */
   EXTI_PR_PR1  :constant word :=16#00000002#;       -- /*!< Pending bit for line 1 */
   EXTI_PR_PR2  :constant word :=16#00000004#;       -- /*!< Pending bit for line 2 */
   EXTI_PR_PR3  :constant word :=16#00000008#;       -- /*!< Pending bit for line 3 */
   EXTI_PR_PR4  :constant word :=16#00000010#;       -- /*!< Pending bit for line 4 */
   EXTI_PR_PR5  :constant word :=16#00000020#;       -- /*!< Pending bit for line 5 */
   EXTI_PR_PR6  :constant word :=16#00000040#;       -- /*!< Pending bit for line 6 */
   EXTI_PR_PR7  :constant word :=16#00000080#;       -- /*!< Pending bit for line 7 */
   EXTI_PR_PR8  :constant word :=16#00000100#;       -- /*!< Pending bit for line 8 */
   EXTI_PR_PR9  :constant word :=16#00000200#;       -- /*!< Pending bit for line 9 */
   EXTI_PR_PR10  :constant word :=16#00000400#;       -- /*!< Pending bit for line 10 */
   EXTI_PR_PR11  :constant word :=16#00000800#;       -- /*!< Pending bit for line 11 */
   EXTI_PR_PR12  :constant word :=16#00001000#;       -- /*!< Pending bit for line 12 */
   EXTI_PR_PR13  :constant word :=16#00002000#;       -- /*!< Pending bit for line 13 */
   EXTI_PR_PR14  :constant word :=16#00004000#;       -- /*!< Pending bit for line 14 */
   EXTI_PR_PR15  :constant word :=16#00008000#;       -- /*!< Pending bit for line 15 */
   EXTI_PR_PR16  :constant word :=16#00010000#;       -- /*!< Pending bit for line 16 */
   EXTI_PR_PR17  :constant word :=16#00020000#;       -- /*!< Pending bit for line 17 */
   EXTI_PR_PR18  :constant word :=16#00040000#;       -- /*!< Pending bit for line 18 */
   EXTI_PR_PR19  :constant word :=16#00080000#;       -- /*!< Pending bit for line 19 */
   EXTI_PR_PR20  :constant word :=16#00100000#;       -- /*!< Pending bit for line 20 */
   EXTI_PR_PR21  :constant word :=16#00200000#;       -- /*!< Pending bit for line 21 */
   EXTI_PR_PR22  :constant word :=16#00400000#;       -- /*!< Pending bit for line 22 */




end stm32f407.registers.exti;
