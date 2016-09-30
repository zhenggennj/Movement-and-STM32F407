pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.usb is
  --*
   --  * @brief __USB_OTG_Core_register
   --

  --!<  USB_OTG Control and Status Register    000h
  --!<  USB_OTG Interrupt Register             004h
  --!<  Core AHB Configuration Register    008h
  --!<  Core USB Configuration Register    00Ch
  --!<  Core Reset Register                010h
  --!<  Core Interrupt Register            014h
  --!<  Core Interrupt Mask Register       018h
  --!<  Receive Sts Q Read Register        01Ch
  --!<  Receive Sts Q Read & POP Register  020h
   -- Receive FIFO Size Register         024h
  --!<  EP0 / Non Periodic Tx FIFO Size Register 028h
  --!<  Non Periodic Tx FIFO/Queue Sts reg 02Ch
   -- Reserved                           030h
   -- General Purpose IO Register        038h
   -- User ID Register                   03Ch
   -- Reserved                      040h-0FFh
   -- Host Periodic Tx FIFO Size Reg     100h
   -- dev Periodic Transmit FIFO
   type USB_OTG_GlobalTypeDef_Reserved30_array is
     array (0 .. 1) of aliased Word;
   type USB_OTG_GlobalTypeDef_Reserved40_array is
     array (0 .. 47) of aliased Word;
   type USB_OTG_GlobalTypeDef_DIEPTXF_array is array (0 .. 14) of aliased Word;
   type USB_OTG_GlobalTypeDef is record
      GOTGCTL : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:816
      GOTGINT : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:817
      GAHBCFG : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:818
      GUSBCFG : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:819
      GRSTCTL : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:820
      GINTSTS : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:821
      GINTMSK : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:822
      GRXSTSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:823
      GRXSTSP : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:824
      GRXFSIZ : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:825
      DIEPTXF0_HNPTXFSIZ : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:826
      HNPTXSTS : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:827
      Reserved30 : aliased USB_OTG_GlobalTypeDef_Reserved30_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:828
      GCCFG : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:829
      CID : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:830
      Reserved40 : aliased USB_OTG_GlobalTypeDef_Reserved40_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:831
      HPTXFSIZ : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:832
      DIEPTXF : aliased USB_OTG_GlobalTypeDef_DIEPTXF_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:833
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      USB_OTG_GlobalTypeDef);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:835

  --*
   --  * @brief __device_Registers
   --

   -- dev Configuration Register   800h
   -- dev Control Register         804h
   -- dev Status Register (RO)     808h
   -- Reserved                     80Ch
   -- dev IN Endpoint Mask         810h
   -- dev OUT Endpoint Mask        814h
   -- dev All Endpoints Itr Reg    818h
   -- dev All Endpoints Itr Mask   81Ch
   -- Reserved                     820h
   -- Reserved                     824h
   -- dev VBUS discharge Register  828h
   -- dev VBUS Pulse Register      82Ch
   -- dev thr                      830h
   -- dev empty msk             834h
   -- dedicated EP interrupt       838h
   -- dedicated EP msk             83Ch
   -- dedicated EP mask           840h
   -- dedicated EP mask           844h
   -- Reserved                 844-87Ch
   -- dedicated EP msk            884h
   type USB_OTG_DeviceTypeDef_Reserved44_array is
     array (0 .. 14) of aliased Word;
   type USB_OTG_DeviceTypeDef is record
      DCFG : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:844
      DCTL : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:845
      DSTS : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:846
      Reserved0C : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:847
      DIEPMSK : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:848
      DOEPMSK : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:849
      DAINT : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:850
      DAINTMSK : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:851
      Reserved20 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:852
      Reserved9 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:853
      DVBUSDIS : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:854
      DVBUSPULSE : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:855
      DTHRCTL : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:856
      DIEPEMPMSK : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:857
      DEACHINT : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:858
      DEACHMSK : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:859
      Reserved40 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:860
      DINEP1MSK : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:861
      Reserved44 : aliased USB_OTG_DeviceTypeDef_Reserved44_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:862
      DOUTEP1MSK : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:863
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      USB_OTG_DeviceTypeDef);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:865

  --*
   --  * @brief __IN_Endpoint-Specific_Register
   --

   -- dev IN Endpoint Control Reg 900h + (ep_num * 20h) + 00h
   -- Reserved                       900h + (ep_num * 20h) + 04h
   -- dev IN Endpoint Itr Reg     900h + (ep_num * 20h) + 08h
   -- Reserved                       900h + (ep_num * 20h) + 0Ch
   -- IN Endpoint Txfer Size   900h + (ep_num * 20h) + 10h
   -- IN Endpoint DMA Address Reg    900h + (ep_num * 20h) + 14h
   --IN Endpoint Tx FIFO Status Reg 900h + (ep_num * 20h) + 18h
   -- Reserved  900h+(ep_num*20h)+1Ch-900h+ (ep_num * 20h) + 1Ch
   type USB_OTG_INEndpointTypeDef is record
      DIEPCTL : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:873
      Reserved04 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:874
      DIEPINT : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:875
      Reserved0C : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:876
      DIEPTSIZ : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:877
      DIEPDMA : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:878
      DTXFSTS : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:879
      Reserved18 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:880
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      USB_OTG_INEndpointTypeDef);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:882

  --*
   --  * @brief __OUT_Endpoint-Specific_Registers
   --

   -- dev OUT Endpoint Control Reg  B00h + (ep_num * 20h) + 00h
   -- Reserved                      B00h + (ep_num * 20h) + 04h
   -- dev OUT Endpoint Itr Reg      B00h + (ep_num * 20h) + 08h
   -- Reserved                      B00h + (ep_num * 20h) + 0Ch
   -- dev OUT Endpoint Txfer Size   B00h + (ep_num * 20h) + 10h
   -- dev OUT Endpoint DMA Address  B00h + (ep_num * 20h) + 14h
   -- Reserved B00h + (ep_num * 20h) + 18h - B00h + (ep_num * 20h) + 1Ch
   type USB_OTG_OUTEndpointTypeDef_Reserved18_array is
     array (0 .. 1) of aliased Word;
   type USB_OTG_OUTEndpointTypeDef is record
      DOEPCTL : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:890
      Reserved04 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:891
      DOEPINT : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:892
      Reserved0C : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:893
      DOEPTSIZ : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:894
      DOEPDMA : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:895
      Reserved18 : aliased USB_OTG_OUTEndpointTypeDef_Reserved18_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:896
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      USB_OTG_OUTEndpointTypeDef);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:898

  --*
   --  * @brief __Host_Mode_Register_Structures
   --

   -- Host Configuration Register    400h
   -- Host Frame Interval Register   404h
   -- Host Frame Nbr/Frame Remaining 408h
   -- Reserved                       40Ch
   -- Host Periodic Tx FIFO/ Queue Status 410h
   -- Host All Channels Interrupt Register 414h
   -- Host All Channels Interrupt Mask 418h
   type USB_OTG_HostTypeDef is record
      HCFG : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:906
      HFIR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:907
      HFNUM : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:908
      Reserved40C : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:909
      HPTXSTS : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:910
      HAINT : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:911
      HAINTMSK : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:912
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      USB_OTG_HostTypeDef);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:914

  --*
   --  * @brief __Host_Channel_Specific_Registers
   --

   type USB_OTG_HostChannelTypeDef_Reserved_array is
     array (0 .. 1) of aliased Word;
   type USB_OTG_HostChannelTypeDef is record
      HCCHAR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:922
      HCSPLT : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:923
      HCINT : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:924
      HCINTMSK : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:925
      HCTSIZ : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:926
      HCDMA : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:927
      Reserved : aliased USB_OTG_HostChannelTypeDef_Reserved_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:928
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      USB_OTG_HostChannelTypeDef);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:930

   USB_OTG_FS : USB_OTG_GlobalTypeDef with
      Volatile,
      Address => System'To_Address (USB_OTG_FS_PERIPH_BASE),
      Import;
   USB_OTG_HS : USB_OTG_GlobalTypeDef with
      Volatile,
      Address => System'To_Address (USB_OTG_HS_PERIPH_BASE),
      Import;


-- /******************************************************************************/
-- /*                                                                            */
-- /*                                       USB_OTG			                        */
-- /*                                                                            */
-- /******************************************************************************/
-- /********************  Bit definition forUSB_OTG_GOTGCTL register  ********************/
  USB_OTG_GOTGCTL_SRQSCS                  :constant word :=16#00000001#;           -- /*!< Session request success */
  USB_OTG_GOTGCTL_SRQ                     :constant word :=16#00000002#;           -- /*!< Session request */
  USB_OTG_GOTGCTL_HNGSCS                  :constant word :=16#00000100#;           -- /*!< Host negotiation success */
  USB_OTG_GOTGCTL_HNPRQ                   :constant word :=16#00000200#;           -- /*!< HNP request */
  USB_OTG_GOTGCTL_HSHNPEN                 :constant word :=16#00000400#;           -- /*!< Host set HNP enable */
  USB_OTG_GOTGCTL_DHNPEN                  :constant word :=16#00000800#;           -- /*!< Device HNP enabled */
  USB_OTG_GOTGCTL_CIDSTS                  :constant word :=16#00010000#;           -- /*!< Connector ID status */
  USB_OTG_GOTGCTL_DBCT                    :constant word :=16#00020000#;           -- /*!< Long/short debounce time */
  USB_OTG_GOTGCTL_ASVLD                   :constant word :=16#00040000#;           -- /*!< A-session valid */
  USB_OTG_GOTGCTL_BSVLD                   :constant word :=16#00080000#;           -- /*!< B-session valid */

