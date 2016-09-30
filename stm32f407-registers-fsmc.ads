pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.fsmc is
  --*
   --  * @brief Flexible Static Memory Controller
   --

  --!< NOR/PSRAM chip-select control register(BCR) and chip-select timing register(BTR), Address offset: 16#00-1C
   type FSMC_Bank1_Register_BTCR_array is array (0 .. 7) of aliased Word;
   type FSMC_Bank1_Register is record
      BTCR : aliased FSMC_Bank1_Register_BTCR_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:492
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      FSMC_Bank1_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:493
   subtype FSMC_Bank1_TypeDef is FSMC_Bank1_Register;
  --*
   --  * @brief Flexible Static Memory Controller Bank1E
   --

  --!< NOR/PSRAM write timing registers, Address offset: 16#104-  :constant word :=16#11C
   type FSMC_Bank1E_Register_BWTR_array is array (0 .. 6) of aliased Word;
   type FSMC_Bank1E_Register is record
      BWTR : aliased FSMC_Bank1E_Register_BWTR_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:501
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      FSMC_Bank1E_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:502
   subtype FSMC_Bank1E_TypeDef is FSMC_Bank1E_Register;
  --*
   --  * @brief Flexible Static Memory Controller Bank2
   --

  --!< NAND Flash control register 2,                       Address offset: 16#60
  --!< NAND Flash FIFO status and interrupt register 2,     Address offset: 16#64
  --!< NAND Flash Common memory space timing register 2,    Address offset: 16#68
  --!< NAND Flash Attribute memory space timing register 2, Address offset: 16#6C
  --!< Reserved, 16#70
  --!< NAND Flash ECC result registers 2,                   Address offset: 16#74
  --!< Reserved, 16#78
  --!< Reserved, 16#7C
  --!< NAND Flash control register 3,                       Address offset: 16#80
  --!< NAND Flash FIFO status and interrupt register 3,     Address offset: 16#84
  --!< NAND Flash Common memory space timing register 3,    Address offset: 16#88
  --!< NAND Flash Attribute memory space timing register 3, Address offset: 16#8C
  --!< Reserved, 16#90
  --!< NAND Flash ECC result registers 3,                   Address offset: 16#94
   type FSMC_Bank2_3_Register is record
      PCR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:510
      SR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:511
      PMEM2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:512
      PATT2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:513
      RESERVED0 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:514
      ECCR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:515
      RESERVED1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:516
      RESERVED2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:517
      PCR3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:518
      SR3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:519
      PMEM3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:520
      PATT3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:521
      RESERVED3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:522
      ECCR3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:523
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      FSMC_Bank2_3_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:524
   subtype FSMC_Bank2_3_TypeDef is FSMC_Bank2_3_Register;
  --*
   --  * @brief Flexible Static Memory Controller Bank4
   --

  --!< PC Card  control register 4,                       Address offset: 16#A0
  --!< PC Card  FIFO status and interrupt register 4,     Address offset: 16#A4
  --!< PC Card  Common memory space timing register 4,    Address offset: 16#A8
  --!< PC Card  Attribute memory space timing register 4, Address offset: 16#AC
  --!< PC Card  I/O space timing register 4,              Address offset: 16#B0
   type FSMC_Bank4_Register is record
      PCR4 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:532
      SR4 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:533
      PMEM4 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:534
      PATT4 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:535
      PIO4 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:536
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      FSMC_Bank4_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:537
   subtype FSMC_Bank4_TypeDef is FSMC_Bank4_Register;
      
      
   FSMC_Bank1 : FSMC_Bank1_Register with
      Volatile,
      Address => System'To_Address (FSMC_Bank1_R_BASE),
      Import;
   FSMC_Bank1E : FSMC_Bank1E_Register with
      Volatile,
      Address => System'To_Address (FSMC_Bank1E_R_BASE),
      Import;
   FSMC_Bank2_3 : FSMC_Bank2_3_Register with
      Volatile,
      Address => System'To_Address (FSMC_Bank2_3_R_BASE),
      Import;
   FSMC_Bank4 : FSMC_Bank4_Register with
      Volatile,
      Address => System'To_Address (FSMC_Bank4_R_BASE),
     Import;
   
   

-- /******************************************************************************/
-- /*                                                                            */
-- /*                       Flexible Static Memory Controller                    */
-- /*                                                                            */
-- /******************************************************************************/
-- /******************  Bit definition for FSMC_BCR1 register  *******************/
   FSMC_BCR1_MBKEN  :constant word :=16#00000001#;       -- /*!<Memory bank enable bit                 */
   FSMC_BCR1_MUXEN  :constant word :=16#00000002#;       -- /*!<Address/data multiplexing enable bit   */

   FSMC_BCR1_MTYP  :constant word :=16#0000000C#;       -- /*!<MTYP[1:0] bits (Memory type)           */
   FSMC_BCR1_MTYP_0  :constant word :=16#00000004#;       -- /*!<Bit 0 */
   FSMC_BCR1_MTYP_1  :constant word :=16#00000008#;       -- /*!<Bit 1 */

   FSMC_BCR1_MWID  :constant word :=16#00000030#;       -- /*!<MWID[1:0] bits (Memory data bus width) */
   FSMC_BCR1_MWID_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BCR1_MWID_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */

   FSMC_BCR1_FACCEN  :constant word :=16#00000040#;       -- /*!<Flash access enable                    */
   FSMC_BCR1_BURSTEN  :constant word :=16#00000100#;       -- /*!<Burst enable bit                       */
   FSMC_BCR1_WAITPOL  :constant word :=16#00000200#;       -- /*!<Wait signal polarity bit               */
   FSMC_BCR1_WRAPMOD  :constant word :=16#00000400#;       -- /*!<Wrapped burst mode support             */
   FSMC_BCR1_WAITCFG  :constant word :=16#00000800#;       -- /*!<Wait timing configuration              */
   FSMC_BCR1_WREN  :constant word :=16#00001000#;       -- /*!<Write enable bit                       */
   FSMC_BCR1_WAITEN  :constant word :=16#00002000#;       -- /*!<Wait enable bit                        */
   FSMC_BCR1_EXTMOD  :constant word :=16#00004000#;       -- /*!<Extended mode enable                   */
   FSMC_BCR1_ASYNCWAIT  :constant word :=16#00008000#;       -- /*!<Asynchronous wait                      */
   FSMC_BCR1_CPSIZE  :constant word :=16#00070000#;       -- /*!<CRAM page size */
   FSMC_BCR1_CPSIZE_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BCR1_CPSIZE_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BCR1_CPSIZE_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BCR1_CBURSTRW  :constant word :=16#00080000#;       -- /*!<Write burst enable                     */

-- /******************  Bit definition for FSMC_BCR2 register  *******************/
   FSMC_BCR2_MBKEN  :constant word :=16#00000001#;       -- /*!<Memory bank enable bit                */
   FSMC_BCR2_MUXEN  :constant word :=16#00000002#;       -- /*!<Address/data multiplexing enable bit   */

   FSMC_BCR2_MTYP  :constant word :=16#0000000C#;       -- /*!<MTYP[1:0] bits (Memory type)           */
   FSMC_BCR2_MTYP_0  :constant word :=16#00000004#;       -- /*!<Bit 0 */
   FSMC_BCR2_MTYP_1  :constant word :=16#00000008#;       -- /*!<Bit 1 */

   FSMC_BCR2_MWID  :constant word :=16#00000030#;       -- /*!<MWID[1:0] bits (Memory data bus width) */
   FSMC_BCR2_MWID_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BCR2_MWID_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */

   FSMC_BCR2_FACCEN  :constant word :=16#00000040#;       -- /*!<Flash access enable                    */
   FSMC_BCR2_BURSTEN  :constant word :=16#00000100#;       -- /*!<Burst enable bit                       */
   FSMC_BCR2_WAITPOL  :constant word :=16#00000200#;       -- /*!<Wait signal polarity bit               */
   FSMC_BCR2_WRAPMOD  :constant word :=16#00000400#;       -- /*!<Wrapped burst mode support             */
   FSMC_BCR2_WAITCFG  :constant word :=16#00000800#;       -- /*!<Wait timing configuration              */
   FSMC_BCR2_WREN  :constant word :=16#00001000#;       -- /*!<Write enable bit                       */
   FSMC_BCR2_WAITEN  :constant word :=16#00002000#;       -- /*!<Wait enable bit                        */
   FSMC_BCR2_EXTMOD  :constant word :=16#00004000#;       -- /*!<Extended mode enable                   */
   FSMC_BCR2_ASYNCWAIT  :constant word :=16#00008000#;       -- /*!<Asynchronous wait                      */
   FSMC_BCR2_CPSIZE  :constant word :=16#00070000#;       -- /*!<CRAM page size */
   FSMC_BCR2_CPSIZE_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BCR2_CPSIZE_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BCR2_CPSIZE_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BCR2_CBURSTRW  :constant word :=16#00080000#;       -- /*!<Write burst enable                     */

