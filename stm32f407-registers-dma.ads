pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.dma is
  --*
   --  * @brief DMA Controller
   --

  --!< DMA stream x configuration register
  --!< DMA stream x number of data register
  --!< DMA stream x peripheral address register
  --!< DMA stream x memory 0 address register
  --!< DMA stream x memory 1 address register
  --!< DMA stream x FIFO control register
   type DMA_Stream_Register is record
      CR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:365
      NDTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:366
      PAR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:367
      M0AR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:368
      M1AR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:369
      FCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:370
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      DMA_Stream_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:371
   subtype DMA_Stream_TypeDef is DMA_Stream_Register;
  --!< DMA low interrupt status register,      Address offset: 16#00
  --!< DMA high interrupt status register,     Address offset: 16#04
  --!< DMA low interrupt flag clear register,  Address offset: 16#08
  --!< DMA high interrupt flag clear register, Address offset: 16#0C
   type DMA_Register is record
      LISR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:375
      HISR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:376
      LIFCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:377
      HIFCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:378
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      DMA_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:379
   subtype DMA_TypeDef is DMA_Register;

   DMA1 : DMA_Register with
      Volatile,
      Address => System'To_Address (DMA1_BASE),
      Import;
   DMA1_Stream0 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA1_Stream0_BASE),
      Import;
   DMA1_Stream1 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA1_Stream1_BASE),
      Import;
   DMA1_Stream2 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA1_Stream2_BASE),
      Import;
   DMA1_Stream3 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA1_Stream3_BASE),
      Import;
   DMA1_Stream4 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA1_Stream4_BASE),
      Import;
   DMA1_Stream5 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA1_Stream5_BASE),
      Import;
   DMA1_Stream6 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA1_Stream6_BASE),
      Import;
   DMA1_Stream7 : DMA_Stream_Register with

      Volatile,
      Address => System'To_Address (DMA1_Stream7_BASE),
      Import;
   DMA2 : DMA_Register with
      Volatile,
      Address => System'To_Address (DMA2_BASE),
      Import;
   DMA2_Stream0 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA2_Stream0_BASE),
      Import;
   DMA2_Stream1 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA2_Stream1_BASE),
      Import;
   DMA2_Stream2 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA2_Stream2_BASE),
      Import;
   DMA2_Stream3 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA2_Stream3_BASE),
      Import;
   DMA2_Stream4 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA2_Stream4_BASE),
      Import;
   DMA2_Stream5 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA2_Stream5_BASE),
      Import;
   DMA2_Stream6 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA2_Stream6_BASE),
      Import;
   DMA2_Stream7 : DMA_Stream_Register with
      Volatile,
      Address => System'To_Address (DMA2_Stream7_BASE),
      Import;

-- /******************************************************************************/
-- /*                                                                            */
-- /*                             DMA Controller                                 */
-- /*                                                                            */
-- /******************************************************************************/
-- /********************  Bits definition for DMA_SxCR register  *****************/
   DMA_SxCR_CHSEL    : constant Word := 16#0E000000#;
   DMA_SxCR_CHSEL_0  : constant Word := 16#02000000#;
   DMA_SxCR_CHSEL_1  : constant Word := 16#04000000#;
   DMA_SxCR_CHSEL_2  : constant Word := 16#08000000#;
   DMA_SxCR_MBURST   : constant Word := 16#01800000#;
   DMA_SxCR_MBURST_0 : constant Word := 16#00800000#;
   DMA_SxCR_MBURST_1 : constant Word := 16#01000000#;
   DMA_SxCR_PBURST   : constant Word := 16#00600000#;
   DMA_SxCR_PBURST_0 : constant Word := 16#00200000#;
   DMA_SxCR_PBURST_1 : constant Word := 16#00400000#;
   DMA_SxCR_CT       : constant Word := 16#00080000#;
   DMA_SxCR_DBM      : constant Word := 16#00040000#;
   DMA_SxCR_PL       : constant Word := 16#00030000#;
   DMA_SxCR_PL_0     : constant Word := 16#00010000#;
   DMA_SxCR_PL_1     : constant Word := 16#00020000#;
   DMA_SxCR_PINCOS   : constant Word := 16#00008000#;
   DMA_SxCR_MSIZE    : constant Word := 16#00006000#;
   DMA_SxCR_MSIZE_0  : constant Word := 16#00002000#;
   DMA_SxCR_MSIZE_1  : constant Word := 16#00004000#;
   DMA_SxCR_PSIZE    : constant Word := 16#00001800#;
   DMA_SxCR_PSIZE_0  : constant Word := 16#00000800#;
   DMA_SxCR_PSIZE_1  : constant Word := 16#00001000#;
   DMA_SxCR_MINC     : constant Word := 16#00000400#;
   DMA_SxCR_PINC     : constant Word := 16#00000200#;
   DMA_SxCR_CIRC     : constant Word := 16#00000100#;
   DMA_SxCR_DIR      : constant Word := 16#000000C0#;
   DMA_SxCR_DIR_0    : constant Word := 16#00000040#;
   DMA_SxCR_DIR_1    : constant Word := 16#00000080#;
   DMA_SxCR_PFCTRL   : constant Word := 16#00000020#;
   DMA_SxCR_TCIE     : constant Word := 16#00000010#;
   DMA_SxCR_HTIE     : constant Word := 16#00000008#;
   DMA_SxCR_TEIE     : constant Word := 16#00000004#;
   DMA_SxCR_DMEIE    : constant Word := 16#00000002#;
   DMA_SxCR_EN       : constant Word := 16#00000001#;