-- /********************  Bit definition forUSB_OTG_HCFG register  ********************/

  USB_OTG_HCFG_FSLSPCS                 :constant word :=16#00000003#;           -- /*!< FS/LS PHY clock select */
  USB_OTG_HCFG_FSLSPCS_0               :constant word :=16#00000001#;           -- /*!<Bit 0 */
  USB_OTG_HCFG_FSLSPCS_1               :constant word :=16#00000002#;           -- /*!<Bit 1 */
  USB_OTG_HCFG_FSLSS                   :constant word :=16#00000004#;           -- /*!< FS- and LS-only support */

-- /********************  Bit definition forUSB_OTG_DCFG register  ********************/

  USB_OTG_DCFG_DSPD                    :constant word :=16#00000003#;           -- /*!< Device speed */
  USB_OTG_DCFG_DSPD_0                  :constant word :=16#00000001#;           -- /*!<Bit 0 */
  USB_OTG_DCFG_DSPD_1                  :constant word :=16#00000002#;           -- /*!<Bit 1 */
  USB_OTG_DCFG_NZLSOHSK                :constant word :=16#00000004#;           -- /*!< Nonzero-length status OUT handshake */

  USB_OTG_DCFG_DAD                     :constant word :=16#000007F0#;           -- /*!< Device address */
  USB_OTG_DCFG_DAD_0                   :constant word :=16#00000010#;           -- /*!<Bit 0 */
  USB_OTG_DCFG_DAD_1                   :constant word :=16#00000020#;           -- /*!<Bit 1 */
  USB_OTG_DCFG_DAD_2                   :constant word :=16#00000040#;           -- /*!<Bit 2 */
  USB_OTG_DCFG_DAD_3                   :constant word :=16#00000080#;           -- /*!<Bit 3 */
  USB_OTG_DCFG_DAD_4                   :constant word :=16#00000100#;           -- /*!<Bit 4 */
  USB_OTG_DCFG_DAD_5                   :constant word :=16#00000200#;           -- /*!<Bit 5 */
  USB_OTG_DCFG_DAD_6                   :constant word :=16#00000400#;           -- /*!<Bit 6 */

  USB_OTG_DCFG_PFIVL                   :constant word :=16#00001800#;           -- /*!< Periodic (micro)frame interval */
  USB_OTG_DCFG_PFIVL_0                 :constant word :=16#00000800#;           -- /*!<Bit 0 */
  USB_OTG_DCFG_PFIVL_1                 :constant word :=16#00001000#;           -- /*!<Bit 1 */

  USB_OTG_DCFG_PERSCHIVL               :constant word :=16#03000000#;           -- /*!< Periodic scheduling interval */
  USB_OTG_DCFG_PERSCHIVL_0             :constant word :=16#01000000#;           -- /*!<Bit 0 */
  USB_OTG_DCFG_PERSCHIVL_1             :constant word :=16#02000000#;           -- /*!<Bit 1 */

-- /********************  Bit definition forUSB_OTG_PCGCR register  ********************/
  USB_OTG_PCGCR_STPPCLK                 :constant word :=16#00000001#;           -- /*!< Stop PHY clock */
  USB_OTG_PCGCR_GATEHCLK                :constant word :=16#00000002#;           -- /*!< Gate HCLK */
  USB_OTG_PCGCR_PHYSUSP                 :constant word :=16#00000010#;           -- /*!< PHY suspended */

-- /********************  Bit definition forUSB_OTG_GOTGINT register  ********************/
  USB_OTG_GOTGINT_SEDET                   :constant word :=16#00000004#;           -- /*!< Session end detected */
  USB_OTG_GOTGINT_SRSSCHG                 :constant word :=16#00000100#;           -- /*!< Session request success status change */
  USB_OTG_GOTGINT_HNSSCHG                 :constant word :=16#00000200#;           -- /*!< Host negotiation success status change */
  USB_OTG_GOTGINT_HNGDET                  :constant word :=16#00020000#;           -- /*!< Host negotiation detected */
  USB_OTG_GOTGINT_ADTOCHG                 :constant word :=16#00040000#;           -- /*!< A-device timeout change */
  USB_OTG_GOTGINT_DBCDNE                  :constant word :=16#00080000#;           -- /*!< Debounce done */

-- /********************  Bit definition forUSB_OTG_DCTL register  ********************/
  USB_OTG_DCTL_RWUSIG                  :constant word :=16#00000001#;           -- /*!< Remote wakeup signaling */
  USB_OTG_DCTL_SDIS                    :constant word :=16#00000002#;           -- /*!< Soft disconnect */
  USB_OTG_DCTL_GINSTS                  :constant word :=16#00000004#;           -- /*!< Global IN NAK status */
  USB_OTG_DCTL_GONSTS                  :constant word :=16#00000008#;           -- /*!< Global OUT NAK status */

  USB_OTG_DCTL_TCTL                    :constant word :=16#00000070#;           -- /*!< Test control */
  USB_OTG_DCTL_TCTL_0                  :constant word :=16#00000010#;           -- /*!<Bit 0 */
  USB_OTG_DCTL_TCTL_1                  :constant word :=16#00000020#;           -- /*!<Bit 1 */
  USB_OTG_DCTL_TCTL_2                  :constant word :=16#00000040#;           -- /*!<Bit 2 */
  USB_OTG_DCTL_SGINAK                  :constant word :=16#00000080#;           -- /*!< Set global IN NAK */
  USB_OTG_DCTL_CGINAK                  :constant word :=16#00000100#;           -- /*!< Clear global IN NAK */
  USB_OTG_DCTL_SGONAK                  :constant word :=16#00000200#;           -- /*!< Set global OUT NAK */
  USB_OTG_DCTL_CGONAK                  :constant word :=16#00000400#;           -- /*!< Clear global OUT NAK */
  USB_OTG_DCTL_POPRGDNE                :constant word :=16#00000800#;           -- /*!< Power-on programming done */

-- /********************  Bit definition forUSB_OTG_HFIR register  ********************/
  USB_OTG_HFIR_FRIVL                   :constant word :=16#0000FFFF#;           -- /*!< Frame interval */

-- /********************  Bit definition forUSB_OTG_HFNUM register  ********************/
  USB_OTG_HFNUM_FRNUM                   :constant word :=16#0000FFFF#;           -- /*!< Frame number */
  USB_OTG_HFNUM_FTREM                   :constant word :=16#FFFF0000#;           -- /*!< Frame time remaining */

-- /********************  Bit definition forUSB_OTG_DSTS register  ********************/
  USB_OTG_DSTS_SUSPSTS                 :constant word :=16#00000001#;           -- /*!< Suspend status */

  USB_OTG_DSTS_ENUMSPD                 :constant word :=16#00000006#;           -- /*!< Enumerated speed */
  USB_OTG_DSTS_ENUMSPD_0               :constant word :=16#00000002#;           -- /*!<Bit 0 */
  USB_OTG_DSTS_ENUMSPD_1               :constant word :=16#00000004#;           -- /*!<Bit 1 */
  USB_OTG_DSTS_EERR                    :constant word :=16#00000008#;           -- /*!< Erratic error */
  USB_OTG_DSTS_FNSOF                   :constant word :=16#003FFF00#;           -- /*!< Frame number of the received SOF */

-- /********************  Bit definition forUSB_OTG_GAHBCFG register  ********************/
  USB_OTG_GAHBCFG_GINT                    :constant word :=16#00000001#;           -- /*!< Global interrupt mask */

  USB_OTG_GAHBCFG_HBSTLEN                 :constant word :=16#0000001E#;           -- /*!< Burst length/type */
  USB_OTG_GAHBCFG_HBSTLEN_0               :constant word :=16#00000002#;           -- /*!<Bit 0 */
  USB_OTG_GAHBCFG_HBSTLEN_1               :constant word :=16#00000004#;           -- /*!<Bit 1 */
  USB_OTG_GAHBCFG_HBSTLEN_2               :constant word :=16#00000008#;           -- /*!<Bit 2 */
  USB_OTG_GAHBCFG_HBSTLEN_3               :constant word :=16#00000010#;           -- /*!<Bit 3 */
  USB_OTG_GAHBCFG_DMAEN                   :constant word :=16#00000020#;           -- /*!< DMA enable */
  USB_OTG_GAHBCFG_TXFELVL                 :constant word :=16#00000080#;           -- /*!< TxFIFO empty level */
  USB_OTG_GAHBCFG_PTXFELVL                :constant word :=16#00000100#;           -- /*!< Periodic TxFIFO empty level */