-- /******************  Bit definition for FSMC_BCR3 register  *******************/
   FSMC_BCR3_MBKEN  :constant word :=16#00000001#;       -- /*!<Memory bank enable bit                 */
   FSMC_BCR3_MUXEN  :constant word :=16#00000002#;       -- /*!<Address/data multiplexing enable bit   */

   FSMC_BCR3_MTYP  :constant word :=16#0000000C#;       -- /*!<MTYP[1:0] bits (Memory type)           */
   FSMC_BCR3_MTYP_0  :constant word :=16#00000004#;       -- /*!<Bit 0 */
   FSMC_BCR3_MTYP_1  :constant word :=16#00000008#;       -- /*!<Bit 1 */

   FSMC_BCR3_MWID  :constant word :=16#00000030#;       -- /*!<MWID[1:0] bits (Memory data bus width) */
   FSMC_BCR3_MWID_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BCR3_MWID_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */

   FSMC_BCR3_FACCEN  :constant word :=16#00000040#;       -- /*!<Flash access enable                    */
   FSMC_BCR3_BURSTEN  :constant word :=16#00000100#;       -- /*!<Burst enable bit                       */
   FSMC_BCR3_WAITPOL  :constant word :=16#00000200#;       -- /*!<Wait signal polarity bit               */
   FSMC_BCR3_WRAPMOD  :constant word :=16#00000400#;       -- /*!<Wrapped burst mode support             */
   FSMC_BCR3_WAITCFG  :constant word :=16#00000800#;       -- /*!<Wait timing configuration              */
   FSMC_BCR3_WREN  :constant word :=16#00001000#;       -- /*!<Write enable bit                       */
   FSMC_BCR3_WAITEN  :constant word :=16#00002000#;       -- /*!<Wait enable bit                        */
   FSMC_BCR3_EXTMOD  :constant word :=16#00004000#;       -- /*!<Extended mode enable                   */
   FSMC_BCR3_ASYNCWAIT  :constant word :=16#00008000#;       -- /*!<Asynchronous wait                      */
   FSMC_BCR3_CPSIZE  :constant word :=16#00070000#;       -- /*!<CRAM page size */
   FSMC_BCR3_CPSIZE_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BCR3_CPSIZE_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BCR3_CPSIZE_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BCR3_CBURSTRW  :constant word :=16#00080000#;       -- /*!<Write burst enable                     */

-- /******************  Bit definition for FSMC_BCR4 register  *******************/
   FSMC_BCR4_MBKEN  :constant word :=16#00000001#;       -- /*!<Memory bank enable bit */
   FSMC_BCR4_MUXEN  :constant word :=16#00000002#;       -- /*!<Address/data multiplexing enable bit   */

   FSMC_BCR4_MTYP  :constant word :=16#0000000C#;       -- /*!<MTYP[1:0] bits (Memory type)           */
   FSMC_BCR4_MTYP_0  :constant word :=16#00000004#;       -- /*!<Bit 0 */
   FSMC_BCR4_MTYP_1  :constant word :=16#00000008#;       -- /*!<Bit 1 */

   FSMC_BCR4_MWID  :constant word :=16#00000030#;       -- /*!<MWID[1:0] bits (Memory data bus width) */
   FSMC_BCR4_MWID_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BCR4_MWID_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */

   FSMC_BCR4_FACCEN  :constant word :=16#00000040#;       -- /*!<Flash access enable                    */
   FSMC_BCR4_BURSTEN  :constant word :=16#00000100#;       -- /*!<Burst enable bit                       */
   FSMC_BCR4_WAITPOL  :constant word :=16#00000200#;       -- /*!<Wait signal polarity bit               */
   FSMC_BCR4_WRAPMOD  :constant word :=16#00000400#;       -- /*!<Wrapped burst mode support             */
   FSMC_BCR4_WAITCFG  :constant word :=16#00000800#;       -- /*!<Wait timing configuration              */
   FSMC_BCR4_WREN  :constant word :=16#00001000#;       -- /*!<Write enable bit                       */
   FSMC_BCR4_WAITEN  :constant word :=16#00002000#;       -- /*!<Wait enable bit                        */
   FSMC_BCR4_EXTMOD  :constant word :=16#00004000#;       -- /*!<Extended mode enable                   */
   FSMC_BCR4_ASYNCWAIT  :constant word :=16#00008000#;       -- /*!<Asynchronous wait                      */
   FSMC_BCR4_CPSIZE  :constant word :=16#00070000#;       -- /*!<CRAM page size */
   FSMC_BCR4_CPSIZE_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BCR4_CPSIZE_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BCR4_CPSIZE_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BCR4_CBURSTRW  :constant word :=16#00080000#;       -- /*!<Write burst enable                     */

-- /******************  Bit definition for FSMC_BTR1 register  ******************/
   FSMC_BTR1_ADDSET  :constant word :=16#0000000F#;       -- /*!<ADDSET[3:0] bits (Address setup phase duration) */
   FSMC_BTR1_ADDSET_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_BTR1_ADDSET_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_BTR1_ADDSET_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_BTR1_ADDSET_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */

   FSMC_BTR1_ADDHLD  :constant word :=16#000000F0#;       -- /*!<ADDHLD[3:0] bits (Address-hold phase duration) */
   FSMC_BTR1_ADDHLD_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BTR1_ADDHLD_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */
   FSMC_BTR1_ADDHLD_2  :constant word :=16#00000040#;       -- /*!<Bit 2 */
   FSMC_BTR1_ADDHLD_3  :constant word :=16#00000080#;       -- /*!<Bit 3 */

   FSMC_BTR1_DATAST  :constant word :=16#0000FF00#;       -- /*!<DATAST [7:0] bits (Data-phase duration) */
   FSMC_BTR1_DATAST_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_BTR1_DATAST_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_BTR1_DATAST_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_BTR1_DATAST_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_BTR1_DATAST_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_BTR1_DATAST_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_BTR1_DATAST_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_BTR1_DATAST_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_BTR1_BUSTURN  :constant word :=16#000F0000#;       -- /*!<BUSTURN[3:0] bits (Bus turnaround phase duration) */
   FSMC_BTR1_BUSTURN_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BTR1_BUSTURN_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BTR1_BUSTURN_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BTR1_BUSTURN_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */

   FSMC_BTR1_CLKDIV  :constant word :=16#00F00000#;       -- /*!<CLKDIV[3:0] bits (Clock divide ratio) */
   FSMC_BTR1_CLKDIV_0  :constant word :=16#00100000#;       -- /*!<Bit 0 */
   FSMC_BTR1_CLKDIV_1  :constant word :=16#00200000#;       -- /*!<Bit 1 */
   FSMC_BTR1_CLKDIV_2  :constant word :=16#00400000#;       -- /*!<Bit 2 */
   FSMC_BTR1_CLKDIV_3  :constant word :=16#00800000#;       -- /*!<Bit 3 */

   FSMC_BTR1_DATLAT  :constant word :=16#0F000000#;       -- /*!<DATLA[3:0] bits (Data latency) */
   FSMC_BTR1_DATLAT_0  :constant word :=16#01000000#;       -- /*!<Bit 0 */
   FSMC_BTR1_DATLAT_1  :constant word :=16#02000000#;       -- /*!<Bit 1 */
   FSMC_BTR1_DATLAT_2  :constant word :=16#04000000#;       -- /*!<Bit 2 */
   FSMC_BTR1_DATLAT_3  :constant word :=16#08000000#;       -- /*!<Bit 3 */

   FSMC_BTR1_ACCMOD  :constant word :=16#30000000#;       -- /*!<ACCMOD[1:0] bits (Access mode) */
   FSMC_BTR1_ACCMOD_0  :constant word :=16#10000000#;       -- /*!<Bit 0 */
   FSMC_BTR1_ACCMOD_1  :constant word :=16#20000000#;       -- /*!<Bit 1 */

