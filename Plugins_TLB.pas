unit Plugins_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 45604 $
// File generated on 1/9/2019 4:08:56 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\RetailPro9\Plugins\Plugins.tlb (1)
// LIBID: {839F2F14-1599-415D-83DE-AF47853410E2}
// LCID: 0
// Helpfile: C:\IP\RD7\Mod\CMSCommon\Src\o
// HelpString: RetailPro 9.x Plugins Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.0 MSXML, (r:\retail87\Rpro\msxml.dll)
// Parent TypeLibrary:
//   (0) v1.0 SideButtonsTest, (V:\RPro9\Tests\SideButton\SideButtonsTest)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, MSXML_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  PluginsMajorVersion = 1;
  PluginsMinorVersion = 2;

  LIBID_Plugins: TGUID = '{839F2F14-1599-415D-83DE-AF47853410E2}';

  IID_IPluginAdapter: TGUID = '{3C97FFAF-22AD-4CC5-9FC8-885874F15805}';
  IID_IDiscover: TGUID = '{3BE47FB7-DCC2-4D0A-81CA-A3A6DFEF279A}';
  IID_IAbstractPlugin: TGUID = '{A22780F0-A55F-4E05-9C4D-A98FEB6A7A9F}';
  IID_IBOPlugin: TGUID = '{D769FFDE-3738-4A93-88AA-CE6357C6AD8E}';
  IID_IAttributePlugin: TGUID = '{341C81F8-D12B-4695-8D7C-1DB9D498C9A6}';
  IID_IAttributeValidationPlugin: TGUID = '{80990049-A1B1-4336-B3DE-6F78F7485242}';
  IID_IAttributeAssignmentPlugin: TGUID = '{AF8F2EF4-D12B-4F5E-9881-9029E1CB0D1E}';
  IID_IEntityUpdatePlugin: TGUID = '{BB7F6968-CD4A-46D2-822F-6BA885BF2055}';
  IID_IItemAddRemovePlugin: TGUID = '{5A5AEB13-F3B2-4BEE-A94E-F160BDD4B465}';
  IID_ISideButtonPlugin: TGUID = '{D0D606DF-6D0B-458F-8A99-18FA0B32696F}';
  IID_ICustomAttributePlugin: TGUID = '{B0BD8314-CA21-41E8-BA0D-BA0D470193DA}';
  IID_IPrintPlugin: TGUID = '{8E298576-2A0A-4A63-8DBA-6E485A853245}';
  IID_IEFTPlugin: TGUID = '{295211F6-0832-487C-82B4-93B5A8147878}';
  IID_IAttributeCalculationPlugin: TGUID = '{E50F1E96-9E14-4571-87CB-918210E04E71}';
  CLASS_AttributeValidationPlugin: TGUID = '{10523506-7013-4FE0-AD13-58744A6E7ACF}';
  CLASS_AttributeAssignmentPlugin: TGUID = '{965D2A27-347B-48A6-9F23-8775E700CD97}';
  CLASS_EntityUpdatePlugin: TGUID = '{27207BF3-BD44-45BA-984A-826B892E2D61}';
  CLASS_ItemAddRemovePlugin: TGUID = '{E1EF2294-FC86-46A7-9A12-315B110B7481}';
  CLASS_SideButtonPlugin: TGUID = '{FCE7FFE4-A0DA-4027-9F2C-B5A379B5BC12}';
  CLASS_CustomAttributePlugin: TGUID = '{7E029353-3B4A-4421-8310-2FE39D35E83F}';
  CLASS_PrintPlugin: TGUID = '{9CC7C14F-E454-4CE5-820B-B86C7D70776B}';
  CLASS_EFTPlugin: TGUID = '{EC31A70A-78B8-4B32-B311-CA0E23303167}';
  CLASS_AttributeCalculationPlugin: TGUID = '{EF97010B-73CD-4B3A-9B8F-AB65480959D2}';
  CLASS_Discover: TGUID = '{B0FD0D46-B741-4C33-8078-7D408D30061E}';
  IID_IHardwarePlugin: TGUID = '{99588FCF-F272-4174-8FCE-BA98262AD4F3}';
  IID_IDisplayPlugin: TGUID = '{C923C306-F671-480D-A925-FBF681F6D0CE}';
  IID_ICashDrawerPlugin: TGUID = '{EDE47524-CBF3-49EE-B50A-D78CBA580953}';
  IID_IMSRPlugin: TGUID = '{5ACA9311-0483-4D7B-A524-A5A3CF3BCD8C}';
  IID_ICheckImageScannerPlugin: TGUID = '{68AD3C7D-FB6E-40E0-BB00-141916CAEE20}';
  IID_IMICRPlugin: TGUID = '{1B50CF7C-3FAA-4BDC-9939-9A46C46B99D0}';
  IID_IPinPadPlugin: TGUID = '{D9D18324-0DDC-44C9-A8C9-822883FC54CF}';
  IID_IScalePlugin: TGUID = '{EE050562-D4B2-4030-AF61-B9D6F18BC3C3}';
  IID_IPOSStationAdapter: TGUID = '{BBFA2582-23B0-4504-AF20-D503775010E5}';
  CLASS_DisplayPlugin: TGUID = '{714F1995-82AD-4561-86B8-A26686A3DC01}';
  CLASS_CashDrawerPlugin: TGUID = '{E213AB06-2135-4A86-AF77-40E0A05D0DB6}';
  CLASS_MSRPlugin: TGUID = '{B1EE6A39-CD4D-4085-931D-8D089C921518}';
  CLASS_CheckImageScannerPlugin: TGUID = '{9AAC9E95-08F9-4982-BFD6-A78051BD464E}';
  CLASS_MICRPlugin: TGUID = '{47B9E0BB-5208-4BE8-BF2A-A95884412040}';
  CLASS_PinPadPlugin: TGUID = '{F2EF600F-782D-4419-89FF-AE5D824EC671}';
  CLASS_ScalePlugin: TGUID = '{D20492EF-B224-453B-B8B9-B5972143F19B}';
  IID_IConfigure: TGUID = '{0B6E3047-B487-4465-8982-418FBAD76B17}';
  IID_IBarCodeScannerPlugin: TGUID = '{55FC3589-D6FC-453C-9C8F-8873CFFA317E}';
  IID_IPrinterPlugin: TGUID = '{B37CAE3D-0D69-4A32-B010-C16FA7C1CE91}';
  CLASS_BarCodeScannerPlugin: TGUID = '{9FC281B9-D359-4328-A81E-8F544347855B}';
  CLASS_PrinterPlugin: TGUID = '{667B9CBD-B5FE-42A1-A7E8-0872C35AF6B8}';
  IID_ITenderPlugin: TGUID = '{9E404F61-1205-4371-B47E-5B05488EAEEC}';
  CLASS_TenderPlugin: TGUID = '{A79B337C-61CB-46BC-B022-305E4982DBB5}';
  IID_IEFTAdapter: TGUID = '{3D16D91E-A0C9-43E9-8EA5-B0AEF3551EDA}';
  IID_ISigCapPlugin: TGUID = '{42A26AC1-3A98-4E83-A033-51F4B9CC4418}';
  IID_IInventoryScannerPlugin: TGUID = '{AFDD9BB3-E56D-4055-A6AD-C709702F5988}';
  IID_IServerPlugin: TGUID = '{9F41F920-DE63-47E4-866C-175D2D41C7EE}';
  IID_ILoginPlugin: TGUID = '{80293F7B-AE1E-407D-B73A-D4EC8026AA04}';
  IID_IFiscalPrinterPlugin: TGUID = '{98F4AE05-9B51-44D0-B1B5-E32BAFC8C1A0}';
  IID_ITenderDialoguePlugin: TGUID = '{380EEF71-463C-41CC-8D30-EDD4904D6737}';
  IID_INamedTriggerPlugin: TGUID = '{8DFC7AEC-CA14-4A84-9610-562DC4032967}';
  IID_IApplicationPlugin: TGUID = '{915CA60C-927D-4B7A-BEB8-E7A2E52AA907}';
  IID_IApplicationPluginAdapter: TGUID = '{CD9591DA-3D18-48AF-8CD9-D2340AE2DE7C}';
  IID_IRProServicesConsumer: TGUID = '{19AD4E98-B1E8-480C-B945-D77C08E8A3AD}';
  IID_IRProServicesProducer: TGUID = '{2AFC85B8-ED7A-4CB6-8EC6-3BE8D5455BEC}';
  IID_ILicense: TGUID = '{26579216-8FAD-444D-B39A-FA498477366E}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum BusinessObjectType
type
  BusinessObjectType = TOleEnum;
const
  btGeneric = $00000000;
  btAdjustmentMemo = $00000001;
  btAdjustmentMemoItem = $00000002;
  btASNVoucher = $00000003;
  btAlloc = $00000004;
  btCustomer = $00000005;
  btDepartment = $00000006;
  btItem = $00000007;
  btInvoice = $00000008;
  btMemo = $00000009;
  btPOHist = $0000000A;
  btPOTerms = $0000000B;
  btSlip = $0000000C;
  btSOHist = $0000000D;
  btSOTerms = $0000000E;
  btPhysicalInventory = $0000000F;
  btTOItemAllocation = $00000010;
  btVendor = $00000011;
  btAllocBO = $00000012;
  btTender = $00000013;
  btSOItemBO = $00000014;
  btTOItemAllocBO = $00000015;
  btVoucherItemBO = $00000016;
  btPOSDocItemBO = $00000017;
  btSalesOrderBO = $00000018;
  btPOSDocBO = $00000019;
  btVoucher = $0000001A;
  btInventoryItems = $0000001B;
  btTransferOrderBO = $0000001C;
  btTransferOrderItemBO = $0000001D;
  btPurchaseOrderBO = $0000001E;
  btPOItemBO = $0000001F;
  btInvoiceItemBO = $00000020;
  btLocalCustomerBO = $00000021;
  btAdjMemoCommentBO = $00000022;
  btUDF = $00000023;
  btCustomerUDF = $00000024;
  btInvenRef = $00000025;
  btCustomerAddressListBO = $00000026;
  btVoucherCommentsBO = $00000027;
  btSOInstructionBO = $00000028;
  btSlipCommentsBO = $00000029;
  btSODepositBO = $0000002A;
  btDiscReasonBO = $0000002B;
  btSubsidiaryBO = $0000002C;
  btEmployeesBO = $0000002D;
  btTillBO = $0000002E;
  btPriceLevelBO = $0000002F;
  btStoreLookupBO = $00000030;
  btInvoiceCouponBO = $00000031;
  btMarkdownBO = $00000032;
  btSlipItemBO = $00000033;

// Constants for enum PluginError
type
  PluginError = TOleEnum;
const
  peSuccess = $FFFFFFFF;
  peUnableToCreateBO = $FFFFFFFE;
  peUnsupportedBO = $FFFFFFFD;
  peInvalidBOHandle = $FFFFFFFC;
  peGenericFailure = $00000000;
  peUnableToUpdateDataSetRecords = $00000001;
  peUnableToSetAttributeValue = $00000002;
  peUnableToSetAttributeValues = $00000003;
  peUnableToClearListIncluded = $00000004;
  peUnableToClearInstanceincluded = $00000005;
  peUnableToUpdateListCollections = $00000006;
  peUnableToUpdateInstanceCollections = $00000007;
  peUnableToOpen = $00000008;
  peUnableToClose = $00000009;
  peUnableToCloseStandalone = $0000000A;
  peUnableToEdit = $0000000B;
  peUnableToInsert = $0000000C;
  peUnableToDelete = $0000000D;
  peUnableToPost = $0000000E;
  peUnableToPostEx = $0000000F;
  peUnableToCancel = $00000010;
  peUnableToRefresh = $00000011;
  peUnableToReadFirstRow = $00000012;
  peUnableToReadNextRow = $00000013;
  peUnableToReadPriorRow = $00000014;
  peUnableToCopyRow = $00000015;
  peUnableToRollTransactionBack = $00000016;
  peUnableToDisableDataSetControls = $00000017;
  peUnableToEnableDataSetControls = $00000018;
  peUnableToUpdateActiveInstance = $00000019;
  peUnableToRefreshRecord = $0000001A;
  peUnableToPostAllDataSets = $0000001B;
  peUnableToDisableLayoutNotifier = $0000001C;
  peUnableToEnableLayoutNotifier = $0000001D;
  peUnableToGetPosition = $0000001E;
  peUnableToSetTempClosingState = $0000001F;
  peUnableToClearTempClosingState = $00000020;
  peUnableToRecalculateAttribute = $00000021;
  peUnableToClearActiveFakeValues = $00000022;
  peUnableToDisableAccessSecurity = $00000023;
  peUnableToEnableAccessSecurity = $00000024;
  peUnableToDisableSecurity = $00000025;
  peUnableToEnableSecurity = $00000026;
  peSessionNotConnected = $00000027;
  peSuccessNoResults = $00000028;
  peAttributeNotFound = $00000029;
  peUnableToReadLastRow = $0000002A;
  peUnsupportedFunction = $0000002B;
  peUnableToLocateByAttributes = $0000002C;
  peUnableToCreateVendor = $0000002D;
  peUnableToCreateDataset = $0000002E;
  peUnableToDeleteDatasetData = $0000002F;
  peUnableToDeleteIndex = $00000030;
  peUnableToDeleteRecord = $00000031;
  peUnableToDropDataset = $00000032;
  peUnableToDropVendor = $00000033;
  peUnableToGetDatasetSid = $00000034;
  peUnableToGetRecordByCMSReference = $00000035;
  peUnableToGetRecordByLookup = $00000036;
  peUnableToGetRecordBySid = $00000037;
  peUnableToGetRecordSidByCMSReference = $00000038;
  peUnableToGetRecordSidByLookup = $00000039;
  peUnableToGetVendorSid = $0000003A;
  peUnableToInsertIndex = $0000003B;
  peUnableToInsertRecord = $0000003C;
  peUnableToModifyDataset = $0000003D;
  peUnableToModifyIndexLookup = $0000003E;
  peUnableToModifyIndexReference = $0000003F;
  peUnableToModifyVendor = $00000040;
  peUnableToUpdateRecord = $00000041;
  pePrintException = $00000042;
  pePrintWasNotHandled = $00000043;
  peTenderWasNotHandled = $00000044;
  peMethodNotSupported = $00000045;
  peRequiredMethodParametersMissing = $00000046;
  peInvalidMethodParameterValue = $00000047;
  peLicenseExceeded = $FFFFFFFB;
  peAttrPropValIsNull = $00000048;
  peCustNamesDuplicated = $00000049;
  peCustIdDuplicated = $0000004A;
  pePercMoreThan100 = $0000004B;
  peDeptMarginPercLimit = $0000004C;
  peDeptMarkupPercLimit = $0000004D;
  peDeptCoefLimit = $0000004E;
  pePercLessThanZero = $0000004F;
  peVouFeeTypeEmpty = $00000050;
  pePOVendCodeEmpty = $00000051;
  peInvDuplicatedALU = $00000052;
  peInvALUBasedItemSID = $00000053;
  peInvALUBasedStyleSID = $00000054;
  peInvUPCBasedItemSID = $00000055;
  peSbsItemNotUnique = $00000056;
  pePackKitQtyZero = $00000057;
  peNoStores = $00000058;
  peNoNewSerialNumber = $00000059;
  peItemsNegQty = $0000005A;
  peLookupItemNotFound = $0000005B;
  peLookupItemPrefEmpty = $0000005C;
  peLookupItemInvalidNo = $0000005D;
  peLookupItemInvalidUPC = $0000005E;
  peLookupItemInvalidALU = $0000005F;
  peLookupItemExists = $00000060;
  peLookupItemInvalidVendCode = $00000061;
  peLookupItemPackage = $00000062;
  peLookupItemNonInventory = $00000063;
  peRefPOForVouNeeded = $00000064;
  peItemsQtyWithSerialNo = $00000065;
  peValueLessThanZero = $00000066;
  peInvKitType_HasSerial = $00000067;
  peInvKitType_HasQty = $00000068;
  peInvKitType_HasItems = $00000069;
  peLookupItemIsSerial = $0000006A;
  peNoPriceLevels = $0000006B;
  peEmailIsInvalid = $0000006C;
  peUniqueUserName = $0000006D;
  peQtyTooLarge = $0000006E;
  peCurrencyTooLarge = $0000006F;
  peEmptyPassword = $00000070;
  pePasswordsMismatch = $00000071;
  peIntercompanySlipRefTO = $00000072;
  peQtyDecimals = $00000073;
  peLookupItemUnorderable = $00000074;
  peBeginDateAfterEndDate = $00000075;
  peSalesTrgtDatesOverlapping = $00000076;
  peSalesTrgtAmtLessThanZero = $00000077;
  pePONoDuplicated = $00000078;
  pePOMinOrdQtyItem = $00000079;
  pePOCancelBeforeOrderDate = $0000007A;
  peLookupItemDiscontinued = $0000007B;
  peInvalidCreditCardNo = $0000007C;
  peNoActiveStores = $0000007D;
  peDocMayNotBeCreatedRegClosed = $0000007E;
  peLookupItemGift = $0000007F;
  peGiftCardNoPermission = $00000080;
  peGiftZeroQty = $00000081;
  peItemsZeroQty = $00000082;
  peItemsUnsellable = $00000083;
  peInvalidCurrencyValue = $00000084;
  pePackItemsUnsellable = $00000085;
  peUniqueEmployeeName = $00000086;
  peGiftCertNoPermission = $00000087;
  peItemsLotNoEmpty = $00000088;
  peShipToStoreEmpty = $00000089;
  peVouVendorCodeNoEmpty = $0000008A;
  peLookupItemInvalidDescription1 = $0000008B;
  peLookupItemInvalidDescription2 = $0000008C;
  peLookupItemInvalidSerialNo = $0000008D;
  peLookupItemInvalidLotNo = $0000008E;
  peLotNoAdjQtyGreaterThanAdjQty = $0000008F;
  peLookupItemOrderableByDate = $00000090;
  peLookupItemSellableByDate = $00000091;
  peVouVendInvcNoEmpty = $00000092;
  peVouVendorInvcAmtNEqVouTotl = $00000093;
  peVouVendorInvcPeriodClosed = $00000094;
  peBlankDesc1 = $00000095;
  peBlankDesc2 = $00000096;
  peBlankDesc1Desc2 = $00000097;
  peSerialQtyDecimal = $00000098;
  peRequireComments = $00000099;
  peItemsSerialNoEmpty = $0000009A;
  peGiftNegQty = $0000009B;
  peOracleError = $0000009C;

// Constants for enum BOPreference
type
  BOPreference = TOleEnum;
const
  bpCustFullName = $00000000;
  bpUseVat = $00000001;
  bpVatOpts = $00000002;
  bpEncryptSchema = $00000003;
  bpDefaultCommCod = $00000004;
  bpInvenPriceMethod = $00000005;
  bpInvenPriceMethodAffectManual = $00000006;
  bpAccessInactive = $00000007;
  bpGMAffectCost = $00000008;
  bpTaxedMargin = $00000009;
  bpTaxedCoeff = $0000000B;
  bpDefaultStore = $0000000C;
  bpAllowDuplicateALU = $0000000D;
  bpUseNCharsForStyleSid = $0000000E;
  bpNotConsolidateDocItems = $0000000F;
  bpEnableSerialNoTrack = $00000010;
  bpDefaultSerialNoTrackLevel = $00000011;
  bpRecordVendNameToDescr2 = $00000012;
  bpItemDocLookupItemNo = $00000013;
  bpItemDocLookupUPC = $00000014;
  bpItemDocLookupALU = $00000015;
  bpItemLookupMode = $00000016;
  bpNegValueFormat = $00000017;
  bpUseThousandSeparatorForQuantity = $00000018;
  bpUseThousandSeparatorForCurrency = $00000019;
  bpUseQtyDecimals = $0000001A;
  bpUseCurrencySymbol = $0000001B;
  bpPriceDecimals = $0000001C;
  bpCostDecimals = $0000001D;
  bpTaxAmtDecimals = $0000001E;
  bpASNChooseEditItems = $0000001F;
  bpASNMakeReturn = $00000020;
  bpItemsNegativeQty = $00000021;
  bpAddrLookupByZIP = $00000022;
  bpZipLookupAddyMask = $00000023;
  bpStyleSidGenSource = $00000024;
  bpCharsInStyleSidGen = $00000025;
  bpNextASNSeqNo = $00000026;
  bpNextPOSeqNo = $00000027;
  bpDefaultStoreDocShip = $00000028;
  bpDefaultStoreDocBill = $00000029;
  bpCurrentUserEmplId = $0000002A;
  bpPO_Inst1 = $0000002B;
  bpPO_Inst2 = $0000002C;
  bpPO_Inst3 = $0000002D;
  bpPO_Inst4 = $0000002E;
  bpPO_Inst5 = $0000002F;
  bpDuplicateCustId = $00000030;
  bpDuplicateCustName = $00000031;
  bpNextCustIDSeqNo = $00000032;
  bpMultiVendorDoc = $00000033;
  bpWarningWhenNewCostGreaterThanOld = $00000034;
  bpNewCostWarningThresholdPerc = $00000035;
  bpDefaultStoreDoc = $00000036;
  bpDontUseLastCost = $00000037;
  bpOrdrCaseOnly = $00000038;
  bpCaseQtyRoundMethod = $00000039;
  bpAllwEdtCustID = $0000003A;
  bpUseTradeDiscount = $0000003B;
  bpAdjMemoOnQty = $0000003C;
  bpAdjMemoOnPrice = $0000003D;
  bpAdjMemoOnCost = $0000003E;
  bpAdjQtyStored = $0000003F;
  bpCommentRequired = $00000040;
  bpPOPrefix = $00000041;
  bpCheckitemSerialNumber = $00000042;
  bpNextAdjMemoSeqNo = $00000043;
  bpUpdateOrderCost = $00000044;
  bpUpdatePrice = $00000045;
  bpCostMethod = $00000046;
  bpNextTOSeqNo = $00000047;
  bpLedgerItemInfo = $00000048;
  bpUserName = $00000049;
  bpDataBaseName = $0000004A;
  bpUserId = $0000004B;
  bpUserEmplId = $0000004C;
  bpUseTax2 = $0000004D;
  bpUsePWTForTax2 = $0000004E;
  bpNextReturnVouSeqNo = $0000004F;
  bpNextReceiveVouSeqNo = $00000050;
  bpNextStoreCreditSeqNo = $00000051;
  bpNextSlipSeqNo = $00000052;
  bpUseSeparateVouSeq = $00000053;
  bpReqVouRefToPO = $00000054;
  bpTaxedMarkup = $0000000A;
  bpTwoStepApproval = $00000055;
  bpUseVendorInvoice = $00000056;
  bpAutoRetrieveLedger = $00000057;
  bpCheckAvailQty = $00000058;
  bpAllowPOPastCancelDate = $00000059;
  bpAllowUpdateDoc = $0000005A;
  bpAllowReverseDoc = $0000005B;
  bpAutoGenSlipSetup = $0000005C;
  bpUseAutoUPC = $0000005D;
  bpUseAutoALU = $0000005E;
  bpNextAutoUPC = $0000005F;
  bpNextAutoALU = $00000060;
  bpAutoALUMask = $00000061;
  bpAllowPackageItemsInDoc = $00000062;
  bpAllowDuplicateItemsInDoc = $00000063;
  bpPOMask = $00000064;
  bpAutoPONoGen = $00000065;
  bpUseMultiTax = $00000066;
  bpPreventNegativeCost = $00000067;
  bpOverwriteCustTitle = $00000068;
  bpOverwriteVendTitle = $00000069;
  bpNextSOSeqNo = $0000006A;
  bpNextReturnInvSeqNo = $0000006B;
  bpNextInvSeqNo = $0000006C;
  bpUseSeparateInvSeq = $0000006D;
  bpPIType = $0000006E;
  bpPIInitBy = $0000006F;
  bpPIThresholdCost = $00000070;
  bpPIUseFilters = $00000071;
  bpPIStripZeroes = $00000072;
  bpPIAutoUpdateVariance = $00000073;
  bpUseSmartScan = $00000074;
  bpSmartscanGroup1 = $00000075;
  bpSmartscanGroup2 = $00000076;
  bpSmartscanGroup3 = $00000077;
  bpMultiVendorPO = $00000078;
  bpAllwSprdGlobDisc = $00000079;
  bpPOSFlagDefMnu1 = $0000007A;
  bpPOSFlagDefMnu2 = $0000007B;
  bpPOSFlagDefMnu3 = $0000007C;
  bpRndTenderTypes = $0000007D;
  bpRndBasCurHow = $0000007E;
  bpRndBasCurLvl = $0000007F;
  bpUseDesc2DefinitionByUDFs = $00000080;
  bpDefDesc2ByUDFsAppBlanks = $00000081;
  bpRI_DefaultForNewItems = $00000082;
  bpMinSODeposit4CustomerOrder = $00000083;
  bpMinSODeposit4SpecialOrder = $00000084;
  bpMinSODeposit4Layaway = $00000085;
  bpAllwIntrCompXFer = $00000089;
  bpUse_Price_Based_Stores = $0000008A;
  bpBring_Orig_Price = $0000008B;
  bpACD = $0000008C;
  bpQty_Pricing = $0000008D;
  bpBackorderMessage = $0000008E;
  bpZOutPurgeDays = $0000008F;
  bpZOutReqEntryOpenAndCloseAmounts = $00000090;
  bpZOutAllowZeroOpenAmount = $00000091;
  bpPOSAutoCreateNextOpen = $00000092;
  bpZOutRptCombineSalesTaxVat = $00000093;
  bpZOutRequireManualCount = $00000094;
  bpZOutRptSortBy = $00000095;
  bpWarnCostHigherPrice = $00000096;
  bpRequireMinPercCustOrder = $00000086;
  bpRequireMinPercSpecOrder = $00000087;
  bpRequireMinPercLayawayOrder = $00000088;
  bpAccum_Discount = $0000009A;
  bpLocalController = $000000D2;
  bpUseSepPOSeq = $000000C8;
  bpAllowPoSpreadFees = $000000C9;
  bpNextMultiPOSeqNo = $000000CA;
  bpDefaultLNTrackingLevel = $000000CB;
  bpDeactivateLNOnDepleted = $000000CC;
  bpAlertUserOnLnExpiryDate = $000000E2;
  bpBlockSaleOnLnExpiryDate = $000000E3;
  bpReqCustOnRet = $000000E4;
  bpDefSOProcAtStoreNo = $000000E5;
  bpDefaultShipMethod = $000000E6;
  bpWorkstationID = $000000E7;
  bpPromptForSNPartCtlRcpt = $000000E8;
  bpPromptForSNPartCtlVchr = $000000E9;
  bpPromptForSNPartCtlSlip = $000000EA;
  bpPromptForSNPartCtlMemo = $000000EB;
  bpPromptForSNPartCtlInvn = $000000EC;
  bpUpdatePICountsOnRemote = $000000FC;
  bpNoteFldsOn = $000000ED;
  bpHiSecSet = $000000EE;
  bpAuditMode = $000000EF;
  bpAuditClass = $000000F0;
  bpReqPOSFlagFor = $000000F1;
  bpPromptForSNPartCtlSO = $000000F2;
  bpPromptForSNPartCtlASN = $000000F3;
  bpPromptForSNPartCtl = $000000F4;
  bpEFTUseGlobalCreditCardGateway = $000000F5;
  bpEFTCreditCardGateway = $000000F6;
  bpEFTCheckVerificationGateway = $000000F8;
  bpEFTGiftCardGateway = $000000F9;
  bpEFTDebitCardGateway = $000000F7;
  bpFrwdQtyPricing = $000000FA;
  bpAfterUpdateInvcGoTo = $000000FB;
  bpAllowNonInvnItemsInDoc = $000000FD;
  bpXZRequireBlindClose = $000000FE;
  bpXZNumberofAttempts = $000000FF;
  bpXZReconcileVarianceAmount = $00000100;
  bpUserMaxDiscPerc = $00000101;
  bpUseWSReceiptSeqs = $00000102;
  bpUseWSSOSeqs = $00000103;
  bpUseWSVoucherSeqs = $00000104;
  bpUseWSSlipSeqs = $00000105;
  bpUseWSAdjMemoSeqs = $00000106;
  bpPOSNoFlag = $00000107;
  bpPOSLastFlag = $00000108;
  bpZOutRequireRegisterLevel = $0000010E;
  bpNextGiftCertSeqNumber = $0000010F;
  bpUseSeqGiftCertChg = $00000110;
  bpUseSeqStorCrdId = $00000111;
  bpPOSPPSCAutoGenerateIDNum = $000000AA;
  bpEFTCCVerificationMethod = $00000117;
  bpEFTCCRequireCardVerification = $00000118;
  bpEFTCCAllowCardToBeKeyed = $00000119;
  bpEFTCCCloseCCDlgOnApproval = $0000011A;
  bpEFTCCAutoUpdatePrintOnApproval = $0000011B;
  bpEFTCCAutoAuthAfterSwipe = $0000011C;
  bpEFTCCAllowClerkToForceDupTrans = $0000011D;
  bpEFTCCPrintOnAuth = $0000011E;
  bpEFTCCPrintOnPrintUpdate = $0000011F;
  bpEFTCCCVV2CVC2CIDVerification = $00000120;
  bpEFTCCAVSVerification = $00000121;
  bpEFTDbtAllowCashBack = $00000133;
  bpAllowGiftInDoc = $00000112;
  bpEFTIdentity = $00000113;
  bpChangePriceLevel = $00000114;
  bpPIIncludeLotSerialInCount = $00000115;
  bpAllowPIUpdateWithDiscrcies = $00000116;
  bpLostSaleSO = $00000122;
  bpSuggestSC = $00000123;
  bpCopyDescToALU = $00000124;
  bpForceAssociateOnNewReciept = $00000125;
  bpForceAssociateOnNewSO = $00000126;
  bpHighSecurityInvoices = $00000127;
  bpHighSecurityVouchers = $00000128;
  bpHighSecurityTransferSlips = $00000129;
  bpHighSecurityAdjustmentMemos = $0000012A;
  bpDefaultAssociateForNewReceipts = $0000012B;
  bpDefaultAssociateForNewSO = $0000012C;
  bpDefaultCustomerSecurityLevel = $0000012D;
  bpNextEFTInvSeqNo = $0000012E;
  bpNextWSInvSeqNo = $0000012F;
  bpNextWSReturnInvSeqNo = $00000130;
  bpNextWSCashDropSeqNo = $00000131;
  bpNextWSDepositSeqNo = $00000132;
  bpItemsZeroQty = $00000134;
  bpTransOrdNo = $00000135;
  bpDocSequenceOnSecurityReceipt = $00000136;
  bpDefaultCustomerType = $00000137;
  bpNewDeptEnabledAsRgnl = $00000138;
  bpNewVendEnabledAsRgnl = $00000139;
  bpLimitItemsAgainstPO = $0000013A;
  bpItemHeaderInTO = $0000013B;
  bpRequireRecordSale = $0000013C;
  bpAlertPriceDiff = $0000013D;
  bpCopyDocPriceToNewItem = $0000013E;
  bpCopyDocCostToNewItem = $0000013F;
  bpCurrencyId = $00000140;
  bpMarkNewInventoryItemsAsProposed = $00000141;
  bpMarkNewPOItemsAsProposed = $00000142;
  bpUseExRateforPrice = $00000143;
  bpRoundPriceConversion = $00000144;
  bpRoundPrice = $00000145;
  bpUseExRateforCost = $00000146;
  bpRoundCostConversion = $00000147;
  bpRoundCost = $00000148;
  bpAutoPromotions = $00000149;
  bpRequireItemVoidsReason = $0000014A;
  bpDefaultItemVoidsReason = $0000014B;
  bpRequireItemReturnsReason = $0000014C;
  bpDefaultItemReturnsReason = $0000014D;
  bpCentralsActive = $0000014E;
  bpCentralsServer = $0000014F;
  bpCentralsPort = $00000150;
  bpCentralsCustomerLookupMode = $00000151;
  bpCentralsTimeout = $00000152;
  bpCentralsMaxRecords = $00000153;
  bpCalculateChkDigit = $00000154;
  bpDisplayChkDigit = $00000155;
  bpCustomerLookUpBy = $00000156;
  bpTax_On_Shipping_Percent = $00000097;
  bpUse_Shipping_Percent = $00000098;
  bpShipping_Percent = $00000099;
  bpPOSIssueGiftCardAmtExceed = $0000009B;
  bpPOSIssueGiftCertAmtExceed = $0000009C;
  bpPOSIssueStoreCreditAmtExceed = $0000009D;
  bpPOSExceededAmtGiftCard = $0000009E;
  bpPOSExceededAmtGiftCert = $0000009F;
  bpPOSExceededAmtStoreCredit = $000000A0;
  bpPOSPPSCExpireAfterVal = $000000A1;
  bpPOSPPSCExpireAfterEnabled = $000000A2;
  bpPOSPPSCExpireAfterOpt = $000000A3;
  bpPOSPPSCOfflineFloorLimit = $000000A4;
  bpPOSPPSCReuseStoreCredit = $000000A5;
  bpPOSPPSCReuseMaximumuExceedAmt = $000000A6;
  bpPOSPPSCAlwaysIssueChange = $000000A7;
  bpPOSPPSCIssueChangeExceed = $000000A8;
  bpPOSPPSCChangeAmountExceed = $000000A9;
  bpPOSPPGiftCrdExpireAfterVal = $000000AB;
  bpPOSPPGiftCrdExpireAfterEnabled = $000000AC;
  bpPOSPPGiftCrdExpireAfterOpt = $000000AD;
  bpPOSPPGiftCrdOfflineFloorLimit = $000000AE;
  bpPOSPPGiftCrdReuse = $000000AF;
  bpPOSPPGiftCrdReuseMaximumExceedAmt = $000000B0;
  bpPOSPPGiftCrdAlwaysIssueChange = $000000B1;
  bpPOSPPGiftCrdChangeAmountExceed = $000000B3;
  bpPOSPPGiftCrdAutoGenerateIDNum = $000000B4;
  bpPOSPPGiftCrUseSeqCrdId = $000000B5;
  bpPOSPPGiftCrdIssueChangeExceed = $000000B2;
  bpPOSPPGiftCardSuggestAsTender = $000000B6;
  bpPOSPPGiftCardAllowAmtToExceedAvail = $000000B7;
  bpPOSPPGiftCertExpireAfterVal = $000000B8;
  bpPOSPPGiftCertExpreAfterEnable = $000000B9;
  bpPOSPPGiftCertExpireAfterOpt = $000000BA;
  bpPOSPPGiftCertOfflineFloorLimit = $000000BB;
  bpPOSPPGiftCertReuse = $000000BC;
  bpPOSPPGiftCertReuseMaximumExceedAmt = $000000BD;
  bpPOSPPGiftCertAlwaysIssueChange = $000000BE;
  bpPOSPPGiftCertIssueChangeExceed = $000000BF;
  bpPOSPPGiftCertChangeAmountExceed = $000000C0;
  bpPOSPPGiftCertAutoGenerateIDNum = $000000C1;
  bpPOSPPGiftCertSuggestAsTender = $000000C2;
  bpPOSPPGiftCertAllowAmtToExceedAvail = $000000C3;
  bpPOSDefComment1 = $000000C4;
  bpPOSDefComment2 = $000000C5;
  bpPOSPromptSpreadTender = $000000C6;
  bpPOSPromptSpreadSO = $000000C7;
  bpPrintZeroQtyItems = $000000CD;
  bpCheckItemLotNumber = $000000CE;
  bpDrawerNumber = $000000CF;
  bpTillID = $000000D0;
  bpRequireInvnAdjustReason = $000000D3;
  bpDefaultInvnAdjustReason = $000000D4;
  bpSODefaultInstruction1 = $000000D5;
  bpSODefaultInstruction2 = $000000D6;
  bpPrintPkgOnRcptSO = $000000D7;
  bpPrintPkgPrcOnRcptSO = $000000D8;
  bpPrintKitOnRcptSO = $000000D9;
  bpTillName = $000000D1;
  bpPrintKitPrcOnRcptSO = $000000DA;
  bpUseSeparateSOSeq = $000000DB;
  bpNextCashDropSeqNo = $000000DC;
  bpNextDepositSeqNo = $000000DD;
  bpNextCustomerOrderSeqNo = $000000DE;
  bpNextRegistrySeqNo = $000000DF;
  bpNextLayawaySeqNo = $000000E0;
  bpUserEmplName = $000000E1;
  bpLimitItemsAgainstSO = $00000109;
  bpwsReceiptUseSingleSequenceNo = $0000010A;
  bpwsSOUseSingleSequenceNo = $0000010B;
  bpwsVouchersUseSingleSequenceNo = $0000010C;
  bpWorkstation_Number = $0000010D;
  bpMaxDiscAllowedForNewItems = $00000157;
  bpMaxAccumDiscAllowedForNewItems = $00000158;
  bpSeasonalPricing = $00000159;
  bpAllowLevel2CreditCardProcessing = $0000015A;
  bpPromptZeroPrice = $0000015B;
  bpEnableSubAndStore = $0000015C;
  bpDefaultSubsidiary = $0000015D;
  bpWSDefaultStore = $0000015E;
  bpWSDefaultStorePOShip = $0000015F;
  bpWSDefaultStorePOBill = $00000160;
  bpWSDefaultStoreSOShipForm = $00000161;
  bpWSDefaultStoreSOSellForm = $00000162;
  bpNotConsolidateItems = $00000163;
  bpECommercePriceLevel = $00000164;
  bpECommerceSalePriceLevel = $00000165;
  bpCustomFileExtension = $00000166;
  bpFillFormulaWebProductName = $00000167;
  bpFillFormulaWebShortDesc = $00000168;
  bpFillFormulaWebLongDesc = $00000169;
  bpOverwriteExistingWPN = $0000016A;
  bpOverwriteExistingWSD = $0000016B;
  bpOverwriteExistingWLD = $0000016C;
  bpUseFilterForStart = $0000016D;
  bpAllowFreeFormAttr = $0000016E;
  bpAllowFreeFormSize = $0000016F;
  bpProductAvailability = $00000170;
  bpAvailabilityThreshold = $00000171;
  bpUserIsSysadmin = $00000172;
  bpAfterUpdateVouGoTo = $00000173;
  bpAfterUpdateSlipGoTo = $00000174;
  bpAfterUpdateAdjMemoGoTo = $00000175;
  bpXZDrawerDefaultLeaveAmount = $00000176;
  bpHighSecuritySalesOrders = $00000177;
  bpChoosePOType = $00000178;
  bpAskCentralProcessing = $00000179;
  bpZOutCountOpenCurrency = $0000017B;
  bpAvailabilityQuantitySource = $0000017C;
  bpStoreCCNumbers = $0000017D;
  bpUsePendingPO = $0000017E;
  bpMultiLvlPOApprovalReqd = $0000017F;
  bpPOApprovalLvl1 = $00000180;
  bpPOApprovalLvl2 = $00000181;
  bpPOApprovalLvl3 = $00000182;
  bpPOApprovalLvl4 = $00000183;
  bpPOApprovalLvl1AmtFrom = $00000184;
  bpPOApprovalLvl2AmtFrom = $00000185;
  bpPOApprovalLvl3AmtFrom = $00000186;
  bpPOApprovalLvl4AmtFrom = $00000187;
  bpPOApprovalLvl1AmtTo = $00000188;
  bpPOApprovalLvl2AmtTo = $00000189;
  bpPOApprovalLvl3AmtTo = $0000018A;
  bpPOApprovalLvl4AmtTo = $0000018B;
  bpUsePendingVouchers = $0000018C;
  bpMultiLvlVouApprovalReqd = $0000018D;
  bpPendingVouAllowOverages = $0000018E;
  bpVouApprovalLvl1 = $0000018F;
  bpVouApprovalLvl2 = $00000190;
  bpVouApprovalLvl3 = $00000191;
  bpVouApprovalLvl4 = $00000192;
  bpVouApprovalLvl1AmtFrom = $00000193;
  bpVouApprovalLvl2AmtFrom = $00000194;
  bpVouApprovalLvl3AmtFrom = $00000195;
  bpVouApprovalLvl4AmtFrom = $00000196;
  bpVouApprovalLvl1AmtTo = $00000197;
  bpVouApprovalLvl2AmtTo = $00000198;
  bpVouApprovalLvl3AmtTo = $00000199;
  bpVouApprovalLvl4AmtTo = $0000019A;
  bpVouApprovalLvl1Diff = $0000019B;
  bpVouApprovalLvl2Diff = $0000019C;
  bpVouApprovalLvl3Diff = $0000019D;
  bpVouApprovalLvl4Diff = $0000019E;
  bpItemNoteMapAssignedTo1 = $0000019F;
  bpItemNoteMapAssignedTo2 = $000001A0;
  bpItemNoteMapAssignedTo3 = $000001A1;
  bpItemNoteMapAssignedTo4 = $000001A2;
  bpItemNoteMapAssignedTo5 = $000001A3;
  bpItemNoteMapAssignedTo6 = $000001A4;
  bpItemNoteMapAssignedTo7 = $000001A5;
  bpItemNoteMapAssignedTo8 = $000001A6;
  bpItemNoteMapAssignedTo9 = $000001A7;
  bpItemNoteMapAssignedTo10 = $000001A8;
  bpAllowPIReactivateItems = $000001A9;
  bpCustReqFields = $000001AA;
  bpChooseTOType = $000001AB;
  bpUseEFTRes = $000001AC;
  bpFloorLimit = $000001AD;
  bpSpreadAsGlobalDiscount = $000001AE;
  bpDefaultDiscType = $000001AF;
  bpCreatePricedAdjForZeroOHQty = $000001B0;
  bpZOutMaximumCash = $000001B1;
  bpIntraCompanyTransferOption = $000001B2;
  bpInterCompanyTransferOption = $000001B3;
  bpNextZOutSeqNo = $000001B4;
  bpCustAddrLocationTypeRequires = $000001B5;
  bpDefaultAddressLocationType = $000001B6;
  bpDefaultCustomerStore = $000001B7;
  bpWSDefaultStoreCustomer = $000001B8;
  bpTwoStepApprovalForVouchers = $000001B9;
  bpCloseMultiSbsPeriods = $000001BA;
  bpSODefShippingAddrSelection = $000001BB;
  bpReceiptDefShippingAddrSelection = $000001BC;
  bpEnforceSingleRegOpenForWS = $000001BD;
  bpCentralsReturns = $000001BE;
  bpEFTDbtMaximumCashBack = $000001BF;
  bpZeroOutCustomer = $000001C0;
  bpExcludeItemswMaxDiscFrmGlobalDisc = $000001C1;
  bpEFTMagStripeEnterCount = $000001C2;
  bpNotChkRuleForLocalTransfer = $000001C3;
  bpNotChkRuleForInterCoTransfer = $000001C4;
  bpAlrtreciptCostgreaterthanprice = $000001C5;
  bpZOutMinimumCash = $000001C6;
  bpAutoRecSaleAfterFinalDeposit = $000001C7;
  bpEFTChkAllowCashBack = $000001C8;
  bpEFTChkMaximumCashBack = $000001C9;
  bpRegionSalesTarget = $000001CA;
  bpDistrictSalesTarget = $000001CB;
  bpDeptSalesTarget = $000001CC;
  bpTaxRebOk = $000001CD;
  bpTaxRebPer = $000001CE;
  bpTaxRebMin = $000001CF;
  bpLimitSlipItemsWithTOItems = $000001D0;
  bpLocCurrDenomListingOrder = $000001D1;
  bpSourceOfPackageTaxInfo = $000001D2;
  bpEnableNewItemAsWebItem = $000001D3;
  bpTaxRcptSORound = $000001D4;
  bpTaxRcptSORoundMethod = $000001D5;
  bpCopyQtyOnASNVoucher = $000001D6;
  bpViewOtherSbs = $000001D7;
  bpICTAllowImportRules = $000001D8;
  bpICTSingleRuleForStores = $000001D9;
  bpICTUniqueRuleForStores = $000001DA;
  bpCreditCardAllowCashBack = $000001DB;
  bpCreditCardMaximumCashBack = $000001DC;
  bpInclude1stTaxIn2nd = $000001DD;
  bpAllowNegativeQtyOnVouchers = $000001DE;
  bpDefaultPriceLevel = $000001DF;
  bpDefaultTaxAreaOnAdjustment = $000001E0;
  bpDefaultTaxArea2OnAdjustment = $000001E1;
  bpDefaultCustomerDistrict = $000001E2;
  bpDefaultCustomerRegion = $000001E3;
  bpAutoPrintOnRecSale = $000001E4;
  bpDefaultStoreForUI = $000001E5;
  bpWSDefaultStoreForUI = $000001E6;
  bpPIRecognizeZeroAsCountInMap = $000001E7;
  bpGiftCardEnableCentrals = $000001E8;
  bpGiftCardMngIDsBy = $000001E9;
  bpGiftCardPrmptForCash = $000001EA;
  bpGiftCardPrmptForCashValue = $000001EB;
  bpGiftCardRestrictChngTo = $000001EC;
  bpGiftCardRestrictChngToValue = $000001ED;
  bpGiftCardTotalNegBalPerm = $000001EE;
  bpGiftCardCentOffLimit = $000001EF;
  bpGiftCardGenCentID = $000001F0;
  bpGiftCardVerCentAgnstRange = $000001F1;
  bpGiftCertEnableCentrals = $000001F2;
  bpGiftCertMngIDsBy = $000001F3;
  bpGiftCertPrmptForCash = $000001F4;
  bpGiftCertPrmptForCashValue = $000001F5;
  bpGiftCertRestrictChngTo = $000001F6;
  bpGiftCertRestrictChngToValue = $000001F7;
  bpGiftCertCentOffLimit = $000001F8;
  bpGiftCertGenCentID = $000001F9;
  bpGiftCertVerCentAgnstRange = $000001FA;
  bpCentCrdEnableCentrals = $000001FB;
  bpCentCrdMngIDsBy = $000001FC;
  bpCentCrdPrmptForCash = $000001FD;
  bpCentCrdPrmptForCashValue = $000001FE;
  bpCentCrdRestrictChngTo = $000001FF;
  bpCentCrdRestrictChngToValue = $00000200;
  bpCentCrdTotalNegBalPerm = $00000201;
  bpCentCrdCentOffLimit = $00000202;
  bpEnbSubLocations = $00000203;
  bpDefSubLocQtyLimitTo = $00000204;
  bpDefSubLocQtyLimitToVal = $00000205;
  bpDefSubLocToManaged = $00000206;
  bpDefNewItemsToSubLoc = $00000207;
  bpReqReturnVouRefToPO = $00000208;
  bpCenCustCreditEnable = $00000209;
  bpCenCustCreditServer = $0000020A;
  bpCenCustCreditPort = $0000020B;
  bpCenCustCreditTimeout = $0000020C;
  bpCenCustCreditLoggingLvl = $0000020D;
  bpCenCustCreditLogBuffer = $0000020E;
  bpCenCustCreditPlugTimeout = $0000020F;
  bpCenGiftCardEnable = $00000210;
  bpCenGiftCardServer = $00000211;
  bpCenGiftCardPort = $00000212;
  bpCenGiftCardTimeout = $00000213;
  bpCenGiftCardLoggingLvl = $00000214;
  bpCenGiftCardLogBuffer = $00000215;
  bpCenGiftCardPlugTimeout = $00000216;
  bpCenGiftCertEnable = $00000217;
  bpCenGiftCertServer = $00000218;
  bpCenGiftCertPort = $00000219;
  bpCenGiftCertTimeout = $0000021A;
  bpCenGiftCertLoggingLvl = $0000021B;
  bpCenGiftCertLogBuffer = $0000021C;
  bpCenGiftCertPlugTimeout = $0000021D;
  bpCenCustLoyaltyEnable = $0000021E;
  bpCenCustLoyaltyServer = $0000021F;
  bpCenCustLoyaltyPort = $00000220;
  bpCenCustLoyaltyTimeout = $00000221;
  bpCenCustLoyaltyLoggingLvl = $00000222;
  bpCenCustLoyaltyLogBuffer = $00000223;
  bpCenCustLoyaltyPlugTimeout = $00000224;
  bpMultiTaxVAT = $00000225;
  bpCalcTax2FromTax1 = $00000226;
  bpSubLocationData = $00000227;
  bpCheckPrintEFTWhenNoEFT = $00000228;
  bpGiftCardPrintEFTWhenNoEFT = $00000229;
  bpNotAllowSubLocQtyToGoNegative = $0000022A;
  bpPmptForCorrSubLocs = $0000022B;
  bpSuggestCentralCredit = $0000022C;
  bpUserHomeStore = $0000022D;
  bpRequireRecordSaleSpecialSO = $0000022E;
  bpRequireRecordSaleLayawaySO = $0000022F;
  bpRequireRecordSaleWebSO = $00000230;
  bpUpdateAdditionalInfoInDeltaBuild = $00000231;
  bpCustLoyEnbCustomer = $00000232;
  bpCustLoyIncludeTax = $00000233;
  bpCustLoyCustOptInFlag = $00000234;
  bpCustLoydDefLoyalty = $00000235;
  bpCustLoyUseEnrollDate = $00000236;
  bpCustLoySuggUsingLoyPoints = $00000237;
  bpCustLoyOffPntUsage = $00000238;
  bpCustLoyChrgTaxOnLtyItems = $00000239;
  bpCustomerLoyaltyIsLicensed = $0000023A;
  bpCountrySpecificZipCode = $0000023B;
  bpDefaultPIUpdate = $0000023C;
  bpCommunicateWithV8Remote = $0000023D;
  bpItemLimitOnDocs = $0000023E;
  bpCustLoyHistoryMode = $0000023F;
  bpCenCustCreditUseRes = $00000240;
  bpCenGiftCardUseRes = $00000241;
  bpCenGiftCertUseRes = $00000242;
  bpCenCustLoyaltyUseRes = $00000243;
  bpViewOtherStoresItem = $00000244;
  bpPurgeArchPISheets = $00000245;
  bpEnableGlobalUPC = $00000246;
  bpEnableLocalUPC = $00000247;
  bpAllowduplicateLocalupc = $00000248;
  bpEnableLocalUPCSequence = $00000249;
  bpForceLocalUPC = $0000024A;
  bpLastLocalUPC = $0000024B;
  bpSOPromptPrintAllOrDueItems = $0000024C;
  bpDocTypeRequiredReasonCodes = $0000024D;
  bpNextWSInvSeqNo_NoUpdate = $0000024E;
  bpNextWSReturnInvSeqNo_NoUpdate = $0000024F;
  bpAllowEFTReceiptWhenEFTOff = $0000017A;
  bpCommentsInZOutClose = $00000250;
  bpAllSpecificPkgReceived = $00000251;
  bpRequireNoOfPkgReceived = $00000252;
  bpLastOvrUserEmplId = $00000253;
  bpNextWSCashDropSeqNo_NoUpdate = $00000254;
  bpNextWSDepositSeqNo_NoUpdate = $00000255;
  bpCentGCAllowCardToBeKeyed = $00000256;
  bpCentGCMaskInUI = $00000257;
  bpTrimAluInPILookup = $00000258;
  bpNextInvSeqNo_NoUpdate = $00000259;
  bpNextReturnInvSeqNo_NoUpdate = $0000025A;
  bpNextCashDropSeqNo_NoUpdate = $0000025B;
  bpNextDepositSeqNo_NoUpdate = $0000025C;
  bpReqCommInZOutClose = $0000025D;

// Constants for enum HWError
type
  HWError = TOleEnum;
const
  heSuccess = $00000000;
  heDeviceIsClosed = $00000001;
  heDeviceAlreadyClaimed = $00000002;
  heServiceNotFound = $00000003;
  heDeviceNotFound = $00000004;
  heDeviceIsDisabled = $00000005;
  heIllegalOperationOrParameter = $00000006;
  heHardwareNotFound = $00000007;
  heOffline = $00000008;
  heDoesNotExist = $00000009;
  heAlreadyExists = $0000000A;
  heNonspecificFailure = $0000000B;
  heTimeout = $0000000C;
  heBusy = $0000000D;
  heExtendedError = $0000000E;
  heException = $000003E8;

// Constants for enum LineDisplayTextPlacement
type
  LineDisplayTextPlacement = TOleEnum;
const
  disp_Left = $00000000;
  disp_Center = $00000001;
  disp_Right = $00000002;
  disp_Scroll = $00000003;

// Constants for enum ScannedImageFormat
type
  ScannedImageFormat = TOleEnum;
const
  ifNative = $00000000;
  ifTIFF = $00000001;
  ifBMP = $00000002;
  ifJPEG = $00000003;
  ifGIF = $00000004;

// Constants for enum PluginPriority
type
  PluginPriority = TOleEnum;
const
  ppNormal = $00000000;
  ppLow = $00000001;
  ppHigh = $00000002;

// Constants for enum SbsPreference
type
  SbsPreference = TOleEnum;
const
  spClerks = $00000000;
  spPass_Word1 = $00000001;
  spPass_Word2 = $00000002;
  spPass_Word3 = $00000003;
  spEncrypt = $00000004;
  spResale_No = $00000005;
  spFree_PO_Supp = $00000006;
  spMargin_Cost = $00000007;
  spLook_Ahead_Rows = $00000008;
  spItems = $00000009;
  spMatrix_Average = $0000000A;
  spDefault_Date = $0000000B;
  spNo_Companies = $0000000C;
  spForm = $0000000D;
  spNo_Slip_Security = $0000000E;
  spNo_Change_In_Vendor = $0000000F;
  spNo_Change_In_Dept = $00000010;
  spVoucher_Trans = $00000011;
  sp_PO_Inst1 = $00000012;
  sp_PO_Inst2 = $00000013;
  sp_PO_Inst3 = $00000014;
  sp_PO_Inst4 = $00000015;
  sp_PO_Inst5 = $00000016;
  spDont_Use_Last_Cost = $00000017;
  spRep_Form = $00000018;
  spACD = $00000019;
  spCards = $0000001A;
  spTransaction = $0000001B;
  spDiscount_Explanations = $0000001C;
  spQty_Pricing = $0000001D;
  spPrice_Desc = $0000001E;
  spQty_Decimals = $0000001F;
  spRep_Decimals = $00000020;
  spAutoGenSlipSetup = $00000021;
  spUse_Price_Based_Stores = $00000022;
  spB_Secure_Invoice = $00000023;
  spB_Secure_Voucher = $00000024;
  spBb_Secure_Slip = $00000025;
  spMatrix_Definition = $00000026;
  spUpdate_Inven_Set = $00000027;
  spPickListOrder = $00000028;
  spKeep_Original = $00000029;
  spAutoUpdateVoucher = $0000002A;
  spCurrency_Sym = $0000002B;
  spCurrency_Before_Amount = $0000002C;
  spRoundTbl = $0000002D;
  spUsrFlgMnus = $0000002E;
  spPrecPricTbl = $0000002F;
  spTaxCdTbl = $00000030;
  spUseVAT = $00000031;
  spVatOpts = $00000032;
  spTrkIntrn = $00000033;
  spZipCodePos = $00000034;
  spBasCurNam = $00000035;
  spSndOutSlps = $00000036;
  spUpdate_Order_Cost = $00000037;
  spRequireRecordSale = $00000038;
  spOrdrCaseOnly = $00000039;
  spPromoPrcFlg = $0000003A;
  spUsrCdStrTbl = $0000003B;
  spTaxDec = $0000003C;
  spTaxAreaNames = $0000003D;
  spStore_Code = $0000003E;
  spVatPrcDec = $0000003F;
  spAllwInpInvcTot = $00000040;
  spCoefTyp = $00000041;
  spNewCustPolling = $00000042;
  spCustUDF = $00000043;
  spVendUDF = $00000044;
  spDefaultStoreCompany = $00000045;
  spTrkAdjMemos = $00000046;
  spReqCommAdjMemo = $00000047;
  spCenturyDateFormat = $00000048;
  spB_Secure_AdjMemo = $00000049;
  spAdjMemoReasTbl = $0000004A;
  spASNPurgeDays = $0000004B;
  spSavStorQtyInAdj = $0000004C;
  spIncldTaxMrgP = $0000004D;
  spIncldTaxMupP = $0000004E;
  spIncldTaxCoef = $0000004F;
  spBUpperCaseReports = $00000050;
  spInvnCostMethod = $00000051;
  spAllwEdtCustId = $00000052;
  spDpsNoteInInvcSO = $00000053;
  spNoteFldsOn = $00000054;
  spReqPOSFlagFor = $00000055;
  spAllwSprdGlobDisc = $00000056;
  spUseCurTrngultn = $00000057;
  spSegmentedDeptName = $00000058;
  spAltGroupLbls = $00000059;
  spBUseStoreGroupsInMultiSotrePO = $0000005A;
  spAllowVoucherPastPOCancelDate = $0000005B;
  spVoucherFileDate = $0000005C;
  spAllwDupCustIDs = $0000005D;
  spUseTrdDsc4OrdrCst = $0000005E;
  spSetpDlrDecCst = $0000005F;
  spSetpDlrDecRepCst = $00000060;
  spAllwIntrCompXFer = $00000061;
  spFilRevDocByFrmrDt = $00000062;
  spPollProcDelMrkdAsn = $00000063;
  spFldLen = $00000064;
  spSubStores = $00000065;
  spDefault_Store = $00000066;
  spDefault_Station = $00000067;
  spReset_Invoice = $00000068;
  spPOS = $00000069;
  spUse_Shipping_Percent = $0000006A;
  spForeign_Currency = $0000006B;
  spTax_On_Shipping_Percent = $0000006C;
  spBDefault_Card = $0000006D;
  spCheck_Stock_Level = $0000006E;
  spRemote = $0000006F;
  spIBM_4684_Version = $00000070;
  spMultiUser = $00000071;
  spClient_Polling = $00000072;
  spDefault_Price = $00000073;
  spWhat_Price = $00000074;
  spShip_Days = $00000075;
  spCancel_Days = $00000076;
  spRemote_PO = $00000077;
  spRemote_SO = $00000078;
  spUsesEDI = $00000079;
  spAccum_Discount = $0000007A;
  spBring_Orig_Price = $0000007B;
  spShipping_Percent = $0000007C;
  spComnTbl = $0000007D;
  spScDisp = $0000007E;
  spCheckAvailable = $0000007F;
  spShipMethods = $00000080;
  spPrintBackorderMessage = $00000081;
  spBackorderMessage = $00000082;
  spShipFromStore = $00000083;
  spShipFromStation = $00000084;
  spDefaultShipMethod = $00000085;
  spInvnPrcMeth = $00000086;
  spInvnPrcAffMan = $00000087;
  spMkDnPrcMeth = $00000088;
  spMkDnPrcAffMan = $00000089;
  spRelayStore = $0000008A;
  spRelayStation = $0000008B;
  spNoAllwDelInvcItem = $0000008C;
  spReqCustOnRet = $0000008D;
  spHiSecSet = $0000008E;
  spSOPurgeDays = $0000008F;
  spSuggestSC = $00000090;
  spReqSlipComm = $00000091;
  spAllowPOSTaxCodeEdit = $00000092;
  spChkAvSC = $00000093;
  spFrgnCurRnd = $00000094;
  spAllwVouPrcUpd = $00000095;
  spCheckAvailOptions = $00000096;
  spNotAllwNegInvcQty = $00000097;
  spTaxRebOk = $00000098;
  spTaxRebPer = $00000099;
  spTaxRebMin = $0000009A;
  spDefaultSOInstructions = $0000009B;
  spDefaultSOComments = $0000009C;
  spPOPurgeDays = $0000009D;
  spIgnrMnMxLcksInInvn = $0000009E;
  spUseInvcTrms = $0000009F;
  spZOutRequireManualCount = $000000A0;
  spZOutPurgeDays = $000000A1;
  spInvcAllowUpdateOnly = $000000A2;
  spDefaultProcessAt = $000000A3;
  spLimitItemsAgainstSO = $000000A4;
  spCODTenderName = $000000A5;
  spRndBasCurLvl = $000000A6;
  spRndBasCurHow = $000000A7;
  spShareCustWith = $000000A8;
  spDefaultCommCod = $000000A9;
  spUseZipCdLkUp = $000000AA;
  spZipCdLkUpMsk = $000000AB;
  spAutoPollEndPOSInvn = $000000AC;
  spMinSODeposit4CustomerOrder = $000000AD;
  spMinSODeposit4SpecialOrder = $000000AE;
  spMinSODeposit4Layaway = $000000AF;
  spReqVchrComm = $000000B0;
  spAllwDupALU = $000000B1;
  spItmStylSidSrc = $000000B2;
  spGenStylSidWthChrs = $000000B3;
  spCpyALUFrm = $000000B4;
  spUseWsSeqInvc = $000000B5;
  spUseWsSeqVchr = $000000B6;
  spUseGlbSeqRetInvc = $000000B7;
  spUseGlbSeqRetVchr = $000000B8;
  spCmntTlbVchr = $000000B9;
  spCmntTlbSlip = $000000BA;
  spReqInvoOnAutoMemo = $000000BB;
  spAutoPollNewCustomer = $000000BC;
  spUseSeqStoreCrdId = $000000BD;
  spHideCustSCFld = $000000BE;
  spUseSeqGiftCertChg = $000000BF;
  spSidSrcGrd = $000000C0;
  spChkCredCardRefnd = $000000C1;
  spChrsIgnrd4ItemSidGen = $000000C2;
  spChkPO4VchrItm = $000000C3;
  spChkTO4OutSlpItm = $000000C4;
  spChkOutSlp4InSlpItm = $000000C5;
  spChkSO4InvcItm = $000000C6;
  spCurrencyRate = $000000C7;
  spCustVendTitles = $000000C8;
  spDiscountSched = $000000C9;
  spCommissionSched = $000000CA;
  spTimeShift = $000000CB;
  spEmployee = $000000CC;
  spScales = $000000CD;
  spDefForeign_Currency = $000000CE;
  spAdjMemoChgTbl = $000000CF;
  spUseThousandSeparatorForQuantity = $000000D0;
  spUseThousandSeparatorForCurrency = $000000D1;
  spUseCurrencySymbol = $000000D2;
  spRcptTaxableThreshold1 = $000000D3;
  spRcptTaxableThreshold2 = $000000D4;
  spEightTaxCodeCompatibility = $000000D5;
  spInclude1stTaxIn2nd = $000000D6;
  spTaxAreaSpecificTaxCodes = $000000D7;
  spSalesTaxMulti = $000000D8;
  spTaxRcptSORound = $000000D9;
  spTaxRcptSORoundMethod = $000000DA;
  spWarningWhenNewCostGreaterThanOld = $000000DB;
  spNewCostWarningThresholdPerc = $000000DC;
  spAllowNegativeQtyOnVouchers = $000000DD;
  spCaseQtyRoundMethod = $000000DE;
  spItemLookupMode = $000000DF;
  spPreventDuplicateCustomerNames = $000000E0;
  spPromptForSNFullCtlSO = $000000E1;
  spPromptForSNPartCtlSO = $000000E2;
  spPromptForSNPartCtlRcpt = $000000E3;
  spPromptForSNPartCtlVchr = $000000E4;
  spPromptForSNPartCtlSlip = $000000E5;
  spPromptForSNPartCtlMemo = $000000E6;
  spPromptForSNPartCtlInvn = $000000E7;
  spPromptForSNFullCtlASN = $000000E8;
  spDefaultSNTrackingLevel = $000000E9;
  spDefaultInvnStore = $000000EA;
  spPrintPckgItem = $000000EB;
  spPrintPckgItemPrice = $000000EC;
  spPrintKitItem = $000000ED;
  spPrintKitItemPrices = $000000EE;
  spDocSequences = $000000EF;
  spPOPrefix = $000000F0;
  spImportInventory = $000000F1;
  spImportInvenImages = $000000F2;
  spImportVendors = $000000F3;
  spImportVendorImages = $000000F4;
  spImportDCS = $000000F5;
  spImportDCSImages = $000000F6;
  spImportMinMax = $000000F7;
  spImportPrices = $000000F8;
  spImportAllocPatterns = $000000F9;
  spImportCustomers = $000000FA;
  spImportCustImages = $000000FB;
  spImportZipCodes = $000000FC;
  spImportHistoryDoc = $000000FD;
  spImportASN = $000000FE;
  spImportSO = $000000FF;
  spImportTO = $00000100;
  spImportPO = $00000101;
  spImportMO = $00000102;
  spImportArchivedOrders = $00000103;
  spUpdGlobalCustomers = $00000104;
  spUpdateGlobalInventory = $00000105;
  spSyncVendors = $00000106;
  spSyncVendorImages = $00000107;
  spSyncDCS = $00000108;
  spSyncDCSImages = $00000109;
  spSyncInventory = $0000010A;
  spSyncInvenImages = $0000010B;
  spSyncInvenQtyCost = $0000010C;
  spSyncAudited = $0000010D;
  spSyncMinMax = $0000010E;
  spSyncPrices = $0000010F;
  spSyncAllocPatterns = $00000110;
  spCustomers = $00000111;
  spSyncCustImages = $00000112;
  spSyncVouchers = $00000113;
  spSyncASN = $00000114;
  spSyncSO = $00000115;
  spSyncTO = $00000116;
  spSyncPO = $00000117;
  spSyncAdjQty = $00000118;
  spSyncAdjPrice = $00000119;
  spSyncAdjCost = $0000011A;
  spSyncSlips = $0000011B;
  spDeltaDocDateMode = $0000011C;
  spUseDBJobs = $0000011D;
  spEncryptPrice = $0000011E;
  spEncryptCost = $0000011F;
  spEncryptLstRcvdDate = $00000120;
  spSortCaseSensitive = $00000121;
  spUseLocale = $00000122;
  spInsertBlankLine = $00000123;
  spRepNames = $00000124;
  spRepUseDecQty = $00000125;
  spRepPriceDecNum = $00000126;
  spRepCostDecNum = $00000127;
  spRFLDept = $00000128;
  spRFLClass = $00000129;
  spRFLSubclass = $0000012A;
  spRFLDeptName = $0000012B;
  spRFLVendorCode = $0000012C;
  spRFLVendName = $0000012D;
  spRFLDesc1 = $0000012E;
  spRFLDesc2 = $0000012F;
  spRFLDesc3 = $00000130;
  spRFLDesc4 = $00000131;
  spRFLAttr = $00000132;
  spRFLSize = $00000133;
  spRFLUPC = $00000134;
  spRFLALU = $00000135;
  spRFLAux1 = $00000136;
  spRFLAux2 = $00000137;
  spRFLAux3 = $00000138;
  spRFLAux4 = $00000139;
  spRFLAux5 = $0000013A;
  spRFLAux6 = $0000013B;
  spRFLAux7 = $0000013C;
  spRFLAux8 = $0000013D;
  spRFLQty = $0000013E;
  spRFLPriceCost = $0000013F;
  spRFLExtPriceCost = $00000140;
  spRFLDiscount = $00000141;
  spRepHdrFontName = $00000142;
  spRepHdrFontSize = $00000143;
  spRepHdrFontStyle = $00000144;
  spRepHdrFontColor = $00000145;
  spRepHdrFontCharSet = $00000146;
  spPageHdrFontName = $00000147;
  spPageHdrFontSize = $00000148;
  spPageHdrFontStyle = $00000149;
  spPageHdrFontColor = $0000014A;
  spPageHdrFontCharSet = $0000014B;
  spColHdnFontName = $0000014C;
  spColHdnFontSize = $0000014D;
  spColHdnFontStyle = $0000014E;
  spColHdnFontColor = $0000014F;
  spColHdnFontCharSet = $00000150;
  spDetailsFontName = $00000151;
  spDetailsFontSize = $00000152;
  spDetailsFontStyle = $00000153;
  spDetailsFontColor = $00000154;
  spDetailsFontCharSet = $00000155;
  spTotalsFontName = $00000156;
  spTotalsFontSize = $00000157;
  spTotalsFontStyle = $00000158;
  spTotalsFontColor = $00000159;
  spTotalsFontCharSet = $0000015A;
  spFitToPreview = $0000015B;
  spWSVoucherSeq = $0000015C;
  spWSInvoiceSeq = $0000015D;
  spBackupDirectory = $0000015E;
  spUseVendorInvoice = $0000015F;
  spTwoStepApproval = $00000160;
  spCostVarThreshold = $00000161;
  spAutoRetrieveLedger = $00000162;
  spAuditCalendar = $00000163;
  spRestrictEOP = $00000164;
  spLedgerShowItemNo = $00000165;
  spLedgerShowUPC = $00000166;
  spLedgerShowALU = $00000167;
  spAnalyticThousandSeparatorQty = $00000168;
  spAnalyticThousandSeparatorCurrency = $00000169;
  spAnalyticUseCurrencySymbol = $0000016A;
  spAnalyticUseQtyDecimals = $0000016B;
  spAnalyticPriceDecimals = $0000016C;
  spAnalyticCostDecimals = $0000016D;
  spAnalyticPercentDecimals = $0000016E;
  spAnalyticRationDecimals = $0000016F;
  spAnalyticShowWeekAs = $00000170;
  spPrebuiltRepDays = $00000171;
  spAnalyticGlobDiscSpread = $00000172;
  spAnalyticDOSDays = $00000173;
  spAnalyticIgnoreOutOfStock = $00000174;
  spAnalyticMaxDaysToRefresh = $00000175;
  spAnalyticDaysToKeepLogs = $00000176;
  spLedgerItemInfo = $00000177;
  spOverwriteCustTitle = $00000178;
  spOverwriteVendTitle = $00000179;
  spTaxCodeSubCalc = $0000017A;
  spDefaultASNStore = $0000017B;
  spAvailCheckVou = $0000017C;
  spUseSepVouSeq = $0000017D;
  spReqVouRefToPO = $0000017E;
  spPromptForSNPartCtlASN = $0000017F;
  spPrintTagBrokeKit = $00000180;
  spAllowCopyPriceCostSbsItem = $00000181;
  spAlertPriceDiff = $00000182;
  spAfterUpdateVou = $00000183;
  spPreventNegCost = $00000184;
  spAutoUPCGen = $00000185;
  spAutoALUGen = $00000186;
  spAutoPONoGen = $00000187;
  spPOMask = $00000188;
  spEnableUPCGen = $00000189;
  spMerchSeqRuleType = $0000018A;
  spEnableALUGen = $0000018B;
  spUseSepInvSeq = $0000018C;
  spPIType = $0000018D;
  spPIInitBy = $0000018E;
  spPIThresholdCost = $0000018F;
  spPIUseFitlers = $00000190;
  spPIStripZeroes = $00000191;
  spPIAutoUpdateVariance = $00000192;
  spuseSmartscan = $00000193;
  spSmartscanGroup1 = $00000194;
  spSmartscanGroup2 = $00000195;
  spSmartscanGroup3 = $00000196;
  spPOSPromptSpreadTender = $00000197;
  spPOSPromptSpreadSO = $00000198;
  spPOSFlagDefMnu1 = $00000199;
  spPOSFlagDefMnu2 = $0000019A;
  spPOSFlagDefMnu3 = $0000019B;
  spPrintPkgOnRcptSO = $0000019C;
  spPrintPkgPrcOnRcptSO = $0000019D;
  spPrintKitOnRcptSO = $0000019E;
  spPrintKitPrcOnRcptSO = $0000019F;
  spRndTenderTypes = $000001A0;
  spAfterUpdateInvcGoTo = $000001A1;
  spChkCredLim = $000001A2;
  spGenerateNonInventoryItemSIDs = $000001A3;
  spDisplayChangeWindowFor = $000001A4;
  spAllowReturnRcptTendeer = $000001A5;
  spPOSDefComment1 = $000001A6;
  spPOSDefComment2 = $000001A7;
  spRequireMinPercCustOrder = $000001A8;
  spRequireMinPercSpecOrder = $000001A9;
  spRequireMinPercLayawayOrder = $000001AA;
  spLostSaleSO = $000001AB;
  spUDFAppendSelected = $000001AC;
  spRgnIvnDefNewIvnEnabledAsRgnItems = $000001AD;
  spRgnIvnItems = $000001AE;
  spUDFAppendBlank = $000001AF;
  spAllowNegOnPO = $000001B0;
  spZOutRegEntryOpenAndCloseAmounts = $000001B1;
  spZOutAllowZeroOpenAmount = $000001B2;
  spPOSCreateSecRepOnRegOpenAndClose = $000001B3;
  spPOSAutoCreateNextOpen = $000001B4;
  spZOutRptCombineSlaesTaxVat = $000001B5;
  spZOutRptSortBy = $000001B6;
  spPOSIssueGiftCarAmtExceed = $000001B7;
  spPOSIssueGiftCerttAmtExceed = $000001B8;
  spPOSIssueStoreCreditAmtExceed = $000001B9;
  spPOSExceededAmtGiftCard = $000001BA;
  spPOSExceededAmtGiftCert = $000001BB;
  spPOSExceededAmtStoreCredit = $000001BC;
  spPOSPPSCExpireAfterVal = $000001BD;
  spPOSPPSCExpireAfterEnabled = $000001BE;
  spPOSPPSCExpireAfterOpt = $000001BF;
  spPOSPPSCOfflineFloorLimit = $000001C0;
  spPOSPPSCReuseStoreCredit = $000001C1;
  spPOSPPSCReuseMaximumExceedAmt = $000001C2;
  spPOSPPSCAlwaysIssueChange = $000001C3;
  spPOSPPSCIssueChangeExceed = $000001C4;
  spPOSPPSCChangeAmountExceed = $000001C5;
  spPOSPPSCAutoGenerateIDNum = $000001C6;
  spPOSPPSCGiftCrdExpireAfterVal = $000001C7;
  spPOSPPSCGiftCrdExpireAfterEnabled = $000001C8;
  spPOSPPSCGiftCrdExpireAfterOpt = $000001C9;
  spPOSPPSCGiftCrdOfflineFloorLimit = $000001CA;
  spPOSPPSCGiftCrdReuse = $000001CB;
  spPOSPPSCGiftCrdReuseMaximiumExceedAmt = $000001CC;
  spPOSPPSCGiftCrdAlwaysIssueChange = $000001CD;
  spPOSPPSCGiftCrdIssueChangeExceed = $000001CE;
  spPOSPPSCGiftCrdChangeAmountExceed = $000001CF;
  spPOSPPSCGiftCrdAutoGenerateIDNum = $000001D0;
  spPOSPPSCGiftCrdUseSeqCrdId = $000001D1;
  spPOSPPSCGiftCrdSuggestAsTender = $000001D2;
  spPOSPPSCGiftCrdAllowAmtToExceedAvail = $000001D3;
  spPOSPPSCGiftCertExpireAfterVal = $000001D4;
  spPOSPPSCGiftCertExpireAfterEnabled = $000001D5;
  spPOSPPSCGiftCertExpireAfterOpt = $000001D6;
  spPOSPPSCGiftCertOfflineFloorLimit = $000001D7;
  spPOSPPSCGiftCertReuse = $000001D8;
  spPOSPPSCGiftCertReuseMaximumExceedAmt = $000001D9;
  spPOSPPSCGiftCertAlwaysIssueChange = $000001DA;
  spPOSPPSCGiftCertIssueChangeExceed = $000001DB;
  spPOSPPSCGiftCertChangeAmountExceed = $000001DC;
  spPOSPPSCGiftCertAutoGenerateIDNum = $000001DD;
  spPOSPPSCGiftCertSuggestAsTender = $000001DE;
  spPOSPPSCGiftCertAllowAmtToExceedAvail = $000001DF;
  spEFTUseGlobalCreditCardGateway = $000001E0;
  spEFTCreditCardGateway = $000001E1;
  spEFTDebitCardGateway = $000001E2;
  spEFTCheckVerificationGateway = $000001E3;
  spEFTGiftCardGateway = $000001E4;
  spEFTCreditCardWorkstatonID = $000001E5;
  spEFTDebitCardWorkstationID = $000001E6;
  spEFTCheckVerificationWorkstationID = $000001E7;
  spEFTGiftCardWorkstationID = $000001E8;
  spEFTPOSResUseResiliency = $000001E9;
  spEFTPOSResServerToCheck = $000001EA;
  spEFTPOSResFloorLimit = $000001EB;
  spEFTPOSResCheckEvery = $000001EC;
  spEFTPOSResCheckEveryOpt = $000001ED;
  spEFTCCCVV2VC2IDVerification = $000001EE;
  spEFTCCAVSVerification = $000001EF;
  spEFTCCRequireCardVerification = $000001F0;
  spEFTCCVerificationMethod = $000001F1;
  spEFTCCAllowCardToBeKeyed = $000001F2;
  spEFTCCCloseCCDlgOnApproval = $000001F3;
  spEFTCCAutoUpdatePrintOnApproval = $000001F4;
  spEFTCCAutoAuthAfterSwipe = $000001F5;
  spEFTCCallowClerkToForceDupTrans = $000001F6;
  spEFTCCPrintOnAuth = $000001F7;
  spEFTCCPrintOnPrintUpdate = $000001F8;
  spEFTDbtAllowCashBack = $000001F9;
  spEFTDbtMaximumCashBack = $000001FA;
  spEFTChkAllowCashBack = $000001FB;
  spEFTChkMaximumCashBack = $000001FC;
  spEFTChkIDVerification = $000001FD;
  spZOutRptScriptLanguage = $000001FE;
  spZOutRptUseScript = $000001FF;
  spZOutRptScriptFile = $00000200;
  spZOutRequireRegisterLevel = $00000201;
  spUseSepPOSeq = $00000202;
  spAllowPoSpreadFees = $00000203;
  spDefaultAsnLNTrackingLevel = $0000020B;
  spDefaultVouLNTrackingLevel = $0000020C;
  spDefaultSlpLNTrackingLevel = $0000020D;
  spDefaultRcpLNTrackingLevel = $0000020E;
  spDefaultSlsLNTrackingLevel = $0000020F;
  spDefaultAdjLNTrackingLevel = $00000210;
  spDeactivateLNOnDepleted = $00000211;
  spAlertUserOnLnExpiryDate = $00000213;
  spBlockSaleOnLnExpiryDate = $00000214;
  spPICountsUpdate = $00000218;
  spUseStyleAuxUDFvalues = $00000231;
  spCalculateChkDigit = $0000026F;
  spDisplayChkDigit = $00000270;
  spCentralsActive = $00000271;
  spCentralsServer = $00000272;
  spCentralsPort = $00000273;
  spCentralsCustomerLookupMode = $00000274;
  spCentralsTimeout = $00000275;
  spCentralsMaxRecords = $00000276;
  spCopyQryOnASNVoucher = $00000277;
  spSeasonalPricing = $00000278;
  spAllowLevel2CreditCardProcessing = $00000279;
  spPromptZeroPrice = $0000027A;
  spQuickBooksCompanyFilePath = $0000027B;
  spQuickBooksCompany = $0000027C;
  spALSubsidiaryNumber = $0000027D;
  spUseStockAudit = $0000027E;
  spUseSalesTransInformation = $0000027F;
  spSalesMethod = $00000280;
  spSalesRetailProAddress1 = $00000281;
  spSalesRetailProAddress2 = $00000282;
  spSalesRetailProAddress3 = $00000283;
  spSplitCustomerCityState = $00000284;
  spCustomerAndContactNames = $00000285;
  spOrderToSendCustNameToQBooks = $00000286;
  spIncInformationInRcptComment = $00000287;
  spUseExternalDefaultTerms = $00000288;
  spInvoiceDueDate = $00000289;
  spAutoExportCustomers = $0000028A;
  spCreditLimit = $0000028B;
  spUpdateCustomerBalances = $0000028C;
  spAgingCodePastDueDaysField = $0000028D;
  spDiscountedTransactions = $0000028E;
  spUseReceivingTransInfo = $0000028F;
  spReceivingMethod = $00000290;
  spReceivingRetailProAddress1 = $00000291;
  spReceivingRetailProAddress2 = $00000292;
  spReceivingRetailProAddress3 = $00000293;
  spVendorAndContactNames = $00000294;
  spOrderToSendVendNameToQBooks = $00000295;
  spIncludeInfoInVoucherComment = $00000296;
  spAutoUpdateVendors = $00000297;
  spSendRetailProtermsToQBooks = $00000298;
  spAdvanceEndOfMonthToNextMonth = $00000299;
  spPurchaseClearing = $0000029A;
  spUseAdjTransInfo = $0000029B;
  spAdjTransferMethod = $0000029C;
  spGeneralLedgerAct = $0000029D;
  spMainAccountLength = $0000029E;
  spUsingAccountOnCOA = $0000029F;
  spMapStoreToQBClass = $000002A0;
  spLength = $000002A1;
  spSubActOneToFourBasedOn = $000002A2;
  spMerchSales = $000002A3;
  spMerchDisc = $000002A4;
  spInventory = $000002A5;
  spCogs1 = $000002A6;
  spPrimaryAccountDept = $000002A7;
  spChooseStoreMapSales = $000002A8;
  spPrimaryAccountVend = $000002A9;
  spChooseStoreMapReceiving = $000002AA;
  spPrimaryAccountDisc = $000002AB;
  spChooseStoreAdj = $000002AC;
  spPrimaryAccountInvnUDF1 = $000002AD;
  spChooseStoreGenLedger = $000002AE;
  spPrimaryAccountInvnUDF2 = $000002AF;
  spNotConsolidateItems = $000002B0;
  spIncludeInactiveDCSInPlanning = $000002B1;
  spIncludeInactiveVendorInPlanning = $000002B2;
  spIncludeInactiveItemsInPlanning = $000002B3;
  spECommercePriceLevel = $000002B4;
  spECommerceSalePriceLevel = $000002B5;
  spCustomFileExtension = $000002B6;
  spFillFormulaWebProductName = $000002B7;
  spFillFormulaWebShortDesc = $000002B8;
  spFillFormulaWebLongDesc = $000002B9;
  spOverwriteExistingWPN = $000002BA;
  spOverwriteExistingWSD = $000002BB;
  spOverwriteExistingWLD = $000002BC;
  spUseFilterForStart = $000002BD;
  spAllowFreeFormAttr = $000002BE;
  spAllowFreeFormSize = $000002BF;
  spProductAvailability = $000002C0;
  spAvailabilityThreshold = $000002C1;
  spUseSubAccount1 = $000002C2;
  spLength2 = $000002C3;
  spUseSubAccount2 = $000002C4;
  spSubAct2BasedOn = $000002C5;
  spMerchSales2 = $000002C6;
  spMerchDisc2 = $000002C7;
  spInventory2 = $000002C8;
  spCogs2 = $000002C9;
  spLength3 = $000002CA;
  spUseSubAccount3 = $000002CB;
  spSubAct3BasedOn = $000002CC;
  spMerchSales3 = $000002CD;
  spMerchDisc3 = $000002CE;
  spInventory3 = $000002CF;
  spCogs3 = $000002D0;
  spLength4 = $000002D1;
  spUseSubAccount4 = $000002D2;
  spSubAct4BasedOn = $000002D3;
  spMerchSales4 = $000002D4;
  spMerchDisc4 = $000002D5;
  spInventory4 = $000002D6;
  spCogs4 = $000002D7;
  spXZDrawerDefaultLeaveAmount = $000002D8;
  spSplitVendorCityState = $000002D9;
  spPrimaryAccountInvnUDF3 = $000002DA;
  spPrimaryAccountInvnUDF4 = $000002DB;
  spCustomer3 = $000002DC;
  spCustomer4 = $000002DD;
  spCustomer5 = $000002DE;
  spCustomer6 = $000002DF;
  spCustomer7 = $000002E0;
  spCustomer8 = $000002E1;
  spTaxAreas = $000002E2;
  spAfterUpdateMemoGoTo = $000002E3;
  spAfterUpdateSlipGoTo = $000002E4;
  spHighSecuritySalesOrders = $000002E5;
  spConnectQB = $000002E6;
  spChoosePOType = $000002E7;
  spAskCentralProcessing = $000002E8;
  spCustReqFields = $000002E9;
  spAllowEFTReceiptWhenEFTOff = $000002EA;
  spZOutCountOpenCurrency = $000002EB;
  spAvailabilityQuantitySource = $000002EC;
  spShowInactiveStores = $000002ED;
  spXZOutRegisterDef = $000002EE;
  spWSSpecificSettingsInXZOut = $000002EF;
  spStoreCCNumbers = $000002F0;
  spPlanningLinkIncludeNonInv = $000002F1;
  spShowInactiveTaxAreas = $000002F2;
  spPlanningLinkProductMasterSbs = $000002F3;
  spUsePendingPO = $000002F4;
  spMultiLvlApprovalReqd = $000002F5;
  spPOApprovalLvl1 = $000002F6;
  spPOApprovalLvl2 = $000002F7;
  spPOApprovalLvl3 = $000002F8;
  spPOApprovalLvl4 = $000002F9;
  spPOApprovalLvl1AmtFrom = $000002FA;
  spPOApprovalLvl2AmtFrom = $000002FB;
  spPOApprovalLvl3AmtFrom = $000002FC;
  spPOApprovalLvl4AmtFrom = $000002FD;
  spPOApprovalLvl1AmtTo = $000002FE;
  spPOApprovalLvl2AmtTo = $000002FF;
  spPOApprovalLvl3AmtTo = $00000300;
  spPOApprovalLvl4AmtTo = $00000301;
  spUsePendingVouchers = $00000302;
  spMultiLvlVouApprovalReqd = $00000303;
  spPendingVouAllowOverages = $00000304;
  spVouApprovalLvl1 = $00000305;
  spVouApprovalLvl2 = $00000306;
  spVouApprovalLvl3 = $00000307;
  spVouApprovalLvl4 = $00000308;
  spVouApprovalLvl1AmtFrom = $00000309;
  spVouApprovalLvl2AmtFrom = $0000030A;
  spVouApprovalLvl3AmtFrom = $0000030B;
  spVouApprovalLvl4AmtFrom = $0000030C;
  spVouApprovalLvl1AmtTo = $0000030D;
  spVouApprovalLvl2AmtTo = $0000030E;
  spVouApprovalLvl3AmtTo = $0000030F;
  spVouApprovalLvl4AmtTo = $00000310;
  spVouApprovalLvl1Diff = $00000311;
  spVouApprovalLvl2Diff = $00000312;
  spVouApprovalLvl3Diff = $00000313;
  spVouApprovalLvl4Diff = $00000314;
  spAllowPIReactivateItems = $00000315;
  spChooseTOType = $00000316;
  spSpreadAsGlobalDiscount = $00000317;
  spDefaultDiscType = $00000318;
  spCreatePriceAdjForZeroOHQty = $00000319;
  spZOutMaximumCash = $0000031A;
  spIntraCompanyTransferOption = $0000031B;
  spInterCompanyTransferOption = $0000031C;
  spUseZOutSeq = $0000031D;
  spNextZOutSeqNo = $0000031E;
  spCustAddrLocationTypeRequires = $0000031F;
  spDefaultAddressLocationType = $00000320;
  spDefaultCustomerStore = $00000321;
  spTaxMethod = $00000322;
  spTwoStepApprovalForVouchers = $00000323;
  spCloseMultiSbsPeriods = $00000324;
  spSODefShippingAddrSelection = $00000325;
  spReceiptDefShippingAddrSelection = $00000326;
  spCentralsReturns = $00000327;
  spZeroOutCustomer = $00000328;
  spExcludeItemswMaxDiscFrmGlobalDisc = $00000329;
  spNotChkRuleForLocalTransfer = $0000032A;
  spNotChkRuleForInterCoTransfer = $0000032B;
  spAlrtreciptCostgreaterthanprice = $0000032C;
  spZOutMinimumCash = $0000032D;
  spAutoRecSaleAfterFinalDeposit = $0000032E;
  spRegionSalesTarget = $0000032F;
  spDistrictSalesTarget = $00000330;
  spDeptSalesTarget = $00000331;
  spLimitSlipItemsWithTOItems = $00000332;
  spCurrDenomListingOrder = $00000333;
  spSourceOfPackageTaxInfo = $00000334;
  spEnableNewItemAsWebItem = $00000335;
  spAppendInstIDToCustID = $00000336;
  spICTAllowImportRules = $00000337;
  spICTSingleRuleForStores = $00000338;
  spICTUniqueRuleForStores = $00000339;
  spICTLastUpdatedDate = $0000033A;
  spCreditCardAllowCashBack = $0000033B;
  spCreditCardMaximumCashBack = $0000033C;
  spICTShowActiveOnly = $0000033D;
  spDefaultTaxAreaOnAdjustment = $0000033E;
  spDefaultTaxArea2OnAdjustment = $0000033F;
  spDefaultCustomerDistrict = $00000340;
  spDefaultCustomerRegion = $00000341;
  spAutoPrintOnRecSale = $00000342;
  spDefaultInvnStoreForUI = $00000343;
  spRequireInvnAdjustReason = $00000204;
  spDefaultInvnAdjustReason = $00000205;
  spSODefaultComment1 = $00000206;
  spSODefaultComment2 = $00000207;
  spSODefaultInstruction1 = $00000208;
  spSODefaultInstruction2 = $00000209;
  spUseSepSOSeq = $0000020A;
  spPrintZeroQtyItems = $00000212;
  spAuditMode = $00000215;
  spAuditSubclass = $00000216;
  spFrwdQtyPricing = $00000217;
  spXZRequireBlindClose = $00000219;
  spXZNumberofAttempts = $0000021A;
  spXZReconcileVarianceAmount = $0000021B;
  spUseWSReceiptSeqs = $0000021C;
  spUseWSSOSeqs = $0000021D;
  spUseWSVoucherSeqs = $0000021E;
  spUseWSSlipSeqs = $0000021F;
  spUseWSAdjMemoSeqs = $00000220;
  spPOSNoFlag = $00000221;
  spPOSLastFlag = $00000222;
  spPlanningLinkSBS = $00000223;
  spPlanningLinkDesc1Length = $00000224;
  spPlanningLinkDesc2Length = $00000225;
  spPlanningLinkCalendarLevel = $00000226;
  spPlanningLinkTimeLevel = $00000227;
  spPlanningLinkFilterLevel = $00000228;
  spPlanningLinkDefaultFilter = $00000229;
  spPlanningLinkUpdateDelta = $0000022A;
  spPlanningLinkLocationLevel = $0000022B;
  spPlanningLinkProductLevel = $0000022C;
  spUseWSStoreCreditSeq = $0000022D;
  spUseWSGiftCertSeq = $0000022E;
  spPIIncludeLotSerialInCount = $0000022F;
  spAllowPIUpdateWithDiscrcies = $00000230;
  spPlanningLinkPOMeasure = $00000232;
  spPlanningLinkArchive = $00000233;
  spPlanningLinkPurgePeriod = $00000234;
  spPlanningLinkLogLocation = $00000235;
  spCopyDescToALU = $00000236;
  spMaxDiscAllowedForNewItems = $00000237;
  spMaxAccumDiscAllowedForNewItems = $00000238;
  spItemNoteMapAssignedTo1 = $00000239;
  spItemNoteMapAssignedTo2 = $0000023A;
  spItemNoteMapAssignedTo3 = $0000023B;
  spItemNoteMapAssignedTo4 = $0000023C;
  spItemNoteMapAssignedTo5 = $0000023D;
  spItemNoteMapAssignedTo6 = $0000023E;
  spItemNoteMapAssignedTo7 = $0000023F;
  spItemNoteMapAssignedTo8 = $00000240;
  spItemNoteMapAssignedTo9 = $00000241;
  spItemNoteMapAssignedTo10 = $00000242;
  spForceAssociateOnNewReciept = $00000243;
  spForceAssociateOnNewSO = $00000244;
  spHighSecurityInvoices = $00000245;
  spHighSecurityVouchers = $00000246;
  spHighSecurityTransferSlips = $00000247;
  spHighSecurityAdjustmentMemos = $00000248;
  spDefaultAssociateForNewReceipts = $00000249;
  spDefaultAssociateForNewSO = $0000024A;
  spCustomerSecurityLevel1 = $0000024B;
  spCustomerSecurityLevel2 = $0000024C;
  spCustomerSecurityLevel3 = $0000024D;
  spCustomerSecurityLevel4 = $0000024E;
  spDefaultCustomerSecurityLevel = $0000024F;
  spDefaultPriceLevel = $00000250;
  spFlagIncomingVoucher = $00000251;
  spTransOrdNo = $00000252;
  spRequireItemVoidsReason = $00000253;
  spDefaultItemVoidsReason = $00000254;
  spRequireItemReturnsReason = $00000255;
  spDefaultItemReturnsReason = $00000256;
  spRgnDeptUnqIdent = $00000257;
  spRgnVendorUnqIdent = $00000258;
  spNewDeptEnabledAsRgnl = $00000259;
  spNewVendEnabledAsRgnl = $0000025A;
  spRgnVendFlds = $0000025B;
  spDisbursement = $0000025C;
  spDocSequenceOnSecurityReceipt = $0000025D;
  spDefaultCustomerType = $0000025E;
  spLimitItemsAgainstPO = $0000025F;
  spItemHeaderInTO = $00000260;
  spCopyDocPriceToNewItem = $00000261;
  spCopyDocCostToNewItem = $00000262;
  spMarkNewInventoryItemsAsProposed = $00000263;
  spMarkNewPOItemsAsProposed = $00000264;
  spUseExRateforPrice = $00000265;
  spRoundPriceConversion = $00000266;
  spRoundPrice = $00000267;
  spUseExRateforCost = $00000268;
  spRoundCostConversion = $00000269;
  spRoundCost = $0000026A;
  spIcludeInactiveStoresInPlanning = $0000026B;
  spAutoPromotions = $0000026C;
  spReqOriginalRecOnRet = $0000026D;
  spCustomerLookUpBy = $0000026E;
  spPIRecognizeZeroAsCountInMap = $00000344;
  spGiftCardEnableCentrals = $00000345;
  spGiftCardMngIDsBy = $00000346;
  spGiftCardPrmptForCash = $00000347;
  spGiftCardPrmptForCashValue = $00000348;
  spGiftCardRestrictChngTo = $00000349;
  spGiftCardRestrictChngToValue = $0000034A;
  spGiftCardTotalNegBalPerm = $0000034B;
  spGiftCardCentOffLimit = $0000034C;
  spGiftCardGenCentIDConst1 = $0000034D;
  spGiftCardVerCentAgnstRange = $0000034E;
  spGiftCardRangeValues = $0000034F;
  spGiftCertEnableCentrals = $00000350;
  spGiftCertMngIDsBy = $00000351;
  spGiftCertPrmptForCash = $00000352;
  spGiftCertPrmptForCashValue = $00000353;
  spGiftCertRestrictChngTo = $00000354;
  spGiftCertRestrictChngToValue = $00000355;
  spGiftCertCentOffLimit = $00000356;
  spGiftCertGenCentID = $00000357;
  spGiftCertVerCentAgnstRange = $00000358;
  spGiftCertRangeValues = $00000359;
  spCentCrdEnableCentrals = $0000035A;
  spCentCrdMngIDsBy = $0000035B;
  spCentCrdPrmptForCash = $0000035C;
  spCentCrdPrmptForCashValue = $0000035D;
  spCentCrdRestrictChngTo = $0000035E;
  spCentCrdRestrictChngToValue = $0000035F;
  spCentCrdTotalNegBalPerm = $00000360;
  spCentCrdCentOffLimit = $00000361;
  spEnbSubLocations = $00000362;
  spDefSubLocQtyLimitTo = $00000363;
  spDefSubLocQtyLimitToVal = $00000364;
  spDefSubLocToManaged = $00000365;
  spDefNewItemsToSubLoc = $00000366;
  spReqReturnVouRefToPO = $00000367;
  spMultiTaxVAT = $00000368;
  spCalcTax2FromTax1 = $00000369;
  spSubLocationData = $0000036A;
  spCheckPrintEFTWhenNoEFT = $0000036B;
  spGiftCardPrintEFTWhenNoEFT = $0000036C;
  spNotAllowSubLocQtyToGoNegative = $0000036D;
  spSubLocSegPrefs = $0000036E;
  spSubLocations = $0000036F;
  spSubLocSegments = $00000370;
  spPmptForCorrSubLocs = $00000371;
  spSuggestCentralCredit = $00000372;
  spRequireRecordSaleSpecialSO = $00000373;
  spRequireRecordSaleLayawaySO = $00000374;
  spRequireRecordSaleWebSO = $00000375;

// Constants for enum LineDisplayCap
type
  LineDisplayCap = TOleEnum;
const
  ldcBitmap = $00000000;
  ldcBlink = $00000001;
  ldcBlinkRate = $00000002;
  ldcBrightness = $00000003;
  ldcCharacterSet = $00000004;
  ldcCursorType = $00000005;
  ldcCustomGlyph = $00000006;
  ldcDescriptors = $00000007;
  ldcHMarquee = $00000008;
  ldcICharWait = $00000009;
  ldcMapCharacterSet = $0000000A;
  ldcReadBack = $0000000B;
  ldcReverse = $0000000C;
  ldcScreenMode = $0000000D;
  ldcVMarquee = $0000000E;

// Constants for enum LineDisplayReadBack
type
  LineDisplayReadBack = TOleEnum;
const
  disp_crb_None = $00000000;
  disp_crb_Single = $00000001;

// Constants for enum LineDisplayReverse
type
  LineDisplayReverse = TOleEnum;
const
  disp_cr_None = $00000000;
  disp_cr_ReverseAll = $00000001;
  disp_cr_ReverseEach = $00000002;

// Constants for enum LineDisplayCharacterSet
type
  LineDisplayCharacterSet = TOleEnum;
const
  disp_cs_Unicode = $000003E5;
  disp_cs_ASCII = $000003E6;
  disp_cs_ANSI = $000003E7;

// Constants for enum LineDisplayCursorType
type
  LineDisplayCursorType = TOleEnum;
const
  disp_ct_None = $00000000;
  disp_ct_Block = $00000001;
  disp_ct_HalfBlock = $00000002;
  disp_ct_Underline = $00000003;
  disp_ct_Reverse = $00000004;
  disp_ct_Blink = $00000005;
  disp_ct_Other = $00000006;

// Constants for enum LineDisplayMarqueeFormat
type
  LineDisplayMarqueeFormat = TOleEnum;
const
  disp_mf_Walk = $00000000;
  disp_mf_Place = $00000001;

// Constants for enum LineDisplayMarqueeType
type
  LineDisplayMarqueeType = TOleEnum;
const
  disp_mt_None = $00000000;
  disp_mt_Init = $00000001;
  disp_mt_Up = $00000002;
  disp_mt_Down = $00000003;
  disp_mt_Left = $00000004;
  disp_mt_Right = $00000005;

// Constants for enum LineDisplayBitmapAlignment
type
  LineDisplayBitmapAlignment = TOleEnum;
const
  disp_bm_Left = $00000000;
  disp_bm_Center = $00000001;
  disp_bm_Right = $00000002;
  disp_bm_Top = $00000003;
  disp_bm_Bottom = $00000004;

// Constants for enum LineDisplayTextAlignment
type
  LineDisplayTextAlignment = TOleEnum;
const
  disp_dt_Normal = $00000000;
  disp_dt_Blink = $00000001;
  disp_dt_Reverse = $00000002;
  disp_dt_Blink_Reverse = $00000003;

// Constants for enum LineDisplayScroll
type
  LineDisplayScroll = TOleEnum;
const
  disp_st_Up = $00000000;
  disp_st_Down = $00000001;
  disp_st_Left = $00000002;
  disp_st_Right = $00000003;

// Constants for enum LineDisplayDescriptor
type
  LineDisplayDescriptor = TOleEnum;
const
  disp_cd_On = $00000000;
  disp_cd_Blink = $00000001;
  disp_cd_Off = $00000002;

// Constants for enum PINPadTransType
type
  PINPadTransType = TOleEnum;
const
  pttUnknown = $00000000;
  pttDebit = $00000001;
  pttCredit = $00000002;

// Constants for enum PINPadError
type
  PINPadError = TOleEnum;
const
  ppeSuccess = $00000000;
  ppeNoAccountNumber = $00000001;
  ppeNoTransType = $00000002;
  ppeCancelled = $00000003;
  ppeGenericFailure = $00000004;

// Constants for enum EFTEventType
type
  EFTEventType = TOleEnum;
const
  eetAddTransaction = $00000000;
  eetRemoveTransaction = $00000001;
  eetStartTransaction = $00000002;
  eetCommitTransaction = $00000003;
  eetCancelTransaction = $00000004;

// Constants for enum InventoryScannerStatus
type
  InventoryScannerStatus = TOleEnum;
const
  isUndefined = $00000000;
  isSuccess = $00000001;
  isDeviceNotDetected = $00000002;
  isCommunicationsError = $00000003;
  isDataTruncated = $00000004;
  isFileNotFound = $00000005;
  isFileCouldNotBeCreated = $00000006;
  isCOMException = $00000007;
  isPluginNotPresent = $00000008;
  isPluginNotEnabled = $00000009;

// Constants for enum InventoryLookupType
type
  InventoryLookupType = TOleEnum;
const
  iltUPC = $00000000;
  iltALU = $00000001;
  iltItemNum = $00000002;

// Constants for enum BOState
type
  BOState = TOleEnum;
const
  bosInactive = $00000000;
  bosBrowse = $00000001;
  bosInsert = $00000002;
  bosEdit = $00000003;
  bosOpening = $00000004;
  bosCopy = $00000005;

// Constants for enum PermissionsApplication
type
  PermissionsApplication = TOleEnum;
const
  paEditor = $00000000;
  paSync = $00000001;
  paReport = $00000002;
  paViewer = $00000003;
  paMaint = $00000004;
  paConnMan = $00000005;
  paOTBLink = $00000006;
  paRepViewer = $00000007;
  paEMSCleaner = $00000008;
  paTechToolkit = $00000009;
  paDocDesigner = $0000000A;

// Constants for enum EditorPermissions
type
  EditorPermissions = TOleEnum;
const
  epGridFormPageDes = $00000001;
  epModListView = $00000002;
  epMenuDes = $00000003;
  epSysPref = $00000004;
  epWSPref = $00000005;
  epPrnSet = $00000006;
  epSec = $00000007;
  epExitSys = $00000008;
  epRunTool = $00000009;
  epSPGlobalAccess = $0000000A;
  epSPGlobalEdit = $0000000B;
  epLocalAccess = $0000000C;
  epLocalEdit = $0000000D;
  epLocalChangeSbs = $0000000E;
  epUserAccess = $0000000F;
  epUserEdit = $00000010;
  epAccessGlbCust = $00000011;
  epAccessLclCust = $00000012;
  epAddCust = $00000013;
  epEditCust = $00000014;
  epDelCust = $00000015;
  epChangeCustId = $00000016;
  epCustCredit = $00000017;
  epTaxInfoCust = $00000018;
  epPriceLvlCust = $00000019;
  epCustDiscPerc = $0000001A;
  epCustClass = $0000001B;
  epCustSuppl = $0000001C;
  epOtherSbsCust = $0000001D;
  epCustHst = $0000001E;
  epCMSFlagCust = $0000001F;
  epAccessSO = $00000020;
  epInactiveSO = $00000021;
  epCreateSOCustOrder = $00000022;
  epDelSO = $00000023;
  epItemsSO = $00000024;
  epNegQtySOItems = $00000025;
  epDescEditSOItems = $00000026;
  epExtInfoEditSOItems = $00000027;
  epTaxCodeSOItems = $00000028;
  epPriceSOItems = $00000029;
  epPriceLvlSOItems = $0000002A;
  epDelSOItems = $0000002B;
  epTotalEditSO = $0000002C;
  epPriceLvlSO = $0000002D;
  epGlbDiscSO = $0000002E;
  epTaxPercSO = $0000002F;
  epTaxareaSO = $00000030;
  epPOGenerateSO = $00000031;
  epCashierSO = $00000032;
  epEditSO = $00000033;
  epAssociateSOItems = $00000034;
  epRegSectorCust = $00000035;
  epAccessGlbView = $00000036;
  epAccessLclView = $00000037;
  epAddCopyItem = $00000038;
  epEditItem = $00000039;
  epDelItem = $0000003A;
  epQtyItem = $0000003B;
  epPriceItem = $0000003C;
  epCostItem = $0000003D;
  epSeeCostItem = $0000003E;
  epSeeAltPriceLvl = $0000003F;
  epItemDetail = $00000040;
  epOtherStoresItem = $00000041;
  epOtherSbsItem = $00000042;
  epAccessDept = $00000043;
  epAddCopyDept = $00000044;
  epEditDept = $00000045;
  epDelDept = $00000046;
  epAccessVend = $00000047;
  epAddCopyVend = $00000048;
  epEditVend = $00000049;
  epDelVend = $0000004A;
  epHstVend = $0000004B;
  epAccessCleanHouse = $0000004C;
  epSeeSecPriceLvl = $0000004D;
  epAccessPO = $0000004E;
  epInactivePO = $0000004F;
  epAddCopyPO = $00000050;
  epEditPO = $00000051;
  epItemsPO = $00000052;
  epDelPO = $00000053;
  epCostFldsPO = $00000054;
  epAccessSN = $00000055;
  epAddCopySN = $00000056;
  epEditSN = $00000057;
  epItemsSN = $00000058;
  epDelSN = $00000059;
  epCostFldsSN = $0000005A;
  epMakeRetVouSN = $0000005B;
  epCostSN = $0000005C;
  epPriceSN = $0000005D;
  epAssociateSN = $0000005E;
  epStoreSN = $0000005F;
  epStIdSN = $00000060;
  epNegQtyItemsSN = $00000061;
  epCMSFlagSN = $00000062;
  epVerFlagSN = $00000063;
  epAccessTO = $00000064;
  epInactiveTO = $00000065;
  epAddCopyTO = $00000066;
  epEditTO = $00000067;
  epItemsTO = $00000068;
  epDelTO = $00000069;
  epCostFldsTO = $0000006A;
  epCMSFlagTO = $0000006B;
  epVerFlagTO = $0000006C;
  epAccessCorpTO = $0000006D;
  epOtherSbsCorpTO = $0000006E;
  epAccessAdj = $0000006F;
  epAddCopyAdj = $00000070;
  epEditAdj = $00000071;
  epItemsAdj = $00000072;
  epAssociateAdj = $00000073;
  epStoreAdj = $00000074;
  epCostFldsAdj = $00000075;
  epCMSFlagAdj = $00000076;
  epVerFlagAdj = $00000077;
  epDelAdj = $00000078;
  epAccessVou = $00000079;
  epAddCopyVou = $0000007A;
  epEditVou = $0000007B;
  epDelVou = $0000007D;
  epCostFldsVou = $0000007E;
  epCostVou = $0000007F;
  epPriceVou = $00000080;
  epAssociateVou = $00000081;
  epStoreVou = $00000082;
  epStIdVou = $00000083;
  epNegQtyItemsVou = $00000084;
  epCMSFlagVou = $00000085;
  epVerFlagVou = $00000086;
  epViewItemsHistory = $00000087;
  epTagPrint = $00000088;
  epItemPrint = $00000089;
  epDeptPrint = $0000008A;
  epVenderPrint = $0000008B;
  epPOPrint = $0000008C;
  epASNPrint = $0000008D;
  epVIAccess = $0000008E;
  epVIAdd = $0000008F;
  epVIEdit = $00000090;
  epVIDel = $00000091;
  epStockLedgerAccess = $00000092;
  epCheckListAccess = $00000093;
  epReprocess = $00000094;
  epClosePeriod = $00000095;
  epReopenPeriod = $00000096;
  epNewPeriod = $00000097;
  epDeletePeriod = $00000098;
  epExplorer = $00000099;
  epAnalysis = $0000009A;
  epReviewVou = $0000009B;
  epApproveVou = $0000009C;
  epResolveVI = $0000009D;
  epApproveVI = $0000009E;
  epAuditAccess = $0000009F;
  epLayoutManager = $000000A0;
  epCustRegion = $000000A1;
  epAssignInvType = $000000A2;
  epPackKit = $000000A3;
  epAddKitComp = $000000A4;
  epAddPackComp = $000000A5;
  epDeletePack = $000000A6;
  epDeleteKit = $000000A7;
  epDefineKit = $000000A8;
  epDefinePack = $000000A9;
  epAccItemPackKit = $000000AA;
  epPOChooseItems = $000000AB;
  epPOSViewOtherSbs = $000000AC;
  epASNChooseItems = $000000AD;
  epVouInactive = $000000AE;
  epInactiveAdj = $000000AF;
  epAccessSlip = $000000B0;
  epInactiveSlip = $000000B1;
  epAccessReceipt = $000000B2;
  epInactivereceipt = $000000B3;
  epSubWizard = $000000B4;
  epEnterLic = $000000B5;
  epEnterActivation = $000000B6;
  epPrintLic = $000000B7;
  epPMResFormPrice = $000000B8;
  epPMDelMkdwn = $000000B9;
  epPMEditMKDN = $000000BA;
  epPMUpdateNow = $000000BB;
  epPMUPdatePlanned = $000000BC;
  epPMUPdateCost = $000000BD;
  epPMCreateResMkdwn = $000000BE;
  epItemsVou = $0000007C;
  epNone = $00000000;
  epVouChooseItems = $000000BF;
  epepMakeReturnVou = $000000C0;
  epReverseVou = $000000C1;
  epAccessCostOptVou = $000000C2;
  epAccessSpreadCostOptVou = $000000C3;
  epAllowDiscardVou = $000000C4;
  epUpdateOnlyVou = $000000C5;
  epAllowSaveCancelledVou = $000000C6;
  epViewOtherSbsVou = $000000C7;
  epVouReplace = $000000C8;
  epSlipChooseItems = $000000C9;
  epSlipUpdate = $000000CA;
  epSlipReverse = $000000CB;
  epSlipCopy = $000000CC;
  epSlipChangeStore = $000000CD;
  epTrVerAccess = $000000CE;
  epTrVerEditSlip = $000000CF;
  epTrVerUdateSlip = $000000D0;
  epTrVerResolveSlip = $000000D1;
  epSlipChangeEmpl = $000000D2;
  epTOChooseItems = $000000D3;
  epEntryKeyLic = $000000D4;
  epCustBins = $000000D5;
  epCustSegments = $000000D6;
  epCommissions = $000000D7;
  epTimeShifts = $000000D8;
  epChangePassword = $000000D9;
  epLang = $000000DA;
  epAutoPO = $000000DB;
  epAutoRepl = $000000DC;
  epAutoTO = $000000DD;
  epModSettingsAutoPO = $000000DE;
  epModSettingsAutoTO = $000000DF;
  epModSettingsAutoRepl = $000000E0;
  epViewCostAutoPO = $000000E1;
  epViewCostAutoTO = $000000E2;
  epViewCostAutoRepl = $000000E3;
  epModSettingsAutoMinMax = $000000E4;
  epModFormulaAutoMinMax = $000000E5;
  epModFiltersAutoMinMax = $000000E6;
  epCanUpdateAutoMinMax = $000000E7;
  epViewCostAutoMinMax = $000000E8;
  epAssembleKit = $000000E9;
  epBreakKit = $000000EA;
  epInvnReplace = $000000EB;
  epCustReplace = $000000EC;
  epASNReplace = $000000ED;
  epPOReplace = $000000EE;
  epTOReplace = $000000EF;
  epSlipReplace = $000000F0;
  epOtherSbsCustBin = $000000F1;
  epOtherSbsAudit = $000000F2;
  epOtherSbsASN = $000000F3;
  epOtherSbsAdjustment = $000000F4;
  epOtherSbsSlip = $000000F5;
  epOtherSbsTransVer = $000000F6;
  epOtherSbsAutoUtils = $000000F7;
  epOtherSbsSO = $000000F8;
  epOtherSbsReceipts = $000000F9;
  epEditItemDesc = $000000FA;
  epOthersbsCommissions = $000000FB;
  epOtherSbsTimeShifts = $000000FC;
  epAssignItemOtOtherSbs = $000000FD;
  epInvnAllowFreeFormUDF = $000000FE;
  epOtherSbsSalesTarget = $000000FF;
  epCustomerGCSCMaintenance = $00000100;
  epAccessXOut = $00000101;
  epEditFilterXOut = $00000102;
  epExportXOut = $00000103;
  epPrintXOut = $00000104;
  epRunScriptsXOut = $00000105;
  epAccessRegOpenClose = $00000106;
  epZOutEditOpenDate = $00000107;
  epZOutEditCloseDate = $00000108;
  epZOutOpenDrawer = $00000109;
  epExportZOut = $0000010B;
  epPrintZOut = $0000010C;
  epRunScriptsZOut = $0000010D;
  epAccessFormerZOut = $0000010E;
  epConsolidateFormerZOut = $0000010F;
  epExportFormerZOut = $00000110;
  epZOutCloseDrawer = $0000010A;
  epPrintFormerZOut = $00000111;
  epViewOtherSbsXZOut = $00000112;
  epOrderCostItem = $00000113;
  epViewOtherStoresXZOut = $00000114;
  epCreateSOLayaway = $00000115;
  epCreateSOStoreRegistry = $00000116;
  epCreateSOCompRegistry = $00000117;
  epSODeactivate = $00000118;
  epAdjMemoReverse = $00000119;
  epInvcItemEdit = $0000011A;
  epInvcEdit = $0000011B;
  epEditAccountingMarks = $0000011C;
  epInvcChangeStoreNo = $0000011D;
  epUnused286 = $0000011E;
  epInvcCopy = $0000011F;
  epReversereceipt = $00000120;
  epCreateInvcCashDrop = $00000121;
  epCreateInvcReturn = $00000122;
  epCreateInvcSale = $00000123;
  epCreateInvcLost = $00000124;
  epInvcIssueStoreCredit = $00000125;
  epInvcRedemptStoreCredit = $00000126;
  epInvcCostGTPrice = $00000127;
  epInvcAccessChooseItems = $00000128;
  epInvcHoldUnhold = $00000129;
  epUnused298 = $0000012A;
  epInvcUpdateOnly = $0000012B;
  epInvcChangeAssociate = $0000012C;
  epInvcChangeCashier = $0000012D;
  epInvcItemChangeTaxCode = $0000012E;
  epInvcItemChangePrice = $0000012F;
  epUnused304 = $00000130;
  epUnused305 = $00000131;
  epInvcDeleteItem = $00000132;
  epNegQtyItemsInvc = $00000133;
  epInvcItemChangePriceLvl = $00000134;
  epInvcItemAdd = $00000135;
  epInvcDirectEditingOfTotal = $00000136;
  epChangeDatesInCheckInOut = $00000137;
  epInvcChangeTaxPerc = $00000138;
  epInvcChangeTaxArea = $00000139;
  epInvcGiveGlobalDisc = $0000013A;
  epOpenCashDrawer = $0000013B;
  epInvcChangePriceLvl = $0000013C;
  epInvcAllowDiscard = $0000013D;
  epInvcReturnOverrideTenders = $0000013E;
  epPrintHeldReceipts = $0000013F;
  epSOAccessChooseItems = $00000140;
  epUnused321 = $00000141;
  epAccessCheckInOut = $00000142;
  epViewCheckInOutStatus = $00000143;
  epUnused324 = $00000144;
  epPOSAllowInactiveCustomer = $00000145;
  epAllowbreakingKitsOnDocs = $00000146;
  epUnused327 = $00000147;
  epCreateSOSpecialOrder = $00000148;
  epCanViewCreditCardNumbers = $00000149;
  epPrintCustomers = $0000014A;
  epExportCustomers = $0000014B;
  epLvl1ViewAddress1 = $0000014C;
  epLvl1ViewAddress2 = $0000014D;
  epLvl1ViewAddress3 = $0000014E;
  epLvl1ViewPhone1 = $0000014F;
  epLvl1ViewPhone2 = $00000150;
  epLvl1ViewEmail = $00000151;
  epLvl1ViewNotes = $00000152;
  epLvl1ViewStoreCredit_CreditLimit_CreditUsed = $00000153;
  epLvl1ViewSecureUDFFields = $00000154;
  epLvl1ViewInfo1Field = $00000155;
  epLvl1ViewInfo2Field = $00000156;
  epLvl1ViewMark1Field = $00000157;
  epLvl1ViewMark2Field = $00000158;
  epLvl1ViewPreferredContactClerk = $00000159;
  epLvl1EditAddress1 = $0000015A;
  epLvl1EditAddress2 = $0000015B;
  epLvl1EditAddress3 = $0000015C;
  epLvl1EditPhone1 = $0000015D;
  epLvl1EditPhone2 = $0000015E;
  epLvl1EditEmail = $0000015F;
  epLvl1EditNotes = $00000160;
  epLvl1EditUDFFields = $00000161;
  epLvl1EditInfo1 = $00000162;
  epLvl1EditInfo2 = $00000163;
  epLvl1EditMark1 = $00000164;
  epLvl1EditMark2 = $00000165;
  epLvl1EditPreferredContactClerk = $00000166;
  epLvl1AllowViewToAssociatesOfOthrRegn = $00000167;
  epLvl1AllowViewtoAssociatesOfOthrDist = $00000168;
  epLvl1AllowModifyToAssociatesOfOthrRegn = $00000169;
  epLvl1AllowModifyToAssociatesOfOthrDist = $0000016A;
  epLvl1AllowSecLevel1ToBeViewed = $0000016B;
  epLvl1AllowCustAssignOfSecLevel1 = $0000016C;
  epLvl2ViewAddress1 = $0000016D;
  epLvl2ViewAddress2 = $0000016E;
  epLvl2ViewPhone1 = $00000170;
  epLvl2ViewPhone2 = $00000171;
  epLvl2ViewEmail = $00000172;
  epLvl2ViewNotes = $00000173;
  epLvl2ViewStoreCredit_CreditLimit_CreditUsed = $00000174;
  epLvl2ViewSecureUDFFields = $00000175;
  epLvl2ViewInfo1Field = $00000176;
  epLvl2ViewInfo2Field = $00000177;
  epLvl2ViewMark1Field = $00000178;
  epLvl2ViewMark2Field = $00000179;
  epLvl2ViewPreferredContactClerk = $0000017A;
  epLvl2EditAddress1 = $0000017B;
  epLvl2EditAddress2 = $0000017C;
  epLvl2EditPhone1 = $0000017E;
  epLvl2EditPhone2 = $0000017F;
  epLvl2EditEmail = $00000180;
  epLvl2EditNotes = $00000181;
  epLvl2EditUDFFields = $00000182;
  epLvl2EditAddress3 = $0000017D;
  epLvl2ViewAddress3 = $0000016F;
  epLvl2EditInfo1 = $00000183;
  epLvl2EditInfo2 = $00000184;
  epLvl2EditMark1 = $00000185;
  epLvl2EditMark2 = $00000186;
  epLvl2EditPreferredContactClerk = $00000187;
  epLvl2AllowViewtoAssociatesOfOthrRegn = $00000188;
  epLvl2AllowViewtoAssociatesOfOthrDist = $00000189;
  epLvl2AllowModifyToAssociatesOfOthrRegn = $0000018A;
  epLvl2AllowModifyToAssociatesOfOthrDist = $0000018B;
  epLvl2AllowSecLevel2ToBeViewed = $0000018C;
  epLvl2AllowCustAssignOfSecLevel2 = $0000018D;
  epLvl3ViewAddress1 = $0000018E;
  epLvl3ViewAddress2 = $0000018F;
  epLvl3ViewAddress3 = $00000190;
  epLvl3ViewPhone1 = $00000191;
  epLvl3ViewPhone2 = $00000192;
  epLvl3ViewEmail = $00000193;
  epLvl3ViewNotes = $00000194;
  epLvl3ViewStoreCredit_CreditLimit_CreditUsed = $00000195;
  epLvl3ViewViewSecureUDFFields = $00000196;
  epLvl3ViewInfo1Field = $00000197;
  epLvl3ViewInfo2Field = $00000198;
  epLvl3ViewMark1Field = $00000199;
  epLvl3ViewMark2Field = $0000019A;
  epLvl3ViewPreferredContactClerk = $0000019B;
  epLvl3EditAddress1 = $0000019C;
  epLvl3EditAddress2 = $0000019D;
  epLvl3EditAddress3 = $0000019E;
  epLvl3EditPhone1 = $0000019F;
  epLvl3EditPhone2 = $000001A0;
  epLvl3EditEmail = $000001A1;
  epLvl3EditNotes = $000001A2;
  epLvl3EditInfo1 = $000001A4;
  epLvl3EditInfo2 = $000001A5;
  epLvl3EditMark1 = $000001A6;
  epLvl3EditMark2 = $000001A7;
  epLvl3EditPreferredContactClerk = $000001A8;
  epLvl3AllowViewToAssociatesOfOthrRegn = $000001A9;
  epLvl3AllowViewToAssociatesOfOthrDist = $000001AA;
  epLvl3AllowModifyToAssoicatesOfOthrRegn = $000001AB;
  epLvl3AllowModifyToAssociatesOfOthrDist = $000001AC;
  epLvl3EditUDFFields = $000001A3;
  epLvl3AllowSecLevel3ToBeViewed = $000001AD;
  epLvl3AllowCustAssignOfSecLevel3 = $000001AE;
  epLvl4ViewAddress1 = $000001AF;
  epLvl4ViewAddress2 = $000001B0;
  epLvl4ViewAddress3 = $000001B1;
  epLvl4ViewPhone1 = $000001B2;
  epLvl4ViewPhone2 = $000001B3;
  epLvl4ViewEmail = $000001B4;
  epLvl4ViewNotes = $000001B5;
  epLvl4ViewStoreCredit_CreditLimit_CreditUsed = $000001B6;
  epLvl4ViewSecureUDFFields = $000001B7;
  epLvl4ViewInfo1Field = $000001B8;
  epLvl4ViewInfo2Field = $000001B9;
  epLvl4ViewMark1Field = $000001BA;
  epLvl4ViewMark2Field = $000001BB;
  epLvl4ViewPreferredContactClerk = $000001BC;
  epLvl4EditAddress1 = $000001BD;
  epLvl4EditAddress2 = $000001BE;
  epLvl4EditAddress3 = $000001BF;
  epLvl4EditPhone1 = $000001C0;
  epLvl4EditPhone2 = $000001C1;
  epLvl4EditEmail = $000001C2;
  epLvl4EditNotes = $000001C3;
  epLvl4EditUDFFields = $000001C4;
  epLvl4EditInfo1 = $000001C5;
  epLvl4EditInfo2 = $000001C6;
  epLvl4EditMark1 = $000001C7;
  epLvl4EditMark2 = $000001C8;
  epLvl4EditPreferredContactClerk = $000001C9;
  epLvl4AllowViewToAssociatesOfOthrRegn = $000001CA;
  epLvl4AllowViewToAssociatesOfOthrDist = $000001CB;
  epLvl4AllowModifyToAssociatesOfOthrRegn = $000001CC;
  epLvl4AllowModifyToAssociatesOfOthrDist = $000001CD;
  epLvl4AllowSecLevel4ToBeViewed = $000001CE;
  epLvl4AllowCustAssignOfSecLevel4 = $000001CF;
  epGCActivate = $000001D0;
  epGCDeactivate = $000001D1;
  epGCIncfunds = $000001D2;
  epEmployeeAccess = $000001D3;
  epAccessSalesChargesXOut = $000001D4;
  epViewOtherSalesChartsXOut = $000001D5;
  epReverseTodayReceipt = $000001D6;
  epSOChangeAssociate = $000001D7;
  epAutoPOChangeAssociate = $000001D8;
  epAutoTOChangeAssociate = $000001D9;
  epAutoReplChangeAssociatge = $000001DA;
  epAccessSlaesTarget = $000001DB;
  epCreateEditSalesTarget = $000001DC;
  epInactivateSalesTarget = $000001DD;
  epAllowDeleteStatusCheckInOut = $000001DE;
  epAllowEditCheckInOutDate = $000001DF;
  epAllowEditAllCheckInOutDate = $000001E0;
  epAcceptProposedItem = $000001E1;
  epRejectProposedItem = $000001E2;
  epZeroQtyItemsInvc = $000001E3;
  epAccessChangeTill = $000001E4;
  epAllowChangeTill = $000001E5;
  epAllowSwitchDrawer = $000001E6;
  epSOEditItemNote = $000001E7;
  epPOEditItemNote = $000001E8;
  epVouEditItemNote = $000001E9;
  epTOEditItemNote = $000001EA;
  epAdjEditItemNote = $000001EB;
  epSlipEditItemNote = $000001EC;
  epReceiptEditItemNote = $000001ED;
  epZOutEditFilter = $000001EE;
  epCustAllowEditMaxDiscPerc = $000001EF;
  epReverseTodayAdjustment = $000001F0;
  epReverseTodayVoucher = $000001F1;
  epReverseTodaySlip = $000001F2;
  epAny1stDepositAmt = $000001F3;
  epVendAddCountry = $000001F4;
  epViewChildSbsPO = $000001F5;
  epCustAddCountry = $000001F6;
  epAccessDefaultStore = $000001F7;
  epAccessSbs = $000001F8;
  epAllowDetax = $000001F9;
  epAllowAccessPI = $000001FA;
  epAllowChangeNameOnCheckin = $000001FB;
  epAllowEditOfQuickFilterElements = $000001FC;
  epAllowReturnWithoutOrigRcpt = $000001FD;
  epAllowSaleNoSerialNumber = $000001FE;
  epAllowUnlockWSofAnyUser = $000001FF;
  epAllowSaleNoLotNumber = $00000200;
  epIncEmplDiscPercToCustDiscPerc = $00000201;
  epMakeSODeposit = $00000202;
  epPOPendingPOLvl1 = $00000203;
  epPOPendingPOLvl2 = $00000204;
  epPOPendingPOLvl3 = $00000205;
  epPOPendingPOLvl4 = $00000206;
  epVouPendingVouLvl1 = $00000207;
  epVouPendingVouLvl2 = $00000208;
  epVouPendingVouLvl3 = $00000209;
  epVouPendingVouLvl4 = $0000020A;
  epExecutiveApprovalForPendingPOAndVou = $0000020B;
  epVouPrint = $0000020C;

// Constants for enum SyncPermissions
type
  SyncPermissions = TOleEnum;
const
  csNone = $00000000;
  csAccessSync = $00000001;
  csViewLog = $00000002;
  csFullImport = $00000003;
  csUpdate = $00000004;
  csExplorer = $00000005;
  csErrorLog = $00000006;
  csAllSbs = $00000007;

// Constants for enum ReportPermissions
type
  ReportPermissions = TOleEnum;
const
  crNone = $00000000;
  crLaunchReports = $00000001;
  crViewCost = $00000002;
  crChangeSbs = $00000003;
  crViewOtherUsers = $00000004;
  crDeleteFiles = $00000005;
  crChangeDefaultFonts = $00000006;
  crChangeFldLen = $00000007;
  crCustFldNames = $00000008;
  crModifyGenOpt = $00000009;
  crAccessglobJrn = $0000000A;
  crAccessGlobMerch = $0000000B;
  crAccessGlobSum = $0000000C;
  crAccessGlobLists = $0000000D;
  crCreateGlobReports = $0000000E;
  crEditCopyGlobReports = $0000000F;
  crDeleteGlobReports = $00000010;
  crAccessLvlGlob1 = $00000011;
  crAccessLvlGlob2 = $00000012;
  crAccessLvlGlob3 = $00000013;
  crAccessLvlGlob4 = $00000014;
  crSysAdminAccessGlob = $00000015;
  crAccessLocJrn = $00000016;
  crAccessLocMerch = $00000017;
  crAccessLocSum = $00000018;
  crAccessLocLists = $00000019;
  crLaunchMigrWis = $0000001A;
  crCreateLocReports = $0000001B;
  crEditcopyLocreports = $0000001C;
  crDeleteLocReports = $0000001D;
  crAccessReportGrp = $0000001E;
  crCreateReportGrp = $0000001F;
  crEditCopyReportGrp = $00000020;
  crDeleteReportGrp = $00000021;
  crAccessLvlLoc1 = $00000022;
  crAccessLvlLoc2 = $00000023;
  crAccessLvlLoc3 = $00000024;
  crAccessLvlLoc4 = $00000025;
  crSysAdminAccessLoc = $00000026;

// Constants for enum AttributePropertyIDs
type
  AttributePropertyIDs = TOleEnum;
const
  apDatasourceName = $00000000;
  apFieldName = $00000001;
  apBaseDomain = $00000002;
  apType = $00000003;
  apComment = $00000004;
  apRefEntityID = $00000005;
  apRefEntityName = $00000006;
  apDomainID = $00000007;
  apRouteName = $00000008;
  apFormulaName = $00000009;
  apEnumeratorName = $0000000A;
  apValueAvailable = $0000000B;
  apAlignment = $0000000C;
  apUDFNumber = $0000000D;
  apQuickFilter = $0000000E;
  apLookupUpdatable = $0000000F;
  apAccessToRefAttribute = $00000010;
  apShortDisplayLabel = $00000011;
  apLongDisplayLabel = $00000012;
  apHint = $00000013;
  apVisible = $00000014;
  apDefaultList = $00000015;
  apLookupListPosition = $00000016;
  apFilterable = $00000017;
  apSortable = $00000018;
  apReadOnly = $00000019;
  apDisplayWidth = $0000001A;
  apDisplayFormat = $0000001B;
  apAttributeSize = $0000001C;
  apFormViewAvailable = $0000001D;
  apListViewAvailable = $0000001E;
  apEditFormat = $0000001F;
  apIsBarCode = $00000020;
  apUniqueAttrId = $00000021;
  apRequired = $00000022;
  apHelpContext = $00000023;
  apReplaceEnabled = $00000024;
  apSortByCase = $00000025;
  apImage = $00000026;

// Constants for enum AttributeBaseDomains
type
  AttributeBaseDomains = TOleEnum;
const
  abdString = $00000000;
  abdInteger = $00000001;
  abdFloat = $00000002;
  abdDate = $00000003;
  abdBoolean = $00000004;
  abdEnumerator = $00000005;

// Constants for enum AttributeTypes
type
  AttributeTypes = TOleEnum;
const
  artSimple = $00000000;
  artCollection = $00000001;
  artLookup = $00000002;
  artEnum = $00000003;
  artParameter = $00000004;
  artIntercalc = $00000005;
  artRefCalculated = $00000006;
  artDictList = $00000007;
  artVirtual = $00000008;

// Constants for enum RelationalOperation
type
  RelationalOperation = TOleEnum;
const
  proNone = $00000000;
  proEqual = $00000001;
  proInequal = $00000002;
  proLess = $00000003;
  proGreater = $00000004;
  proLessEqual = $00000005;
  proGreaterEqual = $00000006;
  proIsNull = $00000007;
  proIsNotNull = $00000008;
  proOuterEqual = $00000009;
  proGrEqLsEqRange = $0000000A;
  proGrEqLsRange = $0000000B;
  proGrLsEqRange = $0000000C;
  proGrLsRange = $0000000D;
  proLike = $0000000E;
  proOutOfRange = $0000000F;
  proEqual1or2 = $00000010;
  proOneOf = $00000011;
  proDisjunction = $00000012;
  proOneOfString = $00000013;

// Constants for enum FiscalPrinterCaps
type
  FiscalPrinterCaps = TOleEnum;
const
  fpcAdditionalHeader = $00000000;
  fpcAdditionalLines = $00000001;
  fpcAdditionalTrailer = $00000002;
  fpcAmountAdjustment = $00000003;
  fpcAmountNotPaid = $00000004;
  fpcChangeDue = $00000005;
  fpcCheckTotal = $00000006;
  fpcCoverSensor = $00000007;
  fpcDoubleWidth = $00000008;
  fpcDuplicateReceipt = $00000009;
  fpcEmptyReceiptIsVoidable = $0000000A;
  fpcFiscalReceiptStation = $0000000B;
  fpcFiscalReceiptType = $0000000C;
  fpcFixedOutput = $0000000D;
  fpcHasVatTable = $0000000E;
  fpcIndependentHeader = $0000000F;
  fpcItemList = $00000010;
  fpcJrnEmptySensor = $00000011;
  fpcJrnNearEndSensor = $00000012;
  fpcJrnPresent = $00000013;
  fpcMultiConstractor = $00000014;
  fpcNonFiscalMode = $00000015;
  fpcOnlyVoidLastItem = $00000016;
  fpcOrderAdjustmentFirst = $00000017;
  fpcPackageAdjustment = $00000018;
  fpcPercentAdjustment = $00000019;
  fpcPositiveAdjustment = $0000001A;
  fpcPositiveSubtotalAdjustment = $0000001B;
  fpcPostPreLine = $0000001C;
  fpcPowerLossReport = $0000001D;
  fpcPredefinedPaymentLines = $0000001E;
  fpcReceiptNotPaid = $0000001F;
  fpcReceiptEmptySensor = $00000020;
  fpcReceiptNearEndSensor = $00000021;
  fpcReceiptPresent = $00000022;
  fpcRemainingFiscalMemory = $00000023;
  fpcReservedWord = $00000024;
  fpcSetCurrency = $00000025;
  fpcSetHeader = $00000026;
  fpcSetPOSID = $00000027;
  fpcSetStoreFiscalID = $00000028;
  fpcSetTrailer = $00000029;
  fpcSetVatTable = $0000002A;
  fpcSlipEmptySensor = $0000002B;
  fpcSlipFiscalDocument = $0000002C;
  fpcSlipFullSlip = $0000002D;
  fpcSlipNearEndSensor = $0000002E;
  fpcSlipPresent = $0000002F;
  fpcSlipValidation = $00000030;
  fpcSubAmountAdjustment = $00000031;
  fpcSubPercentAdjustment = $00000032;
  fpcSubtotal = $00000033;
  fpcTotalizerType = $00000034;
  fpcTrainingMode = $00000035;
  fpcValidateJournal = $00000036;
  fpcXReport = $00000037;

// Constants for enum FiscalPrinterCurrencyIDs
type
  FiscalPrinterCurrencyIDs = TOleEnum;
const
  fpciUndefined = $00000000;
  fpciBrazilian = $00000001;
  fpciBulgarianLev = $00000002;
  fpciEuro = $00000003;
  fpciGreekDrachma = $00000004;
  fpciHungarianForint = $00000005;
  fpciItalianLira = $00000006;
  fpciPolishZloty = $00000007;
  fpciRomanianLeu = $00000008;
  fpciRussianRouble = $00000009;
  fpciTurkishLira = $0000000A;
  fpciCzechKoruna = $0000000B;
  fpciUkrainianHryvnia = $0000000C;

// Constants for enum FiscalPrinterCountryCodes
type
  FiscalPrinterCountryCodes = TOleEnum;
const
  fpccUndefined = $00000000;
  fpccBrazil = $00000001;
  fpccGreece = $00000002;
  fpccHungary = $00000003;
  fpccItaly = $00000004;
  fpccPoland = $00000005;
  fpccTurkey = $00000006;
  fpccRussia = $00000007;
  fpccBulgaria = $00000008;
  fpccRomania = $00000009;
  fpccCzechRepublic = $0000000A;

// Constants for enum FiscalPrinterErrorLevels
type
  FiscalPrinterErrorLevels = TOleEnum;
const
  fpelNone = $00000000;
  fpelRecoverable = $00000001;
  fpelFatal = $00000002;
  fpelBlocked = $00000003;

// Constants for enum FiscalPrinterStations
type
  FiscalPrinterStations = TOleEnum;
const
  fpsJournal = $00000001;
  fpsReceipt = $00000002;
  fpsSlip = $00000003;
  fpsUndefined = $00000000;

// Constants for enum FiscalPrinterReceiptType
type
  FiscalPrinterReceiptType = TOleEnum;
const
  fprtUndefined_ = $00000000;
  fprtCashIn = $00000001;
  fprtCashOut = $00000002;
  fprtGeneric = $00000003;
  fprtSales = $00000004;
  fprtService = $00000005;
  fprtSimpleInvoice = $00000006;
  fprtRefund = $00000007;

// Constants for enum FiscalPrinterMessageType
type
  FiscalPrinterMessageType = TOleEnum;
const
  fpmtUndefined = $00000000;
  fpmtAdvance = $00000001;
  fpmtAdvancePaid = $00000002;
  fpmtAmountToBePaid = $00000003;
  fpmtAmountToBePaidBack = $00000004;
  fpmtCard = $00000005;
  fpmtCardNumber = $00000006;
  fpmtCardType = $00000007;
  fpmtCash = $00000008;
  fpmtCashier = $00000009;
  fpmtCashRegisterNumber = $0000000A;
  fpmtChange = $0000000B;
  fpmtCheque = $0000000C;
  fpmtClientNumber = $0000000D;
  fpmtClientSignature = $0000000E;
  fpmtCounterState = $0000000F;
  fpmtCreditCard = $00000010;
  fpmtCurrency = $00000011;
  fpmtCurrencyValue = $00000012;
  fpmtDeposit = $00000013;
  fpmtDepositReturned = $00000014;
  fpmtDotLine = $00000015;
  fpmtDriverNumber = $00000016;
  fpmtEmptyLine = $00000017;
  fpmtFreeText = $00000018;
  fpmtFreeTextWithDayLimit = $00000019;
  fpmtGivenDiscount = $0000001A;
  fpmtLocalCredit = $0000001B;
  fpmtMileageKm = $0000001C;
  fpmtNote = $0000001D;
  fpmtPaid = $0000001E;
  fpmtPayIn = $0000001F;
  fpmtPointGranted = $00000020;
  fpmtPointsBonus = $00000021;
  fpmtPointsReceipt = $00000022;
  fpmtPointsTotal = $00000023;
  fpmtProfited = $00000024;
  fpmtRate = $00000025;
  fpmtRegisterNumber = $00000026;
  fpmtShiftNumber = $00000027;
  fpmtStateOfAnAccount = $00000028;
  fpmtSubscription = $00000029;
  fpmtTable = $0000002A;
  fpmtThanks = $0000002B;
  fpmtTransactionNumber = $0000002C;
  fpmtValidTo = $0000002D;
  fpmtVoucher = $0000002E;
  fpmtVoucherPaid = $0000002F;
  fpmtVoucherValue = $00000030;
  fpmtWithDiscount = $00000031;
  fpmtWithoutUplift = $00000032;

// Constants for enum FiscalPrinterStates
type
  FiscalPrinterStates = TOleEnum;
const
  fpsUndefined_ = $00000000;
  fpsMonitor = $00000001;
  fpsFiscalReceipt = $00000002;
  fpsFiscalReceiptTotal = $00000003;
  fpsFiscalReceiptEnding = $00000004;
  fpsFiscalDocument = $00000005;
  fpsFixedOutput = $00000006;
  fixItemList = $00000007;
  fpsNonfiscal = $00000008;
  fpsLocked = $00000009;
  fpsReport = $0000000A;

// Constants for enum FiscalPrinterSlipSelections
type
  FiscalPrinterSlipSelections = TOleEnum;
const
  fpssUndefined = $00000000;
  fpssFullLength = $00000001;
  fpssValidation = $00000002;

// Constants for enum FiscalPrinterTotalizerTypes
type
  FiscalPrinterTotalizerTypes = TOleEnum;
const
  fpttUndefined = $00000000;
  fpttDocument = $00000001;
  fpttDay = $00000002;
  fpttReceipt = $00000003;
  fpttGrand = $00000004;

// Constants for enum FiscalPrinterExtendedErrorCodes
type
  FiscalPrinterExtendedErrorCodes = TOleEnum;
const
  fpeeUndefined = $00000000;
  fpeeWrongState = $00000001;
  fpeeCoverOpen = $00000002;
  fpeeJrnEmpty = $00000003;
  fpeeRecEmpty = $00000004;
  fpeeSlpEmpty = $00000005;
  fpeeBadDate = $00000006;
  fpeeBadItemQuantity = $00000007;
  fpeeBadPrice = $00000008;
  fpeeBadItemDescription = $00000009;
  fpeeBadVat = $0000000A;
  fpeeTotalOverflow = $0000000B;
  fpeeNegativeTotal = $0000000C;
  fpeeWordNotAllowed = $0000000D;
  fpeeTechnicalAssistanceRequired = $0000000E;
  fpeeClockError = $0000000F;
  fpeeFiscalMemoryFull = $00000010;
  fpeeTotalsError = $00000011;
  fpeeBadItemAmount = $00000012;
  fpeeMissingDevices = $00000013;
  fpeeBadLength = $00000014;
  fpeeMissingSetCurrency = $00000015;
  fpeeDayEndRequired = $00000016;
  fpeeMissingData = $00000017;
  fpeeZReportRequired = $00000018;
  fpeeMiscHardwareError = $00000019;
  fpeePaperJam = $0000001A;
  fpeeOutOfInk = $0000001B;
  fpeeReportError = $0000001C;
  fpeeTextOverflow = $0000001D;
  fpeeFiscalDocumentNotOpen = $0000001E;
  fpeeFiscalDocumentAlreadyOpen = $0000001F;
  fpeeBadDiscount = $00000020;
  fpeePeriodMismatch = $00000021;

// Constants for enum FiscalPrinterAdjustmentTypes
type
  FiscalPrinterAdjustmentTypes = TOleEnum;
const
  fpatUndefined = $00000000;
  fpatAmountDiscount = $00000001;
  fpatAmountSurcharge = $00000002;
  fpatPercentageDiscount = $00000003;
  fpatPercentageSurcharge = $00000004;
  fpatCouponAmountDiscount = $00000005;
  fpatCouponPercentageDiscount = $00000006;

// Constants for enum FiscalPrinterReportTypes
type
  FiscalPrinterReportTypes = TOleEnum;
const
  fprtUndefined = $00000000;
  fprtOrdinal = $00000001;
  fprtDate = $00000002;
  fprtEODOrdinal = $00000003;

// Constants for enum TenderTypes
type
  TenderTypes = TOleEnum;
const
  ttCash = $00000000;
  ttCheck = $00000001;
  ttCreditCard = $00000002;
  ttCOD = $00000003;
  ttCharge = $00000004;
  ttStoreCredit = $00000005;
  ttRESERVED = $00000006;
  ttDeposit = $00000007;
  ttPayments = $00000008;
  ttGiftCertificate = $00000009;
  ttGiftCard = $0000000A;
  ttDebitCard = $0000000B;
  ttForeignCurrency = $0000000C;
  ttTravelerCheck = $0000000D;
  ttForeignCheck = $0000000E;
  ttCentralGiftCard = $0000000F;
  ttCentralGiftCert = $00000010;
  ttCentralCredit = $00000011;

// Constants for enum CheckTypes
type
  CheckTypes = TOleEnum;
const
  ctPersonal = $00000000;
  ctBusiness = $00000001;

// Constants for enum FiscalPrinterErrorResponses
type
  FiscalPrinterErrorResponses = TOleEnum;
const
  fperClear = $00000000;
  fperRetry = $00000001;

// Constants for enum BOSortOrder
type
  BOSortOrder = TOleEnum;
const
  bsoNone = $00000000;
  bsoAscending = $00000001;
  bsoDescending = $00000002;

// Constants for enum EFTCapabilities
type
  EFTCapabilities = TOleEnum;
const
  ecCCAuth = $00000000;
  ecDCAuth = $00000001;
  ecGCAuth = $00000002;
  ecCheckAuth = $00000003;
  ecShowCardPresent = $00000004;
  ecEFTResReady = $00000005;
  ecControlsHardware = $00000006;
  ecValidateGiftExpDate = $00000007;
  ecUseMerchantWarehouse = $00000008;
  ecUseGeniusDevice = $00000009;
  ecCanUseGatewayOffline = $0000000A;
  ecCCAuthSettle = $0000000B;
  ecDCAuthSettle = $0000000C;
  ecGCAuthSettle = $0000000D;
  ecCheckAuthSettle = $0000000E;
  ecUseGCForBalance = $0000000F;
  ecUseGCForActAdd = $00000010;
  ecApplyRebates = $00000011;
  ecApplyCharity = $00000012;
  ecUseAdyen = $00000013;

// Constants for enum AttributePermissionsEnabled
type
  AttributePermissionsEnabled = TOleEnum;
const
  apeEnabled = $00000000;
  apeDisabled = $00000001;
  apeIgnore = $00000002;

// Constants for enum AttrPermission
type
  AttrPermission = TOleEnum;
const
  papAccess = $00000000;
  papEdit = $00000001;
  papPrint = $00000002;
  papActivate = $00000003;
  papDeactivate = $00000004;

// Constants for enum PermissionType
type
  PermissionType = TOleEnum;
const
  aptNormal = $00000000;
  aptOverride = $00000001;
  aptLog = $00000002;
  aptOverridden = $00000003;

// Constants for enum AttributeAssignmentCaps
type
  AttributeAssignmentCaps = TOleEnum;
const
  aacHandleAssignedBy = $00000000;

// Constants for enum SideButtonCaps
type
  SideButtonCaps = TOleEnum;
const
  sbcHandleBOUIEvent = $00000000;

// Constants for enum TenderCaps
type
  TenderCaps = TOleEnum;
const
  tpcStartCommitCancelTransaction = $00000000;

// Constants for enum ServerCaps
type
  ServerCaps = TOleEnum;
const
  scHandlesUIEvents = $00000000;

// Constants for enum LoginCaps
type
  LoginCaps = TOleEnum;
const
  lcUsesLoginValidation = $00000000;

// Constants for enum TenderDialogueCaps
type
  TenderDialogueCaps = TOleEnum;
const
  tdcUseDefaultDialog = $00000000;
  tdcAcceptsDATAvalues = $00000001;
  tdcAcceptsDATA2values = $00000002;

// Constants for enum NamedTriggerEventCodes
type
  NamedTriggerEventCodes = TOleEnum;
const
  ntUndefined = $00000000;
  ntUpdatePICompleted = $00000001;

// Constants for enum RediscoveryFlags
type
  RediscoveryFlags = TOleEnum;
const
  rfPause = $00000001;
  rfRediscoverCallerOnly = $00000002;
  rfRediscoverAllServers = $00000003;

// Constants for enum PluginStates
type
  PluginStates = TOleEnum;
const
  psInitialized = $00000000;
  psPrepared = $00000001;
  psCleanedUp = $00000002;
  psReloading = $00000003;

// Constants for enum LogEventTypes
type
  LogEventTypes = TOleEnum;
const
  leInformation = $00000000;
  leDebug = $00000001;
  leWarning = $00000002;
  leError = $00000003;
  leFatal = $00000004;

// Constants for enum aatAttributeAssignmentType
type
  aatAttributeAssignmentType = TOleEnum;
const
  aatAssignedByCore = $00000000;
  aatAssignedByUI = $00000001;

// Constants for enum InvoiceTypes
type
  InvoiceTypes = TOleEnum;
const
  itRegular = $00000000;
  itReturn = $00000002;
  itCheckIn = $00000003;
  itCheckOut = $00000004;
  itLost = $00000006;
  itHiSec = $00000007;

// Constants for enum DefaultCustomerType
type
  DefaultCustomerType = TOleEnum;
const
  dctLocal = $00000000;
  dctGlobal = $00000001;
  dctRegional = $00000002;
  dctNotShared = $00000003;

// Constants for enum LicenseFeatureStatus
type
  LicenseFeatureStatus = TOleEnum;
const
  lfsAllocated = $00000000;
  lfsNotAllocated = $00000001;
  lfsNotFound = $00000002;
  lfsExceedsMaxSeats = $00000003;

// Constants for enum PinPadCapabilities
type
  PinPadCapabilities = TOleEnum;
const
  ppcPrompt = $00000000;
  ppcPromptLanguage = $00000001;

// Constants for enum LineDisplayCapabilities
type
  LineDisplayCapabilities = TOleEnum;
const
  ldcapMerchantWareFormat = $00000000;

// Constants for enum InvnScannerCapability
type
  InvnScannerCapability = TOleEnum;
const
  iscapUseWSSubdir = $00000000;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IPluginAdapter = interface;
  IPluginAdapterDisp = dispinterface;
  IDiscover = interface;
  IDiscoverDisp = dispinterface;
  IAbstractPlugin = interface;
  IAbstractPluginDisp = dispinterface;
  IBOPlugin = interface;
  IBOPluginDisp = dispinterface;
  IAttributePlugin = interface;
  IAttributePluginDisp = dispinterface;
  IAttributeValidationPlugin = interface;
  IAttributeValidationPluginDisp = dispinterface;
  IAttributeAssignmentPlugin = interface;
  IAttributeAssignmentPluginDisp = dispinterface;
  IEntityUpdatePlugin = interface;
  IEntityUpdatePluginDisp = dispinterface;
  IItemAddRemovePlugin = interface;
  IItemAddRemovePluginDisp = dispinterface;
  ISideButtonPlugin = interface;
  ISideButtonPluginDisp = dispinterface;
  ICustomAttributePlugin = interface;
  ICustomAttributePluginDisp = dispinterface;
  IPrintPlugin = interface;
  IPrintPluginDisp = dispinterface;
  IEFTPlugin = interface;
  IEFTPluginDisp = dispinterface;
  IAttributeCalculationPlugin = interface;
  IAttributeCalculationPluginDisp = dispinterface;
  IHardwarePlugin = interface;
  IHardwarePluginDisp = dispinterface;
  IDisplayPlugin = interface;
  IDisplayPluginDisp = dispinterface;
  ICashDrawerPlugin = interface;
  ICashDrawerPluginDisp = dispinterface;
  IMSRPlugin = interface;
  IMSRPluginDisp = dispinterface;
  ICheckImageScannerPlugin = interface;
  ICheckImageScannerPluginDisp = dispinterface;
  IMICRPlugin = interface;
  IMICRPluginDisp = dispinterface;
  IPinPadPlugin = interface;
  IPinPadPluginDisp = dispinterface;
  IScalePlugin = interface;
  IScalePluginDisp = dispinterface;
  IPOSStationAdapter = interface;
  IPOSStationAdapterDisp = dispinterface;
  IConfigure = interface;
  IConfigureDisp = dispinterface;
  IBarCodeScannerPlugin = interface;
  IBarCodeScannerPluginDisp = dispinterface;
  IPrinterPlugin = interface;
  IPrinterPluginDisp = dispinterface;
  ITenderPlugin = interface;
  ITenderPluginDisp = dispinterface;
  IEFTAdapter = interface;
  IEFTAdapterDisp = dispinterface;
  ISigCapPlugin = interface;
  ISigCapPluginDisp = dispinterface;
  IInventoryScannerPlugin = interface;
  IInventoryScannerPluginDisp = dispinterface;
  IServerPlugin = interface;
  IServerPluginDisp = dispinterface;
  ILoginPlugin = interface;
  ILoginPluginDisp = dispinterface;
  IFiscalPrinterPlugin = interface;
  IFiscalPrinterPluginDisp = dispinterface;
  ITenderDialoguePlugin = interface;
  ITenderDialoguePluginDisp = dispinterface;
  INamedTriggerPlugin = interface;
  INamedTriggerPluginDisp = dispinterface;
  IApplicationPlugin = interface;
  IApplicationPluginDisp = dispinterface;
  IApplicationPluginAdapter = interface;
  IApplicationPluginAdapterDisp = dispinterface;
  IRProServicesConsumer = interface;
  IRProServicesConsumerDisp = dispinterface;
  IRProServicesProducer = interface;
  IRProServicesProducerDisp = dispinterface;
  ILicense = interface;
  ILicenseDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  AttributeValidationPlugin = IAttributeValidationPlugin;
  AttributeAssignmentPlugin = IAttributeAssignmentPlugin;
  EntityUpdatePlugin = IEntityUpdatePlugin;
  ItemAddRemovePlugin = IItemAddRemovePlugin;
  SideButtonPlugin = ISideButtonPlugin;
  CustomAttributePlugin = ICustomAttributePlugin;
  PrintPlugin = IPrintPlugin;
  EFTPlugin = IEFTPlugin;
  AttributeCalculationPlugin = IAttributeCalculationPlugin;
  Discover = IDiscover;
  DisplayPlugin = IDisplayPlugin;
  CashDrawerPlugin = ICashDrawerPlugin;
  MSRPlugin = IMSRPlugin;
  CheckImageScannerPlugin = ICheckImageScannerPlugin;
  MICRPlugin = IMICRPlugin;
  PinPadPlugin = IPinPadPlugin;
  ScalePlugin = IScalePlugin;
  BarCodeScannerPlugin = IBarCodeScannerPlugin;
  PrinterPlugin = IPrinterPlugin;
  TenderPlugin = ITenderPlugin;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PUserType1 = ^TGUID; {*}


// *********************************************************************//
// Interface: IPluginAdapter
// Flags:     (6464) Dual OleAutomation Replaceable Dispatchable
// GUID:      {3C97FFAF-22AD-4CC5-9FC8-885874F15805}
// *********************************************************************//
  IPluginAdapter = interface(IDispatch)
    ['{3C97FFAF-22AD-4CC5-9FC8-885874F15805}']
    function BOUpdateDataSetRecords(BOHandle: Integer; IncludeRefs: WordBool): Integer; safecall;
    function BOSetAttributeValueByName(BOHandle: Integer; AttrName: PAnsiChar; AValue: OleVariant): Integer; safecall;
    function BOGetAttributeValueByName(BOHandle: Integer; AttrName: PAnsiChar): OleVariant; safecall;
    function BOSetAttributeValues(BOHandle: Integer; AAttributeNames: OleVariant; AValue: OleVariant): Integer; safecall;
    function BOGetAttributeValues(BOHandle: Integer; AAttributeNames: OleVariant): OleVariant; safecall;
    function BOGetRepEntityId(BOHandle: Integer): Integer; safecall;
    function BOGetState(BOHandle: Integer): Integer; safecall;
    function BOGetInstanceActive(BOHandle: Integer): WordBool; safecall;
    function BOGetActiveDataSetId(BOHandle: Integer): Integer; safecall;
    function BOGetReadOnly(BOHandle: Integer): WordBool; safecall;
    function BOSetReadOnly(BOHandle: Integer; B: WordBool): Integer; safecall;
    function BOGetActive(BOHandle: Integer): WordBool; safecall;
    function BOSetActive(BOHandle: Integer; B: WordBool): Integer; safecall;
    function BOGetUniqueId(BOHandle: Integer): Integer; safecall;
    function BOGetCopyUniqueId(BOHandle: Integer): OleVariant; safecall;
    function BOGetModified(BOHandle: Integer): WordBool; safecall;
    function BOGetCommitOnPost(BOHandle: Integer): WordBool; safecall;
    function BOSetCommitOnPost(BOHandle: Integer; B: WordBool): Integer; safecall;
    function BOIsAttributeInList(BOHandle: Integer; AAttributeName: PAnsiChar): WordBool; safecall;
    function BOIsAttributeInInstance(BOHandle: Integer; AAttributeName: PAnsiChar): WordBool; safecall;
    function BOClearListIncluded(BOHandle: Integer): Integer; safecall;
    function BOClearInstanceIncluded(BOHandle: Integer): Integer; safecall;
    function BOUpdateListCollections(BOHandle: Integer): Integer; safecall;
    function BOUpdateInstanceCollections(BOHandle: Integer): Integer; safecall;
    function BOUpdateListDataSet(BOHandle: Integer; AForceRefresh: WordBool; 
                                 AForceDataSetCreation: WordBool): WordBool; safecall;
    function BOUpdateInstanceDataSet(BOHandle: Integer; AForceRefresh: WordBool; 
                                     AForceDataSetCreation: WordBool): WordBool; safecall;
    function BOOpen(BOHandle: Integer): Integer; safecall;
    function BOClear(BOHandle: Integer): Integer; safecall;
    function BOClose(BOHandle: Integer): Integer; safecall;
    function BOCloseStandalone(BOHandle: Integer): Integer; safecall;
    function BOEdit(BOHandle: Integer): Integer; safecall;
    function BOInsert(BOHandle: Integer): Integer; safecall;
    function BODelete(BOHandle: Integer): Integer; safecall;
    function BOPost(BOHandle: Integer): Integer; safecall;
    function BOPostEx(BOHandle: Integer; ACancelOnError: WordBool): Integer; safecall;
    function BOCancel(BOHandle: Integer): Integer; safecall;
    function BORefresh(BOHandle: Integer): Integer; safecall;
    function BOFirst(BOHandle: Integer): Integer; safecall;
    function BONext(BOHandle: Integer): Integer; safecall;
    function BOPrior(BOHandle: Integer): Integer; safecall;
    function BOCopy(BOHandle: Integer): Integer; safecall;
    function BORollBack(BOHandle: Integer): Integer; safecall;
    function BOF(BOHandle: Integer): WordBool; safecall;
    function EOF(BOHandle: Integer): WordBool; safecall;
    function BOIsEmpty(BOHandle: Integer): WordBool; safecall;
    function BODisableDataSetControls(BOHandle: Integer; ASkipIfEdit: WordBool): Integer; safecall;
    function BOEnableDataSetControls(BOHandle: Integer): Integer; safecall;
    function BOUpdateActiveInstance(BOHandle: Integer; AForce: WordBool): Integer; safecall;
    function BORefreshRecord(BOHandle: Integer; AForce: WordBool; ARefreshCollection: WordBool): Integer; safecall;
    function BOPostAllDataSets(BOHandle: Integer; PostCollections: WordBool): Integer; safecall;
    function BODisableLayoutNotifier(BOHandle: Integer): Integer; safecall;
    function BOEnableLayoutNotifier(BOHandle: Integer): Integer; safecall;
    function BOGetPropValById(BOHandle: Integer; AId: Integer): OleVariant; safecall;
    function BOGetPosition(BOHandle: Integer; var APosition: OleVariant): Integer; safecall;
    function BOLocatePosition(BOHandle: Integer; APosition: OleVariant): WordBool; safecall;
    function BOSetTempClosingState(BOHandle: Integer): Integer; safecall;
    function BOClearTempClosingState(BOHandle: Integer): Integer; safecall;
    function BORecalculateAttribute(BOHandle: Integer; AAttributeName: PAnsiChar): Integer; safecall;
    function BOClearActiveFakeValues(BOHandle: Integer): Integer; safecall;
    function BOIsEntity(BOHandle: Integer; AEntityId: Integer): WordBool; safecall;
    function BOIsEntityArray(BOHandle: Integer; AEntityIds: OleVariant): WordBool; safecall;
    function BODisableAccessSecurity(BOHandle: Integer): Integer; safecall;
    function BOEnableAccessSecurity(BOHandle: Integer): Integer; safecall;
    function BODisableSecurity(BOHandle: Integer): Integer; safecall;
    function BOEnableSecurity(BOHandle: Integer): Integer; safecall;
    function Connect(RoleName: PAnsiChar; Username: PAnsiChar; Password: PAnsiChar): WordBool; safecall;
    function CreateBOByID(BOID: Integer): Integer; safecall;
    function CreateBOByName(BOName: PAnsiChar): Integer; safecall;
    function Disconnect: Integer; safecall;
    function UpdatePreferences(const Preference: IXMLDOMElement): Integer; safecall;
    function Get_AllBONames: OleVariant; safecall;
    procedure APIVersion(out MajorVersion: Integer; out MinorVersion: Integer; out Revision: Integer); safecall;
    function BOGetAttributeNameList(BOHandle: Integer): OleVariant; safecall;
    function ExecSQL(SQL: PAnsiChar; var ResultSet: OleVariant): Integer; safecall;
    function BOGetPref(BOHandle: Integer; APref: Integer): OleVariant; safecall;
    function CloneBOHandle(SrcBOHandle: Integer; const SrcAdapter: IPluginAdapter): Integer; safecall;
    function Get_Reference: Integer; safecall;
    function GetHandleForRootBO(BOHandle: Integer): Integer; safecall;
    function GetReferenceBOForAttribute(BOHandle: Integer; AAttributeName: PAnsiChar): Integer; safecall;
    function SbsGetPref(ASbs: Integer; APref: Integer): OleVariant; safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    function BOFocusAttr(BOHandle: Integer; AAttributeName: PAnsiChar): Integer; safecall;
    function BOIncludeAttrForced(BOHandle: Integer; AAttributeName: PAnsiChar; AInclude: WordBool): Integer; safecall;
    function BOIncludeAttrIntoInstance(BOHandle: Integer; AAttributeName: PAnsiChar; 
                                       AInclude: WordBool; AForce: WordBool): Integer; safecall;
    function BOIncludeAttrIntoList(BOHandle: Integer; AAttributeName: PAnsiChar; 
                                   AInclude: WordBool; AForce: WordBool): Integer; safecall;
    function BOLocateByAttributes(BOHandle: Integer; AAttributeNames: OleVariant; 
                                  AAttributeValues: OleVariant): Integer; safecall;
    function BOSetFilter(BOHandle: Integer; ADomain: Integer; AValue: OleVariant; 
                         AOperation: Integer; AFilterData: WordBool; AFilterLookup: WordBool): Integer; safecall;
    function GetSecurityPermission(AApplicationID: Integer; APermissionID: Integer): WordBool; safecall;
    function BOGetAttrPropVal(BOHandle: Integer; AAttributeName: PAnsiChar; APropertyID: Integer): OleVariant; safecall;
    function BOGetAttrPropValues(BOHandle: Integer; AAttributeName: PAnsiChar; 
                                 APropertyIDs: OleVariant): OleVariant; safecall;
    function BOSetFilterAttr(BOHandle: Integer; AAttributeName: PAnsiChar; AValue: OleVariant; 
                             AOperation: Integer; AFilterData: WordBool; AFilterLookup: WordBool): Integer; safecall;
    function Get_ChildBOList: OleVariant; safecall;
    function GetBOEntityProperties(ABOType: Integer): PAnsiChar; safecall;
    function GetBOTypeForEntityID(AEntityId: Integer): Integer; safecall;
    function BOLast(BOHandle: Integer): Integer; safecall;
    function BOCanBeCreated(BOHandle: Integer): WordBool; safecall;
    function BOSortByDomain(BOHandle: Integer; ADomain: Integer; ASortOrder: Integer; 
                            AReopen: WordBool): Integer; safecall;
    function BOSortByAttribute(BOHandle: Integer; AAttributeName: PAnsiChar; ASortOrder: Integer; 
                               AReopen: WordBool): Integer; safecall;
    function Get_LanguageName: PAnsiChar; safecall;
    function Get_LanguageCodePage: Integer; safecall;
    function DSCreateVendor(AVendorName: PAnsiChar): PAnsiChar; safecall;
    procedure DSModifyVendor(AVendorSid: PAnsiChar; ANewName: PAnsiChar); safecall;
    procedure DSDropVendor(AVendorSid: PAnsiChar); safecall;
    function DSGetVendorSID(AVendorName: PAnsiChar): PAnsiChar; safecall;
    function DSCreateDataset(ADatasetName: PAnsiChar; AVendorSid: PAnsiChar; ACMSObject: PAnsiChar): PAnsiChar; safecall;
    procedure DSModifyDataset(ADatasetSid: PAnsiChar; ANewDatasetName: PAnsiChar; 
                              ANewCMSObject: PAnsiChar); safecall;
    procedure DSDropDataset(ADatasetSid: PAnsiChar; ACascade: WordBool); safecall;
    procedure DSDeleteDatasetData(ADatasetSid: PAnsiChar); safecall;
    function DSInsertIndex(ADatasetSid: PAnsiChar; ARecordSid: PAnsiChar; ALookupKey1: PAnsiChar; 
                           ALookupKey2: PAnsiChar; ALookupKey3: PAnsiChar; ACMSRefKey1: PAnsiChar; 
                           ACMSRefKey2: Integer; ACMSRefKey3: Integer; ACMSRefKey4: Integer; 
                           ACMSRefKey5: PAnsiChar): PAnsiChar; safecall;
    procedure DSModifyIndexLookup(ADataRecordSid: PAnsiChar; ALookupKey1: PAnsiChar; 
                                  ALookupKey2: PAnsiChar; ALookupKey3: PAnsiChar); safecall;
    procedure DSModifyIndexReference(ADataRecordSid: PAnsiChar; ACMSRefKey1: PAnsiChar; 
                                     ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                     ACMSRefKey4: Integer; ACMSRefKey5: PAnsiChar); safecall;
    procedure DSDeleteIndex(ADatasetSid: PAnsiChar; ARecSid: PAnsiChar; ALookupKey1: PAnsiChar; 
                            ALookupKey2: PAnsiChar; ALookupKey3: PAnsiChar; ACMSRefKey1: PAnsiChar; 
                            ACMSRefKey2: Integer; ACMSRefKey3: Integer; ACMSRefKey4: Integer; 
                            ACMSRefKey5: PAnsiChar); safecall;
    function DSInsertRecord(ADatasetSid: PAnsiChar; ARecordValue: PAnsiChar; 
                            ALookupKey1: PAnsiChar; ALookupKey2: PAnsiChar; ALookupKey3: PAnsiChar; 
                            ACMSRefKey1: PAnsiChar; ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                            ACMSRefKey4: Integer; ACMSRefKey5: PAnsiChar): PAnsiChar; safecall;
    procedure DSUpdateRecord(ADataRecordSid: PAnsiChar; ANewValue: PAnsiChar); safecall;
    procedure DSDeleteRecord(ADataRecordSid: PAnsiChar); safecall;
    function DSGetRecordSidByLookup(ADatasetSid: PAnsiChar; ALookupKey1: PAnsiChar; 
                                    ALookupKey2: PAnsiChar; ALookupKey3: PAnsiChar): PAnsiChar; safecall;
    function DSGetRecordSidByCMSReference(ADatasetSid: PAnsiChar; ACMSRefKey1: PAnsiChar; 
                                          ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                          ACMSRefKey4: Integer; ACMSRefKey5: PAnsiChar): PAnsiChar; safecall;
    function DSGetRecordBySid(ADataRecordSid: PAnsiChar; var ResultSet: OleVariant): Integer; safecall;
    function DSGetRecordByLookup(ADatasetSid: PAnsiChar; ALookupKey1: PAnsiChar; 
                                 ALookupKey2: PAnsiChar; ALookupKey3: PAnsiChar; 
                                 var ResultSet: OleVariant): Integer; safecall;
    function DSGetRecordByCMSReference(ADatasetSid: PAnsiChar; ACMSRefKey1: PAnsiChar; 
                                       ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                       ACMSRefKey4: Integer; ACMSRefKey5: PAnsiChar; 
                                       var ResultSet: OleVariant): Integer; safecall;
    function DSGetDatasetSid(AVendorSid: PAnsiChar; ADatasetName: PAnsiChar): PAnsiChar; safecall;
    function Get_LastErrorMessage: PAnsiChar; safecall;
    function Get_LastErrorCode: Integer; safecall;
    function Get_LastErrorFunction: PAnsiChar; safecall;
    procedure ClearLastError; safecall;
    function BOPrint(BOHandle: Integer; ADocDesignName: PAnsiChar; AOverridePrinterName: PAnsiChar): Integer; safecall;
    function DSCommit: Integer; safecall;
    function Get_CurrentUserId: PAnsiChar; safecall;
    function Get_CurrentEmplId: PAnsiChar; safecall;
    function BOExecuteMethod(BOHandle: Integer; AMethodName: PAnsiChar; 
                             AParameterNames: OleVariant; AParameterValues: OleVariant): OleVariant; safecall;
    function Rediscover(AFlags: Integer): Integer; safecall;
    procedure LogEvent(ALogEventType: Integer; AAreaName: PAnsiChar; AVerbosity: Integer; 
                       AMessage: PAnsiChar); safecall;
    function BOGetAttributePermissions(BOHandle: Integer; AttrName: PAnsiChar; 
                                       APermission: Integer; ACached: WordBool; AOvrCache: WordBool): WordBool; safecall;
    function Get_Connected: WordBool; safecall;
    function BOGetAttributeNamesIncludedInList(BOHandle: Integer): OleVariant; safecall;
    function BOGetAttributeNamesIncludedInInstance(BOHandle: Integer): OleVariant; safecall;
    function GetPrimaryID: PAnsiChar; safecall;
    property AllBONames: OleVariant read Get_AllBONames;
    property Reference: Integer read Get_Reference;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property ChildBOList: OleVariant read Get_ChildBOList;
    property LanguageName: PAnsiChar read Get_LanguageName;
    property LanguageCodePage: Integer read Get_LanguageCodePage;
    property LastErrorMessage: PAnsiChar read Get_LastErrorMessage;
    property LastErrorCode: Integer read Get_LastErrorCode;
    property LastErrorFunction: PAnsiChar read Get_LastErrorFunction;
    property CurrentUserId: PAnsiChar read Get_CurrentUserId;
    property CurrentEmplId: PAnsiChar read Get_CurrentEmplId;
    property Connected: WordBool read Get_Connected;
  end;

// *********************************************************************//
// DispIntf:  IPluginAdapterDisp
// Flags:     (6464) Dual OleAutomation Replaceable Dispatchable
// GUID:      {3C97FFAF-22AD-4CC5-9FC8-885874F15805}
// *********************************************************************//
  IPluginAdapterDisp = dispinterface
    ['{3C97FFAF-22AD-4CC5-9FC8-885874F15805}']
    function BOUpdateDataSetRecords(BOHandle: Integer; IncludeRefs: WordBool): Integer; dispid 201;
    function BOSetAttributeValueByName(BOHandle: Integer; 
                                       AttrName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       AValue: OleVariant): Integer; dispid 202;
    function BOGetAttributeValueByName(BOHandle: Integer; 
                                       AttrName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): OleVariant; dispid 203;
    function BOSetAttributeValues(BOHandle: Integer; AAttributeNames: OleVariant; AValue: OleVariant): Integer; dispid 204;
    function BOGetAttributeValues(BOHandle: Integer; AAttributeNames: OleVariant): OleVariant; dispid 205;
    function BOGetRepEntityId(BOHandle: Integer): Integer; dispid 206;
    function BOGetState(BOHandle: Integer): Integer; dispid 207;
    function BOGetInstanceActive(BOHandle: Integer): WordBool; dispid 208;
    function BOGetActiveDataSetId(BOHandle: Integer): Integer; dispid 209;
    function BOGetReadOnly(BOHandle: Integer): WordBool; dispid 210;
    function BOSetReadOnly(BOHandle: Integer; B: WordBool): Integer; dispid 211;
    function BOGetActive(BOHandle: Integer): WordBool; dispid 212;
    function BOSetActive(BOHandle: Integer; B: WordBool): Integer; dispid 213;
    function BOGetUniqueId(BOHandle: Integer): Integer; dispid 214;
    function BOGetCopyUniqueId(BOHandle: Integer): OleVariant; dispid 215;
    function BOGetModified(BOHandle: Integer): WordBool; dispid 216;
    function BOGetCommitOnPost(BOHandle: Integer): WordBool; dispid 217;
    function BOSetCommitOnPost(BOHandle: Integer; B: WordBool): Integer; dispid 218;
    function BOIsAttributeInList(BOHandle: Integer; 
                                 AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 219;
    function BOIsAttributeInInstance(BOHandle: Integer; 
                                     AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 220;
    function BOClearListIncluded(BOHandle: Integer): Integer; dispid 221;
    function BOClearInstanceIncluded(BOHandle: Integer): Integer; dispid 222;
    function BOUpdateListCollections(BOHandle: Integer): Integer; dispid 223;
    function BOUpdateInstanceCollections(BOHandle: Integer): Integer; dispid 224;
    function BOUpdateListDataSet(BOHandle: Integer; AForceRefresh: WordBool; 
                                 AForceDataSetCreation: WordBool): WordBool; dispid 225;
    function BOUpdateInstanceDataSet(BOHandle: Integer; AForceRefresh: WordBool; 
                                     AForceDataSetCreation: WordBool): WordBool; dispid 226;
    function BOOpen(BOHandle: Integer): Integer; dispid 227;
    function BOClear(BOHandle: Integer): Integer; dispid 228;
    function BOClose(BOHandle: Integer): Integer; dispid 229;
    function BOCloseStandalone(BOHandle: Integer): Integer; dispid 230;
    function BOEdit(BOHandle: Integer): Integer; dispid 231;
    function BOInsert(BOHandle: Integer): Integer; dispid 232;
    function BODelete(BOHandle: Integer): Integer; dispid 233;
    function BOPost(BOHandle: Integer): Integer; dispid 234;
    function BOPostEx(BOHandle: Integer; ACancelOnError: WordBool): Integer; dispid 235;
    function BOCancel(BOHandle: Integer): Integer; dispid 236;
    function BORefresh(BOHandle: Integer): Integer; dispid 237;
    function BOFirst(BOHandle: Integer): Integer; dispid 238;
    function BONext(BOHandle: Integer): Integer; dispid 239;
    function BOPrior(BOHandle: Integer): Integer; dispid 240;
    function BOCopy(BOHandle: Integer): Integer; dispid 241;
    function BORollBack(BOHandle: Integer): Integer; dispid 242;
    function BOF(BOHandle: Integer): WordBool; dispid 243;
    function EOF(BOHandle: Integer): WordBool; dispid 244;
    function BOIsEmpty(BOHandle: Integer): WordBool; dispid 245;
    function BODisableDataSetControls(BOHandle: Integer; ASkipIfEdit: WordBool): Integer; dispid 246;
    function BOEnableDataSetControls(BOHandle: Integer): Integer; dispid 247;
    function BOUpdateActiveInstance(BOHandle: Integer; AForce: WordBool): Integer; dispid 248;
    function BORefreshRecord(BOHandle: Integer; AForce: WordBool; ARefreshCollection: WordBool): Integer; dispid 249;
    function BOPostAllDataSets(BOHandle: Integer; PostCollections: WordBool): Integer; dispid 250;
    function BODisableLayoutNotifier(BOHandle: Integer): Integer; dispid 251;
    function BOEnableLayoutNotifier(BOHandle: Integer): Integer; dispid 252;
    function BOGetPropValById(BOHandle: Integer; AId: Integer): OleVariant; dispid 253;
    function BOGetPosition(BOHandle: Integer; var APosition: OleVariant): Integer; dispid 254;
    function BOLocatePosition(BOHandle: Integer; APosition: OleVariant): WordBool; dispid 255;
    function BOSetTempClosingState(BOHandle: Integer): Integer; dispid 256;
    function BOClearTempClosingState(BOHandle: Integer): Integer; dispid 257;
    function BORecalculateAttribute(BOHandle: Integer; 
                                    AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 258;
    function BOClearActiveFakeValues(BOHandle: Integer): Integer; dispid 259;
    function BOIsEntity(BOHandle: Integer; AEntityId: Integer): WordBool; dispid 260;
    function BOIsEntityArray(BOHandle: Integer; AEntityIds: OleVariant): WordBool; dispid 261;
    function BODisableAccessSecurity(BOHandle: Integer): Integer; dispid 262;
    function BOEnableAccessSecurity(BOHandle: Integer): Integer; dispid 263;
    function BODisableSecurity(BOHandle: Integer): Integer; dispid 264;
    function BOEnableSecurity(BOHandle: Integer): Integer; dispid 265;
    function Connect(RoleName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                     Username: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                     Password: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 266;
    function CreateBOByID(BOID: Integer): Integer; dispid 267;
    function CreateBOByName(BOName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 268;
    function Disconnect: Integer; dispid 269;
    function UpdatePreferences(const Preference: IXMLDOMElement): Integer; dispid 270;
    property AllBONames: OleVariant readonly dispid 272;
    procedure APIVersion(out MajorVersion: Integer; out MinorVersion: Integer; out Revision: Integer); dispid 273;
    function BOGetAttributeNameList(BOHandle: Integer): OleVariant; dispid 274;
    function ExecSQL(SQL: {NOT_OLEAUTO(PAnsiChar)}OleVariant; var ResultSet: OleVariant): Integer; dispid 275;
    function BOGetPref(BOHandle: Integer; APref: Integer): OleVariant; dispid 271;
    function CloneBOHandle(SrcBOHandle: Integer; const SrcAdapter: IPluginAdapter): Integer; dispid 276;
    property Reference: Integer readonly dispid 277;
    function GetHandleForRootBO(BOHandle: Integer): Integer; dispid 278;
    function GetReferenceBOForAttribute(BOHandle: Integer; 
                                        AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 279;
    function SbsGetPref(ASbs: Integer; APref: Integer): OleVariant; dispid 280;
    property Enabled: WordBool dispid 281;
    function BOFocusAttr(BOHandle: Integer; AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 282;
    function BOIncludeAttrForced(BOHandle: Integer; 
                                 AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 AInclude: WordBool): Integer; dispid 283;
    function BOIncludeAttrIntoInstance(BOHandle: Integer; 
                                       AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       AInclude: WordBool; AForce: WordBool): Integer; dispid 284;
    function BOIncludeAttrIntoList(BOHandle: Integer; 
                                   AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                   AInclude: WordBool; AForce: WordBool): Integer; dispid 285;
    function BOLocateByAttributes(BOHandle: Integer; AAttributeNames: OleVariant; 
                                  AAttributeValues: OleVariant): Integer; dispid 286;
    function BOSetFilter(BOHandle: Integer; ADomain: Integer; AValue: OleVariant; 
                         AOperation: Integer; AFilterData: WordBool; AFilterLookup: WordBool): Integer; dispid 287;
    function GetSecurityPermission(AApplicationID: Integer; APermissionID: Integer): WordBool; dispid 288;
    function BOGetAttrPropVal(BOHandle: Integer; 
                              AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              APropertyID: Integer): OleVariant; dispid 289;
    function BOGetAttrPropValues(BOHandle: Integer; 
                                 AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 APropertyIDs: OleVariant): OleVariant; dispid 290;
    function BOSetFilterAttr(BOHandle: Integer; AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AValue: OleVariant; AOperation: Integer; AFilterData: WordBool; 
                             AFilterLookup: WordBool): Integer; dispid 291;
    property ChildBOList: OleVariant readonly dispid 292;
    function GetBOEntityProperties(ABOType: Integer): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 293;
    function GetBOTypeForEntityID(AEntityId: Integer): Integer; dispid 294;
    function BOLast(BOHandle: Integer): Integer; dispid 295;
    function BOCanBeCreated(BOHandle: Integer): WordBool; dispid 296;
    function BOSortByDomain(BOHandle: Integer; ADomain: Integer; ASortOrder: Integer; 
                            AReopen: WordBool): Integer; dispid 297;
    function BOSortByAttribute(BOHandle: Integer; 
                               AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                               ASortOrder: Integer; AReopen: WordBool): Integer; dispid 298;
    property LanguageName: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 299;
    property LanguageCodePage: Integer readonly dispid 300;
    function DSCreateVendor(AVendorName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 400;
    procedure DSModifyVendor(AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ANewName: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 401;
    procedure DSDropVendor(AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 403;
    function DSGetVendorSID(AVendorName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 404;
    function DSCreateDataset(ADatasetName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ACMSObject: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 405;
    procedure DSModifyDataset(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              ANewDatasetName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              ANewCMSObject: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 406;
    procedure DSDropDataset(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACascade: WordBool); dispid 407;
    procedure DSDeleteDatasetData(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 408;
    function DSInsertIndex(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ARecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACMSRefKey2: Integer; 
                           ACMSRefKey3: Integer; ACMSRefKey4: Integer; 
                           ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 409;
    procedure DSModifyIndexLookup(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                  ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                  ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                  ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 410;
    procedure DSModifyIndexReference(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                     ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                     ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                     ACMSRefKey4: Integer; 
                                     ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 411;
    procedure DSDeleteIndex(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ARecSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACMSRefKey2: Integer; 
                            ACMSRefKey3: Integer; ACMSRefKey4: Integer; 
                            ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 412;
    function DSInsertRecord(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ARecordValue: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACMSRefKey2: Integer; 
                            ACMSRefKey3: Integer; ACMSRefKey4: Integer; 
                            ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 413;
    procedure DSUpdateRecord(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ANewValue: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 414;
    procedure DSDeleteRecord(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 415;
    function DSGetRecordSidByLookup(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                    ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                    ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                    ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 416;
    function DSGetRecordSidByCMSReference(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                          ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                          ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                          ACMSRefKey4: Integer; 
                                          ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 417;
    function DSGetRecordBySid(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              var ResultSet: OleVariant): Integer; dispid 418;
    function DSGetRecordByLookup(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 var ResultSet: OleVariant): Integer; dispid 419;
    function DSGetRecordByCMSReference(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                       ACMSRefKey4: Integer; 
                                       ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       var ResultSet: OleVariant): Integer; dispid 420;
    function DSGetDatasetSid(AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ADatasetName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 421;
    property LastErrorMessage: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 422;
    property LastErrorCode: Integer readonly dispid 423;
    property LastErrorFunction: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 424;
    procedure ClearLastError; dispid 425;
    function BOPrint(BOHandle: Integer; ADocDesignName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                     AOverridePrinterName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 426;
    function DSCommit: Integer; dispid 427;
    property CurrentUserId: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 428;
    property CurrentEmplId: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 429;
    function BOExecuteMethod(BOHandle: Integer; AMethodName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AParameterNames: OleVariant; AParameterValues: OleVariant): OleVariant; dispid 430;
    function Rediscover(AFlags: Integer): Integer; dispid 431;
    procedure LogEvent(ALogEventType: Integer; AAreaName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                       AVerbosity: Integer; AMessage: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 432;
    function BOGetAttributePermissions(BOHandle: Integer; 
                                       AttrName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       APermission: Integer; ACached: WordBool; AOvrCache: WordBool): WordBool; dispid 494;
    property Connected: WordBool readonly dispid 495;
    function BOGetAttributeNamesIncludedInList(BOHandle: Integer): OleVariant; dispid 496;
    function BOGetAttributeNamesIncludedInInstance(BOHandle: Integer): OleVariant; dispid 497;
    function GetPrimaryID: {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 498;
  end;

// *********************************************************************//
// Interface: IDiscover
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3BE47FB7-DCC2-4D0A-81CA-A3A6DFEF279A}
// *********************************************************************//
  IDiscover = interface(IDispatch)
    ['{3BE47FB7-DCC2-4D0A-81CA-A3A6DFEF279A}']
    function PluginGUIDs: OleVariant; safecall;
    procedure APIVersion(out MajorVersion: Integer; out MinorVersion: Integer; out Revision: Integer); safecall;
    function PluginModuleVersion: PAnsiChar; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDiscoverDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3BE47FB7-DCC2-4D0A-81CA-A3A6DFEF279A}
// *********************************************************************//
  IDiscoverDisp = dispinterface
    ['{3BE47FB7-DCC2-4D0A-81CA-A3A6DFEF279A}']
    function PluginGUIDs: OleVariant; dispid 201;
    procedure APIVersion(out MajorVersion: Integer; out MinorVersion: Integer; out Revision: Integer); dispid 202;
    function PluginModuleVersion: {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 203;
  end;

// *********************************************************************//
// Interface: IAbstractPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A22780F0-A55F-4E05-9C4D-A98FEB6A7A9F}
// *********************************************************************//
  IAbstractPlugin = interface(IDispatch)
    ['{A22780F0-A55F-4E05-9C4D-A98FEB6A7A9F}']
    function Get_Description: PAnsiChar; safecall;
    function Get_GUID: TGUID; safecall;
    function HandleEvent: WordBool; safecall;
    procedure CleanUp; safecall;
    function Get_Adapter: IPluginAdapter; safecall;
    procedure Set_Adapter(const Value: IPluginAdapter); safecall;
    function Prepare: WordBool; safecall;
    function Get_Priority: PluginPriority; safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    property Description: PAnsiChar read Get_Description;
    property GUID: TGUID read Get_GUID;
    property Adapter: IPluginAdapter read Get_Adapter write Set_Adapter;
    property Priority: PluginPriority read Get_Priority;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
  end;

// *********************************************************************//
// DispIntf:  IAbstractPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A22780F0-A55F-4E05-9C4D-A98FEB6A7A9F}
// *********************************************************************//
  IAbstractPluginDisp = dispinterface
    ['{A22780F0-A55F-4E05-9C4D-A98FEB6A7A9F}']
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IBOPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D769FFDE-3738-4A93-88AA-CE6357C6AD8E}
// *********************************************************************//
  IBOPlugin = interface(IAbstractPlugin)
    ['{D769FFDE-3738-4A93-88AA-CE6357C6AD8E}']
    function Get_BusinessObjectType: Integer; safecall;
    property BusinessObjectType: Integer read Get_BusinessObjectType;
  end;

// *********************************************************************//
// DispIntf:  IBOPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D769FFDE-3738-4A93-88AA-CE6357C6AD8E}
// *********************************************************************//
  IBOPluginDisp = dispinterface
    ['{D769FFDE-3738-4A93-88AA-CE6357C6AD8E}']
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IAttributePlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {341C81F8-D12B-4695-8D7C-1DB9D498C9A6}
// *********************************************************************//
  IAttributePlugin = interface(IBOPlugin)
    ['{341C81F8-D12B-4695-8D7C-1DB9D498C9A6}']
    function Get_AttributeName: PAnsiChar; safecall;
    procedure Set_AttributeName(Value: PAnsiChar); safecall;
    function AttrPermissionEnabled(APermission: Integer; APermType: Integer): Integer; safecall;
    property AttributeName: PAnsiChar read Get_AttributeName write Set_AttributeName;
  end;

// *********************************************************************//
// DispIntf:  IAttributePluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {341C81F8-D12B-4695-8D7C-1DB9D498C9A6}
// *********************************************************************//
  IAttributePluginDisp = dispinterface
    ['{341C81F8-D12B-4695-8D7C-1DB9D498C9A6}']
    property AttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 401;
    function AttrPermissionEnabled(APermission: Integer; APermType: Integer): Integer; dispid 402;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IAttributeValidationPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {80990049-A1B1-4336-B3DE-6F78F7485242}
// *********************************************************************//
  IAttributeValidationPlugin = interface(IAttributePlugin)
    ['{80990049-A1B1-4336-B3DE-6F78F7485242}']
    function PluginCapability(ACapability: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IAttributeValidationPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {80990049-A1B1-4336-B3DE-6F78F7485242}
// *********************************************************************//
  IAttributeValidationPluginDisp = dispinterface
    ['{80990049-A1B1-4336-B3DE-6F78F7485242}']
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property AttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 401;
    function AttrPermissionEnabled(APermission: Integer; APermType: Integer): Integer; dispid 402;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IAttributeAssignmentPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AF8F2EF4-D12B-4F5E-9881-9029E1CB0D1E}
// *********************************************************************//
  IAttributeAssignmentPlugin = interface(IAttributePlugin)
    ['{AF8F2EF4-D12B-4F5E-9881-9029E1CB0D1E}']
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    function HandleAssignedBy(AssignmentType: Integer; AData: OleVariant): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IAttributeAssignmentPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AF8F2EF4-D12B-4F5E-9881-9029E1CB0D1E}
// *********************************************************************//
  IAttributeAssignmentPluginDisp = dispinterface
    ['{AF8F2EF4-D12B-4F5E-9881-9029E1CB0D1E}']
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    function HandleAssignedBy(AssignmentType: Integer; AData: OleVariant): WordBool; dispid 501;
    property AttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 401;
    function AttrPermissionEnabled(APermission: Integer; APermType: Integer): Integer; dispid 402;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IEntityUpdatePlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BB7F6968-CD4A-46D2-822F-6BA885BF2055}
// *********************************************************************//
  IEntityUpdatePlugin = interface(IBOPlugin)
    ['{BB7F6968-CD4A-46D2-822F-6BA885BF2055}']
    function BeforeUpdate: WordBool; safecall;
    procedure AfterUpdate; safecall;
    procedure OnCancel; safecall;
    function BeforeInsert: WordBool; safecall;
    procedure AfterInsert; safecall;
    function BeforeEdit: WordBool; safecall;
    procedure AfterEdit; safecall;
    function BeforeDelete: WordBool; safecall;
    procedure AfterDelete; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    function BeforeReversal(AEmplId: Integer; var AComment: PAnsiChar; var AComment2: PAnsiChar): WordBool; safecall;
    procedure AfterReversal(ANewDocSid: PAnsiChar); safecall;
    function BeforeCopy: WordBool; safecall;
    procedure AfterCopy; safecall;
  end;

// *********************************************************************//
// DispIntf:  IEntityUpdatePluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BB7F6968-CD4A-46D2-822F-6BA885BF2055}
// *********************************************************************//
  IEntityUpdatePluginDisp = dispinterface
    ['{BB7F6968-CD4A-46D2-822F-6BA885BF2055}']
    function BeforeUpdate: WordBool; dispid 401;
    procedure AfterUpdate; dispid 402;
    procedure OnCancel; dispid 403;
    function BeforeInsert: WordBool; dispid 404;
    procedure AfterInsert; dispid 405;
    function BeforeEdit: WordBool; dispid 406;
    procedure AfterEdit; dispid 407;
    function BeforeDelete: WordBool; dispid 408;
    procedure AfterDelete; dispid 409;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    function BeforeReversal(AEmplId: Integer; var AComment: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            var AComment2: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 410;
    procedure AfterReversal(ANewDocSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 411;
    function BeforeCopy: WordBool; dispid 412;
    procedure AfterCopy; dispid 413;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IItemAddRemovePlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A5AEB13-F3B2-4BEE-A94E-F160BDD4B465}
// *********************************************************************//
  IItemAddRemovePlugin = interface(IBOPlugin)
    ['{5A5AEB13-F3B2-4BEE-A94E-F160BDD4B465}']
    function BeforeItemRemove(ItemBOHandle: Integer): WordBool; safecall;
    function BeforeItemAdd(ItemBOHandle: Integer): WordBool; safecall;
    procedure AfterItemAdd(ItemBOHandle: Integer); safecall;
    function BeforeEmptyItemAdd(ItemBOHandle: Integer): WordBool; safecall;
    procedure AfterEmptyItemAdd(ItemBOHandle: Integer); safecall;
    function BeforeNewItemCommit(ItemBOHandle: Integer): WordBool; safecall;
    procedure AfterNewItemCommit(ItemBOHandle: Integer); safecall;
    function BeforeChooseProcessItem(ItemBOHandle: Integer; ADocSID: PAnsiChar; 
                                     var AItemData: PAnsiChar; var AModified: WordBool): WordBool; safecall;
    procedure AfterChooseProcessItem(ItemBOHandle: Integer; ADocSID: PAnsiChar; AItemData: PAnsiChar); safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    function BeginChooseProcessItems(AContext: OleVariant): WordBool; safecall;
    procedure EndChooseProcessItems(AResults: OleVariant); safecall;
    function AfterItemRemove(ItemBOHandle: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IItemAddRemovePluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A5AEB13-F3B2-4BEE-A94E-F160BDD4B465}
// *********************************************************************//
  IItemAddRemovePluginDisp = dispinterface
    ['{5A5AEB13-F3B2-4BEE-A94E-F160BDD4B465}']
    function BeforeItemRemove(ItemBOHandle: Integer): WordBool; dispid 401;
    function BeforeItemAdd(ItemBOHandle: Integer): WordBool; dispid 402;
    procedure AfterItemAdd(ItemBOHandle: Integer); dispid 403;
    function BeforeEmptyItemAdd(ItemBOHandle: Integer): WordBool; dispid 404;
    procedure AfterEmptyItemAdd(ItemBOHandle: Integer); dispid 405;
    function BeforeNewItemCommit(ItemBOHandle: Integer): WordBool; dispid 406;
    procedure AfterNewItemCommit(ItemBOHandle: Integer); dispid 407;
    function BeforeChooseProcessItem(ItemBOHandle: Integer; 
                                     ADocSID: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                     var AItemData: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                     var AModified: WordBool): WordBool; dispid 408;
    procedure AfterChooseProcessItem(ItemBOHandle: Integer; 
                                     ADocSID: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                     AItemData: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 409;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    function BeginChooseProcessItems(AContext: OleVariant): WordBool; dispid 410;
    procedure EndChooseProcessItems(AResults: OleVariant); dispid 411;
    function AfterItemRemove(ItemBOHandle: Integer): WordBool; dispid 412;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: ISideButtonPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D0D606DF-6D0B-458F-8A99-18FA0B32696F}
// *********************************************************************//
  ISideButtonPlugin = interface(IBOPlugin)
    ['{D0D606DF-6D0B-458F-8A99-18FA0B32696F}']
    function Get_Caption: PAnsiChar; safecall;
    function Get_PictureFilename: PAnsiChar; safecall;
    function Get_ButtonEnabled: WordBool; safecall;
    function Get_UseLayoutManager: WordBool; safecall;
    function Get_Checked: WordBool; safecall;
    function Get_Hint: PAnsiChar; safecall;
    function Get_LayoutActionName: PAnsiChar; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    function HandleBOUIEvent(ABOHandle: Integer; AEventType: PAnsiChar; AParameters: OleVariant; 
                             var AReturnValues: OleVariant; var AHandled: WordBool): WordBool; safecall;
    function Get_BOUIEventsSupported: OleVariant; safecall;
    property Caption: PAnsiChar read Get_Caption;
    property PictureFilename: PAnsiChar read Get_PictureFilename;
    property ButtonEnabled: WordBool read Get_ButtonEnabled;
    property UseLayoutManager: WordBool read Get_UseLayoutManager;
    property Checked: WordBool read Get_Checked;
    property Hint: PAnsiChar read Get_Hint;
    property LayoutActionName: PAnsiChar read Get_LayoutActionName;
    property BOUIEventsSupported: OleVariant read Get_BOUIEventsSupported;
  end;

// *********************************************************************//
// DispIntf:  ISideButtonPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D0D606DF-6D0B-458F-8A99-18FA0B32696F}
// *********************************************************************//
  ISideButtonPluginDisp = dispinterface
    ['{D0D606DF-6D0B-458F-8A99-18FA0B32696F}']
    property Caption: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 401;
    property PictureFilename: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 402;
    property ButtonEnabled: WordBool readonly dispid 403;
    property UseLayoutManager: WordBool readonly dispid 404;
    property Checked: WordBool readonly dispid 407;
    property Hint: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 406;
    property LayoutActionName: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 408;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    function HandleBOUIEvent(ABOHandle: Integer; AEventType: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AParameters: OleVariant; var AReturnValues: OleVariant; 
                             var AHandled: WordBool): WordBool; dispid 405;
    property BOUIEventsSupported: OleVariant readonly dispid 409;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: ICustomAttributePlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0BD8314-CA21-41E8-BA0D-BA0D470193DA}
// *********************************************************************//
  ICustomAttributePlugin = interface(IAttributePlugin)
    ['{B0BD8314-CA21-41E8-BA0D-BA0D470193DA}']
    function Get_DomainType: Integer; safecall;
    function Get_ShortDisplayLabel: PAnsiChar; safecall;
    function Get_LongDisplayLabel: PAnsiChar; safecall;
    function Get_Hint: PAnsiChar; safecall;
    function Get_Visible: WordBool; safecall;
    function Get_Size: Integer; safecall;
    function Get_FormViewAvailable: WordBool; safecall;
    function Get_ListViewAvailable: WordBool; safecall;
    function Get_EditFormat: PAnsiChar; safecall;
    function Get_Required: WordBool; safecall;
    function Get_ReadOnly: WordBool; safecall;
    function GetData: OleVariant; safecall;
    procedure SetData(AData: OleVariant); safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    property DomainType: Integer read Get_DomainType;
    property ShortDisplayLabel: PAnsiChar read Get_ShortDisplayLabel;
    property LongDisplayLabel: PAnsiChar read Get_LongDisplayLabel;
    property Hint: PAnsiChar read Get_Hint;
    property Visible: WordBool read Get_Visible;
    property Size: Integer read Get_Size;
    property FormViewAvailable: WordBool read Get_FormViewAvailable;
    property ListViewAvailable: WordBool read Get_ListViewAvailable;
    property EditFormat: PAnsiChar read Get_EditFormat;
    property Required: WordBool read Get_Required;
    property ReadOnly: WordBool read Get_ReadOnly;
  end;

// *********************************************************************//
// DispIntf:  ICustomAttributePluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B0BD8314-CA21-41E8-BA0D-BA0D470193DA}
// *********************************************************************//
  ICustomAttributePluginDisp = dispinterface
    ['{B0BD8314-CA21-41E8-BA0D-BA0D470193DA}']
    property DomainType: Integer readonly dispid 501;
    property ShortDisplayLabel: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 502;
    property LongDisplayLabel: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 503;
    property Hint: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 504;
    property Visible: WordBool readonly dispid 505;
    property Size: Integer readonly dispid 506;
    property FormViewAvailable: WordBool readonly dispid 507;
    property ListViewAvailable: WordBool readonly dispid 508;
    property EditFormat: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 509;
    property Required: WordBool readonly dispid 510;
    property ReadOnly: WordBool readonly dispid 511;
    function GetData: OleVariant; dispid 512;
    procedure SetData(AData: OleVariant); dispid 513;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property AttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 401;
    function AttrPermissionEnabled(APermission: Integer; APermType: Integer): Integer; dispid 402;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IPrintPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8E298576-2A0A-4A63-8DBA-6E485A853245}
// *********************************************************************//
  IPrintPlugin = interface(IBOPlugin)
    ['{8E298576-2A0A-4A63-8DBA-6E485A853245}']
    function Get_XMLDoc: IXMLDOMDocument; safecall;
    procedure Set_XMLDoc(const Value: IXMLDOMDocument); safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    property XMLDoc: IXMLDOMDocument read Get_XMLDoc write Set_XMLDoc;
  end;

// *********************************************************************//
// DispIntf:  IPrintPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8E298576-2A0A-4A63-8DBA-6E485A853245}
// *********************************************************************//
  IPrintPluginDisp = dispinterface
    ['{8E298576-2A0A-4A63-8DBA-6E485A853245}']
    property XMLDoc: IXMLDOMDocument dispid 302;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IEFTPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {295211F6-0832-487C-82B4-93B5A8147878}
// *********************************************************************//
  IEFTPlugin = interface(IBOPlugin)
    ['{295211F6-0832-487C-82B4-93B5A8147878}']
    function Settle(TenderType: Integer; All: WordBool): WordBool; safecall;
    function StartTransaction: WordBool; safecall;
    function AddTender(TenderType: Integer; var Data: PAnsiChar): Integer; safecall;
    function CommitTransaction: WordBool; safecall;
    function CancelTransaction: WordBool; safecall;
    function RemoveTender(TenderIndex: Integer): WordBool; safecall;
    function IsTenderActiveInBatch(TenderID: PAnsiChar): WordBool; safecall;
    function IsOnline(TenderType: Integer): WordBool; safecall;
    function Capability(ACapability: Integer): WordBool; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IEFTPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {295211F6-0832-487C-82B4-93B5A8147878}
// *********************************************************************//
  IEFTPluginDisp = dispinterface
    ['{295211F6-0832-487C-82B4-93B5A8147878}']
    function Settle(TenderType: Integer; All: WordBool): WordBool; dispid 505;
    function StartTransaction: WordBool; dispid 507;
    function AddTender(TenderType: Integer; var Data: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 508;
    function CommitTransaction: WordBool; dispid 509;
    function CancelTransaction: WordBool; dispid 510;
    function RemoveTender(TenderIndex: Integer): WordBool; dispid 501;
    function IsTenderActiveInBatch(TenderID: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 502;
    function IsOnline(TenderType: Integer): WordBool; dispid 401;
    function Capability(ACapability: Integer): WordBool; dispid 402;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IAttributeCalculationPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E50F1E96-9E14-4571-87CB-918210E04E71}
// *********************************************************************//
  IAttributeCalculationPlugin = interface(IAttributePlugin)
    ['{E50F1E96-9E14-4571-87CB-918210E04E71}']
    function PluginCapability(ACapability: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IAttributeCalculationPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E50F1E96-9E14-4571-87CB-918210E04E71}
// *********************************************************************//
  IAttributeCalculationPluginDisp = dispinterface
    ['{E50F1E96-9E14-4571-87CB-918210E04E71}']
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property AttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 401;
    function AttrPermissionEnabled(APermission: Integer; APermType: Integer): Integer; dispid 402;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IHardwarePlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {99588FCF-F272-4174-8FCE-BA98262AD4F3}
// *********************************************************************//
  IHardwarePlugin = interface(IAbstractPlugin)
    ['{99588FCF-F272-4174-8FCE-BA98262AD4F3}']
    function Get_CashRegister: IPOSStationAdapter; safecall;
    procedure Set_CashRegister(const Value: IPOSStationAdapter); safecall;
    procedure Configure; safecall;
    function Test: Integer; safecall;
    function Get_HardwareType: Integer; safecall;
    procedure Set_HardwareType(Value: Integer); safecall;
    function Get_DeviceNumber: Integer; safecall;
    procedure Set_DeviceNumber(Value: Integer); safecall;
    property CashRegister: IPOSStationAdapter read Get_CashRegister write Set_CashRegister;
    property HardwareType: Integer read Get_HardwareType write Set_HardwareType;
    property DeviceNumber: Integer read Get_DeviceNumber write Set_DeviceNumber;
  end;

// *********************************************************************//
// DispIntf:  IHardwarePluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {99588FCF-F272-4174-8FCE-BA98262AD4F3}
// *********************************************************************//
  IHardwarePluginDisp = dispinterface
    ['{99588FCF-F272-4174-8FCE-BA98262AD4F3}']
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IDisplayPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C923C306-F671-480D-A925-FBF681F6D0CE}
// *********************************************************************//
  IDisplayPlugin = interface(IHardwarePlugin)
    ['{C923C306-F671-480D-A925-FBF681F6D0CE}']
    function ClearDisplay: Integer; safecall;
    function ClearText(Line: Integer): Integer; safecall;
    function DisplayText(Line: Integer; AText: PAnsiChar; TextPlace: LineDisplayTextPlacement): Integer; safecall;
    function Get_BlinkRate: Integer; safecall;
    procedure Set_BlinkRate(Value: Integer); safecall;
    function Get_CharacterSet: Integer; safecall;
    procedure Set_CharacterSet(Value: Integer); safecall;
    function Get_CharacterSetList: PWideChar; safecall;
    function Get_Columns: Integer; safecall;
    function Get_CurrentWindow: Integer; safecall;
    procedure Set_CurrentWindow(Value: Integer); safecall;
    function Get_CursorColumn: Integer; safecall;
    procedure Set_CursorColumn(Value: Integer); safecall;
    function Get_CursorRow: Integer; safecall;
    procedure Set_CursorRow(Value: Integer); safecall;
    function Get_CursorType: Integer; safecall;
    procedure Set_CursorType(Value: Integer); safecall;
    function Get_CursorUpdate: WordBool; safecall;
    procedure Set_CursorUpdate(Value: WordBool); safecall;
    function Get_CustomGlyphList: PWideChar; safecall;
    function Get_DeviceBrightness: Integer; safecall;
    procedure Set_DeviceBrightness(Value: Integer); safecall;
    function Get_DeviceColumns: Integer; safecall;
    function Get_DeviceDescriptors: Integer; safecall;
    function Get_DeviceRows: Integer; safecall;
    function Get_DeviceWindows: Integer; safecall;
    function Get_GlyphHeight: Integer; safecall;
    function Get_GlyphWidth: Integer; safecall;
    function Get_InterCharacterWait: Integer; safecall;
    procedure Set_InterCharacterWait(Value: Integer); safecall;
    function Get_MapCharacterSet: WordBool; safecall;
    procedure Set_MapCharacterSet(Value: WordBool); safecall;
    function Get_MarqueeFormat: Integer; safecall;
    procedure Set_MarqueeFormat(Value: Integer); safecall;
    function Get_MarqueeRepeatWait: Integer; safecall;
    procedure Set_MarqueeRepeatWait(Value: Integer); safecall;
    function Get_MarqueeType: Integer; safecall;
    procedure Set_MarqueeType(Value: Integer); safecall;
    function Get_MarqueeUnitWait: Integer; safecall;
    procedure Set_MarqueeUnitWait(Value: Integer); safecall;
    function Get_MaximumX: Integer; safecall;
    function Get_MaximumY: Integer; safecall;
    function Get_Rows: Integer; safecall;
    function Get_ScreenMode: Integer; safecall;
    procedure Set_ScreenMode(Value: Integer); safecall;
    function Get_ScreenModeList: PWideChar; safecall;
    procedure ClearDescriptors; safecall;
    function CreateWindow(ViewportRow: Integer; ViewportColumn: Integer; ViewportHeight: Integer; 
                          ViewportWidth: Integer; WindowHeight: Integer; WindowWidth: Integer): Integer; safecall;
    procedure DefineGlyph(GlyphCode: Integer; Glyph: PWideChar); safecall;
    procedure DestroyWindow; safecall;
    procedure DisplayBitmap(filename: PWideChar; width: Integer; alignmentX: Integer; 
                            alignmentY: Integer); safecall;
    procedure DisplayTextAt(row: Integer; column: Integer; Data: PAnsiChar; attribute: Integer); safecall;
    function ReadCharacterAtCursor(out pChar: Integer): Integer; safecall;
    procedure RefreshWindow(window: Integer); safecall;
    procedure ScrollText(direction: Integer; units: Integer); safecall;
    procedure SetBitmap(bitmapNumber: Integer; filename: PWideChar; width: Integer; 
                        alignmentX: Integer; alignmentY: Integer); safecall;
    procedure SetDescriptor(descriptor: Integer; attribute: Integer); safecall;
    function Capability(ACapability: Integer): Integer; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    property BlinkRate: Integer read Get_BlinkRate write Set_BlinkRate;
    property CharacterSet: Integer read Get_CharacterSet write Set_CharacterSet;
    property CharacterSetList: PWideChar read Get_CharacterSetList;
    property Columns: Integer read Get_Columns;
    property CurrentWindow: Integer read Get_CurrentWindow write Set_CurrentWindow;
    property CursorColumn: Integer read Get_CursorColumn write Set_CursorColumn;
    property CursorRow: Integer read Get_CursorRow write Set_CursorRow;
    property CursorType: Integer read Get_CursorType write Set_CursorType;
    property CursorUpdate: WordBool read Get_CursorUpdate write Set_CursorUpdate;
    property CustomGlyphList: PWideChar read Get_CustomGlyphList;
    property DeviceBrightness: Integer read Get_DeviceBrightness write Set_DeviceBrightness;
    property DeviceColumns: Integer read Get_DeviceColumns;
    property DeviceDescriptors: Integer read Get_DeviceDescriptors;
    property DeviceRows: Integer read Get_DeviceRows;
    property DeviceWindows: Integer read Get_DeviceWindows;
    property GlyphHeight: Integer read Get_GlyphHeight;
    property GlyphWidth: Integer read Get_GlyphWidth;
    property InterCharacterWait: Integer read Get_InterCharacterWait write Set_InterCharacterWait;
    property MapCharacterSet: WordBool read Get_MapCharacterSet write Set_MapCharacterSet;
    property MarqueeFormat: Integer read Get_MarqueeFormat write Set_MarqueeFormat;
    property MarqueeRepeatWait: Integer read Get_MarqueeRepeatWait write Set_MarqueeRepeatWait;
    property MarqueeType: Integer read Get_MarqueeType write Set_MarqueeType;
    property MarqueeUnitWait: Integer read Get_MarqueeUnitWait write Set_MarqueeUnitWait;
    property MaximumX: Integer read Get_MaximumX;
    property MaximumY: Integer read Get_MaximumY;
    property Rows: Integer read Get_Rows;
    property ScreenMode: Integer read Get_ScreenMode write Set_ScreenMode;
    property ScreenModeList: PWideChar read Get_ScreenModeList;
  end;

// *********************************************************************//
// DispIntf:  IDisplayPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C923C306-F671-480D-A925-FBF681F6D0CE}
// *********************************************************************//
  IDisplayPluginDisp = dispinterface
    ['{C923C306-F671-480D-A925-FBF681F6D0CE}']
    function ClearDisplay: Integer; dispid 401;
    function ClearText(Line: Integer): Integer; dispid 402;
    function DisplayText(Line: Integer; AText: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                         TextPlace: LineDisplayTextPlacement): Integer; dispid 403;
    property BlinkRate: Integer dispid 404;
    property CharacterSet: Integer dispid 406;
    property CharacterSetList: {NOT_OLEAUTO(PWideChar)}OleVariant readonly dispid 407;
    property Columns: Integer readonly dispid 408;
    property CurrentWindow: Integer dispid 409;
    property CursorColumn: Integer dispid 410;
    property CursorRow: Integer dispid 411;
    property CursorType: Integer dispid 412;
    property CursorUpdate: WordBool dispid 413;
    property CustomGlyphList: {NOT_OLEAUTO(PWideChar)}OleVariant readonly dispid 414;
    property DeviceBrightness: Integer dispid 415;
    property DeviceColumns: Integer readonly dispid 416;
    property DeviceDescriptors: Integer readonly dispid 417;
    property DeviceRows: Integer readonly dispid 418;
    property DeviceWindows: Integer readonly dispid 419;
    property GlyphHeight: Integer readonly dispid 420;
    property GlyphWidth: Integer readonly dispid 421;
    property InterCharacterWait: Integer dispid 422;
    property MapCharacterSet: WordBool dispid 423;
    property MarqueeFormat: Integer dispid 424;
    property MarqueeRepeatWait: Integer dispid 425;
    property MarqueeType: Integer dispid 426;
    property MarqueeUnitWait: Integer dispid 427;
    property MaximumX: Integer readonly dispid 428;
    property MaximumY: Integer readonly dispid 429;
    property Rows: Integer readonly dispid 430;
    property ScreenMode: Integer dispid 431;
    property ScreenModeList: {NOT_OLEAUTO(PWideChar)}OleVariant readonly dispid 432;
    procedure ClearDescriptors; dispid 433;
    function CreateWindow(ViewportRow: Integer; ViewportColumn: Integer; ViewportHeight: Integer; 
                          ViewportWidth: Integer; WindowHeight: Integer; WindowWidth: Integer): Integer; dispid 434;
    procedure DefineGlyph(GlyphCode: Integer; Glyph: {NOT_OLEAUTO(PWideChar)}OleVariant); dispid 435;
    procedure DestroyWindow; dispid 437;
    procedure DisplayBitmap(filename: {NOT_OLEAUTO(PWideChar)}OleVariant; width: Integer; 
                            alignmentX: Integer; alignmentY: Integer); dispid 436;
    procedure DisplayTextAt(row: Integer; column: Integer; 
                            Data: {NOT_OLEAUTO(PAnsiChar)}OleVariant; attribute: Integer); dispid 438;
    function ReadCharacterAtCursor(out pChar: Integer): Integer; dispid 439;
    procedure RefreshWindow(window: Integer); dispid 440;
    procedure ScrollText(direction: Integer; units: Integer); dispid 441;
    procedure SetBitmap(bitmapNumber: Integer; filename: {NOT_OLEAUTO(PWideChar)}OleVariant; 
                        width: Integer; alignmentX: Integer; alignmentY: Integer); dispid 442;
    procedure SetDescriptor(descriptor: Integer; attribute: Integer); dispid 443;
    function Capability(ACapability: Integer): Integer; dispid 405;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: ICashDrawerPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EDE47524-CBF3-49EE-B50A-D78CBA580953}
// *********************************************************************//
  ICashDrawerPlugin = interface(IHardwarePlugin)
    ['{EDE47524-CBF3-49EE-B50A-D78CBA580953}']
    function IsDrawerOpen: WordBool; safecall;
    function OpenDrawer: Integer; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  ICashDrawerPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EDE47524-CBF3-49EE-B50A-D78CBA580953}
// *********************************************************************//
  ICashDrawerPluginDisp = dispinterface
    ['{EDE47524-CBF3-49EE-B50A-D78CBA580953}']
    function IsDrawerOpen: WordBool; dispid 401;
    function OpenDrawer: Integer; dispid 402;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IMSRPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5ACA9311-0483-4D7B-A524-A5A3CF3BCD8C}
// *********************************************************************//
  IMSRPlugin = interface(IHardwarePlugin)
    ['{5ACA9311-0483-4D7B-A524-A5A3CF3BCD8C}']
    function Get_AccountNumber: PAnsiChar; safecall;
    function Get_ExpirationDate: PAnsiChar; safecall;
    function Get_FirstName: PAnsiChar; safecall;
    function Get_MiddleInitial: PAnsiChar; safecall;
    function Get_LastName: PAnsiChar; safecall;
    function Get_ServiceCode: PAnsiChar; safecall;
    function Get_Title: PAnsiChar; safecall;
    function Get_Track1Data: PAnsiChar; safecall;
    function Get_Track1DiscretionaryData: PAnsiChar; safecall;
    function Get_Track2Data: PAnsiChar; safecall;
    function Get_Track2DiscretionaryData: PAnsiChar; safecall;
    function Get_Track3Data: PAnsiChar; safecall;
    function Get_Track3DiscretionaryData: PAnsiChar; safecall;
    function Get_Track4Data: PAnsiChar; safecall;
    function Get_Track4DiscretionaryData: PAnsiChar; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    property AccountNumber: PAnsiChar read Get_AccountNumber;
    property ExpirationDate: PAnsiChar read Get_ExpirationDate;
    property FirstName: PAnsiChar read Get_FirstName;
    property MiddleInitial: PAnsiChar read Get_MiddleInitial;
    property LastName: PAnsiChar read Get_LastName;
    property ServiceCode: PAnsiChar read Get_ServiceCode;
    property Title: PAnsiChar read Get_Title;
    property Track1Data: PAnsiChar read Get_Track1Data;
    property Track1DiscretionaryData: PAnsiChar read Get_Track1DiscretionaryData;
    property Track2Data: PAnsiChar read Get_Track2Data;
    property Track2DiscretionaryData: PAnsiChar read Get_Track2DiscretionaryData;
    property Track3Data: PAnsiChar read Get_Track3Data;
    property Track3DiscretionaryData: PAnsiChar read Get_Track3DiscretionaryData;
    property Track4Data: PAnsiChar read Get_Track4Data;
    property Track4DiscretionaryData: PAnsiChar read Get_Track4DiscretionaryData;
  end;

// *********************************************************************//
// DispIntf:  IMSRPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5ACA9311-0483-4D7B-A524-A5A3CF3BCD8C}
// *********************************************************************//
  IMSRPluginDisp = dispinterface
    ['{5ACA9311-0483-4D7B-A524-A5A3CF3BCD8C}']
    property AccountNumber: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 401;
    property ExpirationDate: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 402;
    property FirstName: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 403;
    property MiddleInitial: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 404;
    property LastName: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 405;
    property ServiceCode: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 406;
    property Title: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 407;
    property Track1Data: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 408;
    property Track1DiscretionaryData: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 409;
    property Track2Data: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 410;
    property Track2DiscretionaryData: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 411;
    property Track3Data: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 412;
    property Track3DiscretionaryData: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 413;
    property Track4Data: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 414;
    property Track4DiscretionaryData: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 415;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: ICheckImageScannerPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {68AD3C7D-FB6E-40E0-BB00-141916CAEE20}
// *********************************************************************//
  ICheckImageScannerPlugin = interface(IHardwarePlugin)
    ['{68AD3C7D-FB6E-40E0-BB00-141916CAEE20}']
    function AcquireImage: Integer; safecall;
    function Get_Quality: Integer; safecall;
    procedure Set_Quality(Value: Integer); safecall;
    function Get_Contrast: Integer; safecall;
    procedure Set_Contrast(Value: Integer); safecall;
    function Get_ImageFormat: ScannedImageFormat; safecall;
    procedure Set_ImageFormat(Value: ScannedImageFormat); safecall;
    function Get_DocumentHeight: Integer; safecall;
    function Get_DocumentWidth: Integer; safecall;
    function Get_Status: Integer; safecall;
    function Get_Document: IPictureDisp; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    property Quality: Integer read Get_Quality write Set_Quality;
    property Contrast: Integer read Get_Contrast write Set_Contrast;
    property ImageFormat: ScannedImageFormat read Get_ImageFormat write Set_ImageFormat;
    property DocumentHeight: Integer read Get_DocumentHeight;
    property DocumentWidth: Integer read Get_DocumentWidth;
    property Status: Integer read Get_Status;
    property Document: IPictureDisp read Get_Document;
  end;

// *********************************************************************//
// DispIntf:  ICheckImageScannerPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {68AD3C7D-FB6E-40E0-BB00-141916CAEE20}
// *********************************************************************//
  ICheckImageScannerPluginDisp = dispinterface
    ['{68AD3C7D-FB6E-40E0-BB00-141916CAEE20}']
    function AcquireImage: Integer; dispid 401;
    property Quality: Integer dispid 402;
    property Contrast: Integer dispid 403;
    property ImageFormat: ScannedImageFormat dispid 404;
    property DocumentHeight: Integer readonly dispid 405;
    property DocumentWidth: Integer readonly dispid 406;
    property Status: Integer readonly dispid 407;
    property Document: IPictureDisp readonly dispid 408;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IMICRPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1B50CF7C-3FAA-4BDC-9939-9A46C46B99D0}
// *********************************************************************//
  IMICRPlugin = interface(IHardwarePlugin)
    ['{1B50CF7C-3FAA-4BDC-9939-9A46C46B99D0}']
    function InsertDocument: Integer; safecall;
    function RemoveDocument: Integer; safecall;
    function Get_AccountNumber: PAnsiChar; safecall;
    function Get_Amount: Double; safecall;
    function Get_BankNumber: PAnsiChar; safecall;
    function Get_CheckType: Integer; safecall;
    function Get_CountryCode: Integer; safecall;
    function Get_EPC: PAnsiChar; safecall;
    function Get_SerialNumber: PAnsiChar; safecall;
    function Get_TransitNumber: PAnsiChar; safecall;
    function Get_RawData: PAnsiChar; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    property AccountNumber: PAnsiChar read Get_AccountNumber;
    property Amount: Double read Get_Amount;
    property BankNumber: PAnsiChar read Get_BankNumber;
    property CheckType: Integer read Get_CheckType;
    property CountryCode: Integer read Get_CountryCode;
    property EPC: PAnsiChar read Get_EPC;
    property SerialNumber: PAnsiChar read Get_SerialNumber;
    property TransitNumber: PAnsiChar read Get_TransitNumber;
    property RawData: PAnsiChar read Get_RawData;
  end;

// *********************************************************************//
// DispIntf:  IMICRPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1B50CF7C-3FAA-4BDC-9939-9A46C46B99D0}
// *********************************************************************//
  IMICRPluginDisp = dispinterface
    ['{1B50CF7C-3FAA-4BDC-9939-9A46C46B99D0}']
    function InsertDocument: Integer; dispid 401;
    function RemoveDocument: Integer; dispid 402;
    property AccountNumber: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 403;
    property Amount: Double readonly dispid 404;
    property BankNumber: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 405;
    property CheckType: Integer readonly dispid 406;
    property CountryCode: Integer readonly dispid 407;
    property EPC: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 408;
    property SerialNumber: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 409;
    property TransitNumber: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 410;
    property RawData: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 411;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IPinPadPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D9D18324-0DDC-44C9-A8C9-822883FC54CF}
// *********************************************************************//
  IPinPadPlugin = interface(IHardwarePlugin)
    ['{D9D18324-0DDC-44C9-A8C9-822883FC54CF}']
    function Get_AdditionalSecurityInformation: PAnsiChar; safecall;
    function Get_EncryptedPIN: PAnsiChar; safecall;
    function Get_MinimumPINLength: Integer; safecall;
    procedure Set_MinimumPINLength(Value: Integer); safecall;
    function Get_MaximumPINLength: Integer; safecall;
    procedure Set_MaximumPINLength(Value: Integer); safecall;
    function Get_Track1Data: PAnsiChar; safecall;
    function Get_Track2Data: PAnsiChar; safecall;
    function Get_Track3Data: PAnsiChar; safecall;
    function Get_Track4Data: PAnsiChar; safecall;
    function Execute: PINPadError; safecall;
    function Get_Amount: Double; safecall;
    procedure Set_Amount(Value: Double); safecall;
    function Get_Cashback: Double; safecall;
    procedure Set_Cashback(Value: Double); safecall;
    function Get_TransType: PINPadTransType; safecall;
    procedure Set_TransType(Value: PINPadTransType); safecall;
    function Get_AccountNumber: PAnsiChar; safecall;
    procedure Set_AccountNumber(Value: PAnsiChar); safecall;
    function VerifyAmount: WordBool; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    function Get_PromptLanguage: Integer; safecall;
    procedure Set_PromptLanguage(Value: Integer); safecall;
    function Get_Prompt: Integer; safecall;
    procedure Set_Prompt(Value: Integer); safecall;
    property AdditionalSecurityInformation: PAnsiChar read Get_AdditionalSecurityInformation;
    property EncryptedPIN: PAnsiChar read Get_EncryptedPIN;
    property MinimumPINLength: Integer read Get_MinimumPINLength write Set_MinimumPINLength;
    property MaximumPINLength: Integer read Get_MaximumPINLength write Set_MaximumPINLength;
    property Track1Data: PAnsiChar read Get_Track1Data;
    property Track2Data: PAnsiChar read Get_Track2Data;
    property Track3Data: PAnsiChar read Get_Track3Data;
    property Track4Data: PAnsiChar read Get_Track4Data;
    property Amount: Double read Get_Amount write Set_Amount;
    property Cashback: Double read Get_Cashback write Set_Cashback;
    property TransType: PINPadTransType read Get_TransType write Set_TransType;
    property AccountNumber: PAnsiChar read Get_AccountNumber write Set_AccountNumber;
    property PromptLanguage: Integer read Get_PromptLanguage write Set_PromptLanguage;
    property Prompt: Integer read Get_Prompt write Set_Prompt;
  end;

// *********************************************************************//
// DispIntf:  IPinPadPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D9D18324-0DDC-44C9-A8C9-822883FC54CF}
// *********************************************************************//
  IPinPadPluginDisp = dispinterface
    ['{D9D18324-0DDC-44C9-A8C9-822883FC54CF}']
    property AdditionalSecurityInformation: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 404;
    property EncryptedPIN: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 405;
    property MinimumPINLength: Integer dispid 406;
    property MaximumPINLength: Integer dispid 407;
    property Track1Data: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 409;
    property Track2Data: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 410;
    property Track3Data: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 411;
    property Track4Data: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 413;
    function Execute: PINPadError; dispid 401;
    property Amount: Double dispid 402;
    property Cashback: Double dispid 408;
    property TransType: PINPadTransType dispid 412;
    property AccountNumber: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 403;
    function VerifyAmount: WordBool; dispid 414;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property PromptLanguage: Integer dispid 415;
    property Prompt: Integer dispid 416;
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IScalePlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EE050562-D4B2-4030-AF61-B9D6F18BC3C3}
// *********************************************************************//
  IScalePlugin = interface(IHardwarePlugin)
    ['{EE050562-D4B2-4030-AF61-B9D6F18BC3C3}']
    function DisplayText(AText: PAnsiChar): Integer; safecall;
    function ReadWeight: Double; safecall;
    function ZeroScale: Integer; safecall;
    function Get_AsyncMode: WordBool; safecall;
    procedure Set_AsyncMode(Value: WordBool); safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    property AsyncMode: WordBool read Get_AsyncMode write Set_AsyncMode;
  end;

// *********************************************************************//
// DispIntf:  IScalePluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EE050562-D4B2-4030-AF61-B9D6F18BC3C3}
// *********************************************************************//
  IScalePluginDisp = dispinterface
    ['{EE050562-D4B2-4030-AF61-B9D6F18BC3C3}']
    function DisplayText(AText: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 401;
    function ReadWeight: Double; dispid 402;
    function ZeroScale: Integer; dispid 403;
    property AsyncMode: WordBool dispid 404;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IPOSStationAdapter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BBFA2582-23B0-4504-AF20-D503775010E5}
// *********************************************************************//
  IPOSStationAdapter = interface(IDispatch)
    ['{BBFA2582-23B0-4504-AF20-D503775010E5}']
    procedure CashDrawerStatusUpdateEvent; safecall;
    procedure PinPadDataEvent; safecall;
    procedure MICRDataEvent; safecall;
    procedure MICRStatusUpdateEvent; safecall;
    procedure ScaleDataEvent; safecall;
    procedure ScaleStatusUpdateEvent; safecall;
    procedure MSRDataEvent; safecall;
    procedure MSRStatusUpdateEvent; safecall;
    procedure CheckImageScannerDataEvent; safecall;
    procedure CheckImageScannerStatusUpdateEvent; safecall;
    procedure PinPadStatusUpdateEvent; safecall;
    procedure BarCodeScannerDataEvent; safecall;
    procedure BarCodeScannerStatusUpdateEvent; safecall;
    procedure SigCapDataEvent; safecall;
    procedure SigCapStatusUpdateEvent; safecall;
    function GetPref(APref: Integer): OleVariant; safecall;
    procedure FiscalPrinterStatusUpdateEvent; safecall;
    procedure FiscalPrinterErrorEvent(AErrorCode: Integer; AErrorCodeExtended: Integer; 
                                      AErrorLocus: Integer; var AErrorResponse: Integer); safecall;
    procedure FiscalPrinterOutputCompleteEvent; safecall;
  end;

// *********************************************************************//
// DispIntf:  IPOSStationAdapterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BBFA2582-23B0-4504-AF20-D503775010E5}
// *********************************************************************//
  IPOSStationAdapterDisp = dispinterface
    ['{BBFA2582-23B0-4504-AF20-D503775010E5}']
    procedure CashDrawerStatusUpdateEvent; dispid 201;
    procedure PinPadDataEvent; dispid 202;
    procedure MICRDataEvent; dispid 204;
    procedure MICRStatusUpdateEvent; dispid 205;
    procedure ScaleDataEvent; dispid 206;
    procedure ScaleStatusUpdateEvent; dispid 207;
    procedure MSRDataEvent; dispid 208;
    procedure MSRStatusUpdateEvent; dispid 209;
    procedure CheckImageScannerDataEvent; dispid 210;
    procedure CheckImageScannerStatusUpdateEvent; dispid 211;
    procedure PinPadStatusUpdateEvent; dispid 203;
    procedure BarCodeScannerDataEvent; dispid 212;
    procedure BarCodeScannerStatusUpdateEvent; dispid 213;
    procedure SigCapDataEvent; dispid 214;
    procedure SigCapStatusUpdateEvent; dispid 215;
    function GetPref(APref: Integer): OleVariant; dispid 216;
    procedure FiscalPrinterStatusUpdateEvent; dispid 217;
    procedure FiscalPrinterErrorEvent(AErrorCode: Integer; AErrorCodeExtended: Integer; 
                                      AErrorLocus: Integer; var AErrorResponse: Integer); dispid 218;
    procedure FiscalPrinterOutputCompleteEvent; dispid 219;
  end;

// *********************************************************************//
// Interface: IConfigure
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0B6E3047-B487-4465-8982-418FBAD76B17}
// *********************************************************************//
  IConfigure = interface(IDispatch)
    ['{0B6E3047-B487-4465-8982-418FBAD76B17}']
    procedure ConfigureAll; safecall;
    procedure ConfigurePlugin(var PluginGUID: TGUID); safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IConfigureDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0B6E3047-B487-4465-8982-418FBAD76B17}
// *********************************************************************//
  IConfigureDisp = dispinterface
    ['{0B6E3047-B487-4465-8982-418FBAD76B17}']
    procedure ConfigureAll; dispid 201;
    procedure ConfigurePlugin(var PluginGUID: {NOT_OLEAUTO(TGUID)}OleVariant); dispid 202;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
  end;

// *********************************************************************//
// Interface: IBarCodeScannerPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {55FC3589-D6FC-453C-9C8F-8873CFFA317E}
// *********************************************************************//
  IBarCodeScannerPlugin = interface(IHardwarePlugin)
    ['{55FC3589-D6FC-453C-9C8F-8873CFFA317E}']
    function Get_ScanData: PAnsiChar; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    property ScanData: PAnsiChar read Get_ScanData;
  end;

// *********************************************************************//
// DispIntf:  IBarCodeScannerPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {55FC3589-D6FC-453C-9C8F-8873CFFA317E}
// *********************************************************************//
  IBarCodeScannerPluginDisp = dispinterface
    ['{55FC3589-D6FC-453C-9C8F-8873CFFA317E}']
    property ScanData: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 401;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IPrinterPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B37CAE3D-0D69-4A32-B010-C16FA7C1CE91}
// *********************************************************************//
  IPrinterPlugin = interface(IDispatch)
    ['{B37CAE3D-0D69-4A32-B010-C16FA7C1CE91}']
    function Get_JrnLineCharsList: PAnsiChar; safecall;
    function Get_JrnLineWidth: Integer; safecall;
    function Get_JrnEmpty: Integer; safecall;
    function Get_JrnNearEnd: Integer; safecall;
    function Get_RecLineCharsList: Integer; safecall;
    function Get_RecLineWidth: Integer; safecall;
    function Get_RecEmpty: Integer; safecall;
    function Get_RecNearEnd: Integer; safecall;
    function Get_RecSidewaysMaxLines: Integer; safecall;
    function Get_RecSidewaysMaxChars: Integer; safecall;
    function Get_RecLinesToPaperCut: Integer; safecall;
    function Get_RecBarCodeRotationList: Integer; safecall;
    function Get_SlpLineCharsList: Integer; safecall;
    function Get_SlpLineWidth: Integer; safecall;
    function Get_SlpEmpty: Integer; safecall;
    function Get_SlpNearEnd: Integer; safecall;
    function Get_SlpSidewaysMaxLines: Integer; safecall;
    function Get_SlpSidewaysMaxChars: Integer; safecall;
    function Get_SlpMaxLines: Integer; safecall;
    function Get_SlpLinesNearEndToEnd: Integer; safecall;
    function Get_SlpBarCodeRotationList: Integer; safecall;
    function Get_AsyncMode: Integer; safecall;
    procedure Set_AsyncMode(Value: Integer); safecall;
    function Get_CharacterSet: Integer; safecall;
    procedure Set_CharacterSet(Value: Integer); safecall;
    function Get_CoverOpen: Integer; safecall;
    function Get_ErrorLevel: Integer; safecall;
    function Get_ErrorStation: Integer; safecall;
    function Get_ErrorString: Integer; safecall;
    function Get_FontTypefaceList: Integer; safecall;
    function Get_FlagWhenIdle: Integer; safecall;
    procedure Set_FlagWhenIdle(Value: Integer); safecall;
    function Get_MapMode: Integer; safecall;
    procedure Set_MapMode(Value: Integer); safecall;
    function Get_RotateSpecial: Integer; safecall;
    procedure Set_RotateSpecial(Value: Integer); safecall;
    function Get_JrnLineChars: Integer; safecall;
    procedure Set_JrnLineChars(Value: Integer); safecall;
    function Get_JrnLineHeight: Integer; safecall;
    procedure Set_JrnLineHeight(Value: Integer); safecall;
    function Get_JrnLineSpacing: Integer; safecall;
    procedure Set_JrnLineSpacing(Value: Integer); safecall;
    function Get_JrnLetterQuality: Integer; safecall;
    procedure Set_JrnLetterQuality(Value: Integer); safecall;
    function Get_RecLineChars: Integer; safecall;
    procedure Set_RecLineChars(Value: Integer); safecall;
    function Get_RecLineHeight: Integer; safecall;
    procedure Set_RecLineHeight(Value: Integer); safecall;
    function Get_RecLineSpacing: Integer; safecall;
    procedure Set_RecLineSpacing(Value: Integer); safecall;
    function Get_RecLetterQuality: Integer; safecall;
    procedure Set_RecLetterQuality(Value: Integer); safecall;
    function Get_SlpLineChars: Integer; safecall;
    procedure Set_SlpLineChars(Value: Integer); safecall;
    function Get_SlpLineHeight: Integer; safecall;
    procedure Set_SlpLineHeight(Value: Integer); safecall;
    function Get_SlpLineSpacing: Integer; safecall;
    procedure Set_SlpLineSpacing(Value: Integer); safecall;
    function Get_SlpLetterQuality: Integer; safecall;
    procedure Set_SlpLetterQuality(Value: Integer); safecall;
    function BeginDoc(CheckError: WordBool): WordBool; safecall;
    procedure EndDoc; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    property JrnLineCharsList: PAnsiChar read Get_JrnLineCharsList;
    property JrnLineWidth: Integer read Get_JrnLineWidth;
    property JrnEmpty: Integer read Get_JrnEmpty;
    property JrnNearEnd: Integer read Get_JrnNearEnd;
    property RecLineCharsList: Integer read Get_RecLineCharsList;
    property RecLineWidth: Integer read Get_RecLineWidth;
    property RecEmpty: Integer read Get_RecEmpty;
    property RecNearEnd: Integer read Get_RecNearEnd;
    property RecSidewaysMaxLines: Integer read Get_RecSidewaysMaxLines;
    property RecSidewaysMaxChars: Integer read Get_RecSidewaysMaxChars;
    property RecLinesToPaperCut: Integer read Get_RecLinesToPaperCut;
    property RecBarCodeRotationList: Integer read Get_RecBarCodeRotationList;
    property SlpLineCharsList: Integer read Get_SlpLineCharsList;
    property SlpLineWidth: Integer read Get_SlpLineWidth;
    property SlpEmpty: Integer read Get_SlpEmpty;
    property SlpNearEnd: Integer read Get_SlpNearEnd;
    property SlpSidewaysMaxLines: Integer read Get_SlpSidewaysMaxLines;
    property SlpSidewaysMaxChars: Integer read Get_SlpSidewaysMaxChars;
    property SlpMaxLines: Integer read Get_SlpMaxLines;
    property SlpLinesNearEndToEnd: Integer read Get_SlpLinesNearEndToEnd;
    property SlpBarCodeRotationList: Integer read Get_SlpBarCodeRotationList;
    property AsyncMode: Integer read Get_AsyncMode write Set_AsyncMode;
    property CharacterSet: Integer read Get_CharacterSet write Set_CharacterSet;
    property CoverOpen: Integer read Get_CoverOpen;
    property ErrorLevel: Integer read Get_ErrorLevel;
    property ErrorStation: Integer read Get_ErrorStation;
    property ErrorString: Integer read Get_ErrorString;
    property FontTypefaceList: Integer read Get_FontTypefaceList;
    property FlagWhenIdle: Integer read Get_FlagWhenIdle write Set_FlagWhenIdle;
    property MapMode: Integer read Get_MapMode write Set_MapMode;
    property RotateSpecial: Integer read Get_RotateSpecial write Set_RotateSpecial;
    property JrnLineChars: Integer read Get_JrnLineChars write Set_JrnLineChars;
    property JrnLineHeight: Integer read Get_JrnLineHeight write Set_JrnLineHeight;
    property JrnLineSpacing: Integer read Get_JrnLineSpacing write Set_JrnLineSpacing;
    property JrnLetterQuality: Integer read Get_JrnLetterQuality write Set_JrnLetterQuality;
    property RecLineChars: Integer read Get_RecLineChars write Set_RecLineChars;
    property RecLineHeight: Integer read Get_RecLineHeight write Set_RecLineHeight;
    property RecLineSpacing: Integer read Get_RecLineSpacing write Set_RecLineSpacing;
    property RecLetterQuality: Integer read Get_RecLetterQuality write Set_RecLetterQuality;
    property SlpLineChars: Integer read Get_SlpLineChars write Set_SlpLineChars;
    property SlpLineHeight: Integer read Get_SlpLineHeight write Set_SlpLineHeight;
    property SlpLineSpacing: Integer read Get_SlpLineSpacing write Set_SlpLineSpacing;
    property SlpLetterQuality: Integer read Get_SlpLetterQuality write Set_SlpLetterQuality;
  end;

// *********************************************************************//
// DispIntf:  IPrinterPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B37CAE3D-0D69-4A32-B010-C16FA7C1CE91}
// *********************************************************************//
  IPrinterPluginDisp = dispinterface
    ['{B37CAE3D-0D69-4A32-B010-C16FA7C1CE91}']
    property JrnLineCharsList: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 202;
    property JrnLineWidth: Integer readonly dispid 205;
    property JrnEmpty: Integer readonly dispid 207;
    property JrnNearEnd: Integer readonly dispid 208;
    property RecLineCharsList: Integer readonly dispid 210;
    property RecLineWidth: Integer readonly dispid 213;
    property RecEmpty: Integer readonly dispid 215;
    property RecNearEnd: Integer readonly dispid 216;
    property RecSidewaysMaxLines: Integer readonly dispid 217;
    property RecSidewaysMaxChars: Integer readonly dispid 218;
    property RecLinesToPaperCut: Integer readonly dispid 219;
    property RecBarCodeRotationList: Integer readonly dispid 220;
    property SlpLineCharsList: Integer readonly dispid 222;
    property SlpLineWidth: Integer readonly dispid 225;
    property SlpEmpty: Integer readonly dispid 227;
    property SlpNearEnd: Integer readonly dispid 228;
    property SlpSidewaysMaxLines: Integer readonly dispid 229;
    property SlpSidewaysMaxChars: Integer readonly dispid 230;
    property SlpMaxLines: Integer readonly dispid 231;
    property SlpLinesNearEndToEnd: Integer readonly dispid 232;
    property SlpBarCodeRotationList: Integer readonly dispid 233;
    property AsyncMode: Integer dispid 234;
    property CharacterSet: Integer dispid 235;
    property CoverOpen: Integer readonly dispid 236;
    property ErrorLevel: Integer readonly dispid 237;
    property ErrorStation: Integer readonly dispid 238;
    property ErrorString: Integer readonly dispid 239;
    property FontTypefaceList: Integer readonly dispid 240;
    property FlagWhenIdle: Integer dispid 241;
    property MapMode: Integer dispid 242;
    property RotateSpecial: Integer dispid 243;
    property JrnLineChars: Integer dispid 201;
    property JrnLineHeight: Integer dispid 203;
    property JrnLineSpacing: Integer dispid 204;
    property JrnLetterQuality: Integer dispid 206;
    property RecLineChars: Integer dispid 209;
    property RecLineHeight: Integer dispid 212;
    property RecLineSpacing: Integer dispid 214;
    property RecLetterQuality: Integer dispid 211;
    property SlpLineChars: Integer dispid 221;
    property SlpLineHeight: Integer dispid 223;
    property SlpLineSpacing: Integer dispid 224;
    property SlpLetterQuality: Integer dispid 226;
    function BeginDoc(CheckError: WordBool): WordBool; dispid 244;
    procedure EndDoc; dispid 245;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
  end;

// *********************************************************************//
// Interface: ITenderPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9E404F61-1205-4371-B47E-5B05488EAEEC}
// *********************************************************************//
  ITenderPlugin = interface(IDispatch)
    ['{9E404F61-1205-4371-B47E-5B05488EAEEC}']
    function AddTender(TenderType: Integer; var Data: PAnsiChar): Integer; safecall;
    function RemoveTender(TenderIndex: Integer): WordBool; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    function StartTransaction: WordBool; safecall;
    function CommitTransaction: WordBool; safecall;
    function CancelTransaction: WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  ITenderPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9E404F61-1205-4371-B47E-5B05488EAEEC}
// *********************************************************************//
  ITenderPluginDisp = dispinterface
    ['{9E404F61-1205-4371-B47E-5B05488EAEEC}']
    function AddTender(TenderType: Integer; var Data: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 201;
    function RemoveTender(TenderIndex: Integer): WordBool; dispid 202;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    function StartTransaction: WordBool; dispid 203;
    function CommitTransaction: WordBool; dispid 204;
    function CancelTransaction: WordBool; dispid 205;
  end;

// *********************************************************************//
// Interface: IEFTAdapter
// Flags:     (6464) Dual OleAutomation Replaceable Dispatchable
// GUID:      {3D16D91E-A0C9-43E9-8EA5-B0AEF3551EDA}
// *********************************************************************//
  IEFTAdapter = interface(IPluginAdapter)
    ['{3D16D91E-A0C9-43E9-8EA5-B0AEF3551EDA}']
    procedure StatusEvent(AEventType: EFTEventType; ASuccess: WordBool; AStatus: PAnsiChar); safecall;
  end;

// *********************************************************************//
// DispIntf:  IEFTAdapterDisp
// Flags:     (6464) Dual OleAutomation Replaceable Dispatchable
// GUID:      {3D16D91E-A0C9-43E9-8EA5-B0AEF3551EDA}
// *********************************************************************//
  IEFTAdapterDisp = dispinterface
    ['{3D16D91E-A0C9-43E9-8EA5-B0AEF3551EDA}']
    procedure StatusEvent(AEventType: EFTEventType; ASuccess: WordBool; 
                          AStatus: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 301;
    function BOUpdateDataSetRecords(BOHandle: Integer; IncludeRefs: WordBool): Integer; dispid 201;
    function BOSetAttributeValueByName(BOHandle: Integer; 
                                       AttrName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       AValue: OleVariant): Integer; dispid 202;
    function BOGetAttributeValueByName(BOHandle: Integer; 
                                       AttrName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): OleVariant; dispid 203;
    function BOSetAttributeValues(BOHandle: Integer; AAttributeNames: OleVariant; AValue: OleVariant): Integer; dispid 204;
    function BOGetAttributeValues(BOHandle: Integer; AAttributeNames: OleVariant): OleVariant; dispid 205;
    function BOGetRepEntityId(BOHandle: Integer): Integer; dispid 206;
    function BOGetState(BOHandle: Integer): Integer; dispid 207;
    function BOGetInstanceActive(BOHandle: Integer): WordBool; dispid 208;
    function BOGetActiveDataSetId(BOHandle: Integer): Integer; dispid 209;
    function BOGetReadOnly(BOHandle: Integer): WordBool; dispid 210;
    function BOSetReadOnly(BOHandle: Integer; B: WordBool): Integer; dispid 211;
    function BOGetActive(BOHandle: Integer): WordBool; dispid 212;
    function BOSetActive(BOHandle: Integer; B: WordBool): Integer; dispid 213;
    function BOGetUniqueId(BOHandle: Integer): Integer; dispid 214;
    function BOGetCopyUniqueId(BOHandle: Integer): OleVariant; dispid 215;
    function BOGetModified(BOHandle: Integer): WordBool; dispid 216;
    function BOGetCommitOnPost(BOHandle: Integer): WordBool; dispid 217;
    function BOSetCommitOnPost(BOHandle: Integer; B: WordBool): Integer; dispid 218;
    function BOIsAttributeInList(BOHandle: Integer; 
                                 AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 219;
    function BOIsAttributeInInstance(BOHandle: Integer; 
                                     AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 220;
    function BOClearListIncluded(BOHandle: Integer): Integer; dispid 221;
    function BOClearInstanceIncluded(BOHandle: Integer): Integer; dispid 222;
    function BOUpdateListCollections(BOHandle: Integer): Integer; dispid 223;
    function BOUpdateInstanceCollections(BOHandle: Integer): Integer; dispid 224;
    function BOUpdateListDataSet(BOHandle: Integer; AForceRefresh: WordBool; 
                                 AForceDataSetCreation: WordBool): WordBool; dispid 225;
    function BOUpdateInstanceDataSet(BOHandle: Integer; AForceRefresh: WordBool; 
                                     AForceDataSetCreation: WordBool): WordBool; dispid 226;
    function BOOpen(BOHandle: Integer): Integer; dispid 227;
    function BOClear(BOHandle: Integer): Integer; dispid 228;
    function BOClose(BOHandle: Integer): Integer; dispid 229;
    function BOCloseStandalone(BOHandle: Integer): Integer; dispid 230;
    function BOEdit(BOHandle: Integer): Integer; dispid 231;
    function BOInsert(BOHandle: Integer): Integer; dispid 232;
    function BODelete(BOHandle: Integer): Integer; dispid 233;
    function BOPost(BOHandle: Integer): Integer; dispid 234;
    function BOPostEx(BOHandle: Integer; ACancelOnError: WordBool): Integer; dispid 235;
    function BOCancel(BOHandle: Integer): Integer; dispid 236;
    function BORefresh(BOHandle: Integer): Integer; dispid 237;
    function BOFirst(BOHandle: Integer): Integer; dispid 238;
    function BONext(BOHandle: Integer): Integer; dispid 239;
    function BOPrior(BOHandle: Integer): Integer; dispid 240;
    function BOCopy(BOHandle: Integer): Integer; dispid 241;
    function BORollBack(BOHandle: Integer): Integer; dispid 242;
    function BOF(BOHandle: Integer): WordBool; dispid 243;
    function EOF(BOHandle: Integer): WordBool; dispid 244;
    function BOIsEmpty(BOHandle: Integer): WordBool; dispid 245;
    function BODisableDataSetControls(BOHandle: Integer; ASkipIfEdit: WordBool): Integer; dispid 246;
    function BOEnableDataSetControls(BOHandle: Integer): Integer; dispid 247;
    function BOUpdateActiveInstance(BOHandle: Integer; AForce: WordBool): Integer; dispid 248;
    function BORefreshRecord(BOHandle: Integer; AForce: WordBool; ARefreshCollection: WordBool): Integer; dispid 249;
    function BOPostAllDataSets(BOHandle: Integer; PostCollections: WordBool): Integer; dispid 250;
    function BODisableLayoutNotifier(BOHandle: Integer): Integer; dispid 251;
    function BOEnableLayoutNotifier(BOHandle: Integer): Integer; dispid 252;
    function BOGetPropValById(BOHandle: Integer; AId: Integer): OleVariant; dispid 253;
    function BOGetPosition(BOHandle: Integer; var APosition: OleVariant): Integer; dispid 254;
    function BOLocatePosition(BOHandle: Integer; APosition: OleVariant): WordBool; dispid 255;
    function BOSetTempClosingState(BOHandle: Integer): Integer; dispid 256;
    function BOClearTempClosingState(BOHandle: Integer): Integer; dispid 257;
    function BORecalculateAttribute(BOHandle: Integer; 
                                    AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 258;
    function BOClearActiveFakeValues(BOHandle: Integer): Integer; dispid 259;
    function BOIsEntity(BOHandle: Integer; AEntityId: Integer): WordBool; dispid 260;
    function BOIsEntityArray(BOHandle: Integer; AEntityIds: OleVariant): WordBool; dispid 261;
    function BODisableAccessSecurity(BOHandle: Integer): Integer; dispid 262;
    function BOEnableAccessSecurity(BOHandle: Integer): Integer; dispid 263;
    function BODisableSecurity(BOHandle: Integer): Integer; dispid 264;
    function BOEnableSecurity(BOHandle: Integer): Integer; dispid 265;
    function Connect(RoleName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                     Username: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                     Password: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 266;
    function CreateBOByID(BOID: Integer): Integer; dispid 267;
    function CreateBOByName(BOName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 268;
    function Disconnect: Integer; dispid 269;
    function UpdatePreferences(const Preference: IXMLDOMElement): Integer; dispid 270;
    property AllBONames: OleVariant readonly dispid 272;
    procedure APIVersion(out MajorVersion: Integer; out MinorVersion: Integer; out Revision: Integer); dispid 273;
    function BOGetAttributeNameList(BOHandle: Integer): OleVariant; dispid 274;
    function ExecSQL(SQL: {NOT_OLEAUTO(PAnsiChar)}OleVariant; var ResultSet: OleVariant): Integer; dispid 275;
    function BOGetPref(BOHandle: Integer; APref: Integer): OleVariant; dispid 271;
    function CloneBOHandle(SrcBOHandle: Integer; const SrcAdapter: IPluginAdapter): Integer; dispid 276;
    property Reference: Integer readonly dispid 277;
    function GetHandleForRootBO(BOHandle: Integer): Integer; dispid 278;
    function GetReferenceBOForAttribute(BOHandle: Integer; 
                                        AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 279;
    function SbsGetPref(ASbs: Integer; APref: Integer): OleVariant; dispid 280;
    property Enabled: WordBool dispid 281;
    function BOFocusAttr(BOHandle: Integer; AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 282;
    function BOIncludeAttrForced(BOHandle: Integer; 
                                 AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 AInclude: WordBool): Integer; dispid 283;
    function BOIncludeAttrIntoInstance(BOHandle: Integer; 
                                       AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       AInclude: WordBool; AForce: WordBool): Integer; dispid 284;
    function BOIncludeAttrIntoList(BOHandle: Integer; 
                                   AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                   AInclude: WordBool; AForce: WordBool): Integer; dispid 285;
    function BOLocateByAttributes(BOHandle: Integer; AAttributeNames: OleVariant; 
                                  AAttributeValues: OleVariant): Integer; dispid 286;
    function BOSetFilter(BOHandle: Integer; ADomain: Integer; AValue: OleVariant; 
                         AOperation: Integer; AFilterData: WordBool; AFilterLookup: WordBool): Integer; dispid 287;
    function GetSecurityPermission(AApplicationID: Integer; APermissionID: Integer): WordBool; dispid 288;
    function BOGetAttrPropVal(BOHandle: Integer; 
                              AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              APropertyID: Integer): OleVariant; dispid 289;
    function BOGetAttrPropValues(BOHandle: Integer; 
                                 AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 APropertyIDs: OleVariant): OleVariant; dispid 290;
    function BOSetFilterAttr(BOHandle: Integer; AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AValue: OleVariant; AOperation: Integer; AFilterData: WordBool; 
                             AFilterLookup: WordBool): Integer; dispid 291;
    property ChildBOList: OleVariant readonly dispid 292;
    function GetBOEntityProperties(ABOType: Integer): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 293;
    function GetBOTypeForEntityID(AEntityId: Integer): Integer; dispid 294;
    function BOLast(BOHandle: Integer): Integer; dispid 295;
    function BOCanBeCreated(BOHandle: Integer): WordBool; dispid 296;
    function BOSortByDomain(BOHandle: Integer; ADomain: Integer; ASortOrder: Integer; 
                            AReopen: WordBool): Integer; dispid 297;
    function BOSortByAttribute(BOHandle: Integer; 
                               AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                               ASortOrder: Integer; AReopen: WordBool): Integer; dispid 298;
    property LanguageName: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 299;
    property LanguageCodePage: Integer readonly dispid 300;
    function DSCreateVendor(AVendorName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 400;
    procedure DSModifyVendor(AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ANewName: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 401;
    procedure DSDropVendor(AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 403;
    function DSGetVendorSID(AVendorName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 404;
    function DSCreateDataset(ADatasetName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ACMSObject: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 405;
    procedure DSModifyDataset(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              ANewDatasetName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              ANewCMSObject: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 406;
    procedure DSDropDataset(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACascade: WordBool); dispid 407;
    procedure DSDeleteDatasetData(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 408;
    function DSInsertIndex(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ARecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACMSRefKey2: Integer; 
                           ACMSRefKey3: Integer; ACMSRefKey4: Integer; 
                           ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 409;
    procedure DSModifyIndexLookup(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                  ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                  ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                  ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 410;
    procedure DSModifyIndexReference(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                     ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                     ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                     ACMSRefKey4: Integer; 
                                     ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 411;
    procedure DSDeleteIndex(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ARecSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACMSRefKey2: Integer; 
                            ACMSRefKey3: Integer; ACMSRefKey4: Integer; 
                            ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 412;
    function DSInsertRecord(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ARecordValue: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACMSRefKey2: Integer; 
                            ACMSRefKey3: Integer; ACMSRefKey4: Integer; 
                            ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 413;
    procedure DSUpdateRecord(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ANewValue: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 414;
    procedure DSDeleteRecord(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 415;
    function DSGetRecordSidByLookup(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                    ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                    ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                    ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 416;
    function DSGetRecordSidByCMSReference(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                          ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                          ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                          ACMSRefKey4: Integer; 
                                          ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 417;
    function DSGetRecordBySid(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              var ResultSet: OleVariant): Integer; dispid 418;
    function DSGetRecordByLookup(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 var ResultSet: OleVariant): Integer; dispid 419;
    function DSGetRecordByCMSReference(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                       ACMSRefKey4: Integer; 
                                       ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       var ResultSet: OleVariant): Integer; dispid 420;
    function DSGetDatasetSid(AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ADatasetName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 421;
    property LastErrorMessage: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 422;
    property LastErrorCode: Integer readonly dispid 423;
    property LastErrorFunction: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 424;
    procedure ClearLastError; dispid 425;
    function BOPrint(BOHandle: Integer; ADocDesignName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                     AOverridePrinterName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 426;
    function DSCommit: Integer; dispid 427;
    property CurrentUserId: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 428;
    property CurrentEmplId: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 429;
    function BOExecuteMethod(BOHandle: Integer; AMethodName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AParameterNames: OleVariant; AParameterValues: OleVariant): OleVariant; dispid 430;
    function Rediscover(AFlags: Integer): Integer; dispid 431;
    procedure LogEvent(ALogEventType: Integer; AAreaName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                       AVerbosity: Integer; AMessage: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 432;
    function BOGetAttributePermissions(BOHandle: Integer; 
                                       AttrName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       APermission: Integer; ACached: WordBool; AOvrCache: WordBool): WordBool; dispid 494;
    property Connected: WordBool readonly dispid 495;
    function BOGetAttributeNamesIncludedInList(BOHandle: Integer): OleVariant; dispid 496;
    function BOGetAttributeNamesIncludedInInstance(BOHandle: Integer): OleVariant; dispid 497;
    function GetPrimaryID: {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 498;
  end;

// *********************************************************************//
// Interface: ISigCapPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {42A26AC1-3A98-4E83-A033-51F4B9CC4418}
// *********************************************************************//
  ISigCapPlugin = interface(IHardwarePlugin)
    ['{42A26AC1-3A98-4E83-A033-51F4B9CC4418}']
    function BeginCapture(FormName: PWideChar): Integer; safecall;
    function EndCapture: Integer; safecall;
    function Get_CapDisplay: WordBool; safecall;
    function Get_CapUserTerminated: WordBool; safecall;
    function Get_MaximumX: Integer; safecall;
    function Get_MaximumY: Integer; safecall;
    function Get_PointArray: PWideChar; safecall;
    function Get_RawData: PWideChar; safecall;
    function Get_TotalPoints: Integer; safecall;
    function Get_DataCount: Integer; safecall;
    function Get_CapRealTimeData: WordBool; safecall;
    function Get_CapPowerReporting: Integer; safecall;
    function Get_PowerState: Integer; safecall;
    function VerifyAmount(AAmount: Currency): WordBool; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    property CapDisplay: WordBool read Get_CapDisplay;
    property CapUserTerminated: WordBool read Get_CapUserTerminated;
    property MaximumX: Integer read Get_MaximumX;
    property MaximumY: Integer read Get_MaximumY;
    property PointArray: PWideChar read Get_PointArray;
    property RawData: PWideChar read Get_RawData;
    property TotalPoints: Integer read Get_TotalPoints;
    property DataCount: Integer read Get_DataCount;
    property CapRealTimeData: WordBool read Get_CapRealTimeData;
    property CapPowerReporting: Integer read Get_CapPowerReporting;
    property PowerState: Integer read Get_PowerState;
  end;

// *********************************************************************//
// DispIntf:  ISigCapPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {42A26AC1-3A98-4E83-A033-51F4B9CC4418}
// *********************************************************************//
  ISigCapPluginDisp = dispinterface
    ['{42A26AC1-3A98-4E83-A033-51F4B9CC4418}']
    function BeginCapture(FormName: {NOT_OLEAUTO(PWideChar)}OleVariant): Integer; dispid 401;
    function EndCapture: Integer; dispid 402;
    property CapDisplay: WordBool readonly dispid 403;
    property CapUserTerminated: WordBool readonly dispid 404;
    property MaximumX: Integer readonly dispid 405;
    property MaximumY: Integer readonly dispid 406;
    property PointArray: {NOT_OLEAUTO(PWideChar)}OleVariant readonly dispid 407;
    property RawData: {NOT_OLEAUTO(PWideChar)}OleVariant readonly dispid 408;
    property TotalPoints: Integer readonly dispid 409;
    property DataCount: Integer readonly dispid 410;
    property CapRealTimeData: WordBool readonly dispid 411;
    property CapPowerReporting: Integer readonly dispid 412;
    property PowerState: Integer readonly dispid 413;
    function VerifyAmount(AAmount: Currency): WordBool; dispid 414;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IInventoryScannerPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AFDD9BB3-E56D-4055-A6AD-C709702F5988}
// *********************************************************************//
  IInventoryScannerPlugin = interface(IHardwarePlugin)
    ['{AFDD9BB3-E56D-4055-A6AD-C709702F5988}']
    function UploadData(ALookupType: Integer): Integer; safecall;
    function DownloadData(ALookupType: Integer): Integer; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IInventoryScannerPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AFDD9BB3-E56D-4055-A6AD-C709702F5988}
// *********************************************************************//
  IInventoryScannerPluginDisp = dispinterface
    ['{AFDD9BB3-E56D-4055-A6AD-C709702F5988}']
    function UploadData(ALookupType: Integer): Integer; dispid 401;
    function DownloadData(ALookupType: Integer): Integer; dispid 402;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IServerPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F41F920-DE63-47E4-866C-175D2D41C7EE}
// *********************************************************************//
  IServerPlugin = interface(IBOPlugin)
    ['{9F41F920-DE63-47E4-866C-175D2D41C7EE}']
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    function HandleBOUIEvent(ABOHandle: Integer; AEventType: PAnsiChar; AParameters: OleVariant; 
                             var AReturnValues: OleVariant; var AHandled: WordBool): WordBool; safecall;
    function Get_BOUIEventsSupported: OleVariant; safecall;
    property BOUIEventsSupported: OleVariant read Get_BOUIEventsSupported;
  end;

// *********************************************************************//
// DispIntf:  IServerPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F41F920-DE63-47E4-866C-175D2D41C7EE}
// *********************************************************************//
  IServerPluginDisp = dispinterface
    ['{9F41F920-DE63-47E4-866C-175D2D41C7EE}']
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    function HandleBOUIEvent(ABOHandle: Integer; AEventType: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AParameters: OleVariant; var AReturnValues: OleVariant; 
                             var AHandled: WordBool): WordBool; dispid 401;
    property BOUIEventsSupported: OleVariant readonly dispid 402;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: ILoginPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {80293F7B-AE1E-407D-B73A-D4EC8026AA04}
// *********************************************************************//
  ILoginPlugin = interface(IBOPlugin)
    ['{80293F7B-AE1E-407D-B73A-D4EC8026AA04}']
    function Login: WordBool; safecall;
    procedure Logout; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    function LoginValidation(AUsername: PAnsiChar; APassword: PAnsiChar): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoginPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {80293F7B-AE1E-407D-B73A-D4EC8026AA04}
// *********************************************************************//
  ILoginPluginDisp = dispinterface
    ['{80293F7B-AE1E-407D-B73A-D4EC8026AA04}']
    function Login: WordBool; dispid 501;
    procedure Logout; dispid 502;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    function LoginValidation(AUsername: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             APassword: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 401;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IFiscalPrinterPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {98F4AE05-9B51-44D0-B1B5-E32BAFC8C1A0}
// *********************************************************************//
  IFiscalPrinterPlugin = interface(IHardwarePlugin)
    ['{98F4AE05-9B51-44D0-B1B5-E32BAFC8C1A0}']
    function AddItem(ADescription: PAnsiChar; APrice: Currency; AQuantity: Integer; 
                     AVatInfo: Integer; AUnitPrice: Currency; AUnitName: PAnsiChar): Integer; safecall;
    function AddItemAdjustment(AAdjustmentType: Integer; ADescription: PAnsiChar; 
                               AAmount: Currency; AVatInfo: Integer): Integer; safecall;
    function AddFuelSurcharge(ADescription: PAnsiChar; APrice: Currency; AQuantity: Integer; 
                              AVatInfo: Integer; AUnitPrice: Currency; AUnitName: PAnsiChar; 
                              ASpecialTax: Integer; ASpecialTaxName: PAnsiChar): Integer; safecall;
    function AddNotPaid(ADescription: PAnsiChar; AAmount: Currency): Integer; safecall;
    function AddPackageAdjustment(AAdjustmentType: Integer; ADescription: PAnsiChar; 
                                  AVatAdjustment: PAnsiChar): Integer; safecall;
    function AddRefund(ADescription: PAnsiChar; AAmount: Currency; AVatInfo: Integer): Integer; safecall;
    function ClearPrinterError: Integer; safecall;
    function EndDay: Integer; safecall;
    function EndReceipt: Integer; safecall;
    function EndSlip(ATimeout: Integer): Integer; safecall;
    function PrintReport(AReportType: Integer; AStartNum: PAnsiChar; AEndNum: PAnsiChar): Integer; safecall;
    function PrintSlipLine(ADocumentLine: PAnsiChar): Integer; safecall;
    function PrintSubtotal(AAmount: Currency): Integer; safecall;
    function PrintTaxID(ATaxID: PAnsiChar): Integer; safecall;
    function PrintTotal(AAmount: Currency; APayment: Currency; ADescription: PAnsiChar): Integer; safecall;
    function PrintXReport: Integer; safecall;
    function PrintYReport: Integer; safecall;
    function PrintZReport: Integer; safecall;
    function VoidItem(ADescription: PAnsiChar; APrice: Currency; AQuantity: Integer; 
                      AVatInfo: Integer; AUnitPrice: Currency; AUnitName: PAnsiChar): Integer; safecall;
    function VoidItemAdjustment(AAdjustmentType: Integer; ADescription: PAnsiChar; 
                                AAmount: Currency; AVatInfo: Integer): Integer; safecall;
    function VoidFuelSurcharge(ADescription: PAnsiChar; APrice: Currency; AVatInfo: Integer; 
                               ASpecialTax: Currency): Integer; safecall;
    function VoidPackageAdjustment(AAdjustmentType: Integer; AVatAdjustment: PAnsiChar): Integer; safecall;
    function VoidRefund(ADescription: PAnsiChar; AAmount: Currency; AVatInfo: Integer): Integer; safecall;
    function Reset: Integer; safecall;
    function StartDay(ADocumentAmount: Integer): Integer; safecall;
    function StartReceipt(APrintHeader: WordBool): Integer; safecall;
    function StartSlip(ATimeout: Integer): Integer; safecall;
    procedure VoidReceipt(var Value: Integer); safecall;
    function Get_ActualCurrency: Integer; safecall;
    function Get_AdditionalHeader: PAnsiChar; safecall;
    procedure Set_AdditionalHeader(Value: PAnsiChar); safecall;
    function Get_AdditionalTrailer: PAnsiChar; safecall;
    procedure Set_AdditionalTrailer(Value: PAnsiChar); safecall;
    function Get_AmountDecimalPlaces: Integer; safecall;
    function Get_ChangeDueLabel: PAnsiChar; safecall;
    procedure Set_ChangeDueLabel(Value: PAnsiChar); safecall;
    function Get_CheckTotal: WordBool; safecall;
    procedure Set_CheckTotal(Value: WordBool); safecall;
    function Get_ContractorID: Integer; safecall;
    procedure Set_ContractorID(Value: Integer); safecall;
    function Get_CountryCode: Integer; safecall;
    function Get_CoverOpen: WordBool; safecall;
    function Get_ConfigurationDate: PAnsiChar; safecall;
    procedure Set_ConfigurationDate(Value: PAnsiChar); safecall;
    function Get_LastEndOfDayDate: PAnsiChar; safecall;
    procedure Set_LastEndOfDayDate(Value: PAnsiChar); safecall;
    function Get_LastResetDate: PAnsiChar; safecall;
    procedure Set_LastResetDate(Value: PAnsiChar); safecall;
    function Get_RealTimeClock: PAnsiChar; safecall;
    procedure Set_RealTimeClock(Value: PAnsiChar); safecall;
    function Get_LastVATChange: PAnsiChar; safecall;
    procedure Set_LastVATChange(Value: PAnsiChar); safecall;
    function Get_LastFiscalDayStartDate: PAnsiChar; safecall;
    procedure Set_LastFiscalDayStartDate(Value: PAnsiChar); safecall;
    function Get_DayOpened: WordBool; safecall;
    function Get_DescriptionLength: Integer; safecall;
    function Get_DuplicateReceipt: WordBool; safecall;
    procedure Set_DuplicateReceipt(Value: WordBool); safecall;
    function Get_FiscalErrorLevel: Integer; safecall;
    function Get_FiscalErrorOutID: Integer; safecall;
    function Get_FiscalErrorState: Integer; safecall;
    function Get_FiscalErrorStation: Integer; safecall;
    function Get_FiscalErrorString: PAnsiChar; safecall;
    function Get_FiscalReceiptStation: Integer; safecall;
    procedure Set_FiscalReceiptStation(Value: Integer); safecall;
    function Get_FiscalReceiptType: Integer; safecall;
    procedure Set_FiscalReceiptType(Value: Integer); safecall;
    function Get_FlagWhenIdle: WordBool; safecall;
    procedure Set_FlagWhenIdle(Value: WordBool); safecall;
    function Get_JournalEmpty: WordBool; safecall;
    function Get_JournalNearEnd: WordBool; safecall;
    function Get_MaxMessageLength: Integer; safecall;
    function PrintNormal(AStation: Integer; AMessageType: Integer; AData: PAnsiChar): Integer; safecall;
    function Get_MaxHeaderLines: Integer; safecall;
    function Get_MaxTrailerLines: Integer; safecall;
    function Get_MaxVatRates: Integer; safecall;
    function Get_PostLine: PAnsiChar; safecall;
    procedure Set_PostLine(Value: PAnsiChar); safecall;
    function Get_PredefinedPaymentLines: PAnsiChar; safecall;
    function Get_PreLine: PAnsiChar; safecall;
    procedure Set_PreLine(Value: PAnsiChar); safecall;
    function Get_PrinterState: Integer; safecall;
    function Get_QuantityDecimalPlaces: Integer; safecall;
    function Get_MaxQuantityLength: Integer; safecall;
    function Get_ReceiptEmpty: WordBool; safecall;
    function Get_ReceiptNearEnd: WordBool; safecall;
    function Get_RemainingFiscalMemory: Integer; safecall;
    function Get_ReservedWord: PAnsiChar; safecall;
    function Get_SlipEmpty: WordBool; safecall;
    function Get_SlipNearEnd: WordBool; safecall;
    function Get_SlipSelection: Integer; safecall;
    procedure Set_SlipSelection(Value: Integer); safecall;
    function Get_TotalizerType: Integer; safecall;
    procedure Set_TotalizerType(Value: Integer); safecall;
    function Get_TrainingMode: WordBool; safecall;
    procedure Set_TrainingMode(Value: WordBool); safecall;
    function PrintPeriodicTotalsReport(BeginDate: PAnsiChar; EndDate: PAnsiChar): Integer; safecall;
    function PrintPowerLossReport: Integer; safecall;
    function PrintReceiptCashInOut(AAmount: Currency): Integer; safecall;
    function PrintDuplicateReceipt: Integer; safecall;
    function Get_FiscalErrorExtended: Integer; safecall;
    function Get_POSID: PAnsiChar; safecall;
    procedure Set_POSID(Value: PAnsiChar); safecall;
    function Get_CashierID: PAnsiChar; safecall;
    procedure Set_CashierID(Value: PAnsiChar); safecall;
    function Get_StoreID: PAnsiChar; safecall;
    procedure Set_StoreID(Value: PAnsiChar); safecall;
    function StartRefundReturn(ACompanyName: PAnsiChar; ACustomerID: PAnsiChar; 
                               ASaleDate: TDateTime; AInvoiceNo: PAnsiChar; ARegisterNo: PAnsiChar): Integer; safecall;
    function EndRefundReturn: Integer; safecall;
    function Capability(ACapability: Integer): WordBool; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    function Get_CustID: PAnsiChar; safecall;
    procedure Set_CustID(Value: PAnsiChar); safecall;
    function Get_CustName: PAnsiChar; safecall;
    procedure Set_CustName(Value: PAnsiChar); safecall;
    function Get_CustPhone: PAnsiChar; safecall;
    procedure Set_CustPhone(Value: PAnsiChar); safecall;
    function Get_CustAddress: PAnsiChar; safecall;
    procedure Set_CustAddress(Value: PAnsiChar); safecall;
    function Get_AdditionalInfo1: PAnsiChar; safecall;
    procedure Set_AdditionalInfo1(Value: PAnsiChar); safecall;
    function Get_AdditionalInfo2: PAnsiChar; safecall;
    procedure Set_AdditionalInfo2(Value: PAnsiChar); safecall;
    property ActualCurrency: Integer read Get_ActualCurrency;
    property AdditionalHeader: PAnsiChar read Get_AdditionalHeader write Set_AdditionalHeader;
    property AdditionalTrailer: PAnsiChar read Get_AdditionalTrailer write Set_AdditionalTrailer;
    property AmountDecimalPlaces: Integer read Get_AmountDecimalPlaces;
    property ChangeDueLabel: PAnsiChar read Get_ChangeDueLabel write Set_ChangeDueLabel;
    property CheckTotal: WordBool read Get_CheckTotal write Set_CheckTotal;
    property ContractorID: Integer read Get_ContractorID write Set_ContractorID;
    property CountryCode: Integer read Get_CountryCode;
    property CoverOpen: WordBool read Get_CoverOpen;
    property ConfigurationDate: PAnsiChar read Get_ConfigurationDate write Set_ConfigurationDate;
    property LastEndOfDayDate: PAnsiChar read Get_LastEndOfDayDate write Set_LastEndOfDayDate;
    property LastResetDate: PAnsiChar read Get_LastResetDate write Set_LastResetDate;
    property RealTimeClock: PAnsiChar read Get_RealTimeClock write Set_RealTimeClock;
    property LastVATChange: PAnsiChar read Get_LastVATChange write Set_LastVATChange;
    property LastFiscalDayStartDate: PAnsiChar read Get_LastFiscalDayStartDate write Set_LastFiscalDayStartDate;
    property DayOpened: WordBool read Get_DayOpened;
    property DescriptionLength: Integer read Get_DescriptionLength;
    property DuplicateReceipt: WordBool read Get_DuplicateReceipt write Set_DuplicateReceipt;
    property FiscalErrorLevel: Integer read Get_FiscalErrorLevel;
    property FiscalErrorOutID: Integer read Get_FiscalErrorOutID;
    property FiscalErrorState: Integer read Get_FiscalErrorState;
    property FiscalErrorStation: Integer read Get_FiscalErrorStation;
    property FiscalErrorString: PAnsiChar read Get_FiscalErrorString;
    property FiscalReceiptStation: Integer read Get_FiscalReceiptStation write Set_FiscalReceiptStation;
    property FiscalReceiptType: Integer read Get_FiscalReceiptType write Set_FiscalReceiptType;
    property FlagWhenIdle: WordBool read Get_FlagWhenIdle write Set_FlagWhenIdle;
    property JournalEmpty: WordBool read Get_JournalEmpty;
    property JournalNearEnd: WordBool read Get_JournalNearEnd;
    property MaxMessageLength: Integer read Get_MaxMessageLength;
    property MaxHeaderLines: Integer read Get_MaxHeaderLines;
    property MaxTrailerLines: Integer read Get_MaxTrailerLines;
    property MaxVatRates: Integer read Get_MaxVatRates;
    property PostLine: PAnsiChar read Get_PostLine write Set_PostLine;
    property PredefinedPaymentLines: PAnsiChar read Get_PredefinedPaymentLines;
    property PreLine: PAnsiChar read Get_PreLine write Set_PreLine;
    property PrinterState: Integer read Get_PrinterState;
    property QuantityDecimalPlaces: Integer read Get_QuantityDecimalPlaces;
    property MaxQuantityLength: Integer read Get_MaxQuantityLength;
    property ReceiptEmpty: WordBool read Get_ReceiptEmpty;
    property ReceiptNearEnd: WordBool read Get_ReceiptNearEnd;
    property RemainingFiscalMemory: Integer read Get_RemainingFiscalMemory;
    property ReservedWord: PAnsiChar read Get_ReservedWord;
    property SlipEmpty: WordBool read Get_SlipEmpty;
    property SlipNearEnd: WordBool read Get_SlipNearEnd;
    property SlipSelection: Integer read Get_SlipSelection write Set_SlipSelection;
    property TotalizerType: Integer read Get_TotalizerType write Set_TotalizerType;
    property TrainingMode: WordBool read Get_TrainingMode write Set_TrainingMode;
    property FiscalErrorExtended: Integer read Get_FiscalErrorExtended;
    property POSID: PAnsiChar read Get_POSID write Set_POSID;
    property CashierID: PAnsiChar read Get_CashierID write Set_CashierID;
    property StoreID: PAnsiChar read Get_StoreID write Set_StoreID;
    property CustID: PAnsiChar read Get_CustID write Set_CustID;
    property CustName: PAnsiChar read Get_CustName write Set_CustName;
    property CustPhone: PAnsiChar read Get_CustPhone write Set_CustPhone;
    property CustAddress: PAnsiChar read Get_CustAddress write Set_CustAddress;
    property AdditionalInfo1: PAnsiChar read Get_AdditionalInfo1 write Set_AdditionalInfo1;
    property AdditionalInfo2: PAnsiChar read Get_AdditionalInfo2 write Set_AdditionalInfo2;
  end;

// *********************************************************************//
// DispIntf:  IFiscalPrinterPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {98F4AE05-9B51-44D0-B1B5-E32BAFC8C1A0}
// *********************************************************************//
  IFiscalPrinterPluginDisp = dispinterface
    ['{98F4AE05-9B51-44D0-B1B5-E32BAFC8C1A0}']
    function AddItem(ADescription: {NOT_OLEAUTO(PAnsiChar)}OleVariant; APrice: Currency; 
                     AQuantity: Integer; AVatInfo: Integer; AUnitPrice: Currency; 
                     AUnitName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 402;
    function AddItemAdjustment(AAdjustmentType: Integer; 
                               ADescription: {NOT_OLEAUTO(PAnsiChar)}OleVariant; AAmount: Currency; 
                               AVatInfo: Integer): Integer; dispid 403;
    function AddFuelSurcharge(ADescription: {NOT_OLEAUTO(PAnsiChar)}OleVariant; APrice: Currency; 
                              AQuantity: Integer; AVatInfo: Integer; AUnitPrice: Currency; 
                              AUnitName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ASpecialTax: Integer; 
                              ASpecialTaxName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 404;
    function AddNotPaid(ADescription: {NOT_OLEAUTO(PAnsiChar)}OleVariant; AAmount: Currency): Integer; dispid 405;
    function AddPackageAdjustment(AAdjustmentType: Integer; 
                                  ADescription: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                  AVatAdjustment: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 406;
    function AddRefund(ADescription: {NOT_OLEAUTO(PAnsiChar)}OleVariant; AAmount: Currency; 
                       AVatInfo: Integer): Integer; dispid 407;
    function ClearPrinterError: Integer; dispid 408;
    function EndDay: Integer; dispid 409;
    function EndReceipt: Integer; dispid 410;
    function EndSlip(ATimeout: Integer): Integer; dispid 411;
    function PrintReport(AReportType: Integer; AStartNum: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                         AEndNum: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 413;
    function PrintSlipLine(ADocumentLine: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 414;
    function PrintSubtotal(AAmount: Currency): Integer; dispid 415;
    function PrintTaxID(ATaxID: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 416;
    function PrintTotal(AAmount: Currency; APayment: Currency; 
                        ADescription: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 417;
    function PrintXReport: Integer; dispid 418;
    function PrintYReport: Integer; dispid 419;
    function PrintZReport: Integer; dispid 420;
    function VoidItem(ADescription: {NOT_OLEAUTO(PAnsiChar)}OleVariant; APrice: Currency; 
                      AQuantity: Integer; AVatInfo: Integer; AUnitPrice: Currency; 
                      AUnitName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 421;
    function VoidItemAdjustment(AAdjustmentType: Integer; 
                                ADescription: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                AAmount: Currency; AVatInfo: Integer): Integer; dispid 422;
    function VoidFuelSurcharge(ADescription: {NOT_OLEAUTO(PAnsiChar)}OleVariant; APrice: Currency; 
                               AVatInfo: Integer; ASpecialTax: Currency): Integer; dispid 423;
    function VoidPackageAdjustment(AAdjustmentType: Integer; 
                                   AVatAdjustment: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 424;
    function VoidRefund(ADescription: {NOT_OLEAUTO(PAnsiChar)}OleVariant; AAmount: Currency; 
                        AVatInfo: Integer): Integer; dispid 425;
    function Reset: Integer; dispid 426;
    function StartDay(ADocumentAmount: Integer): Integer; dispid 427;
    function StartReceipt(APrintHeader: WordBool): Integer; dispid 428;
    function StartSlip(ATimeout: Integer): Integer; dispid 429;
    procedure VoidReceipt(var Value: Integer); dispid 431;
    property ActualCurrency: Integer readonly dispid 432;
    property AdditionalHeader: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 433;
    property AdditionalTrailer: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 434;
    property AmountDecimalPlaces: Integer readonly dispid 435;
    property ChangeDueLabel: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 436;
    property CheckTotal: WordBool dispid 437;
    property ContractorID: Integer dispid 438;
    property CountryCode: Integer readonly dispid 439;
    property CoverOpen: WordBool readonly dispid 440;
    property ConfigurationDate: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 441;
    property LastEndOfDayDate: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 442;
    property LastResetDate: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 443;
    property RealTimeClock: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 444;
    property LastVATChange: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 445;
    property LastFiscalDayStartDate: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 446;
    property DayOpened: WordBool readonly dispid 447;
    property DescriptionLength: Integer readonly dispid 448;
    property DuplicateReceipt: WordBool dispid 449;
    property FiscalErrorLevel: Integer readonly dispid 450;
    property FiscalErrorOutID: Integer readonly dispid 451;
    property FiscalErrorState: Integer readonly dispid 452;
    property FiscalErrorStation: Integer readonly dispid 453;
    property FiscalErrorString: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 454;
    property FiscalReceiptStation: Integer dispid 455;
    property FiscalReceiptType: Integer dispid 456;
    property FlagWhenIdle: WordBool dispid 457;
    property JournalEmpty: WordBool readonly dispid 458;
    property JournalNearEnd: WordBool readonly dispid 459;
    property MaxMessageLength: Integer readonly dispid 460;
    function PrintNormal(AStation: Integer; AMessageType: Integer; 
                         AData: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 461;
    property MaxHeaderLines: Integer readonly dispid 462;
    property MaxTrailerLines: Integer readonly dispid 463;
    property MaxVatRates: Integer readonly dispid 464;
    property PostLine: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 465;
    property PredefinedPaymentLines: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 466;
    property PreLine: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 467;
    property PrinterState: Integer readonly dispid 468;
    property QuantityDecimalPlaces: Integer readonly dispid 469;
    property MaxQuantityLength: Integer readonly dispid 470;
    property ReceiptEmpty: WordBool readonly dispid 471;
    property ReceiptNearEnd: WordBool readonly dispid 472;
    property RemainingFiscalMemory: Integer readonly dispid 473;
    property ReservedWord: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 474;
    property SlipEmpty: WordBool readonly dispid 475;
    property SlipNearEnd: WordBool readonly dispid 476;
    property SlipSelection: Integer dispid 477;
    property TotalizerType: Integer dispid 478;
    property TrainingMode: WordBool dispid 479;
    function PrintPeriodicTotalsReport(BeginDate: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       EndDate: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 412;
    function PrintPowerLossReport: Integer; dispid 430;
    function PrintReceiptCashInOut(AAmount: Currency): Integer; dispid 480;
    function PrintDuplicateReceipt: Integer; dispid 481;
    property FiscalErrorExtended: Integer readonly dispid 482;
    property POSID: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 483;
    property CashierID: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 484;
    property StoreID: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 485;
    function StartRefundReturn(ACompanyName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                               ACustomerID: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                               ASaleDate: TDateTime; 
                               AInvoiceNo: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                               ARegisterNo: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 486;
    function EndRefundReturn: Integer; dispid 487;
    function Capability(ACapability: Integer): WordBool; dispid 401;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property CustID: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 488;
    property CustName: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 489;
    property CustPhone: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 490;
    property CustAddress: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 491;
    property AdditionalInfo1: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 492;
    property AdditionalInfo2: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 493;
    property CashRegister: IPOSStationAdapter dispid 301;
    procedure Configure; dispid 302;
    function Test: Integer; dispid 303;
    property HardwareType: Integer dispid 304;
    property DeviceNumber: Integer dispid 305;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: ITenderDialoguePlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {380EEF71-463C-41CC-8D30-EDD4904D6737}
// *********************************************************************//
  ITenderDialoguePlugin = interface(IDispatch)
    ['{380EEF71-463C-41CC-8D30-EDD4904D6737}']
    function Get_TenderType: Integer; safecall;
    function Get_Amount: Currency; safecall;
    procedure Set_Amount(Value: Currency); safecall;
    function Get_Taken: Currency; safecall;
    procedure Set_Taken(Value: Currency); safecall;
    function Get_Given: Currency; safecall;
    procedure Set_Given(Value: Currency); safecall;
    function Get_Authorization: PAnsiChar; safecall;
    procedure Set_Authorization(Value: PAnsiChar); safecall;
    function Get_TransactionID: PAnsiChar; safecall;
    procedure Set_TransactionID(Value: PAnsiChar); safecall;
    function Get_AVSCode: PAnsiChar; safecall;
    procedure Set_AVSCode(Value: PAnsiChar); safecall;
    function Get_L2ResultCode: PAnsiChar; safecall;
    procedure Set_L2ResultCode(Value: PAnsiChar); safecall;
    function Get_AccountNumber: PAnsiChar; safecall;
    procedure Set_AccountNumber(Value: PAnsiChar); safecall;
    function Get_FirstName: PAnsiChar; safecall;
    procedure Set_FirstName(Value: PAnsiChar); safecall;
    function Get_LastName: PAnsiChar; safecall;
    procedure Set_LastName(Value: PAnsiChar); safecall;
    function Get_WorkPhone: PAnsiChar; safecall;
    procedure Set_WorkPhone(Value: PAnsiChar); safecall;
    function Get_HomePhone: PAnsiChar; safecall;
    procedure Set_HomePhone(Value: PAnsiChar); safecall;
    function Get_StateProvince: PAnsiChar; safecall;
    procedure Set_StateProvince(Value: PAnsiChar); safecall;
    function Get_PostalCode: PAnsiChar; safecall;
    procedure Set_PostalCode(Value: PAnsiChar); safecall;
    function Get_DriversLicense: PAnsiChar; safecall;
    procedure Set_DriversLicense(Value: PAnsiChar); safecall;
    function Get_DriversLicenseExpDate: PAnsiChar; safecall;
    procedure Set_DriversLicenseExpDate(Value: PAnsiChar); safecall;
    function Get_DateOfBirth: PAnsiChar; safecall;
    procedure Set_DateOfBirth(Value: PAnsiChar); safecall;
    function Get_CheckCompany: PAnsiChar; safecall;
    procedure Set_CheckCompany(Value: PAnsiChar); safecall;
    function Get_CheckType: Integer; safecall;
    procedure Set_CheckType(Value: Integer); safecall;
    function Get_CardType: Integer; safecall;
    procedure Set_CardType(Value: Integer); safecall;
    function Get_CardExpDate: PAnsiChar; safecall;
    procedure Set_CardExpDate(Value: PAnsiChar); safecall;
    function Get_CardNormalSale: WordBool; safecall;
    procedure Set_CardNormalSale(Value: WordBool); safecall;
    function Get_CardPresent: WordBool; safecall;
    procedure Set_CardPresent(Value: WordBool); safecall;
    function Get_CardProcessingFee: Currency; safecall;
    procedure Set_CardProcessingFee(Value: Currency); safecall;
    function Get_CardSignatureMap: PAnsiChar; safecall;
    procedure Set_CardSignatureMap(Value: PAnsiChar); safecall;
    function Get_GiftCardTraceNo: PAnsiChar; safecall;
    procedure Set_GiftCardTraceNo(Value: PAnsiChar); safecall;
    function Get_GiftCardInternalReference: PAnsiChar; safecall;
    procedure Set_GiftCardInternalReference(Value: PAnsiChar); safecall;
    function Get_GiftCardBalance: Currency; safecall;
    procedure Set_GiftCardBalance(Value: Currency); safecall;
    function Get_ChargeNetDays: Integer; safecall;
    procedure Set_ChargeNetDays(Value: Integer); safecall;
    function Get_ChargeDiscountDays: Integer; safecall;
    procedure Set_ChargeDiscountDays(Value: Integer); safecall;
    function Get_ChargeDiscountPercent: Single; safecall;
    procedure Set_ChargeDiscountPercent(Value: Single); safecall;
    function Get_PaymentDate: PAnsiChar; safecall;
    procedure Set_PaymentDate(Value: PAnsiChar); safecall;
    function Get_PaymentRemark: PAnsiChar; safecall;
    procedure Set_PaymentRemark(Value: PAnsiChar); safecall;
    function Get_CurrencyType: Integer; safecall;
    procedure Set_CurrencyType(Value: Integer); safecall;
    procedure Clear; safecall;
    function Get_CVV2Result: PAnsiChar; safecall;
    procedure Set_CVV2Result(Value: PAnsiChar); safecall;
    function Get_EFTForced: WordBool; safecall;
    procedure Set_EFTForced(Value: WordBool); safecall;
    function DeleteTender: WordBool; safecall;
    function Get_Remark: PWideChar; safecall;
    procedure Set_Remark(Value: PWideChar); safecall;
    function Get_EncryptAccountnumber: WordBool; safecall;
    procedure Set_EncryptAccountnumber(Value: WordBool); safecall;
    function Get_CardName: PWideChar; safecall;
    procedure Set_CardName(Value: PWideChar); safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    function Get_UseDefaultDialog: WordBool; safecall;
    procedure Set_UseDefaultDialog(Value: WordBool); safecall;
    function Get_DATA0: PAnsiChar; safecall;
    procedure Set_DATA0(Value: PAnsiChar); safecall;
    function Get_DATA1: PAnsiChar; safecall;
    procedure Set_DATA1(Value: PAnsiChar); safecall;
    function Get_DATA2: PAnsiChar; safecall;
    procedure Set_DATA2(Value: PAnsiChar); safecall;
    function Get_DATA3: PAnsiChar; safecall;
    procedure Set_DATA3(Value: PAnsiChar); safecall;
    function Get_DATA4: PAnsiChar; safecall;
    procedure Set_DATA4(Value: PAnsiChar); safecall;
    function Get_DATA5: PAnsiChar; safecall;
    procedure Set_DATA5(Value: PAnsiChar); safecall;
    function Get_DATA6: PAnsiChar; safecall;
    procedure Set_DATA6(Value: PAnsiChar); safecall;
    function Get_DATA7: PAnsiChar; safecall;
    procedure Set_DATA7(Value: PAnsiChar); safecall;
    function Get_DATA8: PAnsiChar; safecall;
    procedure Set_DATA8(Value: PAnsiChar); safecall;
    function Get_DATA9: PAnsiChar; safecall;
    procedure Set_DATA9(Value: PAnsiChar); safecall;
    function Get_DATA10: PAnsiChar; safecall;
    procedure Set_DATA10(Value: PAnsiChar); safecall;
    function Get_DATA11: PAnsiChar; safecall;
    procedure Set_DATA11(Value: PAnsiChar); safecall;
    function Get_DATA12: PAnsiChar; safecall;
    procedure Set_DATA12(Value: PAnsiChar); safecall;
    function Get_DATA13: PAnsiChar; safecall;
    procedure Set_DATA13(Value: PAnsiChar); safecall;
    function Get_DATA14: PAnsiChar; safecall;
    procedure Set_DATA14(Value: PAnsiChar); safecall;
    function Get_DATA15: PAnsiChar; safecall;
    procedure Set_DATA15(Value: PAnsiChar); safecall;
    function Get_DATA16: PAnsiChar; safecall;
    procedure Set_DATA16(Value: PAnsiChar); safecall;
    function Get_DATA17: PAnsiChar; safecall;
    procedure Set_DATA17(Value: PAnsiChar); safecall;
    function Get_DATA18: PAnsiChar; safecall;
    procedure Set_DATA18(Value: PAnsiChar); safecall;
    function Get_DATA19: PAnsiChar; safecall;
    procedure Set_DATA19(Value: PAnsiChar); safecall;
    function Get_DATABSMER: PAnsiChar; safecall;
    procedure Set_DATABSMER(Value: PAnsiChar); safecall;
    function Get_DATABSCUST: PAnsiChar; safecall;
    procedure Set_DATABSCUST(Value: PAnsiChar); safecall;
    property TenderType: Integer read Get_TenderType;
    property Amount: Currency read Get_Amount write Set_Amount;
    property Taken: Currency read Get_Taken write Set_Taken;
    property Given: Currency read Get_Given write Set_Given;
    property Authorization: PAnsiChar read Get_Authorization write Set_Authorization;
    property TransactionID: PAnsiChar read Get_TransactionID write Set_TransactionID;
    property AVSCode: PAnsiChar read Get_AVSCode write Set_AVSCode;
    property L2ResultCode: PAnsiChar read Get_L2ResultCode write Set_L2ResultCode;
    property AccountNumber: PAnsiChar read Get_AccountNumber write Set_AccountNumber;
    property FirstName: PAnsiChar read Get_FirstName write Set_FirstName;
    property LastName: PAnsiChar read Get_LastName write Set_LastName;
    property WorkPhone: PAnsiChar read Get_WorkPhone write Set_WorkPhone;
    property HomePhone: PAnsiChar read Get_HomePhone write Set_HomePhone;
    property StateProvince: PAnsiChar read Get_StateProvince write Set_StateProvince;
    property PostalCode: PAnsiChar read Get_PostalCode write Set_PostalCode;
    property DriversLicense: PAnsiChar read Get_DriversLicense write Set_DriversLicense;
    property DriversLicenseExpDate: PAnsiChar read Get_DriversLicenseExpDate write Set_DriversLicenseExpDate;
    property DateOfBirth: PAnsiChar read Get_DateOfBirth write Set_DateOfBirth;
    property CheckCompany: PAnsiChar read Get_CheckCompany write Set_CheckCompany;
    property CheckType: Integer read Get_CheckType write Set_CheckType;
    property CardType: Integer read Get_CardType write Set_CardType;
    property CardExpDate: PAnsiChar read Get_CardExpDate write Set_CardExpDate;
    property CardNormalSale: WordBool read Get_CardNormalSale write Set_CardNormalSale;
    property CardPresent: WordBool read Get_CardPresent write Set_CardPresent;
    property CardProcessingFee: Currency read Get_CardProcessingFee write Set_CardProcessingFee;
    property CardSignatureMap: PAnsiChar read Get_CardSignatureMap write Set_CardSignatureMap;
    property GiftCardTraceNo: PAnsiChar read Get_GiftCardTraceNo write Set_GiftCardTraceNo;
    property GiftCardInternalReference: PAnsiChar read Get_GiftCardInternalReference write Set_GiftCardInternalReference;
    property GiftCardBalance: Currency read Get_GiftCardBalance write Set_GiftCardBalance;
    property ChargeNetDays: Integer read Get_ChargeNetDays write Set_ChargeNetDays;
    property ChargeDiscountDays: Integer read Get_ChargeDiscountDays write Set_ChargeDiscountDays;
    property ChargeDiscountPercent: Single read Get_ChargeDiscountPercent write Set_ChargeDiscountPercent;
    property PaymentDate: PAnsiChar read Get_PaymentDate write Set_PaymentDate;
    property PaymentRemark: PAnsiChar read Get_PaymentRemark write Set_PaymentRemark;
    property CurrencyType: Integer read Get_CurrencyType write Set_CurrencyType;
    property CVV2Result: PAnsiChar read Get_CVV2Result write Set_CVV2Result;
    property EFTForced: WordBool read Get_EFTForced write Set_EFTForced;
    property Remark: PWideChar read Get_Remark write Set_Remark;
    property EncryptAccountnumber: WordBool read Get_EncryptAccountnumber write Set_EncryptAccountnumber;
    property CardName: PWideChar read Get_CardName write Set_CardName;
    property UseDefaultDialog: WordBool read Get_UseDefaultDialog write Set_UseDefaultDialog;
    property DATA0: PAnsiChar read Get_DATA0 write Set_DATA0;
    property DATA1: PAnsiChar read Get_DATA1 write Set_DATA1;
    property DATA2: PAnsiChar read Get_DATA2 write Set_DATA2;
    property DATA3: PAnsiChar read Get_DATA3 write Set_DATA3;
    property DATA4: PAnsiChar read Get_DATA4 write Set_DATA4;
    property DATA5: PAnsiChar read Get_DATA5 write Set_DATA5;
    property DATA6: PAnsiChar read Get_DATA6 write Set_DATA6;
    property DATA7: PAnsiChar read Get_DATA7 write Set_DATA7;
    property DATA8: PAnsiChar read Get_DATA8 write Set_DATA8;
    property DATA9: PAnsiChar read Get_DATA9 write Set_DATA9;
    property DATA10: PAnsiChar read Get_DATA10 write Set_DATA10;
    property DATA11: PAnsiChar read Get_DATA11 write Set_DATA11;
    property DATA12: PAnsiChar read Get_DATA12 write Set_DATA12;
    property DATA13: PAnsiChar read Get_DATA13 write Set_DATA13;
    property DATA14: PAnsiChar read Get_DATA14 write Set_DATA14;
    property DATA15: PAnsiChar read Get_DATA15 write Set_DATA15;
    property DATA16: PAnsiChar read Get_DATA16 write Set_DATA16;
    property DATA17: PAnsiChar read Get_DATA17 write Set_DATA17;
    property DATA18: PAnsiChar read Get_DATA18 write Set_DATA18;
    property DATA19: PAnsiChar read Get_DATA19 write Set_DATA19;
    property DATABSMER: PAnsiChar read Get_DATABSMER write Set_DATABSMER;
    property DATABSCUST: PAnsiChar read Get_DATABSCUST write Set_DATABSCUST;
  end;

// *********************************************************************//
// DispIntf:  ITenderDialoguePluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {380EEF71-463C-41CC-8D30-EDD4904D6737}
// *********************************************************************//
  ITenderDialoguePluginDisp = dispinterface
    ['{380EEF71-463C-41CC-8D30-EDD4904D6737}']
    property TenderType: Integer readonly dispid 201;
    property Amount: Currency dispid 202;
    property Taken: Currency dispid 203;
    property Given: Currency dispid 204;
    property Authorization: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 205;
    property TransactionID: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 206;
    property AVSCode: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 207;
    property L2ResultCode: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 208;
    property AccountNumber: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 209;
    property FirstName: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 210;
    property LastName: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 211;
    property WorkPhone: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 212;
    property HomePhone: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 213;
    property StateProvince: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 214;
    property PostalCode: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 215;
    property DriversLicense: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 216;
    property DriversLicenseExpDate: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 217;
    property DateOfBirth: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 218;
    property CheckCompany: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 219;
    property CheckType: Integer dispid 220;
    property CardType: Integer dispid 221;
    property CardExpDate: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 222;
    property CardNormalSale: WordBool dispid 223;
    property CardPresent: WordBool dispid 225;
    property CardProcessingFee: Currency dispid 226;
    property CardSignatureMap: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 227;
    property GiftCardTraceNo: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 228;
    property GiftCardInternalReference: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 229;
    property GiftCardBalance: Currency dispid 230;
    property ChargeNetDays: Integer dispid 231;
    property ChargeDiscountDays: Integer dispid 232;
    property ChargeDiscountPercent: Single dispid 233;
    property PaymentDate: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 234;
    property PaymentRemark: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 236;
    property CurrencyType: Integer dispid 235;
    procedure Clear; dispid 237;
    property CVV2Result: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 224;
    property EFTForced: WordBool dispid 238;
    function DeleteTender: WordBool; dispid 239;
    property Remark: {NOT_OLEAUTO(PWideChar)}OleVariant dispid 240;
    property EncryptAccountnumber: WordBool dispid 241;
    property CardName: {NOT_OLEAUTO(PWideChar)}OleVariant dispid 242;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property UseDefaultDialog: WordBool dispid 243;
    property DATA0: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 244;
    property DATA1: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 245;
    property DATA2: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 246;
    property DATA3: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 247;
    property DATA4: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 248;
    property DATA5: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 249;
    property DATA6: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 250;
    property DATA7: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 251;
    property DATA8: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 252;
    property DATA9: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 253;
    property DATA10: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 254;
    property DATA11: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 255;
    property DATA12: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 256;
    property DATA13: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 257;
    property DATA14: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 258;
    property DATA15: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 259;
    property DATA16: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 260;
    property DATA17: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 261;
    property DATA18: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 262;
    property DATA19: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 263;
    property DATABSMER: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 264;
    property DATABSCUST: {NOT_OLEAUTO(PAnsiChar)}OleVariant dispid 265;
  end;

// *********************************************************************//
// Interface: INamedTriggerPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8DFC7AEC-CA14-4A84-9610-562DC4032967}
// *********************************************************************//
  INamedTriggerPlugin = interface(IAbstractPlugin)
    ['{8DFC7AEC-CA14-4A84-9610-562DC4032967}']
    function Get_EventsSupported: OleVariant; safecall;
    function Get_EventCode: Integer; safecall;
    procedure Set_EventCode(Value: Integer); safecall;
    function Get_Data: OleVariant; safecall;
    procedure Set_Data(Value: OleVariant); safecall;
    function Get_AdditionalData: OleVariant; safecall;
    procedure Set_AdditionalData(Value: OleVariant); safecall;
    function Get_ResultCode: Integer; safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    property EventsSupported: OleVariant read Get_EventsSupported;
    property EventCode: Integer read Get_EventCode write Set_EventCode;
    property Data: OleVariant read Get_Data write Set_Data;
    property AdditionalData: OleVariant read Get_AdditionalData write Set_AdditionalData;
    property ResultCode: Integer read Get_ResultCode;
  end;

// *********************************************************************//
// DispIntf:  INamedTriggerPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8DFC7AEC-CA14-4A84-9610-562DC4032967}
// *********************************************************************//
  INamedTriggerPluginDisp = dispinterface
    ['{8DFC7AEC-CA14-4A84-9610-562DC4032967}']
    property EventsSupported: OleVariant readonly dispid 301;
    property EventCode: Integer dispid 302;
    property Data: OleVariant dispid 303;
    property AdditionalData: OleVariant dispid 304;
    property ResultCode: Integer readonly dispid 305;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IApplicationPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {915CA60C-927D-4B7A-BEB8-E7A2E52AA907}
// *********************************************************************//
  IApplicationPlugin = interface(IDispatch)
    ['{915CA60C-927D-4B7A-BEB8-E7A2E52AA907}']
    function BeforeFrameOpen(AFrameName: PAnsiChar; AFrameBOType: Integer; ABOHandle: Integer): WordBool; safecall;
    procedure AfterFrameOpen(AFrameName: PAnsiChar; AFrameBOType: Integer; ABOHandle: Integer); safecall;
    function BeforeFrameHidden(AFrameName: PAnsiChar; AFrameBOType: Integer; ABOHandle: Integer): WordBool; safecall;
    procedure AfterFrameHidden(AFrameName: PAnsiChar; AFrameBOType: Integer; ABOHandle: Integer); safecall;
    function BeforeFrameRestore(AFrameName: PAnsiChar; AFrameBOType: Integer; ABOHandle: Integer): WordBool; safecall;
    procedure AfterFrameRestore(AFrameName: PAnsiChar; AFrameBOType: Integer; ABOHandle: Integer); safecall;
    function BeforeFrameClose(AFrameName: PAnsiChar; AFrameBOType: Integer; ABOHandle: Integer): WordBool; safecall;
    procedure AfterFrameClose(AFrameName: PAnsiChar; AFrameBOType: Integer); safecall;
    function PluginCapability(ACapability: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IApplicationPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {915CA60C-927D-4B7A-BEB8-E7A2E52AA907}
// *********************************************************************//
  IApplicationPluginDisp = dispinterface
    ['{915CA60C-927D-4B7A-BEB8-E7A2E52AA907}']
    function BeforeFrameOpen(AFrameName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; AFrameBOType: Integer; 
                             ABOHandle: Integer): WordBool; dispid 201;
    procedure AfterFrameOpen(AFrameName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; AFrameBOType: Integer; 
                             ABOHandle: Integer); dispid 202;
    function BeforeFrameHidden(AFrameName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                               AFrameBOType: Integer; ABOHandle: Integer): WordBool; dispid 203;
    procedure AfterFrameHidden(AFrameName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                               AFrameBOType: Integer; ABOHandle: Integer); dispid 204;
    function BeforeFrameRestore(AFrameName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                AFrameBOType: Integer; ABOHandle: Integer): WordBool; dispid 205;
    procedure AfterFrameRestore(AFrameName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                AFrameBOType: Integer; ABOHandle: Integer); dispid 206;
    function BeforeFrameClose(AFrameName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              AFrameBOType: Integer; ABOHandle: Integer): WordBool; dispid 207;
    procedure AfterFrameClose(AFrameName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; AFrameBOType: Integer); dispid 208;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
  end;

// *********************************************************************//
// Interface: IApplicationPluginAdapter
// Flags:     (6464) Dual OleAutomation Replaceable Dispatchable
// GUID:      {CD9591DA-3D18-48AF-8CD9-D2340AE2DE7C}
// *********************************************************************//
  IApplicationPluginAdapter = interface(IPluginAdapter)
    ['{CD9591DA-3D18-48AF-8CD9-D2340AE2DE7C}']
    procedure ClickButtonByHotKey(AHotKey: Integer); safecall;
    function ClickButtonByName(AButtonName: PAnsiChar): Integer; safecall;
    function IsButtonOnToolbar(AButtonName: PAnsiChar): WordBool; safecall;
    function GetButtonHotKey(AButtonName: PAnsiChar): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IApplicationPluginAdapterDisp
// Flags:     (6464) Dual OleAutomation Replaceable Dispatchable
// GUID:      {CD9591DA-3D18-48AF-8CD9-D2340AE2DE7C}
// *********************************************************************//
  IApplicationPluginAdapterDisp = dispinterface
    ['{CD9591DA-3D18-48AF-8CD9-D2340AE2DE7C}']
    procedure ClickButtonByHotKey(AHotKey: Integer); dispid 301;
    function ClickButtonByName(AButtonName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 302;
    function IsButtonOnToolbar(AButtonName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 303;
    function GetButtonHotKey(AButtonName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 304;
    function BOUpdateDataSetRecords(BOHandle: Integer; IncludeRefs: WordBool): Integer; dispid 201;
    function BOSetAttributeValueByName(BOHandle: Integer; 
                                       AttrName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       AValue: OleVariant): Integer; dispid 202;
    function BOGetAttributeValueByName(BOHandle: Integer; 
                                       AttrName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): OleVariant; dispid 203;
    function BOSetAttributeValues(BOHandle: Integer; AAttributeNames: OleVariant; AValue: OleVariant): Integer; dispid 204;
    function BOGetAttributeValues(BOHandle: Integer; AAttributeNames: OleVariant): OleVariant; dispid 205;
    function BOGetRepEntityId(BOHandle: Integer): Integer; dispid 206;
    function BOGetState(BOHandle: Integer): Integer; dispid 207;
    function BOGetInstanceActive(BOHandle: Integer): WordBool; dispid 208;
    function BOGetActiveDataSetId(BOHandle: Integer): Integer; dispid 209;
    function BOGetReadOnly(BOHandle: Integer): WordBool; dispid 210;
    function BOSetReadOnly(BOHandle: Integer; B: WordBool): Integer; dispid 211;
    function BOGetActive(BOHandle: Integer): WordBool; dispid 212;
    function BOSetActive(BOHandle: Integer; B: WordBool): Integer; dispid 213;
    function BOGetUniqueId(BOHandle: Integer): Integer; dispid 214;
    function BOGetCopyUniqueId(BOHandle: Integer): OleVariant; dispid 215;
    function BOGetModified(BOHandle: Integer): WordBool; dispid 216;
    function BOGetCommitOnPost(BOHandle: Integer): WordBool; dispid 217;
    function BOSetCommitOnPost(BOHandle: Integer; B: WordBool): Integer; dispid 218;
    function BOIsAttributeInList(BOHandle: Integer; 
                                 AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 219;
    function BOIsAttributeInInstance(BOHandle: Integer; 
                                     AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 220;
    function BOClearListIncluded(BOHandle: Integer): Integer; dispid 221;
    function BOClearInstanceIncluded(BOHandle: Integer): Integer; dispid 222;
    function BOUpdateListCollections(BOHandle: Integer): Integer; dispid 223;
    function BOUpdateInstanceCollections(BOHandle: Integer): Integer; dispid 224;
    function BOUpdateListDataSet(BOHandle: Integer; AForceRefresh: WordBool; 
                                 AForceDataSetCreation: WordBool): WordBool; dispid 225;
    function BOUpdateInstanceDataSet(BOHandle: Integer; AForceRefresh: WordBool; 
                                     AForceDataSetCreation: WordBool): WordBool; dispid 226;
    function BOOpen(BOHandle: Integer): Integer; dispid 227;
    function BOClear(BOHandle: Integer): Integer; dispid 228;
    function BOClose(BOHandle: Integer): Integer; dispid 229;
    function BOCloseStandalone(BOHandle: Integer): Integer; dispid 230;
    function BOEdit(BOHandle: Integer): Integer; dispid 231;
    function BOInsert(BOHandle: Integer): Integer; dispid 232;
    function BODelete(BOHandle: Integer): Integer; dispid 233;
    function BOPost(BOHandle: Integer): Integer; dispid 234;
    function BOPostEx(BOHandle: Integer; ACancelOnError: WordBool): Integer; dispid 235;
    function BOCancel(BOHandle: Integer): Integer; dispid 236;
    function BORefresh(BOHandle: Integer): Integer; dispid 237;
    function BOFirst(BOHandle: Integer): Integer; dispid 238;
    function BONext(BOHandle: Integer): Integer; dispid 239;
    function BOPrior(BOHandle: Integer): Integer; dispid 240;
    function BOCopy(BOHandle: Integer): Integer; dispid 241;
    function BORollBack(BOHandle: Integer): Integer; dispid 242;
    function BOF(BOHandle: Integer): WordBool; dispid 243;
    function EOF(BOHandle: Integer): WordBool; dispid 244;
    function BOIsEmpty(BOHandle: Integer): WordBool; dispid 245;
    function BODisableDataSetControls(BOHandle: Integer; ASkipIfEdit: WordBool): Integer; dispid 246;
    function BOEnableDataSetControls(BOHandle: Integer): Integer; dispid 247;
    function BOUpdateActiveInstance(BOHandle: Integer; AForce: WordBool): Integer; dispid 248;
    function BORefreshRecord(BOHandle: Integer; AForce: WordBool; ARefreshCollection: WordBool): Integer; dispid 249;
    function BOPostAllDataSets(BOHandle: Integer; PostCollections: WordBool): Integer; dispid 250;
    function BODisableLayoutNotifier(BOHandle: Integer): Integer; dispid 251;
    function BOEnableLayoutNotifier(BOHandle: Integer): Integer; dispid 252;
    function BOGetPropValById(BOHandle: Integer; AId: Integer): OleVariant; dispid 253;
    function BOGetPosition(BOHandle: Integer; var APosition: OleVariant): Integer; dispid 254;
    function BOLocatePosition(BOHandle: Integer; APosition: OleVariant): WordBool; dispid 255;
    function BOSetTempClosingState(BOHandle: Integer): Integer; dispid 256;
    function BOClearTempClosingState(BOHandle: Integer): Integer; dispid 257;
    function BORecalculateAttribute(BOHandle: Integer; 
                                    AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 258;
    function BOClearActiveFakeValues(BOHandle: Integer): Integer; dispid 259;
    function BOIsEntity(BOHandle: Integer; AEntityId: Integer): WordBool; dispid 260;
    function BOIsEntityArray(BOHandle: Integer; AEntityIds: OleVariant): WordBool; dispid 261;
    function BODisableAccessSecurity(BOHandle: Integer): Integer; dispid 262;
    function BOEnableAccessSecurity(BOHandle: Integer): Integer; dispid 263;
    function BODisableSecurity(BOHandle: Integer): Integer; dispid 264;
    function BOEnableSecurity(BOHandle: Integer): Integer; dispid 265;
    function Connect(RoleName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                     Username: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                     Password: {NOT_OLEAUTO(PAnsiChar)}OleVariant): WordBool; dispid 266;
    function CreateBOByID(BOID: Integer): Integer; dispid 267;
    function CreateBOByName(BOName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 268;
    function Disconnect: Integer; dispid 269;
    function UpdatePreferences(const Preference: IXMLDOMElement): Integer; dispid 270;
    property AllBONames: OleVariant readonly dispid 272;
    procedure APIVersion(out MajorVersion: Integer; out MinorVersion: Integer; out Revision: Integer); dispid 273;
    function BOGetAttributeNameList(BOHandle: Integer): OleVariant; dispid 274;
    function ExecSQL(SQL: {NOT_OLEAUTO(PAnsiChar)}OleVariant; var ResultSet: OleVariant): Integer; dispid 275;
    function BOGetPref(BOHandle: Integer; APref: Integer): OleVariant; dispid 271;
    function CloneBOHandle(SrcBOHandle: Integer; const SrcAdapter: IPluginAdapter): Integer; dispid 276;
    property Reference: Integer readonly dispid 277;
    function GetHandleForRootBO(BOHandle: Integer): Integer; dispid 278;
    function GetReferenceBOForAttribute(BOHandle: Integer; 
                                        AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 279;
    function SbsGetPref(ASbs: Integer; APref: Integer): OleVariant; dispid 280;
    property Enabled: WordBool dispid 281;
    function BOFocusAttr(BOHandle: Integer; AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 282;
    function BOIncludeAttrForced(BOHandle: Integer; 
                                 AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 AInclude: WordBool): Integer; dispid 283;
    function BOIncludeAttrIntoInstance(BOHandle: Integer; 
                                       AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       AInclude: WordBool; AForce: WordBool): Integer; dispid 284;
    function BOIncludeAttrIntoList(BOHandle: Integer; 
                                   AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                   AInclude: WordBool; AForce: WordBool): Integer; dispid 285;
    function BOLocateByAttributes(BOHandle: Integer; AAttributeNames: OleVariant; 
                                  AAttributeValues: OleVariant): Integer; dispid 286;
    function BOSetFilter(BOHandle: Integer; ADomain: Integer; AValue: OleVariant; 
                         AOperation: Integer; AFilterData: WordBool; AFilterLookup: WordBool): Integer; dispid 287;
    function GetSecurityPermission(AApplicationID: Integer; APermissionID: Integer): WordBool; dispid 288;
    function BOGetAttrPropVal(BOHandle: Integer; 
                              AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              APropertyID: Integer): OleVariant; dispid 289;
    function BOGetAttrPropValues(BOHandle: Integer; 
                                 AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 APropertyIDs: OleVariant): OleVariant; dispid 290;
    function BOSetFilterAttr(BOHandle: Integer; AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AValue: OleVariant; AOperation: Integer; AFilterData: WordBool; 
                             AFilterLookup: WordBool): Integer; dispid 291;
    property ChildBOList: OleVariant readonly dispid 292;
    function GetBOEntityProperties(ABOType: Integer): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 293;
    function GetBOTypeForEntityID(AEntityId: Integer): Integer; dispid 294;
    function BOLast(BOHandle: Integer): Integer; dispid 295;
    function BOCanBeCreated(BOHandle: Integer): WordBool; dispid 296;
    function BOSortByDomain(BOHandle: Integer; ADomain: Integer; ASortOrder: Integer; 
                            AReopen: WordBool): Integer; dispid 297;
    function BOSortByAttribute(BOHandle: Integer; 
                               AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                               ASortOrder: Integer; AReopen: WordBool): Integer; dispid 298;
    property LanguageName: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 299;
    property LanguageCodePage: Integer readonly dispid 300;
    function DSCreateVendor(AVendorName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 400;
    procedure DSModifyVendor(AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ANewName: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 401;
    procedure DSDropVendor(AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 403;
    function DSGetVendorSID(AVendorName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 404;
    function DSCreateDataset(ADatasetName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ACMSObject: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 405;
    procedure DSModifyDataset(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              ANewDatasetName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              ANewCMSObject: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 406;
    procedure DSDropDataset(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACascade: WordBool); dispid 407;
    procedure DSDeleteDatasetData(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 408;
    function DSInsertIndex(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ARecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                           ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACMSRefKey2: Integer; 
                           ACMSRefKey3: Integer; ACMSRefKey4: Integer; 
                           ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 409;
    procedure DSModifyIndexLookup(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                  ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                  ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                  ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 410;
    procedure DSModifyIndexReference(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                     ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                     ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                     ACMSRefKey4: Integer; 
                                     ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 411;
    procedure DSDeleteIndex(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ARecSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACMSRefKey2: Integer; 
                            ACMSRefKey3: Integer; ACMSRefKey4: Integer; 
                            ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 412;
    function DSInsertRecord(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ARecordValue: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                            ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; ACMSRefKey2: Integer; 
                            ACMSRefKey3: Integer; ACMSRefKey4: Integer; 
                            ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 413;
    procedure DSUpdateRecord(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ANewValue: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 414;
    procedure DSDeleteRecord(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 415;
    function DSGetRecordSidByLookup(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                    ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                    ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                    ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 416;
    function DSGetRecordSidByCMSReference(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                          ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                          ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                          ACMSRefKey4: Integer; 
                                          ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 417;
    function DSGetRecordBySid(ADataRecordSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              var ResultSet: OleVariant): Integer; dispid 418;
    function DSGetRecordByLookup(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 ALookupKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 ALookupKey2: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 ALookupKey3: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                 var ResultSet: OleVariant): Integer; dispid 419;
    function DSGetRecordByCMSReference(ADatasetSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       ACMSRefKey1: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       ACMSRefKey2: Integer; ACMSRefKey3: Integer; 
                                       ACMSRefKey4: Integer; 
                                       ACMSRefKey5: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       var ResultSet: OleVariant): Integer; dispid 420;
    function DSGetDatasetSid(AVendorSid: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             ADatasetName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 421;
    property LastErrorMessage: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 422;
    property LastErrorCode: Integer readonly dispid 423;
    property LastErrorFunction: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 424;
    procedure ClearLastError; dispid 425;
    function BOPrint(BOHandle: Integer; ADocDesignName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                     AOverridePrinterName: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 426;
    function DSCommit: Integer; dispid 427;
    property CurrentUserId: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 428;
    property CurrentEmplId: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 429;
    function BOExecuteMethod(BOHandle: Integer; AMethodName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AParameterNames: OleVariant; AParameterValues: OleVariant): OleVariant; dispid 430;
    function Rediscover(AFlags: Integer): Integer; dispid 431;
    procedure LogEvent(ALogEventType: Integer; AAreaName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                       AVerbosity: Integer; AMessage: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 432;
    function BOGetAttributePermissions(BOHandle: Integer; 
                                       AttrName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                                       APermission: Integer; ACached: WordBool; AOvrCache: WordBool): WordBool; dispid 494;
    property Connected: WordBool readonly dispid 495;
    function BOGetAttributeNamesIncludedInList(BOHandle: Integer): OleVariant; dispid 496;
    function BOGetAttributeNamesIncludedInInstance(BOHandle: Integer): OleVariant; dispid 497;
    function GetPrimaryID: {NOT_OLEAUTO(PAnsiChar)}OleVariant; dispid 498;
  end;

// *********************************************************************//
// Interface: IRProServicesConsumer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {19AD4E98-B1E8-480C-B945-D77C08E8A3AD}
// *********************************************************************//
  IRProServicesConsumer = interface(IServerPlugin)
    ['{19AD4E98-B1E8-480C-B945-D77C08E8A3AD}']
    procedure InitializationProgress(StatusMessage: PAnsiChar); safecall;
    procedure HandleOnSetText(ABOHandle: Integer; AAttributeName: PAnsiChar; AOldValue: OleVariant; 
                              ANewValue: OleVariant); safecall;
    procedure HandleOnPrint(ABOHandle: Integer; APrintXML: PAnsiChar); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRProServicesConsumerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {19AD4E98-B1E8-480C-B945-D77C08E8A3AD}
// *********************************************************************//
  IRProServicesConsumerDisp = dispinterface
    ['{19AD4E98-B1E8-480C-B945-D77C08E8A3AD}']
    procedure InitializationProgress(StatusMessage: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 501;
    procedure HandleOnSetText(ABOHandle: Integer; 
                              AAttributeName: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                              AOldValue: OleVariant; ANewValue: OleVariant); dispid 502;
    procedure HandleOnPrint(ABOHandle: Integer; APrintXML: {NOT_OLEAUTO(PAnsiChar)}OleVariant); dispid 503;
    function PluginCapability(ACapability: Integer): WordBool; dispid 500;
    function HandleBOUIEvent(ABOHandle: Integer; AEventType: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                             AParameters: OleVariant; var AReturnValues: OleVariant; 
                             var AHandled: WordBool): WordBool; dispid 401;
    property BOUIEventsSupported: OleVariant readonly dispid 402;
    property BusinessObjectType: Integer readonly dispid 301;
    property Description: {NOT_OLEAUTO(PAnsiChar)}OleVariant readonly dispid 201;
    property GUID: {NOT_OLEAUTO(TGUID)}OleVariant readonly dispid 202;
    function HandleEvent: WordBool; dispid 203;
    procedure CleanUp; dispid 204;
    property Adapter: IPluginAdapter dispid 205;
    function Prepare: WordBool; dispid 206;
    property Priority: PluginPriority readonly dispid 207;
    property Enabled: WordBool dispid 208;
  end;

// *********************************************************************//
// Interface: IRProServicesProducer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2AFC85B8-ED7A-4CB6-8EC6-3BE8D5455BEC}
// *********************************************************************//
  IRProServicesProducer = interface(IDispatch)
    ['{2AFC85B8-ED7A-4CB6-8EC6-3BE8D5455BEC}']
    function Prepare(const Consumer: IRProServicesConsumer; Databasename: PAnsiChar; 
                     Username: PAnsiChar; Password: PAnsiChar): Integer; safecall;
    function CleanUp: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRProServicesProducerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2AFC85B8-ED7A-4CB6-8EC6-3BE8D5455BEC}
// *********************************************************************//
  IRProServicesProducerDisp = dispinterface
    ['{2AFC85B8-ED7A-4CB6-8EC6-3BE8D5455BEC}']
    function Prepare(const Consumer: IRProServicesConsumer; 
                     Databasename: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                     Username: {NOT_OLEAUTO(PAnsiChar)}OleVariant; 
                     Password: {NOT_OLEAUTO(PAnsiChar)}OleVariant): Integer; dispid 201;
    function CleanUp: Integer; dispid 202;
  end;

// *********************************************************************//
// Interface: ILicense
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {26579216-8FAD-444D-B39A-FA498477366E}
// *********************************************************************//
  ILicense = interface(IDispatch)
    ['{26579216-8FAD-444D-B39A-FA498477366E}']
    function Get_FeatureIDs: WideString; safecall;
    procedure Set_FeatureIDs(const Value: WideString); safecall;
    function Capability(ACapability: Integer): WordBool; safecall;
    property FeatureIDs: WideString read Get_FeatureIDs write Set_FeatureIDs;
  end;

// *********************************************************************//
// DispIntf:  ILicenseDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {26579216-8FAD-444D-B39A-FA498477366E}
// *********************************************************************//
  ILicenseDisp = dispinterface
    ['{26579216-8FAD-444D-B39A-FA498477366E}']
    property FeatureIDs: WideString dispid 201;
    function Capability(ACapability: Integer): WordBool; dispid 202;
  end;

// *********************************************************************//
// The Class CoAttributeValidationPlugin provides a Create and CreateRemote method to          
// create instances of the default interface IAttributeValidationPlugin exposed by              
// the CoClass AttributeValidationPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttributeValidationPlugin = class
    class function Create: IAttributeValidationPlugin;
    class function CreateRemote(const MachineName: string): IAttributeValidationPlugin;
  end;

// *********************************************************************//
// The Class CoAttributeAssignmentPlugin provides a Create and CreateRemote method to          
// create instances of the default interface IAttributeAssignmentPlugin exposed by              
// the CoClass AttributeAssignmentPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttributeAssignmentPlugin = class
    class function Create: IAttributeAssignmentPlugin;
    class function CreateRemote(const MachineName: string): IAttributeAssignmentPlugin;
  end;

// *********************************************************************//
// The Class CoEntityUpdatePlugin provides a Create and CreateRemote method to          
// create instances of the default interface IEntityUpdatePlugin exposed by              
// the CoClass EntityUpdatePlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEntityUpdatePlugin = class
    class function Create: IEntityUpdatePlugin;
    class function CreateRemote(const MachineName: string): IEntityUpdatePlugin;
  end;

// *********************************************************************//
// The Class CoItemAddRemovePlugin provides a Create and CreateRemote method to          
// create instances of the default interface IItemAddRemovePlugin exposed by              
// the CoClass ItemAddRemovePlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoItemAddRemovePlugin = class
    class function Create: IItemAddRemovePlugin;
    class function CreateRemote(const MachineName: string): IItemAddRemovePlugin;
  end;

// *********************************************************************//
// The Class CoSideButtonPlugin provides a Create and CreateRemote method to          
// create instances of the default interface ISideButtonPlugin exposed by              
// the CoClass SideButtonPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSideButtonPlugin = class
    class function Create: ISideButtonPlugin;
    class function CreateRemote(const MachineName: string): ISideButtonPlugin;
  end;

// *********************************************************************//
// The Class CoCustomAttributePlugin provides a Create and CreateRemote method to          
// create instances of the default interface ICustomAttributePlugin exposed by              
// the CoClass CustomAttributePlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCustomAttributePlugin = class
    class function Create: ICustomAttributePlugin;
    class function CreateRemote(const MachineName: string): ICustomAttributePlugin;
  end;

// *********************************************************************//
// The Class CoPrintPlugin provides a Create and CreateRemote method to          
// create instances of the default interface IPrintPlugin exposed by              
// the CoClass PrintPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPrintPlugin = class
    class function Create: IPrintPlugin;
    class function CreateRemote(const MachineName: string): IPrintPlugin;
  end;

// *********************************************************************//
// The Class CoEFTPlugin provides a Create and CreateRemote method to          
// create instances of the default interface IEFTPlugin exposed by              
// the CoClass EFTPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEFTPlugin = class
    class function Create: IEFTPlugin;
    class function CreateRemote(const MachineName: string): IEFTPlugin;
  end;

// *********************************************************************//
// The Class CoAttributeCalculationPlugin provides a Create and CreateRemote method to          
// create instances of the default interface IAttributeCalculationPlugin exposed by              
// the CoClass AttributeCalculationPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttributeCalculationPlugin = class
    class function Create: IAttributeCalculationPlugin;
    class function CreateRemote(const MachineName: string): IAttributeCalculationPlugin;
  end;

// *********************************************************************//
// The Class CoDiscover provides a Create and CreateRemote method to          
// create instances of the default interface IDiscover exposed by              
// the CoClass Discover. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDiscover = class
    class function Create: IDiscover;
    class function CreateRemote(const MachineName: string): IDiscover;
  end;

// *********************************************************************//
// The Class CoDisplayPlugin provides a Create and CreateRemote method to          
// create instances of the default interface IDisplayPlugin exposed by              
// the CoClass DisplayPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDisplayPlugin = class
    class function Create: IDisplayPlugin;
    class function CreateRemote(const MachineName: string): IDisplayPlugin;
  end;

// *********************************************************************//
// The Class CoCashDrawerPlugin provides a Create and CreateRemote method to          
// create instances of the default interface ICashDrawerPlugin exposed by              
// the CoClass CashDrawerPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCashDrawerPlugin = class
    class function Create: ICashDrawerPlugin;
    class function CreateRemote(const MachineName: string): ICashDrawerPlugin;
  end;

// *********************************************************************//
// The Class CoMSRPlugin provides a Create and CreateRemote method to          
// create instances of the default interface IMSRPlugin exposed by              
// the CoClass MSRPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSRPlugin = class
    class function Create: IMSRPlugin;
    class function CreateRemote(const MachineName: string): IMSRPlugin;
  end;

// *********************************************************************//
// The Class CoCheckImageScannerPlugin provides a Create and CreateRemote method to          
// create instances of the default interface ICheckImageScannerPlugin exposed by              
// the CoClass CheckImageScannerPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCheckImageScannerPlugin = class
    class function Create: ICheckImageScannerPlugin;
    class function CreateRemote(const MachineName: string): ICheckImageScannerPlugin;
  end;

// *********************************************************************//
// The Class CoMICRPlugin provides a Create and CreateRemote method to          
// create instances of the default interface IMICRPlugin exposed by              
// the CoClass MICRPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMICRPlugin = class
    class function Create: IMICRPlugin;
    class function CreateRemote(const MachineName: string): IMICRPlugin;
  end;

// *********************************************************************//
// The Class CoPinPadPlugin provides a Create and CreateRemote method to          
// create instances of the default interface IPinPadPlugin exposed by              
// the CoClass PinPadPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPinPadPlugin = class
    class function Create: IPinPadPlugin;
    class function CreateRemote(const MachineName: string): IPinPadPlugin;
  end;

// *********************************************************************//
// The Class CoScalePlugin provides a Create and CreateRemote method to          
// create instances of the default interface IScalePlugin exposed by              
// the CoClass ScalePlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoScalePlugin = class
    class function Create: IScalePlugin;
    class function CreateRemote(const MachineName: string): IScalePlugin;
  end;

// *********************************************************************//
// The Class CoBarCodeScannerPlugin provides a Create and CreateRemote method to          
// create instances of the default interface IBarCodeScannerPlugin exposed by              
// the CoClass BarCodeScannerPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBarCodeScannerPlugin = class
    class function Create: IBarCodeScannerPlugin;
    class function CreateRemote(const MachineName: string): IBarCodeScannerPlugin;
  end;

// *********************************************************************//
// The Class CoPrinterPlugin provides a Create and CreateRemote method to          
// create instances of the default interface IPrinterPlugin exposed by              
// the CoClass PrinterPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPrinterPlugin = class
    class function Create: IPrinterPlugin;
    class function CreateRemote(const MachineName: string): IPrinterPlugin;
  end;

// *********************************************************************//
// The Class CoTenderPlugin provides a Create and CreateRemote method to          
// create instances of the default interface ITenderPlugin exposed by              
// the CoClass TenderPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTenderPlugin = class
    class function Create: ITenderPlugin;
    class function CreateRemote(const MachineName: string): ITenderPlugin;
  end;

implementation

uses System.Win.ComObj;

class function CoAttributeValidationPlugin.Create: IAttributeValidationPlugin;
begin
  Result := CreateComObject(CLASS_AttributeValidationPlugin) as IAttributeValidationPlugin;
end;

class function CoAttributeValidationPlugin.CreateRemote(const MachineName: string): IAttributeValidationPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AttributeValidationPlugin) as IAttributeValidationPlugin;
end;

class function CoAttributeAssignmentPlugin.Create: IAttributeAssignmentPlugin;
begin
  Result := CreateComObject(CLASS_AttributeAssignmentPlugin) as IAttributeAssignmentPlugin;
end;

class function CoAttributeAssignmentPlugin.CreateRemote(const MachineName: string): IAttributeAssignmentPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AttributeAssignmentPlugin) as IAttributeAssignmentPlugin;
end;

class function CoEntityUpdatePlugin.Create: IEntityUpdatePlugin;
begin
  Result := CreateComObject(CLASS_EntityUpdatePlugin) as IEntityUpdatePlugin;
end;

class function CoEntityUpdatePlugin.CreateRemote(const MachineName: string): IEntityUpdatePlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EntityUpdatePlugin) as IEntityUpdatePlugin;
end;

class function CoItemAddRemovePlugin.Create: IItemAddRemovePlugin;
begin
  Result := CreateComObject(CLASS_ItemAddRemovePlugin) as IItemAddRemovePlugin;
end;

class function CoItemAddRemovePlugin.CreateRemote(const MachineName: string): IItemAddRemovePlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ItemAddRemovePlugin) as IItemAddRemovePlugin;
end;

class function CoSideButtonPlugin.Create: ISideButtonPlugin;
begin
  Result := CreateComObject(CLASS_SideButtonPlugin) as ISideButtonPlugin;
end;

class function CoSideButtonPlugin.CreateRemote(const MachineName: string): ISideButtonPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SideButtonPlugin) as ISideButtonPlugin;
end;

class function CoCustomAttributePlugin.Create: ICustomAttributePlugin;
begin
  Result := CreateComObject(CLASS_CustomAttributePlugin) as ICustomAttributePlugin;
end;

class function CoCustomAttributePlugin.CreateRemote(const MachineName: string): ICustomAttributePlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CustomAttributePlugin) as ICustomAttributePlugin;
end;

class function CoPrintPlugin.Create: IPrintPlugin;
begin
  Result := CreateComObject(CLASS_PrintPlugin) as IPrintPlugin;
end;

class function CoPrintPlugin.CreateRemote(const MachineName: string): IPrintPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PrintPlugin) as IPrintPlugin;
end;

class function CoEFTPlugin.Create: IEFTPlugin;
begin
  Result := CreateComObject(CLASS_EFTPlugin) as IEFTPlugin;
end;

class function CoEFTPlugin.CreateRemote(const MachineName: string): IEFTPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EFTPlugin) as IEFTPlugin;
end;

class function CoAttributeCalculationPlugin.Create: IAttributeCalculationPlugin;
begin
  Result := CreateComObject(CLASS_AttributeCalculationPlugin) as IAttributeCalculationPlugin;
end;

class function CoAttributeCalculationPlugin.CreateRemote(const MachineName: string): IAttributeCalculationPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AttributeCalculationPlugin) as IAttributeCalculationPlugin;
end;

class function CoDiscover.Create: IDiscover;
begin
  Result := CreateComObject(CLASS_Discover) as IDiscover;
end;

class function CoDiscover.CreateRemote(const MachineName: string): IDiscover;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Discover) as IDiscover;
end;

class function CoDisplayPlugin.Create: IDisplayPlugin;
begin
  Result := CreateComObject(CLASS_DisplayPlugin) as IDisplayPlugin;
end;

class function CoDisplayPlugin.CreateRemote(const MachineName: string): IDisplayPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DisplayPlugin) as IDisplayPlugin;
end;

class function CoCashDrawerPlugin.Create: ICashDrawerPlugin;
begin
  Result := CreateComObject(CLASS_CashDrawerPlugin) as ICashDrawerPlugin;
end;

class function CoCashDrawerPlugin.CreateRemote(const MachineName: string): ICashDrawerPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CashDrawerPlugin) as ICashDrawerPlugin;
end;

class function CoMSRPlugin.Create: IMSRPlugin;
begin
  Result := CreateComObject(CLASS_MSRPlugin) as IMSRPlugin;
end;

class function CoMSRPlugin.CreateRemote(const MachineName: string): IMSRPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSRPlugin) as IMSRPlugin;
end;

class function CoCheckImageScannerPlugin.Create: ICheckImageScannerPlugin;
begin
  Result := CreateComObject(CLASS_CheckImageScannerPlugin) as ICheckImageScannerPlugin;
end;

class function CoCheckImageScannerPlugin.CreateRemote(const MachineName: string): ICheckImageScannerPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CheckImageScannerPlugin) as ICheckImageScannerPlugin;
end;

class function CoMICRPlugin.Create: IMICRPlugin;
begin
  Result := CreateComObject(CLASS_MICRPlugin) as IMICRPlugin;
end;

class function CoMICRPlugin.CreateRemote(const MachineName: string): IMICRPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MICRPlugin) as IMICRPlugin;
end;

class function CoPinPadPlugin.Create: IPinPadPlugin;
begin
  Result := CreateComObject(CLASS_PinPadPlugin) as IPinPadPlugin;
end;

class function CoPinPadPlugin.CreateRemote(const MachineName: string): IPinPadPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PinPadPlugin) as IPinPadPlugin;
end;

class function CoScalePlugin.Create: IScalePlugin;
begin
  Result := CreateComObject(CLASS_ScalePlugin) as IScalePlugin;
end;

class function CoScalePlugin.CreateRemote(const MachineName: string): IScalePlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ScalePlugin) as IScalePlugin;
end;

class function CoBarCodeScannerPlugin.Create: IBarCodeScannerPlugin;
begin
  Result := CreateComObject(CLASS_BarCodeScannerPlugin) as IBarCodeScannerPlugin;
end;

class function CoBarCodeScannerPlugin.CreateRemote(const MachineName: string): IBarCodeScannerPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BarCodeScannerPlugin) as IBarCodeScannerPlugin;
end;

class function CoPrinterPlugin.Create: IPrinterPlugin;
begin
  Result := CreateComObject(CLASS_PrinterPlugin) as IPrinterPlugin;
end;

class function CoPrinterPlugin.CreateRemote(const MachineName: string): IPrinterPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PrinterPlugin) as IPrinterPlugin;
end;

class function CoTenderPlugin.Create: ITenderPlugin;
begin
  Result := CreateComObject(CLASS_TenderPlugin) as ITenderPlugin;
end;

class function CoTenderPlugin.CreateRemote(const MachineName: string): ITenderPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TenderPlugin) as ITenderPlugin;
end;

end.