-- /********************  Bit definition forUSB_OTG_GUSBCFG register  ********************/

  USB_OTG_GUSBCFG_TOCAL                   :constant word :=16#00000007#;           -- /*!< FS timeout calibration */
  USB_OTG_GUSBCFG_TOCAL_0                 :constant word :=16#00000001#;           -- /*!<Bit 0 */
  USB_OTG_GUSBCFG_TOCAL_1                 :constant word :=16#00000002#;           -- /*!<Bit 1 */
  USB_OTG_GUSBCFG_TOCAL_2                 :constant word :=16#00000004#;           -- /*!<Bit 2 */
  USB_OTG_GUSBCFG_PHYSEL                  :constant word :=16#00000040#;           -- /*!< USB 2.0 high-speed ULPI PHY or USB 1.1 full-speed serial transceiver select */
  USB_OTG_GUSBCFG_SRPCAP                  :constant word :=16#00000100#;           -- /*!< SRP-capable */
  USB_OTG_GUSBCFG_HNPCAP                  :constant word :=16#00000200#;           -- /*!< HNP-capable */

  USB_OTG_GUSBCFG_TRDT                    :constant word :=16#00003C00#;           -- /*!< USB turnaround time */
  USB_OTG_GUSBCFG_TRDT_0                  :constant word :=16#00000400#;           -- /*!<Bit 0 */
  USB_OTG_GUSBCFG_TRDT_1                  :constant word :=16#00000800#;           -- /*!<Bit 1 */
  USB_OTG_GUSBCFG_TRDT_2                  :constant word :=16#00001000#;           -- /*!<Bit 2 */
  USB_OTG_GUSBCFG_TRDT_3                  :constant word :=16#00002000#;           -- /*!<Bit 3 */
  USB_OTG_GUSBCFG_PHYLPCS                 :constant word :=16#00008000#;           -- /*!< PHY Low-power clock select */
  USB_OTG_GUSBCFG_ULPIFSLS                :constant word :=16#00020000#;           -- /*!< ULPI FS/LS select */
  USB_OTG_GUSBCFG_ULPIAR                  :constant word :=16#00040000#;           -- /*!< ULPI Auto-resume */
  USB_OTG_GUSBCFG_ULPICSM                 :constant word :=16#00080000#;           -- /*!< ULPI Clock SuspendM */
  USB_OTG_GUSBCFG_ULPIEVBUSD              :constant word :=16#00100000#;           -- /*!< ULPI External VBUS Drive */
  USB_OTG_GUSBCFG_ULPIEVBUSI              :constant word :=16#00200000#;           -- /*!< ULPI external VBUS indicator */
  USB_OTG_GUSBCFG_TSDPS                   :constant word :=16#00400000#;           -- /*!< TermSel DLine pulsing selection */
  USB_OTG_GUSBCFG_PCCI                    :constant word :=16#00800000#;           -- /*!< Indicator complement */
  USB_OTG_GUSBCFG_PTCI                    :constant word :=16#01000000#;           -- /*!< Indicator pass through */
  USB_OTG_GUSBCFG_ULPIIPD                 :constant word :=16#02000000#;           -- /*!< ULPI interface protect disable */
  USB_OTG_GUSBCFG_FHMOD                   :constant word :=16#20000000#;           -- /*!< Forced host mode */
  USB_OTG_GUSBCFG_FDMOD                   :constant word :=16#40000000#;           -- /*!< Forced peripheral mode */
  USB_OTG_GUSBCFG_CTXPKT                  :constant word :=16#80000000#;           -- /*!< Corrupt Tx packet */

-- /********************  Bit definition forUSB_OTG_GRSTCTL register  ********************/
  USB_OTG_GRSTCTL_CSRST                   :constant word :=16#00000001#;           -- /*!< Core soft reset */
  USB_OTG_GRSTCTL_HSRST                   :constant word :=16#00000002#;           -- /*!< HCLK soft reset */
  USB_OTG_GRSTCTL_FCRST                   :constant word :=16#00000004#;           -- /*!< Host frame counter reset */
  USB_OTG_GRSTCTL_RXFFLSH                 :constant word :=16#00000010#;           -- /*!< RxFIFO flush */
  USB_OTG_GRSTCTL_TXFFLSH                 :constant word :=16#00000020#;           -- /*!< TxFIFO flush */

  USB_OTG_GRSTCTL_TXFNUM                  :constant word :=16#000007C0#;           -- /*!< TxFIFO number */
  USB_OTG_GRSTCTL_TXFNUM_0                :constant word :=16#00000040#;           -- /*!<Bit 0 */
  USB_OTG_GRSTCTL_TXFNUM_1                :constant word :=16#00000080#;           -- /*!<Bit 1 */
  USB_OTG_GRSTCTL_TXFNUM_2                :constant word :=16#00000100#;           -- /*!<Bit 2 */
  USB_OTG_GRSTCTL_TXFNUM_3                :constant word :=16#00000200#;           -- /*!<Bit 3 */
  USB_OTG_GRSTCTL_TXFNUM_4                :constant word :=16#00000400#;           -- /*!<Bit 4 */
  USB_OTG_GRSTCTL_DMAREQ                  :constant word :=16#40000000#;           -- /*!< DMA request signal */
  USB_OTG_GRSTCTL_AHBIDL                  :constant word :=16#80000000#;           -- /*!< AHB master idle */

-- /********************  Bit definition forUSB_OTG_DIEPMSK register  ********************/
  USB_OTG_DIEPMSK_XFRCM                   :constant word :=16#00000001#;           -- /*!< Transfer completed interrupt mask */
  USB_OTG_DIEPMSK_EPDM                    :constant word :=16#00000002#;           -- /*!< Endpoint disabled interrupt mask */
  USB_OTG_DIEPMSK_TOM                     :constant word :=16#00000008#;           -- /*!< Timeout condition mask (nonisochronous endpoints) */
  USB_OTG_DIEPMSK_ITTXFEMSK               :constant word :=16#00000010#;           -- /*!< IN token received when TxFIFO empty mask */
  USB_OTG_DIEPMSK_INEPNMM                 :constant word :=16#00000020#;           -- /*!< IN token received with EP mismatch mask */
  USB_OTG_DIEPMSK_INEPNEM                 :constant word :=16#00000040#;           -- /*!< IN endpoint NAK effective mask */
  USB_OTG_DIEPMSK_TXFURM                  :constant word :=16#00000100#;           -- /*!< FIFO underrun mask */
  USB_OTG_DIEPMSK_BIM                     :constant word :=16#00000200#;           -- /*!< BNA interrupt mask */

-- /********************  Bit definition forUSB_OTG_HPTXSTS register  ********************/
  USB_OTG_HPTXSTS_PTXFSAVL                :constant word :=16#0000FFFF#;           -- /*!< Periodic transmit data FIFO space available */

  USB_OTG_HPTXSTS_PTXQSAV                 :constant word :=16#00FF0000#;           -- /*!< Periodic transmit request queue space available */
  USB_OTG_HPTXSTS_PTXQSAV_0               :constant word :=16#00010000#;           -- /*!<Bit 0 */
  USB_OTG_HPTXSTS_PTXQSAV_1               :constant word :=16#00020000#;           -- /*!<Bit 1 */
  USB_OTG_HPTXSTS_PTXQSAV_2               :constant word :=16#00040000#;           -- /*!<Bit 2 */
  USB_OTG_HPTXSTS_PTXQSAV_3               :constant word :=16#00080000#;           -- /*!<Bit 3 */
  USB_OTG_HPTXSTS_PTXQSAV_4               :constant word :=16#00100000#;           -- /*!<Bit 4 */
  USB_OTG_HPTXSTS_PTXQSAV_5               :constant word :=16#00200000#;           -- /*!<Bit 5 */
  USB_OTG_HPTXSTS_PTXQSAV_6               :constant word :=16#00400000#;           -- /*!<Bit 6 */
  USB_OTG_HPTXSTS_PTXQSAV_7               :constant word :=16#00800000#;           -- /*!<Bit 7 */

  USB_OTG_HPTXSTS_PTXQTOP                 :constant word :=16#FF000000#;           -- /*!< Top of the periodic transmit request queue */
  USB_OTG_HPTXSTS_PTXQTOP_0               :constant word :=16#01000000#;           -- /*!<Bit 0 */
  USB_OTG_HPTXSTS_PTXQTOP_1               :constant word :=16#02000000#;           -- /*!<Bit 1 */
  USB_OTG_HPTXSTS_PTXQTOP_2               :constant word :=16#04000000#;           -- /*!<Bit 2 */
  USB_OTG_HPTXSTS_PTXQTOP_3               :constant word :=16#08000000#;           -- /*!<Bit 3 */
  USB_OTG_HPTXSTS_PTXQTOP_4               :constant word :=16#10000000#;           -- /*!<Bit 4 */
  USB_OTG_HPTXSTS_PTXQTOP_5               :constant word :=16#20000000#;           -- /*!<Bit 5 */
  USB_OTG_HPTXSTS_PTXQTOP_6               :constant word :=16#40000000#;           -- /*!<Bit 6 */
  USB_OTG_HPTXSTS_PTXQTOP_7               :constant word :=16#80000000#;           -- /*!<Bit 7 */

-- /********************  Bit definition forUSB_OTG_HAINT register  ********************/
  USB_OTG_HAINT_HAINT                   :constant word :=16#0000FFFF#;           -- /*!< Channel interrupts */

-- /********************  Bit definition forUSB_OTG_DOEPMSK register  ********************/
  USB_OTG_DOEPMSK_XFRCM                   :constant word :=16#00000001#;           -- /*!< Transfer completed interrupt mask */
  USB_OTG_DOEPMSK_EPDM                    :constant word :=16#00000002#;           -- /*!< Endpoint disabled interrupt mask */
  USB_OTG_DOEPMSK_STUPM                   :constant word :=16#00000008#;           -- /*!< SETUP phase done mask */
  USB_OTG_DOEPMSK_OTEPDM                  :constant word :=16#00000010#;           -- /*!< OUT token received when endpoint disabled mask */
  USB_OTG_DOEPMSK_B2BSTUP                 :constant word :=16#00000040#;           -- /*!< Back-to-back SETUP packets received mask */
  USB_OTG_DOEPMSK_OPEM                    :constant word :=16#00000100#;           -- /*!< OUT packet error mask */
  USB_OTG_DOEPMSK_BOIM                    :constant word :=16#00000200#;           -- /*!< BNA interrupt mask */