-- /******************  Bit definition for FSMC_BTR2 register  *******************/
   FSMC_BTR2_ADDSET  :constant word :=16#0000000F#;       -- /*!<ADDSET[3:0] bits (Address setup phase duration) */
   FSMC_BTR2_ADDSET_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_BTR2_ADDSET_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_BTR2_ADDSET_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_BTR2_ADDSET_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */

   FSMC_BTR2_ADDHLD  :constant word :=16#000000F0#;       -- /*!<ADDHLD[3:0] bits (Address-hold phase duration) */
   FSMC_BTR2_ADDHLD_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BTR2_ADDHLD_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */
   FSMC_BTR2_ADDHLD_2  :constant word :=16#00000040#;       -- /*!<Bit 2 */
   FSMC_BTR2_ADDHLD_3  :constant word :=16#00000080#;       -- /*!<Bit 3 */

   FSMC_BTR2_DATAST  :constant word :=16#0000FF00#;       -- /*!<DATAST [7:0] bits (Data-phase duration) */
   FSMC_BTR2_DATAST_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_BTR2_DATAST_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_BTR2_DATAST_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_BTR2_DATAST_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_BTR2_DATAST_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_BTR2_DATAST_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_BTR2_DATAST_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_BTR2_DATAST_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_BTR2_BUSTURN  :constant word :=16#000F0000#;       -- /*!<BUSTURN[3:0] bits (Bus turnaround phase duration) */
   FSMC_BTR2_BUSTURN_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BTR2_BUSTURN_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BTR2_BUSTURN_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BTR2_BUSTURN_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */

   FSMC_BTR2_CLKDIV  :constant word :=16#00F00000#;       -- /*!<CLKDIV[3:0] bits (Clock divide ratio) */
   FSMC_BTR2_CLKDIV_0  :constant word :=16#00100000#;       -- /*!<Bit 0 */
   FSMC_BTR2_CLKDIV_1  :constant word :=16#00200000#;       -- /*!<Bit 1 */
   FSMC_BTR2_CLKDIV_2  :constant word :=16#00400000#;       -- /*!<Bit 2 */
   FSMC_BTR2_CLKDIV_3  :constant word :=16#00800000#;       -- /*!<Bit 3 */

   FSMC_BTR2_DATLAT  :constant word :=16#0F000000#;       -- /*!<DATLA[3:0] bits (Data latency) */
   FSMC_BTR2_DATLAT_0  :constant word :=16#01000000#;       -- /*!<Bit 0 */
   FSMC_BTR2_DATLAT_1  :constant word :=16#02000000#;       -- /*!<Bit 1 */
   FSMC_BTR2_DATLAT_2  :constant word :=16#04000000#;       -- /*!<Bit 2 */
   FSMC_BTR2_DATLAT_3  :constant word :=16#08000000#;       -- /*!<Bit 3 */

   FSMC_BTR2_ACCMOD  :constant word :=16#30000000#;       -- /*!<ACCMOD[1:0] bits (Access mode) */
   FSMC_BTR2_ACCMOD_0  :constant word :=16#10000000#;       -- /*!<Bit 0 */
   FSMC_BTR2_ACCMOD_1  :constant word :=16#20000000#;       -- /*!<Bit 1 */

-- /*******************  Bit definition for FSMC_BTR3 register  *******************/
   FSMC_BTR3_ADDSET  :constant word :=16#0000000F#;       -- /*!<ADDSET[3:0] bits (Address setup phase duration) */
   FSMC_BTR3_ADDSET_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_BTR3_ADDSET_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_BTR3_ADDSET_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_BTR3_ADDSET_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */

   FSMC_BTR3_ADDHLD  :constant word :=16#000000F0#;       -- /*!<ADDHLD[3:0] bits (Address-hold phase duration) */
   FSMC_BTR3_ADDHLD_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BTR3_ADDHLD_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */
   FSMC_BTR3_ADDHLD_2  :constant word :=16#00000040#;       -- /*!<Bit 2 */
   FSMC_BTR3_ADDHLD_3  :constant word :=16#00000080#;       -- /*!<Bit 3 */

   FSMC_BTR3_DATAST  :constant word :=16#0000FF00#;       -- /*!<DATAST [7:0] bits (Data-phase duration) */
   FSMC_BTR3_DATAST_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_BTR3_DATAST_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_BTR3_DATAST_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_BTR3_DATAST_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_BTR3_DATAST_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_BTR3_DATAST_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_BTR3_DATAST_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_BTR3_DATAST_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_BTR3_BUSTURN  :constant word :=16#000F0000#;       -- /*!<BUSTURN[3:0] bits (Bus turnaround phase duration) */
   FSMC_BTR3_BUSTURN_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BTR3_BUSTURN_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BTR3_BUSTURN_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BTR3_BUSTURN_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */

   FSMC_BTR3_CLKDIV  :constant word :=16#00F00000#;       -- /*!<CLKDIV[3:0] bits (Clock divide ratio) */
   FSMC_BTR3_CLKDIV_0  :constant word :=16#00100000#;       -- /*!<Bit 0 */
   FSMC_BTR3_CLKDIV_1  :constant word :=16#00200000#;       -- /*!<Bit 1 */
   FSMC_BTR3_CLKDIV_2  :constant word :=16#00400000#;       -- /*!<Bit 2 */
   FSMC_BTR3_CLKDIV_3  :constant word :=16#00800000#;       -- /*!<Bit 3 */

   FSMC_BTR3_DATLAT  :constant word :=16#0F000000#;       -- /*!<DATLA[3:0] bits (Data latency) */
   FSMC_BTR3_DATLAT_0  :constant word :=16#01000000#;       -- /*!<Bit 0 */
   FSMC_BTR3_DATLAT_1  :constant word :=16#02000000#;       -- /*!<Bit 1 */
   FSMC_BTR3_DATLAT_2  :constant word :=16#04000000#;       -- /*!<Bit 2 */
   FSMC_BTR3_DATLAT_3  :constant word :=16#08000000#;       -- /*!<Bit 3 */

   FSMC_BTR3_ACCMOD  :constant word :=16#30000000#;       -- /*!<ACCMOD[1:0] bits (Access mode) */
   FSMC_BTR3_ACCMOD_0  :constant word :=16#10000000#;       -- /*!<Bit 0 */
   FSMC_BTR3_ACCMOD_1  :constant word :=16#20000000#;       -- /*!<Bit 1 */

-- /******************  Bit definition for FSMC_BTR4 register  *******************/
   FSMC_BTR4_ADDSET  :constant word :=16#0000000F#;       -- /*!<ADDSET[3:0] bits (Address setup phase duration) */
   FSMC_BTR4_ADDSET_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_BTR4_ADDSET_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_BTR4_ADDSET_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_BTR4_ADDSET_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */

   FSMC_BTR4_ADDHLD  :constant word :=16#000000F0#;       -- /*!<ADDHLD[3:0] bits (Address-hold phase duration) */
   FSMC_BTR4_ADDHLD_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BTR4_ADDHLD_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */
   FSMC_BTR4_ADDHLD_2  :constant word :=16#00000040#;       -- /*!<Bit 2 */
   FSMC_BTR4_ADDHLD_3  :constant word :=16#00000080#;       -- /*!<Bit 3 */

   FSMC_BTR4_DATAST  :constant word :=16#0000FF00#;       -- /*!<DATAST [3:0] bits (Data-phase duration) */
   FSMC_BTR4_DATAST_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_BTR4_DATAST_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_BTR4_DATAST_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_BTR4_DATAST_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_BTR4_DATAST_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_BTR4_DATAST_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_BTR4_DATAST_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_BTR4_DATAST_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_BTR4_BUSTURN  :constant word :=16#000F0000#;       -- /*!<BUSTURN[3:0] bits (Bus turnaround phase duration) */
   FSMC_BTR4_BUSTURN_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BTR4_BUSTURN_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BTR4_BUSTURN_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BTR4_BUSTURN_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */

   FSMC_BTR4_CLKDIV  :constant word :=16#00F00000#;       -- /*!<CLKDIV[3:0] bits (Clock divide ratio) */
   FSMC_BTR4_CLKDIV_0  :constant word :=16#00100000#;       -- /*!<Bit 0 */
   FSMC_BTR4_CLKDIV_1  :constant word :=16#00200000#;       -- /*!<Bit 1 */
   FSMC_BTR4_CLKDIV_2  :constant word :=16#00400000#;       -- /*!<Bit 2 */
   FSMC_BTR4_CLKDIV_3  :constant word :=16#00800000#;       -- /*!<Bit 3 */

   FSMC_BTR4_DATLAT  :constant word :=16#0F000000#;       -- /*!<DATLA[3:0] bits (Data latency) */
   FSMC_BTR4_DATLAT_0  :constant word :=16#01000000#;       -- /*!<Bit 0 */
   FSMC_BTR4_DATLAT_1  :constant word :=16#02000000#;       -- /*!<Bit 1 */
   FSMC_BTR4_DATLAT_2  :constant word :=16#04000000#;       -- /*!<Bit 2 */
   FSMC_BTR4_DATLAT_3  :constant word :=16#08000000#;       -- /*!<Bit 3 */

   FSMC_BTR4_ACCMOD  :constant word :=16#30000000#;       -- /*!<ACCMOD[1:0] bits (Access mode) */
   FSMC_BTR4_ACCMOD_0  :constant word :=16#10000000#;       -- /*!<Bit 0 */
   FSMC_BTR4_ACCMOD_1  :constant word :=16#20000000#;       -- /*!<Bit 1 */