-- /* Legacy defines */
   DMA_SxCR_ACK : constant Word := 16#00100000#;

-- /********************  Bits definition for DMA_SxCNDTR register  **************/
   DMA_SxNDT    : constant Word := 16#0000FFFF#;
   DMA_SxNDT_0  : constant Word := 16#00000001#;
   DMA_SxNDT_1  : constant Word := 16#00000002#;
   DMA_SxNDT_2  : constant Word := 16#00000004#;
   DMA_SxNDT_3  : constant Word := 16#00000008#;
   DMA_SxNDT_4  : constant Word := 16#00000010#;
   DMA_SxNDT_5  : constant Word := 16#00000020#;
   DMA_SxNDT_6  : constant Word := 16#00000040#;
   DMA_SxNDT_7  : constant Word := 16#00000080#;
   DMA_SxNDT_8  : constant Word := 16#00000100#;
   DMA_SxNDT_9  : constant Word := 16#00000200#;
   DMA_SxNDT_10 : constant Word := 16#00000400#;
   DMA_SxNDT_11 : constant Word := 16#00000800#;
   DMA_SxNDT_12 : constant Word := 16#00001000#;
   DMA_SxNDT_13 : constant Word := 16#00002000#;
   DMA_SxNDT_14 : constant Word := 16#00004000#;
   DMA_SxNDT_15 : constant Word := 16#00008000#;

-- /********************  Bits definition for DMA_SxFCR register  ****************/
   DMA_SxFCR_FEIE  : constant Word := 16#00000080#;
   DMA_SxFCR_FS    : constant Word := 16#00000038#;
   DMA_SxFCR_FS_0  : constant Word := 16#00000008#;
   DMA_SxFCR_FS_1  : constant Word := 16#00000010#;
   DMA_SxFCR_FS_2  : constant Word := 16#00000020#;
   DMA_SxFCR_DMDIS : constant Word := 16#00000004#;
   DMA_SxFCR_FTH   : constant Word := 16#00000003#;
   DMA_SxFCR_FTH_0 : constant Word := 16#00000001#;
   DMA_SxFCR_FTH_1 : constant Word := 16#00000002#;

-- /********************  Bits definition for DMA_LISR register  *****************/
   DMA_LISR_TCIF3  : constant Word := 16#08000000#;
   DMA_LISR_HTIF3  : constant Word := 16#04000000#;
   DMA_LISR_TEIF3  : constant Word := 16#02000000#;
   DMA_LISR_DMEIF3 : constant Word := 16#01000000#;
   DMA_LISR_FEIF3  : constant Word := 16#00400000#;
   DMA_LISR_TCIF2  : constant Word := 16#00200000#;
   DMA_LISR_HTIF2  : constant Word := 16#00100000#;
   DMA_LISR_TEIF2  : constant Word := 16#00080000#;
   DMA_LISR_DMEIF2 : constant Word := 16#00040000#;
   DMA_LISR_FEIF2  : constant Word := 16#00010000#;
   DMA_LISR_TCIF1  : constant Word := 16#00000800#;
   DMA_LISR_HTIF1  : constant Word := 16#00000400#;
   DMA_LISR_TEIF1  : constant Word := 16#00000200#;
   DMA_LISR_DMEIF1 : constant Word := 16#00000100#;
   DMA_LISR_FEIF1  : constant Word := 16#00000040#;
   DMA_LISR_TCIF0  : constant Word := 16#00000020#;
   DMA_LISR_HTIF0  : constant Word := 16#00000010#;
   DMA_LISR_TEIF0  : constant Word := 16#00000008#;
   DMA_LISR_DMEIF0 : constant Word := 16#00000004#;
   DMA_LISR_FEIF0  : constant Word := 16#00000001#;