-- /********************  Bit definition forUSB_OTG_GINTSTS register  ********************/
  USB_OTG_GINTSTS_CMOD                    :constant word :=16#00000001#;           -- /*!< Current mode of operation */
  USB_OTG_GINTSTS_MMIS                    :constant word :=16#00000002#;           -- /*!< Mode mismatch interrupt */
  USB_OTG_GINTSTS_OTGINT                  :constant word :=16#00000004#;           -- /*!< OTG interrupt */
  USB_OTG_GINTSTS_SOF                     :constant word :=16#00000008#;           -- /*!< Start of frame */
  USB_OTG_GINTSTS_RXFLVL                  :constant word :=16#00000010#;           -- /*!< RxFIFO nonempty */
  USB_OTG_GINTSTS_NPTXFE                  :constant word :=16#00000020#;           -- /*!< Nonperiodic TxFIFO empty */
  USB_OTG_GINTSTS_GINAKEFF                :constant word :=16#00000040#;           -- /*!< Global IN nonperiodic NAK effective */
  USB_OTG_GINTSTS_BOUTNAKEFF              :constant word :=16#00000080#;           -- /*!< Global OUT NAK effective */
  USB_OTG_GINTSTS_ESUSP                   :constant word :=16#00000400#;           -- /*!< Early suspend */
  USB_OTG_GINTSTS_USBSUSP                 :constant word :=16#00000800#;           -- /*!< USB suspend */
  USB_OTG_GINTSTS_USBRST                  :constant word :=16#00001000#;           -- /*!< USB reset */
  USB_OTG_GINTSTS_ENUMDNE                 :constant word :=16#00002000#;           -- /*!< Enumeration done */
  USB_OTG_GINTSTS_ISOODRP                 :constant word :=16#00004000#;           -- /*!< Isochronous OUT packet dropped interrupt */
  USB_OTG_GINTSTS_EOPF                    :constant word :=16#00008000#;           -- /*!< End of periodic frame interrupt */
  USB_OTG_GINTSTS_IEPINT                  :constant word :=16#00040000#;           -- /*!< IN endpoint interrupt */
  USB_OTG_GINTSTS_OEPINT                  :constant word :=16#00080000#;           -- /*!< OUT endpoint interrupt */
  USB_OTG_GINTSTS_IISOIXFR                :constant word :=16#00100000#;           -- /*!< Incomplete isochronous IN transfer */
  USB_OTG_GINTSTS_PXFR_INCOMPISOOUT       :constant word :=16#00200000#;           -- /*!< Incomplete periodic transfer */
  USB_OTG_GINTSTS_DATAFSUSP               :constant word :=16#00400000#;           -- /*!< Data fetch suspended */
  USB_OTG_GINTSTS_HPRTINT                 :constant word :=16#01000000#;           -- /*!< Host port interrupt */
  USB_OTG_GINTSTS_HCINT                   :constant word :=16#02000000#;           -- /*!< Host channels interrupt */
  USB_OTG_GINTSTS_PTXFE                   :constant word :=16#04000000#;           -- /*!< Periodic TxFIFO empty */
  USB_OTG_GINTSTS_CIDSCHG                 :constant word :=16#10000000#;           -- /*!< Connector ID status change */
  USB_OTG_GINTSTS_DISCINT                 :constant word :=16#20000000#;           -- /*!< Disconnect detected interrupt */
  USB_OTG_GINTSTS_SRQINT                  :constant word :=16#40000000#;           -- /*!< Session request/new session detected interrupt */
  USB_OTG_GINTSTS_WKUINT                  :constant word :=16#80000000#;           -- /*!< Resume/remote wakeup detected interrupt */

-- /********************  Bit definition forUSB_OTG_GINTMSK register  ********************/
  USB_OTG_GINTMSK_MMISM                   :constant word :=16#00000002#;           -- /*!< Mode mismatch interrupt mask */
  USB_OTG_GINTMSK_OTGINT                  :constant word :=16#00000004#;           -- /*!< OTG interrupt mask */
  USB_OTG_GINTMSK_SOFM                    :constant word :=16#00000008#;           -- /*!< Start of frame mask */
  USB_OTG_GINTMSK_RXFLVLM                 :constant word :=16#00000010#;           -- /*!< Receive FIFO nonempty mask */
  USB_OTG_GINTMSK_NPTXFEM                 :constant word :=16#00000020#;           -- /*!< Nonperiodic TxFIFO empty mask */
  USB_OTG_GINTMSK_GINAKEFFM               :constant word :=16#00000040#;           -- /*!< Global nonperiodic IN NAK effective mask */
  USB_OTG_GINTMSK_GONAKEFFM               :constant word :=16#00000080#;           -- /*!< Global OUT NAK effective mask */
  USB_OTG_GINTMSK_ESUSPM                  :constant word :=16#00000400#;           -- /*!< Early suspend mask */
  USB_OTG_GINTMSK_USBSUSPM                :constant word :=16#00000800#;           -- /*!< USB suspend mask */
  USB_OTG_GINTMSK_USBRST                  :constant word :=16#00001000#;           -- /*!< USB reset mask */
  USB_OTG_GINTMSK_ENUMDNEM                :constant word :=16#00002000#;           -- /*!< Enumeration done mask */
  USB_OTG_GINTMSK_ISOODRPM                :constant word :=16#00004000#;           -- /*!< Isochronous OUT packet dropped interrupt mask */
  USB_OTG_GINTMSK_EOPFM                   :constant word :=16#00008000#;           -- /*!< End of periodic frame interrupt mask */
  USB_OTG_GINTMSK_EPMISM                  :constant word :=16#00020000#;           -- /*!< Endpoint mismatch interrupt mask */
  USB_OTG_GINTMSK_IEPINT                  :constant word :=16#00040000#;           -- /*!< IN endpoints interrupt mask */
  USB_OTG_GINTMSK_OEPINT                  :constant word :=16#00080000#;           -- /*!< OUT endpoints interrupt mask */
  USB_OTG_GINTMSK_IISOIXFRM               :constant word :=16#00100000#;           -- /*!< Incomplete isochronous IN transfer mask */
  USB_OTG_GINTMSK_PXFRM_IISOOXFRM         :constant word :=16#00200000#;           -- /*!< Incomplete periodic transfer mask */
  USB_OTG_GINTMSK_FSUSPM                  :constant word :=16#00400000#;           -- /*!< Data fetch suspended mask */
  USB_OTG_GINTMSK_PRTIM                   :constant word :=16#01000000#;           -- /*!< Host port interrupt mask */
  USB_OTG_GINTMSK_HCIM                    :constant word :=16#02000000#;           -- /*!< Host channels interrupt mask */
  USB_OTG_GINTMSK_PTXFEM                  :constant word :=16#04000000#;           -- /*!< Periodic TxFIFO empty mask */
  USB_OTG_GINTMSK_CIDSCHGM                :constant word :=16#10000000#;           -- /*!< Connector ID status change mask */
  USB_OTG_GINTMSK_DISCINT                 :constant word :=16#20000000#;           -- /*!< Disconnect detected interrupt mask */
  USB_OTG_GINTMSK_SRQIM                   :constant word :=16#40000000#;           -- /*!< Session request/new session detected interrupt mask */
  USB_OTG_GINTMSK_WUIM                    :constant word :=16#80000000#;           -- /*!< Resume/remote wakeup detected interrupt mask */

-- /********************  Bit definition forUSB_OTG_DAINT register  ********************/
  USB_OTG_DAINT_IEPINT                  :constant word :=16#0000FFFF#;           -- /*!< IN endpoint interrupt bits */
  USB_OTG_DAINT_OEPINT                  :constant word :=16#FFFF0000#;           -- /*!< OUT endpoint interrupt bits */

-- /********************  Bit definition forUSB_OTG_HAINTMSK register  ********************/
  USB_OTG_HAINTMSK_HAINTM                  :constant word :=16#0000FFFF#;           -- /*!< Channel interrupt mask */

-- /********************  Bit definition for USB_OTG_GRXSTSP register  ********************/
  USB_OTG_GRXSTSP_EPNUM                    :constant word :=16#0000000F#;           -- /*!< IN EP interrupt mask bits */
  USB_OTG_GRXSTSP_BCNT                     :constant word :=16#00007FF0#;           -- /*!< OUT EP interrupt mask bits */
  USB_OTG_GRXSTSP_DPID                     :constant word :=16#00018000#;           -- /*!< OUT EP interrupt mask bits */
  USB_OTG_GRXSTSP_PKTSTS                   :constant word :=16#001E0000#;           -- /*!< OUT EP interrupt mask bits */

-- /********************  Bit definition forUSB_OTG_DAINTMSK register  ********************/
  USB_OTG_DAINTMSK_IEPM                    :constant word :=16#0000FFFF#;           -- /*!< IN EP interrupt mask bits */
  USB_OTG_DAINTMSK_OEPM                    :constant word :=16#FFFF0000#;           -- /*!< OUT EP interrupt mask bits */

-- /********************  Bit definition for OTG register  ********************/

  USB_OTG_CHNUM                   :constant word :=16#0000000F#;           -- /*!< Channel number */
  USB_OTG_CHNUM_0                 :constant word :=16#00000001#;           -- /*!<Bit 0 */
  USB_OTG_CHNUM_1                 :constant word :=16#00000002#;           -- /*!<Bit 1 */
  USB_OTG_CHNUM_2                 :constant word :=16#00000004#;           -- /*!<Bit 2 */
  USB_OTG_CHNUM_3                 :constant word :=16#00000008#;           -- /*!<Bit 3 */
  USB_OTG_BCNT                    :constant word :=16#00007FF0#;           -- /*!< Byte count */

  USB_OTG_DPID                    :constant word :=16#00018000#;           -- /*!< Data PID */
  USB_OTG_DPID_0                  :constant word :=16#00008000#;           -- /*!<Bit 0 */
  USB_OTG_DPID_1                  :constant word :=16#00010000#;           -- /*!<Bit 1 */

  USB_OTG_PKTSTS                  :constant word :=16#001E0000#;           -- /*!< Packet status */
  USB_OTG_PKTSTS_0                :constant word :=16#00020000#;           -- /*!<Bit 0 */
  USB_OTG_PKTSTS_1                :constant word :=16#00040000#;           -- /*!<Bit 1 */
  USB_OTG_PKTSTS_2                :constant word :=16#00080000#;           -- /*!<Bit 2 */
  USB_OTG_PKTSTS_3                :constant word :=16#00100000#;           -- /*!<Bit 3 */

  USB_OTG_EPNUM                   :constant word :=16#0000000F#;           -- /*!< Endpoint number */
  USB_OTG_EPNUM_0                 :constant word :=16#00000001#;           -- /*!<Bit 0 */
  USB_OTG_EPNUM_1                 :constant word :=16#00000002#;           -- /*!<Bit 1 */
  USB_OTG_EPNUM_2                 :constant word :=16#00000004#;           -- /*!<Bit 2 */
  USB_OTG_EPNUM_3                 :constant word :=16#00000008#;           -- /*!<Bit 3 */

  USB_OTG_FRMNUM                  :constant word :=16#01E00000#;           -- /*!< Frame number */
  USB_OTG_FRMNUM_0                :constant word :=16#00200000#;           -- /*!<Bit 0 */
  USB_OTG_FRMNUM_1                :constant word :=16#00400000#;           -- /*!<Bit 1 */
  USB_OTG_FRMNUM_2                :constant word :=16#00800000#;           -- /*!<Bit 2 */
  USB_OTG_FRMNUM_3                :constant word :=16#01000000#;           -- /*!<Bit 3 */