-- /******************  Bit definition for FSMC_BWTR1 register  ******************/
   FSMC_BWTR1_ADDSET  :constant word :=16#0000000F#;       -- /*!<ADDSET[3:0] bits (Address setup phase duration) */
   FSMC_BWTR1_ADDSET_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_BWTR1_ADDSET_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_BWTR1_ADDSET_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_BWTR1_ADDSET_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */

   FSMC_BWTR1_ADDHLD  :constant word :=16#000000F0#;       -- /*!<ADDHLD[3:0] bits (Address-hold phase duration) */
   FSMC_BWTR1_ADDHLD_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BWTR1_ADDHLD_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */
   FSMC_BWTR1_ADDHLD_2  :constant word :=16#00000040#;       -- /*!<Bit 2 */
   FSMC_BWTR1_ADDHLD_3  :constant word :=16#00000080#;       -- /*!<Bit 3 */

   FSMC_BWTR1_DATAST  :constant word :=16#0000FF00#;       -- /*!<DATAST [7:0] bits (Data-phase duration) */
   FSMC_BWTR1_DATAST_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_BWTR1_DATAST_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_BWTR1_DATAST_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_BWTR1_DATAST_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_BWTR1_DATAST_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_BWTR1_DATAST_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_BWTR1_DATAST_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_BWTR1_DATAST_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_BWTR1_BUSTURN  :constant word :=16#000F0000#;       -- /*!<BUSTURN[3:0] bits (Bus turnaround duration) */
   FSMC_BWTR1_BUSTURN_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BWTR1_BUSTURN_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BWTR1_BUSTURN_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BWTR1_BUSTURN_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */

   FSMC_BWTR1_ACCMOD  :constant word :=16#30000000#;       -- /*!<ACCMOD[1:0] bits (Access mode) */
   FSMC_BWTR1_ACCMOD_0  :constant word :=16#10000000#;       -- /*!<Bit 0 */
   FSMC_BWTR1_ACCMOD_1  :constant word :=16#20000000#;       -- /*!<Bit 1 */

-- /******************  Bit definition for FSMC_BWTR2 register  ******************/
   FSMC_BWTR2_ADDSET  :constant word :=16#0000000F#;       -- /*!<ADDSET[3:0] bits (Address setup phase duration) */
   FSMC_BWTR2_ADDSET_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_BWTR2_ADDSET_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_BWTR2_ADDSET_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_BWTR2_ADDSET_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */

   FSMC_BWTR2_ADDHLD  :constant word :=16#000000F0#;       -- /*!<ADDHLD[3:0] bits (Address-hold phase duration) */
   FSMC_BWTR2_ADDHLD_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BWTR2_ADDHLD_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */
   FSMC_BWTR2_ADDHLD_2  :constant word :=16#00000040#;       -- /*!<Bit 2 */
   FSMC_BWTR2_ADDHLD_3  :constant word :=16#00000080#;       -- /*!<Bit 3 */

   FSMC_BWTR2_DATAST  :constant word :=16#0000FF00#;       -- /*!<DATAST [7:0] bits (Data-phase duration) */
   FSMC_BWTR2_DATAST_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_BWTR2_DATAST_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_BWTR2_DATAST_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_BWTR2_DATAST_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_BWTR2_DATAST_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_BWTR2_DATAST_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_BWTR2_DATAST_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_BWTR2_DATAST_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_BWTR2_BUSTURN  :constant word :=16#000F0000#;       -- /*!<BUSTURN[3:0] bits (Bus turnaround duration) */
   FSMC_BWTR2_BUSTURN_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BWTR2_BUSTURN_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BWTR2_BUSTURN_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BWTR2_BUSTURN_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */

   FSMC_BWTR2_ACCMOD  :constant word :=16#30000000#;       -- /*!<ACCMOD[1:0] bits (Access mode) */
   FSMC_BWTR2_ACCMOD_0  :constant word :=16#10000000#;       -- /*!<Bit 0 */
   FSMC_BWTR2_ACCMOD_1  :constant word :=16#20000000#;       -- /*!<Bit 1 */

-- /******************  Bit definition for FSMC_BWTR3 register  ******************/
   FSMC_BWTR3_ADDSET  :constant word :=16#0000000F#;       -- /*!<ADDSET[3:0] bits (Address setup phase duration) */
   FSMC_BWTR3_ADDSET_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_BWTR3_ADDSET_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_BWTR3_ADDSET_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_BWTR3_ADDSET_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */

   FSMC_BWTR3_ADDHLD  :constant word :=16#000000F0#;       -- /*!<ADDHLD[3:0] bits (Address-hold phase duration) */
   FSMC_BWTR3_ADDHLD_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BWTR3_ADDHLD_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */
   FSMC_BWTR3_ADDHLD_2  :constant word :=16#00000040#;       -- /*!<Bit 2 */
   FSMC_BWTR3_ADDHLD_3  :constant word :=16#00000080#;       -- /*!<Bit 3 */

   FSMC_BWTR3_DATAST  :constant word :=16#0000FF00#;       -- /*!<DATAST [7:0] bits (Data-phase duration) */
   FSMC_BWTR3_DATAST_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_BWTR3_DATAST_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_BWTR3_DATAST_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_BWTR3_DATAST_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_BWTR3_DATAST_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_BWTR3_DATAST_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_BWTR3_DATAST_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_BWTR3_DATAST_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_BWTR3_BUSTURN  :constant word :=16#000F0000#;       -- /*!<BUSTURN[3:0] bits (Bus turnaround duration) */
   FSMC_BWTR3_BUSTURN_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BWTR3_BUSTURN_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BWTR3_BUSTURN_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BWTR3_BUSTURN_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */

   FSMC_BWTR3_ACCMOD  :constant word :=16#30000000#;       -- /*!<ACCMOD[1:0] bits (Access mode) */
   FSMC_BWTR3_ACCMOD_0  :constant word :=16#10000000#;       -- /*!<Bit 0 */
   FSMC_BWTR3_ACCMOD_1  :constant word :=16#20000000#;       -- /*!<Bit 1 */

-- /******************  Bit definition for FSMC_BWTR4 register  ******************/
   FSMC_BWTR4_ADDSET  :constant word :=16#0000000F#;       -- /*!<ADDSET[3:0] bits (Address setup phase duration) */
   FSMC_BWTR4_ADDSET_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_BWTR4_ADDSET_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_BWTR4_ADDSET_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_BWTR4_ADDSET_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */

   FSMC_BWTR4_ADDHLD  :constant word :=16#000000F0#;       -- /*!<ADDHLD[3:0] bits (Address-hold phase duration) */
   FSMC_BWTR4_ADDHLD_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_BWTR4_ADDHLD_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */
   FSMC_BWTR4_ADDHLD_2  :constant word :=16#00000040#;       -- /*!<Bit 2 */
   FSMC_BWTR4_ADDHLD_3  :constant word :=16#00000080#;       -- /*!<Bit 3 */

   FSMC_BWTR4_DATAST  :constant word :=16#0000FF00#;       -- /*!<DATAST [3:0] bits (Data-phase duration) */
   FSMC_BWTR4_DATAST_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_BWTR4_DATAST_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_BWTR4_DATAST_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_BWTR4_DATAST_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_BWTR4_DATAST_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_BWTR4_DATAST_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_BWTR4_DATAST_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_BWTR4_DATAST_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_BWTR4_BUSTURN  :constant word :=16#000F0000#;       -- /*!<BUSTURN[3:0] bits (Bus turnaround duration) */
   FSMC_BWTR4_BUSTURN_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_BWTR4_BUSTURN_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_BWTR4_BUSTURN_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_BWTR4_BUSTURN_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */

   FSMC_BWTR4_ACCMOD  :constant word :=16#30000000#;       -- /*!<ACCMOD[1:0] bits (Access mode) */
   FSMC_BWTR4_ACCMOD_0  :constant word :=16#10000000#;       -- /*!<Bit 0 */
   FSMC_BWTR4_ACCMOD_1  :constant word :=16#20000000#;       -- /*!<Bit 1 */