-- /********************  Bits definition for DMA_HISR register  *****************/
   DMA_HISR_TCIF7  : constant Word := 16#08000000#;
   DMA_HISR_HTIF7  : constant Word := 16#04000000#;
   DMA_HISR_TEIF7  : constant Word := 16#02000000#;
   DMA_HISR_DMEIF7 : constant Word := 16#01000000#;
   DMA_HISR_FEIF7  : constant Word := 16#00400000#;
   DMA_HISR_TCIF6  : constant Word := 16#00200000#;
   DMA_HISR_HTIF6  : constant Word := 16#00100000#;
   DMA_HISR_TEIF6  : constant Word := 16#00080000#;
   DMA_HISR_DMEIF6 : constant Word := 16#00040000#;
   DMA_HISR_FEIF6  : constant Word := 16#00010000#;
   DMA_HISR_TCIF5  : constant Word := 16#00000800#;
   DMA_HISR_HTIF5  : constant Word := 16#00000400#;
   DMA_HISR_TEIF5  : constant Word := 16#00000200#;
   DMA_HISR_DMEIF5 : constant Word := 16#00000100#;
   DMA_HISR_FEIF5  : constant Word := 16#00000040#;
   DMA_HISR_TCIF4  : constant Word := 16#00000020#;
   DMA_HISR_HTIF4  : constant Word := 16#00000010#;
   DMA_HISR_TEIF4  : constant Word := 16#00000008#;
   DMA_HISR_DMEIF4 : constant Word := 16#00000004#;
   DMA_HISR_FEIF4  : constant Word := 16#00000001#;

-- /********************  Bits definition for DMA_LIFCR register  ****************/
   DMA_LIFCR_CTCIF3  : constant Word := 16#08000000#;
   DMA_LIFCR_CHTIF3  : constant Word := 16#04000000#;
   DMA_LIFCR_CTEIF3  : constant Word := 16#02000000#;
   DMA_LIFCR_CDMEIF3 : constant Word := 16#01000000#;
   DMA_LIFCR_CFEIF3  : constant Word := 16#00400000#;
   DMA_LIFCR_CTCIF2  : constant Word := 16#00200000#;
   DMA_LIFCR_CHTIF2  : constant Word := 16#00100000#;
   DMA_LIFCR_CTEIF2  : constant Word := 16#00080000#;
   DMA_LIFCR_CDMEIF2 : constant Word := 16#00040000#;
   DMA_LIFCR_CFEIF2  : constant Word := 16#00010000#;
   DMA_LIFCR_CTCIF1  : constant Word := 16#00000800#;
   DMA_LIFCR_CHTIF1  : constant Word := 16#00000400#;
   DMA_LIFCR_CTEIF1  : constant Word := 16#00000200#;
   DMA_LIFCR_CDMEIF1 : constant Word := 16#00000100#;
   DMA_LIFCR_CFEIF1  : constant Word := 16#00000040#;
   DMA_LIFCR_CTCIF0  : constant Word := 16#00000020#;
   DMA_LIFCR_CHTIF0  : constant Word := 16#00000010#;
   DMA_LIFCR_CTEIF0  : constant Word := 16#00000008#;
   DMA_LIFCR_CDMEIF0 : constant Word := 16#00000004#;
   DMA_LIFCR_CFEIF0  : constant Word := 16#00000001#;

-- /********************  Bits definition for DMA_HIFCR  register  ****************/
   DMA_HIFCR_CTCIF7  : constant Word := 16#08000000#;
   DMA_HIFCR_CHTIF7  : constant Word := 16#04000000#;
   DMA_HIFCR_CTEIF7  : constant Word := 16#02000000#;
   DMA_HIFCR_CDMEIF7 : constant Word := 16#01000000#;
   DMA_HIFCR_CFEIF7  : constant Word := 16#00400000#;
   DMA_HIFCR_CTCIF6  : constant Word := 16#00200000#;
   DMA_HIFCR_CHTIF6  : constant Word := 16#00100000#;
   DMA_HIFCR_CTEIF6  : constant Word := 16#00080000#;
   DMA_HIFCR_CDMEIF6 : constant Word := 16#00040000#;
   DMA_HIFCR_CFEIF6  : constant Word := 16#00010000#;
   DMA_HIFCR_CTCIF5  : constant Word := 16#00000800#;
   DMA_HIFCR_CHTIF5  : constant Word := 16#00000400#;
   DMA_HIFCR_CTEIF5  : constant Word := 16#00000200#;
   DMA_HIFCR_CDMEIF5 : constant Word := 16#00000100#;
   DMA_HIFCR_CFEIF5  : constant Word := 16#00000040#;
   DMA_HIFCR_CTCIF4  : constant Word := 16#00000020#;
   DMA_HIFCR_CHTIF4  : constant Word := 16#00000010#;
   DMA_HIFCR_CTEIF4  : constant Word := 16#00000008#;
   DMA_HIFCR_CDMEIF4 : constant Word := 16#00000004#;
   DMA_HIFCR_CFEIF4  : constant Word := 16#00000001#;

end stm32f407.registers.dma;