--  -- /********************  Bit definition for OTG register  ********************/
--
--    USB_OTG_CHNUM                   :constant word :=16#0000000F#;           -- /*!< Channel number */
--    USB_OTG_CHNUM_0                 :constant word :=16#00000001#;           -- /*!<Bit 0 */
--    USB_OTG_CHNUM_1                 :constant word :=16#00000002#;           -- /*!<Bit 1 */
--    USB_OTG_CHNUM_2                 :constant word :=16#00000004#;           -- /*!<Bit 2 */
--    USB_OTG_CHNUM_3                 :constant word :=16#00000008#;           -- /*!<Bit 3 */
--    USB_OTG_BCNT                    :constant word :=16#00007FF0#;           -- /*!< Byte count */
--
--    USB_OTG_DPID                    :constant word :=16#00018000#;           -- /*!< Data PID */
--    USB_OTG_DPID_0                  :constant word :=16#00008000#;           -- /*!<Bit 0 */
--    USB_OTG_DPID_1                  :constant word :=16#00010000#;           -- /*!<Bit 1 */
--
--    USB_OTG_PKTSTS                  :constant word :=16#001E0000#;           -- /*!< Packet status */
--    USB_OTG_PKTSTS_0                :constant word :=16#00020000#;           -- /*!<Bit 0 */
--    USB_OTG_PKTSTS_1                :constant word :=16#00040000#;           -- /*!<Bit 1 */
--    USB_OTG_PKTSTS_2                :constant word :=16#00080000#;           -- /*!<Bit 2 */
--    USB_OTG_PKTSTS_3                :constant word :=16#00100000#;           -- /*!<Bit 3 */
--
--    USB_OTG_EPNUM                   :constant word :=16#0000000F#;           -- /*!< Endpoint number */
--    USB_OTG_EPNUM_0                 :constant word :=16#00000001#;           -- /*!<Bit 0 */
--    USB_OTG_EPNUM_1                 :constant word :=16#00000002#;           -- /*!<Bit 1 */
--    USB_OTG_EPNUM_2                 :constant word :=16#00000004#;           -- /*!<Bit 2 */
--    USB_OTG_EPNUM_3                 :constant word :=16#00000008#;           -- /*!<Bit 3 */
--
--    USB_OTG_FRMNUM                  :constant word :=16#01E00000#;           -- /*!< Frame number */
--    USB_OTG_FRMNUM_0                :constant word :=16#00200000#;           -- /*!<Bit 0 */
--    USB_OTG_FRMNUM_1                :constant word :=16#00400000#;           -- /*!<Bit 1 */
--    USB_OTG_FRMNUM_2                :constant word :=16#00800000#;           -- /*!<Bit 2 */
--    USB_OTG_FRMNUM_3                :constant word :=16#01000000#;           -- /*!<Bit 3 */

-- /********************  Bit definition forUSB_OTG_GRXFSIZ register  ********************/
  USB_OTG_GRXFSIZ_RXFD                    :constant word :=16#0000FFFF#;           -- /*!< RxFIFO depth */

-- /********************  Bit definition forUSB_OTG_DVBUSDIS register  ********************/
  USB_OTG_DVBUSDIS_VBUSDT                  :constant word :=16#0000FFFF#;           -- /*!< Device VBUS discharge time */

-- /********************  Bit definition for OTG register  ********************/
  USB_OTG_NPTXFSA                 :constant word :=16#0000FFFF#;           -- /*!< Nonperiodic transmit RAM start address */
  USB_OTG_NPTXFD                  :constant word :=16#FFFF0000#;           -- /*!< Nonperiodic TxFIFO depth */
  USB_OTG_TX0FSA                  :constant word :=16#0000FFFF#;           -- /*!< Endpoint 0 transmit RAM start address */
  USB_OTG_TX0FD                   :constant word :=16#FFFF0000#;           -- /*!< Endpoint 0 TxFIFO depth */

-- /********************  Bit definition forUSB_OTG_DVBUSPULSE register  ********************/
  USB_OTG_DVBUSPULSE_DVBUSP                  :constant word :=16#00000FFF#;           -- /*!< Device VBUS pulsing time */

-- /********************  Bit definition forUSB_OTG_GNPTXSTS register  ********************/
  USB_OTG_GNPTXSTS_NPTXFSAV                :constant word :=16#0000FFFF#;           -- /*!< Nonperiodic TxFIFO space available */

  USB_OTG_GNPTXSTS_NPTQXSAV                :constant word :=16#00FF0000#;           -- /*!< Nonperiodic transmit request queue space available */
  USB_OTG_GNPTXSTS_NPTQXSAV_0              :constant word :=16#00010000#;           -- /*!<Bit 0 */
  USB_OTG_GNPTXSTS_NPTQXSAV_1              :constant word :=16#00020000#;           -- /*!<Bit 1 */
  USB_OTG_GNPTXSTS_NPTQXSAV_2              :constant word :=16#00040000#;           -- /*!<Bit 2 */
  USB_OTG_GNPTXSTS_NPTQXSAV_3              :constant word :=16#00080000#;           -- /*!<Bit 3 */
  USB_OTG_GNPTXSTS_NPTQXSAV_4              :constant word :=16#00100000#;           -- /*!<Bit 4 */
  USB_OTG_GNPTXSTS_NPTQXSAV_5              :constant word :=16#00200000#;           -- /*!<Bit 5 */
  USB_OTG_GNPTXSTS_NPTQXSAV_6              :constant word :=16#00400000#;           -- /*!<Bit 6 */
  USB_OTG_GNPTXSTS_NPTQXSAV_7              :constant word :=16#00800000#;           -- /*!<Bit 7 */

  USB_OTG_GNPTXSTS_NPTXQTOP                :constant word :=16#7F000000#;           -- /*!< Top of the nonperiodic transmit request queue */
  USB_OTG_GNPTXSTS_NPTXQTOP_0              :constant word :=16#01000000#;           -- /*!<Bit 0 */
  USB_OTG_GNPTXSTS_NPTXQTOP_1              :constant word :=16#02000000#;           -- /*!<Bit 1 */
  USB_OTG_GNPTXSTS_NPTXQTOP_2              :constant word :=16#04000000#;           -- /*!<Bit 2 */
  USB_OTG_GNPTXSTS_NPTXQTOP_3              :constant word :=16#08000000#;           -- /*!<Bit 3 */
  USB_OTG_GNPTXSTS_NPTXQTOP_4              :constant word :=16#10000000#;           -- /*!<Bit 4 */
  USB_OTG_GNPTXSTS_NPTXQTOP_5              :constant word :=16#20000000#;           -- /*!<Bit 5 */
  USB_OTG_GNPTXSTS_NPTXQTOP_6              :constant word :=16#40000000#;           -- /*!<Bit 6 */

-- /********************  Bit definition forUSB_OTG_DTHRCTL register  ********************/
  USB_OTG_DTHRCTL_NONISOTHREN             :constant word :=16#00000001#;           -- /*!< Nonisochronous IN endpoints threshold enable */
  USB_OTG_DTHRCTL_ISOTHREN                :constant word :=16#00000002#;           -- /*!< ISO IN endpoint threshold enable */

  USB_OTG_DTHRCTL_TXTHRLEN                :constant word :=16#000007FC#;           -- /*!< Transmit threshold length */
  USB_OTG_DTHRCTL_TXTHRLEN_0              :constant word :=16#00000004#;           -- /*!<Bit 0 */
  USB_OTG_DTHRCTL_TXTHRLEN_1              :constant word :=16#00000008#;           -- /*!<Bit 1 */
  USB_OTG_DTHRCTL_TXTHRLEN_2              :constant word :=16#00000010#;           -- /*!<Bit 2 */
  USB_OTG_DTHRCTL_TXTHRLEN_3              :constant word :=16#00000020#;           -- /*!<Bit 3 */
  USB_OTG_DTHRCTL_TXTHRLEN_4              :constant word :=16#00000040#;           -- /*!<Bit 4 */
  USB_OTG_DTHRCTL_TXTHRLEN_5              :constant word :=16#00000080#;           -- /*!<Bit 5 */
  USB_OTG_DTHRCTL_TXTHRLEN_6              :constant word :=16#00000100#;           -- /*!<Bit 6 */
  USB_OTG_DTHRCTL_TXTHRLEN_7              :constant word :=16#00000200#;           -- /*!<Bit 7 */
  USB_OTG_DTHRCTL_TXTHRLEN_8              :constant word :=16#00000400#;           -- /*!<Bit 8 */
  USB_OTG_DTHRCTL_RXTHREN                 :constant word :=16#00010000#;           -- /*!< Receive threshold enable */

  USB_OTG_DTHRCTL_RXTHRLEN                :constant word :=16#03FE0000#;           -- /*!< Receive threshold length */
  USB_OTG_DTHRCTL_RXTHRLEN_0              :constant word :=16#00020000#;           -- /*!<Bit 0 */
  USB_OTG_DTHRCTL_RXTHRLEN_1              :constant word :=16#00040000#;           -- /*!<Bit 1 */
  USB_OTG_DTHRCTL_RXTHRLEN_2              :constant word :=16#00080000#;           -- /*!<Bit 2 */
  USB_OTG_DTHRCTL_RXTHRLEN_3              :constant word :=16#00100000#;           -- /*!<Bit 3 */
  USB_OTG_DTHRCTL_RXTHRLEN_4              :constant word :=16#00200000#;           -- /*!<Bit 4 */
  USB_OTG_DTHRCTL_RXTHRLEN_5              :constant word :=16#00400000#;           -- /*!<Bit 5 */
  USB_OTG_DTHRCTL_RXTHRLEN_6              :constant word :=16#00800000#;           -- /*!<Bit 6 */
  USB_OTG_DTHRCTL_RXTHRLEN_7              :constant word :=16#01000000#;           -- /*!<Bit 7 */
  USB_OTG_DTHRCTL_RXTHRLEN_8              :constant word :=16#02000000#;           -- /*!<Bit 8 */
  USB_OTG_DTHRCTL_ARPEN                   :constant word :=16#08000000#;           -- /*!< Arbiter parking enable */