-- /******************  Bit definition for FSMC_PCR2 register  *******************/
   FSMC_PCR2_PWAITEN  :constant word :=16#00000002#;       -- /*!<Wait feature enable bit */
   FSMC_PCR2_PBKEN  :constant word :=16#00000004#;       -- /*!<PC Card/NAND Flash memory bank enable bit */
   FSMC_PCR2_PTYP  :constant word :=16#00000008#;       -- /*!<Memory type */

   FSMC_PCR2_PWID  :constant word :=16#00000030#;       -- /*!<PWID[1:0] bits (NAND Flash databus width) */
   FSMC_PCR2_PWID_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_PCR2_PWID_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */

   FSMC_PCR2_ECCEN  :constant word :=16#00000040#;       -- /*!<ECC computation logic enable bit */

   FSMC_PCR2_TCLR  :constant word :=16#00001E00#;       -- /*!<TCLR[3:0] bits (CLE to RE delay) */
   FSMC_PCR2_TCLR_0  :constant word :=16#00000200#;       -- /*!<Bit 0 */
   FSMC_PCR2_TCLR_1  :constant word :=16#00000400#;       -- /*!<Bit 1 */
   FSMC_PCR2_TCLR_2  :constant word :=16#00000800#;       -- /*!<Bit 2 */
   FSMC_PCR2_TCLR_3  :constant word :=16#00001000#;       -- /*!<Bit 3 */

   FSMC_PCR2_TAR  :constant word :=16#0001E000#;       -- /*!<TAR[3:0] bits (ALE to RE delay) */
   FSMC_PCR2_TAR_0  :constant word :=16#00002000#;       -- /*!<Bit 0 */
   FSMC_PCR2_TAR_1  :constant word :=16#00004000#;       -- /*!<Bit 1 */
   FSMC_PCR2_TAR_2  :constant word :=16#00008000#;       -- /*!<Bit 2 */
   FSMC_PCR2_TAR_3  :constant word :=16#00010000#;       -- /*!<Bit 3 */

   FSMC_PCR2_ECCPS  :constant word :=16#000E0000#;       -- /*!<ECCPS[1:0] bits (ECC page size) */
   FSMC_PCR2_ECCPS_0  :constant word :=16#00020000#;       -- /*!<Bit 0 */
   FSMC_PCR2_ECCPS_1  :constant word :=16#00040000#;       -- /*!<Bit 1 */
   FSMC_PCR2_ECCPS_2  :constant word :=16#00080000#;       -- /*!<Bit 2 */

-- /******************  Bit definition for FSMC_PCR3 register  *******************/
   FSMC_PCR3_PWAITEN  :constant word :=16#00000002#;       -- /*!<Wait feature enable bit */
   FSMC_PCR3_PBKEN  :constant word :=16#00000004#;       -- /*!<PC Card/NAND Flash memory bank enable bit */
   FSMC_PCR3_PTYP  :constant word :=16#00000008#;       -- /*!<Memory type */

   FSMC_PCR3_PWID  :constant word :=16#00000030#;       -- /*!<PWID[1:0] bits (NAND Flash databus width) */
   FSMC_PCR3_PWID_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_PCR3_PWID_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */

   FSMC_PCR3_ECCEN  :constant word :=16#00000040#;       -- /*!<ECC computation logic enable bit */

   FSMC_PCR3_TCLR  :constant word :=16#00001E00#;       -- /*!<TCLR[3:0] bits (CLE to RE delay) */
   FSMC_PCR3_TCLR_0  :constant word :=16#00000200#;       -- /*!<Bit 0 */
   FSMC_PCR3_TCLR_1  :constant word :=16#00000400#;       -- /*!<Bit 1 */
   FSMC_PCR3_TCLR_2  :constant word :=16#00000800#;       -- /*!<Bit 2 */
   FSMC_PCR3_TCLR_3  :constant word :=16#00001000#;       -- /*!<Bit 3 */

   FSMC_PCR3_TAR  :constant word :=16#0001E000#;       -- /*!<TAR[3:0] bits (ALE to RE delay) */
   FSMC_PCR3_TAR_0  :constant word :=16#00002000#;       -- /*!<Bit 0 */
   FSMC_PCR3_TAR_1  :constant word :=16#00004000#;       -- /*!<Bit 1 */
   FSMC_PCR3_TAR_2  :constant word :=16#00008000#;       -- /*!<Bit 2 */
   FSMC_PCR3_TAR_3  :constant word :=16#00010000#;       -- /*!<Bit 3 */

   FSMC_PCR3_ECCPS  :constant word :=16#000E0000#;       -- /*!<ECCPS[2:0] bits (ECC page size) */
   FSMC_PCR3_ECCPS_0  :constant word :=16#00020000#;       -- /*!<Bit 0 */
   FSMC_PCR3_ECCPS_1  :constant word :=16#00040000#;       -- /*!<Bit 1 */
   FSMC_PCR3_ECCPS_2  :constant word :=16#00080000#;       -- /*!<Bit 2 */

-- /******************  Bit definition for FSMC_PCR4 register  *******************/
   FSMC_PCR4_PWAITEN  :constant word :=16#00000002#;       -- /*!<Wait feature enable bit */
   FSMC_PCR4_PBKEN  :constant word :=16#00000004#;       -- /*!<PC Card/NAND Flash memory bank enable bit */
   FSMC_PCR4_PTYP  :constant word :=16#00000008#;       -- /*!<Memory type */

   FSMC_PCR4_PWID  :constant word :=16#00000030#;       -- /*!<PWID[1:0] bits (NAND Flash databus width) */
   FSMC_PCR4_PWID_0  :constant word :=16#00000010#;       -- /*!<Bit 0 */
   FSMC_PCR4_PWID_1  :constant word :=16#00000020#;       -- /*!<Bit 1 */

   FSMC_PCR4_ECCEN  :constant word :=16#00000040#;       -- /*!<ECC computation logic enable bit */

   FSMC_PCR4_TCLR  :constant word :=16#00001E00#;       -- /*!<TCLR[3:0] bits (CLE to RE delay) */
   FSMC_PCR4_TCLR_0  :constant word :=16#00000200#;       -- /*!<Bit 0 */
   FSMC_PCR4_TCLR_1  :constant word :=16#00000400#;       -- /*!<Bit 1 */
   FSMC_PCR4_TCLR_2  :constant word :=16#00000800#;       -- /*!<Bit 2 */
   FSMC_PCR4_TCLR_3  :constant word :=16#00001000#;       -- /*!<Bit 3 */

   FSMC_PCR4_TAR  :constant word :=16#0001E000#;       -- /*!<TAR[3:0] bits (ALE to RE delay) */
   FSMC_PCR4_TAR_0  :constant word :=16#00002000#;       -- /*!<Bit 0 */
   FSMC_PCR4_TAR_1  :constant word :=16#00004000#;       -- /*!<Bit 1 */
   FSMC_PCR4_TAR_2  :constant word :=16#00008000#;       -- /*!<Bit 2 */
   FSMC_PCR4_TAR_3  :constant word :=16#00010000#;       -- /*!<Bit 3 */

   FSMC_PCR4_ECCPS  :constant word :=16#000E0000#;       -- /*!<ECCPS[2:0] bits (ECC page size) */
   FSMC_PCR4_ECCPS_0  :constant word :=16#00020000#;       -- /*!<Bit 0 */
   FSMC_PCR4_ECCPS_1  :constant word :=16#00040000#;       -- /*!<Bit 1 */
   FSMC_PCR4_ECCPS_2  :constant word :=16#00080000#;       -- /*!<Bit 2 */

-- /*******************  Bit definition for FSMC_SR2 register  *******************/
   FSMC_SR2_IRS  :constant word :=16#01#;              -- /*!<Interrupt Rising Edge status                */
   FSMC_SR2_ILS  :constant word :=16#02#;              -- /*!<Interrupt Level status                      */
   FSMC_SR2_IFS  :constant word :=16#04#;              -- /*!<Interrupt Falling Edge status               */
   FSMC_SR2_IREN  :constant word :=16#08#;              -- /*!<Interrupt Rising Edge detection Enable bit  */
   FSMC_SR2_ILEN  :constant word :=16#10#;              -- /*!<Interrupt Level detection Enable bit        */
   FSMC_SR2_IFEN  :constant word :=16#20#;              -- /*!<Interrupt Falling Edge detection Enable bit */
   FSMC_SR2_FEMPT  :constant word :=16#40#;              -- /*!<FIFO empty */

-- /*******************  Bit definition for FSMC_SR3 register  *******************/
   FSMC_SR3_IRS  :constant word :=16#01#;              -- /*!<Interrupt Rising Edge status                */
   FSMC_SR3_ILS  :constant word :=16#02#;              -- /*!<Interrupt Level status                      */
   FSMC_SR3_IFS  :constant word :=16#04#;              -- /*!<Interrupt Falling Edge status               */
   FSMC_SR3_IREN  :constant word :=16#08#;              -- /*!<Interrupt Rising Edge detection Enable bit  */
   FSMC_SR3_ILEN  :constant word :=16#10#;              -- /*!<Interrupt Level detection Enable bit        */
   FSMC_SR3_IFEN  :constant word :=16#20#;              -- /*!<Interrupt Falling Edge detection Enable bit */
   FSMC_SR3_FEMPT  :constant word :=16#40#;              -- /*!<FIFO empty */