-- /********************  Bit definition forUSB_OTG_DIEPEMPMSK register  ********************/
  USB_OTG_DIEPEMPMSK_INEPTXFEM               :constant word :=16#0000FFFF#;           -- /*!< IN EP Tx FIFO empty interrupt mask bits */

-- /********************  Bit definition forUSB_OTG_DEACHINT register  ********************/
  USB_OTG_DEACHINT_IEP1INT                 :constant word :=16#00000002#;           -- /*!< IN endpoint 1interrupt bit */
  USB_OTG_DEACHINT_OEP1INT                 :constant word :=16#00020000#;           -- /*!< OUT endpoint 1 interrupt bit */

-- /********************  Bit definition forUSB_OTG_GCCFG register  ********************/
  USB_OTG_GCCFG_PWRDWN                  :constant word :=16#00010000#;           -- /*!< Power down */
  USB_OTG_GCCFG_I2CPADEN                :constant word :=16#00020000#;           -- /*!< Enable I2C bus connection for the external I2C PHY interface */
  USB_OTG_GCCFG_VBUSASEN                :constant word :=16#00040000#;           -- /*!< Enable the VBUS sensing device */
  USB_OTG_GCCFG_VBUSBSEN                :constant word :=16#00080000#;           -- /*!< Enable the VBUS sensing device */
  USB_OTG_GCCFG_SOFOUTEN                :constant word :=16#00100000#;           -- /*!< SOF output enable */
  USB_OTG_GCCFG_NOVBUSSENS              :constant word :=16#00200000#;           -- /*!< VBUS sensing disable option */

-- /********************  Bit definition forUSB_OTG_DEACHINTMSK register  ********************/
  USB_OTG_DEACHINTMSK_IEP1INTM                :constant word :=16#00000002#;           -- /*!< IN Endpoint 1 interrupt mask bit */
  USB_OTG_DEACHINTMSK_OEP1INTM                :constant word :=16#00020000#;           -- /*!< OUT Endpoint 1 interrupt mask bit */

-- /********************  Bit definition forUSB_OTG_CID register  ********************/
  USB_OTG_CID_PRODUCT_ID              :constant word :=16#FFFFFFFF#;           -- /*!< Product ID field */

-- /********************  Bit definition forUSB_OTG_DIEPEACHMSK1 register  ********************/
  USB_OTG_DIEPEACHMSK1_XFRCM                   :constant word :=16#00000001#;           -- /*!< Transfer completed interrupt mask */
  USB_OTG_DIEPEACHMSK1_EPDM                    :constant word :=16#00000002#;           -- /*!< Endpoint disabled interrupt mask */
  USB_OTG_DIEPEACHMSK1_TOM                     :constant word :=16#00000008#;           -- /*!< Timeout condition mask (nonisochronous endpoints) */
  USB_OTG_DIEPEACHMSK1_ITTXFEMSK               :constant word :=16#00000010#;           -- /*!< IN token received when TxFIFO empty mask */
  USB_OTG_DIEPEACHMSK1_INEPNMM                 :constant word :=16#00000020#;           -- /*!< IN token received with EP mismatch mask */
  USB_OTG_DIEPEACHMSK1_INEPNEM                 :constant word :=16#00000040#;           -- /*!< IN endpoint NAK effective mask */
  USB_OTG_DIEPEACHMSK1_TXFURM                  :constant word :=16#00000100#;           -- /*!< FIFO underrun mask */
  USB_OTG_DIEPEACHMSK1_BIM                     :constant word :=16#00000200#;           -- /*!< BNA interrupt mask */
  USB_OTG_DIEPEACHMSK1_NAKM                    :constant word :=16#00002000#;           -- /*!< NAK interrupt mask */

-- /********************  Bit definition forUSB_OTG_HPRT register  ********************/
  USB_OTG_HPRT_PCSTS                   :constant word :=16#00000001#;           -- /*!< Port connect status */
  USB_OTG_HPRT_PCDET                   :constant word :=16#00000002#;           -- /*!< Port connect detected */
  USB_OTG_HPRT_PENA                    :constant word :=16#00000004#;           -- /*!< Port enable */
  USB_OTG_HPRT_PENCHNG                 :constant word :=16#00000008#;           -- /*!< Port enable/disable change */
  USB_OTG_HPRT_POCA                    :constant word :=16#00000010#;           -- /*!< Port overcurrent active */
  USB_OTG_HPRT_POCCHNG                 :constant word :=16#00000020#;           -- /*!< Port overcurrent change */
  USB_OTG_HPRT_PRES                    :constant word :=16#00000040#;           -- /*!< Port resume */
  USB_OTG_HPRT_PSUSP                   :constant word :=16#00000080#;           -- /*!< Port suspend */
  USB_OTG_HPRT_PRST                    :constant word :=16#00000100#;           -- /*!< Port reset */

  USB_OTG_HPRT_PLSTS                   :constant word :=16#00000C00#;           -- /*!< Port line status */
  USB_OTG_HPRT_PLSTS_0                 :constant word :=16#00000400#;           -- /*!<Bit 0 */
  USB_OTG_HPRT_PLSTS_1                 :constant word :=16#00000800#;           -- /*!<Bit 1 */
  USB_OTG_HPRT_PPWR                    :constant word :=16#00001000#;           -- /*!< Port power */

  USB_OTG_HPRT_PTCTL                   :constant word :=16#0001E000#;           -- /*!< Port test control */
  USB_OTG_HPRT_PTCTL_0                 :constant word :=16#00002000#;           -- /*!<Bit 0 */
  USB_OTG_HPRT_PTCTL_1                 :constant word :=16#00004000#;           -- /*!<Bit 1 */
  USB_OTG_HPRT_PTCTL_2                 :constant word :=16#00008000#;           -- /*!<Bit 2 */
  USB_OTG_HPRT_PTCTL_3                 :constant word :=16#00010000#;           -- /*!<Bit 3 */

  USB_OTG_HPRT_PSPD                    :constant word :=16#00060000#;           -- /*!< Port speed */
  USB_OTG_HPRT_PSPD_0                  :constant word :=16#00020000#;           -- /*!<Bit 0 */
  USB_OTG_HPRT_PSPD_1                  :constant word :=16#00040000#;           -- /*!<Bit 1 */

-- /********************  Bit definition forUSB_OTG_DOEPEACHMSK1 register  ********************/
  USB_OTG_DOEPEACHMSK1_XFRCM                   :constant word :=16#00000001#;           -- /*!< Transfer completed interrupt mask */
  USB_OTG_DOEPEACHMSK1_EPDM                    :constant word :=16#00000002#;           -- /*!< Endpoint disabled interrupt mask */
  USB_OTG_DOEPEACHMSK1_TOM                     :constant word :=16#00000008#;           -- /*!< Timeout condition mask */
  USB_OTG_DOEPEACHMSK1_ITTXFEMSK               :constant word :=16#00000010#;           -- /*!< IN token received when TxFIFO empty mask */
  USB_OTG_DOEPEACHMSK1_INEPNMM                 :constant word :=16#00000020#;           -- /*!< IN token received with EP mismatch mask */
  USB_OTG_DOEPEACHMSK1_INEPNEM                 :constant word :=16#00000040#;           -- /*!< IN endpoint NAK effective mask */
  USB_OTG_DOEPEACHMSK1_TXFURM                  :constant word :=16#00000100#;           -- /*!< OUT packet error mask */
  USB_OTG_DOEPEACHMSK1_BIM                     :constant word :=16#00000200#;           -- /*!< BNA interrupt mask */
  USB_OTG_DOEPEACHMSK1_BERRM                   :constant word :=16#00001000#;           -- /*!< Bubble error interrupt mask */
  USB_OTG_DOEPEACHMSK1_NAKM                    :constant word :=16#00002000#;           -- /*!< NAK interrupt mask */
  USB_OTG_DOEPEACHMSK1_NYETM                   :constant word :=16#00004000#;           -- /*!< NYET interrupt mask */

-- /********************  Bit definition forUSB_OTG_HPTXFSIZ register  ********************/
  USB_OTG_HPTXFSIZ_PTXSA                   :constant word :=16#0000FFFF#;           -- /*!< Host periodic TxFIFO start address */
  USB_OTG_HPTXFSIZ_PTXFD                   :constant word :=16#FFFF0000#;           -- /*!< Host periodic TxFIFO depth */