-- /*******************  Bit definition for FSMC_SR4 register  *******************/
   FSMC_SR4_IRS  :constant word :=16#01#;              -- /*!<Interrupt Rising Edge status                 */
   FSMC_SR4_ILS  :constant word :=16#02#;              -- /*!<Interrupt Level status                       */
   FSMC_SR4_IFS  :constant word :=16#04#;              -- /*!<Interrupt Falling Edge status                */
   FSMC_SR4_IREN  :constant word :=16#08#;              -- /*!<Interrupt Rising Edge detection Enable bit   */
   FSMC_SR4_ILEN  :constant word :=16#10#;              -- /*!<Interrupt Level detection Enable bit         */
   FSMC_SR4_IFEN  :constant word :=16#20#;              -- /*!<Interrupt Falling Edge detection Enable bit  */
   FSMC_SR4_FEMPT  :constant word :=16#40#;              -- /*!<FIFO empty */

-- /******************  Bit definition for FSMC_PMEM2 register  ******************/
   FSMC_PMEM2_MEMSET2  :constant word :=16#000000FF#;       -- /*!<MEMSET2[7:0] bits (Common memory 2 setup time) */
   FSMC_PMEM2_MEMSET2_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_PMEM2_MEMSET2_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_PMEM2_MEMSET2_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_PMEM2_MEMSET2_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */
   FSMC_PMEM2_MEMSET2_4  :constant word :=16#00000010#;       -- /*!<Bit 4 */
   FSMC_PMEM2_MEMSET2_5  :constant word :=16#00000020#;       -- /*!<Bit 5 */
   FSMC_PMEM2_MEMSET2_6  :constant word :=16#00000040#;       -- /*!<Bit 6 */
   FSMC_PMEM2_MEMSET2_7  :constant word :=16#00000080#;       -- /*!<Bit 7 */

   FSMC_PMEM2_MEMWAIT2  :constant word :=16#0000FF00#;       -- /*!<MEMWAIT2[7:0] bits (Common memory 2 wait time) */
   FSMC_PMEM2_MEMWAIT2_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_PMEM2_MEMWAIT2_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_PMEM2_MEMWAIT2_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_PMEM2_MEMWAIT2_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_PMEM2_MEMWAIT2_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_PMEM2_MEMWAIT2_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_PMEM2_MEMWAIT2_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_PMEM2_MEMWAIT2_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_PMEM2_MEMHOLD2  :constant word :=16#00FF0000#;       -- /*!<MEMHOLD2[7:0] bits (Common memory 2 hold time) */
   FSMC_PMEM2_MEMHOLD2_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_PMEM2_MEMHOLD2_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_PMEM2_MEMHOLD2_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_PMEM2_MEMHOLD2_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */
   FSMC_PMEM2_MEMHOLD2_4  :constant word :=16#00100000#;       -- /*!<Bit 4 */
   FSMC_PMEM2_MEMHOLD2_5  :constant word :=16#00200000#;       -- /*!<Bit 5 */
   FSMC_PMEM2_MEMHOLD2_6  :constant word :=16#00400000#;       -- /*!<Bit 6 */
   FSMC_PMEM2_MEMHOLD2_7  :constant word :=16#00800000#;       -- /*!<Bit 7 */

   FSMC_PMEM2_MEMHIZ2  :constant word :=16#FF000000#;       -- /*!<MEMHIZ2[7:0] bits (Common memory 2 databus HiZ time) */
   FSMC_PMEM2_MEMHIZ2_0  :constant word :=16#01000000#;       -- /*!<Bit 0 */
   FSMC_PMEM2_MEMHIZ2_1  :constant word :=16#02000000#;       -- /*!<Bit 1 */
   FSMC_PMEM2_MEMHIZ2_2  :constant word :=16#04000000#;       -- /*!<Bit 2 */
   FSMC_PMEM2_MEMHIZ2_3  :constant word :=16#08000000#;       -- /*!<Bit 3 */
   FSMC_PMEM2_MEMHIZ2_4  :constant word :=16#10000000#;       -- /*!<Bit 4 */
   FSMC_PMEM2_MEMHIZ2_5  :constant word :=16#20000000#;       -- /*!<Bit 5 */
   FSMC_PMEM2_MEMHIZ2_6  :constant word :=16#40000000#;       -- /*!<Bit 6 */
   FSMC_PMEM2_MEMHIZ2_7  :constant word :=16#80000000#;       -- /*!<Bit 7 */

-- /******************  Bit definition for FSMC_PMEM3 register  ******************/
   FSMC_PMEM3_MEMSET3  :constant word :=16#000000FF#;       -- /*!<MEMSET3[7:0] bits (Common memory 3 setup time) */
   FSMC_PMEM3_MEMSET3_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_PMEM3_MEMSET3_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_PMEM3_MEMSET3_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_PMEM3_MEMSET3_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */
   FSMC_PMEM3_MEMSET3_4  :constant word :=16#00000010#;       -- /*!<Bit 4 */
   FSMC_PMEM3_MEMSET3_5  :constant word :=16#00000020#;       -- /*!<Bit 5 */
   FSMC_PMEM3_MEMSET3_6  :constant word :=16#00000040#;       -- /*!<Bit 6 */
   FSMC_PMEM3_MEMSET3_7  :constant word :=16#00000080#;       -- /*!<Bit 7 */

   FSMC_PMEM3_MEMWAIT3  :constant word :=16#0000FF00#;       -- /*!<MEMWAIT3[7:0] bits (Common memory 3 wait time) */
   FSMC_PMEM3_MEMWAIT3_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_PMEM3_MEMWAIT3_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_PMEM3_MEMWAIT3_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_PMEM3_MEMWAIT3_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_PMEM3_MEMWAIT3_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_PMEM3_MEMWAIT3_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_PMEM3_MEMWAIT3_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_PMEM3_MEMWAIT3_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_PMEM3_MEMHOLD3  :constant word :=16#00FF0000#;       -- /*!<MEMHOLD3[7:0] bits (Common memory 3 hold time) */
   FSMC_PMEM3_MEMHOLD3_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_PMEM3_MEMHOLD3_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_PMEM3_MEMHOLD3_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_PMEM3_MEMHOLD3_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */
   FSMC_PMEM3_MEMHOLD3_4  :constant word :=16#00100000#;       -- /*!<Bit 4 */
   FSMC_PMEM3_MEMHOLD3_5  :constant word :=16#00200000#;       -- /*!<Bit 5 */
   FSMC_PMEM3_MEMHOLD3_6  :constant word :=16#00400000#;       -- /*!<Bit 6 */
   FSMC_PMEM3_MEMHOLD3_7  :constant word :=16#00800000#;       -- /*!<Bit 7 */

   FSMC_PMEM3_MEMHIZ3  :constant word :=16#FF000000#;       -- /*!<MEMHIZ3[7:0] bits (Common memory 3 databus HiZ time) */
   FSMC_PMEM3_MEMHIZ3_0  :constant word :=16#01000000#;       -- /*!<Bit 0 */
   FSMC_PMEM3_MEMHIZ3_1  :constant word :=16#02000000#;       -- /*!<Bit 1 */
   FSMC_PMEM3_MEMHIZ3_2  :constant word :=16#04000000#;       -- /*!<Bit 2 */
   FSMC_PMEM3_MEMHIZ3_3  :constant word :=16#08000000#;       -- /*!<Bit 3 */
   FSMC_PMEM3_MEMHIZ3_4  :constant word :=16#10000000#;       -- /*!<Bit 4 */
   FSMC_PMEM3_MEMHIZ3_5  :constant word :=16#20000000#;       -- /*!<Bit 5 */
   FSMC_PMEM3_MEMHIZ3_6  :constant word :=16#40000000#;       -- /*!<Bit 6 */
   FSMC_PMEM3_MEMHIZ3_7  :constant word :=16#80000000#;       -- /*!<Bit 7 */