-- /********************  Bit definition forUSB_OTG_DIEPCTL register  ********************/
  USB_OTG_DIEPCTL_MPSIZ                   :constant word :=16#000007FF#;           -- /*!< Maximum packet size */
  USB_OTG_DIEPCTL_USBAEP                  :constant word :=16#00008000#;           -- /*!< USB active endpoint */
  USB_OTG_DIEPCTL_EONUM_DPID              :constant word :=16#00010000#;           -- /*!< Even/odd frame */
  USB_OTG_DIEPCTL_NAKSTS                  :constant word :=16#00020000#;           -- /*!< NAK status */

  USB_OTG_DIEPCTL_EPTYP                   :constant word :=16#000C0000#;           -- /*!< Endpoint type */
  USB_OTG_DIEPCTL_EPTYP_0                 :constant word :=16#00040000#;           -- /*!<Bit 0 */
  USB_OTG_DIEPCTL_EPTYP_1                 :constant word :=16#00080000#;           -- /*!<Bit 1 */
  USB_OTG_DIEPCTL_STALL                   :constant word :=16#00200000#;           -- /*!< STALL handshake */

  USB_OTG_DIEPCTL_TXFNUM                  :constant word :=16#03C00000#;           -- /*!< TxFIFO number */
  USB_OTG_DIEPCTL_TXFNUM_0                :constant word :=16#00400000#;           -- /*!<Bit 0 */
  USB_OTG_DIEPCTL_TXFNUM_1                :constant word :=16#00800000#;           -- /*!<Bit 1 */
  USB_OTG_DIEPCTL_TXFNUM_2                :constant word :=16#01000000#;           -- /*!<Bit 2 */
  USB_OTG_DIEPCTL_TXFNUM_3                :constant word :=16#02000000#;           -- /*!<Bit 3 */
  USB_OTG_DIEPCTL_CNAK                    :constant word :=16#04000000#;           -- /*!< Clear NAK */
  USB_OTG_DIEPCTL_SNAK                    :constant word :=16#08000000#;           -- /*!< Set NAK */
  USB_OTG_DIEPCTL_SD0PID_SEVNFRM          :constant word :=16#10000000#;           -- /*!< Set DATA0 PID */
  USB_OTG_DIEPCTL_SODDFRM                 :constant word :=16#20000000#;           -- /*!< Set odd frame */
  USB_OTG_DIEPCTL_EPDIS                   :constant word :=16#40000000#;           -- /*!< Endpoint disable */
  USB_OTG_DIEPCTL_EPENA                   :constant word :=16#80000000#;           -- /*!< Endpoint enable */

-- /********************  Bit definition forUSB_OTG_HCCHAR register  ********************/
  USB_OTG_HCCHAR_MPSIZ                   :constant word :=16#000007FF#;           -- /*!< Maximum packet size */

  USB_OTG_HCCHAR_EPNUM                   :constant word :=16#00007800#;           -- /*!< Endpoint number */
  USB_OTG_HCCHAR_EPNUM_0                 :constant word :=16#00000800#;           -- /*!<Bit 0 */
  USB_OTG_HCCHAR_EPNUM_1                 :constant word :=16#00001000#;           -- /*!<Bit 1 */
  USB_OTG_HCCHAR_EPNUM_2                 :constant word :=16#00002000#;           -- /*!<Bit 2 */
  USB_OTG_HCCHAR_EPNUM_3                 :constant word :=16#00004000#;           -- /*!<Bit 3 */
  USB_OTG_HCCHAR_EPDIR                   :constant word :=16#00008000#;           -- /*!< Endpoint direction */
  USB_OTG_HCCHAR_LSDEV                   :constant word :=16#00020000#;           -- /*!< Low-speed device */

  USB_OTG_HCCHAR_EPTYP                   :constant word :=16#000C0000#;           -- /*!< Endpoint type */
  USB_OTG_HCCHAR_EPTYP_0                 :constant word :=16#00040000#;           -- /*!<Bit 0 */
  USB_OTG_HCCHAR_EPTYP_1                 :constant word :=16#00080000#;           -- /*!<Bit 1 */

  USB_OTG_HCCHAR_MC                      :constant word :=16#00300000#;           -- /*!< Multi Count (MC) / Error Count (EC) */
  USB_OTG_HCCHAR_MC_0                    :constant word :=16#00100000#;           -- /*!<Bit 0 */
  USB_OTG_HCCHAR_MC_1                    :constant word :=16#00200000#;           -- /*!<Bit 1 */

  USB_OTG_HCCHAR_DAD                     :constant word :=16#1FC00000#;           -- /*!< Device address */
  USB_OTG_HCCHAR_DAD_0                   :constant word :=16#00400000#;           -- /*!<Bit 0 */
  USB_OTG_HCCHAR_DAD_1                   :constant word :=16#00800000#;           -- /*!<Bit 1 */
  USB_OTG_HCCHAR_DAD_2                   :constant word :=16#01000000#;           -- /*!<Bit 2 */
  USB_OTG_HCCHAR_DAD_3                   :constant word :=16#02000000#;           -- /*!<Bit 3 */
  USB_OTG_HCCHAR_DAD_4                   :constant word :=16#04000000#;           -- /*!<Bit 4 */
  USB_OTG_HCCHAR_DAD_5                   :constant word :=16#08000000#;           -- /*!<Bit 5 */
  USB_OTG_HCCHAR_DAD_6                   :constant word :=16#10000000#;           -- /*!<Bit 6 */
  USB_OTG_HCCHAR_ODDFRM                  :constant word :=16#20000000#;           -- /*!< Odd frame */
  USB_OTG_HCCHAR_CHDIS                   :constant word :=16#40000000#;           -- /*!< Channel disable */
  USB_OTG_HCCHAR_CHENA                   :constant word :=16#80000000#;           -- /*!< Channel enable */

-- /********************  Bit definition forUSB_OTG_HCSPLT register  ********************/

  USB_OTG_HCSPLT_PRTADDR                 :constant word :=16#0000007F#;           -- /*!< Port address */
  USB_OTG_HCSPLT_PRTADDR_0               :constant word :=16#00000001#;           -- /*!<Bit 0 */
  USB_OTG_HCSPLT_PRTADDR_1               :constant word :=16#00000002#;           -- /*!<Bit 1 */
  USB_OTG_HCSPLT_PRTADDR_2               :constant word :=16#00000004#;           -- /*!<Bit 2 */
  USB_OTG_HCSPLT_PRTADDR_3               :constant word :=16#00000008#;           -- /*!<Bit 3 */
  USB_OTG_HCSPLT_PRTADDR_4               :constant word :=16#00000010#;           -- /*!<Bit 4 */
  USB_OTG_HCSPLT_PRTADDR_5               :constant word :=16#00000020#;           -- /*!<Bit 5 */
  USB_OTG_HCSPLT_PRTADDR_6               :constant word :=16#00000040#;           -- /*!<Bit 6 */

  USB_OTG_HCSPLT_HUBADDR                 :constant word :=16#00003F80#;           -- /*!< Hub address */
  USB_OTG_HCSPLT_HUBADDR_0               :constant word :=16#00000080#;           -- /*!<Bit 0 */
  USB_OTG_HCSPLT_HUBADDR_1               :constant word :=16#00000100#;           -- /*!<Bit 1 */
  USB_OTG_HCSPLT_HUBADDR_2               :constant word :=16#00000200#;           -- /*!<Bit 2 */
  USB_OTG_HCSPLT_HUBADDR_3               :constant word :=16#00000400#;           -- /*!<Bit 3 */
  USB_OTG_HCSPLT_HUBADDR_4               :constant word :=16#00000800#;           -- /*!<Bit 4 */
  USB_OTG_HCSPLT_HUBADDR_5               :constant word :=16#00001000#;           -- /*!<Bit 5 */
  USB_OTG_HCSPLT_HUBADDR_6               :constant word :=16#00002000#;           -- /*!<Bit 6 */

  USB_OTG_HCSPLT_XACTPOS                 :constant word :=16#0000C000#;           -- /*!< XACTPOS */
  USB_OTG_HCSPLT_XACTPOS_0               :constant word :=16#00004000#;           -- /*!<Bit 0 */
  USB_OTG_HCSPLT_XACTPOS_1               :constant word :=16#00008000#;           -- /*!<Bit 1 */
  USB_OTG_HCSPLT_COMPLSPLT               :constant word :=16#00010000#;           -- /*!< Do complete split */
  USB_OTG_HCSPLT_SPLITEN                 :constant word :=16#80000000#;           -- /*!< Split enable */

-- /********************  Bit definition forUSB_OTG_HCINT register  ********************/
  USB_OTG_HCINT_XFRC                    :constant word :=16#00000001#;           -- /*!< Transfer completed */
  USB_OTG_HCINT_CHH                     :constant word :=16#00000002#;           -- /*!< Channel halted */
  USB_OTG_HCINT_AHBERR                  :constant word :=16#00000004#;           -- /*!< AHB error */
  USB_OTG_HCINT_STALL                   :constant word :=16#00000008#;           -- /*!< STALL response received interrupt */
  USB_OTG_HCINT_NAK                     :constant word :=16#00000010#;           -- /*!< NAK response received interrupt */
  USB_OTG_HCINT_ACK                     :constant word :=16#00000020#;           -- /*!< ACK response received/transmitted interrupt */
  USB_OTG_HCINT_NYET                    :constant word :=16#00000040#;           -- /*!< Response received interrupt */
  USB_OTG_HCINT_TXERR                   :constant word :=16#00000080#;           -- /*!< Transaction error */
  USB_OTG_HCINT_BBERR                   :constant word :=16#00000100#;           -- /*!< Babble error */
  USB_OTG_HCINT_FRMOR                   :constant word :=16#00000200#;           -- /*!< Frame overrun */
  USB_OTG_HCINT_DTERR                   :constant word :=16#00000400#;           -- /*!< Data toggle error */