-- /******************  Bit definition for FSMC_PMEM4 register  ******************/
   FSMC_PMEM4_MEMSET4  :constant word :=16#000000FF#;       -- /*!<MEMSET4[7:0] bits (Common memory 4 setup time) */
   FSMC_PMEM4_MEMSET4_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_PMEM4_MEMSET4_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_PMEM4_MEMSET4_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_PMEM4_MEMSET4_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */
   FSMC_PMEM4_MEMSET4_4  :constant word :=16#00000010#;       -- /*!<Bit 4 */
   FSMC_PMEM4_MEMSET4_5  :constant word :=16#00000020#;       -- /*!<Bit 5 */
   FSMC_PMEM4_MEMSET4_6  :constant word :=16#00000040#;       -- /*!<Bit 6 */
   FSMC_PMEM4_MEMSET4_7  :constant word :=16#00000080#;       -- /*!<Bit 7 */

   FSMC_PMEM4_MEMWAIT4  :constant word :=16#0000FF00#;       -- /*!<MEMWAIT4[7:0] bits (Common memory 4 wait time) */
   FSMC_PMEM4_MEMWAIT4_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_PMEM4_MEMWAIT4_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_PMEM4_MEMWAIT4_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_PMEM4_MEMWAIT4_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_PMEM4_MEMWAIT4_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_PMEM4_MEMWAIT4_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_PMEM4_MEMWAIT4_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_PMEM4_MEMWAIT4_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_PMEM4_MEMHOLD4  :constant word :=16#00FF0000#;       -- /*!<MEMHOLD4[7:0] bits (Common memory 4 hold time) */
   FSMC_PMEM4_MEMHOLD4_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_PMEM4_MEMHOLD4_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_PMEM4_MEMHOLD4_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_PMEM4_MEMHOLD4_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */
   FSMC_PMEM4_MEMHOLD4_4  :constant word :=16#00100000#;       -- /*!<Bit 4 */
   FSMC_PMEM4_MEMHOLD4_5  :constant word :=16#00200000#;       -- /*!<Bit 5 */
   FSMC_PMEM4_MEMHOLD4_6  :constant word :=16#00400000#;       -- /*!<Bit 6 */
   FSMC_PMEM4_MEMHOLD4_7  :constant word :=16#00800000#;       -- /*!<Bit 7 */

   FSMC_PMEM4_MEMHIZ4  :constant word :=16#FF000000#;       -- /*!<MEMHIZ4[7:0] bits (Common memory 4 databus HiZ time) */
   FSMC_PMEM4_MEMHIZ4_0  :constant word :=16#01000000#;       -- /*!<Bit 0 */
   FSMC_PMEM4_MEMHIZ4_1  :constant word :=16#02000000#;       -- /*!<Bit 1 */
   FSMC_PMEM4_MEMHIZ4_2  :constant word :=16#04000000#;       -- /*!<Bit 2 */
   FSMC_PMEM4_MEMHIZ4_3  :constant word :=16#08000000#;       -- /*!<Bit 3 */
   FSMC_PMEM4_MEMHIZ4_4  :constant word :=16#10000000#;       -- /*!<Bit 4 */
   FSMC_PMEM4_MEMHIZ4_5  :constant word :=16#20000000#;       -- /*!<Bit 5 */
   FSMC_PMEM4_MEMHIZ4_6  :constant word :=16#40000000#;       -- /*!<Bit 6 */
   FSMC_PMEM4_MEMHIZ4_7  :constant word :=16#80000000#;       -- /*!<Bit 7 */

-- /******************  Bit definition for FSMC_PATT2 register  ******************/
   FSMC_PATT2_ATTSET2  :constant word :=16#000000FF#;       -- /*!<ATTSET2[7:0] bits (Attribute memory 2 setup time) */
   FSMC_PATT2_ATTSET2_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_PATT2_ATTSET2_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_PATT2_ATTSET2_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_PATT2_ATTSET2_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */
   FSMC_PATT2_ATTSET2_4  :constant word :=16#00000010#;       -- /*!<Bit 4 */
   FSMC_PATT2_ATTSET2_5  :constant word :=16#00000020#;       -- /*!<Bit 5 */
   FSMC_PATT2_ATTSET2_6  :constant word :=16#00000040#;       -- /*!<Bit 6 */
   FSMC_PATT2_ATTSET2_7  :constant word :=16#00000080#;       -- /*!<Bit 7 */

   FSMC_PATT2_ATTWAIT2  :constant word :=16#0000FF00#;       -- /*!<ATTWAIT2[7:0] bits (Attribute memory 2 wait time) */
   FSMC_PATT2_ATTWAIT2_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_PATT2_ATTWAIT2_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_PATT2_ATTWAIT2_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_PATT2_ATTWAIT2_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_PATT2_ATTWAIT2_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_PATT2_ATTWAIT2_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_PATT2_ATTWAIT2_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_PATT2_ATTWAIT2_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_PATT2_ATTHOLD2  :constant word :=16#00FF0000#;       -- /*!<ATTHOLD2[7:0] bits (Attribute memory 2 hold time) */
   FSMC_PATT2_ATTHOLD2_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_PATT2_ATTHOLD2_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_PATT2_ATTHOLD2_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_PATT2_ATTHOLD2_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */
   FSMC_PATT2_ATTHOLD2_4  :constant word :=16#00100000#;       -- /*!<Bit 4 */
   FSMC_PATT2_ATTHOLD2_5  :constant word :=16#00200000#;       -- /*!<Bit 5 */
   FSMC_PATT2_ATTHOLD2_6  :constant word :=16#00400000#;       -- /*!<Bit 6 */
   FSMC_PATT2_ATTHOLD2_7  :constant word :=16#00800000#;       -- /*!<Bit 7 */

   FSMC_PATT2_ATTHIZ2  :constant word :=16#FF000000#;       -- /*!<ATTHIZ2[7:0] bits (Attribute memory 2 databus HiZ time) */
   FSMC_PATT2_ATTHIZ2_0  :constant word :=16#01000000#;       -- /*!<Bit 0 */
   FSMC_PATT2_ATTHIZ2_1  :constant word :=16#02000000#;       -- /*!<Bit 1 */
   FSMC_PATT2_ATTHIZ2_2  :constant word :=16#04000000#;       -- /*!<Bit 2 */
   FSMC_PATT2_ATTHIZ2_3  :constant word :=16#08000000#;       -- /*!<Bit 3 */
   FSMC_PATT2_ATTHIZ2_4  :constant word :=16#10000000#;       -- /*!<Bit 4 */
   FSMC_PATT2_ATTHIZ2_5  :constant word :=16#20000000#;       -- /*!<Bit 5 */
   FSMC_PATT2_ATTHIZ2_6  :constant word :=16#40000000#;       -- /*!<Bit 6 */
   FSMC_PATT2_ATTHIZ2_7  :constant word :=16#80000000#;       -- /*!<Bit 7 */

-- /******************  Bit definition for FSMC_PATT3 register  ******************/
   FSMC_PATT3_ATTSET3  :constant word :=16#000000FF#;       -- /*!<ATTSET3[7:0] bits (Attribute memory 3 setup time) */
   FSMC_PATT3_ATTSET3_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_PATT3_ATTSET3_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_PATT3_ATTSET3_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_PATT3_ATTSET3_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */
   FSMC_PATT3_ATTSET3_4  :constant word :=16#00000010#;       -- /*!<Bit 4 */
   FSMC_PATT3_ATTSET3_5  :constant word :=16#00000020#;       -- /*!<Bit 5 */
   FSMC_PATT3_ATTSET3_6  :constant word :=16#00000040#;       -- /*!<Bit 6 */
   FSMC_PATT3_ATTSET3_7  :constant word :=16#00000080#;       -- /*!<Bit 7 */

   FSMC_PATT3_ATTWAIT3  :constant word :=16#0000FF00#;       -- /*!<ATTWAIT3[7:0] bits (Attribute memory 3 wait time) */
   FSMC_PATT3_ATTWAIT3_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_PATT3_ATTWAIT3_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_PATT3_ATTWAIT3_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_PATT3_ATTWAIT3_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_PATT3_ATTWAIT3_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_PATT3_ATTWAIT3_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_PATT3_ATTWAIT3_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_PATT3_ATTWAIT3_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_PATT3_ATTHOLD3  :constant word :=16#00FF0000#;       -- /*!<ATTHOLD3[7:0] bits (Attribute memory 3 hold time) */
   FSMC_PATT3_ATTHOLD3_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_PATT3_ATTHOLD3_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_PATT3_ATTHOLD3_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_PATT3_ATTHOLD3_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */
   FSMC_PATT3_ATTHOLD3_4  :constant word :=16#00100000#;       -- /*!<Bit 4 */
   FSMC_PATT3_ATTHOLD3_5  :constant word :=16#00200000#;       -- /*!<Bit 5 */
   FSMC_PATT3_ATTHOLD3_6  :constant word :=16#00400000#;       -- /*!<Bit 6 */
   FSMC_PATT3_ATTHOLD3_7  :constant word :=16#00800000#;       -- /*!<Bit 7 */

   FSMC_PATT3_ATTHIZ3  :constant word :=16#FF000000#;       -- /*!<ATTHIZ3[7:0] bits (Attribute memory 3 databus HiZ time) */
   FSMC_PATT3_ATTHIZ3_0  :constant word :=16#01000000#;       -- /*!<Bit 0 */
   FSMC_PATT3_ATTHIZ3_1  :constant word :=16#02000000#;       -- /*!<Bit 1 */
   FSMC_PATT3_ATTHIZ3_2  :constant word :=16#04000000#;       -- /*!<Bit 2 */
   FSMC_PATT3_ATTHIZ3_3  :constant word :=16#08000000#;       -- /*!<Bit 3 */
   FSMC_PATT3_ATTHIZ3_4  :constant word :=16#10000000#;       -- /*!<Bit 4 */
   FSMC_PATT3_ATTHIZ3_5  :constant word :=16#20000000#;       -- /*!<Bit 5 */
   FSMC_PATT3_ATTHIZ3_6  :constant word :=16#40000000#;       -- /*!<Bit 6 */
   FSMC_PATT3_ATTHIZ3_7  :constant word :=16#80000000#;       -- /*!<Bit 7 */