-- /********************  Bit definition forUSB_OTG_DIEPINT register  ********************/
  USB_OTG_DIEPINT_XFRC                    :constant word :=16#00000001#;           -- /*!< Transfer completed interrupt */
  USB_OTG_DIEPINT_EPDISD                  :constant word :=16#00000002#;           -- /*!< Endpoint disabled interrupt */
  USB_OTG_DIEPINT_TOC                     :constant word :=16#00000008#;           -- /*!< Timeout condition */
  USB_OTG_DIEPINT_ITTXFE                  :constant word :=16#00000010#;           -- /*!< IN token received when TxFIFO is empty */
  USB_OTG_DIEPINT_INEPNE                  :constant word :=16#00000040#;           -- /*!< IN endpoint NAK effective */
  USB_OTG_DIEPINT_TXFE                    :constant word :=16#00000080#;           -- /*!< Transmit FIFO empty */
  USB_OTG_DIEPINT_TXFIFOUDRN              :constant word :=16#00000100#;           -- /*!< Transmit Fifo Underrun */
  USB_OTG_DIEPINT_BNA                     :constant word :=16#00000200#;           -- /*!< Buffer not available interrupt */
  USB_OTG_DIEPINT_PKTDRPSTS               :constant word :=16#00000800#;           -- /*!< Packet dropped status */
  USB_OTG_DIEPINT_BERR                    :constant word :=16#00001000#;           -- /*!< Babble error interrupt */
  USB_OTG_DIEPINT_NAK                     :constant word :=16#00002000#;           -- /*!< NAK interrupt */

-- /********************  Bit definition forUSB_OTG_HCINTMSK register  ********************/
  USB_OTG_HCINTMSK_XFRCM                   :constant word :=16#00000001#;           -- /*!< Transfer completed mask */
  USB_OTG_HCINTMSK_CHHM                    :constant word :=16#00000002#;           -- /*!< Channel halted mask */
  USB_OTG_HCINTMSK_AHBERR                  :constant word :=16#00000004#;           -- /*!< AHB error */
  USB_OTG_HCINTMSK_STALLM                  :constant word :=16#00000008#;           -- /*!< STALL response received interrupt mask */
  USB_OTG_HCINTMSK_NAKM                    :constant word :=16#00000010#;           -- /*!< NAK response received interrupt mask */
  USB_OTG_HCINTMSK_ACKM                    :constant word :=16#00000020#;           -- /*!< ACK response received/transmitted interrupt mask */
  USB_OTG_HCINTMSK_NYET                    :constant word :=16#00000040#;           -- /*!< response received interrupt mask */
  USB_OTG_HCINTMSK_TXERRM                  :constant word :=16#00000080#;           -- /*!< Transaction error mask */
  USB_OTG_HCINTMSK_BBERRM                  :constant word :=16#00000100#;           -- /*!< Babble error mask */
  USB_OTG_HCINTMSK_FRMORM                  :constant word :=16#00000200#;           -- /*!< Frame overrun mask */
  USB_OTG_HCINTMSK_DTERRM                  :constant word :=16#00000400#;           -- /*!< Data toggle error mask */

-- /********************  Bit definition for USB_OTG_DIEPTSIZ register  ********************/

  USB_OTG_DIEPTSIZ_XFRSIZ                  :constant word :=16#0007FFFF#;           -- /*!< Transfer size */
  USB_OTG_DIEPTSIZ_PKTCNT                  :constant word :=16#1FF80000#;           -- /*!< Packet count */
  USB_OTG_DIEPTSIZ_MULCNT                  :constant word :=16#60000000#;           -- /*!< Packet count */
-- /********************  Bit definition forUSB_OTG_HCTSIZ register  ********************/
  USB_OTG_HCTSIZ_XFRSIZ                    :constant word :=16#0007FFFF#;           -- /*!< Transfer size */
  USB_OTG_HCTSIZ_PKTCNT                    :constant word :=16#1FF80000#;           -- /*!< Packet count */
  USB_OTG_HCTSIZ_DOPING                    :constant word :=16#80000000#;           -- /*!< Do PING */
  USB_OTG_HCTSIZ_DPID                      :constant word :=16#60000000#;           -- /*!< Data PID */
  USB_OTG_HCTSIZ_DPID_0                    :constant word :=16#20000000#;           -- /*!<Bit 0 */
  USB_OTG_HCTSIZ_DPID_1                    :constant word :=16#40000000#;           -- /*!<Bit 1 */

-- /********************  Bit definition forUSB_OTG_DIEPDMA register  ********************/
  USB_OTG_DIEPDMA_DMAADDR                  :constant word :=16#FFFFFFFF#;           -- /*!< DMA address */

-- /********************  Bit definition forUSB_OTG_HCDMA register  ********************/
  USB_OTG_HCDMA_DMAADDR                    :constant word :=16#FFFFFFFF#;           -- /*!< DMA address */

-- /********************  Bit definition forUSB_OTG_DTXFSTS register  ********************/
  USB_OTG_DTXFSTS_INEPTFSAV                :constant word :=16#0000FFFF#;           -- /*!< IN endpoint TxFIFO space avail */

-- /********************  Bit definition forUSB_OTG_DIEPTXF register  ********************/
  USB_OTG_DIEPTXF_INEPTXSA                 :constant word :=16#0000FFFF#;           -- /*!< IN endpoint FIFOx transmit RAM start address */
  USB_OTG_DIEPTXF_INEPTXFD                 :constant word :=16#FFFF0000#;           -- /*!< IN endpoint TxFIFO depth */

-- /********************  Bit definition forUSB_OTG_DOEPCTL register  ********************/

  USB_OTG_DOEPCTL_MPSIZ                     :constant word :=16#000007FF#;           -- /*!< Maximum packet size */          -- /*!<Bit 1 */
  USB_OTG_DOEPCTL_USBAEP                    :constant word :=16#00008000#;           -- /*!< USB active endpoint */
  USB_OTG_DOEPCTL_NAKSTS                    :constant word :=16#00020000#;           -- /*!< NAK status */
  USB_OTG_DOEPCTL_SD0PID_SEVNFRM            :constant word :=16#10000000#;           -- /*!< Set DATA0 PID */
  USB_OTG_DOEPCTL_SODDFRM                   :constant word :=16#20000000#;           -- /*!< Set odd frame */
  USB_OTG_DOEPCTL_EPTYP                     :constant word :=16#000C0000#;           -- /*!< Endpoint type */
  USB_OTG_DOEPCTL_EPTYP_0                   :constant word :=16#00040000#;           -- /*!<Bit 0 */
  USB_OTG_DOEPCTL_EPTYP_1                   :constant word :=16#00080000#;           -- /*!<Bit 1 */
  USB_OTG_DOEPCTL_SNPM                      :constant word :=16#00100000#;           -- /*!< Snoop mode */
  USB_OTG_DOEPCTL_STALL                     :constant word :=16#00200000#;           -- /*!< STALL handshake */
  USB_OTG_DOEPCTL_CNAK                      :constant word :=16#04000000#;           -- /*!< Clear NAK */
  USB_OTG_DOEPCTL_SNAK                      :constant word :=16#08000000#;           -- /*!< Set NAK */
  USB_OTG_DOEPCTL_EPDIS                     :constant word :=16#40000000#;           -- /*!< Endpoint disable */
  USB_OTG_DOEPCTL_EPENA                     :constant word :=16#80000000#;           -- /*!< Endpoint enable */

-- /********************  Bit definition forUSB_OTG_DOEPINT register  ********************/
  USB_OTG_DOEPINT_XFRC                    :constant word :=16#00000001#;           -- /*!< Transfer completed interrupt */
  USB_OTG_DOEPINT_EPDISD                  :constant word :=16#00000002#;           -- /*!< Endpoint disabled interrupt */
  USB_OTG_DOEPINT_STUP                    :constant word :=16#00000008#;           -- /*!< SETUP phase done */
  USB_OTG_DOEPINT_OTEPDIS                 :constant word :=16#00000010#;           -- /*!< OUT token received when endpoint disabled */
  USB_OTG_DOEPINT_B2BSTUP                 :constant word :=16#00000040#;           -- /*!< Back-to-back SETUP packets received */
  USB_OTG_DOEPINT_NYET                    :constant word :=16#00004000#;           -- /*!< NYET interrupt */

-- /********************  Bit definition forUSB_OTG_DOEPTSIZ register  ********************/

  USB_OTG_DOEPTSIZ_XFRSIZ                  :constant word :=16#0007FFFF#;           -- /*!< Transfer size */
  USB_OTG_DOEPTSIZ_PKTCNT                  :constant word :=16#1FF80000#;           -- /*!< Packet count */

  USB_OTG_DOEPTSIZ_STUPCNT                 :constant word :=16#60000000#;           -- /*!< SETUP packet count */
  USB_OTG_DOEPTSIZ_STUPCNT_0               :constant word :=16#20000000#;           -- /*!<Bit 0 */
  USB_OTG_DOEPTSIZ_STUPCNT_1               :constant word :=16#40000000#;           -- /*!<Bit 1 */

-- /********************  Bit definition for PCGCCTL register  ********************/
  USB_OTG_PCGCCTL_STOPCLK                 :constant word :=16#00000001#;           -- /*!< SETUP packet count */
  USB_OTG_PCGCCTL_GATECLK                 :constant word :=16#00000002#;           -- /*!<Bit 0 */
  USB_OTG_PCGCCTL_PHYSUSP                 :constant word :=16#00000010#;           -- /*!<Bit 1 */


end stm32f407.registers.usb;