-- /******************  Bit definition for FSMC_PATT4 register  ******************/
   FSMC_PATT4_ATTSET4  :constant word :=16#000000FF#;       -- /*!<ATTSET4[7:0] bits (Attribute memory 4 setup time) */
   FSMC_PATT4_ATTSET4_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_PATT4_ATTSET4_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_PATT4_ATTSET4_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_PATT4_ATTSET4_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */
   FSMC_PATT4_ATTSET4_4  :constant word :=16#00000010#;       -- /*!<Bit 4 */
   FSMC_PATT4_ATTSET4_5  :constant word :=16#00000020#;       -- /*!<Bit 5 */
   FSMC_PATT4_ATTSET4_6  :constant word :=16#00000040#;       -- /*!<Bit 6 */
   FSMC_PATT4_ATTSET4_7  :constant word :=16#00000080#;       -- /*!<Bit 7 */

   FSMC_PATT4_ATTWAIT4  :constant word :=16#0000FF00#;       -- /*!<ATTWAIT4[7:0] bits (Attribute memory 4 wait time) */
   FSMC_PATT4_ATTWAIT4_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_PATT4_ATTWAIT4_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_PATT4_ATTWAIT4_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_PATT4_ATTWAIT4_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_PATT4_ATTWAIT4_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_PATT4_ATTWAIT4_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_PATT4_ATTWAIT4_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_PATT4_ATTWAIT4_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_PATT4_ATTHOLD4  :constant word :=16#00FF0000#;       -- /*!<ATTHOLD4[7:0] bits (Attribute memory 4 hold time) */
   FSMC_PATT4_ATTHOLD4_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_PATT4_ATTHOLD4_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_PATT4_ATTHOLD4_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_PATT4_ATTHOLD4_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */
   FSMC_PATT4_ATTHOLD4_4  :constant word :=16#00100000#;       -- /*!<Bit 4 */
   FSMC_PATT4_ATTHOLD4_5  :constant word :=16#00200000#;       -- /*!<Bit 5 */
   FSMC_PATT4_ATTHOLD4_6  :constant word :=16#00400000#;       -- /*!<Bit 6 */
   FSMC_PATT4_ATTHOLD4_7  :constant word :=16#00800000#;       -- /*!<Bit 7 */

   FSMC_PATT4_ATTHIZ4  :constant word :=16#FF000000#;       -- /*!<ATTHIZ4[7:0] bits (Attribute memory 4 databus HiZ time) */
   FSMC_PATT4_ATTHIZ4_0  :constant word :=16#01000000#;       -- /*!<Bit 0 */
   FSMC_PATT4_ATTHIZ4_1  :constant word :=16#02000000#;       -- /*!<Bit 1 */
   FSMC_PATT4_ATTHIZ4_2  :constant word :=16#04000000#;       -- /*!<Bit 2 */
   FSMC_PATT4_ATTHIZ4_3  :constant word :=16#08000000#;       -- /*!<Bit 3 */
   FSMC_PATT4_ATTHIZ4_4  :constant word :=16#10000000#;       -- /*!<Bit 4 */
   FSMC_PATT4_ATTHIZ4_5  :constant word :=16#20000000#;       -- /*!<Bit 5 */
   FSMC_PATT4_ATTHIZ4_6  :constant word :=16#40000000#;       -- /*!<Bit 6 */
   FSMC_PATT4_ATTHIZ4_7  :constant word :=16#80000000#;       -- /*!<Bit 7 */

-- /******************  Bit definition for FSMC_PIO4 register  *******************/
   FSMC_PIO4_IOSET4  :constant word :=16#000000FF#;       -- /*!<IOSET4[7:0] bits (I/O 4 setup time) */
   FSMC_PIO4_IOSET4_0  :constant word :=16#00000001#;       -- /*!<Bit 0 */
   FSMC_PIO4_IOSET4_1  :constant word :=16#00000002#;       -- /*!<Bit 1 */
   FSMC_PIO4_IOSET4_2  :constant word :=16#00000004#;       -- /*!<Bit 2 */
   FSMC_PIO4_IOSET4_3  :constant word :=16#00000008#;       -- /*!<Bit 3 */
   FSMC_PIO4_IOSET4_4  :constant word :=16#00000010#;       -- /*!<Bit 4 */
   FSMC_PIO4_IOSET4_5  :constant word :=16#00000020#;       -- /*!<Bit 5 */
   FSMC_PIO4_IOSET4_6  :constant word :=16#00000040#;       -- /*!<Bit 6 */
   FSMC_PIO4_IOSET4_7  :constant word :=16#00000080#;       -- /*!<Bit 7 */

   FSMC_PIO4_IOWAIT4  :constant word :=16#0000FF00#;       -- /*!<IOWAIT4[7:0] bits (I/O 4 wait time) */
   FSMC_PIO4_IOWAIT4_0  :constant word :=16#00000100#;       -- /*!<Bit 0 */
   FSMC_PIO4_IOWAIT4_1  :constant word :=16#00000200#;       -- /*!<Bit 1 */
   FSMC_PIO4_IOWAIT4_2  :constant word :=16#00000400#;       -- /*!<Bit 2 */
   FSMC_PIO4_IOWAIT4_3  :constant word :=16#00000800#;       -- /*!<Bit 3 */
   FSMC_PIO4_IOWAIT4_4  :constant word :=16#00001000#;       -- /*!<Bit 4 */
   FSMC_PIO4_IOWAIT4_5  :constant word :=16#00002000#;       -- /*!<Bit 5 */
   FSMC_PIO4_IOWAIT4_6  :constant word :=16#00004000#;       -- /*!<Bit 6 */
   FSMC_PIO4_IOWAIT4_7  :constant word :=16#00008000#;       -- /*!<Bit 7 */

   FSMC_PIO4_IOHOLD4  :constant word :=16#00FF0000#;       -- /*!<IOHOLD4[7:0] bits (I/O 4 hold time) */
   FSMC_PIO4_IOHOLD4_0  :constant word :=16#00010000#;       -- /*!<Bit 0 */
   FSMC_PIO4_IOHOLD4_1  :constant word :=16#00020000#;       -- /*!<Bit 1 */
   FSMC_PIO4_IOHOLD4_2  :constant word :=16#00040000#;       -- /*!<Bit 2 */
   FSMC_PIO4_IOHOLD4_3  :constant word :=16#00080000#;       -- /*!<Bit 3 */
   FSMC_PIO4_IOHOLD4_4  :constant word :=16#00100000#;       -- /*!<Bit 4 */
   FSMC_PIO4_IOHOLD4_5  :constant word :=16#00200000#;       -- /*!<Bit 5 */
   FSMC_PIO4_IOHOLD4_6  :constant word :=16#00400000#;       -- /*!<Bit 6 */
   FSMC_PIO4_IOHOLD4_7  :constant word :=16#00800000#;       -- /*!<Bit 7 */

   FSMC_PIO4_IOHIZ4  :constant word :=16#FF000000#;       -- /*!<IOHIZ4[7:0] bits (I/O 4 databus HiZ time) */
   FSMC_PIO4_IOHIZ4_0  :constant word :=16#01000000#;       -- /*!<Bit 0 */
   FSMC_PIO4_IOHIZ4_1  :constant word :=16#02000000#;       -- /*!<Bit 1 */
   FSMC_PIO4_IOHIZ4_2  :constant word :=16#04000000#;       -- /*!<Bit 2 */
   FSMC_PIO4_IOHIZ4_3  :constant word :=16#08000000#;       -- /*!<Bit 3 */
   FSMC_PIO4_IOHIZ4_4  :constant word :=16#10000000#;       -- /*!<Bit 4 */
   FSMC_PIO4_IOHIZ4_5  :constant word :=16#20000000#;       -- /*!<Bit 5 */
   FSMC_PIO4_IOHIZ4_6  :constant word :=16#40000000#;       -- /*!<Bit 6 */
   FSMC_PIO4_IOHIZ4_7  :constant word :=16#80000000#;       -- /*!<Bit 7 */

-- /******************  Bit definition for FSMC_ECCR2 register  ******************/
   FSMC_ECCR2_ECC2  :constant word :=16#FFFFFFFF#;       -- /*!<ECC result */

-- /******************  Bit definition for FSMC_ECCR3 register  ******************/
   FSMC_ECCR3_ECC3  :constant word :=16#FFFFFFFF#;       -- /*!<ECC result */
   
   
   
end stm32f407.registers.fsmc;
