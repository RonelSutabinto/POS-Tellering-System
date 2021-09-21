unit TellerPOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, PDJSillyLabel, ExtCtrls, DB, MemDS, DBAccess,
  MyAccess, Grids, DBGrids, Mask, Gauges, Menus, DBCtrls,
  DsFancyButton, ComCtrls, Printers, NxEdit,
  NxCollection, Math, NxDBColumns, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, jpeg, CRGrid, CRDBGrid1, DBGrid1,
  AppEvnts, pngimage, Buttons, AdvSmoothLabel,dateUtils;

type
  TTellerPOSForm = class(TForm)
    MainPanel: TPanel;
    BtnSearch: TNxButton;
    TOR: TMyTable;
    Memo1: TNxMemo;
    Memo2: TNxMemo;
    Memo3: TNxMemo;
    DSTOR: TDataSource;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    DSUnPB: TDataSource;
    DSOp: TDataSource;
    Master: TMyQuery;
    InsertColl: TMyQuery;
    OtherPaymentsPanel: TNxHeaderPanel;
    OPText: TStaticText;
    Edit1: TEdit;
    StaticText4: TStaticText;
    UnPB: TMyQuery;
    TotalInterest: TStaticText;
    StaticText6: TStaticText;
    InsertOP: TMyQuery;
    TRDetail: TMyQuery;
    TimerPanel: TPanel;
    Gauge1: TGauge;
    CancelOR: TMyQuery;
    CancelPanel: TNxHeaderPanel;
    CancelTellerOR: TLabeledEdit;
    Password: TLabeledEdit;
    OkCancelTOR: TNxButton;
    PDJSillyLabel5: TNxButton;
    ARUpdateQuery: TMyQuery;
    DeleteUnpaidBillsQuery: TMyQuery;
    UnPBUpdateQuery: TMyQuery;
    deleteAR: TMyQuery;
    Collection: TMyQuery;
    UnpostAR: TMyTable;
    UnpostMaster: TMyTable;
    UpdateUNPBPayment: TMyQuery;
    PayAllocPanel: TNxHeaderPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    AmountToBePaid: TEdit;
    StaticText22: TStaticText;
    Button1: TNxButton;
    Label20: TLabel;
    StaticText23: TStaticText;
    Collect: TMyQuery;
    StaticText24: TStaticText;
    EVAT: TEdit;
    StaticText28: TStaticText;
    Timer2: TTimer;
    InsertTOR: TMyQuery;
    UnpostCredit: TMyQuery;
    UnpostCreditcredit: TFloatField;
    AR: TMyQuery;
    Panel1: TNxHeaderPanel;
    Memo4: TNxMemo;
    Memo5: TNxMemo;
    StaticText30: TStaticText;
    Label25: TLabel;
    Label26: TLabel;
    MTorAmountTendered: TNxEdit;
    Label27: TLabel;
    StaticText31: TStaticText;
    ClearButton: TNxButton;
    CloseMultipleTor: TNxButton;
    Recap: TMyQuery;
    Recapopdescription: TStringField;
    RecapTAmount: TFloatField;
    insertcancelledtor: TMyQuery;
    Insertprintedtor: TMyQuery;
    deleteprintedor: TMyQuery;
    MasterReconUpdate: TMyQuery;
    ReconUpdate: TMyQuery;
    PaymentPanel: TNxHeaderPanel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel1: TBevel;
    Label12: TLabel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CheckDate: TDateTimePicker;
    StaticText13: TStaticText;
    StaticText15: TStaticText;
    PrinterSetupDialog1: TPrinterSetupDialog;
    TRDetailEntry: TIntegerField;
    TRDetailReceiptNumber: TStringField;
    TRDetailAccountCode: TFloatField;
    TRDetailArea: TStringField;
    TRDetailBook: TStringField;
    TRDetailSequence: TStringField;
    TRDetailAccountNumber: TStringField;
    TRDetailName: TStringField;
    TRDetailBillMonth: TStringField;
    TRDetailTotalBill: TFloatField;
    TRDetailMembership: TFloatField;
    TRDetailPenalty: TFloatField;
    TRDetailSecurity: TFloatField;
    TRDetailMeterDeposit: TFloatField;
    TRDetailTransformerRental: TFloatField;
    TRDetailSundries: TStringField;
    TRDetailSundriesAmount: TFloatField;
    TRDetailUCNPCSD: TFloatField;
    TRDetailUCNPCSCC: TFloatField;
    TRDetailUCDUSCC: TFloatField;
    TRDetailUCME: TFloatField;
    TRDetailUCETR: TFloatField;
    TRDetailUCEC: TFloatField;
    TRDetailUCCSR: TFloatField;
    TRDetailLoanCondo: TFloatField;
    TRDetailTotal: TFloatField;
    TRDetailCollectorCode: TStringField;
    TRDetailDatePaid: TDateField;
    TRDetailDateRemitted: TDateField;
    TRDetailEncoderCode: TStringField;
    TRDetailPosted: TStringField;
    TRDetailKilowattHour: TFloatField;
    TRDetailAddress: TStringField;
    TRDetailOPDescription: TStringField;
    TRDetailOPAmount: TFloatField;
    TRDetailTellerORNumber: TStringField;
    TRDetailVATDiscAmt: TFloatField;
    TRDetailVATDistDiscAmt: TFloatField;
    TRDetailVATGenCoDiscAmt: TFloatField;
    TRDetailVATTransCoDiscAmt: TFloatField;
    TRDetailVATSystemLossDiscAmt: TFloatField;
    TRDetailVATDist: TFloatField;
    TRDetailVATGenCO: TFloatField;
    TRDetailVATTransCO: TFloatField;
    TRDetailVATSystemLossGenCO: TFloatField;
    TRDetailVATSystemLossTransCO: TFloatField;
    TRDetailVAT: TFloatField;
    UnPBP: TMyTable;
    BatchNumber: TLabel;
    CancelTOR: TMyQuery;
    CollectionEntry: TIntegerField;
    CollectionReceiptNumber: TStringField;
    CollectionAccountCode: TFloatField;
    CollectionArea: TStringField;
    CollectionBook: TStringField;
    CollectionSequence: TStringField;
    CollectionAccountNumber: TStringField;
    CollectionName: TStringField;
    CollectionBillMonth: TStringField;
    CollectionTotalBill: TFloatField;
    CollectionMembership: TFloatField;
    CollectionPenalty: TFloatField;
    CollectionSecurity: TFloatField;
    CollectionMeterDeposit: TFloatField;
    CollectionTransformerRental: TFloatField;
    CollectionSundries: TStringField;
    CollectionSundriesAmount: TFloatField;
    CollectionUCNPCSD: TFloatField;
    CollectionUCNPCSCC: TFloatField;
    CollectionUCDUSCC: TFloatField;
    CollectionUCME: TFloatField;
    CollectionUCETR: TFloatField;
    CollectionUCEC: TFloatField;
    CollectionUCCSR: TFloatField;
    CollectionLoanCondo: TFloatField;
    CollectionTotal: TFloatField;
    CollectionCollectorCode: TStringField;
    CollectionDatePaid: TDateField;
    CollectionDateRemitted: TDateField;
    CollectionEncoderCode: TStringField;
    CollectionPosted: TStringField;
    CollectionKilowattHour: TFloatField;
    CollectionAddress: TStringField;
    CollectionOPDescription: TStringField;
    CollectionOPAmount: TFloatField;
    CollectionTellerORNumber: TStringField;
    CollectionVATDiscAmt: TFloatField;
    CollectionVATDistDiscAmt: TFloatField;
    CollectionVATGenCoDiscAmt: TFloatField;
    CollectionVATTransCoDiscAmt: TFloatField;
    CollectionVATSystemLossDiscAmt: TFloatField;
    CollectionVATDist: TFloatField;
    CollectionVATGenCO: TFloatField;
    CollectionVATTransCO: TFloatField;
    CollectionVATSystemLossGenCO: TFloatField;
    CollectionVATSystemLossTransCO: TFloatField;
    CollectionVAT: TFloatField;
    DeleteCollection: TMyQuery;
    CollectEntry: TIntegerField;
    CollectReceiptNumber: TStringField;
    CollectAccountCode: TFloatField;
    CollectArea: TStringField;
    CollectBook: TStringField;
    CollectSequence: TStringField;
    CollectAccountNumber: TStringField;
    CollectName: TStringField;
    CollectBillMonth: TStringField;
    CollectTotalBill: TFloatField;
    CollectMembership: TFloatField;
    CollectPenalty: TFloatField;
    CollectSecurity: TFloatField;
    CollectMeterDeposit: TFloatField;
    CollectTransformerRental: TFloatField;
    CollectSundries: TStringField;
    CollectSundriesAmount: TFloatField;
    CollectUCNPCSD: TFloatField;
    CollectUCNPCSCC: TFloatField;
    CollectUCDUSCC: TFloatField;
    CollectUCME: TFloatField;
    CollectUCETR: TFloatField;
    CollectUCEC: TFloatField;
    CollectUCCSR: TFloatField;
    CollectLoanCondo: TFloatField;
    CollectTotal: TFloatField;
    CollectCollectorCode: TStringField;
    CollectDatePaid: TDateField;
    CollectDateRemitted: TDateField;
    CollectEncoderCode: TStringField;
    CollectPosted: TStringField;
    CollectKilowattHour: TFloatField;
    CollectAddress: TStringField;
    CollectOPDescription: TStringField;
    CollectOPAmount: TFloatField;
    CollectTellerORNumber: TStringField;
    CollectVATDiscAmt: TFloatField;
    CollectVATDistDiscAmt: TFloatField;
    CollectVATGenCoDiscAmt: TFloatField;
    CollectVATTransCoDiscAmt: TFloatField;
    CollectVATSystemLossDiscAmt: TFloatField;
    CollectVATDist: TFloatField;
    CollectVATGenCO: TFloatField;
    CollectVATTransCO: TFloatField;
    CollectVATSystemLossGenCO: TFloatField;
    CollectVATSystemLossTransCO: TFloatField;
    CollectVAT: TFloatField;
    cash: TEdit;
    CheckAmount: TEdit;
    CheckNumber: TEdit;
    StaticText14: TStaticText;
    ConsumerCallerPanel: TNxHeaderPanel;
    ConsumerCallerTeller: TStaticText;
    Label29: TLabel;
    Label31: TLabel;
    ConsumerCallerCustomerNumber: TStaticText;
    Bevel2: TBevel;
    DsFancyButton5: TNxButton;
    NowServing: TStaticText;
    Bevel6: TBevel;
    InsertConsumerCount: TMyQuery;
    GetCount: TMyQuery;
    PostCustomerCount: TMyQuery;
    CurrentCount: TMyQuery;
    CountLimit: TMyQuery;
    users: TMyQuery;
    usersUserName: TStringField;
    usersUserID: TStringField;
    usersUserPic: TBlobField;
    usersBillCode: TStringField;
    usersBillNumber: TIntegerField;
    usersPosition: TStringField;
    usersUserRestriction: TStringField;
    CountAll: TMyQuery;
    UnpostMasterCode: TIntegerField;
    UnpostMasterArea: TStringField;
    UnpostMasterBook: TStringField;
    UnpostMasterSequence: TStringField;
    UnpostMasterAccountNumber: TStringField;
    UnpostMasterName: TStringField;
    UnpostMasterAddress: TStringField;
    UnpostMasterRateCode: TStringField;
    UnpostMasterConsCode: TStringField;
    UnpostMasterConnCode: TStringField;
    UnpostMasterTransformer: TStringField;
    UnpostMasterMeterBrand: TStringField;
    UnpostMasterSerial: TStringField;
    UnpostMasterMultiplier: TFloatField;
    UnpostMasterNewConnectionDate: TDateField;
    UnpostMasterReconnectionDate: TDateField;
    UnpostMasterDisconnectionDate: TDateField;
    UnpostMasterPreviousReadingDate: TDateField;
    UnpostMasterPresentReadingDate: TDateField;
    UnpostMasterPreviousReadingKWH: TFloatField;
    UnpostMasterPresentReadingKWH: TFloatField;
    UnpostMasterDiff: TFloatField;
    UnpostMasterDemand: TFloatField;
    UnpostMasterFlatRateWattage: TFloatField;
    UnpostMasterFeedBackCode: TStringField;
    UnpostMasterCM: TStringField;
    UnpostMasterCMMultiplier: TFloatField;
    UnpostMasterCMPreviousReadingKWH: TFloatField;
    UnpostMasterCMPresentReadingKWH: TFloatField;
    UnpostMasterCMKilowattHour: TFloatField;
    UnpostMasterCMDemand: TFloatField;
    UnpostMasterKilowattHour: TFloatField;
    UnpostMasterKilowattUsed: TFloatField;
    UnpostMasterGenSysCharge: TFloatField;
    UnpostMasterHostCommCharge: TFloatField;
    UnpostMasterForexCharge: TFloatField;
    UnpostMasterTCDemandCharge: TFloatField;
    UnpostMasterTCTransSystemCharge: TFloatField;
    UnpostMasterSystemLossCharge: TFloatField;
    UnpostMasterDCDemandCharge: TFloatField;
    UnpostMasterDCDistributionCharge: TFloatField;
    UnpostMasterSCRetCustCharge: TFloatField;
    UnpostMasterSCSupplySysCharge: TFloatField;
    UnpostMasterMCRetailCustCharge: TFloatField;
    UnpostMasterMCSystemCharge: TFloatField;
    UnpostMasterUCNPCStrandedDebts: TFloatField;
    UnpostMasterUCNPCStrandedContCost: TFloatField;
    UnpostMasterUCDUStrandedContCost: TFloatField;
    UnpostMasterUCME: TFloatField;
    UnpostMasterUCEqTaxesAndRoyalties: TFloatField;
    UnpostMasterUCEC: TFloatField;
    UnpostMasterUCCrossSubRemoval: TFloatField;
    UnpostMasterICCrossSubsidyCharge: TFloatField;
    UnpostMasterPowerActRateRed: TFloatField;
    UnpostMasterLifelineDiscSubs: TFloatField;
    UnpostMasterLoanCondo: TFloatField;
    UnpostMasterTransformerRental: TFloatField;
    UnpostMasterOCCode1: TStringField;
    UnpostMasterOCAmount1: TFloatField;
    UnpostMasterOCMo1: TFloatField;
    UnpostMasterOCTotal1: TFloatField;
    UnpostMasterOCCode2: TStringField;
    UnpostMasterOCAmount2: TFloatField;
    UnpostMasterOCMo2: TFloatField;
    UnpostMasterOCTotal2: TFloatField;
    UnpostMasterOCCode3: TStringField;
    UnpostMasterOCAmount3: TFloatField;
    UnpostMasterOCMo3: TFloatField;
    UnpostMasterOCTotal3: TFloatField;
    UnpostMasterTotalBill: TFloatField;
    UnpostMasterBillNumber: TStringField;
    UnpostMasterOEBRNumber: TStringField;
    UnpostMasterBillMonth: TStringField;
    UnpostMasterDeleteRemarks: TStringField;
    UnpostMasterPoleNumber: TStringField;
    UnpostMasterFeederNumber: TStringField;
    UnpostMasterXFormerQty: TIntegerField;
    UnpostMasterXFormerKVA: TStringField;
    UnpostMasterAge30: TFloatField;
    UnpostMasterAge60: TFloatField;
    UnpostMasterAge90: TFloatField;
    UnpostMasterAge120: TFloatField;
    UnpostMasterAgeOver120: TFloatField;
    UnpostMasterAgeTotal: TFloatField;
    UnpostMasterTotalPayments: TFloatField;
    UnpostMasterARBalance: TFloatField;
    UnpostMasterLCCustMo: TFloatField;
    UnpostMasterPrevYearAdjPowerCost: TFloatField;
    UnpostMasterSysLossUnderRecov: TFloatField;
    UnpostMasterVATDisc: TFloatField;
    UnpostMasterVATDiscAmt: TFloatField;
    UnpostMasterVATDistDiscAmt: TFloatField;
    UnpostMasterVATGenCoDiscAmt: TFloatField;
    UnpostMasterVATTransCoDiscAmt: TFloatField;
    UnpostMasterVATSystemLossDiscAmt: TFloatField;
    UnpostMasterVATDist: TFloatField;
    UnpostMasterVATGenCO: TFloatField;
    UnpostMasterVATTransCO: TFloatField;
    UnpostMasterVATSystemLossGenCO: TFloatField;
    UnpostMasterVATSystemLossTransCO: TFloatField;
    UnpostMasterVAT: TFloatField;
    UnpostAREntry: TIntegerField;
    UnpostARCode: TFloatField;
    UnpostARDate: TDateField;
    UnpostARDocument: TStringField;
    UnpostARBillMonth: TStringField;
    UnpostARReading: TFloatField;
    UnpostARKilowattHour: TFloatField;
    UnpostARDebit: TFloatField;
    UnpostARCredit: TFloatField;
    UnpostARBalance: TFloatField;
    UnpostARUCNPCSD: TFloatField;
    UnpostARUCNPCSCC: TFloatField;
    UnpostARUCDUSCC: TFloatField;
    UnpostARUCME: TFloatField;
    UnpostARUCETR: TFloatField;
    UnpostARUCEC: TFloatField;
    UnpostARUCCSR: TFloatField;
    UnpostARCollectorCode: TStringField;
    UnpostARDeleteRemarks: TStringField;
    UnpostARVATDiscAmt: TFloatField;
    UnpostARVATDistDiscAmt: TFloatField;
    UnpostARVATGenCoDiscAmt: TFloatField;
    UnpostARVATTransCoDiscAmt: TFloatField;
    UnpostARVATSystemLossDiscAmt: TFloatField;
    UnpostARVATDist: TFloatField;
    UnpostARVATGenCO: TFloatField;
    UnpostARVATTransCO: TFloatField;
    UnpostARVATSystemLossGenCO: TFloatField;
    UnpostARVATSystemLossTransCO: TFloatField;
    UnpostARVAT: TFloatField;
    TORID: TIntegerField;
    TORORNumber: TStringField;
    TORORDate: TDateField;
    TORAccountNumber: TStringField;
    TORName: TStringField;
    TORAddress: TStringField;
    TORAmount: TFloatField;
    TORTellerCode: TStringField;
    TORTellerName: TStringField;
    TORCheckNumber: TStringField;
    TORCheckDate: TDateTimeField;
    TORBank: TStringField;
    TORCheckAmount: TFloatField;
    TORCashTendered: TFloatField;
    TORbackupor: TStringField;
    TORbatch: TStringField;
    TORTransStat: TStringField;
    TORORStatus: TStringField;
    UnPBPEntry: TIntegerField;
    UnPBPDocument: TStringField;
    UnPBPCode: TFloatField;
    UnPBPArea: TStringField;
    UnPBPBook: TStringField;
    UnPBPAccountNumber: TStringField;
    UnPBPDate: TDateField;
    UnPBPName: TStringField;
    UnPBPBillMonth: TStringField;
    UnPBPDeleteRemarks: TStringField;
    UnPBPRateCode: TStringField;
    UnPBPReading: TFloatField;
    UnPBPKilowattHour: TFloatField;
    UnPBPAmount: TFloatField;
    UnPBPUCNPCSD: TFloatField;
    UnPBPUCNPCSCC: TFloatField;
    UnPBPUCDUSCC: TFloatField;
    UnPBPUCME: TFloatField;
    UnPBPUCETR: TFloatField;
    UnPBPUCEC: TFloatField;
    UnPBPUCCSR: TFloatField;
    UnPBPTransformerRental: TFloatField;
    UnPBPVATDiscAmt: TFloatField;
    UnPBPVATDistDiscAmt: TFloatField;
    UnPBPVATGenCoDiscAmt: TFloatField;
    UnPBPVATTransCoDiscAmt: TFloatField;
    UnPBPVATSystemLossDiscAmt: TFloatField;
    UnPBPVATDist: TFloatField;
    UnPBPVATGenCO: TFloatField;
    UnPBPVATTransCO: TFloatField;
    UnPBPVATSystemLossGenCO: TFloatField;
    UnPBPVATSystemLossTransCO: TFloatField;
    UnPBPVAT: TFloatField;
    DsFancyButton7: TNxButton;
    MTotalAmount: TEdit;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    StaticText37: TStaticText;
    StaticText38: TStaticText;
    StaticText39: TStaticText;
    MUCME: TEdit;
    MUCEC: TEdit;
    MVNetGenco: TEdit;
    MVNetTransco: TEdit;
    MVNetSystemLoss: TEdit;
    MVNetDistribution: TEdit;
    StaticText40: TStaticText;
    MVNetTotal: TEdit;
    StaticText41: TStaticText;
    MNetAmount: TEdit;
    Panel2: TNxHeaderPanel;
    OP: TMyQuery;
    OPID: TIntegerField;
    OPCode: TStringField;
    OPDescription: TStringField;
    DsFancyButton9: TNxButton;
    DsFancyButton10: TNxButton;
    groupselect: TMyQuery;
    dsgroupselect: TDataSource;
    Panel3: TNxHeaderPanel;
    CollectorCode: TLabeledEdit;
    DsFancyButton11: TNxButton;
    DsFancyButton12: TNxButton;
    treceipts: TMyQuery;
    treceiptstotalreceipt: TLargeintField;
    groupselectcollectorcode: TStringField;
    groupselectname: TStringField;
    groupselectusertype: TStringField;
    groupselectdatepaid: TDateField;
    groupselectencodercode: TStringField;
    groupselectsundries: TStringField;
    groupselecttotalbill: TFloatField;
    groupselectucec: TFloatField;
    groupselectucme: TFloatField;
    groupselectvatdist: TFloatField;
    groupselectvatgenco: TFloatField;
    groupselectvattransco: TFloatField;
    groupselectvatsystemloss: TFloatField;
    groupselectNetAmount: TFloatField;
    groupselecttotalaccount: TLargeintField;
    groupselectposted: TStringField;
    groupselecttransformerrental: TFloatField;
    RemittanceARUpdate: TMyQuery;
    RemittanceDeleteUnpaidBills: TMyQuery;
    RemittanceUpdateCollectionQuery: TMyQuery;
    AutoPostPanel: TNxHeaderPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    APCollectorCode: TStaticText;
    APCollectorName: TStaticText;
    APDatePaid: TStaticText;
    APBatch: TStaticText;
    Bevel10: TBevel;
    AutoPostMemo: TMemo;
    DonePost: TNxButton;
    APORNumber: TStaticText;
    Label42: TLabel;
    StaticText12: TStaticText;
    MTransformer: TEdit;
    StaticText43: TStaticText;
    PutCashierORInAR: TMyQuery;
    UpdateORCount: TMyQuery;
    SpotBillingPanel: TNxHeaderPanel;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    SBAccountNumber: TStaticText;
    SBConsumerName: TStaticText;
    SBConsumerType: TStaticText;
    SBBillMonth: TNxEdit;
    SBPresentReading: TNxEdit;
    SBPreviousReading: TNxEdit;
    SBKilowattHour: TNxEdit;
    NxLabel5: TNxLabel;
    NxLabel6: TNxLabel;
    NxLabel7: TNxLabel;
    SBAmount: TNxButtonEdit;
    NxLabel8: TNxLabel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    CBM: TMyQuery;
    CBMmbillmonth: TStringField;
    CBMmbillorder: TDateField;
    MRate: TMyQuery;
    MRateEntry: TIntegerField;
    MRateMBillMonth: TStringField;
    MRateRateCode: TStringField;
    MRateRemarks: TStringField;
    MRateGenSysRate: TFloatField;
    MRateHostCommRate: TFloatField;
    MRateFOREXRate: TFloatField;
    MRateTCDemandRate: TFloatField;
    MRateTCSystemRate: TFloatField;
    MRateSystemLossRate: TFloatField;
    MRateDCDemandRate: TFloatField;
    MRateDCSystemRate: TFloatField;
    MRateSCRetailCustRate: TFloatField;
    MRateSCSupplySysRate: TFloatField;
    MRateMCRetailCustRate: TFloatField;
    MRateMCSysRate: TFloatField;
    MRateUCNPCStrandedDebtsRate: TFloatField;
    MRateUCNPCStrandedContCostRate: TFloatField;
    MRateUCDUStrandedContCostRate: TFloatField;
    MRateUCMERate: TFloatField;
    MRateUCEqTaxesAndRoyaltiesRate: TFloatField;
    MRateUCECRate: TFloatField;
    MRateUCCrossSubsidyRemovalRate: TFloatField;
    MRateICCrossSubsidyRate: TFloatField;
    MRatePARARate: TFloatField;
    MRateLifelineSubsidyRate: TFloatField;
    MRateLoanCondo: TFloatField;
    MRateGram: TFloatField;
    MRateLCcustmo: TFloatField;
    MRatePrevYearAdjPowerCost: TFloatField;
    MRateSysLossUnderRecov: TFloatField;
    MRateVAT: TFloatField;
    MRateVATGenCo: TFloatField;
    MRateVATTransCo: TFloatField;
    MRateVATSystemLossGenCO: TFloatField;
    MRateVATSystemLossTransCO: TFloatField;
    MRateVATSystemLoss: TFloatField;
    GetPKV: TMyQuery;
    GetPKVdebit: TFloatField;
    GetPKVcredit: TFloatField;
    SBQ: TMyQuery;
    NxHeaderPanel1: TNxHeaderPanel;
    Teller: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    TellerOR: TStaticText;
    CollectDate: TStaticText;
    StaticText9: TStaticText;
    IntText: TStaticText;
    StaticText8: TStaticText;
    StaticText16: TStaticText;
    VatText: TStaticText;
    StaticText26: TStaticText;
    DBImage1: TDBImage;
    SearchAccount: TNxEdit;
    ConsumerDataBox: TNxHeaderPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Area: TNxEdit;
    Book: TNxEdit;
    Sequence: TNxEdit;
    Name: TNxEdit;
    Address: TNxEdit;
    ConnCode: TNxEdit;
    Label44: TLabel;
    OutstandingAccountBox: TNxHeaderPanel;
    OtherPaymentsBox: TNxHeaderPanel;
    OPDesc: TNxEdit;
    btnfindaccount: TNxButton;
    Image2: TImage;
    CollectSystemLossCharge: TFloatField;
    CollectionSystemLossCharge: TFloatField;
    TRDetailSystemLossCharge: TFloatField;
    UnPBPSystemLossCharge: TFloatField;
    Collector: TMyQuery;
    DiscoIssuePanel: TNxHeaderPanel;
    CollectorEntry: TIntegerField;
    CollectorCollectorCode: TStringField;
    CollectorUserType: TStringField;
    CollectorPicture: TBlobField;
    CollectorName: TStringField;
    CollectorORCount: TLargeintField;
    Label21: TLabel;
    Label22: TLabel;
    SCollector: TStaticText;
    SDateIssued: TStaticText;
    NxMemo1: TNxMemo;
    NxButton3: TNxButton;
    MasterCode: TIntegerField;
    MasterArea: TStringField;
    MasterBook: TStringField;
    MasterSequence: TStringField;
    MasterAccountNumber: TStringField;
    MasterName: TStringField;
    MasterAddress: TStringField;
    MasterRateCode: TStringField;
    MasterConsCode: TStringField;
    MasterConnCode: TStringField;
    MasterTransformer: TStringField;
    MasterMeterBrand: TStringField;
    MasterSerial: TStringField;
    MasterMultiplier: TFloatField;
    MasterNewConnectionDate: TDateField;
    MasterReconnectionDate: TDateField;
    MasterDisconnectionDate: TDateField;
    MasterPreviousReadingDate: TDateField;
    MasterPresentReadingDate: TDateField;
    MasterPreviousReadingKWH: TFloatField;
    MasterPresentReadingKWH: TFloatField;
    MasterDiff: TFloatField;
    MasterDemand: TFloatField;
    MasterFlatRateWattage: TFloatField;
    MasterFeedBackCode: TStringField;
    MasterCM: TStringField;
    MasterCMMultiplier: TFloatField;
    MasterCMPreviousReadingKWH: TFloatField;
    MasterCMPresentReadingKWH: TFloatField;
    MasterCMKilowattHour: TFloatField;
    MasterCMDemand: TFloatField;
    MasterKilowattHour: TFloatField;
    MasterKilowattUsed: TFloatField;
    MasterGenSysCharge: TFloatField;
    MasterHostCommCharge: TFloatField;
    MasterForexCharge: TFloatField;
    MasterTCDemandCharge: TFloatField;
    MasterTCTransSystemCharge: TFloatField;
    MasterSystemLossCharge: TFloatField;
    MasterDCDemandCharge: TFloatField;
    MasterDCDistributionCharge: TFloatField;
    MasterSCRetCustCharge: TFloatField;
    MasterSCSupplySysCharge: TFloatField;
    MasterMCRetailCustCharge: TFloatField;
    MasterMCSystemCharge: TFloatField;
    MasterUCNPCStrandedDebts: TFloatField;
    MasterUCNPCStrandedContCost: TFloatField;
    MasterUCDUStrandedContCost: TFloatField;
    MasterUCME: TFloatField;
    MasterUCEqTaxesAndRoyalties: TFloatField;
    MasterUCEC: TFloatField;
    MasterUCCrossSubRemoval: TFloatField;
    MasterICCrossSubsidyCharge: TFloatField;
    MasterPowerActRateRed: TFloatField;
    MasterLifelineDiscSubs: TFloatField;
    MasterLoanCondo: TFloatField;
    MasterTransformerRental: TFloatField;
    MasterOCCode1: TStringField;
    MasterOCAmount1: TFloatField;
    MasterOCMo1: TFloatField;
    MasterOCTotal1: TFloatField;
    MasterOCCode2: TStringField;
    MasterOCAmount2: TFloatField;
    MasterOCMo2: TFloatField;
    MasterOCTotal2: TFloatField;
    MasterOCCode3: TStringField;
    MasterOCAmount3: TFloatField;
    MasterOCMo3: TFloatField;
    MasterOCTotal3: TFloatField;
    MasterTotalBill: TFloatField;
    MasterBillNumber: TStringField;
    MasterOEBRNumber: TStringField;
    MasterBillMonth: TStringField;
    MasterDeleteRemarks: TStringField;
    MasterPoleNumber: TStringField;
    MasterFeederNumber: TStringField;
    MasterXFormerQty: TIntegerField;
    MasterXFormerKVA: TStringField;
    MasterAge30: TFloatField;
    MasterAge60: TFloatField;
    MasterAge90: TFloatField;
    MasterAge120: TFloatField;
    MasterAgeOver120: TFloatField;
    MasterAgeTotal: TFloatField;
    MasterTotalPayments: TFloatField;
    MasterARBalance: TFloatField;
    MasterLCCustMo: TFloatField;
    MasterPrevYearAdjPowerCost: TFloatField;
    MasterSysLossUnderRecov: TFloatField;
    MasterVATDisc: TFloatField;
    MasterVATDiscAmt: TFloatField;
    MasterVATDistDiscAmt: TFloatField;
    MasterVATGenCoDiscAmt: TFloatField;
    MasterVATTransCoDiscAmt: TFloatField;
    MasterVATSystemLossDiscAmt: TFloatField;
    MasterVATDist: TFloatField;
    MasterVATGenCO: TFloatField;
    MasterVATTransCO: TFloatField;
    MasterVATSystemLossGenCO: TFloatField;
    MasterVATSystemLossTransCO: TFloatField;
    MasterVAT: TFloatField;
    SBMult: TStaticText;
    NxLabel9: TNxLabel;
    SBCMLastRead: TStaticText;
    NxLabel10: TNxLabel;
    SBCMPrevRead: TStaticText;
    NxLabel11: TNxLabel;
    SBCMMult: TStaticText;
    NxLabel12: TNxLabel;
    SBOC1: TStaticText;
    SBOCAmount1: TStaticText;
    NxLabel13: TNxLabel;
    SBOCAmount2: TStaticText;
    SBOC2: TStaticText;
    NxLabel14: TNxLabel;
    SBOCAmount3: TStaticText;
    SBOC3: TStaticText;
    NxLabel15: TNxLabel;
    MasterUpdateQuery: TMyQuery;
    UpdateARLedgerDebit: TMyQuery;
    BillHistoryUpdateQuery: TMyQuery;
    MyConnection1: TMyConnection;
    UpdateORNumber: TMyQuery;
    InsertRecon: TMyQuery;
    UpdateMaster: TMyQuery;
    NewMember: TMyQuery;
    NewConn: TMyQuery;
    NewApplicant: TMyQuery;
    dsNewApplicant: TMyDataSource;
    UpdateNewApp: TMyQuery;
    NewApplicantCharges: TMyQuery;
    NewApplicantChargesidnewapplycharges: TLargeintField;
    NewApplicantChargesidnewapply: TFloatField;
    NewApplicantChargesdescription: TStringField;
    NewApplicantChargesamount: TFloatField;
    Recon: TMyQuery;
    Reconidrecon: TLargeintField;
    Reconcode: TFloatField;
    ReconArea: TStringField;
    ReconBook: TStringField;
    ReconAccountnumber: TStringField;
    ReconName: TStringField;
    ReconAddress: TStringField;
    Reconreconnectionfee: TFloatField;
    ReconBillDeposit: TFloatField;
    ReconRemarks: TStringField;
    ReconMeterBrand: TStringField;
    ReconSerial: TStringField;
    ReconAmp: TStringField;
    ReconPhase: TStringField;
    ReconMeterType: TStringField;
    ReconMultiplier: TFloatField;
    ReconInitialReading: TFloatField;
    ReconReadingDate: TDateField;
    ReconDiscoDate: TDateField;
    ReconORDate: TDateField;
    dsRecon: TMyDataSource;
    Bevel3: TBevel;
    NewApplicantidNewApply: TLargeintField;
    NewApplicantArea: TStringField;
    NewApplicantBook: TStringField;
    NewApplicantName: TStringField;
    NewApplicantAddress: TStringField;
    NewApplicantcomember: TStringField;
    NewApplicantratecode: TStringField;
    NewApplicantDistrict: TStringField;
    NewApplicantPanel: TNxHeaderPanel;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    FindApplicant: TNxButtonEdit;
    NxButton4: TNxButton;
    NxButton7: TNxButton;
    ReconPanel: TNxHeaderPanel;
    FindRecon: TNxButtonEdit;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    NextDBGrid2: TNextDBGrid;
    TNxDBTextColumn7: TNxDBTextColumn;
    TNxDBTextColumn8: TNxDBTextColumn;
    TNxDBTextColumn9: TNxDBTextColumn;
    TNxDBNumberColumn3: TNxDBNumberColumn;
    TNxDBNumberColumn4: TNxDBNumberColumn;
    Disco: TMyQuery;
    DiscoPanel: TNxHeaderPanel;
    FindDisco: TNxButtonEdit;
    NxButton8: TNxButton;
    NxButton9: TNxButton;
    NextDBGrid3: TNextDBGrid;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    dsDisco: TMyDataSource;
    FixAccount: TMyQuery;
    SORemitPanel: TNxHeaderPanel;
    SOAcro: TNxEdit;
    NxLabel16: TNxLabel;
    NextDBGrid4: TNextDBGrid;
    NxButton10: TNxButton;
    NxButton11: TNxButton;
    NxButton12: TNxButton;
    AccountCode: TMyQuery;
    AccountCodeID: TIntegerField;
    AccountCodeCode: TStringField;
    AccountCodeDescription: TStringField;
    AccountCodeAmount: TFloatField;
    dsAccountCode: TDataSource;
    TNxDBTextColumn5: TNxDBTextColumn;
    TNxDBTextColumn6: TNxDBTextColumn;
    TNxDBNumberColumn6: TNxDBNumberColumn;
    CheckMaster: TMyQuery;
    CheckMasterCode: TIntegerField;
    CheckMasterArea: TStringField;
    CheckMasterBook: TStringField;
    CheckMasterSequence: TStringField;
    CheckMasterAccountNumber: TStringField;
    CheckMasterName: TStringField;
    CheckMasterAddress: TStringField;
    CheckMasterRateCode: TStringField;
    CheckMasterConsCode: TStringField;
    CheckMasterConnCode: TStringField;
    CheckMasterTransformer: TStringField;
    CheckMasterMeterBrand: TStringField;
    CheckMasterSerial: TStringField;
    CheckMasterMultiplier: TFloatField;
    CheckMasterNewConnectionDate: TDateField;
    CheckMasterReconnectionDate: TDateField;
    CheckMasterDisconnectionDate: TDateField;
    CheckMasterPreviousReadingDate: TDateField;
    CheckMasterPresentReadingDate: TDateField;
    CheckMasterPreviousReadingKWH: TFloatField;
    CheckMasterPresentReadingKWH: TFloatField;
    CheckMasterDiff: TFloatField;
    CheckMasterDemand: TFloatField;
    CheckMasterFlatRateWattage: TFloatField;
    CheckMasterFeedBackCode: TStringField;
    CheckMasterCM: TStringField;
    CheckMasterCMMultiplier: TFloatField;
    CheckMasterCMPreviousReadingKWH: TFloatField;
    CheckMasterCMPresentReadingKWH: TFloatField;
    CheckMasterCMKilowattHour: TFloatField;
    CheckMasterCMDemand: TFloatField;
    CheckMasterKilowattHour: TFloatField;
    CheckMasterKilowattUsed: TFloatField;
    CheckMasterGenSysCharge: TFloatField;
    CheckMasterHostCommCharge: TFloatField;
    CheckMasterForexCharge: TFloatField;
    CheckMasterTCDemandCharge: TFloatField;
    CheckMasterTCTransSystemCharge: TFloatField;
    CheckMasterSystemLossCharge: TFloatField;
    CheckMasterDCDemandCharge: TFloatField;
    CheckMasterDCDistributionCharge: TFloatField;
    CheckMasterSCRetCustCharge: TFloatField;
    CheckMasterSCSupplySysCharge: TFloatField;
    CheckMasterMCRetailCustCharge: TFloatField;
    CheckMasterMCSystemCharge: TFloatField;
    CheckMasterUCNPCStrandedDebts: TFloatField;
    CheckMasterUCNPCStrandedContCost: TFloatField;
    CheckMasterUCDUStrandedContCost: TFloatField;
    CheckMasterUCME: TFloatField;
    CheckMasterUCEqTaxesAndRoyalties: TFloatField;
    CheckMasterUCEC: TFloatField;
    CheckMasterUCCrossSubRemoval: TFloatField;
    CheckMasterICCrossSubsidyCharge: TFloatField;
    CheckMasterPowerActRateRed: TFloatField;
    CheckMasterLifelineDiscSubs: TFloatField;
    CheckMasterLoanCondo: TFloatField;
    CheckMasterTransformerRental: TFloatField;
    CheckMasterOCCode1: TStringField;
    CheckMasterOCAmount1: TFloatField;
    CheckMasterOCMo1: TFloatField;
    CheckMasterOCTotal1: TFloatField;
    CheckMasterOCCode2: TStringField;
    CheckMasterOCAmount2: TFloatField;
    CheckMasterOCMo2: TFloatField;
    CheckMasterOCTotal2: TFloatField;
    CheckMasterOCCode3: TStringField;
    CheckMasterOCAmount3: TFloatField;
    CheckMasterOCMo3: TFloatField;
    CheckMasterOCTotal3: TFloatField;
    CheckMasterTotalBill: TFloatField;
    CheckMasterBillNumber: TStringField;
    CheckMasterOEBRNumber: TStringField;
    CheckMasterBillMonth: TStringField;
    CheckMasterDeleteRemarks: TStringField;
    CheckMasterPoleNumber: TStringField;
    CheckMasterFeederNumber: TStringField;
    CheckMasterXFormerQty: TIntegerField;
    CheckMasterXFormerKVA: TStringField;
    CheckMasterAge30: TFloatField;
    CheckMasterAge60: TFloatField;
    CheckMasterAge90: TFloatField;
    CheckMasterAge120: TFloatField;
    CheckMasterAgeOver120: TFloatField;
    CheckMasterAgeTotal: TFloatField;
    CheckMasterTotalPayments: TFloatField;
    CheckMasterARBalance: TFloatField;
    CheckMasterLCCustMo: TFloatField;
    CheckMasterPrevYearAdjPowerCost: TFloatField;
    CheckMasterSysLossUnderRecov: TFloatField;
    CheckMasterVATDisc: TFloatField;
    CheckMasterVATDiscAmt: TFloatField;
    CheckMasterVATDistDiscAmt: TFloatField;
    CheckMasterVATGenCoDiscAmt: TFloatField;
    CheckMasterVATTransCoDiscAmt: TFloatField;
    CheckMasterVATSystemLossDiscAmt: TFloatField;
    CheckMasterVATDist: TFloatField;
    CheckMasterVATGenCO: TFloatField;
    CheckMasterVATTransCO: TFloatField;
    CheckMasterVATSystemLossGenCO: TFloatField;
    CheckMasterVATSystemLossTransCO: TFloatField;
    CheckMasterVAT: TFloatField;
    dsCheckMaster: TDataSource;
    NxAlertWindow1: TNxAlertWindow;
    MoreAccountPanel: TNxHeaderPanel;
    billhistory: TMyQuery;
    SBReadingDate: TNxDatePicker;
    NxLabel18: TNxLabel;
    tempbill: TMyQuery;
    tempbillaccountnumber: TStringField;
    tempbillpresentreadingkwh: TFloatField;
    tempbillpresentreadingdate: TDateField;
    NxButton13: TNxButton;
    AverageConsumptionPanel: TNxHeaderPanel;
    AveCons: TNxNumberEdit;
    AvePassword: TNxEdit;
    NxLabel19: TNxLabel;
    NxLabel20: TNxLabel;
    NxButton14: TNxButton;
    NxButton15: TNxButton;
    FormType: TStaticText;
    NxLabel21: TNxLabel;
    NxLabel22: TNxLabel;
    BH: TMyQuery;
    LBH: TMyQuery;
    BHentry: TIntegerField;
    BHCode: TFloatField;
    BHArea: TStringField;
    BHBook: TStringField;
    BHSequence: TStringField;
    BHAccountNumber: TStringField;
    BHName: TStringField;
    BHAddress: TStringField;
    BHRateCode: TStringField;
    BHSerial: TStringField;
    BHMultiplier: TFloatField;
    BHPreviousReadingDate: TDateField;
    BHPresentReadingDate: TDateField;
    BHPreviousReadingKWH: TFloatField;
    BHPresentReadingKWH: TFloatField;
    BHDiff: TFloatField;
    BHDemand: TFloatField;
    BHFlatRateWattage: TFloatField;
    BHFeedBackCode: TStringField;
    BHCM: TStringField;
    BHCMMultiplier: TFloatField;
    BHCMPreviousReadingKWH: TFloatField;
    BHCMPresentReadingKWH: TFloatField;
    BHCMKilowattHour: TFloatField;
    BHCMDemand: TFloatField;
    BHKilowattHour: TFloatField;
    BHKilowattUsed: TFloatField;
    BHGenSysCharge: TFloatField;
    BHHostCommCharge: TFloatField;
    BHForexCharge: TFloatField;
    BHTCDemandCharge: TFloatField;
    BHTCTransSystemCharge: TFloatField;
    BHSystemLossCharge: TFloatField;
    BHDCDemandCharge: TFloatField;
    BHDCDistributionCharge: TFloatField;
    BHSCRetCustCharge: TFloatField;
    BHSCSupplySysCharge: TFloatField;
    BHMCRetailCustCharge: TFloatField;
    BHMCSystemCharge: TFloatField;
    BHUCNPCStrandedDebts: TFloatField;
    BHUCNPCStrandedContCost: TFloatField;
    BHUCDUStrandedContCost: TFloatField;
    BHUCME: TFloatField;
    BHUCEqTaxesAndRoyalties: TFloatField;
    BHUCEC: TFloatField;
    BHUCCrossSubRemoval: TFloatField;
    BHICCrossSubsidyCharge: TFloatField;
    BHPowerActRateRed: TFloatField;
    BHLifelineDiscSubs: TFloatField;
    BHLoanCondo: TFloatField;
    BHTransformerRental: TFloatField;
    BHOCCode1: TStringField;
    BHOCAmount1: TFloatField;
    BHOCMo1: TFloatField;
    BHOCTotal1: TFloatField;
    BHOCCode2: TStringField;
    BHOCAmount2: TFloatField;
    BHOCMo2: TFloatField;
    BHOCTotal2: TFloatField;
    BHOCCode3: TStringField;
    BHOCAmount3: TFloatField;
    BHOCMo3: TFloatField;
    BHOCTotal3: TFloatField;
    BHTotalBill: TFloatField;
    BHBillNumber: TStringField;
    BHOEBRNumber: TStringField;
    BHBillMonth: TStringField;
    BHBillDate: TDateField;
    BHstatuscode: TStringField;
    BHLCCustMo: TFloatField;
    BHPrevYearAdjPowerCost: TFloatField;
    BHSysLossUnderRecov: TFloatField;
    BHVATDisc: TFloatField;
    BHVATDiscAmt: TFloatField;
    BHVATDistDiscAmt: TFloatField;
    BHVATGenCoDiscAmt: TFloatField;
    BHVATTransCoDiscAmt: TFloatField;
    BHVATSystemLossDiscAmt: TFloatField;
    BHVATDist: TFloatField;
    BHVATGenCO: TFloatField;
    BHVATTransCO: TFloatField;
    BHVATSystemLossGenCO: TFloatField;
    BHVATSystemLossTransCO: TFloatField;
    BHVAT: TFloatField;
    BHAdjAmountBalance: TFloatField;
    BHAdjAmountApplied: TFloatField;
    BHReadTime: TStringField;
    LBHentry: TIntegerField;
    LBHCode: TFloatField;
    LBHArea: TStringField;
    LBHBook: TStringField;
    LBHSequence: TStringField;
    LBHAccountNumber: TStringField;
    LBHName: TStringField;
    LBHAddress: TStringField;
    LBHRateCode: TStringField;
    LBHSerial: TStringField;
    LBHMultiplier: TFloatField;
    LBHPreviousReadingDate: TDateField;
    LBHPresentReadingDate: TDateField;
    LBHPreviousReadingKWH: TFloatField;
    LBHPresentReadingKWH: TFloatField;
    LBHDiff: TFloatField;
    LBHDemand: TFloatField;
    LBHFlatRateWattage: TFloatField;
    LBHFeedBackCode: TStringField;
    LBHCM: TStringField;
    LBHCMMultiplier: TFloatField;
    LBHCMPreviousReadingKWH: TFloatField;
    LBHCMPresentReadingKWH: TFloatField;
    LBHCMKilowattHour: TFloatField;
    LBHCMDemand: TFloatField;
    LBHKilowattHour: TFloatField;
    LBHKilowattUsed: TFloatField;
    LBHGenSysCharge: TFloatField;
    LBHHostCommCharge: TFloatField;
    LBHForexCharge: TFloatField;
    LBHTCDemandCharge: TFloatField;
    LBHTCTransSystemCharge: TFloatField;
    LBHSystemLossCharge: TFloatField;
    LBHDCDemandCharge: TFloatField;
    LBHDCDistributionCharge: TFloatField;
    LBHSCRetCustCharge: TFloatField;
    LBHSCSupplySysCharge: TFloatField;
    LBHMCRetailCustCharge: TFloatField;
    LBHMCSystemCharge: TFloatField;
    LBHUCNPCStrandedDebts: TFloatField;
    LBHUCNPCStrandedContCost: TFloatField;
    LBHUCDUStrandedContCost: TFloatField;
    LBHUCME: TFloatField;
    LBHUCEqTaxesAndRoyalties: TFloatField;
    LBHUCEC: TFloatField;
    LBHUCCrossSubRemoval: TFloatField;
    LBHICCrossSubsidyCharge: TFloatField;
    LBHPowerActRateRed: TFloatField;
    LBHLifelineDiscSubs: TFloatField;
    LBHLoanCondo: TFloatField;
    LBHTransformerRental: TFloatField;
    LBHOCCode1: TStringField;
    LBHOCAmount1: TFloatField;
    LBHOCMo1: TFloatField;
    LBHOCTotal1: TFloatField;
    LBHOCCode2: TStringField;
    LBHOCAmount2: TFloatField;
    LBHOCMo2: TFloatField;
    LBHOCTotal2: TFloatField;
    LBHOCCode3: TStringField;
    LBHOCAmount3: TFloatField;
    LBHOCMo3: TFloatField;
    LBHOCTotal3: TFloatField;
    LBHTotalBill: TFloatField;
    LBHBillNumber: TStringField;
    LBHOEBRNumber: TStringField;
    LBHBillMonth: TStringField;
    LBHBillDate: TDateField;
    LBHstatuscode: TStringField;
    LBHLCCustMo: TFloatField;
    LBHPrevYearAdjPowerCost: TFloatField;
    LBHSysLossUnderRecov: TFloatField;
    LBHVATDisc: TFloatField;
    LBHVATDiscAmt: TFloatField;
    LBHVATDistDiscAmt: TFloatField;
    LBHVATGenCoDiscAmt: TFloatField;
    LBHVATTransCoDiscAmt: TFloatField;
    LBHVATSystemLossDiscAmt: TFloatField;
    LBHVATDist: TFloatField;
    LBHVATGenCO: TFloatField;
    LBHVATTransCO: TFloatField;
    LBHVATSystemLossGenCO: TFloatField;
    LBHVATSystemLossTransCO: TFloatField;
    LBHVAT: TFloatField;
    LBHAdjAmountBalance: TFloatField;
    LBHAdjAmountApplied: TFloatField;
    LBHReadTime: TStringField;
    dsbh: TDataSource;
    dslbh: TDataSource;
    UpdateORDisco: TMyQuery;
    InsertDisco: TMyQuery;
    UpdateMasterDisco: TMyQuery;
    StubColor: TStaticText;
    NxButton16: TNxButton;
    PrintOption: TStaticText;
    DiffCons: TMyQuery;
    DiffConskilowatthour: TFloatField;
    DiffConskilowattused: TFloatField;
    MRateDiffBillPerKwhr: TFloatField;
    MRateDIffBillPerKW: TFloatField;
    MRateDiffBillPerCust: TFloatField;
    MRateMCC: TFloatField;
    MRateDiffBillMonth: TStringField;
    MRateDiffBillApply: TStringField;
    UnpostMasterDiffBillPerKwhr: TFloatField;
    UnpostMasterDiffBillPerKW: TFloatField;
    UnpostMasterDiffBillPerCust: TFloatField;
    UnpostMasterMCC: TFloatField;
    UnpostMasterPKVROebrNumber: TStringField;
    UnpostMasterPKVRBillMonth: TStringField;
    UnpostMasterPKVRAmount: TFloatField;
    groupselectPKVRAmount: TFloatField;
    MRatePantawidApply: TStringField;
    PKVR: TMyQuery;
    PKVRidBillAdjLedger: TLargeintField;
    PKVRcode: TFloatField;
    PKVRArea: TStringField;
    PKVRBook: TStringField;
    PKVRSequence: TStringField;
    PKVRAccountNumber: TStringField;
    PKVRName: TStringField;
    PKVRBillMonth: TStringField;
    PKVRDebit: TFloatField;
    PKVRcredit: TFloatField;
    PKVRbalance: TFloatField;
    PKVRbillnumber: TStringField;
    PKVRkilowatthour: TLargeintField;
    PKVRpostingdate: TDateField;
    UnPBPPKVRAmount: TFloatField;
    UnPBPOEBRNumber: TStringField;
    MPKVR: TEdit;
    StaticText1: TStaticText;
    TRDetailPKVRAmount: TFloatField;
    PKVRIndex: TMyQuery;
    DeleteNewConnection: TMyQuery;
    DeleteNewMember: TMyQuery;
    UpdateRemitted: TMyQuery;
    MRateTransSysAncRefundTitle: TStringField;
    MRateTransSysAncRefund: TFloatField;
    MRateTransDemAncRefundTitle: TStringField;
    MRateTransDemAncRefund: TFloatField;
    MRateVATTransAncRefundTitle: TStringField;
    MRateVATTransAncRefund: TFloatField;
    BHDiffBillPerKwhr: TFloatField;
    BHDiffBillPerKW: TFloatField;
    BHDiffBillPerCust: TFloatField;
    BHMCC: TFloatField;
    BHPKVROebrNumber: TStringField;
    BHPKVRBillMonth: TStringField;
    BHPKVRAmount: TFloatField;
    BHTransSysAncRefund: TFloatField;
    BHTransDemAncRefund: TFloatField;
    BHVATTransAncRefund: TFloatField;
    LBHDiffBillPerKwhr: TFloatField;
    LBHDiffBillPerKW: TFloatField;
    LBHDiffBillPerCust: TFloatField;
    LBHMCC: TFloatField;
    LBHPKVROebrNumber: TStringField;
    LBHPKVRBillMonth: TStringField;
    LBHPKVRAmount: TFloatField;
    LBHTransSysAncRefund: TFloatField;
    LBHTransDemAncRefund: TFloatField;
    LBHVATTransAncRefund: TFloatField;
    CBillCreate: TMyQuery;
    CBill: TMyQuery;
    CBillEntry: TIntegerField;
    CBillGenSysCharge: TFloatField;
    CBillHostCommCharge: TFloatField;
    CBillForexCharge: TFloatField;
    CBillTCDemandCharge: TFloatField;
    CBillTCTransSystemCharge: TFloatField;
    CBillSystemLossCharge: TFloatField;
    CBillDCDemandCharge: TFloatField;
    CBillDCDistributionCharge: TFloatField;
    CBillSCRetCustCharge: TFloatField;
    CBillSCSupplySysCharge: TFloatField;
    CBillMCRetailCustCharge: TFloatField;
    CBillMCSystemCharge: TFloatField;
    CBillUCNPCStrandedDebts: TFloatField;
    CBillUCNPCStrandedContCost: TFloatField;
    CBillUCDUStrandedContCost: TFloatField;
    CBillUCME: TFloatField;
    CBillUCEqTaxesAndRoyalties: TFloatField;
    CBillUCEC: TFloatField;
    CBillUCCrossSubRemoval: TFloatField;
    CBillICCrossSubsidyCharge: TFloatField;
    CBillPowerActRateRed: TFloatField;
    CBillLifelineDiscSubs: TFloatField;
    CBillLoanCondo: TFloatField;
    CBillTransformerRental: TFloatField;
    CBillTotalBill: TFloatField;
    CBillLCCustMo: TFloatField;
    CBillPrevYearAdjPowerCost: TFloatField;
    CBillSysLossUnderRecov: TFloatField;
    CBillVATDisc: TFloatField;
    CBillVATDiscAmt: TFloatField;
    CBillVATDistDiscAmt: TFloatField;
    CBillVATGenCoDiscAmt: TFloatField;
    CBillVATTransCoDiscAmt: TFloatField;
    CBillVATSystemLossDiscAmt: TFloatField;
    CBillVATDist: TFloatField;
    CBillVATGenCO: TFloatField;
    CBillVATTransCO: TFloatField;
    CBillVATSystemLossGenCO: TFloatField;
    CBillVATSystemLossTransCO: TFloatField;
    CBillVAT: TFloatField;
    CBillAdjAmountBalance: TFloatField;
    CBillAdjAmountApplied: TFloatField;
    CBillReadTime: TStringField;
    CBillDiffBillPerKwhr: TFloatField;
    CBillDiffBillPerKW: TFloatField;
    CBillDiffBillPerCust: TFloatField;
    CBillMCC: TFloatField;
    CBillPKVROebrNumber: TStringField;
    CBillPKVRBillMonth: TStringField;
    CBillPKVRAmount: TFloatField;
    CBillTransSysAncRefund: TFloatField;
    CBillTransDemAncRefund: TFloatField;
    CBillVATTransAncRefund: TFloatField;
    CheckPayment: TMyQuery;
    CheckPaymentEntry: TIntegerField;
    CheckPaymentReceiptNumber: TStringField;
    CheckPaymentAccountCode: TFloatField;
    CheckPaymentArea: TStringField;
    CheckPaymentBook: TStringField;
    CheckPaymentSequence: TStringField;
    CheckPaymentAccountNumber: TStringField;
    CheckPaymentName: TStringField;
    CheckPaymentBillMonth: TStringField;
    CheckPaymentTotalBill: TFloatField;
    CheckPaymentMembership: TFloatField;
    CheckPaymentPenalty: TFloatField;
    CheckPaymentSecurity: TFloatField;
    CheckPaymentMeterDeposit: TFloatField;
    CheckPaymentTransformerRental: TFloatField;
    CheckPaymentSundries: TStringField;
    CheckPaymentSundriesAmount: TFloatField;
    CheckPaymentUCNPCSD: TFloatField;
    CheckPaymentUCNPCSCC: TFloatField;
    CheckPaymentUCDUSCC: TFloatField;
    CheckPaymentUCME: TFloatField;
    CheckPaymentUCETR: TFloatField;
    CheckPaymentUCEC: TFloatField;
    CheckPaymentUCCSR: TFloatField;
    CheckPaymentLoanCondo: TFloatField;
    CheckPaymentTotal: TFloatField;
    CheckPaymentCollectorCode: TStringField;
    CheckPaymentDatePaid: TDateField;
    CheckPaymentDateRemitted: TDateField;
    CheckPaymentEncoderCode: TStringField;
    CheckPaymentPosted: TStringField;
    CheckPaymentKilowattHour: TFloatField;
    CheckPaymentAddress: TStringField;
    CheckPaymentOPDescription: TStringField;
    CheckPaymentOPAmount: TFloatField;
    CheckPaymentTellerORNumber: TStringField;
    CheckPaymentVATDiscAmt: TFloatField;
    CheckPaymentVATDistDiscAmt: TFloatField;
    CheckPaymentVATGenCoDiscAmt: TFloatField;
    CheckPaymentVATTransCoDiscAmt: TFloatField;
    CheckPaymentVATSystemLossDiscAmt: TFloatField;
    CheckPaymentVATDist: TFloatField;
    CheckPaymentVATGenCO: TFloatField;
    CheckPaymentVATTransCO: TFloatField;
    CheckPaymentVATSystemLossGenCO: TFloatField;
    CheckPaymentVATSystemLossTransCO: TFloatField;
    CheckPaymentVAT: TFloatField;
    CheckPaymentSystemLossCharge: TFloatField;
    CheckPaymentPKVRAmount: TFloatField;
    ReconEVAT: TFloatField;
    CashierCancelPanel: TNxHeaderPanel;
    NxButton17: TNxButton;
    NxButton18: TNxButton;
    CancelCashierOR: TLabeledEdit;
    CancelCashierORPassword: TLabeledEdit;
    PilferBill: TMyQuery;
    PilferBillentry: TIntegerField;
    PilferBillCode: TFloatField;
    PilferBillArea: TStringField;
    PilferBillBook: TStringField;
    PilferBillSequence: TStringField;
    PilferBillAccountNumber: TStringField;
    PilferBillName: TStringField;
    PilferBillAddress: TStringField;
    PilferBillRateCode: TStringField;
    PilferBillSerial: TStringField;
    PilferBillMultiplier: TFloatField;
    PilferBillPreviousReadingDate: TDateField;
    PilferBillPresentReadingDate: TDateField;
    PilferBillPreviousReadingKWH: TFloatField;
    PilferBillPresentReadingKWH: TFloatField;
    PilferBillDiff: TFloatField;
    PilferBillDemand: TFloatField;
    PilferBillFlatRateWattage: TFloatField;
    PilferBillFeedBackCode: TStringField;
    PilferBillCM: TStringField;
    PilferBillCMMultiplier: TFloatField;
    PilferBillCMPreviousReadingKWH: TFloatField;
    PilferBillCMPresentReadingKWH: TFloatField;
    PilferBillCMKilowattHour: TFloatField;
    PilferBillCMDemand: TFloatField;
    PilferBillKilowattHour: TFloatField;
    PilferBillKilowattUsed: TFloatField;
    PilferBillGenSysCharge: TFloatField;
    PilferBillHostCommCharge: TFloatField;
    PilferBillForexCharge: TFloatField;
    PilferBillTCDemandCharge: TFloatField;
    PilferBillTCTransSystemCharge: TFloatField;
    PilferBillSystemLossCharge: TFloatField;
    PilferBillDCDemandCharge: TFloatField;
    PilferBillDCDistributionCharge: TFloatField;
    PilferBillSCRetCustCharge: TFloatField;
    PilferBillSCSupplySysCharge: TFloatField;
    PilferBillMCRetailCustCharge: TFloatField;
    PilferBillMCSystemCharge: TFloatField;
    PilferBillUCNPCStrandedDebts: TFloatField;
    PilferBillUCNPCStrandedContCost: TFloatField;
    PilferBillUCDUStrandedContCost: TFloatField;
    PilferBillUCME: TFloatField;
    PilferBillUCEqTaxesAndRoyalties: TFloatField;
    PilferBillUCEC: TFloatField;
    PilferBillUCCrossSubRemoval: TFloatField;
    PilferBillICCrossSubsidyCharge: TFloatField;
    PilferBillPowerActRateRed: TFloatField;
    PilferBillLifelineDiscSubs: TFloatField;
    PilferBillLoanCondo: TFloatField;
    PilferBillTransformerRental: TFloatField;
    PilferBillOCCode1: TStringField;
    PilferBillOCAmount1: TFloatField;
    PilferBillOCMo1: TFloatField;
    PilferBillOCTotal1: TFloatField;
    PilferBillOCCode2: TStringField;
    PilferBillOCAmount2: TFloatField;
    PilferBillOCMo2: TFloatField;
    PilferBillOCTotal2: TFloatField;
    PilferBillOCCode3: TStringField;
    PilferBillOCAmount3: TFloatField;
    PilferBillOCMo3: TFloatField;
    PilferBillOCTotal3: TFloatField;
    PilferBillTotalBill: TFloatField;
    PilferBillBillNumber: TStringField;
    PilferBillOEBRNumber: TStringField;
    PilferBillBillMonth: TStringField;
    PilferBillBillDate: TDateField;
    PilferBillstatuscode: TStringField;
    PilferBillLCCustMo: TFloatField;
    PilferBillPrevYearAdjPowerCost: TFloatField;
    PilferBillSysLossUnderRecov: TFloatField;
    PilferBillVATDisc: TFloatField;
    PilferBillVATDiscAmt: TFloatField;
    PilferBillVATDistDiscAmt: TFloatField;
    PilferBillVATGenCoDiscAmt: TFloatField;
    PilferBillVATTransCoDiscAmt: TFloatField;
    PilferBillVATSystemLossDiscAmt: TFloatField;
    PilferBillVATDist: TFloatField;
    PilferBillVATGenCO: TFloatField;
    PilferBillVATTransCO: TFloatField;
    PilferBillVATSystemLossGenCO: TFloatField;
    PilferBillVATSystemLossTransCO: TFloatField;
    PilferBillVAT: TFloatField;
    PilferBillAdjAmountBalance: TFloatField;
    PilferBillAdjAmountApplied: TFloatField;
    PilferBillReadTime: TStringField;
    PilferBillDiffBillPerKwhr: TFloatField;
    PilferBillDiffBillPerKW: TFloatField;
    PilferBillDiffBillPerCust: TFloatField;
    PilferBillMCC: TFloatField;
    PilferBillPKVROebrNumber: TStringField;
    PilferBillPKVRBillMonth: TStringField;
    PilferBillPKVRAmount: TFloatField;
    PilferBillTransSysAncRefund: TFloatField;
    PilferBillTransDemAncRefund: TFloatField;
    PilferBillVATTransAncRefund: TFloatField;
    PilferBillRefKilowattHour: TFloatField;
    PilferBillPenalty: TFloatField;
    PilferBillAmountPaid: TFloatField;
    PilferBillBalance: TFloatField;
    PilferBillInstallment: TFloatField;
    PilferBillAmortization: TFloatField;
    PilferBillpostingcode: TStringField;
    ClearReconDsco: TMyQuery;
    RestoreNewApp: TMyQuery;
    NewApply: TMyQuery;
    NewApplyidNewApply: TLargeintField;
    NewApplyArea: TStringField;
    NewApplyBook: TStringField;
    NewApplyName: TStringField;
    NewApplyAddress: TStringField;
    NewApplycomember: TStringField;
    NewApplyratecode: TStringField;
    NewApplyDistrict: TStringField;
    RestoreNewApparea: TStringField;
    RestoreNewAppbook: TStringField;
    RestoreNewAppname: TStringField;
    RestoreNewAppaddress: TStringField;
    RestoreNewAppspouse: TStringField;
    RestoreNewAppratecode: TStringField;
    CBillSCDisc: TFloatField;
    CBillSCAmt4Disc: TFloatField;
    MRateSCDiscApply: TStringField;
    MRateWRateCode: TStringField;
    MRateSCDiscPercent: TFloatField;
    MRateSCDiscSubs: TFloatField;
    SCRead: TMyQuery;
    SCReadSCode: TFloatField;
    SCReadArea: TStringField;
    SCReadBook: TStringField;
    SCReadSequence: TStringField;
    SCReadAccountNumber: TStringField;
    SCReadBillingName: TStringField;
    SCReadName: TStringField;
    SCReadBDay: TDateField;
    SCReadCPNo: TStringField;
    SCReadSCIDNo: TStringField;
    SCReadSpouseSCIDNo: TStringField;
    SCReadDateApplied: TDateField;
    SCReadExpirationDate: TDateField;
    SCReadRemarks: TStringField;
    SCReadAddress: TStringField;
    SCReadstillvalid: TLargeintField;
    MRatePantawidRecovApply: TStringField;
    Reconrecondate: TDateTimeField;
    ReconCrew: TStringField;
    ReconDateRecon: TDateTimeField;
    Discoiddisco: TLargeintField;
    Discodiscodate: TDateField;
    Discocode: TFloatField;
    DiscoArea: TStringField;
    DiscoBook: TStringField;
    DiscoAccountnumber: TStringField;
    DiscoName: TStringField;
    DiscoAddress: TStringField;
    Discodiscofee: TFloatField;
    Discoremarks: TMemoField;
    DiscoORNumber: TStringField;
    DiscoORDate: TDateField;
    Discoevat: TFloatField;
    DiscoTechArea: TStringField;
    DiscoDateAccomplished: TDateTimeField;
    DiscoCrew: TStringField;
    DiscoAccomplished: TStringField;
    DiscoBatch: TStringField;
    NewApplicantidcomplaints: TFloatField;
    UpdateComplaints: TMyQuery;
    CancelComplaints: TMyQuery;
    treceiptsamount: TFloatField;
    BtnSpotBilling: TNxLinkLabel;
    dsMaster: TMyDataSource;
    NewApplicantORNumber: TStringField;
    NewApplicantORDate: TDateField;
    NewApplicantremarks: TMemoField;
    MRateWRSw: TStringField;
    MasterDiffBillPerKwhr: TFloatField;
    MasterDiffBillPerKW: TFloatField;
    MasterDiffBillPerCust: TFloatField;
    MasterMCC: TFloatField;
    MasterPKVROebrNumber: TStringField;
    MasterPKVRBillMonth: TStringField;
    MasterPKVRAmount: TFloatField;
    MasterSCDisc: TFloatField;
    MasterWRateCode: TStringField;
    MasterSCAmt4Disc: TFloatField;
    MasterDWLEN1: TFloatField;
    MasterDWLEN2: TFloatField;
    UnPBPSCDisc: TFloatField;
    UnPBPWRateCode: TStringField;
    NxLinkLabel1: TNxLinkLabel;
    TellerH: TMyQuery;
    dsTellerH: TMyDataSource;
    CallerHistoryPanel: TNxHeaderPanel;
    NxLinkLabel2: TNxLinkLabel;
    OptionsMenuPanel: TNxHeaderPanel;
    BtnReconnect: TNxButton;
    BtnSubOffice: TNxButton;
    btnGetBatch: TNxButton;
    BtnDisconnect: TNxButton;
    BtnNewApplicant: TNxButton;
    NxLinkLabel4: TNxLinkLabel;
    NxLinkLabel3: TNxLinkLabel;
    RequestCancelPanel: TNxHeaderPanel;
    Memo7: TMemo;
    Label23: TLabel;
    DBText1: TDBText;
    Label24: TLabel;
    DBText2: TDBText;
    Label28: TLabel;
    ComboBox1: TComboBox;
    NxButton19: TNxButton;
    NxButton20: TNxButton;
    Timer1: TTimer;
    Timer3: TTimer;
    NxAlertWindow2: TNxAlertWindow;
    BtnRequest: TNxButton;
    ViewCancelPanel: TNxHeaderPanel;
    CreateCustomerCount: TMyQuery;
    NxLinkLabel5: TNxLinkLabel;
    NxLinkLabel6: TNxLinkLabel;
    ReqCancel: TMyQuery;
    ReqCancelidReqCancel: TLargeintField;
    ReqCancelCancelDate: TDateField;
    ReqCancelTellerCode: TStringField;
    ReqCancelORNumber: TStringField;
    ReqCancelRemarks: TStringField;
    dsReqCan: TMyDataSource;
    Label30: TLabel;
    ComboBox2: TComboBox;
    NxLinkLabel8: TNxLinkLabel;
    Bank: TComboBox;
    DBGrid5: TDBGrid1;
    DBGrid3: TDBGrid1;
    DBGrid4: TDBGrid1;
    CRDBGrid2: TCRDBGrid1;
    CRDBGrid1: TCRDBGrid1;
    DBGrid1: TCRDBGrid1;
    DBGrid2: TCRDBGrid1;
    BtnClose: TNxLinkLabel;
    BtnMulipleTor: TNxLinkLabel;
    BtnConsumerCaller: TNxLinkLabel;
    BtnSelectPrinter: TNxLinkLabel;
    PopupMenu1: TPopupMenu;
    Re1: TMenuItem;
    CRDBGrid11: TCRDBGrid1;
    CRDBGrid12: TCRDBGrid1;
    MRateSCDiscKWHR: TLargeintField;
    UnPBdate: TDateField;
    UnPBdocument: TStringField;
    UnPBbillmonth: TStringField;
    UnPBamount: TFloatField;
    UnPBVAT: TFloatField;
    ApplicationEvents1: TApplicationEvents;
    billhistoryentry: TIntegerField;
    billhistoryCode: TFloatField;
    billhistoryArea: TStringField;
    billhistoryBook: TStringField;
    billhistorySequence: TStringField;
    billhistoryAccountNumber: TStringField;
    billhistoryName: TStringField;
    billhistoryAddress: TStringField;
    billhistoryRateCode: TStringField;
    billhistorySerial: TStringField;
    billhistoryMultiplier: TFloatField;
    billhistoryPreviousReadingDate: TDateField;
    billhistoryPresentReadingDate: TDateField;
    billhistoryPreviousReadingKWH: TFloatField;
    billhistoryPresentReadingKWH: TFloatField;
    billhistoryDiff: TFloatField;
    billhistoryDemand: TFloatField;
    billhistoryFlatRateWattage: TFloatField;
    billhistoryFeedBackCode: TStringField;
    billhistoryCM: TStringField;
    billhistoryCMMultiplier: TFloatField;
    billhistoryCMPreviousReadingKWH: TFloatField;
    billhistoryCMPresentReadingKWH: TFloatField;
    billhistoryCMKilowattHour: TFloatField;
    billhistoryCMDemand: TFloatField;
    billhistoryKilowattHour: TFloatField;
    billhistoryKilowattUsed: TFloatField;
    billhistoryGenSysCharge: TFloatField;
    billhistoryHostCommCharge: TFloatField;
    billhistoryForexCharge: TFloatField;
    billhistoryTCDemandCharge: TFloatField;
    billhistoryTCTransSystemCharge: TFloatField;
    billhistorySystemLossCharge: TFloatField;
    billhistoryDCDemandCharge: TFloatField;
    billhistoryDCDistributionCharge: TFloatField;
    billhistorySCRetCustCharge: TFloatField;
    billhistorySCSupplySysCharge: TFloatField;
    billhistoryMCRetailCustCharge: TFloatField;
    billhistoryMCSystemCharge: TFloatField;
    billhistoryUCNPCStrandedDebts: TFloatField;
    billhistoryUCNPCStrandedContCost: TFloatField;
    billhistoryUCDUStrandedContCost: TFloatField;
    billhistoryUCME: TFloatField;
    billhistoryUCEqTaxesAndRoyalties: TFloatField;
    billhistoryUCEC: TFloatField;
    billhistoryUCCrossSubRemoval: TFloatField;
    billhistoryICCrossSubsidyCharge: TFloatField;
    billhistoryPowerActRateRed: TFloatField;
    billhistoryLifelineDiscSubs: TFloatField;
    billhistoryLoanCondo: TFloatField;
    billhistoryTransformerRental: TFloatField;
    billhistoryOCCode1: TStringField;
    billhistoryOCAmount1: TFloatField;
    billhistoryOCMo1: TFloatField;
    billhistoryOCTotal1: TFloatField;
    billhistoryOCCode2: TStringField;
    billhistoryOCAmount2: TFloatField;
    billhistoryOCMo2: TFloatField;
    billhistoryOCTotal2: TFloatField;
    billhistoryOCCode3: TStringField;
    billhistoryOCAmount3: TFloatField;
    billhistoryOCMo3: TFloatField;
    billhistoryOCTotal3: TFloatField;
    billhistoryTotalBill: TFloatField;
    billhistoryBillNumber: TStringField;
    billhistoryOEBRNumber: TStringField;
    billhistoryBillMonth: TStringField;
    billhistoryBillDate: TDateField;
    billhistorystatuscode: TStringField;
    billhistoryLCCustMo: TFloatField;
    billhistoryPrevYearAdjPowerCost: TFloatField;
    billhistorySysLossUnderRecov: TFloatField;
    billhistoryVATDisc: TFloatField;
    billhistoryVATDiscAmt: TFloatField;
    billhistoryVATDistDiscAmt: TFloatField;
    billhistoryVATGenCoDiscAmt: TFloatField;
    billhistoryVATTransCoDiscAmt: TFloatField;
    billhistoryVATSystemLossDiscAmt: TFloatField;
    billhistoryVATDist: TFloatField;
    billhistoryVATGenCO: TFloatField;
    billhistoryVATTransCO: TFloatField;
    billhistoryVATSystemLossGenCO: TFloatField;
    billhistoryVATSystemLossTransCO: TFloatField;
    billhistoryVAT: TFloatField;
    billhistoryAdjAmountBalance: TFloatField;
    billhistoryAdjAmountApplied: TFloatField;
    billhistoryReadTime: TStringField;
    billhistoryDiffBillPerKwhr: TFloatField;
    billhistoryDiffBillPerKW: TFloatField;
    billhistoryDiffBillPerCust: TFloatField;
    billhistoryMCC: TFloatField;
    billhistoryPKVROebrNumber: TStringField;
    billhistoryPKVRBillMonth: TStringField;
    billhistoryPKVRAmount: TFloatField;
    billhistoryTransSysAncRefund: TFloatField;
    billhistoryTransDemAncRefund: TFloatField;
    billhistoryVATTransAncRefund: TFloatField;
    billhistorySCDisc: TFloatField;
    billhistoryWRateCode: TStringField;
    billhistorySCAmt4Disc: TFloatField;
    billhistoryCBook: TStringField;
    BHSCDisc: TFloatField;
    BHWRateCode: TStringField;
    BHSCAmt4Disc: TFloatField;
    BHCBook: TStringField;
    BHRPTax: TFloatField;
    BHBTax: TFloatField;
    billhistoryRPTax: TFloatField;
    CBillRPTax: TFloatField;
    CollectRPTax: TFloatField;
    CollectionRPTax: TFloatField;
    PilferBillRPTax: TFloatField;
    PilferBillBTax: TFloatField;
    LBHRPTax: TFloatField;
    LBHBTax: TFloatField;
    UnPBPRPTax: TFloatField;
    UnPBPRateOrder: TStringField;
    billhistoryRateOrder: TStringField;
    CollectionRateOrder: TStringField;
    CBillRateOrder: TStringField;
    AddRptF: TMyQuery;
    CBillOtherGenRateAdj: TFloatField;
    CBillOtherTransCostAdj: TFloatField;
    CBillOtherTransDemandCostAdj: TFloatField;
    CBillOtherSystemLossCostAdj: TFloatField;
    CBillOtherLifelineRateCostAdj: TFloatField;
    CBillOtherSeniorCitizenRateAdj: TFloatField;
    MRateOtherGenRateAdj: TFloatField;
    MRateOtherTransCostAdj: TFloatField;
    MRateOtherTransDemandCostAdj: TFloatField;
    MRateOtherSystemLossCostAdj: TFloatField;
    MRateOtherLifelineRateCostAdj: TFloatField;
    MRateOtherSeniorCitizenRateAdj: TFloatField;
    billhistoryOtherGenRateAdj: TFloatField;
    billhistoryOtherTransCostAdj: TFloatField;
    billhistoryOtherTransDemandCostAdj: TFloatField;
    billhistoryOtherSystemLossCostAdj: TFloatField;
    billhistoryOtherLifelineRateCostAdj: TFloatField;
    billhistoryOtherSeniorCitizenRateAdj: TFloatField;
    CollectionOtherSystemLossCostAdj: TFloatField;
    CollectionOtherSeniorCitizenRateAdj: TFloatField;
    UnPBPOtherSystemLossCostAdj: TFloatField;
    UnPBPOtherSeniorCitizenRateAdj: TFloatField;
    CollectOtherSystemLossCostAdj: TFloatField;
    TRDetailOtherSystemLossCostAdj: TFloatField;
    TRDetailRPTax: TFloatField;
    BHOtherGenRateAdj: TFloatField;
    AddFieldRptax1: TMyQuery;
    InsertSpotTmp: TMyQuery;
    TmpQuery: TMyQuery;
    UnPBPOtherGenRateAdj: TFloatField;
    UnPBPOtherTransCostAdj: TFloatField;
    UnPBPOtherTransDemandCostAdj: TFloatField;
    UnPBPOtherLifelineRateCostAdj: TFloatField;
    UnPBPICCrossSubsidyCharge: TFloatField;
    AlterComputeBill: TMyQuery;
    CBillFitall: TFloatField;
    MRateFitallrate: TFloatField;
    billhistoryFitall: TFloatField;
    UnPBPFitall: TFloatField;
    CollectionFitall: TFloatField;
    FilterSpotBM: TMyQuery;
    masterCodeTField: TNxButtonEdit;
    noneConsmrPilBtn: TNxButton;
    NxHeaderPanel2: TNxHeaderPanel;
    DBGrid11: TDBGrid1;
    Edit2: TEdit;
    Label32: TLabel;
    nc_poupmenu: TPopupMenu;
    UnpaidBills1: TMenuItem;
    Close1: TMenuItem;
    nc_searchBtn: TSpeedButton;
    SpeedButton1: TSpeedButton;
    nc_pilferageQ: TMyQuery;
    nc_pilferageS: TMyDataSource;
    DBGrid12: TDBGrid1;
    SpeedButton2: TSpeedButton;
    Label33: TLabel;
    DBText3: TDBText;
    nc_ocledgerQ: TMyQuery;
    nc_ocledgerS: TMyDataSource;
    nc_ocledgerQidOCLedger: TLongWordField;
    nc_ocledgerQCode: TFloatField;
    nc_ocledgerQDateEntered: TDateField;
    nc_ocledgerQAmount: TFloatField;
    nc_ocledgerQTORNumber: TStringField;
    nc_ocledgerQDatePaid: TDateField;
    nc_ocledgerQaccountcode: TStringField;
    nc_ocledgerQdescription: TStringField;
    nc_pilferageQentry: TIntegerField;
    nc_pilferageQAccountNumber: TStringField;
    nc_pilferageQIDnum: TStringField;
    nc_pilferageQName: TStringField;
    nc_pilferageQAddress: TStringField;
    nc_pilferageQRateCode: TStringField;
    nc_pilferageQSerial: TStringField;
    nc_pilferageQMultiplier: TFloatField;
    nc_pilferageQPreviousReadingDate: TDateField;
    nc_pilferageQPresentReadingDate: TDateField;
    nc_pilferageQPreviousReadingKWH: TFloatField;
    nc_pilferageQPresentReadingKWH: TFloatField;
    nc_pilferageQDiff: TFloatField;
    nc_pilferageQDemand: TFloatField;
    nc_pilferageQFlatRateWattage: TFloatField;
    nc_pilferageQFeedBackCode: TStringField;
    nc_pilferageQCM: TStringField;
    nc_pilferageQCMMultiplier: TFloatField;
    nc_pilferageQCMPreviousReadingKWH: TFloatField;
    nc_pilferageQCMPresentReadingKWH: TFloatField;
    nc_pilferageQCMKilowattHour: TFloatField;
    nc_pilferageQCMDemand: TFloatField;
    nc_pilferageQKilowattHour: TFloatField;
    nc_pilferageQKilowattUsed: TFloatField;
    nc_pilferageQGenSysCharge: TFloatField;
    nc_pilferageQHostCommCharge: TFloatField;
    nc_pilferageQForexCharge: TFloatField;
    nc_pilferageQTCDemandCharge: TFloatField;
    nc_pilferageQTCTransSystemCharge: TFloatField;
    nc_pilferageQSystemLossCharge: TFloatField;
    nc_pilferageQDCDemandCharge: TFloatField;
    nc_pilferageQDCDistributionCharge: TFloatField;
    nc_pilferageQSCRetCustCharge: TFloatField;
    nc_pilferageQSCSupplySysCharge: TFloatField;
    nc_pilferageQMCRetailCustCharge: TFloatField;
    nc_pilferageQMCSystemCharge: TFloatField;
    nc_pilferageQUCNPCStrandedDebts: TFloatField;
    nc_pilferageQUCNPCStrandedContCost: TFloatField;
    nc_pilferageQUCDUStrandedContCost: TFloatField;
    nc_pilferageQUCME: TFloatField;
    nc_pilferageQUCEqTaxesAndRoyalties: TFloatField;
    nc_pilferageQUCEC: TFloatField;
    nc_pilferageQUCCrossSubRemoval: TFloatField;
    nc_pilferageQICCrossSubsidyCharge: TFloatField;
    nc_pilferageQPowerActRateRed: TFloatField;
    nc_pilferageQLifelineDiscSubs: TFloatField;
    nc_pilferageQLoanCondo: TFloatField;
    nc_pilferageQTransformerRental: TFloatField;
    nc_pilferageQOCCode1: TStringField;
    nc_pilferageQOCAmount1: TFloatField;
    nc_pilferageQOCMo1: TFloatField;
    nc_pilferageQOCTotal1: TFloatField;
    nc_pilferageQOCCode2: TStringField;
    nc_pilferageQOCAmount2: TFloatField;
    nc_pilferageQOCMo2: TFloatField;
    nc_pilferageQOCTotal2: TFloatField;
    nc_pilferageQOCCode3: TStringField;
    nc_pilferageQOCAmount3: TFloatField;
    nc_pilferageQOCMo3: TFloatField;
    nc_pilferageQOCTotal3: TFloatField;
    nc_pilferageQTotalBill: TFloatField;
    nc_pilferageQBillNumber: TStringField;
    nc_pilferageQOEBRNumber: TStringField;
    nc_pilferageQBillMonth: TStringField;
    nc_pilferageQBillDate: TDateField;
    nc_pilferageQstatuscode: TStringField;
    nc_pilferageQLCCustMo: TFloatField;
    nc_pilferageQPrevYearAdjPowerCost: TFloatField;
    nc_pilferageQSysLossUnderRecov: TFloatField;
    nc_pilferageQVATDisc: TFloatField;
    nc_pilferageQVATDiscAmt: TFloatField;
    nc_pilferageQVATDistDiscAmt: TFloatField;
    nc_pilferageQVATGenCoDiscAmt: TFloatField;
    nc_pilferageQVATTransCoDiscAmt: TFloatField;
    nc_pilferageQVATSystemLossDiscAmt: TFloatField;
    nc_pilferageQVATDist: TFloatField;
    nc_pilferageQVATGenCO: TFloatField;
    nc_pilferageQVATTransCO: TFloatField;
    nc_pilferageQVATSystemLossGenCO: TFloatField;
    nc_pilferageQVATSystemLossTransCO: TFloatField;
    nc_pilferageQVAT: TFloatField;
    nc_pilferageQAdjAmountBalance: TFloatField;
    nc_pilferageQAdjAmountApplied: TFloatField;
    nc_pilferageQReadTime: TStringField;
    nc_pilferageQDiffBillPerKwhr: TFloatField;
    nc_pilferageQDiffBillPerKW: TFloatField;
    nc_pilferageQDiffBillPerCust: TFloatField;
    nc_pilferageQMCC: TFloatField;
    nc_pilferageQPKVROebrNumber: TStringField;
    nc_pilferageQPKVRBillMonth: TStringField;
    nc_pilferageQPKVRAmount: TFloatField;
    nc_pilferageQTransSysAncRefund: TFloatField;
    nc_pilferageQTransDemAncRefund: TFloatField;
    nc_pilferageQVATTransAncRefund: TFloatField;
    nc_pilferageQRefKilowattHour: TFloatField;
    nc_pilferageQPenalty: TFloatField;
    nc_pilferageQAmountPaid: TFloatField;
    nc_pilferageQBalance: TFloatField;
    nc_pilferageQInstallment: TFloatField;
    nc_pilferageQAmortization: TFloatField;
    nc_pilferageQpostingcode: TStringField;
    nc_pilferageQWRateCode: TStringField;
    nc_pilferageQNumMonth: TFloatField;
    nc_pilferageQscdisc: TFloatField;
    nc_pilferageQscamt4disc: TFloatField;
    nc_pilferageQRPTax: TFloatField;
    nc_pilferageQRateOrder: TStringField;
    nc_pilferageQBTax: TFloatField;
    nc_pilferageQOtherGenRateAdj: TFloatField;
    nc_pilferageQOtherTransCostAdj: TFloatField;
    nc_pilferageQOtherTransDemandCostAdj: TFloatField;
    nc_pilferageQOtherSystemLossCostAdj: TFloatField;
    nc_pilferageQOtherLifelineRateCostAdj: TFloatField;
    nc_pilferageQOtherSeniorCitizenRateAdj: TFloatField;
    nc_pilferageQFitall: TFloatField;
    nc_pilferageQallpaid: TShortintField;
    NCtmpQ: TMyQuery;
    Label34: TLabel;
    Image1: TImage;
    AdvSmoothLabel2: TAdvSmoothLabel;
    AdvSmoothLabel3: TAdvSmoothLabel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    UserID_TF: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    useridTF: TEdit;
    CBillVATparec: TFloatField;
    CBillPARec: TFloatField;
    MRatePARec: TFloatField;
    UnPBPPARec: TFloatField;
    UnPBPVATparec: TFloatField;
    CollectionVATparec: TFloatField;
    CollectionSCDisc: TFloatField;
    CollectionOtherGenRateAdj: TFloatField;
    CollectionOtherTransCostAdj: TFloatField;
    CollectionOtherTransDemandCostAdj: TFloatField;
    CollectionOtherLifelineRateCostAdj: TFloatField;
    CollectionICCrossSubsidyCharge: TFloatField;
    CollectionPARec: TFloatField;
    CollectionWRateCode: TStringField;
    billhistoryVATparec: TFloatField;
    billhistoryPARec: TFloatField;
    Label37: TLabel;
    Label43: TLabel;
    creditableTax_load: TStaticText;
    finalTax_Load: TStaticText;
    NxButton21: TNxButton;
    NxButton22: TNxButton;
    NxButton23: TNxButton;
    NxButton24: TNxButton;
    extendedVatQ: TMyQuery;
    extendedVatQentry: TIntegerField;
    extendedVatQCode: TFloatField;
    extendedVatQArea: TStringField;
    extendedVatQBook: TStringField;
    extendedVatQSequence: TStringField;
    extendedVatQAccountNumber: TStringField;
    extendedVatQName: TStringField;
    extendedVatQAddress: TStringField;
    extendedVatQRateCode: TStringField;
    extendedVatQSerial: TStringField;
    extendedVatQMultiplier: TFloatField;
    extendedVatQPreviousReadingDate: TDateField;
    extendedVatQPresentReadingDate: TDateField;
    extendedVatQPreviousReadingKWH: TFloatField;
    extendedVatQPresentReadingKWH: TFloatField;
    extendedVatQDiff: TFloatField;
    extendedVatQDemand: TFloatField;
    extendedVatQFlatRateWattage: TFloatField;
    extendedVatQFeedBackCode: TStringField;
    extendedVatQCM: TStringField;
    extendedVatQCMMultiplier: TFloatField;
    extendedVatQCMPreviousReadingKWH: TFloatField;
    extendedVatQCMPresentReadingKWH: TFloatField;
    extendedVatQCMKilowattHour: TFloatField;
    extendedVatQCMDemand: TFloatField;
    extendedVatQKilowattHour: TFloatField;
    extendedVatQKilowattUsed: TFloatField;
    extendedVatQGenSysCharge: TFloatField;
    extendedVatQHostCommCharge: TFloatField;
    extendedVatQForexCharge: TFloatField;
    extendedVatQTCDemandCharge: TFloatField;
    extendedVatQTCTransSystemCharge: TFloatField;
    extendedVatQSystemLossCharge: TFloatField;
    extendedVatQDCDemandCharge: TFloatField;
    extendedVatQDCDistributionCharge: TFloatField;
    extendedVatQSCRetCustCharge: TFloatField;
    extendedVatQSCSupplySysCharge: TFloatField;
    extendedVatQMCRetailCustCharge: TFloatField;
    extendedVatQMCSystemCharge: TFloatField;
    extendedVatQUCNPCStrandedDebts: TFloatField;
    extendedVatQUCNPCStrandedContCost: TFloatField;
    extendedVatQUCDUStrandedContCost: TFloatField;
    extendedVatQUCME: TFloatField;
    extendedVatQUCEqTaxesAndRoyalties: TFloatField;
    extendedVatQUCEC: TFloatField;
    extendedVatQUCCrossSubRemoval: TFloatField;
    extendedVatQICCrossSubsidyCharge: TFloatField;
    extendedVatQPowerActRateRed: TFloatField;
    extendedVatQLifelineDiscSubs: TFloatField;
    extendedVatQLoanCondo: TFloatField;
    extendedVatQTransformerRental: TFloatField;
    extendedVatQOCCode1: TStringField;
    extendedVatQOCAmount1: TFloatField;
    extendedVatQOCMo1: TFloatField;
    extendedVatQOCTotal1: TFloatField;
    extendedVatQOCCode2: TStringField;
    extendedVatQOCAmount2: TFloatField;
    extendedVatQOCMo2: TFloatField;
    extendedVatQOCTotal2: TFloatField;
    extendedVatQOCCode3: TStringField;
    extendedVatQOCAmount3: TFloatField;
    extendedVatQOCMo3: TFloatField;
    extendedVatQOCTotal3: TFloatField;
    extendedVatQTotalBill: TFloatField;
    extendedVatQBillNumber: TStringField;
    extendedVatQOEBRNumber: TStringField;
    extendedVatQBillMonth: TStringField;
    extendedVatQBillDate: TDateField;
    extendedVatQstatuscode: TStringField;
    extendedVatQLCCustMo: TFloatField;
    extendedVatQPrevYearAdjPowerCost: TFloatField;
    extendedVatQSysLossUnderRecov: TFloatField;
    extendedVatQVATDisc: TFloatField;
    extendedVatQVATDiscAmt: TFloatField;
    extendedVatQVATDistDiscAmt: TFloatField;
    extendedVatQVATGenCoDiscAmt: TFloatField;
    extendedVatQVATTransCoDiscAmt: TFloatField;
    extendedVatQVATSystemLossDiscAmt: TFloatField;
    extendedVatQVATDist: TFloatField;
    extendedVatQVATGenCO: TFloatField;
    extendedVatQVATTransCO: TFloatField;
    extendedVatQVATSystemLossGenCO: TFloatField;
    extendedVatQVATSystemLossTransCO: TFloatField;
    extendedVatQVATparec: TFloatField;
    extendedVatQVAT: TFloatField;
    extendedVatQAdjAmountBalance: TFloatField;
    extendedVatQAdjAmountApplied: TFloatField;
    extendedVatQReadTime: TStringField;
    extendedVatQDiffBillPerKwhr: TFloatField;
    extendedVatQDiffBillPerKW: TFloatField;
    extendedVatQDiffBillPerCust: TFloatField;
    extendedVatQMCC: TFloatField;
    extendedVatQPKVROebrNumber: TStringField;
    extendedVatQPKVRBillMonth: TStringField;
    extendedVatQPKVRAmount: TFloatField;
    extendedVatQTransSysAncRefund: TFloatField;
    extendedVatQTransDemAncRefund: TFloatField;
    extendedVatQVATTransAncRefund: TFloatField;
    extendedVatQSCDisc: TFloatField;
    extendedVatQWRateCode: TStringField;
    extendedVatQSCAmt4Disc: TFloatField;
    extendedVatQCBook: TStringField;
    extendedVatQRPTax: TFloatField;
    extendedVatQRateOrder: TStringField;
    extendedVatQBTax: TFloatField;
    extendedVatQOtherGenRateAdj: TFloatField;
    extendedVatQOtherTransCostAdj: TFloatField;
    extendedVatQOtherTransDemandCostAdj: TFloatField;
    extendedVatQOtherSystemLossCostAdj: TFloatField;
    extendedVatQOtherLifelineRateCostAdj: TFloatField;
    extendedVatQOtherSeniorCitizenRateAdj: TFloatField;
    extendedVatQFitall: TFloatField;
    extendedVatQreferenceAtmNo: TStringField;
    extendedVatQPARec: TFloatField;
    TmpQuery2: TMyQuery;
    compVatExt: TMyQuery;
    compVatExtfinalVat: TFloatField;
    compVatExtextendedTax: TFloatField;
    TRDetailfinalv: TFloatField;
    TRDetailwithholdingT: TFloatField;
    TRDetailtinFinal: TStringField;
    TRDetailPayorsNameFinal: TStringField;
    TRDetailtinCreditable: TStringField;
    TRDetailPayorsNameCreditable: TStringField;
    TReportTaxWithheldQ: TMyQuery;
    TReportTaxWithheldQfinalVat: TFloatField;
    TReportTaxWithheldQtaxWithheld: TFloatField;
    BtnTellerRep: TNxLinkLabel;
    finalwithholdinQ: TMyQuery;
    finalwithholdinQfinalVat: TFloatField;
    finalwithholdinQextendedTax: TFloatField;
    deleteFinalWithholdingQ: TMyQuery;
    NxDBTextColumn8: TNxDBTextColumn;
    Recondate: TStringField;
    ReconORNumber: TStringField;
    groupselectfinalVat: TFloatField;
    groupselectwithholdingTax: TFloatField;
    CurrentCountidTellerLogIn: TLongWordField;
    CurrentCountTellerName: TStringField;
    CurrentCountTellerNumber: TLongWordField;
    CurrentCountCustomerNumber: TLongWordField;
    CountAllidCustomerCount: TLongWordField;
    CountAllTellerNumber: TLongWordField;
    CountLimitidCountLimit: TLongWordField;
    CountLimitLimitCount: TLongWordField;
    CountLimitstubcolor: TLongWordField;
    CountLimitcolorstr: TStringField;
    GetCountidCustomerCount: TLongWordField;
    GetCountTellerNumber: TLongWordField;
    TellerHidCustomerCount: TLongWordField;
    TellerHTellerNumber: TLongWordField;
    usersORupdateBase: TMyQuery;
    NxLinkLabel7: TNxLinkLabel;
    LinkLabel1: TLinkLabel;
    LinkLabel2: TLinkLabel;
    LinkLabel3: TLinkLabel;
    regularCons_L: TNxLabel;
    seniorCons_L: TNxLabel;
    cashier_L: TNxLabel;
    Timer4: TTimer;
    CBillVATmcc: TFloatField;
    billhistoryVATmcc: TFloatField;
    UnPBPVATmcc: TFloatField;
    UnPBPgram: TFloatField;
    CBillgram: TFloatField;
    MasterisGram: TBooleanField;
    isoQuery: TMyQuery;
    isoQueryidisofmnumber: TIntegerField;
    isoQueryisoNumber: TStringField;
    isoQueryrevision: TStringField;
    isoQuerydatestarted: TDateField;
    isoQueryreportType: TStringField;
    isoQueryDepartment: TStringField;
    isoQuerydateF: TStringField;
    billhistorygram: TFloatField;
    printOEBRlabel: TNxLinkLabel;
    usersIsActive: TBooleanField;
    usersArea: TStringField;
    usersAreacode: TStringField;
    collNceccoQ: TMyQuery;
    userspass: TStringField;
    Collectorpass: TStringField;
    procedure BtnSearchClick(Sender: TObject);
    procedure SearchAccountKeyPress(Sender: TObject; var Key: Char);
    procedure ConsumerDataBoxExit(Sender: TObject);
    procedure OPDescKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    Procedure AddtoPaymentArray(OEBRNumber, Particular, AccountStr, BillMonth : String;Amount,AmountfinalV,AmountWthhndT : Currency);
    procedure FormShow(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCloseClick(Sender: TObject);
    procedure CashKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnTellerRepClick(Sender: TObject);
    procedure CancelTellerOR1Click(Sender: TObject);
    procedure CheckAmountKeyPress(Sender: TObject; var Key: Char);
    procedure PDJSillyLabel5Click(Sender: TObject);
    procedure OkCancelTORClick(Sender: TObject);
    procedure OtherPaymentsPanelExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AmountToBePaidKeyPress(Sender: TObject; var Key: Char);
    procedure EVATKeyPress(Sender: TObject; var Key: Char);
    procedure PayAllocPanelExit(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure BtnMulipleTorClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure MTorAmountTenderedKeyPress(Sender: TObject; var Key: Char);
    procedure CloseMultipleTorClick(Sender: TObject);
    procedure BtnConsumerCallerClick(Sender: TObject);
    procedure DsFancyButton5Click(Sender: TObject);
    procedure BtnSelectPrinterClick(Sender: TObject);
    procedure DsFancyButton7Click(Sender: TObject);
    procedure MTotalAmountKeyPress(Sender: TObject; var Key: Char);
    procedure btnfindaccountClick(Sender: TObject);
    procedure DsFancyButton9Click(Sender: TObject);
    procedure DsFancyButton10Click(Sender: TObject);
    procedure btnGetBatchClick(Sender: TObject);
    procedure DsFancyButton12Click(Sender: TObject);
    procedure DsFancyButton8Click(Sender: TObject);
    procedure DsFancyButton11Click(Sender: TObject);
    procedure DonePostClick(Sender: TObject);
    procedure MTotalAmountEnter(Sender: TObject);
    procedure EVATEnter(Sender: TObject);
    procedure btnSpotBillingClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure SBBillMonthKeyPress(Sender: TObject; var Key: Char);
    procedure SBPresentReadingExit(Sender: TObject);
    procedure SBAmountButtonClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure AreaKeyPress(Sender: TObject; var Key: Char);
    procedure NxButton3Click(Sender: TObject);
    procedure BtnNewApplicantClick(Sender: TObject);
    procedure FindApplicantButtonClick(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure BtnReconnectClick(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure FindReconButtonClick(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure CollectorCodeKeyPress(Sender: TObject; var Key: Char);
    procedure FindReconKeyPress(Sender: TObject; var Key: Char);
    procedure FindApplicantKeyPress(Sender: TObject; var Key: Char);
    procedure FindDiscoButtonClick(Sender: TObject);
    procedure FindDiscoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnDisconnectClick(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure BtnSubOfficeClick(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure SOAcroKeyPress(Sender: TObject; var Key: Char);
    procedure NxButton12Click(Sender: TObject);
    procedure DBGrid5KeyPress(Sender: TObject; var Key: Char);
    procedure AveConsKeyPress(Sender: TObject; var Key: Char);
    procedure NxButton15Click(Sender: TObject);
    procedure NxButton14Click(Sender: TObject);
    procedure NxButton13Click(Sender: TObject);
    procedure NxButton16Click(Sender: TObject);
    procedure NxButton18Click(Sender: TObject);
    procedure NxButton17Click(Sender: TObject);
    procedure MainPanelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MainPanelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxButton19Click(Sender: TObject);
    procedure NxButton20Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure BtnRequestClick(Sender: TObject);
    procedure NxLinkLabel6Click(Sender: TObject);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure NxLinkLabel8Click(Sender: TObject);
    procedure Re1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure noneConsmrPilBtnClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid11CellClick(Column: TColumn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure nc_searchBtnClick(Sender: TObject);
    procedure NxButton21Click(Sender: TObject);
    procedure NxButton23Click(Sender: TObject);
    procedure NxButton22Click(Sender: TObject);
    procedure NxButton24Click(Sender: TObject);
    procedure NxLinkLabel7Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure printOEBRlabelClick(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure PrintCashierOR;
    Procedure PrintTellerAR;
    Procedure PrintOEBROld;
    Procedure PrintOEBRNew;
    Procedure LoadNceccoOEBRPrinting;
    Function ComputeBill(Kwhr : Real) : Currency;
    { Public declarations }

    var
     bh_ratecode                   : String          ;
     bh_wratecode                  : String          ;
     TaxWithheldBase               : Double          ;
     codeNum                       : String          ;
     bMonth                        : String          ;
     OC1vat,OC2vat,OC3vat          : Double          ;
     OCAmount1                     : Double          ;
     OCAmount2                     : Double          ;
     OCAmount3                     : Double          ;
     OCCode1,OCCode2,OCCode3       : String          ;
     SureTOR_fcTax                 : String          ;
     areaCollector                 : String          ;
     nceccoCnt                     : Integer         ;
  end;

Type
PRec = Record
 POEBRNumber         : Array[1..30] of String[15];
 PBillMonth          : Array[1..30] of String[4];
 PParticular         : Array[1..30] of String[50];
 PEVATStr            : Array[1..30] of String[80];
 PAccountDesc        : Array[1..30] of String[50];
 PAmount             : Array[1..30] of Currency;
 PRemittance         : Array[1..30] of String[50];
 PRemittanceAmount   : Array[1..30] of Currency;
 PSpotBill           : Array[1..30] of Char;
end;

var
 TellerPOSForm                 : TTellerPOSForm  ;
 PRecord                       : PRec            ;
 MinW,MaxW                     : Word            ;
 TotalPayment                  : Currency        ;
 TotalInt                      : Currency        ;
 IntRate                       : Currency        ;
 VATRate                       : Real            ;
 PArray                        : Integer         ;
 TellerName                    : String          ;
 ORCount                       : Integer         ;
 Lst                           : Text            ;
 PageCount                     : Integer         ;
 LineCount                     : Integer         ;
 HeadSW                        : Boolean         ;
 GrandTotal                    : Currency        ;
 GrandTotalOP                  : Currency        ;
 TotalORS                      : Integer         ;
 DetailSW                      : Boolean         ;
 ORPrinted                     : Boolean         ;
 ChkValue                      : Real            ;
 Check                         : Integer         ;
 ModInterest                   : Currency        ;
 ModMonth                      : Integer         ;
 MTor                          : Array[1..20] of String[20];
 MTorCount                     : Integer         ;
 MTorAmount                    : Currency        ;
 PrinterName                   : String          ;
 ManTotalAmount                : Currency        ;
 ManUCEC                       : Currency        ;
 ManUCME                       : Currency        ;
 ManPKVRAmount                 : Currency        ;
 ManVatNetGenco                : Currency        ;
 ManVatNetTransco              : Currency        ;
 ManVatNetSystemLoss           : Currency        ;
 ManVatNetDist                 : Currency        ;
 ManTransformer                : Currency        ;
 Remittance                    : Boolean         ;
 LLine                         : Currency        ;

 DBKwhr                        : Real            ;
 DBKW                          : Real            ;
 WithDB                        : Boolean         ;
 DiffBillVAT                   : Currency        ;

 BillPresentDate               : TDate           ;
 BillPreviousDate              : TDate           ;
 BillGenSysCharge              : Currency        ;
 BillHostCommCharge            : Currency        ;
 BillForexCharge               : Currency        ;
 BillTCDemandCharge            : Currency        ;
 BillTCTransSystemCharge       : Currency        ;
 BillSystemLossCharge          : Currency        ;
 BillDCDemandCharge            : Currency        ;
 BillDCDistributionCharge      : Currency        ;
 BillSCRetCustCharge           : Currency        ;
 BillSCSupplySysCharge         : Currency        ;
 BillMCRetailCustCharge        : Currency        ;
 BillMCSystemCharge            : Currency        ;
 BillMCC                       : Currency        ;
 BillTransSysAncRefund         : Currency        ;
 BillTransDemAncRefund         : Currency        ;
 BillVATTransAncRefund         : Currency        ;
 BillUCNPCStrandedDebts        : Currency        ;
 BillUCNPCStrandedContCost     : Currency        ;
 BillUCDUStrandedContCost      : Currency        ;
 BillUCME                      : Currency        ;
 BillUCEqTaxesAndRoyalties     : Currency        ;
 BillUCEC                      : Currency        ;
 BillUCCrossSubRemoval         : Currency        ;
 BillICCrossSubsidyCharge      : Currency        ;
 BillPowerActRateRed           : Currency        ;
 BillLifelineDiscSubs          : Currency        ;
 BillLoanCondo                 : Currency        ;
 BillLCCustMo                  : Currency        ;
 BillVAT                       : Currency        ;
 BillPrevYearAdjPowerCost      : Currency        ;
 BillSysLossUnderRecov         : Currency        ;
 BillTotalBill                 : Currency        ;
 BillAmountPaid                : Currency        ;
 BillRPTax                     : Currency        ;
 BillBTax                      : Currency        ;
 TotalPower                    : Currency        ;
 VATGenCO                      : Currency        ;
 VATTransCO                    : Currency        ;
 VATSystemLoss                 : Currency        ;
 BillVATDist                   : Currency        ;
 BillVATDistDiscAmt            : Currency        ;
 BillVATGenCoDiscAmt           : Currency        ;
 BillVATTransCoDiscAmt         : Currency        ;
 BillVATSystemLossDiscAmt      : Currency        ;
 BillVATDiscAmt                : Currency        ;
 BillAdjAmountApplied          : Currency        ;
 BillTransformerRental         : Currency        ;
 BillOCCode1                   : String[3]       ;
 BillOCAmount1                 : Currency        ;
 BillOCCode2                   : String[3]       ;
 BillOCAmount2                 : Currency        ;
 BillOCCode3                   : String[3]       ;
 BillOCAmount3                 : Currency        ;
 BillDiffBillPerKwhr           : Currency        ;
 BillDiffBillPerKW             : Currency        ;
 BillDiffBillPerCust           : Currency        ;
 BillDiffBillVAT               : Currency        ;
 BillPKVROEBRNumber            : String          ;
 BillPKVRBillMonth             : String          ;
 BillPKVRAmount                : Currency        ;
 BillSCDisc                    : Currency        ;
 BillSCAmt4Disc                : Currency        ;
 BillRateOrder                 : String          ;

 BillOtherGenRateAdjV          : Currency        ;
 BillOtherTransCostAdjV        : Currency        ;
 BillOtherTransDemandCostAdjV  : Currency        ;
 BillOtherSystemLossCostAdjV   : Currency        ;
 BillOtherLifelineRateCostAdjV : Currency        ;
 BillOtherSeniorCitizenRateAdjV: Currency        ;
 BillFitall                    : Currency        ;
 BillPARec                     : Currency        ;
 BillVATparec                  : Currency        ;
 BillVATmcc                    : Currency        ;
 Billgram                      : Currency        ;

 ArrearsCount                  : Integer         ;
 ArrearBillMonth               : Array[1..12] of String[10] ;
 ArrearOebrNumber              : Array[1..12] of String[54] ;
 ArrearAmount                  : Array[1..12] of Real       ;

 PKKVAmt                       : Currency        ;
 NewApp                        : Boolean         ;
 NewAppDelete                  : Integer         ;
 NewAppIdComplaints            : Integer         ;

 ReconPayment                  : Boolean         ;
 DiscoPayment                  : Boolean         ;
 ReconID                       : Integer         ;
 DiscoID                       : Integer         ;
 ReconMasterCode               : Integer         ;
 DiscoMasterCode               : Integer         ;

 OCPPayment                    : Boolean         ;
 OCPID                         : Integer         ;
 OCPMasterCode                 : Integer         ;
 OCPCount                      : Integer         ;

 FirstBill                     : Boolean         ;
 FirstBillMonth                : String[4]       ;
 FirstRate                     : String[1]       ;
 FirstKWHR                     : String[10]      ;
 FirstPresentRead              : String[10]      ;
 FirstPreviousRead             : String[10]      ;
 FirstOEBRNumber               : String[15]      ;
 PFBill                        : Boolean         ;
 LifeLineStr                   : String[08]      ;
 CancelTry                     : Integer         ;

 FilterSpotMcode               : String          ;
 FilterNoneConsumerMode        : Boolean         ;
 AccntNumberNonec              : String          ;

 finalvatTotal                 : Double          ;
 taxwithheldTotal              : Double          ;
 OR_finalVTotal                : Double          ;
 OR_withholdingTotal           : Double          ;
 book_ISD                      : String          ;
 idnewApply_ISD                : String          ;

 isGram_                       : Integer         ;

implementation

uses LedgerInterface,
     ModTools,
     SetTeller,
     //DateUtils,
     TellerMenu,
     setcolor,
     DiscoWarning,
     Data, taxWithheldFrm, queHistoryForm, callerFrm, proceedCallerForm;

{$R *.dfm}

Var
 Device, Driver, Port: array[0..1023] of char;
 varhandle : THandle;
Function RoundOffTmp(Data : Double) : Double;
Var
  s: string;
begin
 s := FormatFloat('#########0.00', Data);
 RoundOffTmp := StrToFloat(s);
end;
Function RoundOff(Data : Currency) : Currency;
Var DSt  : String;
    Dat  : Currency;
    Chk  : Integer;
    Val2 : Currency;
begin
RoundOff := Data;
Str(Data:0:4,Dst);

 If Copy(Dst,Length(Dst)-1,1) >= '5' then
        if data >= 0 then Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))+0.01 else
                          Val2 := StrToCurr(Copy(Dst,1,length(dst)-2))-0.01 else
      Val2 := StrToCurr(Copy(Dst,1,length(dst)-2));

RoundOff := Val2;
If (Dst = '0.00') or (Dst = '-0.00') then RoundOff := 0.00;
end;

procedure TTellerPOSForm.BtnSearchClick(Sender: TObject);
begin
 If UnPB.Active then UnPB.Close;
 Memo1.Lines.Clear;
 Memo2.Lines.Clear;
 Memo3.Lines.Clear;
 FillChar(PRecord,SizeOf(PRecord),#0);

 Area.Text                     := '';
 Book.Text                     := '';
 Sequence.Text                 := '';
 Name.Text                     := '';
 Address.Text                  := '';
 PArray                        := 0;
 ConsumerDataBox.Enabled       := False;
 OutstandingAccountBox.Enabled := False;
 OtherPaymentsBox.Enabled      := False;
 PaymentPanel.Visible          := False;
 SearchAccount.Text            := '';
 MainPanel.Enabled             := True;
 TotalPayment                  := 0;
 TotalInt                      := 0;
 OR_finalVTotal                := 0;
 OR_withholdingTotal           := 0;

 If not assigned(LedgerInterfaceForm) then
 LedgerInterfaceForm := TLedgerInterfaceForm.Create(Application);
 LedgerInterfaceForm.Show;
end;

procedure TTellerPOSForm.SearchAccountKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
   begin

      ManTotalAmount       := 0.00;
      ManUCEC              := 0.00;
      ManUCME              := 0.00;
      ManPKVRAmount        := 0.00;
      ManVatNetGenco       := 0.00;
      ManVatNetTransco     := 0.00;
      ManVatNetSystemLoss  := 0.00;
      ManVatNetDist        := 0.00;
      ManTransformer       := 0.00;

      FillChar(ArrearBillMonth,SizeOf(ArrearBillMonth),#0);
      FillChar(ArrearOebrNumber,SizeOf(ArrearOebrNumber),#0);
      FillChar(ArrearAmount,SizeOf(ArrearAmount),#0);
      ArrearsCount := 0;

      Memo1.Lines.Clear;
      Memo2.Lines.Clear;
      Memo3.Lines.Clear;
      StaticText10.Caption := '';
      Remittance := False;
      FirstBill  := True;

      If SearchAccount.Text = '' then
       begin
        ConsumerDataBox.Enabled := True;
        Name.SetFocus;
        PArray                  := 0;
        FillChar(PRecord,SizeOf(PRecord),#0);
        TotalPayment := 0;
        OR_finalVTotal                := 0;
        OR_withholdingTotal           := 0;
        exit;
       end;

      If SearchAccount.Text <> '' then
       begin
        CheckMaster.Close;
        CheckMaster.ParamByName('AccountNumber').Text := '%'+SearchAccount.Text+'%';
        CheckMaster.Open;

        If CheckMaster.RecordCount > 1 then
          begin
            NxAlertWindow1.Popup;
            MoreAccountPanel.Left    := 204;
            MoreAccountPanel.Top     := 212;
            MoreAccountPanel.BringToFront;
            MoreAccountPanel.Visible := True;
            DBGrid5.SetFocus;
            exit;
          end;

        If CheckMaster.RecordCount = 0 then
          begin
            MessageDlg('Account number not found. ', mtError, [mbOK], 0);
            SearchAccount.SetFocus;
            exit;
          end;

        CheckMaster.Close;

        Master.Close;
        Master.ParamByName('AccountNumber').Text := SearchAccount.Text;
        Master.Open;

        //FilterSpotMcode := MasterCode.Text;

        If MasterConnCode.Text <> '1' then
          begin
           If not assigned(DiscoWarningForm) then DiscoWarningForm := TDiscoWarningForm.Create(Application);
           DiscoWarningForm.ShowModal;
          end;

        Area.Text     := MasterArea.Text     ;
        Book.Text     := MasterBook.Text     ;
        ConnCode.Text := MasterConnCode.Text ;
        Name.Text     := MasterName.Text     ;
        Address.Text  := MasterAddress.Text  ;

        Memo1.Lines.Add(MasterAccountNumber.Text);
        Memo1.Lines.Add('');
        Memo1.Lines.Add(Name.Text);
        Memo1.Lines.Add(Address.Text);

        TellerPOSForm.Width := MaxW;

        UnPB.Close;
        UnPB.ParamByName('Code').Text := MasterCode.Text;
        UnPB.Open;

        FillChar(PRecord,SizeOf(PRecord),#0);
        PArray                         := 0;
        TotalPayment                   := 0;
        OR_finalVTotal                 := 0;
        OR_withholdingTotal            := 0;
        OutstandingAccountBox.Enabled  := True;
        ORPrinted                      := False;

        CBM.Open;
        SBQ.ParamByName('code').Text      := MasterCode.Text;
        SBQ.ParamByName('billmonth').Text := CBMmbillmonth.Text;
        SBQ.Open;

        If SBQ.IsEmpty then
          btnSpotBilling.Enabled         := True
         else
          btnSpotBilling.Enabled         := False;

        CBM.Close;
        SBQ.Close;

        DBGrid2.SetFocus;
       end;
   end;
end;

procedure TTellerPOSForm.ConsumerDataBoxExit(Sender: TObject);
begin
  ConsumerDataBox.Enabled := False;

  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;

  Memo1.Lines.Add('OR Number '+TellerOR.Caption);
  Memo1.Lines.Add('');
  Memo1.Lines.Add(Name.Text);
  Memo1.Lines.Add(Address.Text);

  OtherPaymentsBox.Enabled := True;
  OPDesc.SetFocus;
end;

procedure TTellerPOSForm.OPDescKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then btnfindaccountClick(self);
end;

procedure TTellerPOSForm.Edit1KeyPress(Sender: TObject; var Key: Char);
Var
Vat : Currency;
begin
  If Key = #27 then
   begin
    Key := #0;
    OtherPaymentsPanel.Visible    := False;
    MainPanel.Enabled             := True;
    OPDesc.SetFocus;
   end;

  If Key = #13 then
   begin
    Key := #0;
    If OPDescription.Text = 'INT DISCOUNT' then
    TotalInterest.Caption := Format(TotalInt+StrToCurr(Edit1.Text),'#,###,###.##');

    Vat := StrToCurr(Edit1.Text) * VatRate;
    EVAT.Text := CurrToStr(Vat);
    EVAT.SetFocus;
   end;

end;

Procedure TTellerPOSForm.AddtoPaymentArray;
begin
 If RoundOff(Amount) <> 0.00 then
 begin
 Inc(PArray);

 If SetForm.FormOpt.ItemIndex = 1 then
 begin
   If PArray > 20 then
    begin
     MessageDlg('A Official receipt can only hold 20 payment items. Confirm this payment first.', mtError, [mbOK], 0);
     abort;
    end;
 end
 else
 begin
   If PArray > 10 then
    begin
     MessageDlg('An Acknowledgement receipt can only hold 10 payment items. Confirm this payment first.', mtError, [mbOK], 0);
     abort;
    end;
  end;

 Memo2.Lines.Add(Particular+'  '+OEBRNumber);
 Memo3.Lines.Add(Format(Amount,'##,###,###.##'));

 //Tax Withheld=================
 //=============================
  if AmountfinalV <> 0 then
  begin
    Memo2.Lines.Add('      Final Vat');
    Memo3.Lines.Add(Format(AmountfinalV,'##,###,###.##'));
    OR_finalVTotal         := OR_finalVTotal + AmountfinalV;
  end;

  if AmountWthhndT <> 0 then
  begin
    Memo2.Lines.Add('      Withholding Tax');
    Memo3.Lines.Add(Format(AmountWthhndT,'##,###,###.##'));
    OR_withholdingTotal    := OR_withholdingTotal + AmountWthhndT;
  end;
 //=============================
 //=============================

 With PRecord do
  begin
   POEBRNumber[PArray]  := trim(OEBRNumber);
   PParticular[PArray]  := Particular+' '+OEBRNumber;
   PAccountDesc[PArray] := AccountStr;
   PBillMonth[PArray]   := BillMonth;
   PAmount[PArray]      := RoundOff(Amount);
   If AccountStr = 'POWER BILL' then PEVATStr[PArray] := Format(UnPBVAT.AsCurrency,'##,###.##');
   If AccountStr = 'SPOT BILL' then PEVATStr[PArray] := Format(BillVAT,'##,###.##');
   If AccountStr = 'SPOT BILL' then PSpotBill[PArray] := '1' else PSpotBill[PArray] := '2';
  end;

 TotalPayment           := TotalPayment + RoundOff(Amount);
 StaticText10.Caption   := Format(TotalPayment + OR_finalVTotal+ OR_withholdingTotal,'##,###,###.##');
 end;
end;

procedure TTellerPOSForm.FormShow(Sender: TObject);
begin
  book_ISD      := '';
  idnewApply_ISD:= '';
  areaCollector := '';
  if BillingData.MyConnection1.Server = 'server' then
    areaCollector := 'DMO'
  else if BillingData.MyConnection1.Server = 'serverpao' then
    areaCollector := 'PAO'
  else if BillingData.MyConnection1.Server = 'serverlao' then
    areaCollector := 'LAO'
  else if BillingData.MyConnection1.Server = 'serversao' then
    areaCollector := 'SAO';

  Try
   CBillCreate.Execute;
  except
  end;
  try
    AlterComputeBill.Execute;
  except
  end;
  FilterNoneConsumerMode        := False;
  TellerPOSForm.Height          := Screen.Height;
  TellerPOSForm.Width           := Screen.Width;
  ORPrinted                     := False;
  ConsumerDataBox.Enabled       := False;
  OutstandingAccountBox.Enabled := False;
  OtherPaymentsBox.Enabled      := False;
  OP.Open;
  TellerPOSForm.Left            := 0;
  TellerPOSForm.Top             := 0;
  TellerName                    := SetForm.usersName.Text;
  ORCount                       := StrToInt(SetForm.StartTellerOR.Text);
  IntRate                       := StrToCurr(SetForm.InterestRate.Text);
  Vatrate                       := StrToCurr(SetForm.VatRate.Text);
  Teller.Caption                := SetForm.usersName.Text;        //SetForm.TellerName.Text; //
  CollectDate.Caption           := DateToStr(SetForm.PostDate.Date);
  TellerOR.Caption              := JustStr(IntToStr(ORCount),'0',9,1)+' '+SetForm.UsersCollectorCode.Text;
  IntText.Caption               := SetForm.InterestRate.Text;
  VatText.Caption               := SetForm.VATRate.Text;
  NxLinkLabel3.Enabled          := False;

 If SetForm.usersUserType.Text = '5' then
   begin
     ConsumerDataBox.Enabled       := True;
     Name.SetFocus;
     Timer3.Enabled                := True;
     NxLinkLabel3.Enabled          := True;
   end else
  SearchAccount.SetFocus;

  
 if setForm.usersmcashier.Value = true then
  begin
    BtnNewApplicant.Enabled  := false;
    BtnSubOffice.Enabled     := false;
    BtnDisconnect.Enabled    := false;
    btnGetBatch.Enabled      := false;
    noneConsmrPilBtn.Enabled := false;
    OtherPaymentsBox.Enabled := false;
    btnfindaccount.Enabled   := false;
    OPDesc.Enabled           := false;
  end;

  Timer4.Enabled := true;
end;

procedure TTellerPOSForm.DBGrid2KeyPress(Sender: TObject; var Key: Char);
Var I : Integer;
    M : Integer;
    Interest,mccTW : Currency;
    Tagged : TMyQuery;
begin
  codeNum := '';
  bMonth  := '';
  finalTax_Load.Caption      := '';
  creditableTax_load.Caption := '';

  SetForm.TellerTrans.Close;
  SetForm.TellerTrans.ParamByName('date').AsDate     := SetForm.PostDate.Date;
  SetForm.TellerTrans.ParamByName('tellercode').Text := SetForm.Collector.Text;
  SetForm.TellerTrans.ParamByName('batch').Text      := SetForm.Batch.Text;
  SetForm.TellerTrans.Open;

  If not SetForm.TellerTrans.IsEmpty then
   begin
    MessageDlg('You cannot accept payment for this batch'+#10+#13+
               'Batch is already remitted', mtError, [mbOK], 0);
    SetForm.TellerTrans.Close;
    exit;
   end;

  SetForm.TellerTrans.Close;

  If Key = #27 then
  begin
   OutstandingAccountBox.Enabled := False;
   OtherPaymentsBox.Enabled      := True;
   OPDesc.SetFocus;
  end;

  If Key = #13 then
   begin
    Tagged            := TMyQuery.Create(self);
    Tagged.Connection := SetForm.MyConnection1;
    Tagged.SQL.Clear;
    Tagged.SQL.Add('select * from tagunpaid where document = :document');
    Tagged.ParamByName('document').Text := UnPBdocument.Text;
    Tagged.Open;

    If not Tagged.IsEmpty then
    if (MessageDlg('That bill has been tagged with the following remarks'+#13+#10+
                   Tagged.FieldByName('Remarks').Text+'... Do you wish to Continue ? ', mtWarning, [mbOK, mbCancel], 0) = mrCancel) then
      begin
        Tagged.Close;
        exit;
      end;

    Tagged.Close;

    If PFBill then
      begin
        MessageDlg('This is payment for differential billing (PILFIRAGE)..'+#13+#10+
                   'You cannot add other bills to this payment', mtError, [mbOK], 0);
        exit;
      end;

   For I := 1 to 20 do
    If trim(PRecord.POEBRNumber[I]) = trim(UnPBdocument.text) then
     begin
      MessageDlg('That bill has already been chosen.', mtWarning, [mbOK], 0);
      abort;
     end;

   Tagged.SQL.Clear;
   Tagged.SQL.Add('select * from routecontrol where document = :document and itype = ''2''');
   Tagged.ParamByName('document').Text := UnPBdocument.Text;
   Tagged.Open;

   If not Tagged.IsEmpty then
     begin
       Collector.ParamByName('CollectorCode').Text := Tagged.FieldByName('CollectorCode').Text;
       Collector.open;

       SCollector.Caption      := CollectorName.Text;
       SDateIssued.Caption     := Tagged.FieldByName('DateIssued').Text;

       DiscoIssuePanel.Left    := 48;
       DiscoIssuePanel.Top     := 294;
       DiscoIssuePanel.Visible := True;
       DiscoIssuePanel.BringToFront;
       NxButton3.SetFocus;
       exit;
    end;

   Tagged.Close;

   If not setForm.AllowPartial then
    begin

   Tagged.SQL.Clear;
   Tagged.SQL.Add('select * from collection where receiptnumber = :receiptnumber and billmonth = :billmonth');
   Tagged.ParamByName('ReceiptNumber').Text := UnPBdocument.text;
   Tagged.ParamByName('BillMonth').Text     := UnPBbillmonth.text;
   Tagged.Open;

    If (not Tagged.IsEmpty) and not (Tagged.FieldByName('CollectorCode').Text = 'PKV') then
     begin
       MessageDlg('Payment has already been made on that bill.  ', mtError, [mbOK], 0);
       abort;
     end;

    Tagged.Close;
    end;

    If SetForm.FormOpt.ItemIndex in [1..2] then
    begin

        If FirstBill = true then
          begin
            FillChar(ArrearBillMonth,SizeOf(ArrearBillMonth),#0);
            FillChar(ArrearOebrNumber,SizeOf(ArrearOebrNumber),#0);
            FillChar(ArrearAmount,SizeOf(ArrearAmount),#0);

            ArrearsCount := 0;

            If copy(UnPBbillmonth.Text,1,2) <> 'PF' then
            begin
            BillHistory.Close;
            BillHistory.SQL.Clear;
            BillHistory.SQL.Add('select * from billhistory where code = :code and billmonth = :billmonth');
            BillHistory.ParamByName('code').Text      := MasterCode.Text;
            BillHistory.ParamByName('billmonth').Text := UnPBbillmonth.Text;
            BillHistory.Open;

            If BillHistory.IsEmpty then
              begin
                BillHistory.Close;
                BillHistory.SQL.Clear;
                BillHistory.SQL.Add('select * from latebillhistory where code = :code and billmonth = :billmonth');
                BillHistory.ParamByName('code').Text      := MasterCode.Text;
                BillHistory.ParamByName('billmonth').Text := UnPBbillmonth.Text;
                BillHistory.Open;

                If BillHistory.IsEmpty then
                  begin
                   Billhistory.Close;
                   MessageDlg('No Data Archive found.... Please refer to system administrator', mtError, [mbOK], 0);
                   exit;
                  end;
              end;
            end
            else
            begin
              billhistory.Close;
              billhistory.SQL.Clear;
              BillHistory.SQL.Add('select *,concat(SUBSTRING(area,2,2),SUBSTRING(book,2,2)) as CBook from PilferBill where code = :code and billmonth = :billmonth');
              BillHistory.ParamByName('code').Text      := MasterCode.Text;
              BillHistory.ParamByName('billmonth').Text := UnPBbillmonth.Text;
              BillHistory.Open;
              PFBill := True;
            end;

            If not PFBill then
            FirstBillMonth                := UnPBbillmonth.Text else
             begin
              CBM.Open;
              FirstBillMonth              := CBMmbillmonth.Text;
              CBM.Close;
             end;

            FirstRate                     := MasterWRateCode.Text;
            FirstKWHR                     := billhistoryKilowattHour.Text;
            FirstOEBRNumber               := billhistoryOEBRNumber.Text;

            If billhistoryFeedBackCode.Text = 'A' then
              begin
                FirstPresentRead  := billhistoryPresentReadingKWH.Text;
                FirstPreviousRead := 'AVERAGE';
              end
              else
              begin
                FirstPresentRead  := billhistoryPresentReadingKWH.Text;
                FirstPreviousRead := billhistoryPreviousReadingKWH.Text;
              end;

            BillPresentDate               := billhistoryPresentReadingDate.AsDateTime;
            BillPreviousDate              := billhistoryPreviousReadingDate.AsDateTime;

            If PFBill then
              begin
                FirstPresentRead  := billhistoryPresentReadingKWH.Text;
                FirstPreviousRead := 'DIF KWH';

                BillPresentDate           := billhistoryBillDate.AsDateTime;
                BillPreviousDate          := billhistoryBillDate.AsDateTime;
              end;

            If not PFBill then
            begin
              MRate.Close;
              MRate.ParamByName('BillMonth').Text := billhistoryBillMonth.Text;
              MRate.Open;

              if MRateWRSw.Text = '0' then
              MRate.FilterSQL := 'RateCode = '+QuotedStr(billhistoryRateCode.Text) else
              MRate.FilterSQL := 'WRateCode = '+QuotedStr(billhistoryWRateCode.Text);
            end else
            begin
              CBM.Open;
              MRate.Close;
              MRate.ParamByName('BillMonth').Text := CBMmbillmonth.Text;
              MRate.Open;
              if MRateWRSw.Text = '0' then
              MRate.FilterSQL := 'RateCode = '+QuotedStr(MasterRateCode.Text) else
              MRate.FilterSQL := 'WRateCode = '+QuotedStr(MasterWRateCode.Text);
              CBM.Close;
            end;

            WithDB := False;
            DBKwhr := 0;
            DBKW   := 0;
            If not PFBill then
            begin
              If MRateDiffBillApply.AsInteger = 1 then
                 begin
                   DiffCons.ParamByName('Code').Text      := billhistoryCode.Text;
                   DiffCons.ParamByName('BillMonth').Text := MRateDiffBillMonth.Text;
                   DiffCons.Open;

                   If not DiffCons.IsEmpty then
                     begin
                        WithDB := True;
                        DBKwhr := DiffConskilowatthour.AsFloat;
                        DBKW   := DiffConskilowattused.AsFloat;
                     end;
                   DiffCons.Close;
                 end;

              MRate.Close;
            end;

            BillGenSysCharge              := billhistoryGenSysCharge.AsCurrency;
            //OverUnderGenerationSystem==============
            BillOtherGenRateAdjV          := billhistoryOtherGenRateAdj.AsCurrency;
            //=======================================
            BillHostCommCharge            := billhistoryHostCommCharge.AsCurrency;
            BillForexCharge               := billhistoryForexCharge.AsCurrency;
            BillTCDemandCharge            := billhistoryTCDemandCharge.AsCurrency;
            //OverUnderDemand========================
            BillOtherTransDemandCostAdjV  := billhistoryOtherTransDemandCostAdj.AsCurrency;
            //=======================================
            BillTCTransSystemCharge       := billhistoryTCTransSystemCharge.AsCurrency;
            //OverUnderTransmissionSystem============
            BillOtherTransCostAdjV        := billhistoryOtherTransCostAdj.AsCurrency;
            //=======================================
            BillSystemLossCharge          := billhistorySystemLossCharge.AsCurrency;
            //OverUnderSystemLoss====================
            BillOtherSystemLossCostAdjV   := billhistoryOtherSystemLossCostAdj.AsCurrency;
            //=======================================
            BillDCDemandCharge            := billhistoryDCDemandCharge.AsCurrency;
            BillDCDistributionCharge      := billhistoryDCDistributionCharge.AsCurrency;
            BillSCRetCustCharge           := billhistorySCRetCustCharge.AsCurrency;
            BillSCSupplySysCharge         := billhistorySCSupplySysCharge.AsCurrency;
            BillMCRetailCustCharge        := billhistoryMCRetailCustCharge.AsCurrency;
            BillMCSystemCharge            := billhistoryMCSystemCharge.AsCurrency;
            BillMCC                       := billhistoryMCC.AsCurrency;
            BillDiffBillPerKwhr           := billhistoryDiffBillPerKwhr.AsCurrency;
            BillDiffBillPerKW             := billhistoryDiffBillPerKW.AsCurrency;
            BillDiffBillPerCust           := billhistoryDiffBillPerCust.AsCurrency;

            BillUCNPCStrandedDebts        := billhistoryUCNPCStrandedDebts.AsCurrency;
            BillUCNPCStrandedContCost     := billhistoryUCNPCStrandedContCost.AsCurrency;
            BillUCDUStrandedContCost      := billhistoryUCDUStrandedContCost.AsCurrency;
            BillUCME                      := billhistoryUCME.AsCurrency;
            BillUCEqTaxesAndRoyalties     := billhistoryUCEqTaxesAndRoyalties.AsCurrency;
            BillUCEC                      := billhistoryUCEC.AsCurrency;
            BillUCCrossSubRemoval         := billhistoryUCCrossSubRemoval.AsCurrency;
            BillICCrossSubsidyCharge      := billhistoryICCrossSubsidyCharge.AsCurrency;
            BillPowerActRateRed           := billhistoryPowerActRateRed.AsCurrency;
            BillLifelineDiscSubs          := billhistoryLifelineDiscSubs.AsCurrency;
            //OverUnderLifeline=======================
            BillOtherLifelineRateCostAdjV := billhistoryOtherLifelineRateCostAdj.AsCurrency;
            //=========================================
            LifeLineStr := '';

            If (billhistoryRateCode.Text = 'R') then
             begin
               If billhistoryKilowattHour.AsInteger <= 15 then LifeLineStr := '50% Disc';
               If billhistoryKilowattHour.AsInteger =  16 then LifeLineStr := '40% Disc';
               If billhistoryKilowattHour.AsInteger =  17 then LifeLineStr := '30% Disc';
               If billhistoryKilowattHour.AsInteger =  18 then LifeLineStr := '20% Disc';
               If billhistoryKilowattHour.AsInteger =  19 then LifeLineStr := '10% Disc';
               If billhistoryKilowattHour.AsInteger =  20 then LifeLineStr := ' 5% Disc';
             end;

            BillLoanCondo                 := billhistoryLoanCondo.AsCurrency;
            BillLCCustMo                  := billhistoryLCCustMo.AsCurrency;
            BillVAT                       := billhistoryVAT.AsCurrency;
            BillPrevYearAdjPowerCost      := billhistoryPrevYearAdjPowerCost.AsCurrency;
            BillSysLossUnderRecov         := billhistorySysLossUnderRecov.AsCurrency;
            BillTotalBill                 := billhistoryTotalBill.AsCurrency;
            VATGenCO                      := billhistoryVATGenCO.AsCurrency;
            VATTransCO                    := billhistoryVATTransCO.AsCurrency;
            VATSystemLoss                 := billhistoryVATSystemLossGenCO.AsCurrency;
            BillVATDist                   := billhistoryVATDist.AsCurrency;
            BillVATDistDiscAmt            := billhistoryVATDistDiscAmt.AsCurrency;
            BillVATGenCoDiscAmt           := billhistoryVATGenCoDiscAmt.AsCurrency;
            BillVATTransCoDiscAmt         := billhistoryVATTransCoDiscAmt.AsCurrency;
            BillVATSystemLossDiscAmt      := billhistoryVATSystemLossDiscAmt.AsCurrency;
            BillVATDiscAmt                := billhistoryVATDiscAmt.AsCurrency;
            BillAdjAmountApplied          := billhistoryAdjAmountApplied.AsCurrency;
            BillOCCode1                   := billhistoryOCCode1.Text;
            BillOCAmount1                 := billhistoryOCAmount1.AsCurrency;
            BillOCCode2                   := billhistoryOCCode2.Text;
            BillOCAmount2                 := billhistoryOCAmount2.AsCurrency;
            BillOCCode3                   := billhistoryOCCode3.Text;
            BillOCAmount3                 := billhistoryOCAmount3.AsCurrency;
            BillPKVROEBRNumber            := billhistoryPKVROebrNumber.Text;
            BillPKVRBillMonth             := billhistoryPKVRBillMonth.Text;
            BillPKVRAmount                := billhistoryPKVRAmount.AsCurrency;
            BillTransSysAncRefund         := billhistoryTransSysAncRefund.AsCurrency;
            BillTransDemAncRefund         := billhistoryTransDemAncRefund.AsCurrency;
            BillVATTransAncRefund         := billhistoryVATTransAncRefund.AsCurrency;
            BillSCDisc                    := billhistorySCDisc.AsCurrency;
            //OverUnderSeniorCitizen============
            BillOtherSeniorCitizenRateAdjV:= billhistoryOtherSeniorCitizenRateAdj.AsCurrency;
            //==================================
            BillSCAmt4Disc                := billhistorySCAmt4Disc.AsCurrency;
            BillAmountPaid                := 0;
            BillRPTax                     := billhistoryRPTax.AsCurrency;
            BillRateOrder                 := billhistoryRateOrder.Text;
            BillFitall                    := billhistoryFitall.AsCurrency;
            BillPARec                     := billhistoryPARec.AsCurrency;
            BillVATmcc                    := billhistoryVATmcc.AsCurrency;
            Billgram                      := billhistorygram.AsCurrency;
            BillAmountPaid                := 0;

            BillHistory.Close;
            FirstBill := False;

            // Temporary remove this statement, due to amount replication=======
            //==================================================================
            {If PFBill then
              begin
                PilferBill.ParamByName('code').Text      := MasterCode.Text;
                PilferBill.ParamByName('billmonth').Text := UnPBbillmonth.Text;
                PilferBill.Open;

                ArrearOebrNumber[1] := 'Add : PENALTY per R.A. 7832';
                ArrearAmount[1]     := PilferBillPenalty.AsCurrency;

               // Temporary remove this statement==============
                 if PilferBillBalance.AsCurrency > 0 then
                 begin
                   ArrearOebrNumber[2] := 'Less : PROMISSORY NOTE BALANCE';
                   ArrearAmount[2]     := PilferBillBalance.AsCurrency;
                 end;

                if PilferBillInstallment.AsInteger > 0 then
                 begin
                   ArrearOebrNumber[3] := '       Note : BALANCE WILL BE ADDED TO YOUR SUCCESSIVE';
                   ArrearOebrNumber[4] := '              BILLS IN '+JustStr(PilferBillInstallment.Text,'0',2,1)+' MONTHS STARTING NEXT MONTH';
                   ArrearOebrNumber[5] := '              IN THE AMOUNT OF Php'+Format(PilferBillAmortization.AsCurrency,'##,###.##');
                 end;

                BillAmountPaid := PilferBillAmountPaid.AsCurrency;
                PilferBill.Close;
              end; }
             //=================================================================
          end
          else
          begin

            for i := 1 to 6 do
             if trim(ArrearOebrNumber[I]) = trim(UnPBdocument.Text) then exit;

            Inc(ArrearsCount);

            If ArrearsCount > 12 then
              begin
                MessageDlg('Only 12 Arrears are allowed for each OEBR...', mtError, [mbOK], 0);
                DBGrid2.SetFocus;
                exit;
              end;

               ArrearBillMonth[ArrearsCount]  := FormatDateTime('mmm, yy',
                                                                StrToDate(Copy(UnPBbillmonth.Text,1,2)+'/01/'+
                                                                          Copy(UnPBbillmonth.Text,3,2)));
               ArrearOebrNumber[ArrearsCount] := JustStr(UnPBdocument.Text,' ',15,0);
               ArrearAmount[ArrearsCount]     := UnPBamount.AsCurrency;
          end;

        //=======Assigned Tax base amount===================================
        //==================================================================
          TaxWithheldBase    := 0.0;
          OCAmount1          := 0.0;
          OCAmount2          := 0.0;
          OCAmount3          := 0.0;
          mccTW              := 0.0;
          bh_ratecode        := '';
          bh_wratecode       := '';
          OCCode1            := '';
          OCCode2            := '';
          OCCode3            := '';

          codeNum            := MasterCode.Text;
          bMonth             := UnPBbillmonth.Text;

               extendedVatQ.Close;
               extendedVatQ.SQL.Clear;
               extendedVatQ.SQL.Add('Select * from billhistory where code = :code and billmonth = :billmonth');
               extendedVatQ.ParamByName('code').Text      := codeNum;
               extendedVatQ.ParamByName('billmonth').Text := bMonth;
               extendedVatQ.Open;

               if extendedVatQ.IsEmpty then
                begin
                   extendedVatQ.Close;
                   extendedVatQ.SQL.Clear;
                   extendedVatQ.SQL.Add('Select * from latebillhistory where code = :code and billmonth = :billmonth');
                   extendedVatQ.ParamByName('code').Text      := codeNum;
                   extendedVatQ.ParamByName('billmonth').Text := bMonth;
                   extendedVatQ.Open;
                end;

              TmpQuery2.Close;
              TmpQuery2.SQL.Clear;
              TmpQuery2.SQL.Add('Select * from meterrate where mbillmonth = :billmonth and WRateCode =:rate');
              TmpQuery2.ParamByName('billmonth').Text := bMonth;
              TmpQuery2.ParamByName('rate').Text      := extendedVatQ.FieldByName('WRateCode').Text;
              TmpQuery2.Open;

            if extendedVatQ.FieldByName('presentReadingDate').AsDateTime >=StrToDate('5/1/2018') then
            mccTW := extendedVatQ.FieldByName('mcc').AsCurrency;

            bh_wratecode                  := extendedVatQ.FieldByName('WRateCode').Text;
            bh_ratecode                   := extendedVatQ.FieldByName('RateCode').Text;
            TaxWithheldBase               := extendedVatQ.FieldByName('DCDemandCharge').AsCurrency+
                                             extendedVatQ.FieldByName('DCDistributionCharge').AsCurrency+
                                             extendedVatQ.FieldByName('SCRetCustCharge').AsCurrency+
                                             extendedVatQ.FieldByName('SCSupplySysCharge').AsCurrency+
                                             extendedVatQ.FieldByName('MCRetailCustCharge').AsCurrency+
                                             extendedVatQ.FieldByName('MCSystemCharge').AsCurrency+
                                             extendedVatQ.FieldByName('ICCrossSubsidyCharge').AsCurrency+
                                             extendedVatQ.FieldByName('LifelineDiscSubs').AsCurrency+
                                             extendedVatQ.FieldByName('SCDisc').AsCurrency+
                                             extendedVatQ.FieldByName('OtherLifelineRateCostAdj').AsCurrency+
                                             extendedVatQ.FieldByName('OtherSeniorCitizenRateAdj').AsCurrency+
                                             mccTW;

            NxButton21.Enabled := False;
            NxButton22.Enabled := False;
            NxButton23.Enabled := False;
            NxButton24.Enabled := False;

            if (extendedVatQOCAmount1.AsFloat<>0)  and (extendedVatQOCCode1.Text = 'XRR') OR
               (extendedVatQOCAmount1.AsFloat <>0) and (extendedVatQOCCode1.Text = 'P.RENTAL') then
               begin
                OCAmount1 := extendedVatQOCAmount1.AsFloat;
                OCCode1   := extendedVatQOCCode1.Text;

               end;

            if (extendedVatQOCAmount2.Value<>null) and (extendedVatQOCCode2.Text = 'XRR') OR
               (extendedVatQOCAmount2.Value<>null) and (extendedVatQOCCode2.Text = 'P.RENTAL') then
               begin
                OCAmount2 := extendedVatQOCAmount2.AsFloat;
                OCCode2   := extendedVatQOCCode2.Text;
               end;

            if (extendedVatQOCAmount3.Value<>null) and (extendedVatQOCCode3.Text = 'XRR') OR
               (extendedVatQOCAmount3.Value<>null) and (extendedVatQOCCode3.Text = 'P.RENTAL') then
               begin
                OCAmount3 := extendedVatQOCAmount3.AsFloat;
                OCCode3   := extendedVatQOCCode3.Text;
               end;


            compVatExt.Close;
            compVatExt.ParamByName('code').Text      := codeNum;
            compVatExt.ParamByName('BillMonth').Text := bMonth;
            compVatExt.Open;

            if  (extendedVatQ.FieldByName('WRateCode').Text = 'H') and (extendedVatQ.FieldByName('RateCode').Text ='P') or
                (extendedVatQ.FieldByName('WRateCode').Text = 'L') and (extendedVatQ.FieldByName('RateCode').Text = 'P')then
                begin
                  NxButton21.Enabled    := True;

                  if compVatExtfinalVat.AsFloat<>0 then
                  begin
                    NxButton23.Enabled := true;
                    finalTax_Load.Caption := compVatExtfinalVat.Text;
                  end;
                end;


            if (extendedVatQ.FieldByName('WRateCode').Text = 'L')  or
               (extendedVatQ.FieldByName('WRateCode').Text = 'H') then
               begin
                 NxButton22.Enabled := True;

                 if compVatExtextendedTax.AsFloat<>0 then
                 begin
                   NxButton24.Enabled := true;
                   creditableTax_load.Caption := compVatExtextendedTax.Text;
                 end;
               end;


            //==================================================================
            //==================================================================
    end;

      If not PFBill then
      begin
        M := 0;
        Interest := 0;
        If SetForm.PostDate.Date > UnPBdate.AsDateTime then
        begin
          M := MonthsBetween(SetForm.PostDate.Date,UnPBdate.AsDateTime);
          If M > 0 then Interest := RoundOff((UnPBamount.AsCurrency * IntRate) * M);
        end;

        TotalInt := TotalInt + Interest;
        TotalInterest.Caption := Format(TotalInt,'#,###,###.##');

        ModMonth := M;
      end;

      StaticText18.Caption := UnPBDocument.Text;
      StaticText19.Caption := UnPBbillmonth.Text;
      StaticText20.Caption := Format(UnPBAmount.AsCurrency,'#,###,###.##');
      StaticText21.Caption := Format(Interest,'#,###,###.##');
      StaticText22.Caption := Format(Interest,'#,###,###.##');
      StaticText23.Caption := Format(UnPBAmount.AsCurrency+Interest,'#,###,###.##');

      PayAllocPanel.Left    := 306;
      PayAllocPanel.Top     := 186;
      AmountToBePaid.Text   := CurrToStr(UnPBAmount.AsCurrency);
      PayAllocPanel.BringToFront;
      PayAllocPanel.Visible := True;
      MainPanel.Enabled     := False;

      AmountToBePaid.SetFocus;
      FreeAndNil(Tagged);

   end;
end;

procedure TTellerPOSForm.BtnCloseClick(Sender: TObject);
begin
  If TotalPayment > 0 then
   begin
    MessageDlg('Cannot close .... Transaction pending. ', mtWarning, [mbOK], 0);
    abort;
   end;
  SetForm.StartTellerOR.Text := IntToStr(ORCount);
  Close;
end;

procedure TTellerPOSForm.CashKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
   begin
    Key := #0;

    if Cash.Text <> '' then
      begin
        CheckAmount.Text      := '0.00';
        CheckDate.Date        := Now;
        CheckNumber.Text      := '';
        Bank.Text             := '';
      end;


    If Cash.Text <> '' then
    begin

    Val(Cash.Text,ChkValue,Check);

    If Check > 0 then
     begin
      MessageDlg('Amount invalid. Try again.', mtError, [mbOK], 0);
      Cash.Text := '';
      Cash.SetFocus;
     end;

    StaticText13.Caption := Format(ChkValue-(TotalPayment+OR_finalVTotal+OR_withholdingTotal),'#,###.##');
    If ChkValue-(TotalPayment+OR_finalVTotal+OR_withholdingTotal) = 0 then StaticText13.Caption := '0.00';
    end
    else
    begin
     StaticText13.Caption := '';
     GroupBox2.Enabled := True;
     CheckAmount.SetFocus;
    end;

   end;
end;

procedure TTellerPOSForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If TotalPayment > 0 then
   begin
    MessageDlg('Cannot close .... Transaction pending. ', mtWarning, [mbOK], 0);
    abort;
   end;

  Action := caFree;
  TellerPOSForm := Nil;
  OP.Close;
  TOR.Close;
  MenuForm.Show;
end;

procedure TTellerPOSForm.BtnTellerRepClick(Sender: TObject);
Var
TArea                           : Array[1..30] of String[3];
TCollectionAmount               : Array[1..30] of Currency;
TCollectionTransformerRental    : Array[1..30] of Currency;
TCollectionLLP                  : Array[1..30] of Currency;
TCollectionUCNPCSD              : Array[1..30] of Currency;
TCollectionUCNPCSCC             : Array[1..30] of Currency;
TCollectionUCDUSCC              : Array[1..30] of Currency;
TCollectionUCME                 : Array[1..30] of Currency;
TCollectionUCETR                : Array[1..30] of Currency;
TCollectionUCEC                 : Array[1..30] of Currency;
TCollectionUCCSR                : Array[1..30] of Currency;
TCollectionSystemLossCharge     : Array[1..30] of Currency;
TCollectionKwhr                 : Array[1..30] of Currency;

TCollectionVAT                  : Array[1..30] of Currency;
TCollectionVATDist              : Array[1..30] of Currency;
TCollectionVATGenCO             : Array[1..30] of Currency;
TCollectionVATTransCO           : Array[1..30] of Currency;
TCollectionVATSystemLoss        : Array[1..30] of Currency;

TCollectionVATDiscAmt           : Array[1..30] of Double;
TCollectionVATDistDiscAmt       : Array[1..30] of Double;
TCollectionVATGenCODiscAmt      : Array[1..30] of Double;
TCollectionVATTransCODiscAmt    : Array[1..30] of Double;
TCollectionVATSystemLossDiscAmt : Array[1..30] of Double;

TAmount                         : Double ;
TTransformerRental              : Double ;
TLLP                            : Double ;
TUCNPCSD                        : Double ;
TUCNPCSCC                       : Double ;
TUCDUSCC                        : Double ;
TUCME                           : Double ;
TUCETR                          : Double ;
TUCEC                           : Double ;
TUCCSR                          : Double ;
TSystemLossCharge               : Double ;
TKwhr                           : Double ;

TVAT                            : Double ;
TVATDist                        : Double ;
TVATGenCO                       : Double ;
TVATTransCO                     : Double ;
TVATSystemLoss                  : Double ;

TVATDiscAmt                     : Double ;
TVATDistDiscAmt                 : Double ;
TVATGenCODiscAmt                : Double ;
TVATTransCODiscAmt              : Double ;
TVATSystemLossDiscAmt           : Double ;

XRent,LLP                       : Currency;
PageXRent,PageLLP               : Currency;
GrandXRent,GrandLLP             : Currency;
I                               : Integer;

finalVatTemp                    : Double;
taxwithheldTemp                 : Double;
Procedure TellerReportHeadingOR;
begin
 Write(Lst,#18,#27+'P');
 Writeln(Lst,'Page ',PageCount);
 Writeln(Lst,'Teller Collection Report with Summary Recap');
 Writeln(Lst,#27+'E'+'OFFICIAL ELECTRIC BILL RECEIPT', #27+'F');
 Writeln(Lst,'Teller Name       : ',SetForm.TellerName.Text,' (Area: '+SetForm.area_String+')');
 Writeln(Lst,'Collection Date   : ',DateToStr(SetForm.PostDate.Date));
 Writeln(Lst,'Time              : ',FormatDateTime('hh:mm:ss AM/PM',now)); //DateToStr(Now));
 Writeln(Lst,#27+'M');
 Writeln(Lst,'-----------------------------------------------------------------------------------------------');
 Writeln(Lst,'|  Teller OR   Account #        Consumer Name      OEBR Number   BMon    OEBR Amt    TAR Amount|');
 Writeln(Lst,'-----------------------------------------------------------------------------------------------');
end;

Procedure TellerReportHeadingValidated;
begin
 Write(Lst,#18,#27+'P');
 Writeln(Lst,'Page ',PageCount);
 Writeln(Lst,'Teller Collection Report with Summary Recap');
 Writeln(Lst,#27+'E','Payments by Collection Stub',#27+'F');
 Writeln(Lst,'Teller Name       : ',SetForm.TellerName.Text);
 Writeln(Lst,'Collection Date   : ',DateToStr(SetForm.PostDate.Date));
 Writeln(Lst,'Time              : ',DateToStr(Now));
 Writeln(Lst,#27+'M');
 Writeln(Lst,'----------------------------------------------------------------------------------------------');
 Writeln(Lst,'Account# OEBR Number             Name               Bill Amount   Interest         Amount BMON');
 Writeln(Lst,'----------------------------------------------------------------------------------------------');
end;

Var
BillPayment, BillInterest : Currency;
TBillPayment, TBillInterest : Currency;
AcctNo : String[10];
PrintBMonth : String[04];
label LPTnext;
label LPTcontinue;
begin
 if MessageDlg('Set Printer on ..... Proceed?', mtConfirmation, [mbOK,mbCancel], 0) = mrCancel then
 exit;

  if not(PrinterSetupDialog1.Execute) then Exit;

  PrinterName := '';

  AssignFile(Lst,'LPT1');
  Rewrite(Lst);

  If IOResult <> 0 then
    begin
      goto LPTnext;
    end else begin
      goto LPTcontinue;
    end;

 LPTnext:
  try
    Printer.GetPrinter(Device,Driver,Port,varHandle);
    I := 0;
    While Port[I] <> #0 do
      begin
        PrinterName := PrinterName + Port[I];
        Inc(I);
      end;
    AssignFile(Lst,PrinterName);
    Rewrite(Lst);
    //goto LPTcontinue;
  except
    ShowMessage('Printer not Ready');
    Exit;
  end;

 LPTcontinue:
 DBGrid1.Enabled := False;

 Recap.Close;
 Recap.ParamByName('TellerCode').Text     := SetForm.usersCollectorCode.Text;
 Recap.ParamByName('DatePaid').AsDate     := SetForm.PostDate.Date;
 Recap.Open;

 For I := 1 to 30 do
 begin
    TArea[I]                           := '';
    TCollectionAmount[I]               := 0;
    TCollectionTransformerRental[I]    := 0;
    TCollectionLLP[I]                  := 0;
    TCollectionUCNPCSD[I]              := 0;
    TCollectionUCNPCSCC[I]             := 0;
    TCollectionUCDUSCC[I]              := 0;
    TCollectionUCME[I]                 := 0;
    TCollectionUCETR[I]                := 0;
    TCollectionUCEC[I]                 := 0;
    TCollectionUCCSR[I]                := 0;
    TCollectionKwhr[I]                 := 0;
    TCollectionVAT[I]                  := 0;
    TCollectionVATDist[I]              := 0;
    TCollectionVATGenCO[I]             := 0;
    TCollectionVATTransCO[I]           := 0;
    TCollectionVATSystemLoss[I]        := 0;
    TCollectionVATDiscAmt[I]           := 0;
    TCollectionVATDistDiscAmt[I]       := 0;
    TCollectionVATGenCODiscAmt[I]      := 0;
    TCollectionVATTransCODiscAmt[I]    := 0;
    TCollectionVATSystemLossDiscAmt[I] := 0;
 end;

 TAmount               := 0;
 TTransformerRental    := 0;
 TLLP                  := 0;
 TUCNPCSD              := 0;
 TUCNPCSCC             := 0;
 TUCDUSCC              := 0;
 TUCME                 := 0;
 TUCETR                := 0;
 TUCEC                 := 0;
 TUCCSR                := 0;
 TKwhr                 := 0;
 TVAT                  := 0;
 TVATDist              := 0;
 TVATGenCO             := 0;
 TVATTransCO           := 0;
 TVATSystemLoss        := 0;
 TVATDiscAmt           := 0;
 TVATDistDiscAmt       := 0;
 TVATGenCODiscAmt      := 0;
 TVATTransCODiscAmt    := 0;
 TVATSystemLossDiscAmt := 0;

 TArea[01]  := '001';
 TArea[02]  := '002';
 TArea[03]  := '003';
 TArea[04]  := '004';
 TArea[05]  := '005';
 TArea[06]  := '006';
 TArea[07]  := '007';
 TArea[08]  := '008';
 TArea[09]  := '009';
 TArea[10]  := '010';
 TArea[11]  := '011';
 TArea[12]  := '012';
 TArea[13]  := '013';
 TArea[14]  := '014';
 TArea[15]  := '015';
 TArea[16]  := '016';
 TArea[17]  := '017';
 TArea[18]  := '018';
 TArea[19]  := '019';
 TArea[20]  := '020';
 TArea[21]  := '021';
 TArea[22]  := '022';
 TArea[23]  := '023';
 TArea[24]  := '024';
 TArea[25]  := '025';
 TArea[26]  := '026';
 TArea[27]  := '027';
 TArea[28]  := '028';
 TArea[29]  := '029';
 TArea[30]  := '030';

 PageXRent  := 0;
 PageLLP    := 0;
 GrandXRent := 0;
 GrandLLP   := 0;

 PageCount           := 1;
 LineCount           := 0;
 HeadSW              := True;
 GrandTotal          := 0;
 finalvatTotal       := 0;
 taxwithheldTotal    := 0;

 TotalORS            := 0;

 TimerPanel.Left     := 163;
 TimerPanel.Top      := 171;
 TimerPanel.Visible  := True;
 TimerPanel.Caption  := 'Please wait.....';

 Gauge1.Visible      := False;
 Gauge1.Progress     := 0;
 Gauge1.MinValue     := 0;
 Gauge1.MaxValue     := TOR.RecordCount;

 Application.ProcessMessages;

 Gauge1.Visible      := True;

 TOR.First;

 While not TOR.Eof do
  begin


  Gauge1.AddProgress(1);
  Application.ProcessMessages;

  IF TORORStatus.Text = '2' then
  begin
      //TAX Withheld============================
      //========================================
      TReportTaxWithheldQ.Close;
      TReportTaxWithheldQ.ParamByName('ornumber').Text := TORORNumber.Text;
      TReportTaxWithheldQ.Open;

      finalVatTemp    := 0;
      taxwithheldTemp := 0;
      if not TReportTaxWithheldQ.IsEmpty then
      begin
         finalvatTotal    := finalvatTotal + TReportTaxWithheldQfinalVat.AsFloat;
         taxwithheldTotal := taxwithheldTotal + TReportTaxWithheldQtaxWithheld.AsFloat;
         finalVatTemp     := TReportTaxWithheldQfinalVat.AsFloat;
         taxwithheldTemp  := TReportTaxWithheldQtaxWithheld.AsFloat;
      end;

      //========================================
      //========================================

       If HeadSW then
        begin
         HeadSW := False;
         TellerReportHeadingOR;
        end;

        GrandTotal := GrandTotal + TORAmount.AsCurrency;
        Inc(TotalORS);

        TRDetail.Close;
        TRDetail.ParamByName('TellerORNumber').Text := TORORNumber.Text;
        TRDetail.Open;

        TRDetail.First;

        DetailSW := True;

        If TRDetail.IsEmpty then
          begin
            Writeln(Lst,' ',JustStr(TORORNumber.Text,' ',12,0),
             ' ',JustStr(' ',' ',10,2),
             ' ',JustStr(TORName.Text,' ',23,0),
             ' ',JustStr(' ',' ',12,2),
             ' ',JustStr(' ',' ',4,0),
             ' ',Format (0.00,'###,###.##'),
             Format (TORAmount.AsCurrency,'#,###,###.##'),'|');
          end;

        isoQuery.Close;
        isoQuery.ParamByName('reporttype').Text := 'TellerReport';
        isoQuery.Open;

        While not TRDetail.Eof do
         begin

            LLP   := 0;
            XRent := 0;

            If TRDetailSequence.Text = 'R' then
            LLP   := TRDetailTransformerRental.AsCurrency else
            XRent := TRDetailTransformerRental.AsCurrency;


            For I := 1 to 30 do
            begin
            If ((TArea[I] = TRDetailArea.Text)) or
               ((TArea[I] = '0'+TRDetailArea.Text)) then
                begin
                  TCollectionAmount[I]               := TCollectionAmount[I] +               TRDetailTotal.AsCurrency;

                  If CollectSequence.Text <> 'R' then
                  TCollectionTransformerRental[I]    := TCollectionTransformerRental[I] +    TRDetailTransformerRental.AsCurrency else
                  TCollectionLLP[I]                  := TCollectionLLP[I] +                  TRDetailTransformerRental.AsCurrency;

                  TCollectionUCNPCSD[I]              := TCollectionUCNPCSD[I] +              TRDetailPKVRAmount.AsCurrency;
                  TCollectionUCNPCSCC[I]             := TCollectionUCNPCSCC[I] +             TRDetailUCNPCSCC.AsCurrency;
                  TCollectionUCDUSCC[I]              := TCollectionUCDUSCC[I] +              TRDetailUCDUSCC.AsCurrency;
                  TCollectionUCME[I]                 := TCollectionUCME[I] +                 TRDetailUCME.AsCurrency;
                  TCollectionUCETR[I]                := TCollectionUCETR[I] +                TRDetailUCETR.AsCurrency;
                  TCollectionUCEC[I]                 := TCollectionUCEC[I] +                 TRDetailUCEC.AsCurrency;
                  TCollectionSystemLossCharge[I]     := TCollectionSystemLossCharge[I] +     TRDetailSystemLossCharge.AsCurrency;
                  TCollectionKwhr[I]                 := TCollectionKwhr[I] +                 TRDetailKilowattHour.AsCurrency;

                  TCollectionVAT[I]                  := TCollectionVAT[I] +                  TRDetailVAT.AsCurrency;
                  TCollectionVATDist[I]              := TCollectionVATDist[I] +              TRDetailVATDist.AsCurrency;
                  TCollectionVATGenCO[I]             := TCollectionVATGenCO[I] +             TRDetailVATGenCO.AsCurrency;
                  TCollectionVATTransCO[I]           := TCollectionVATTransCO[I] +           TRDetailVATTransCO.AsCurrency;
                  TCollectionVATSystemLoss[I]        := TCollectionVATSystemLoss[I] +        TRDetailVATSystemLossGenCO.AsCurrency;

                  TCollectionVATDiscAmt[I]           := TCollectionVATDiscAmt[I] +           TRDetailVATDiscAmt.AsFloat;
                  TCollectionVATDistDiscAmt[I]       := TCollectionVATDistDiscAmt[I] +       TRDetailVATDistDiscAmt.AsFloat;
                  TCollectionVATGenCODiscAmt[I]      := TCollectionVATGenCODiscAmt[I] +      TRDetailVATGenCoDiscAmt.AsFloat;
                  TCollectionVATTransCODiscAmt[I]    := TCollectionVATTransCODiscAmt[I] +    TRDetailVATTransCoDiscAmt.AsFloat;
                  TCollectionVATSystemLossDiscAmt[I] := TCollectionVATSystemLossDiscAmt[I] + TRDetailVATSystemLossDiscAmt.AsFloat;

                  TAmount                          := TAmount + TRDetailTotal.AsCurrency;

                  If TRDetailSequence.Text <> 'R' then
                  TTransformerRental    := TTransformerRental + TRDetailTransformerRental.AsCurrency else
                  TLLP                  := TLLP + TRDetailTransformerRental.AsCurrency;

                  TUCNPCSD              := TUCNPCSD + TRDetailPKVRAmount.AsCurrency;
                  TUCNPCSCC             := TUCNPCSCC + TRDetailUCNPCSCC.AsCurrency;
                  TUCDUSCC              := TUCDUSCC + TRDetailUCDUSCC.AsCurrency;
                  TUCME                 := TUCME + TRDetailUCME.AsCurrency;
                  TUCETR                := TUCETR + TRDetailUCETR.AsCurrency;
                  TUCEC                 := TUCEC + TRDetailUCEC.AsCurrency;
                  TSystemLossCharge     := TSystemLossCharge + TRDetailSystemLossCharge.AsCurrency;
                  TKwhr                 := TKwhr + TRDetailKilowattHour.AsCurrency;
                  TVAT                  := TVAT + TRDetailVAT.AsCurrency;
                  TVATDist              := TVATDist + TRDetailVATDist.AsCurrency;
                  TVATGenCO             := TVATGenCO + TRDetailVATGenCO.AsCurrency;
                  TVATTransCO           := TVATTransCO + TRDetailVATTransCO.AsCurrency;
                  TVATSystemLoss        := TVATSystemLoss + TRDetailVATSystemLossGenCO.AsCurrency;
                  TVATDiscAmt           := TVATDiscAmt + TRDetailVATDiscAmt.AsFloat;
                  TVATDistDiscAmt       := TVATDistDiscAmt + TRDetailVATDistDiscAmt.AsFloat;
                  TVATGenCODiscAmt      := TVATGenCODiscAmt + TRDetailVATGenCODiscAmt.AsFloat;
                  TVATTransCODiscAmt    := TVATTransCODiscAmt + TRDetailVATTransCODiscAmt.AsFloat;
                  TVATSystemLossDiscAmt := TVATSystemLossDiscAmt + TRDetailVATSystemLossDiscAmt.AsFloat;

                end;
            end;

            PageXRent                    := PageXRent + XRent;
            PageLLP                      := PageLLP + LLP;
            GrandXRent                   := GrandXRent + XRent;
            GrandLLP                     := GrandLLP + LLP;

         If DetailSW then
          begin

              Writeln(Lst,' ',JustStr(TORORNumber.Text,' ',12,0),
                          ' ',JustStr(TRDetailAccountNumber.Text,' ',11,0),
                          ' ',JustStr(TORName.Text,' ',23,0),
                          ' ',JustStr(TRDetailReceiptNumber.Text,' ',13,0),
                          ' ',JustStr(TRDetailBillMonth.Text,' ',4,0),
                          ' ',Format (TRDetailTotal.AsCurrency,'###,###.##'),
                          Format (TORAmount.AsCurrency+finalVatTemp+taxwithheldTemp,'#,###,###.##'),'|');

              //Withholding Tax=====================================
              //====================================================
              if TRDetailfinalv.AsFloat <> 0 then
              begin
                Writeln(Lst,' ',JustStr(' ',' ',12,0),
                          ' ',JustStr(TRDetailtinFinal.Text,' ',11,0),
                          ' ',JustStr(TRDetailPayorsNameFinal.Text,' ',23,0),
                          ' ',JustStr('FINAL VAT',' ',13,0),
                          ' ',JustStr(TRDetailBillMonth.Text,' ',4,0),
                          ' ',Format (TRDetailfinalv.AsCurrency,'###,###.##'),
                          Format (0.00,'#,###,###.##'),'|');
              end;

              if TRDetailwithholdingT.AsFloat <> 0 then
              begin
                Writeln(Lst,' ',JustStr(' ',' ',12,0),
                          ' ',JustStr(TRDetailtinCreditable.Text,' ',11,0),
                          ' ',JustStr(TRDetailPayorsNameCreditable.Text,' ',23,0),
                          ' ',JustStr('W/HOLDING TAX',' ',13,0),
                          ' ',JustStr(TRDetailBillMonth.Text,' ',4,0),
                          ' ',Format (TRDetailwithholdingT.AsCurrency,'###,###.##'),
                          Format (0.00,'#,###,###.##'),'|');
              end;
             //=================================================
             //=================================================
            DetailSW := False;
          end else
          begin
              Writeln(Lst,' ',JustStr(' ',' ',12,0),
                          ' ',JustStr(' ',' ',11,0),
                          ' ',JustStr(' ',' ',23,0),
                          ' ',JustStr(TRDetailReceiptNumber.Text,' ',13,0),
                          ' ',JustStr(TRDetailBillMonth.Text,' ',4,0),
                          ' ',Format (TRDetailTotal.AsCurrency+finalVatTemp+taxwithheldTemp,'###,###.##'),
                          Format (0.00,'#,###,###.##'),'|');

              if TRDetailfinalv.AsFloat <> 0 then
              begin
                Writeln(Lst,' ',JustStr(' ',' ',12,0),
                          ' ',JustStr(TRDetailtinFinal.Text,' ',11,0),
                          ' ',JustStr(TRDetailPayorsNameFinal.Text,' ',23,0),
                          ' ',JustStr('FINAL VAT',' ',13,0),
                          ' ',JustStr(TRDetailBillMonth.Text,' ',4,0),
                          ' ',Format (TRDetailfinalv.AsCurrency,'###,###.##'),
                          Format (0.00,'#,###,###.##'),'|');
              end;

              if TRDetailwithholdingT.AsFloat <> 0 then
              begin
                Writeln(Lst,' ',JustStr(' ',' ',12,0),
                          ' ',JustStr(TRDetailtinCreditable.Text,' ',11,0),
                          ' ',JustStr(TRDetailPayorsNameCreditable.Text,' ',23,0),
                          ' ',JustStr('W/HOLDING TAX',' ',13,0),
                          ' ',JustStr(TRDetailBillMonth.Text,' ',4,0),
                          ' ',Format (TRDetailwithholdingT.AsCurrency,'###,###.##'),
                          Format (0.00,'#,###,###.##'),'|');
              end;
          end;

          Inc(LineCount);
          If LineCount = 50 then
           begin
            Inc(PageCount);
            LineCount := 0;
            Writeln(Lst,'-----------------------------------------------------------------------------------------------');
            Writeln(Lst,' ');
            Writeln(Lst,' '+isoQueryisoNumber.Text+'                                   '+isoQueryrevision.Text+
                                                   '                                   '+isoQuerydateF.Text);

            Write(Lst,#12);
            TellerReportHeadingOR;
           end;
         TRDetail.Next;
         end;
   end;
   TOR.Next;
  end;

 If GrandTotal > 0 then
 begin
   Writeln(Lst,'-------------------------------------------------------------------------------------------------');
   Writeln(Lst,'|                                                                   TOTAL  ',TotalORS:5,' |',
                Format (GrandTotal+finalvatTotal+taxwithheldTotal,'##,###,###.##'),'|');
   Writeln(Lst,'-------------------------------------------------------------------------------------------------');
 end;

 //Withholding Tax=============================
 //============================================
   Writeln(Lst,'--------------------------------------');
   Writeln(Lst,'| TOTAL COLLECTIONS  |'+ Format (GrandTotal,'##,###,###.##'),'|');
   Writeln(Lst,'| FINAL VAT          |'+ Format (finalvatTotal,'##,###,###.##'),'|');
   Writeln(Lst,'| WITHHOLDING TAX    |'+ Format (taxwithheldTotal,'##,###,###.##'),'|');
   Writeln(Lst,'--------------------------------------');
   Writeln(Lst,'| NET COLLECTIONS    |'+ Format (GrandTotal+finalvatTotal+taxwithheldTotal,'##,###,###.##'),'|');
   Writeln(Lst,'--------------------------------------');


 //============================================
 //============================================

 If LineCount > 0 then Write(Lst,#12);

Writeln(lst);
Writeln(lst);
writeln(lst,'Report Name     : COLLECTION REPORT - '+SetForm.TellerName.Text);
writeln(lst,'COLLECTION DATE : ',DateToStr(SetForm.PostDate.Date));
Writeln(Lst,'Charges Breakdown',#15);
Writeln(lst,'--------------------------------------------------------------------------------------------------------------------------');
Writeln(lst,'|AR.|      Total |        UCME|        UCEC|   TR Rental|        LLP |       EVAT |   Sys Loss |        Net | Kilowatt Hr|');
Writeln(lst,'|   |            |    PKV Reco|       UCSCC|            |            |            |            |            |            |');
Writeln(lst,'--------------------------------------------------------------------------------------------------------------------------');
For I := 1 to 30 do
If TCollectionAmount[I] > 0 then
begin
Writeln(lst,'|',TArea[I],' ',
            Format(TCollectionAmount[I],'###,###.##'),'|',
            Format(TCollectionUCME[I] ,'###,###.##'),'|',
            Format(TCollectionUCEC[I] ,'###,###.##'),'|',
            Format(TCollectionTransformerRental[I] ,'###,###.##'),'|',
            Format(TCollectionLLP[I] ,'###,###.##'),'|',
            Format(TCollectionVATGenCO[I] +
                   TCollectionVATTransCO[I] +
                   TCollectionVATSystemLoss[I] +
                   TCollectionVATDist[I]+
                   TCollectionVATGenCODiscAmt[I] +
                   TCollectionVATTransCODiscAmt[I] +
                   TCollectionVATSystemLossDiscAmt[I] +
                   TCollectionVATDistDiscAmt[I],'###,###.##'),'|',
            Format(TCollectionSystemLossCharge[I],'###,###.##'),'|',
            Format(TCollectionAmount[I]-
                  (TCollectionUCNPCSD[I] +
                   TCollectionUCNPCSCC[I] +
                   TCollectionUCDUSCC[I] +
                   TCollectionUCME[I] +
                   TCollectionUCETR[I] +
                   TCollectionUCEC[I] +
                   TCollectionTransformerRental[I] +
                   TCollectionLLP[I]+
                   TCollectionVATGenCO[I] +
                   TCollectionVATTransCO[I] +
                   TCollectionVATSystemLoss[I] +
                   TCollectionVATDist[I]+
                   TCollectionVATGenCODiscAmt[I] +
                   TCollectionVATTransCODiscAmt[I] +
                   TCollectionVATSystemLossDiscAmt[I] +
                   TCollectionVATDistDiscAmt[I]+
                   TCollectionSystemLossCharge[I]),'###,###.##'),'|',
            Format(TCollectionKWHR[I] ,'###,###.##'),'|');
Writeln(lst,'|   |            |',Format(TCollectionUCNPCSD[I],'###,###.##'),'|',
                                 Format(TCollectionUCNPCSCC[I],'###,###.##'),'|            |            |            |            |            |            |');
Inc(LineCount);
end;

Writeln(lst,'--------------------------------------------------------------------------------------------------------------------------');
Writeln(lst,'Total',
            Format(TAmount,'###,###.##'),'|',
            Format(TUCME ,'###,###.##'),'|',
            Format(TUCEC ,'###,###.##'),'|',
            Format(TTransformerRental ,'###,###.##'),'|',
            Format(TLLP ,'###,###.##'),'|',
            Format(TVATGenCO +
                   TVATTransCO +
                   TVATSystemLoss +
                   TVATDist+
                   TVATGenCODiscAmt +
                   TVATTransCODiscAmt +
                   TVATSystemLossDiscAmt +
                   TVATDistDiscAmt,'###,###.##'),'|',
            Format(TSystemLossCharge ,'###,###.##'),'|',
            Format(TAmount-
                  (TUCNPCSD +
                   TUCNPCSCC +
                   TUCDUSCC +
                   TUCME +
                   TUCETR +
                   TUCEC +
                   TUCCSR +
                   TTransformerRental +
                   TLLP+
                   TVATGenCO +
                   TVATTransCO +
                   TVATSystemLoss +
                   TVATDist+
                   TVATGenCODiscAmt +
                   TVATTransCODiscAmt +
                   TVATSystemLossDiscAmt +
                   TVATDistDiscAmt+
                   TSystemLossCharge),'###,###.##'),'|',
            Format(TKWHR ,'###,###.##'),'|');
Writeln(lst,'|   |            |',Format(TUCNPCSD,'###,###.##'),'|',Format(TUCNPCSCC,'###,###.##'),
            '|            |            |            |            |            |            |');
Writeln(lst,'--------------------------------------------------------------------------------------------------------------------------');
Inc(LineCount,10);
If LineCount > 50 then
  begin
   Writeln(lst,'----------------------------------------------------------------------');
   LineCount := 0;
   Write(Lst,#12);
  end;

Writeln(Lst);
Writeln(Lst,#27+'P',#18);
Writeln(Lst,'VAT Gross Breakdown');
Writeln(lst,'---------------------------------------------------------------------');
Writeln(lst,'|AR.|        VAT |        VAT |        VAT |        VAT |        VAT |');
Writeln(lst,'|   |      GenCO |    TransCO |System Loss |       Dist |      Total |');
Writeln(lst,'----------------------------------------------------------------------');

For I := 1 to 30 do
If TCollectionAmount[I] > 0 then
begin
Writeln(lst,'|',TArea[I],' ',
            Format(TCollectionVATGenco[I],'###,###.##'),'|',
            Format(TCollectionVATTransCO[I] ,'###,###.##'),'|',
            Format(TCollectionVATSystemLoss[I] ,'###,###.##'),'|',
            Format(TCollectionVATDist[I] ,'###,###.##'),'|',

            Format(TCollectionVATGenCO[I] +
                   TCollectionVATTransCO[I] +
                   TCollectionVATSystemLoss[I] +
                   TCollectionVATDist[I],'###,###.##'),'|');
Inc(LineCount);
If LineCount > 50 then
  begin
   Writeln(lst,'----------------------------------------------------------------------');
   LineCount := 0;
   Write(Lst,#12);
  end;
end;

Writeln(lst,'----------------------------------------------------------------------');
Writeln(lst,'Total',
            Format(TVATGenCO,'###,###.##'),'|',
            Format(TVATTransCO,'###,###.##'),'|',
            Format(TVATSystemLoss ,'###,###.##'),'|',
            Format(TVATDist ,'###,###.##'),'|',
            Format(TVATGenCO +
                   TVATTransCO +
                   TVATSystemLoss +
                   TVATDist,'###,###.##'),'|');
Writeln(lst,'----------------------------------------------------------------------');

If (TVATGenCODiscAmt +
    TVATTransCODiscAmt +
    TVATSystemLossDiscAmt +
    TVATDistDiscAmt) <> 0 then
begin

      Inc(LineCount,4);
      If LineCount > 50 then
        begin
         Writeln(lst,'----------------------------------------------------------------------');
         LineCount := 0;
         Write(Lst,#12);
        end;

      Writeln(Lst,'VAT Discount Breakdown');
      For I := 1 to 30 do
      If TCollectionAmount[I] > 0 then
      begin
      Writeln(lst,'|',TArea[I],' ',
                  Format(TCollectionVATGencoDiscAmt[I],'###,###.##'),'|',
                  Format(TCollectionVATTransCODiscAmt[I] ,'###,###.##'),'|',
                  Format(TCollectionVATSystemLossDiscAmt[I] ,'###,###.##'),'|',
                  Format(TCollectionVATDistDiscAmt[I] ,'###,###.##'),'|',
                  Format(TCollectionVATGenCODiscAmt[I] +
                         TCollectionVATTransCODiscAmt[I] +
                         TCollectionVATSystemLossDiscAmt[I] +
                         TCollectionVATDistDiscAmt[I],'###,###.##'),'|');
      Inc(LineCount);
      If LineCount > 50 then
        begin
         Writeln(lst,'----------------------------------------------------------------------');
         LineCount := 0;
         Write(Lst,#12);
        end;
      end;

      Writeln(lst,'----------------------------------------------------------------------');
      Writeln(lst,'Total',
                  Format(TVATGenCODiscAmt,'###,###.##'),'|',
                  Format(TVATTransCODiscAmt,'###,###.##'),'|',
                  Format(TVATSystemLossDiscAmt,'###,###.##'),'|',
                  Format(TVATDistDiscAmt,'###,###.##'),'|',
                  Format(TVATGenCODiscAmt +
                         TVATTransCODiscAmt +
                         TVATSystemLossDiscAmt +
                         TVATDistDiscAmt,'###,###.##'),'|');
      Writeln(lst,'----------------------------------------------------------------------');

      Inc(LineCount,4);
      If LineCount > 50 then
        begin
         Writeln(lst,'----------------------------------------------------------------------');
         LineCount := 0;
         Write(Lst,#12);
        end;
      Writeln(Lst,'VAT Net Breakdown');
      For I := 1 to 30 do
      If TCollectionAmount[I] > 0 then
      begin
      Writeln(lst,'|',TArea[I],' ',
                  Format(TCollectionVATGenco[I]+TCollectionVATGencoDiscAmt[I],'###,###.##'),'|',
                  Format(TCollectionVATTransCO[I]+TCollectionVATTransCODiscAmt[I] ,'###,###.##'),'|',
                  Format(TCollectionVATSystemLoss[I]+TCollectionVATSystemLossDiscAmt[I] ,'###,###.##'),'|',
                  Format(TCollectionVATDist[I]+TCollectionVATDistDiscAmt[I] ,'###,###.##'),'|',
                  Format((TCollectionVATGenCO[I]+TCollectionVATGenCODiscAmt[I]) +
                         (TCollectionVATTransCO[I]+TCollectionVATTransCODiscAmt[I]) +
                         (TCollectionVATSystemLoss[I]+TCollectionVATSystemLossDiscAmt[I]) +
                         (TCollectionVATDist[I]+TCollectionVATDistDiscAmt[I]),'###,###.##'),'|');
      Inc(LineCount);
      If LineCount > 50 then
        begin
         Writeln(lst,'----------------------------------------------------------------------');
         LineCount := 0;
         Write(Lst,#12);
        end;
      end;

      Writeln(lst,'----------------------------------------------------------------------');
      Writeln(lst,'Total',
                  Format(TVATGenCO + TVATGenCODiscAmt,'###,###.##'),'|',
                  Format(TVATTransCO + TVATTransCODiscAmt,'###,###.##'),'|',
                  Format(TVATSystemLoss + TVATSystemLossDiscAmt,'###,###.##'),'|',
                  Format(TVATDist + TVATDistDiscAmt,'###,###.##'),'|',
                  Format((TVATGenCO + TVATGenCODiscAmt)+
                         (TVATTransCO + TVATTransCODiscAmt) +
                         (TVATSystemLoss + TVATSystemLossDiscAmt) +
                         (TVATDist + TVATDistDiscAmt),'###,###.##'),'|');
      Writeln(lst,'----------------------------------------------------------------------');
end;

Write(lst,#12);

DBGrid1.Enabled := True;
CloseFile(Lst);
MessageDlg('Printing done.', mtInformation, [mbOK], 0);
TimerPanel.Visible := False;
end;

procedure TTellerPOSForm.CancelTellerOR1Click(Sender: TObject);
begin
  MessageDlg('', mtWarning, [mbOK], 0);
end;

procedure TTellerPOSForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
I               : Integer   ;
SureTOR         : String    ;
StillProcessing : Boolean   ;
CheckRequest    : TMyQuery  ;
UpdateOCLedger  : TMyQuery  ;
BHMCC           : TMyQuery  ;
ORNospotBTmp    : String    ;
countPaidNC     : Integer   ;
totalAmountNC   : Double    ;
codeNC          : Integer   ;
idocNC          : Integer   ;

begin
If not key in [vk_f1,
               vk_f4,
               vk_f5] then exit;

UpdateOCLedger := TMyQuery.Create(Self);
UpdateOCLedger.Connection := SetForm.MyConnection1;

Case key of
vk_f1 : begin
         If ORPrinted then Abort;
         If PaymentPanel.Visible then exit;
         If TotalPayment = 0 then Abort;
         StaticText15.Caption  := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
         MainPanel.Enabled     := False;
         StaticText14.Caption  := 'F4-CANCEL | F5-PRINT TELLER OR';
         PaymentPanel.Left     := 106;
         PaymentPanel.Top      := 133;
         PaymentPanel.BringToFront;
         PaymentPanel.Visible  := True;
         Cash.Text             := '0.00';
         StaticText13.Caption  := '';
         ORPrinted             := False;
         Cash.SetFocus;
        end;

vk_f2 : begin
        If TotalPayment > 0 then Abort;
          If Setform.usersUserType.Text = '5' then
            begin
              CashierCancelPanel.Left      := 336;
              CashierCancelPanel.Top       := 263;
              CashierCancelPanel.BringToFront;
              CashierCancelPanel.Visible   := True;
              CancelCashierOR.Text         := TORORNumber.Text;
              CancelCashierORPassword.Text := '';
              CancelCashierORPassword.SetFocus;
            end;

          If ((Setform.usersUserType.Text = '2') OR (Setform.usersUserType.Text = '7')) then
            begin
              CheckRequest := TMyQuery.Create(Self);
              CheckRequest.Connection := SetForm.MyConnection1;
              CheckRequest.SQL.Clear;
              CheckRequest.SQL.Add('select * from reqcancel where ornumber = '+QuotedStr(TORORNumber.Text));
              CheckRequest.Open;

              if not CheckRequest.IsEmpty then
                begin
                  MessageDlg('You have already sent a request for cancellation for that receipt. Please check with your cashier or teller supervisor....', mtError, [mbOK], 0);
                  exit;
                end;

               RequestCancelPanel.Left    := 333;
               RequestCancelPanel.Top     := 297;
               RequestCancelPanel.BringToFront;
               RequestCancelPanel.Visible := True;
               ComboBox1.SetFocus;
               Exit;

            end;

          If Setform.usersUserType.Text = '8' then
            begin
              CancelPanel.Left    := 336;
              CancelPanel.Top     := 263;
              CancelPanel.BringToFront;
              CancelPanel.Visible := True;
              CancelTellerOR.Text := TORORNumber.Text;
              CancelTry           := 0;
              Password.Text       := '';
              Password.SetFocus;
            end;
        end;

vk_f4 : begin
         If ORPrinted then Abort;
         If UnPB.Active then UnPB.Close;
         If groupselect.Active then groupselect.Close;
         Memo1.Lines.Clear;
         Memo2.Lines.Clear;
         Memo3.Lines.Clear;
         FillChar(PRecord,SizeOf(PRecord),#0);

         Area.Text                     := '';
         Book.Text                     := '';
         Sequence.Text                 := '';
         Name.Text                     := '';
         Address.Text                  := '';
         StaticText10.Caption          := '';
         StaticText10.Caption          := '';
         TotalInterest.Caption         := '';
         book_ISD                      := '';
         PArray                        := 0;
         ConsumerDataBox.Enabled       := False;
         OutstandingAccountBox.Enabled := False;
         OtherPaymentsBox.Enabled      := False;
         PaymentPanel.Visible          := False;
         SearchAccount.Text            := '';
         MainPanel.Enabled             := True;
         TotalPayment                  := 0;
         OR_finalVTotal                := 0;
         OR_withholdingTotal           := 0;
         TotalInt                      := 0;

         NewAppIdComplaints            := 0;
         ReconID                       := 0;
         ReconPayment                  := false;
         Remittance                    := False;
         PFBill                        := False;

         //==============Delete where Tax WithHeld not posted=======
         //=========================================================
         TmpQuery.Close;
         TmpQuery.SQL.Clear;
         TmpQuery.SQL.Add('Delete from collectiontaxwheld where accountcode=:code and length(tellerOrNumber)<7');
         TmpQuery.ParamByName('Code').Text   := codeNUm;
         TmpQuery.Execute;
         codeNUm := '';
         bMonth  := '';
         //=========================================================
         //=========================================================

         FillChar(ArrearBillMonth,SizeOf(ArrearBillMonth),#0);
         FillChar(ArrearOebrNumber,SizeOf(ArrearOebrNumber),#0);
         FillChar(ArrearAmount,SizeOf(ArrearAmount),#0);

         ConsumerDataBox.OnExit        := ConsumerDataBoxExit;

          If (SetForm.usersUserType.Text = '5') then
          begin
           ConsumerDataBox.Enabled       := True;
           btnGetBatch.Enabled           := True;
           Name.SetFocus;
           PArray                        := 0;
           FillChar(PRecord,SizeOf(PRecord),#0);
           TotalPayment                  := 0;
           OR_finalVTotal                := 0;
           OR_withholdingTotal           := 0;
          end
          else
          SearchAccount.SetFocus;
          exit;
        end;

vk_f5 : begin
         If StillProcessing = true then exit;
         If ORPrinted then Abort;
         If PaymentPanel.Visible = false then exit;
         If TotalPayment <= 0 then exit;
         if PayAllocPanel.Visible = true then exit;

         if MessageDlg('PRINT RECEIPT...  Continue?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then exit;

         //=====================================================
         // If SetForm.FormOpt.ItemIndex = 0 then PrintTellerAR;
         // If SetForm.FormOpt.ItemIndex = 1 then PrintOEBROld;
         // If SetForm.FormOpt.ItemIndex = 2 then PrintOEBRNew;
         //=====================================================
         If SetForm.FormOpt.ItemIndex = 3 then
         begin
             isoQuery.Close;
             isoQuery.ParamByName('reporttype').Text := 'CashierOR';
             isoQuery.Open;

             PrintCashierOR;
         end;


         ORPrinted := True;
         PFBill    := False;

         If not ORPrinted then exit;
         If PaymentPanel.Visible = false then exit;
         If TotalPayment <= 0 then exit;

         StillProcessing := True;
         deleteprintedor.ParamByName('ORNUMBER').Text := JustStr(IntToStr(ORCount),'0',9,1)+SetForm.usersCollectorCode.Text;
         deleteprintedor.Execute;

         try
           SureTOR                                     := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
           SureTOR_fcTax                               := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
           InsertTOR.Close;

           if((SetForm.usersncecco.AsBoolean)AND(SetForm.usersUserType.Text = '8')) then
           begin
              SureTOR := 'NCECCO'+JustStr(IntToStr(nceccoCnt),'0',6,1)+SetForm.usersCollectorCode.Text;
              InsertTOR.ParambyName('ORNUMBER').text   := SureTOR;
              SureTOR_fcTax := SureTOR;
           end
           else
           begin
              InsertTOR.ParambyName('ORNUMBER').text   := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
           end;

           InsertTOR.ParambyName('ORDATE').AsDate      := SetForm.PostDate.Date;

           If Master.Active then
           InsertTOR.ParambyName('ACCOUNTNUMBER').text := MasterAccountNumber.Text else
           InsertTOR.ParambyName('ACCOUNTNUMBER').text := '';

           InsertTOR.ParambyName('NAME').text          := Name.Text;
           InsertTOR.ParambyName('ADDRESS').text       := Address.Text;

           if FilterNoneConsumerMode = True then
           begin
              InsertTOR.ParambyName('NAME').text       := Name.Text;
           end;

           InsertTOR.ParambyName('AMOUNT').AsCurrency  := Roundoff(TotalPayment);
           InsertTOR.ParambyName('TELLERCODE').text    := SetForm.usersCollectorCode.Text;
           InsertTOR.ParambyName('TELLERNAME').text    := SetForm.usersName.Text;

           InsertTOR.ParambyName('CHECKNUMBER').text   := CheckNumber.Text;
           InsertTOR.ParambyName('CHECKDATE').AsDate   := CheckDate.Date;
           InsertTOR.ParambyName('BANK').text          := Bank.Text;
           InsertTOR.ParamByName('AREACOLLECTOR').Text := BillingData.userBaseQarea.Text;

           InsertTOR.ParambyName('CASHTENDERED').AsCurrency  := 0.00;

           try
           InsertTOR.ParambyName('CHECKAMOUNT').AsCurrency := StrToCurr(CheckAmount.Text);
           except
           InsertTOR.ParambyName('CHECKAMOUNT').AsCurrency := 0.00;
           end;

           If Cash.Text <> '' then
           try
           InsertTOR.ParambyName('CASHTENDERED').AsCurrency  := StrToCurr(Cash.Text);
           except
           InsertTOR.ParambyName('CASHTENDERED').AsCurrency  := 0.00;
           end;

           InsertTOR.ParambyName('ORSTATUS').text      := '2';
           InsertTOR.ParambyName('BATCH').text         := SetForm.Batch.Text;

           IF FilterNoneConsumerMode = True then
           InsertTOR.ParambyName('AccntNumber').Text := nc_pilferageQAccountNumber.Text else
           InsertTOR.ParambyName('AccntNumber').Value := Null;

           InsertTOR.Execute;

         except
           on E: Exception do
           begin
            MessageDlg('Error'+E.Message, mtWarning, [mbOK], 0);
            exit;
           end;
         end;

         TOR.Refresh;
         TOR.Last;

         if((SetForm.usersncecco.AsBoolean)AND(SetForm.usersUserType.Text = '8')) then
           begin
             ORNospotBTmp      := SureTOR;
             Inc(nceccoCnt);
           end
           else
           begin
             ORNospotBTmp      := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;

             Inc(ORCount);
             TellerOR.Caption  := JustStr(IntToStr(ORCount),'0',9,1);

           end;

         //Update ORNumber user base=============
         //======================================
         usersORupdateBase.ParamByName('ORCount').AsInteger  := ORCount;
         usersORupdateBase.ParamByName('nceccocnt').AsInteger:= nceccoCnt;
         usersORupdateBase.ParamByName('collectorcode').Text := Copy(BillingData.userBaseQCollectorCode.Text,1,3);
         usersORupdateBase.Execute;
         //======================================
         //======================================

         UpdateORCount.ParamByName('collectorcode').Text := Copy(SetForm.usersCollectorCode.Text,1,3);
         UpdateORCount.ParamByName('orcount').AsInteger  := ORCount;
         UpdateORCount.Execute;

         UNPBP.DisableControls;

         Try
           With PRecord do
           For I := 1 to PArray do
            begin

             If PAmount[I] <> 0 then
             If (POEBRNumber[I] <> '') and not (OCPPayment = True) then
              begin

               If PSpotBill[I] = '2' then
                 {=============================================================}
                 { begin post normal bill }
                 begin

                     UnPBP.FilterSQL := 'Document = '+QuotedStr(POEBRNumber[I]) +
                                        ' and Code = '+QuotedStr(MasterCode.Text);
                     UnPBP.Open;

                     BHMCC            := TMyQuery.Create(self);
                     BHMCC.Connection := MyConnection1;
                     BHMCC.SQL.Clear;
                     BHMCC.SQL.Add('select mcc from zaneco.billhistory where code = :code and billmonth = :billmonth');
                     BHMCC.ParamByName('code').Text      := UnPBPCode.Text;
                     BHMCC.ParamByName('billmonth').Text := UnPBPBillMonth.Text;
                     BHMCC.Open;

                     if BHMCC.IsEmpty then
                       begin
                         BHMCC.Close;
                         BHMCC.SQL.Clear;
                         BHMCC.SQL.Add('select mcc from zaneco.latebillhistory where code = :code and billmonth = :billmonth');
                         BHMCC.ParamByName('code').Text      := UnPBPCode.Text;
                         BHMCC.ParamByName('billmonth').Text := UnPBPBillMonth.Text;
                         BHMCC.Open;
                       end;

                     if BHMCC.IsEmpty then
                       begin
                         BHMCC.Close;
                         BHMCC.SQL.Clear;
                         BHMCC.SQL.Add('select mcc from zaneco.pilferbill where code = :code');
                         BHMCC.ParamByName('code').Text      := UnPBPCode.Text;
                         BHMCC.Open;
                       end;

                     InsertColl.ParambyName('ReceiptNumber').Text               := POEBRNumber[I];
                     InsertColl.ParambyName('AccountCode').Text                 := MasterCode.Text;
                     InsertColl.ParambyName('AccountNumber').Text               := MasterAccountNumber.Text;
                     InsertColl.ParambyName('Area').Text                        := MasterArea.Text;
                     InsertColl.ParambyName('Book').Text                        := MasterBook.Text;
                     InsertColl.ParambyName('Sequence').Text                    := MasterSequence.Text;
                     InsertColl.ParambyName('Name').Text                        := MasterName.Text;
                     InsertColl.ParambyName('Address').Text                     := copy(MasterAddress.Text,1,15);
                     InsertColl.ParambyName('BillMonth').Text                   := UnPBPBillMonth.Text;
                     InsertColl.ParambyName('WRateCode').Text                   := UnPBPWRateCode.Text;
                     InsertColl.ParambyName('OPDescription').Text               := PAccountDesc[I];
                     InsertColl.ParambyName('TotalBill').AsCurrency             := PAmount[I];
                     InsertColl.ParambyName('Total').AsCurrency                 := PAmount[I];
                     InsertColl.ParambyName('Kilowatthour').AsInteger           := UnPBPKilowattHour.AsInteger;
                     InsertColl.ParambyName('UCNPCSD').AsCurrency               := UnPBPUCNPCSD.AsCurrency;
                     InsertColl.ParambyName('UCNPCSCC').AsCurrency              := UnPBPUCNPCSCC.AsCurrency;
                     InsertColl.ParambyName('UCDUSCC').AsCurrency               := UnPBPUCDUSCC.AsCurrency;
                     InsertColl.ParambyName('UCME').AsCurrency                  := UnPBPUCME.AsCurrency;
                     InsertColl.ParambyName('UCETR').AsCurrency                 := UnPBPUCETR.AsCurrency;
                     InsertColl.ParambyName('UCEC').AsCurrency                  := UnPBPUCEC.AsCurrency;
                     InsertColl.ParambyName('UCCSR').AsCurrency                 := UnPBPUCCSR.AsCurrency;
                     InsertColl.ParambyName('TransformerRental').AsCurrency     := 0.00;
                     InsertColl.ParambyName('RFSC').AsCurrency                  := BHMCC.FieldByName('MCC').AsCurrency;
                     InsertColl.ParambyName('RPTax').AsCurrency                 := UnPBPRPTax.AsCurrency;
                     InsertColl.ParamByName('RateOrder').Text                   := UnPBPRateOrder.Text;
                     InsertColl.ParamByName('Fitall').AsCurrency                := UnPBPFitall.AsCurrency;
                     InsertColl.ParamByName('PARec').AsCurrency                 := UnPBPPARec.AsCurrency;
                     InsertColl.ParamByName('VATparec').AsCurrency              := UnPBPVATparec.AsCurrency;
                     InsertColl.ParamByName('VATmcc').AsCurrency                := UnPBPVATmcc.AsCurrency;

                     InsertColl.ParamByName('OtherGenRateAdj').AsCurrency          := UnPBPOtherGenRateAdj.AsCurrency;
                     InsertColl.ParamByName('OtherTransCostAdj').AsCurrency        := UnPBPOtherTransCostAdj.AsCurrency;
                     InsertColl.ParamByName('OtherTransDemandCostAdj').AsCurrency  := UnPBPOtherTransDemandCostAdj.AsCurrency;
                     InsertColl.ParamByName('OtherSystemLossCostAdj').AsCurrency   := UnPBPOtherSystemLossCostAdj.AsCurrency;
                     InsertColl.ParamByName('OtherLifelineRateCostAdj').AsCurrency := UnPBPOtherLifelineRateCostAdj.AsCurrency;
                     InsertColl.ParamByName('OtherSeniorCitizenRateAdj').AsCurrency:= UnPBPOtherSeniorCitizenRateAdj.AsCurrency;
                     InsertColl.ParambyName('ICCrossSubsidyCharge').AsCurrency     := UnPBPICCrossSubsidyCharge.AsCurrency;

                     InsertColl.ParambyName('DatePaid').AsDate                  := SetForm.PostDate.Date;
                     InsertColl.ParambyName('DateRemitted').AsDate              := SetForm.PostDate.Date;
                     InsertColl.ParambyName('EncoderCode').Text                 := SetForm.Batch.Text;
                     InsertColl.ParambyName('CollectorCode').Text               := copy(SetForm.usersCollectorCode.Text,1,3);

                     InsertColl.ParambyName('Sundries').Text                    := SureTOR;
                     InsertColl.ParambyName('TellerORNumber').Text              := SureTOR;

                     InsertColl.ParambyName('VATDiscAmt').AsCurrency            := UnPBPVATDiscAmt.AsCurrency;
                     InsertColl.ParambyName('VATDistDiscAmt').AsCurrency        := UnPBPVATDistDiscAmt.AsCurrency;
                     InsertColl.ParambyName('VATGenCODiscAmt').AsCurrency       := UnPBPVATGenCoDiscAmt.AsCurrency;
                     InsertColl.ParambyName('VATTransCODiscAmt').AsCurrency     := UnPBPVATTransCoDiscAmt.AsCurrency;
                     InsertColl.ParambyName('VATSystemLossDiscAmt').AsCurrency  := UnPBPVATSystemLossDiscAmt.AsCurrency;

                     InsertColl.ParambyName('VAT').AsCurrency                   := UnPBPVAT.AsCurrency;
                     InsertColl.ParambyName('VATDist').AsCurrency               := UnPBPVATDist.AsCurrency;
                     InsertColl.ParambyName('VATGenCO').AsCurrency              := UnPBPVATGenCO.AsCurrency;
                     InsertColl.ParambyName('VATTransCO').AsCurrency            := UnPBPVATTransCO.AsCurrency;
                     InsertColl.ParambyName('VATSystemLossGenCO').AsCurrency    := UnPBPVATSystemLossGenCO.AsCurrency;
                     InsertColl.ParambyName('VATSystemLossTransCO').AsCurrency  := UnPBPVATSystemLossTransCO.AsCurrency;
                     InsertColl.ParambyName('SystemLossCharge').AsCurrency      := UnPBPSystemLossCharge.AsCurrency;
                     InsertColl.ParambyName('PKVRAmount').AsCurrency            := UnPBPPKVRAmount.AsCurrency;
                     InsertColl.ParamByName('areacollector').Text               := BillingData.userBaseQarea.Text;
                     InsertColl.ParamByName('gram').AsCurrency                  := UnPBPgram.AsCurrency;
                     InsertColl.Execute;

                     //==============Insert Collection to user base=============
                     //=========================================================
                     //=========================================================
                     BillingData.InsertIntegratedColl.ParambyName('ReceiptNumber').Text               := POEBRNumber[I];
                     BillingData.InsertIntegratedColl.ParambyName('AccountCode').Text                 := MasterCode.Text;
                     BillingData.InsertIntegratedColl.ParambyName('AccountNumber').Text               := MasterAccountNumber.Text;
                     BillingData.InsertIntegratedColl.ParambyName('Area').Text                        := MasterArea.Text;
                     BillingData.InsertIntegratedColl.ParambyName('Book').Text                        := MasterBook.Text;
                     BillingData.InsertIntegratedColl.ParambyName('Sequence').Text                    := MasterSequence.Text;
                     BillingData.InsertIntegratedColl.ParambyName('Name').Text                        := MasterName.Text;
                     BillingData.InsertIntegratedColl.ParambyName('Address').Text                     := copy(MasterAddress.Text,1,15);
                     BillingData.InsertIntegratedColl.ParambyName('BillMonth').Text                   := UnPBPBillMonth.Text;
                     BillingData.InsertIntegratedColl.ParambyName('WRateCode').Text                   := UnPBPWRateCode.Text;
                     BillingData.InsertIntegratedColl.ParambyName('OPDescription').Text               := PAccountDesc[I];
                     BillingData.InsertIntegratedColl.ParambyName('TotalBill').AsCurrency             := PAmount[I];
                     BillingData.InsertIntegratedColl.ParambyName('Total').AsCurrency                 := PAmount[I];
                     BillingData.InsertIntegratedColl.ParambyName('Kilowatthour').AsInteger           := UnPBPKilowattHour.AsInteger;
                     BillingData.InsertIntegratedColl.ParambyName('UCNPCSD').AsCurrency               := UnPBPUCNPCSD.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('UCNPCSCC').AsCurrency              := UnPBPUCNPCSCC.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('UCDUSCC').AsCurrency               := UnPBPUCDUSCC.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('UCME').AsCurrency                  := UnPBPUCME.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('UCETR').AsCurrency                 := UnPBPUCETR.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('UCEC').AsCurrency                  := UnPBPUCEC.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('UCCSR').AsCurrency                 := UnPBPUCCSR.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('TransformerRental').AsCurrency     := 0.00;
                     BillingData.InsertIntegratedColl.ParambyName('RFSC').AsCurrency                  := BHMCC.FieldByName('MCC').AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('RPTax').AsCurrency                 := UnPBPRPTax.AsCurrency;
                     BillingData.InsertIntegratedColl.ParamByName('RateOrder').Text                   := UnPBPRateOrder.Text;
                     BillingData.InsertIntegratedColl.ParamByName('Fitall').AsCurrency                := UnPBPFitall.AsCurrency;
                     BillingData.InsertIntegratedColl.ParamByName('PARec').AsCurrency                 := UnPBPPARec.AsCurrency;
                     BillingData.InsertIntegratedColl.ParamByName('VATparec').AsCurrency              := UnPBPVATparec.AsCurrency;
                     BillingData.InsertIntegratedColl.ParamByName('VATmcc').AsCurrency                := UnPBPVATmcc.AsCurrency;

                     BillingData.InsertIntegratedColl.ParamByName('OtherGenRateAdj').AsCurrency          := UnPBPOtherGenRateAdj.AsCurrency;
                     BillingData.InsertIntegratedColl.ParamByName('OtherTransCostAdj').AsCurrency        := UnPBPOtherTransCostAdj.AsCurrency;
                     BillingData.InsertIntegratedColl.ParamByName('OtherTransDemandCostAdj').AsCurrency  := UnPBPOtherTransDemandCostAdj.AsCurrency;
                     BillingData.InsertIntegratedColl.ParamByName('OtherSystemLossCostAdj').AsCurrency   := UnPBPOtherSystemLossCostAdj.AsCurrency;
                     BillingData.InsertIntegratedColl.ParamByName('OtherLifelineRateCostAdj').AsCurrency := UnPBPOtherLifelineRateCostAdj.AsCurrency;
                     BillingData.InsertIntegratedColl.ParamByName('OtherSeniorCitizenRateAdj').AsCurrency:= UnPBPOtherSeniorCitizenRateAdj.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('ICCrossSubsidyCharge').AsCurrency     := UnPBPICCrossSubsidyCharge.AsCurrency;

                     BillingData.InsertIntegratedColl.ParambyName('DatePaid').AsDate                  := SetForm.PostDate.Date;
                     BillingData.InsertIntegratedColl.ParambyName('DateRemitted').AsDate              := SetForm.PostDate.Date;
                     BillingData.InsertIntegratedColl.ParambyName('EncoderCode').Text                 := SetForm.Batch.Text;
                     BillingData.InsertIntegratedColl.ParambyName('CollectorCode').Text               := copy(SetForm.usersCollectorCode.Text,1,3);
                     BillingData.InsertIntegratedColl.ParambyName('Sundries').Text                    := SureTOR;
                     BillingData.InsertIntegratedColl.ParambyName('TellerORNumber').Text              := SureTOR;

                     BillingData.InsertIntegratedColl.ParambyName('VATDiscAmt').AsCurrency            := UnPBPVATDiscAmt.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('VATDistDiscAmt').AsCurrency        := UnPBPVATDistDiscAmt.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('VATGenCODiscAmt').AsCurrency       := UnPBPVATGenCoDiscAmt.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('VATTransCODiscAmt').AsCurrency     := UnPBPVATTransCoDiscAmt.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('VATSystemLossDiscAmt').AsCurrency  := UnPBPVATSystemLossDiscAmt.AsCurrency;

                     BillingData.InsertIntegratedColl.ParambyName('VAT').AsCurrency                   := UnPBPVAT.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('VATDist').AsCurrency               := UnPBPVATDist.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('VATGenCO').AsCurrency              := UnPBPVATGenCO.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('VATTransCO').AsCurrency            := UnPBPVATTransCO.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('VATSystemLossGenCO').AsCurrency    := UnPBPVATSystemLossGenCO.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('VATSystemLossTransCO').AsCurrency  := UnPBPVATSystemLossTransCO.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('SystemLossCharge').AsCurrency      := UnPBPSystemLossCharge.AsCurrency;
                     BillingData.InsertIntegratedColl.ParambyName('PKVRAmount').AsCurrency            := UnPBPPKVRAmount.AsCurrency;
                     BillingData.InsertIntegratedColl.ParamByName('areacollector').Text               := areaCollector;
                     BillingData.InsertIntegratedColl.ParamByName('collectorBase').Text               := BillingData.userBaseQCollectorCode.Text;
                     BillingData.InsertIntegratedColl.ParamByName('gram').AsCurrency                  := UnPBPgram.AsCurrency;
                     BillingData.InsertIntegratedColl.Execute;

                     //=========================================================
                     //=========================================================
                     //=========================================================

                     //==============Tax WithHeld===============================
                     //=========================================================
                      with taxWithheldForm do
                        begin
                           updateTaxWheld.Close;
                           updateTaxWheld.ParamByName('TellerORNumber').Text :=  SureTOR;
                           updateTaxWheld.ParamByName('CollectorCode').Text  :=  copy(SetForm.usersCollectorCode.Text,1,3);
                           updateTaxWheld.ParamByName('DatePaid').AsDateTime :=  SetForm.PostDate.Date;
                           updateTaxWheld.ParamByName('code').Text           :=  codeNUm;
                           updateTaxWheld.ParamByName('Billmonth').Text      :=  PBillMonth[I];
                           updateTaxWheld.Execute;
                        end;

                      TmpQuery.Close;
                      TmpQuery.SQL.Clear;
                      TmpQuery.SQL.Add('Delete from collectiontaxwheld where accountcode=:code and billmonth=:billmonth and ifnull(FinalTaxWithheld,0) = 0 and ifnull(CreditableTaxWithheld,0)= 0 ');
                      TmpQuery.ParamByName('Code').Text      := codeNUm;
                      TmpQuery.ParamByName('billmonth').Text := PBillMonth[I];
                      TmpQuery.Execute;


                      //========Integration table to TWheld=======
                      //==========================================
                      //==========================================

                      with BillingData do
                        begin
                            TWheldActiveQ.Close;
                            TWheldActiveQ.ParamByName('code').Text      := codeNUm;
                            TWheldActiveQ.ParamByName('billmonth').Text := PBillMonth[I];
                            TWheldActiveQ.Open;

                            if not TWheldActiveQ.IsEmpty then
                            begin
                                try
                                  txwithheldIntegration.ParamByName('ReceiptNumber').Text             := TWheldActiveQReceiptNumber.Text;
                                  txwithheldIntegration.ParamByName('AccountCode').Text               := TWheldActiveQAccountCode.Text;
                                  txwithheldIntegration.ParamByName('Area').Text                      := TWheldActiveQArea.Text;
                                  txwithheldIntegration.ParamByName('Book').Text                      := TWheldActiveQBook.Text;
                                  txwithheldIntegration.ParamByName('Sequence').Text                  := TWheldActiveQSequence.Text;
                                  txwithheldIntegration.ParamByName('AccountNumber').Text             := TWheldActiveQAccountNumber.Text;
                                  txwithheldIntegration.ParamByName('Name').Text                      := TWheldActiveQName.Text;
                                  txwithheldIntegration.ParamByName('Address').Text                   := TWheldActiveQAddress.Text;
                                  txwithheldIntegration.ParamByName('BillMonth').Text                 := TWheldActiveQBillMonth.Text;
                                  txwithheldIntegration.ParamByName('KilowattHour').Text              := TWheldActiveQKilowattHour.Text;
                                  txwithheldIntegration.ParamByName('TotalBill').AsFloat              := TWheldActiveQTotalBill.AsFloat;
                                  txwithheldIntegration.ParamByName('CollectorCode').Text             := TWheldActiveQCollectorCode.Text;
                                  txwithheldIntegration.ParamByName('DatePaid').AsDate                := TWheldActiveQDatePaid.AsDateTime;
                                  txwithheldIntegration.ParamByName('OPDescription').Text             := TWheldActiveQOPDescription.Text;
                                  txwithheldIntegration.ParamByName('TellerORNumber').Text            := TWheldActiveQTellerORNumber.Text;
                                  txwithheldIntegration.ParamByName('occode1').Text                   := TWheldActiveQoccode1.Text;
                                  txwithheldIntegration.ParamByName('occode2').Text                   := TWheldActiveQoccode2.Text;
                                  txwithheldIntegration.ParamByName('occode3').Text                   := TWheldActiveQoccode3.Text;
                                  txwithheldIntegration.ParamByName('TaxBaseAmnt').AsFloat            := TWheldActiveQTaxBaseAmnt.AsFloat;
                                  txwithheldIntegration.ParamByName('FinalTaxRate').AsFloat           := TWheldActiveQFinalTaxRate.AsFloat;
                                  txwithheldIntegration.ParamByName('FinalTaxWithheld').AsFloat       := TWheldActiveQFinalTaxWithheld.AsFloat;
                                  txwithheldIntegration.ParamByName('CreditableTaxRate').AsFloat      := TWheldActiveQCreditableTaxRate.AsFloat;
                                  txwithheldIntegration.ParamByName('CreditableTaxWithheld').AsFloat  := TWheldActiveQCreditableTaxWithheld.AsFloat;
                                  txwithheldIntegration.ParamByName('tinFinal').Text                  := TWheldActiveQtinFinal.Text;
                                  txwithheldIntegration.ParamByName('PayorsNameFinal').Text           := TWheldActiveQPayorsNameFinal.Text;
                                  txwithheldIntegration.ParamByName('tinCreditable').Text             := TWheldActiveQtinCreditable.Text;
                                  txwithheldIntegration.ParamByName('PayorsNameCreditable').Text      := TWheldActiveQPayorsNameCreditable.Text;
                                  txwithheldIntegration.ParamByName('OCAmount1').AsFloat              := TWheldActiveQOCAmount1.AsFloat;
                                  txwithheldIntegration.ParamByName('OC1Finalvat').AsFloat            := TWheldActiveQOC1Finalvat.AsFloat;
                                  txwithheldIntegration.ParamByName('OC1WithholdingTax').AsFloat      := TWheldActiveQOC1WithholdingTax.AsFloat;
                                  txwithheldIntegration.ParamByName('OCAmount2').AsFloat              := TWheldActiveQOCAmount2.AsFloat;
                                  txwithheldIntegration.ParamByName('OC2Finalvat').AsFloat            := TWheldActiveQOC2Finalvat.AsFloat;
                                  txwithheldIntegration.ParamByName('OC2WithholdingTax').AsFloat      := TWheldActiveQOC2WithholdingTax.AsFloat;
                                  txwithheldIntegration.ParamByName('OCAmount3').AsFloat              := TWheldActiveQOCAmount3.AsFloat;
                                  txwithheldIntegration.ParamByName('OC3Finalvat').AsFloat            := TWheldActiveQOC3Finalvat.AsFloat;
                                  txwithheldIntegration.ParamByName('OC3WithholdingTax').AsFloat      := TWheldActiveQOC3WithholdingTax.AsFloat;
                                  txwithheldIntegration.Execute;
                                except

                                  txwithheldIntegrationUpdate.ParamByName('DatePaid').AsDate                := TWheldActiveQDatePaid.AsDateTime;
                                  txwithheldIntegrationUpdate.ParamByName('TellerORNumber').Text            := TWheldActiveQTellerORNumber.Text;
                                  txwithheldIntegrationUpdate.ParamByName('occode1').Text                   := TWheldActiveQoccode1.Text;
                                  txwithheldIntegrationUpdate.ParamByName('occode2').Text                   := TWheldActiveQoccode2.Text;
                                  txwithheldIntegrationUpdate.ParamByName('occode3').Text                   := TWheldActiveQoccode3.Text;
                                  txwithheldIntegrationUpdate.ParamByName('TaxBaseAmnt').AsFloat            := TWheldActiveQTaxBaseAmnt.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('FinalTaxRate').AsFloat           := TWheldActiveQFinalTaxRate.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('FinalTaxWithheld').AsFloat       := TWheldActiveQFinalTaxWithheld.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('CreditableTaxRate').AsFloat      := TWheldActiveQCreditableTaxRate.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('CreditableTaxWithheld').AsFloat  := TWheldActiveQCreditableTaxWithheld.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('tinFinal').Text                  := TWheldActiveQtinFinal.Text;
                                  txwithheldIntegrationUpdate.ParamByName('PayorsNameFinal').Text           := TWheldActiveQPayorsNameFinal.Text;
                                  txwithheldIntegrationUpdate.ParamByName('tinCreditable').Text             := TWheldActiveQtinCreditable.Text;
                                  txwithheldIntegrationUpdate.ParamByName('PayorsNameCreditable').Text      := TWheldActiveQPayorsNameCreditable.Text;
                                  txwithheldIntegrationUpdate.ParamByName('OCAmount1').AsFloat              := TWheldActiveQOCAmount1.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('OC1Finalvat').AsFloat            := TWheldActiveQOC1Finalvat.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('OC1WithholdingTax').AsFloat      := TWheldActiveQOC1WithholdingTax.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('OCAmount2').AsFloat              := TWheldActiveQOCAmount2.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('OC2Finalvat').AsFloat            := TWheldActiveQOC2Finalvat.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('OC2WithholdingTax').AsFloat      := TWheldActiveQOC2WithholdingTax.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('OCAmount3').AsFloat              := TWheldActiveQOCAmount3.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('OC3Finalvat').AsFloat            := TWheldActiveQOC3Finalvat.AsFloat;
                                  txwithheldIntegrationUpdate.ParamByName('OC3WithholdingTax').AsFloat      := TWheldActiveQOC3WithholdingTax.AsFloat;
                                  txwithheldIntegrationUpdate.Execute;
                                end;
                            end;
                        end;
                        //=========End of Integration table to TWheld==========
                        //=====================================================
                        //=====================================================


                      //========================================================
                      //========================================================

                     ARUpdateQuery.Close;
                     ARUpdateQuery.ParamByName('Code').Text                         := MasterCode.Text;
                     ARUpdateQuery.ParamByName('Date').AsDate                       := SetForm.PostDate.Date;
                     ARUpdateQuery.ParamByName('Document').Text                     := UnPBPDocument.Text;
                     ARUpdateQuery.ParamByName('BillMonth').Text                    := UnPBPBillMonth.Text;
                     ARUpdateQuery.ParamByName('Credit').AsCurrency                 := UnPBPAmount.AsCurrency;
                     ARUpdateQuery.ParamByName('CollectorCode').Text                := TORORNumber.Text;
                     ARUpdateQuery.ParamByName('VATDiscAmt').AsCurrency             := UnPBPVATDiscAmt.AsCurrency;
                     ARUpdateQuery.ParamByName('VATDistDiscAmt').AsCurrency         := UnPBPVATDistDiscAmt.AsCurrency;
                     ARUpdateQuery.ParamByName('VATGenCODiscAmt').AsCurrency        := UnPBPVATGenCoDiscAmt.AsCurrency;
                     ARUpdateQuery.ParamByName('VATTransCODiscAmt').AsCurrency      := UnPBPVATTransCoDiscAmt.AsCurrency;
                     ARUpdateQuery.ParamByName('VATSystemLossDiscAmt').AsCurrency   := UnPBPVATSystemLossDiscAmt.AsCurrency;
                     ARUpdateQuery.ParamByName('VAT').AsCurrency                    := UnPBPVAT.AsCurrency;
                     ARUpdateQuery.ParamByName('VATDist').AsCurrency                := UnPBPVATDist.AsCurrency;
                     ARUpdateQuery.ParamByName('VATGenCO').AsCurrency               := UnPBPVATGenCO.AsCurrency;
                     ARUpdateQuery.ParamByName('VATTransCO').AsCurrency             := UnPBPVATTransCO.AsCurrency;
                     ARUpdateQuery.ParamByName('VATSystemLossGenCO').AsCurrency     := UnPBPVATSystemLossGenCO.AsCurrency;
                     ARUpdateQuery.ParamByName('VATSystemLossTransCO').AsCurrency   := UnPBPVATSystemLossTransCO.AsCurrency;
                     ARUpdateQuery.Execute;

                     DeleteUnpaidBillsQuery.Close;
                     DeleteUnpaidBillsQuery.ParamByName('Code').Text        := MasterCode.Text;
                     DeleteUnpaidBillsQuery.ParamByName('Document').Text    := UnPBPDocument.Text;
                     DeleteUnpaidBillsQuery.Execute;

                     UpdateOCLedger.SQL.Clear;
                     UpdateOCLedger.SQL.Add('Update OCLedger L, OCDetail D');
                     UpdateOCLedger.SQL.Add('  set L.TORNumber = :TORNumber, L.DatePaid = :DatePaid');
                     UpdateOCLedger.SQL.Add('       where L.BillNumber = :BillNumber and L.BillMonth = :BillMonth and');
                     UpdateOCLedger.SQL.Add('             L.idOCDetail = D.idOCDetail');

                     UpdateOCLedger.ParamByName('TORNumber').Text  := SureTOR;
                     UpdateOCLedger.ParamByName('DatePaid').AsDate := SetForm.PostDate.Date;
                     UpdateOCLedger.ParamByName('BillNumber').Text := PRecord.POEBRNumber[I];
                     UpdateOCLedger.ParamByName('BillMonth').Text  := PRecord.PBillMonth[I];
                     UpdateOCLedger.Execute;

                     UnPBP.Close;
                 end
                 { end post normal bill }
                 {=============================================================}
                 else
                 {=============================================================}
                 { post Spot Bill }
                 begin
                     InsertColl.ParambyName('ReceiptNumber').Text                           := POEBRNumber[I];
                     InsertColl.ParambyName('AccountCode').Text                             := MasterCode.Text;
                     InsertColl.ParambyName('AccountNumber').Text                           := MasterAccountNumber.Text;
                     InsertColl.ParambyName('Area').Text                                    := MasterArea.Text;
                     InsertColl.ParambyName('Book').Text                                    := MasterBook.Text;
                     InsertColl.ParambyName('Sequence').Text                                := MasterSequence.Text;
                     InsertColl.ParambyName('Name').Text                                    := MasterName.Text;
                     InsertColl.ParambyName('Address').Text                                 := copy(MasterAddress.Text,1,15);
                     InsertColl.ParambyName('BillMonth').Text                               := SBBillMonth.Text;
                     InsertColl.ParambyName('WRateCode').Text                               := MasterWRateCode.Text;
                     InsertColl.ParambyName('OPDescription').Text                           := PAccountDesc[I];
                     InsertColl.ParambyName('TotalBill').AsCurrency                         := PAmount[I];
                     InsertColl.ParambyName('Total').AsCurrency                             := PAmount[I];
                     InsertColl.ParambyName('Kilowatthour').AsFloat                         := SBKilowattHour.AsFloat;
                     InsertColl.ParambyName('UCNPCSD').AsCurrency                           := BillUCNPCStrandedDebts;
                     InsertColl.ParambyName('UCNPCSCC').AsCurrency                          := BillUCNPCStrandedContCost;
                     InsertColl.ParambyName('UCDUSCC').AsCurrency                           := BillUCDUStrandedContCost;
                     InsertColl.ParambyName('UCME').AsCurrency                              := BillUCME;
                     InsertColl.ParambyName('UCETR').AsCurrency                             := BillUCEqTaxesAndRoyalties;
                     InsertColl.ParambyName('UCEC').AsCurrency                              := BillUCEC;
                     InsertColl.ParambyName('UCCSR').AsCurrency                             := BillUCCrossSubRemoval;
                     InsertColl.ParambyName('TransformerRental').AsCurrency                 := 0.00;
                     InsertColl.ParambyName('RFSC').AsCurrency                              := BillMCC;
                     InsertColl.ParambyName('RPTax').AsCurrency                             := BillRPTax;
                     InsertColl.ParamByName('RateOrder').Text                               := BillRateOrder;
                     InsertColl.ParamByName('Fitall').AsCurrency                            := BillFitall;
                     InsertColl.ParamByName('OtherGenRateAdj').AsCurrency                   := BillOtherGenRateAdjV;
                     InsertColl.ParamByName('OtherTransCostAdj').AsCurrency                 := BillOtherTransCostAdjV;
                     InsertColl.ParamByName('OtherTransDemandCostAdj').AsCurrency           := BillOtherTransDemandCostAdjV;
                     InsertColl.ParamByName('OtherSystemLossCostAdj').AsCurrency            := BillOtherSystemLossCostAdjV;
                     InsertColl.ParamByName('OtherLifelineRateCostAdj').AsCurrency          := BillOtherLifelineRateCostAdjV;
                     InsertColl.ParamByName('OtherSeniorCitizenRateAdj').AsCurrency         := BillOtherSeniorCitizenRateAdjV;
                     InsertColl.ParambyName('ICCrossSubsidyCharge').AsCurrency              := BillICCrossSubsidyCharge;
                     InsertColl.ParamByName('PARec').AsCurrency                             := BillPARec;
                     InsertColl.ParamByName('VATparec').AsCurrency                          := BillVATparec;
                     InsertColl.ParamByName('VATmcc').AsCurrency                            := BillVATmcc;

                     InsertColl.ParambyName('DatePaid').AsDate                              := SetForm.PostDate.Date;
                     InsertColl.ParambyName('DateRemitted').AsDate                          := SetForm.PostDate.Date;
                     InsertColl.ParambyName('EncoderCode').Text                             := SetForm.Batch.Text;
                     InsertColl.ParambyName('CollectorCode').Text                           := Copy(SetForm.usersCollectorCode.Text,1,3);
                     InsertColl.ParambyName('Sundries').Text                                := SureTOR;
                     InsertColl.ParambyName('TellerORNumber').Text                          := SureTOR;

                     InsertColl.ParambyName('VATDiscAmt').AsCurrency                        := BillVATDiscAmt;
                     InsertColl.ParambyName('VATDistDiscAmt').AsCurrency                    := BillVATDistDiscAmt;
                     InsertColl.ParambyName('VATGenCODiscAmt').AsCurrency                   := BillVATGenCoDiscAmt;
                     InsertColl.ParambyName('VATTransCODiscAmt').AsCurrency                 := BillVATTransCoDiscAmt;
                     InsertColl.ParambyName('VATSystemLossDiscAmt').AsCurrency              := BillVATSystemLossDiscAmt;

                     InsertColl.ParambyName('VAT').AsCurrency                               := BillVAT;
                     InsertColl.ParambyName('VATDist').AsCurrency                           := BillVATDist;
                     InsertColl.ParambyName('VATGenCO').AsCurrency                          := VATGenCO;
                     InsertColl.ParambyName('VATTransCO').AsCurrency                        := VATTransCO;
                     InsertColl.ParambyName('VATSystemLossGenCO').AsCurrency                := VATSystemLoss;
                     InsertColl.ParambyName('VATSystemLossTransCO').AsCurrency              := 0.00;
                     InsertColl.ParambyName('SystemLossCharge').AsCurrency                  := BillSystemLossCharge;
                     InsertColl.ParamByName('OtherSystemLossCostAdj').AsCurrency            := BillOtherSystemLossCostAdjV;
                     InsertColl.ParambyName('PKVRAmount').AsCurrency                        := BillPKVRAmount;
                     InsertColl.ParambyName('areacollector').Text                           := BillingData.userBaseQarea.Text;
                     InsertColl.ParamByName('gram').AsCurrency                              := Billgram;
                     InsertColl.Execute;

                     //==========Insert Collection to user base=================
                     //=========================================================
                     //=========================================================
                     BillingData.InsertIntegratedColl.ParambyName('ReceiptNumber').Text                           := POEBRNumber[I];
                     BillingData.InsertIntegratedColl.ParambyName('AccountCode').Text                             := MasterCode.Text;
                     BillingData.InsertIntegratedColl.ParambyName('AccountNumber').Text                           := MasterAccountNumber.Text;
                     BillingData.InsertIntegratedColl.ParambyName('Area').Text                                    := MasterArea.Text;
                     BillingData.InsertIntegratedColl.ParambyName('Book').Text                                    := MasterBook.Text;
                     BillingData.InsertIntegratedColl.ParambyName('Sequence').Text                                := MasterSequence.Text;
                     BillingData.InsertIntegratedColl.ParambyName('Name').Text                                    := MasterName.Text;
                     BillingData.InsertIntegratedColl.ParambyName('Address').Text                                 := copy(MasterAddress.Text,1,15);
                     BillingData.InsertIntegratedColl.ParambyName('BillMonth').Text                               := SBBillMonth.Text;
                     BillingData.InsertIntegratedColl.ParambyName('WRateCode').Text                               := MasterWRateCode.Text;
                     BillingData.InsertIntegratedColl.ParambyName('OPDescription').Text                           := PAccountDesc[I];
                     BillingData.InsertIntegratedColl.ParambyName('TotalBill').AsCurrency                         := PAmount[I];
                     BillingData.InsertIntegratedColl.ParambyName('Total').AsCurrency                             := PAmount[I];
                     BillingData.InsertIntegratedColl.ParambyName('Kilowatthour').AsFloat                         := SBKilowattHour.AsFloat;
                     BillingData.InsertIntegratedColl.ParambyName('UCNPCSD').AsCurrency                           := BillUCNPCStrandedDebts;
                     BillingData.InsertIntegratedColl.ParambyName('UCNPCSCC').AsCurrency                          := BillUCNPCStrandedContCost;
                     BillingData.InsertIntegratedColl.ParambyName('UCDUSCC').AsCurrency                           := BillUCDUStrandedContCost;
                     BillingData.InsertIntegratedColl.ParambyName('UCME').AsCurrency                              := BillUCME;
                     BillingData.InsertIntegratedColl.ParambyName('UCETR').AsCurrency                             := BillUCEqTaxesAndRoyalties;
                     BillingData.InsertIntegratedColl.ParambyName('UCEC').AsCurrency                              := BillUCEC;
                     BillingData.InsertIntegratedColl.ParambyName('UCCSR').AsCurrency                             := BillUCCrossSubRemoval;
                     BillingData.InsertIntegratedColl.ParambyName('TransformerRental').AsCurrency                 := 0.00;
                     BillingData.InsertIntegratedColl.ParambyName('RFSC').AsCurrency                              := BillMCC;
                     BillingData.InsertIntegratedColl.ParambyName('RPTax').AsCurrency                             := BillRPTax;
                     BillingData.InsertIntegratedColl.ParamByName('RateOrder').Text                               := BillRateOrder;
                     BillingData.InsertIntegratedColl.ParamByName('Fitall').AsCurrency                            := BillFitall;
                     BillingData.InsertIntegratedColl.ParamByName('OtherGenRateAdj').AsCurrency                   := BillOtherGenRateAdjV;
                     BillingData.InsertIntegratedColl.ParamByName('OtherTransCostAdj').AsCurrency                 := BillOtherTransCostAdjV;
                     BillingData.InsertIntegratedColl.ParamByName('OtherTransDemandCostAdj').AsCurrency           := BillOtherTransDemandCostAdjV;
                     BillingData.InsertIntegratedColl.ParamByName('OtherSystemLossCostAdj').AsCurrency            := BillOtherSystemLossCostAdjV;
                     BillingData.InsertIntegratedColl.ParamByName('OtherLifelineRateCostAdj').AsCurrency          := BillOtherLifelineRateCostAdjV;
                     BillingData.InsertIntegratedColl.ParamByName('OtherSeniorCitizenRateAdj').AsCurrency         := BillOtherSeniorCitizenRateAdjV;
                     BillingData.InsertIntegratedColl.ParambyName('ICCrossSubsidyCharge').AsCurrency              := BillICCrossSubsidyCharge;
                     BillingData.InsertIntegratedColl.ParamByName('PARec').AsCurrency                             := BillPARec;
                     BillingData.InsertIntegratedColl.ParamByName('VATparec').AsCurrency                          := BillVATparec;
                     BillingData.InsertIntegratedColl.ParamByName('VATmcc').AsCurrency                            := BillVATmcc;

                     BillingData.InsertIntegratedColl.ParambyName('DatePaid').AsDate                              := SetForm.PostDate.Date;
                     BillingData.InsertIntegratedColl.ParambyName('DateRemitted').AsDate                          := SetForm.PostDate.Date;
                     BillingData.InsertIntegratedColl.ParambyName('EncoderCode').Text                             := SetForm.Batch.Text;
                     BillingData.InsertIntegratedColl.ParambyName('CollectorCode').Text                           := Copy(SetForm.usersCollectorCode.Text,1,3);
                     BillingData.InsertIntegratedColl.ParambyName('Sundries').Text                                := SureTOR;
                     BillingData.InsertIntegratedColl.ParambyName('TellerORNumber').Text                          := SureTOR;

                     BillingData.InsertIntegratedColl.ParambyName('VATDiscAmt').AsCurrency                        := BillVATDiscAmt;
                     BillingData.InsertIntegratedColl.ParambyName('VATDistDiscAmt').AsCurrency                    := BillVATDistDiscAmt;
                     BillingData.InsertIntegratedColl.ParambyName('VATGenCODiscAmt').AsCurrency                   := BillVATGenCoDiscAmt;
                     BillingData.InsertIntegratedColl.ParambyName('VATTransCODiscAmt').AsCurrency                 := BillVATTransCoDiscAmt;
                     BillingData.InsertIntegratedColl.ParambyName('VATSystemLossDiscAmt').AsCurrency              := BillVATSystemLossDiscAmt;

                     BillingData.InsertIntegratedColl.ParambyName('VAT').AsCurrency                               := BillVAT;
                     BillingData.InsertIntegratedColl.ParambyName('VATDist').AsCurrency                           := BillVATDist;
                     BillingData.InsertIntegratedColl.ParambyName('VATGenCO').AsCurrency                          := VATGenCO;
                     BillingData.InsertIntegratedColl.ParambyName('VATTransCO').AsCurrency                        := VATTransCO;
                     BillingData.InsertIntegratedColl.ParambyName('VATSystemLossGenCO').AsCurrency                := VATSystemLoss;
                     BillingData.InsertIntegratedColl.ParambyName('VATSystemLossTransCO').AsCurrency              := 0.00;
                     BillingData.InsertIntegratedColl.ParambyName('SystemLossCharge').AsCurrency                  := BillSystemLossCharge;
                     BillingData.InsertIntegratedColl.ParamByName('OtherSystemLossCostAdj').AsCurrency            := BillOtherSystemLossCostAdjV;
                     BillingData.InsertIntegratedColl.ParambyName('PKVRAmount').AsCurrency                        := BillPKVRAmount;
                     BillingData.InsertIntegratedColl.ParambyName('areacollector').Text                           := areaCollector;
                     BillingData.InsertIntegratedColl.ParamByName('collectorBase').Text                           := BillingData.userBaseQCollectorCode.Text;
                     BillingData.InsertIntegratedColl.ParamByName('gram').AsCurrency                              := Billgram;
                     BillingData.InsertIntegratedColl.Execute;

                     //=========================================================
                     //=========================================================
                     //=========================================================

                     ARUpdateQuery.ParamByName('Code').Text                                 := MasterCode.Text;
                     ARUpdateQuery.ParamByName('Date').AsDate                               := SetForm.PostDate.Date;
                     ARUpdateQuery.ParamByName('Document').Text                             := POEBRNumber[I];
                     ARUpdateQuery.ParamByName('BillMonth').Text                            := SBBillMonth.Text;
                     ARUpdateQuery.ParamByName('Credit').AsCurrency                         := PAmount[I];
                     ARUpdateQuery.ParamByName('CollectorCode').Text                        := TORORNumber.Text;
                     ARUpdateQuery.ParamByName('VATDiscAmt').AsCurrency                     := BillVATDiscAmt;
                     ARUpdateQuery.ParamByName('VATDistDiscAmt').AsCurrency                 := BillVATDistDiscAmt;
                     ARUpdateQuery.ParamByName('VATGenCODiscAmt').AsCurrency                := BillVATGenCoDiscAmt;
                     ARUpdateQuery.ParamByName('VATTransCODiscAmt').AsCurrency              := BillVATTransCoDiscAmt;
                     ARUpdateQuery.ParamByName('VATSystemLossDiscAmt').AsCurrency           := BillVATSystemLossDiscAmt;
                     ARUpdateQuery.ParamByName('VAT').AsCurrency                            := BillVAT;
                     ARUpdateQuery.ParamByName('VATDist').AsCurrency                        := BillVATDist;
                     ARUpdateQuery.ParamByName('VATGenCO').AsCurrency                       := VATGenCO;
                     ARUpdateQuery.ParamByName('VATTransCO').AsCurrency                     := VATTransCO;
                     ARUpdateQuery.ParamByName('VATSystemLossGenCO').AsCurrency             := VATSystemLoss;
                     ARUpdateQuery.ParamByName('VATSystemLossTransCO').AsCurrency           := 0.00;
                     ARUpdateQuery.Execute;

                     InsertSpotTmp.ParamByName('ORNumber').Text                             := ORNospotBTmp;
                     InsertSpotTmp.ParamByName('AccountCode').Text                          := MasterCode.Text;
                     InsertSpotTmp.ParamByName('Area').Text                                 := MasterArea.Text;
                     InsertSpotTmp.ParamByName('Book').Text                                 := MasterBook.Text;
                     InsertSpotTmp.ParamByName('AccountNumber').Text                        := MasterAccountNumber.Text;
                     InsertSpotTmp.ParamByName('Name').Text                                 := MasterName.Text;
                     InsertSpotTmp.ParamByName('BillMonth').Text                            := SBBillMonth.Text;
                     InsertSpotTmp.ParamByName('TotalBill').AsCurrency                      := PAmount[I];
                     InsertSpotTmp.ParamByName('DatePaid').AsDate                           := SetForm.PostDate.Date;
                     InsertSpotTmp.ParamByName('KilowattHour').AsFloat                      := SBKilowattHour.AsFloat;
                     InsertSpotTmp.Execute;
                 end;
              end
              else
              begin


               InsertOP.Close;
               InsertOP.ParambyName('Area').Text                     := SetForm.AreaCodeStr;
               InsertOP.ParambyName('Name').Text                     := Name.Text;
               InsertOP.ParambyName('Address').Text                  := copy(Address.Text,1,15);
               InsertOP.ParambyName('OPDescription').Text            := PAccountDesc[I];
               InsertOP.ParambyName('OPAmount').AsCurrency           := PAmount[I];
               InsertOP.ParambyName('Total').AsCurrency              := PAmount[I];
               InsertOP.ParambyName('DatePaid').AsDate               := SetForm.PostDate.Date;
               InsertOP.ParambyName('DateRemitted').AsDate           := SetForm.PostDate.Date;
               InsertOP.ParambyName('EncoderCode').Text              := SetForm.Batch.Text;
               InsertOP.ParambyName('CollectorCode').Text            := Copy(SetForm.usersCollectorCode.Text,1,3);
               InsertOP.ParambyName('Sundries').Text                 := SureTOR;
               InsertOP.ParambyName('TellerORNumber').Text           := SureTOR;
               InsertOP.ParambyName('UCME').AsCurrency               := ManUCME;
               InsertOP.ParambyName('UCEC').AsCurrency               := ManUCEC;
               InsertOP.ParambyName('VAT').AsCurrency                := ManVatNetGenco +
                                                                        ManVatNetTransco +
                                                                        ManVatNetSystemLoss +
                                                                        ManVatNetDist;

               InsertOP.ParambyName('VATDist').AsCurrency              := ManVatNetDist;
               InsertOP.ParambyName('VATGenCo').AsCurrency             := ManVatNetGenco;
               InsertOP.ParambyName('VATTransCo').AsCurrency           := ManVatNetTransco;
               InsertOP.ParambyName('VATSystemLossGenco').AsCurrency   := ManVatNetTransco;
               InsertOP.ParambyName('VATSystemLossTransco').AsCurrency := 0;
               InsertOP.ParambyName('TransformerRental').AsCurrency    := ManTransformer;
               InsertOP.ParamByName('areaCollector').Text              := BillingData.userBaseQarea.Text;

               IF FilterNoneConsumerMode = True then
               InsertOP.ParambyName('AccntNumber').Text := nc_pilferageQAccountNumber.Text else
               InsertOP.ParambyName('AccntNumber').Value := Null;

               InsertOP.Execute;

               //=====Insert cashier user base==================================
               //===============================================================
               //===============================================================
               BillingData.InsertOPintegrated.Close;
               BillingData.InsertOPintegrated.ParambyName('Area').Text                     := SetForm.AreaCodeStr;
               BillingData.InsertOPintegrated.ParambyName('Name').Text                     := Name.Text;
               BillingData.InsertOPintegrated.ParambyName('Address').Text                  := copy(Address.Text,1,15);
               BillingData.InsertOPintegrated.ParambyName('OPDescription').Text            := PAccountDesc[I];
               BillingData.InsertOPintegrated.ParambyName('OPAmount').AsCurrency           := PAmount[I];
               BillingData.InsertOPintegrated.ParambyName('Total').AsCurrency              := PAmount[I];
               BillingData.InsertOPintegrated.ParambyName('DatePaid').AsDate               := SetForm.PostDate.Date;
               BillingData.InsertOPintegrated.ParambyName('DateRemitted').AsDate           := SetForm.PostDate.Date;
               BillingData.InsertOPintegrated.ParambyName('EncoderCode').Text              := SetForm.Batch.Text;
               BillingData.InsertOPintegrated.ParambyName('CollectorCode').Text            := Copy(SetForm.usersCollectorCode.Text,1,3);
               BillingData.InsertOPintegrated.ParambyName('Sundries').Text                 := SureTOR;
               BillingData.InsertOPintegrated.ParambyName('TellerORNumber').Text           := SureTOR;
               BillingData.InsertOPintegrated.ParambyName('UCME').AsCurrency               := ManUCME;
               BillingData.InsertOPintegrated.ParambyName('UCEC').AsCurrency               := ManUCEC;
               BillingData.InsertOPintegrated.ParambyName('VAT').AsCurrency                := ManVatNetGenco +
                                                                        ManVatNetTransco +
                                                                        ManVatNetSystemLoss +
                                                                        ManVatNetDist;

               BillingData.InsertOPintegrated.ParambyName('VATDist').AsCurrency              := ManVatNetDist;
               BillingData.InsertOPintegrated.ParambyName('VATGenCo').AsCurrency             := ManVatNetGenco;
               BillingData.InsertOPintegrated.ParambyName('VATTransCo').AsCurrency           := ManVatNetTransco;
               BillingData.InsertOPintegrated.ParambyName('VATSystemLossGenco').AsCurrency   := ManVatNetTransco;
               BillingData.InsertOPintegrated.ParambyName('VATSystemLossTransco').AsCurrency := 0;
               BillingData.InsertOPintegrated.ParambyName('TransformerRental').AsCurrency    := ManTransformer;
               BillingData.InsertOPintegrated.ParamByName('areaCollector').Text              := BillingData.userBaseQarea.Text;

               IF FilterNoneConsumerMode = True then
               BillingData.InsertOPintegrated.ParambyName('AccntNumber').Text  := nc_pilferageQAccountNumber.Text else
               BillingData.InsertOPintegrated.ParambyName('AccntNumber').Value := Null;

               BillingData.InsertOPintegrated.ParamByName('collectorBase').Text:= areaCollector;

               BillingData.InsertOPintegrated.Execute;
               //===============================================================
               //===============================================================
               //===============================================================

               ManTotalAmount       := 0.00;
               ManUCEC              := 0.00;
               ManUCME              := 0.00;
               ManVatNetGenco       := 0.00;
               ManVatNetTransco     := 0.00;
               ManVatNetSystemLoss  := 0.00;
               ManVatNetDist        := 0.00;
               ManTransformer       := 0.00;

               IF FilterNoneConsumerMode = True then
               begin
                 try

                   codeNC  := nc_pilferageQentry.AsInteger;
                   idocNC  := nc_ocledgerQidOCLedger.AsInteger;

                   //showmessage(inttostr(idocNC));
                   NCtmpQ.Close;
                   NCtmpQ.SQL.Clear;
                   NCtmpQ.SQL.Add('Update ocledgernonec set ');
                   NCtmpQ.SQL.Add(' TORNumber = :TORNumber, datepaid = :datepaid ');
                   NCtmpQ.SQL.Add(' Where idOCledger like :idOCledger');
                   NCtmpQ.ParamByName('TORNumber').Text       := SureTOR;
                   NCtmpQ.ParamByName('datepaid').AsDate      := SetForm.PostDate.Date;
                   NCtmpQ.ParamByName('idOCledger').AsInteger := idocNC;
                   NCtmpQ.Execute;

                   NCtmpQ.Close;
                   NCtmpQ.SQL.Clear;
                   NCtmpQ.SQL.Add('Select count(*) as countPaid,sum(ifnull(Amount,0)) as totalAmountPaid from ocledgernonec ');
                   NCtmpQ.SQL.Add(' where code = :code and TORNumber is not null and datepaid is not null group by code');
                   NCtmpQ.ParamByName('code').AsInteger := codeNC;
                   NCtmpQ.Open;

                   totalAmountNC := NCtmpQ.FieldByName('totalAmountPaid').AsFloat;
                   countPaidNC   := NCtmpQ.FieldByName('countPaid').AsInteger;

                   NCtmpQ.Close;
                   NCtmpQ.SQL.Clear;
                   NCtmpQ.SQL.Add('Update pilferbillnonec set ');
                   NCtmpQ.SQL.Add(' amountpaid = :amountpaid, ');
                   NCtmpQ.SQL.Add(' balance = (totalbill + penalty) - :amountpaid,');
                   NCtmpQ.SQL.Add(' allpaid = if((totalbill + penalty) <= :amountpaid,1,0) ');
                   NCtmpQ.SQL.Add(' where entry = :entry');
                   NCtmpQ.ParamByName('amountpaid').AsFloat  := totalAmountNC;
                   NCtmpQ.ParamByName('entry').AsInteger     := codeNC;
                   NCtmpQ.Execute;
                 except
                 end;

               end;

               FilterNoneConsumerMode := False;

               try

                   If NewApp = true then
                    begin
                       If PAccountDesc[I] = 'MEMBERSHIP FEE' then
                         begin
                           NewMember.ParamByName('Area').Text       := Area.Text;
                           NewMember.ParamByName('Book').Text       := Book.Text;
                           NewMember.ParamByName('MemberName').Text := Name.Text;
                           NewMember.ParamByName('spouse').Text     := NewApplicantCoMember.Text;
                           NewMember.ParamByName('Address').Text    := Address.Text;
                           NewMember.ParamByName('MFORNumber').Text := SureTOR;
                           NewMember.ParamByName('MFORDate').AsDate := SetForm.PostDate.Date;
                           NewMember.ParamByName('idnewapply').Text := idnewApply_ISD;
                           NewMember.ParamByName('BrgyCode').Text   := Book_ISD;

                           NewMember.Execute;
                         end;

                       If PAccountDesc[I] = 'BILL DEPOSIT' then
                         begin
                           NewConn.ParamByName('area').Text            := Area.Text;
                           NewConn.ParamByName('book').Text            := Book.Text;
                           NewConn.ParamByName('name').Text       	   := Name.Text;
                           NewConn.ParamByName('address').Text    	   := Address.Text;
                           NewConn.ParamByName('remarks').AsString     := NewApplicantremarks.AsString;
                           NewConn.ParamByName('ornumber').Text        := SureTOR;
                           NewConn.ParamByName('datepaid').AsDate      := SetForm.PostDate.Date;
                           NewConn.ParamByName('ratecode').Text        := NewApplicantratecode.Text;
                           newConn.ParamByName('idnewapply').Text      := idnewApply_ISD;
                           NewConn.Execute;
                         end;

                       If NewAppIdComplaints > 0 then
                          begin
                            UpdateComplaints.ParamByName('idcomplaints').AsInteger := NewAppIdComplaints;
                            UpdateComplaints.ParamByName('ORNumber').Text          := SureTOR;
                            UpdateComplaints.ParamByName('ORDate').AsDate          := SetForm.PostDate.Date;
                            UpdateComplaints.Execute;
                          end;

                         UpdateNewApp.ParamByName('idnewapply').AsInteger := NewAppDelete;
                         UpdateNewApp.ParamByName('ORNumber').Text        := SureTOR;
                         UpdateNewApp.ParamByName('ORDate').AsDate        := SetForm.PostDate.Date;
                         UpdateNewApp.Execute;
                         newappdelete := 0;

                    end;

                    If ReconPayment = true then
                      begin
                        UpdateORNumber.ParamByName('idrecon').AsInteger     := ReconID;
                        UpdateORNumber.ParamByName('ORNumber').Text         := SureTOR;
                        UpdateORNumber.ParamByName('ORDate').AsDate         := SetForm.PostDate.Date;
                        UpdateORNumber.Execute;

                        InsertRecon.ParamByName('Code').Text                := Reconcode.Text;
                        InsertRecon.ParamByName('Date').AsDate              := Reconrecondate.AsDateTime;
                        InsertRecon.ParamByName('Area').Text                := ReconArea.Text;
                        InsertRecon.ParamByName('Book').Text                := ReconBook.Text;
                        InsertRecon.ParamByName('AccountNumber').Text       := ReconAccountnumber.Text;
                        InsertRecon.ParamByName('Name').Text                := ReconName.Text;
                        InsertRecon.ParamByName('InitialReading').AsInteger := ReconInitialReading.AsInteger;
                        InsertRecon.ParamByName('MeterBrand').Text          := ReconMeterBrand.Text;
                        InsertRecon.ParamByName('SerialNumber').Text        := ReconSerial.Text;
                        InsertRecon.ParamByName('collectorcode').Text       := Copy(SetForm.usersCollectorCode.Text,1,3);
                        InsertRecon.ParamByName('ornumber').Text            := SureTOR;


                        InsertRecon.execute;

                        UpdateMaster.ParamByName('code').AsInteger          := ReconMasterCode;
                        UpdateMaster.ParamByName('ReconDate').AsDate        := Reconrecondate.AsDateTime;
                        UpdateMaster.Execute;
                        ReconPayment := False;
                      end;

                    If DiscoPayment = true then
                      begin
                        UpdateORDisco.ParamByName('iddisco').AsInteger     := DiscoID;
                        UpdateORDisco.ParamByName('ORNumber').Text         := SureTOR;
                        UpdateORDisco.ParamByName('ORDate').AsDate         := SetForm.PostDate.Date;
                        UpdateORDisco.Execute;

                        InsertDisco.ParamByName('Code').Text               := Discocode.Text;
                        InsertDisco.ParamByName('Date').AsDate             := Discodiscodate.AsDateTime;
                        InsertDisco.ParamByName('Area').Text               := DiscoArea.Text;
                        InsertDisco.ParamByName('Book').Text               := DiscoBook.Text;
                        InsertDisco.ParamByName('AccountNumber').Text      := DiscoAccountnumber.Text;
                        InsertDisco.ParamByName('Name').Text               := DiscoName.Text;
                        InsertDisco.execute;

                        UpdateMasterDisco.ParamByName('code').AsInteger    := DiscoMasterCode;
                        UpdateMasterDisco.ParamByName('DiscoDate').AsDate  := Discodiscodate.AsDateTime;
                        UpdateMasterDisco.Execute;
                        DiscoPayment := False;
                      end;

               except
                  on E: Exception do
                  begin
                   MessageDlg('Error...'+E.Message, mtWarning, [mbOK], 0);
                   exit;
                  end;
               end;

                 {==============================================================}
                 { Remittance Autoposting Start }
                 If (Remittance = True) and (GroupSelect.Active = True) then
                   begin

                   AutoPostPanel.Left      := 316;
                   AutoPostPanel.Top       := 189;
                   AutoPostPanel.BringToFront;
                   AutoPostPanel.Visible   := True;
                   APCollectorCode.Caption := groupselectcollectorcode.Text;
                   APCollectorName.Caption := groupselectname.Text;
                   APDatePaid.Caption      := groupselectdatepaid.Text;
                   APBatch.Caption         := groupselectencodercode.Text;
                   APORNumber.Caption      := SureTOR;

                   Application.ProcessMessages;

                     If (groupselectusertype.Text = '1') or
                        (groupselectusertype.Text = '7') or
                        (groupselectusertype.Text = '8') then
                     begin
                          Try
                           AutoPostMemo.Lines.Add('Deleting Unpaid Bills File');
                           RemittanceDeleteUnpaidBills.ParamByName('CollectorCode').Text  := groupselectcollectorcode.Text;
                           RemittanceDeleteUnpaidBills.ParamByName('DatePaid').AsDate     := groupselectdatepaid.AsDateTime;
                           RemittanceDeleteUnpaidBills.ParamByName('Batch').Text          := groupselectencodercode.Text;
                           RemittanceDeleteUnpaidBills.Execute;
                           AutoPostMemo.Lines.Add(IntToStr(RemittanceDeleteUnpaidBills.RowsAffected)+' Rows affected');
                          except
                             on E: Exception do
                             begin
                              MessageDlg('Error...'+E.Message, mtWarning, [mbOK], 0);
                              exit;
                             end;
                           end;

                          Try
                           AutoPostMemo.Lines.Add('Updating A/R Ledger File');
                           RemittanceARUpdate.ParamByName('CollectorCode').Text           := groupselectcollectorcode.Text;
                           RemittanceARUpdate.ParamByName('DatePaid').AsDateTime          := groupselectdatepaid.AsDateTime;
                           RemittanceARUpdate.ParamByName('Batch').Text                   := groupselectencodercode.Text;
                           RemittanceARUpdate.ParamByName('CashierOR').Text               := JustStr(IntToStr(ORCount),'0',9,1)+'-'+groupselectcollectorcode.Text;
                           RemittanceARUpdate.Execute;
                           AutoPostMemo.Lines.Add(IntToStr(RemittanceARUpdate.RowsAffected)+' Rows affected');
                          except
                             on E: Exception do
                             begin
                              MessageDlg('Error...'+E.Message, mtWarning, [mbOK], 0);
                              exit;
                             end;
                           end;
                     end;

                      Try

                       AutoPostMemo.Lines.Add('Updating Posted Collection Status');
                       RemittanceUpdateCollectionQuery.ParamByName('CollectorCode').Text   := groupselectcollectorcode.Text;
                       RemittanceUpdateCollectionQuery.ParamByName('DatePaid').AsDateTime  := groupselectdatepaid.AsDateTime;
                       RemittanceUpdateCollectionQuery.ParamByName('Batch').Text           := groupselectencodercode.Text;
                       RemittanceUpdateCollectionQuery.ParamByName('cashieror').Text       := SureTOR;
                       RemittanceUpdateCollectionQuery.ParamByName('areaCollector').Text   := BillingData.userBaseQarea.Text;
                       RemittanceUpdateCollectionQuery.Execute;
                       AutoPostMemo.Lines.Add(IntToStr(RemittanceUpdateCollectionQuery.RowsAffected)+' Rows affected');
                      except
                         on E: Exception do
                         begin
                          MessageDlg('Error...'+E.Message, mtWarning, [mbOK], 0);
                          exit;
                         end;
                       end;

                       //=========Update collection to user base================
                       //=======================================================
                       //=======================================================
                       Try
                       BillingData.RemittanceUpdateCollIntegrated.ParamByName('CollectorCode').Text   := groupselectcollectorcode.Text;
                       BillingData.RemittanceUpdateCollIntegrated.ParamByName('DatePaid').AsDateTime  := groupselectdatepaid.AsDateTime;
                       BillingData.RemittanceUpdateCollIntegrated.ParamByName('Batch').Text           := groupselectencodercode.Text;
                       BillingData.RemittanceUpdateCollIntegrated.ParamByName('cashieror').Text       := SureTOR;
                       BillingData.RemittanceUpdateCollIntegrated.ParamByName('areaCollector').Text   := BillingData.userBaseQarea.Text;
                       BillingData.RemittanceUpdateCollIntegrated.Execute;
                      except
                         on E: Exception do
                         begin
                          MessageDlg('Error...'+E.Message, mtWarning, [mbOK], 0);
                          exit;
                         end;
                       end;
                       //=======================================================
                       //=======================================================
                       //=======================================================

                      Try
                       AutoPostMemo.Lines.Add('Closing Transaction for Remitted Collection');
                       UpdateRemitted.ParamByName('tellercode').Text   := groupselectcollectorcode.Text;
                       UpdateRemitted.ParamByName('ordate').AsDateTime := groupselectdatepaid.AsDateTime;
                       UpdateRemitted.ParamByName('Batch').Text        := groupselectencodercode.Text;
                       UpdateRemitted.Execute;
                       AutoPostMemo.Lines.Add(IntToStr(UpdateRemitted.RowsAffected)+' Rows affected');
                      except
                         on E: Exception do
                         begin
                          MessageDlg('Error...'+E.Message, mtWarning, [mbOK], 0);
                          exit;
                         end;
                       end;

                     If (groupselectusertype.Text = '2') then
                      begin
                        AutoPostMemo.Lines.Add('Updating OR Number in A/R Ledger for Tellers');
                        PutCashierORinAR.ParamByName('cashieror').Text      := JustStr(IntToStr(ORCount-1),'0',9,1)+'-'+groupselectcollectorcode.Text;
                        PutCashierORinAR.ParamByName('collectorcode').Text  := groupselectcollectorcode.Text;
                        PutCashierORinAR.ParamByName('datepaid').AsDate     := groupselectdatepaid.AsDateTime;
                        PutCashierORinAR.ParamByName('batch').Text          := groupselectencodercode.Text;
                        PutCashierORinAR.Execute;
                        AutoPostMemo.Lines.Add(IntToStr(PutCashierORInAR.RowsAffected)+' Rows affected');
                      end;

                      GroupSelect.Close;
                      Remittance       := False;
                      DonePost.Visible := True;

                   end;
                 { end remittence auto post }
                 {==============================================================}

              end;

            end;
         except
            on E: Exception do
            begin
             MessageDlg('Error...'+E.Message, mtWarning, [mbOK], 0);
             exit;
            end;
         end;

         If SetForm.FormOpt.ItemIndex = 0 then PrintTellerAR;
         If SetForm.FormOpt.ItemIndex = 1 then PrintOEBROld;
         If (SetForm.FormOpt.ItemIndex = 2) AND (NOT(SetForm.usersncecco.AsBoolean)) then PrintOEBRNew;
         //If SetForm.FormOpt.ItemIndex = 3 then PrintCashierOR; ====================

         ORPrinted := True;
         PFBill    := False;
         UnPBP.EnableControls;
         UnPB.Close;
         MessageDlg('Printing and Posting done....', mtConfirmation, [mbOK], 0);

         Memo1.Lines.Clear;
         Memo2.Lines.Clear;
         Memo3.Lines.Clear;
         FillChar(PRecord,SizeOf(PRecord),#0);
         FillChar(ArrearBillMonth,SizeOf(ArrearBillMonth),#0);
         FillChar(ArrearOebrNumber,SizeOf(ArrearOebrNumber),#0);
         FillChar(ArrearAmount,SizeOf(ArrearAmount),#0);

         Area.Text                     := '';
         Book.Text                     := '';
         book_ISD                      := '';
         idnewApply_ISD                := '';
         ConnCode.Text                 := '';
         Name.Text                     := '';
         Address.Text                  := '';
         PArray                        := 0;
         StillProcessing               := False;
         ConsumerDataBox.Enabled       := False;
         ConsumerDataBox.OnExit        := ConsumerDataBoxExit;
         OutstandingAccountBox.Enabled := False;
         OtherPaymentsBox.Enabled      := False;
         PaymentPanel.Visible          := False;
         OCPPayment                    := False;
         TellerPOSForm.Width           := MinW;
         SearchAccount.Text            := '';
         MainPanel.Enabled             := True;
         TotalPayment                  := 0;
         OR_finalVTotal                := 0;
         OR_withholdingTotal           := 0;
         OR_finalVTotal                := 0;
         OR_withholdingTotal           := 0;
         NewAppIdComplaints            := 0;
         ReconID                       := 0;
         ReconPayment                  := false;
         ORPrinted                     := False;
         Master.Close;

         If (SetForm.usersUserType.Text = '5') then
         begin
          ConsumerDataBox.Enabled       := True;
          btnGetBatch.Enabled           := True;
          Name.SetFocus;
          PArray                        := 0;
          FillChar(PRecord,SizeOf(PRecord),#0);
          TotalPayment                  := 0;
          DonePostClick(Self);
         end
         else
          SearchAccount.SetFocus;
         exit;
         end;

vk_f12 : begin
         If not ORPrinted then exit;
         If PaymentPanel.Visible = false then exit;
         If TotalPayment <= 0 then exit;

         try
         TOR.Append;
         TORORNumber.Text           := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
         TORORDate.Text             := DateToStr(SetForm.PostDate.Date);
         TORName.Text               := 'PAPER JAM';
         TORbatch.Text              := SetForm.Batch.Text;
         TORTellerCode.Text         := SetForm.usersCollectorCode.Text;
         TORTellerName.Text         := SetForm.usersName.Text;
         TORORStatus.Text           := '2';
         TOR.Post;
         except
            on E: Exception do
           begin
            MessageDlg(E.Message, mtWarning, [mbOK], 0);
            exit;
           end;
         end;

         Inc(ORCount);

         UpdateORCount.ParamByName('collectorcode').Text := SetForm.usersCollectorCode.Text;
         UpdateORCount.ParamByName('orcount').AsInteger  := ORCount;
         UpdateORCount.Execute;

         TellerOR.Caption     := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
         StaticText15.Caption := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;

         ORPrinted := False;
         StaticText14.Caption := 'F4-CANCEL | F5-PRINT TELLER OR';
        end;

end;
end;


Procedure TTellerPOSForm.PrintCashierOR;
Var I : Integer;
    fvat,WthheldTax: Double;
begin
AssignFile(Lst,'LPT1');
Rewrite(Lst);
If IOResult <> 0 then
begin
 ShowMessage('Printer not Ready');
 Exit;
end;

 With PRecord do
  begin
   Write(lst,#27+'P',#18);
   For I := 1 to 3 do Writeln(Lst);
   
   Writeln(Lst,' ':4,Juststr(Name.Text,' ',26,0),Juststr(DateToStr(SetForm.PostDate.Date),' ',10,1),' ':7,
                     Juststr(Name.Text,' ',23,0),Juststr(DateToStr(SetForm.PostDate.Date),' ',10,1));

   Writeln(Lst,' ':7,Juststr(SearchAccount.text,' ',33,0),' ':9,
                     Juststr(SearchAccount.text,' ',31,0));
   Writeln(lst);
   If remittance = False then
   begin
     Write(Lst,#27+'M');
     Writeln(Lst);
     For I := 1 to 16 do
     begin
        if(I<16) then
        begin
            Writeln(Lst,JustStr(PParticular[I]+PEVATStr[I],' ',32,0),
                        JustStr(Format(PAmount[I],'##,###,###.##'),' ',16,1),' ':3,
                        JustStr(PParticular[I]+PEVATStr[I],' ',31,0),
                        JustStr(Format(PAmount[I],'##,###,###.##'),' ',14,1));
        end
        else
        begin
          Writeln(Lst,'  '+isoQueryisoNumber.Text+'   '+isoQueryrevision.Text+'   '+isoQuerydateF.Text);
        end;
     end;
   end else
   begin
     Write(Lst,#27+'M');
     Writeln(Lst,JustStr('REMITTANCE',' ',32,0),
                 JustStr(Format(0.00,'##,###,###.##'),' ',16,1),' ':3,
                 JustStr('REMITTANCE',' ',31,0),
                 JustStr(Format(0.00,'##,###,###.##'),' ',14,1));
     For I := 1 to 16 do
     begin
       if(I<16) then
       begin

         If PRemittanceAmount[I] <> 0 then
         begin
           Writeln(Lst,JustStr(PRemittance[I],' ',32,0),
                       JustStr(Format(PRemittanceAmount[I],'##,###,###.##'),' ',16,1),' ':3,
                       JustStr(PRemittance[I],' ',31,0),
                       JustStr(Format(PRemittanceAmount[I],'##,###,###.##'),' ',14,1));

           if PRemittance[I]='FINAL VAT' then
           fvat := PRemittanceAmount[I];

           if PRemittance[I]='WITHHOLDING TAX' then
           WthheldTax := PRemittanceAmount[I];
         end else
         Writeln(Lst);

       end
       else
       begin

        Writeln(Lst,'  '+isoQueryisoNumber.Text+'   '+isoQueryrevision.Text+'   '+isoQuerydateF.Text);

       end;
     end;

   end;

   Writeln(Lst);
   Write(Lst,#27+'P');
   Writeln(Lst,Juststr(Format(TotalPayment+fvat+WthheldTax,'##,###,###.##'),' ',40,1),' ':2,
               Juststr(Format(TotalPayment+fvat+WthheldTax,'##,###,###.##'),' ',38,1));

   Writeln(Lst,' ':9,Juststr(Format(StrToCurr(Cash.Text),'##,###,###.##'),' ',31,0),' ':11,
                     Juststr(Format(StrToCurr(Cash.Text),'##,###,###.##'),' ',29,0));

   Writeln(Lst,' ':9,Juststr(Format(StrToCurr(CheckAmount.Text),'##,###,###.##'),' ',16,0),Juststr(SetForm.usersName.Text,' ',15,0),' ':11,
                     Juststr(Format(StrToCurr(CheckAmount.Text),'##,###,###.##'),' ',16,0),Juststr(SetForm.usersName.Text,' ',13,0));

   Writeln(Lst,' ':9,Juststr(Bank.Text,' ',31,0),' ':11,
                     Juststr(Bank.Text,' ',29,0));

   Writeln(Lst,' ':9,Juststr(CheckNumber.Text,' ',31,0),' ':11,
                     Juststr(CheckNumber.Text ,' ',29,0));


   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
  end;

CloseFile(Lst);

Insertprintedtor.Close;
Insertprintedtor.ParambyName('ORNUMBER').text        := JustStr(IntToStr(ORCount),'0',9,1)+SetForm.usersCollectorCode.Text;
Insertprintedtor.ParambyName('ORDATE').AsDate        := SetForm.PostDate.Date;

If Master.Active then
Insertprintedtor.ParambyName('ACCOUNTNUMBER').text   := MasterAccountNumber.Text else
Insertprintedtor.ParambyName('ACCOUNTNUMBER').text   := '';

Insertprintedtor.ParambyName('NAME').text            := Name.Text;
Insertprintedtor.ParambyName('ADDRESS').text         := Address.Text;
Insertprintedtor.ParambyName('AMOUNT').AsCurrency    := Roundoff(TotalPayment);
Insertprintedtor.ParambyName('TELLERCODE').text      := SetForm.usersCollectorCode.Text;
Insertprintedtor.ParambyName('TELLERNAME').text      := SetForm.usersName.Text;

If CheckAmount.Text <> '' then
begin
  Insertprintedtor.ParambyName('CHECKNUMBER').text   := CheckNumber.Text;
  Insertprintedtor.ParambyName('CHECKDATE').AsDate   := CheckDate.Date;
  Insertprintedtor.ParambyName('BANK').text          := Bank.Text;
  try
  Insertprintedtor.ParambyName('CHECKAMOUNT').AsCurrency := StrToCurr(CheckAmount.Text);
  except
  Insertprintedtor.ParambyName('CHECKAMOUNT').AsCurrency := 0.00;
  end;
end;

If Cash.Text <> '' then
try
Insertprintedtor.ParambyName('CASHTENDERED').AsCurrency  := StrToCurr(Cash.Text);
except
Insertprintedtor.ParambyName('CASHTENDERED').AsCurrency  := 0.00;
end;
Insertprintedtor.ParambyName('ORSTATUS').text      := '2';

Try
Insertprintedtor.Execute;
except
  on E: Exception do
  begin
   MessageDlg('Error.. '+E.Message, mtWarning, [mbOK], 0);
   exit;
  end;
end;

MessageDlg('Printing done.', mtWarning, [mbOK], 0);
end;


procedure TTellerPOSForm.printOEBRlabelClick(Sender: TObject);
begin
  LoadNceccoOEBRPrinting;
end;

Procedure TTellerPOSForm.PrintTellerAR;
Var I : Integer;
begin
AssignFile(Lst,'LPT1');
Rewrite(Lst);
If IOResult <> 0 then
begin
 ShowMessage('Printer not Ready');
 Exit;
end;

 With PRecord do
  begin
   Write(lst,#27+'P',#18);
   For I := 1 to 3 do Writeln(Lst);

   Writeln(Lst,JustStr(TimeToStr(Now),' ',15,0),Juststr(DateToStr(SetForm.PostDate.Date),' ',25,1),' ':2,
               JustStr(TimeToStr(Now),' ',15,0),Juststr(DateToStr(SetForm.PostDate.Date),' ',23,1));

   Writeln(Lst);

   Writeln(Lst,Juststr(SearchAccount.text,' ',40,0),' ':2,
               SearchAccount.Text);

   Writeln(Lst,Juststr(Name.Text,' ',40,0),' ':2,
               Name.Text);

   Writeln(Lst,Juststr(Address.Text,' ',40,0),' ':2,
               Address.Text);

   Write(Lst,#27+'M');
   Writeln(Lst,'      Bill Number         EVAT                          Bill Number         EVAT ');
   For I := 1 to 15 do
   Writeln(Lst,JustStr(PParticular[I]+PEVATStr[I],' ',32,0),
               JustStr(Format(PAmount[I],'##,###,###.##'),' ',16,1),' ':3,
               JustStr(PParticular[I]+PEVATStr[I],' ',31,0),
               JustStr(Format(PAmount[I],'##,###,###.##'),' ',14,1));

   Write(Lst,#27+'P');
   Writeln(Lst,Juststr(Format(TotalPayment,'##,###,###.##'),' ',40,1),' ':2,
               Juststr(Format(TotalPayment,'##,###,###.##'),' ',38,1));


   Writeln(Lst,' ':9,Juststr(Format(StrToCurr(Cash.Text),'##,###,###.##'),' ',31,0),' ':11,
                     Juststr(Format(StrToCurr(Cash.Text),'##,###,###.##'),' ',29,0));

   Writeln(Lst,' ':9,Juststr(Format(StrToCurr(CheckAmount.Text),'##,###,###.##'),' ',31,0),' ':11,
                     Juststr(Format(StrToCurr(CheckAmount.Text),'##,###,###.##'),' ',29,0));

   Writeln(Lst,' ':9,Juststr(Bank.Text,' ',31,0),' ':11,
                     Juststr(Bank.Text ,' ',29,0));

   Writeln(Lst,' ':9,Juststr(CheckNumber.Text,' ',16,0),Juststr(SetForm.usersName.Text,' ',15,2),' ':11,
                     Juststr(CheckNumber.Text,' ',16,0),Juststr(SetForm.usersName.Text,' ',13,2));

   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
   Writeln(Lst);
  end;

CloseFile(Lst);

Insertprintedtor.Close;
Insertprintedtor.ParambyName('ORNUMBER').text        := JustStr(IntToStr(ORCount),'0',9,1)+SetForm.usersCollectorCode.Text;
Insertprintedtor.ParambyName('ORDATE').AsDate        := SetForm.PostDate.Date;

If Master.Active then
Insertprintedtor.ParambyName('ACCOUNTNUMBER').text   := MasterAccountNumber.Text else
Insertprintedtor.ParambyName('ACCOUNTNUMBER').text   := '';

Insertprintedtor.ParambyName('NAME').text            := Name.Text;
Insertprintedtor.ParambyName('ADDRESS').text         := Address.Text;
Insertprintedtor.ParambyName('AMOUNT').AsCurrency    := Roundoff(TotalPayment);
Insertprintedtor.ParambyName('TELLERCODE').text      := SetForm.usersCollectorCode.Text;
Insertprintedtor.ParambyName('TELLERNAME').text      := SetForm.usersName.Text;

If CheckAmount.Text <> '' then
begin
  Insertprintedtor.ParambyName('CHECKNUMBER').text   := CheckNumber.Text;
  Insertprintedtor.ParambyName('CHECKDATE').AsDate   := CheckDate.Date;
  Insertprintedtor.ParambyName('BANK').text          := Bank.Text;
  try
  Insertprintedtor.ParambyName('CHECKAMOUNT').AsCurrency := StrToCurr(CheckAmount.Text);
  except
  Insertprintedtor.ParambyName('CHECKAMOUNT').AsCurrency := 0.00;
  end;
end;

If Cash.Text <> '' then
try
Insertprintedtor.ParambyName('CASHTENDERED').AsCurrency  := StrToCurr(Cash.Text);
except
Insertprintedtor.ParambyName('CASHTENDERED').AsCurrency  := 0.00;
end;
Insertprintedtor.ParambyName('ORSTATUS').text      := '2';

Try
Insertprintedtor.Execute;
except
  on E: Exception do
  begin
   MessageDlg('Error.. '+E.Message, mtWarning, [mbOK], 0);
   exit;
  end;
end;

MessageDlg('Printing done.', mtWarning, [mbOK], 0);
end;


procedure TTellerPOSForm.Re1Click(Sender: TObject);
begin
  TOR.Refresh;
end;

Procedure TTellerPOSForm.PrintOEBROld;
Var I : Integer;
    BM,RT : String;

Function PRateStr(Data : Currency) : String;
Var SStr : String;
begin
  If Data <> 0 then Str(Data:8:4,SStr) else SStr := '';
  PRateStr := JustStr(SStr,' ',8,0);
end;

begin
AssignFile(Lst,'LPT1');
Rewrite(Lst);
If IOResult <> 0 then
begin
 ShowMessage('Printer not Ready');
 Exit;
end;

 With PRecord do
  begin

  case SetForm.PrintOpt.ItemIndex of
  0 : begin // default  ========
       write(lst,#27+'P',#18,#15);
       Write(Lst,#27+'3'+#23);
      end;
  1 : begin // Epson LX ii======
       write(lst,#27+'P',#18,#15);
       Write(Lst,#27+'3'+#26);
      end;
  end;

   MRate.Close;
   MRate.ParamByName('BillMonth').Text := FirstBillMonth;
   MRate.Open;

   if MRateWRSw.Text = '0' then
   MRate.FilterSQL := 'RateCode = '+QuotedStr(MasterRateCode.Text) else
   MRate.FilterSQL := 'WRateCode = '+QuotedStr(MasterWRateCode.Text);

   BM := FormatDateTime('MMMM, YYYY',StrToDate(Copy(FirstBillMonth,1,2)+'/01/'+Copy(FirstBillMonth,3,2)));
   RT := '';

   If FirstRate = 'R' then RT := 'Residential';
   If FirstRate = 'L' then RT := 'Low Voltage';
   If FirstRate = 'H' then RT := 'High Voltage';

   writeln(Lst);
   writeln(Lst);
   writeln(Lst,'            ',BM,'                               ',JustStr(MasterAccountNumber.Text,' ',10,0));
   writeln(Lst,' ',JustStr(MasterName.Text,' ',30,0),'            ',
                   JustStr(MasterSerial.Text,' ',25,1));

   writeln(Lst,' ',JustStr(MasterAddress.Text,' ',30,0),'            ',
                   JustStr(RT,' ',25,1));

   writeln(Lst);
   writeln(Lst);
   writeln(Lst,' ',FormatDateTime('mm/dd/yy',BillPreviousDate),' to ',
                   FormatDateTime('mm/dd/yy',BillPresentDate),'     ',
                   JustStr(FirstPresentRead,' ',08,1),'   ',
                   JustStr(FirstPreviousRead,' ',08,1),' ',
                   JustStr(FirstKWHR,' ',06,1),'     ',
                   JustStr(FloatToStr(MasterMultiplier.asfloat),' ',4,0));
   writeln(Lst);
   writeln(Lst,' ':40,PRateStr(MRateGenSysRate.ascurrency),'      ',Format(BillGenSysCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateHostCommRate.AsCurrency),'      ',Format(BillHostCommCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateFOREXRate.AsCurrency),'      ',Format(BillForexCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateVATGenCo.AsCurrency),'      ',Format(VATGenCO,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateTCDemandRate.AsCurrency),'      ',Format(BillTCDemandCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateTCSystemRate.AsCurrency),'      ',Format(BillTCTransSystemCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateVATTransCo.AsCurrency),'      ',Format(VATTransCO,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateSystemLossRate.AsCurrency),'      ',Format(BillSystemLossCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateVATSystemLoss.AsCurrency),'      ',Format(VATSystemLoss,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateDCDemandRate.AsCurrency),'      ',Format(BillDCDemandCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateDCSystemRate.AsCurrency),'      ',Format(BillDCDistributionCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateSCRetailCustRate.AsCurrency),'      ',Format(BillSCRetCustCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateSCSupplySysRate.AsCurrency),'      ',Format(BillSCSupplySysCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateMCRetailCustRate.AsCurrency),'      ',Format(BillMCRetailCustCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateMCSysRate.AsCurrency),'      ',Format(BillMCSystemCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateICCrossSubsidyRate.AsCurrency),'      ',Format(BillICCrossSubsidyCharge,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRatePARARate.AsCurrency),'      ',Format(BillPowerActRateRed,'#,###,###.##'));

   If BillLifelineDiscSubs < 0 then
   writeln(Lst,' ':40,LifelineStr,'      ',Format(BillLifelineDiscSubs,'#,###,###.##'))else
   writeln(Lst,' ':40,PRateStr(MRateLifelineSubsidyRate.AsCurrency),'      ',Format(BillLifelineDiscSubs,'#,###,###.##'));

   writeln(Lst,' ':40,PRateStr(MRateLoanCondo.AsCurrency),'      ',Format(BillLoanCondo,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateLCcustmo.AsCurrency),'      ',Format(BillLCCustMo,'#,###,###.##'));
   writeln(Lst,' ':40,'12% VAT ','      ',Format(BillVATDist,'#,###,###.##'));

(*   If not withDB then
   begin
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   end
   else
   begin
   If BillDiffBillPerKwhr > 0 then
   writeln(Lst,'  TOTAL DIFF BILL JAN''10 CONS ',FloatToStr(DBKwhr):4,' KWHR x ',trim(PRateStr(MRateDiffBillPerKwhr.AsFloat)):6,' / 10 ',Format(BillDiffBillPerKwhr,'#,###,###.##')) else
   writeln(Lst);

   If BillDiffBillPerKW > 0 then
   writeln(Lst,'  TOTAL DIFF BILL JAN''10 CONS ',FloatToStr(DBKw):4,' KW   x ',trim(PRateStr(MRateDIffBillPerKW.AsFloat)):6,' / 10 ',Format(BillDiffBillPerKW,'#,###,###.##')) else
   writeln(Lst);

   If BillDiffBillPerCust > 0 then
   writeln(Lst,'  TOTAL DIFF BILL JAN''10 CONS PER CUSTOMER PER MONTH  ',Format(BillDiffBillPerCust,'#,###,###.##'));
   writeln(Lst);
   end;

   writeln(Lst,' ':40,PRateStr(MRateUCNPCStrandedDebtsRate.AsCurrency),'      ',Format(BillUCNPCStrandedDebts,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateUCNPCStrandedContCostRate.AsCurrency),'      ',Format(BillUCNPCStrandedContCost,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateUCDUStrandedContCostRate.AsCurrency),'      ',Format(BillUCDUStrandedContCost,'#,###,###.##'));
*)

   writeln(Lst);
   If BillSCDisc < 0 then
   writeln(Lst,'  SENIOR CITIZEN DISCOUNT '+Format(BillSCAmt4Disc,'#,###.##')+'x'+Format(MRateSCDiscPercent.AsCurrency,'##.##'),'            ',Format(BillSCDisc,'#,###,###.##'))
   else
   writeln(Lst,'  SENIOR CITIZEN SUBSIDY                ',PRateStr(MRateSCDiscSubs.AsCurrency),'      ',Format(BillSCDisc,'#,###,###.##'));
   writeln(Lst);

   writeln(Lst,' ':40,PRateStr(MRateUCMERate.AsCurrency),'      ',Format(BillUCME,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateUCEqTaxesAndRoyaltiesRate.AsCurrency),'      ',Format(BillUCEqTaxesAndRoyalties,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateUCECRate.AsCurrency),'      ',Format(BillUCEC,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(MRateUCCrossSubsidyRemovalRate.AsCurrency),'      ',Format(BillUCCrossSubRemoval,'#,###,###.##'));
   writeln(Lst,' ':40,PRateStr(0.00),'      ',Format(BillTransformerRental,'#,###,###.##'));

   If BillVATDiscAmt <> 0 then
   begin
    writeln(Lst,'  EVAT Discount                                       ',Format(BillVATDiscAmt,'#,###,###.##'));
    writeln(Lst);
   end else
   begin
    writeln(Lst);
    writeln(Lst);
   end;

   writeln(Lst,' ':40,PRateStr(MRateMCC.AsCurrency),'      ',Format(BillMCC,'#,###,###.##'));

   writeln(Lst,' ',JustStr(BillOCCode1,' ',39,0),PRateStr(0.00),'      ',Format(BillOCAmount1,'#,###,###.##'));
   writeln(Lst,' ',JustStr(BillOCCode2,' ',39,0),PRateStr(0.00),'      ',Format(BillOCAmount2,'#,###,###.##'));
   writeln(Lst,' ',JustStr(BillOCCode3,' ',39,0),PRateStr(0.00),'      ',Format(BillOCAmount3,'#,###,###.##'));

   If BillTransSysAncRefund <> 0 then
   writeln(Lst,' ',JustStr(MRateTransSysAncRefundTitle.Text,' ',39,0),PRateStr(MRateTransSysAncRefund.AsFloat),'      ',Format(BillTransSysAncRefund,'#,###,###.##')) else writeln(lst);

   If BillTransDemAncRefund <> 0 then
   writeln(Lst,' ',JustStr(MRateTransDemAncRefundTitle.Text,' ',39,0),PRateStr(MRateTransDemAncRefund.AsFloat),'      ',Format(BillTransDemAncRefund,'#,###,###.##')) else writeln(lst);

   If BillVATTransAncRefund <> 0 then
   writeln(Lst,' ',JustStr(MRateVATTransAncRefundTitle.Text,' ',39,0),PRateStr(MRateVATTransAncRefund.AsFloat),'      ',Format(BillVATTransAncRefund,'#,###,###.##')) else writeln(lst);

   writeln(Lst,' ':54,Format(BillTotalBill-BillPKVRAmount,'#,###,###.##'));

   If not PFBill then
   begin
     writeln(Lst,' ':13,JustStr(ArrearBillMonth[1],' ',9,0),'  ',JustStr(ArrearOebrNumber[1],' ',15,0),' ':15,Format(ArrearAmount[1],'#,###,###.##'));
     writeln(Lst,' ':13,JustStr(ArrearBillMonth[2],' ',9,0),'  ',JustStr(ArrearOebrNumber[2],' ',15,0),' ':15,Format(ArrearAmount[2],'#,###,###.##'));
     writeln(Lst,' ':13,JustStr(ArrearBillMonth[3],' ',9,0),'  ',JustStr(ArrearOebrNumber[3],' ',15,0),' ':15,Format(ArrearAmount[3],'#,###,###.##'));
     writeln(Lst,' ':13,JustStr(ArrearBillMonth[4],' ',9,0),'  ',JustStr(ArrearOebrNumber[4],' ',15,0),' ':15,Format(ArrearAmount[4],'#,###,###.##'));
     writeln(Lst,' ':13,JustStr(ArrearBillMonth[5],' ',9,0),'  ',JustStr(ArrearOebrNumber[5],' ',15,0),' ':15,Format(ArrearAmount[5],'#,###,###.##'));
     writeln(Lst,' ':13,JustStr(ArrearBillMonth[6],' ',9,0),'  ',JustStr(ArrearOebrNumber[6],' ',15,0),' ':15,Format(ArrearAmount[6],'#,###,###.##'));
   end
   else
   begin
     writeln(Lst,JustStr(ArrearOebrNumber[1],' ',54,0),Format(ArrearAmount[1],'#,###,###.##'));
     writeln(Lst,JustStr(ArrearOebrNumber[2],' ',54,0),Format(ArrearAmount[2],'#,###,###.##'));
     writeln(Lst,JustStr(ArrearOebrNumber[3],' ',54,0),Format(ArrearAmount[3],'#,###,###.##'));
     writeln(Lst,JustStr(ArrearOebrNumber[4],' ',54,0),Format(ArrearAmount[4],'#,###,###.##'));
     writeln(Lst,JustStr(ArrearOebrNumber[5],' ',54,0),Format(ArrearAmount[5],'#,###,###.##'));
     writeln(Lst,JustStr(ArrearOebrNumber[6],' ',54,0),Format(ArrearAmount[6],'#,###,###.##'));
   end;


   If BillAdjAmountApplied > 0 then
   writeln(Lst,'  PANTAWID KURYENTE KATAS NG VAT ni PGMA              ',Format(BillAdjAmountApplied,'#,###,###.##')) else
   If BillPKVRAmount > 0 then
   writeln(Lst,'  PANTAWID RECOVERY ',JustStr(BillPKVROEBRNumber,' ',15,0),' ',
                                      JustStr(BillPKVRBillMonth,' ',4,0),'              ',
                                      Format(BillPKVRAmount,'#,###,###.##')) else
   writeln(Lst);

   If not PFBill then
   writeln(Lst,' ':54,Format((BillTotalBill+
                              ArrearAmount[1]+
                              ArrearAmount[2]+
                              ArrearAmount[3]+
                              ArrearAmount[4]+
                              ArrearAmount[5]+
                              ArrearAmount[6])-
                              BillAdjAmountApplied,'#,###,###.##')) else
   writeln(Lst,' ':54,Format(BillAmountPaid,'#,###,###.##'));


   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst,'  ',Juststr(SetForm.usersName.Text,' ',20,2),' AMT TENDERED ',Juststr(Cash.text,' ',13,0),
                    FormatDateTime('MM/DD/YYYY',SetForm.PostDate.Date),'       ');
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst,'            ',BM,'   ',RT);
   writeln(Lst,' ',JustStr(MasterName.Text,' ',30,0),' ',
                   'Acct# ',JustStr(MasterAccountNumber.Text,' ',10,0),' ',
                   JustStr(FirstKWHR,' ',15,1));

   writeln(Lst,' ',JustStr(MasterAddress.Text,' ',30,0));

   writeln(Lst,' ',JustStr(ArrearBillMonth[1],' ',7,0),' ',
                   JustStr(ArrearBillMonth[2],' ',7,0),' ',
                   JustStr(ArrearBillMonth[3],' ',7,0),' ',
                   JustStr(ArrearBillMonth[4],' ',7,0),' ',
                   JustStr(ArrearBillMonth[5],' ',7,0),' ',
                   JustStr(ArrearBillMonth[6],' ',7,0),' ',
                             FormatDateTime('mm/dd/yy',BillPreviousDate),' to ',
                             FormatDateTime('mm/dd/yy',BillPresentDate));

   writeln(Lst,'           ',Format(VATGenCO,'###,###.##'),
                             JustStr(BillOCCode1,' ',3,1),'   ',
                             Format(BillOCAmount1,'###,###.##'),'         ',
                             JustStr(FirstPresentRead,' ',20,1));

   writeln(Lst,'           ',Format(VATTransCO,'###,###.##'),
                             JustStr(BillOCCode2,' ',3,1),'   ',
                             Format(BillOCAmount2,'###,###.##'),'         ',
                             JustStr(FirstPreviousRead,' ',20,1));

   writeln(Lst,'           ',Format(VATSystemLoss,'###,###.##'),
                             JustStr(BillOCCode3,' ',3,1),'   ',
                             Format(BillOCAmount3,'###,###.##'));

   writeln(Lst,'           ',Format(BillVATDist,'###,###.##'),'      ',
                             Format(BillTransformerRental,'###,###.##'),'         ',
                             FormatDateTime('MM/DD/YYYY',SetForm.PostDate.Date),' ',Juststr(SetForm.usersCollectorCode.Text,' ',3,0));

   writeln(Lst,'           ',Format(BillUCEC,'###,###.##'),'      ',
                             Format(0.00,'###,###.##'));

   If not PFBill then
   writeln(Lst,'           ',Format(BillUCME,'###,###.##'),'      ',
                             Format(0.00,'###,###.##'),'  ',
                             Juststr('AMOUNT  '+Format((BillTotalBill+
                                                        ArrearAmount[1]+
                                                        ArrearAmount[2]+
                                                        ArrearAmount[3]+
                                                        ArrearAmount[4]+
                                                        ArrearAmount[5]+
                                                        ArrearAmount[6])-BillAdjAmountApplied,'#,###,###.##'),' ',34,2)) else

   writeln(Lst,'           ',Format(BillUCME,'###,###.##'),'      ',
                             Format(0.00,'###,###.##'),'  ',
                             Juststr('AMOUNT  '+Format(BillAmountPaid,'#,###,###.##'),' ',34,2));


   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   write(lst,#27+'P',#18,#15);
   Write(Lst,#27+'3'+#30);
   closefile(lst);

  end;

MRate.Close;

Insertprintedtor.Close;
Insertprintedtor.ParambyName('ORNUMBER').text        := JustStr(IntToStr(ORCount),'0',9,1)+SetForm.usersCollectorCode.Text;
Insertprintedtor.ParambyName('ORDATE').AsDate        := SetForm.PostDate.Date;

If Master.Active then
Insertprintedtor.ParambyName('ACCOUNTNUMBER').text   := MasterAccountNumber.Text else
Insertprintedtor.ParambyName('ACCOUNTNUMBER').text   := '';

Insertprintedtor.ParambyName('NAME').text            := Name.Text;
Insertprintedtor.ParambyName('ADDRESS').text         := Address.Text;
Insertprintedtor.ParambyName('AMOUNT').AsCurrency    := Roundoff(TotalPayment);
Insertprintedtor.ParambyName('TELLERCODE').text      := SetForm.usersCollectorCode.Text;
Insertprintedtor.ParambyName('TELLERNAME').text      := SetForm.usersName.Text;

If CheckAmount.Text <> '' then
begin
  Insertprintedtor.ParambyName('CHECKNUMBER').text   := CheckNumber.Text;
  Insertprintedtor.ParambyName('CHECKDATE').AsDate   := CheckDate.Date;
  Insertprintedtor.ParambyName('BANK').text          := Bank.Text;
  try
  Insertprintedtor.ParambyName('CHECKAMOUNT').AsCurrency := StrToCurr(CheckAmount.Text);
  except
  Insertprintedtor.ParambyName('CHECKAMOUNT').AsCurrency := 0.00;
  end;
end;

If Cash.Text <> '' then
try
Insertprintedtor.ParambyName('CASHTENDERED').AsCurrency  := StrToCurr(Cash.Text);
except
Insertprintedtor.ParambyName('CASHTENDERED').AsCurrency  := 0.00;
end;
Insertprintedtor.ParambyName('ORSTATUS').text      := '2';

Try
Insertprintedtor.Execute;
except
  on E: Exception do
  begin
   MessageDlg('Error.. '+E.Message, mtWarning, [mbOK], 0);
   exit;
  end;
end;
end;

Procedure TTellerPOSForm.PrintOEBRNew;
Var I,J     : Integer;
    BM,RT,isoORStab   : String;
    PrnStr  : Array[1..48] of String[48];
    PrnCtr  : Integer;
    ZeroVAT : TMyQuery;
    ZVCon   : Boolean;
    outotal : Double;
    ourate  : Double;
    isou    :Boolean;

Function PRateStr(Data : Currency) : String;
Var SStr : String;
begin
  If Data <> 0 then Str(Data:8:4,SStr) else SStr := '';
  PRateStr := JustStr(SStr,' ',8,0);
end;

begin


AssignFile(Lst,'LPT1');
Rewrite(Lst);
If IOResult <> 0 then
begin
 ShowMessage('Printer not Ready');
 Exit;
end;

 isoQuery.Close;
 isoQuery.ParamByName('reporttype').Text := 'TellerORstab';
 isoQuery.Open;

 With PRecord do
  begin

  case SetForm.PrintOpt.ItemIndex of
  0 : begin // default ===========
       write(lst,#27+'P',#18,#15);
       Write(Lst,#27+'3'+#23);
      end;
  1 : begin // Epson LX ii =======
       write(lst,#27+'P',#18,#15);
       Write(Lst,#27+'3'+#27);
      end;
  end;

   ZVCon := False;

   ZeroVAT := TMyQuery.Create(Self);
   ZeroVAT.Connection := BillingData.MyConnection1;
   ZeroVAT.SQL.Clear;
   ZeroVAT.SQL.Add('Select AccountNumber from ZeroVAT where code = :Code and DateEntered <= :DateEntered');
   ZeroVAT.ParamByName('Code').Text          := MasterCode.Text;
   ZeroVAT.ParamByName('DateEntered').AsDate := BillPresentDate;
   ZeroVAT.Open;

   //Compute Final&Withholding Tax======================
   //===================================================
    finalwithholdinQ.Close;
    finalwithholdinQ.ParamByName('ornumber').Text := SureTOR_fcTax;
    finalwithholdinQ.Open;
   //===================================================
   //===================================================

   if not ZeroVAT.IsEmpty then ZVCon := True;

   ZeroVAT.Close;
   FreeandNil(ZeroVAT);

   MRate.Close;
   MRate.ParamByName('BillMonth').Text := FirstBillMonth;
   MRate.Open;

   if MRateWRSw.Text = '0' then
   MRate.FilterSQL := 'RateCode = '+QuotedStr(MasterRateCode.Text) else
   MRate.FilterSQL := 'WRateCode = '+QuotedStr(MasterWRateCode.Text);


   BM := FormatDateTime('MMMM, YYYY',StrToDate(Copy(FirstBillMonth,1,2)+'/01/'+Copy(FirstBillMonth,3,2)));
   RT := '';

   isou := false;
   if(StrToDate(Copy(FirstBillMonth,1,2)+'/01/'+Copy(FirstBillMonth,3,2))>strToDate('07/01/20')) then
      isou := true;

   If FirstRate = 'R' then RT := 'Residential';
   If FirstRate = 'L' then RT := 'Low Voltage';
   If FirstRate = 'H' then RT := 'High Voltage';

   writeln(Lst);
   writeln(Lst,'            ',BM,'                               ',JustStr(MasterAccountNumber.Text,' ',10,0));
   writeln(Lst,' ',JustStr(MasterName.Text,' ',30,0),'            ',
                   JustStr(MasterSerial.Text,' ',25,1));

   writeln(Lst,' ',JustStr(MasterAddress.Text,' ',30,0),'            ',
                   JustStr(RT,' ',25,1));

   writeln(Lst);
   writeln(Lst);
   writeln(Lst,' ',FormatDateTime('mm/dd/yy',BillPreviousDate),' to ',
                   FormatDateTime('mm/dd/yy',BillPresentDate),'     ',
                   JustStr(FirstPresentRead,' ',08,1),'   ',
                   JustStr(FirstPreviousRead,' ',08,1),' ',
                   JustStr(FirstKWHR,' ',06,1),'     ',
                   JustStr(FloatToStr(MasterMultiplier.asfloat),' ',4,0));
   writeln(Lst);

   FillChar(PrnStr,SizeOf(PrnStr),#0);

   PrnCtr := 1;
   PrnStr[PrnCtr] := '       DESCRIPTION           RATE        AMOUNT';

   Inc(PrnCtr);
   PrnStr[PrnCtr] := '';

   Inc(PrnCtr);
   PrnStr[PrnCtr] := #27+'E'+'GENERATION CHARGES'+#27+'F';
   
   Inc(PrnCtr);
   PrnStr[PrnCtr] := JustStr('Generation',' ',26,0)+PRateStr(MRateGenSysRate.ascurrency )+Format(BillGenSysCharge,'#,###,###.##');

   if BillOtherGenRateAdjV <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Generation Over/Under Rec.',' ',26,0) +PRateStr(MRateOtherGenRateAdj.AsCurrency)+Format(BillOtherGenRateAdjV,'#,###,###.##') ;
    end;

   if Billgram <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('GRAM & ICERA DAA',' ',26,0) +PRateStr(MRateGram.AsCurrency)+Format(Billgram,'#,###,###.##') ;
    end;

   If BillHostCommCharge <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Host to Communities',' ',26,0)+PRateStr(MRateHostCommRate.AsCurrency)+Format(BillHostCommCharge,'#,###,###.##');
    end;

   If BillHostCommCharge <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Forex',' ',26,0)+PRateStr(MRateFOREXRate.AsCurrency)+Format(BillForexCharge,'#,###,###.##');
    end;

   if ZVCon = false then
   If VATGenCO <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('VAT GenCo',' ',26,0)+PRateStr(MRateVATGenCo.AsCurrency)+Format(VATGenCO,'#,###,###.##');
    end;

   Inc(PrnCtr);
   PrnStr[PrnCtr] := '';

   Inc(PrnCtr);
   PrnStr[PrnCtr] := #27+'E'+'TRANSMISSION CHARGES'+#27+'F';

   If BillTCTransSystemCharge <> 0 then
    begin
       Inc(PrnCtr);
       PrnStr[PrnCtr] := JustStr('Transmission System',' ',26,0)+PRateStr(MRateTCSystemRate.AsCurrency)+Format(BillTCTransSystemCharge,'#,###,###.##');
    end;

    If BillTCTransSystemCharge <> 0 then
    begin
       Inc(PrnCtr);
       PrnStr[PrnCtr] := JustStr('Trans. Sys. Over/Under Rec. ',' ',26,0)+PRateStr(MRateOtherTransCostAdj.AsCurrency)+Format(BillOtherTransCostAdjV,'#,###,###.##');
    end;

   If BillTCDemandCharge <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Transmission Demand',' ',26,0)+PRateStr(MRateTCDemandRate.AsCurrency)+Format(BillTCDemandCharge,'#,###,###.##');
    end;

   if (BillOtherTransDemandCostAdjV <> 0) then
      begin
       Inc(PrnCtr);
       PrnStr[PrnCtr] := JustStr('Trans. Demand Over/Under Rec.',' ',26,0) +PRateStr(MRateOtherTransDemandCostAdj.AsCurrency)+
                                                                       Format(BillOtherTransDemandCostAdjV,'#,###,###.##');
      end;

   if ZVCon = false then
   If VATTransCO <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('VAT TransCo',' ',26,0)+PRateStr(MRateVATTransCo.AsCurrency)+Format(VATTransCO,'#,###,###.##');
    end;

   If BillSystemLossCharge <> 0 then
    begin
      Inc(PrnCtr);
      PrnStr[PrnCtr] := JustStr('System Loss',' ',26,0)+PRateStr(MRateSystemLossRate.AsCurrency)+Format(BillSystemLossCharge,'#,###,###.##');
    end;

   If BillOtherSystemLossCostAdjV <> 0 then
    begin
      Inc(PrnCtr);
      PrnStr[PrnCtr] := JustStr('Sys.Loss Over/Under Rec.',' ',26,0)+PRateStr(MRateOtherSystemLossCostAdj.AsCurrency)+Format(BillOtherSystemLossCostAdjV,'#,###,###.##');
    end;

   if ZVCon = false then
   If VATSystemLoss <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('VAT System Loss',' ',26,0)+PRateStr(MRateVATSystemLoss.AsCurrency)+Format(VATSystemLoss,'#,###,###.##');
    end;

   If BillTransSysAncRefund <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr(MRateTransSysAncRefundTitle.Text,' ',26,0)+PRateStr(MRateTransSysAncRefund.AsCurrency)+Format(BillTransSysAncRefund,'#,###,###.##');
    end;

   If BillTransDemAncRefund <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr(MRateTransDemAncRefundTitle.Text,' ',26,0)+PRateStr(MRateTransDemAncRefund.AsCurrency)+Format(BillTransDemAncRefund,'#,###,###.##');
    end;

   If BillVATTransAncRefund <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr(MRateVATTransAncRefundTitle.Text,' ',26,0)+PRateStr(MRateVATTransAncRefund.AsCurrency)+Format(BillVATTransAncRefund,'#,###,###.##');
    end;

   Inc(PrnCtr);
   PrnStr[PrnCtr] := '';

   Inc(PrnCtr);
   PrnStr[PrnCtr] := #27+'E'+'DISTRIBUTION CHARGES'+#27+'F';

   If BillDCDemandCharge <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Distribution Demand',' ',26,0)+PRateStr(MRateDCDemandRate.AsCurrency)+Format(BillDCDemandCharge,'#,###,###.##');
    end;

   If BillDCDistributionCharge <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Distribution System',' ',26,0)+PRateStr(MRateDCSystemRate.AsCurrency)+Format(BillDCDistributionCharge,'#,###,###.##');
    end;

   If BillSCRetCustCharge <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Supply per Cust/Mo.',' ',26,0)+PRateStr(MRateSCRetailCustRate.AsCurrency)+Format(BillSCRetCustCharge,'#,###,###.##');
    end;

   If BillSCSupplySysCharge <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Supply System',' ',26,0)+PRateStr(MRateSCSupplySysRate.AsCurrency)+Format(BillSCSupplySysCharge,'#,###,###.##');
    end;

   If BillMCRetailCustCharge <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Metering Per Cust/Mo.',' ',26,0)+PRateStr(MRateMCRetailCustRate.AsCurrency)+Format(BillMCRetailCustCharge,'#,###,###.##');
    end;

   If BillMCSystemCharge <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Metering System',' ',26,0)+PRateStr(MRateMCSysRate.AsCurrency)+Format(BillMCSystemCharge,'#,###,###.##');
    end;

   If BillLifelineDiscSubs <> 0 then
    begin
     Inc(PrnCtr);

     If BillLifelineDiscSubs < 0 then
     PrnStr[PrnCtr] := JustStr('Lifeline Discount',' ',26,0)+LifeLineStr+Format(BillLifelineDiscSubs,'#,###,###.##') else
     PrnStr[PrnCtr] := JustStr('Lifeline Subsidy',' ',26,0)+PRateStr(MRateLifelineSubsidyRate.AsCurrency)+Format(BillLifelineDiscSubs,'#,###,###.##');

    end;

    If BillOtherLifelineRateCostAdjV <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Lifeline Over/Under Rec.',' ',26,0)+PRateStr(MRateOtherLifelineRateCostAdj.AsCurrency)+Format(BillOtherLifelineRateCostAdjV,'#,###,###.##');
    end;
  
   If BillSCDisc <> 0 then
    begin
     Inc(PrnCtr);

     If BillSCDisc < 0 then
     PrnStr[PrnCtr] := JustStr('SENIOR CIT. DISC'+Format(BillSCAmt4Disc,'#,###.##')+'x'+Format(MRateSCDiscPercent.AsCurrency,'##.##'),' ',34,0)+Format(BillSCDisc,'#,###,###.##') else
     PrnStr[PrnCtr] := JustStr('SENIOR CITIZEN SUBSIDY',' ',26,0)+PRateStr(MRateSCDiscSubs.AsCurrency)+Format(BillSCDisc,'#,###,###.##');

    end;

   If BillOtherSeniorCitizenRateAdjV <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Senior Cit. Over/Under Rec.',' ',26,0)+PRateStr(MRateOtherSeniorCitizenRateAdj.AsCurrency)+Format(BillOtherSeniorCitizenRateAdjV,'#,###,###.##');
    end;

   If BillICCrossSubsidyCharge <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Interclass Cross Adj',' ',26,0)+PRateStr(MRateICCrossSubsidyRate.AsCurrency)+Format(BillICCrossSubsidyCharge,'#,###,###.##');
    end;

   If BillPowerActRateRed <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Power Reduction Act',' ',26,0)+PRateStr(MRatePARARate.AsCurrency)+Format(BillPowerActRateRed,'#,###,###.##');
    end;

   If BillRPTax <> 0 then
    begin
     BillingData.RpTaxQuery.ParamByName('Area').Text      := MasterArea.Text;
     BillingData.RpTaxQuery.ParamByName('BillMonth').Text := FirstBillMonth;
     BillingData.RpTaxQuery.Open;

     if NOT BillingData.RpTaxQuery.IsEmpty then
     begin
       Inc(PrnCtr);
       PrnStr[PrnCtr] := JustStr('Real Property Tax',' ',26,0)+PRateStr(BillingData.RpTaxQueryrateamnt.AsCurrency)+Format(BillRPTax,'#,###,###.##');
     end;

     BillingData.AreaTax.Close;
    end;

   If BillMCC <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Rein. For Sust CAPEX',' ',26,0)+PRateStr(MRateMCC.AsCurrency)+Format(BillMCC,'#,###,###.##');
    end;

   If BillLoanCondo <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Loan Condonation',' ',26,0)+PRateStr(MRateLoanCondo.AsCurrency)+Format(BillLoanCondo,'#,###,###.##');
    end;

   If BillLCCustMo <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('LC Per Cust/Mo',' ',26,0)+PRateStr(MRateLCcustmo.AsCurrency)+Format(BillLCCustMo,'#,###,###.##');
    end;

   if BillPARec <>0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('PAR Recovery',' ',26,0)+PRateStr(MRatePARec.AsCurrency)+Format(BillPARec,'#,###,###.##');
    end;

   if ZVCon = false then
   If BillVATDist <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('VAT Distribution',' ',26,0)+'12% VAT '+Format(BillVATDist,'#,###,###.##');
    end;

   if ZVCon = false then
   If BillVATDiscAmt <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('EVAT Discount',' ',26,0)+PRateStr(0.00)+Format(BillVATDiscAmt,'#,###,###.##');
    end;

   If BillDiffBillPerKwhr <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := '  TOTAL DIFF BILL JAN''10 CONS '+JustStr(FloatToStr(DBKwhr),' ',4,0)+' KWHR x '+JustStr(Trim(PRateStr(MRateDiffBillPerKwhr.AsFloat)),' ',6,0)+' / 10 '+Format(BillDiffBillPerKwhr,'#,###,###.##');
    end;

   If BillDiffBillPerKW <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := '  TOTAL DIFF BILL JAN''10 CONS '+JustStr(FloatToStr(DBKw),' ',4,0)+' KW   x '+JustStr(trim(PRateStr(MRateDIffBillPerKW.AsFloat)),' ',6,0)+' / 10 '+Format(BillDiffBillPerKW,'#,###,###.##');
    end;

   If BillDiffBillPerCust <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := '  TOTAL DIFF BILL JAN''10 CONS PER CUSTOMER PER MONTH  '+Format(BillDiffBillPerCust,'#,###,###.##');
    end;

   Inc(PrnCtr);
   PrnStr[PrnCtr] := '';

   Inc(PrnCtr);
   PrnStr[PrnCtr] := #27+'E'+'UNIVERSAL CHARGES'+#27+'F';


   If BillUCNPCStrandedContCost <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('NPC Stranded Cont Cost',' ',26,0)+PRateStr(MRateUCNPCStrandedContCostRate.AsCurrency)+Format(BillUCNPCStrandedContCost,'#,###,###.##');
    end;

   If BillUCDUStrandedContCost <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('DU Stranded Cont Cost',' ',26,0)+PRateStr(MRateUCDUStrandedContCostRate.AsCurrency)+Format(BillUCDUStrandedContCost,'#,###,###.##');
    end;

   If BillUCNPCStrandedDebts <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Stranded Debts',' ',26,0)+PRateStr(MRateUCNPCStrandedDebtsRate.AsCurrency)+Format(BillUCNPCStrandedDebts,'#,###,###.##');
    end;

   If BillUCME <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Missionary Electrification',' ',26,0)+PRateStr(MRateUCMERate.AsCurrency)+Format(BillUCME,'#,###,###.##');
    end;

   If BillUCEqTaxesAndRoyalties <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Equal. Taxes/Royalties',' ',26,0)+PRateStr(MRateUCEqTaxesAndRoyaltiesRate.AsCurrency)+Format(BillUCEqTaxesAndRoyalties,'#,###,###.##');
    end;

   If BillUCEC <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Environmental',' ',26,0)+PRateStr(MRateUCECRate.AsCurrency)+Format(BillUCEC,'#,###,###.##');
    end;

   If BillUCCrossSubRemoval <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('Cross Subs Removal',' ',26,0)+PRateStr(MRateUCCrossSubsidyRemovalRate.AsCurrency)+Format(BillUCCrossSubRemoval,'#,###,###.##');
    end;

   If BillOCAmount1 <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr(BillOCCode1,' ',26,0)+PRateStr(0.00)+Format(BillOCAmount1,'#,###,###.##');
    end;

   If BillOCAmount2 <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr(BillOCCode2,' ',26,0)+PRateStr(0.00)+Format(BillOCAmount2,'#,###,###.##');
    end;

   If BillOCAmount3 <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr(BillOCCode3,' ',26,0)+PRateStr(0.00)+Format(BillOCAmount3,'#,###,###.##');
    end;

   // Inc(PrnCtr);
   // PrnStr[PrnCtr] := '';

   if BillFitall <> 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('FIT-All (Renewable)',' ',26,0) +PRateStr(MRateFitallrate.AsCurrency)+Format(BillFitall,'#,###,###.##') ;
    end;
    {
    outotal := BillOtherGenRateAdjV+BillOtherTransCostAdjV+BillOtherSystemLossCostAdjV+BillOtherLifelineRateCostAdjV+BillOtherSeniorCitizenRateAdjV;
    ourate := MRateOtherGenRateAdj.AsCurrency+MRateOtherTransCostAdj.AsCurrency+MRateOtherSystemLossCostAdj.AsCurrency+MRateOtherLifelineRateCostAdj.AsCurrency+MRateOtherSeniorCitizenRateAdj.AsCurrency;

    //if(isou) then
    //begin
      if (outotal <> 0) then
      begin
       Inc(PrnCtr);
       PrnStr[PrnCtr] := JustStr('Over/Under Recovery',' ',26,0) +PRateStr(ourate)+Format(outotal,'#,###,###.##');
      end;

      if (BillOtherTransDemandCostAdjV <> 0) then
      begin
       Inc(PrnCtr);
       PrnStr[PrnCtr] := JustStr('Over/Under Dmnd Recovery',' ',26,0) +PRateStr(MRateOtherTransDemandCostAdj.AsCurrency)+
                                                                       Format(BillOtherTransDemandCostAdjV,'#,###,###.##');
      end;
    //end; }

   Inc(PrnCtr);
   PrnStr[PrnCtr] := JustStr(' TOTAL BILL ','-',34,2)+Format(BillTotalBill-BillPKVRAmount,'#,###,###.##');

   If not PFBill then
   begin

   For J := 1 to 12 do
     begin
       If ArrearAmount[J] <> 0 then
        begin
         Inc(PrnCtr);
         PrnStr[PrnCtr] := JustStr(ArrearBillMonth[J]+' '+ArrearOebrNumber[J],' ',26,0)+Format(ArrearAmount[J],'#,###,###.##');
        end;
   end;
   end
   else
   begin
   For J := 1 to 5 do
     begin
         Inc(PrnCtr);
         PrnStr[PrnCtr] := JustStr(ArrearOebrNumber[J],' ',54,0)+Format(ArrearAmount[J],'#,###,###.##');
     end;
   end;

   If BillAdjAmountApplied > 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('PANTAWID KURYENTE KATAS NG VAT',' ',34,0)+Format(BillAdjAmountApplied,'#,###,###.##');
    end;

   If BillPKVRAmount > 0 then
    begin
     Inc(PrnCtr);
     PrnStr[PrnCtr] := JustStr('PANTAWID RECOVERY '+JustStr(BillPKVROEBRNumber,' ',15,0)+' '+
                                                    JustStr(BillPKVRBillMonth,' ',4,0),' ',34,0)+Format(BillPKVRAmount,'#,###,###.##');
    end;

   If not PFBill then
   begin
   Inc(PrnCtr);
   PrnStr[PrnCtr] := JustStr(' AMOUNT DUE ','-',34,2)+Format((BillTotalBill+
                                                                       ArrearAmount[01]+
                                                                       ArrearAmount[02]+
                                                                       ArrearAmount[03]+
                                                                       ArrearAmount[04]+
                                                                       ArrearAmount[05]+
                                                                       ArrearAmount[06]+
                                                                       ArrearAmount[07]+
                                                                       ArrearAmount[08]+
                                                                       ArrearAmount[09]+
                                                                       ArrearAmount[10]+
                                                                       ArrearAmount[11]+
                                                                       ArrearAmount[12])-
                                                                       BillAdjAmountApplied,'#,###,###.##');

     // Tax Withheld===================================
     //================================================
     if finalwithholdinQfinalVat.AsFloat <>0 then
     begin
       Inc(PrnCtr);
       PrnStr[PrnCtr] := JustStr('FINAL VAT',' ',34,0)+Format(finalwithholdinQfinalVat.AsFloat,'#,###,###.##');
     end;

     if finalwithholdinQextendedTax.AsFloat <>0 then
     begin
       Inc(PrnCtr);
       PrnStr[PrnCtr] := JustStr('WITHHOLDING TAX',' ',34,0)+Format(finalwithholdinQextendedTax.AsFloat,'#,###,###.##');
     end;

     if (finalwithholdinQfinalVat.AsFloat <>0) OR (finalwithholdinQextendedTax.AsFloat <>0) then
     begin
       Inc(PrnCtr);
       PrnStr[PrnCtr] := JustStr(' AMOUNT TO BE PAID ','-',34,2)+Format((BillTotalBill+
                                                                       ArrearAmount[01]+
                                                                       ArrearAmount[02]+
                                                                       ArrearAmount[03]+
                                                                       ArrearAmount[04]+
                                                                       ArrearAmount[05]+
                                                                       ArrearAmount[06]+
                                                                       ArrearAmount[07]+
                                                                       ArrearAmount[08]+
                                                                       ArrearAmount[09]+
                                                                       ArrearAmount[10]+
                                                                       ArrearAmount[11]+
                                                                       ArrearAmount[12]+
                                                                       finalwithholdinQfinalVat.AsFloat+
                                                                       finalwithholdinQextendedTax.AsFloat)-
                                                                       BillAdjAmountApplied,'#,###,###.##');
     end;
     //================================================
     //================================================

   end
   else
   begin
   Inc(PrnCtr);
   PrnStr[PrnCtr] := JustStr(' AMOUNT TO BE PAID AS AGREED ','~',34,2)+Format(BillAmountPaid,'#,###,###.##');
   end;

   Write(Lst,#18,#27+'M');
   For J := 1 to 46 do
   Writeln(Lst,' ',PrnStr[J]);
   //isoORStab := #27+'E'+JustStr(isoQuery.FieldByName('orstabTeller').Text,' ',30,2)+#27+'F';
   Write(Lst,#27+'P',#15);

   writeln(Lst);
   writeln(Lst);

   if Cash.Text <> '' then

   writeln(Lst,'  ',Juststr(SetForm.usersName.Text,' ',20,2),' AMT TENDERED ',Juststr(Cash.text,' ',13,0),
                    FormatDateTime('MM/DD/YYYY',SetForm.PostDate.AsDateTime),'       ') else
   writeln(Lst,'  ',Juststr(SetForm.usersName.Text,' ',20,2),' ',JustStr(CheckAmount.text+' '+
                                                                         Bank.Text+' '+
                                                                         CheckNumber.Text,' ',26,0),
                    FormatDateTime('MM/DD/YYYY',SetForm.PostDate.AsDateTime),'       ');
   writeln(Lst,'  ',Juststr('TELLER',' ',20,2),Juststr(' ',' ',27,0),'DATE RECEIVED');
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   //writeln(Lst,#18,#27+'P');
   writeln(Lst,'                                                ',isoQueryisoNumber.Text +'  '+isoQueryrevision.Text+'  '+isoQuerydateF.Text);
   //writeln(Lst,#27+'P',#15);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst,'            ',BM,'   ',RT);
   writeln(Lst,' ',JustStr(MasterName.Text,' ',30,0),' ',
                   'Acct# ',JustStr(MasterAccountNumber.Text,' ',10,0),' ',
                   JustStr(FirstKWHR,' ',15,1));

   writeln(Lst,' ',JustStr(MasterAddress.Text,' ',30,0));

   writeln(Lst,' ',JustStr(ArrearBillMonth[1],' ',7,0),' ',
                   JustStr(ArrearBillMonth[2],' ',7,0),' ',
                   JustStr(ArrearBillMonth[3],' ',7,0),' ',
                   JustStr(ArrearBillMonth[4],' ',7,0),' ',
                   JustStr(ArrearBillMonth[5],' ',7,0),' ',
                   JustStr(ArrearBillMonth[6],' ',7,0),' ',
                             FormatDateTime('mm/dd/yy',BillPreviousDate),' to ',
                             FormatDateTime('mm/dd/yy',BillPresentDate));

   writeln(Lst,'           ',Format(VATGenCO,'###,###.##'),
                             JustStr(' ',' ',3,1),'   ',
                             Format(0.00,'###,###.##'),'         ',
                             JustStr(FirstPresentRead,' ',20,1));

   writeln(Lst,'           ',Format(VATTransCO,'###,###.##'),
                             JustStr(' ',' ',3,1),'   ',
                             Format(0.00,'###,###.##'),'         ',
                             JustStr(FirstPreviousRead,' ',20,1));

   writeln(Lst,'           ',Format(VATSystemLoss,'###,###.##'),
                             JustStr(' ',' ',3,1),'   ',
                             Format(0.00,'###,###.##'));

   writeln(Lst,'           ',Format(BillVATDist,'###,###.##'),'      ',
                             Format(BillTransformerRental,'###,###.##'),'         ',
                             FormatDateTime('MM/DD/YYYY',SetForm.PostDate.Date),' ',Juststr(SetForm.usersCollectorCode.Text,' ',3,0));

   writeln(Lst,'           ',Format(BillUCEC,'###,###.##'),'      ',
                             Format(0.00,'###,###.##'));

   If not PFBill then
   writeln(Lst,'           ',Format(BillUCME,'###,###.##'),'      ',
                             Format(0.00,'###,###.##'),'  ',
                             Juststr('AMOUNT  '+Format((BillTotalBill +
                                                        ArrearAmount[1]+
                                                        ArrearAmount[2]+
                                                        ArrearAmount[3]+
                                                        ArrearAmount[4]+
                                                        ArrearAmount[5]+
                                                        ArrearAmount[6]+
                                                        ArrearAmount[7]+
                                                        ArrearAmount[8]+
                                                        ArrearAmount[9]+
                                                        ArrearAmount[10]+
                                                        ArrearAmount[11]+
                                                        ArrearAmount[12])-BillAdjAmountApplied,'#,###,###.##'),' ',34,2)) else

   writeln(Lst,'           ',Format(BillUCME,'###,###.##'),'      ',
                             Format(0.00,'###,###.##'),'  ',
                             Juststr('AMOUNT  '+Format(BillAmountPaid,'#,###,###.##'),' ',34,2));

   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   writeln(Lst);
   write(lst,#27+'P',#18,#15);
   Write(Lst,#27+'3'+#30);
   closefile(lst);

  end;

MRate.Close;

Insertprintedtor.Close;
Insertprintedtor.ParambyName('ORNUMBER').text        := JustStr(IntToStr(ORCount),'0',9,1)+SetForm.usersCollectorCode.Text;
Insertprintedtor.ParambyName('ORDATE').AsDate        := SetForm.PostDate.Date;

If Master.Active then
Insertprintedtor.ParambyName('ACCOUNTNUMBER').text   := MasterAccountNumber.Text else
Insertprintedtor.ParambyName('ACCOUNTNUMBER').text   := '';

Insertprintedtor.ParambyName('NAME').text            := Name.Text;
Insertprintedtor.ParambyName('ADDRESS').text         := Address.Text;
Insertprintedtor.ParambyName('AMOUNT').AsCurrency    := Roundoff(TotalPayment);
Insertprintedtor.ParambyName('TELLERCODE').text      := SetForm.usersCollectorCode.Text;
Insertprintedtor.ParambyName('TELLERNAME').text      := SetForm.usersName.Text;

If CheckAmount.Text <> '' then
begin
  Insertprintedtor.ParambyName('CHECKNUMBER').text   := CheckNumber.Text;
  Insertprintedtor.ParambyName('CHECKDATE').AsDate   := CheckDate.Date;
  Insertprintedtor.ParambyName('BANK').text          := Bank.Text;
  try
  Insertprintedtor.ParambyName('CHECKAMOUNT').AsCurrency := StrToCurr(CheckAmount.Text);
  except
  Insertprintedtor.ParambyName('CHECKAMOUNT').AsCurrency := 0.00;
  end;
end;

If Cash.Text <> '' then
try
Insertprintedtor.ParambyName('CASHTENDERED').AsCurrency  := StrToCurr(Cash.Text);
except
Insertprintedtor.ParambyName('CASHTENDERED').AsCurrency  := 0.00;
end;
Insertprintedtor.ParambyName('ORSTATUS').text      := '2';

Try
Insertprintedtor.Execute;
except
  on E: Exception do
  begin
   MessageDlg('Error.. '+E.Message, mtWarning, [mbOK], 0);
   exit;
  end;
end;
end;

procedure TTellerPOSForm.CheckAmountKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
   begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     Key := #0;
   end;
end;

procedure TTellerPOSForm.PDJSillyLabel5Click(Sender: TObject);
begin
  CancelPanel.Visible := False;
end;

procedure TTellerPOSForm.OkCancelTORClick(Sender: TObject);
Var CTOR     : TMyQuery;
    CTry     : TMyQuery;
    bhoc     : TMyquery;
    OPCancel : TMyQuery;

begin
  if ComboBox2.Text = '' then
    begin
       MessageDlg('Please select remarks for cancellation...', mtError, [mbOK], 0);
       ComboBox2.SetFocus;
       exit;
    end;

  if Canceltry = 3 then
    begin

      CTOR := TMyQuery.Create(Self);
      CTOR.Connection := SetForm.MyConnection1;
      CTOR.SQL.Clear;
      CTOR.SQL.Add('select * from tor where ornumber = :ornumber');
      CTOR.ParamByName('ORNumber').Text := CancelTellerOR.Text;
      CTOR.Open;

      CTry := TMyQuery.Create(Self);
      CTry.Connection := SetForm.MyConnection1;
      CTry.SQL.Clear;
      CTry.SQL.Add('insert into canceltrail');
      CTry.SQL.Add('(CancelDate,');
      CTry.SQL.Add(' TellerCode,');
      CTry.SQL.Add(' ORNumber,');
      CTry.SQL.Add(' Amount) values');
      CTry.SQL.Add('(:CancelDate,');
      CTry.SQL.Add(' :TellerCode,');
      CTry.SQL.Add(' :ORNumber,');
      CTry.SQL.Add(' :Amount)');

      CTry.ParamByName('CancelDate').AsDate := Now;
      CTry.ParamByName('TellerCode').Text   := CTOR.FieldByName('TellerCode').Text;
      CTry.ParamByName('ORNumber').Text     := CTOR.FieldByName('ORNumber').Text;
      CTry.ParamByName('Amount').AsCurrency := CTOR.FieldByName('Amount').AsCurrency;
      CTry.Execute;

      MessageDlg('You have tried to cancel 3 times. I am reporting this to '+#13+#10+'audit if you are trying to cancel this receipt illegally.', mtError, [mbOK], 0);
      CancelPanel.Visible := False;

    end;

  users.Close;
  users.ParamByName('userID').Text   := userID_TF.Text;
  users.ParamByName('pass').Text := password.Text;
  users.Open;

  If users.IsEmpty then
   begin
    MessageDlg('that user password is not on file.... try again', mtInformation, [mbOK], 0);
    users.Close;
    Password.SetFocus;
    Inc(CancelTry);
    exit;
   end;

  If usersUserRestriction.Text <> 'TELLER SUPERVISOR' then
    begin
      MessageDlg('you are not allowed to perform this function.... ', mtWarning, [mbOK], 0);
      users.Close;
      Password.SetFocus;
      exit;
    end;

  CTOR := TMyQuery.Create(Self);
  CTOR.Connection := SetForm.MyConnection1;
  CTOR.SQL.Clear;
  CTOR.SQL.Add('select * from tor where ornumber = :ornumber');
  CTOR.ParamByName('ORNumber').Text := CancelTellerOR.Text;
  CTOR.Open;

  If CTOR.IsEmpty then
    begin
     MessageDlg('Can''t find that teller OR. Try again.', mtError, [mbOK], 0);
     exit;
    end;

  if MessageDlg('Cancel Teller OR.  Once a teller OR is cancelled it can never '+
                 #13+#10+'be rolled back. Continue?', mtConfirmation, [mbYes,mbCancel], 0) = mrCancel
                 then exit;

  insertcancelledtor.ParamByName('ORNUMBER').Text           := CTOR.FieldByName('ORNumber').Text;
  insertcancelledtor.ParamByName('ORDATE').AsDate           := SetForm.PostDate.Date;
  insertcancelledtor.ParamByName('ACCOUNTNUMBER').Text      := Copy(CTOR.FieldByName('ORNumber').Text,1,10);
  insertcancelledtor.ParamByName('NAME').Text               := CTOR.FieldByName('Name').Text;
  insertcancelledtor.ParamByName('ADDRESS').Text            := CTOR.FieldByName('Address').Text;
  insertcancelledtor.ParamByName('AMOUNT').AsCurrency       := CTOR.FieldByName('Amount').AsCurrency;
  insertcancelledtor.ParamByName('TELLERCODE').Text         := CTOR.FieldByName('TellerCode').Text;
  insertcancelledtor.ParamByName('TELLERNAME').Text         := CTOR.FieldByName('TellerName').Text;
  insertcancelledtor.ParamByName('CHECKNUMBER').Text        := CTOR.FieldByName('CheckNumber').Text;
  insertcancelledtor.ParamByName('CHECKDATE').AsDateTime    := Now;
  insertcancelledtor.ParamByName('BANK').Text               := CTOR.FieldByName('Bank').Text;
  insertcancelledtor.ParamByName('CHECKAMOUNT').AsCurrency  := CTOR.FieldByName('CheckAmount').AsCurrency;
  insertcancelledtor.ParamByName('CASHTENDERED').AsCurrency := CTOR.FieldByName('CashTendered').AsCurrency;
  insertcancelledtor.ParamByName('ORSTATUS').Text           := CTOR.FieldByName('ORStatus').Text;
  insertcancelledtor.ParamByName('CANCELLEDBY').Text        := usersUserName.Text;
  insertcancelledtor.ParamByName('CANCELDATE').AsDateTime   := Now;
  insertcancelledtor.ParamByName('REMARKS').Text            := ComboBox2.Text;
  try
  insertcancelledtor.Execute;
  except
    on E: Exception do
    begin
     MessageDlg('Error.. '+E.Message+#10+
                'Error in inserting Cancelled TOR', mtWarning, [mbOK], 0);
     exit;
    end;
  end;

  users.Close;

  CancelTOR.Close;
  CancelTOR.ParamByName('ORNumber').Text := CancelTellerOR.Text;
  CancelTOR.Execute;

  OPCancel            := TMyQuery.Create(Self);
  OPCancel.Connection := SetForm.MyConnection1;
  OPCancel.SQL.Clear;
  OPCancel.SQL.Add('Update OCLedger set TORNumber = null, datepaid = null');
  OPCancel.SQL.Add('                where TORNumber = :TORNumber');
  OPCancel.ParamByName('TORNumber').Text := CancelTellerOR.Text;
  OPCancel.Execute;

  Collection.Close;
  Collection.ParamByName('TellerOR').Text := CancelTellerOR.Text;
  Collection.Open;

  If UnpostMaster.Active then UnpostMaster.Close;
  UnpostMaster.FilterSQL := 'Code = '+QuotedStr(CollectionAccountCode.Text);
  UnpostMaster.Open;

  bhoc := TMyQuery.Create(Self);
  bhoc.Connection := SetForm.MyConnection1;

  While not Collection.Eof do
   begin

    If UnpostAR.Active then UnpostAR.Close;

    UnpostAR.FilterSQL := 'Code = '+QuotedStr(CollectionAccountCode.Text) +
                          'and billmonth = '+QuotedStr(CollectionBillMonth.Text) +
                          'and debit > 0';
    UnpostAR.Open;

    bhoc.SQL.Clear;
    bhoc.SQL.Add('select totalbill from billhistory where code = :code and billmonth = :billmonth');
    bhoc.ParamByName('code').Text      := CollectionAccountCode.Text;
    bhoc.ParamByName('billmonth').Text := CollectionBillMonth.Text;
    bhoc.Open;

    if bhoc.IsEmpty then
      begin
        bhoc.Close;
        bhoc.SQL.Clear;
        bhoc.SQL.Add('select totalbill from latebillhistory where code = :code and billmonth = :billmonth');
        bhoc.ParamByName('code').Text      := CollectionAccountCode.Text;
        bhoc.ParamByName('billmonth').Text := CollectionBillMonth.Text;
        bhoc.Open;
      end;

    if bhoc.IsEmpty then
      begin
        bhoc.Close;
        bhoc.SQL.Clear;
        bhoc.SQL.Add('select totalbill from Pilferbill where code = :code');
        bhoc.ParamByName('code').Text      := CollectionAccountCode.Text;
        bhoc.Open;
      end;

    If not UnpostAR.IsEmpty then
    begin
      UnPBUpdateQuery.Close;
      UnPBUpdateQuery.ParamByName('Code').Text                         := CollectionAccountCode.Text;
      UnPBUpdateQuery.ParamByName('Document').Text                     := CollectionReceiptNumber.Text;
      UnPBUpdateQuery.ParamByName('Area').Text                         := CollectionArea.Text;
      UnPBUpdateQuery.ParamByName('Book').Text                         := CollectionBook.Text;
      UnPBUpdateQuery.ParamByName('AccountNumber').Text                := CollectionAccountNumber.Text;
      UnPBUpdateQuery.ParamByName('Date').AsDateTime                   := UnpostARDate.AsDateTime;
      UnPBUpdateQuery.ParamByName('Name').Text                         := copy(CollectionName.Text,1,30);
      UnPBUpdateQuery.ParamByName('BillMonth').Text                    := CollectionBillMonth.Text;
      UnPBUpdateQuery.ParamByName('RateCode').Text                     := UnpostMasterRateCode.Text;
      UnPBUpdateQuery.ParamByName('Reading').AsFloat                   := UnpostARReading.AsFloat;
      UnPBUpdateQuery.ParamByName('KilowattHour').AsFloat              := UnpostARKilowattHour.AsFloat;
      UnPBUpdateQuery.ParamByName('Amount').AsCurrency                 := bhoc.FieldByName('TotalBill').AsCurrency;
      UnPBUpdateQuery.ParamByName('UCNPCSD').AsCurrency                := CollectionUCNPCSD.AsCurrency;
      UnPBUpdateQuery.ParamByName('UCNPCSCC').AsCurrency               := CollectionUCNPCSCC.AsCurrency;
      UnPBUpdateQuery.ParamByName('UCDUSCC').AsCurrency                := CollectionUCDUSCC.AsCurrency;
      UnPBUpdateQuery.ParamByName('UCME').AsCurrency                   := CollectionUCME.AsCurrency;
      UnPBUpdateQuery.ParamByName('UCETR').AsCurrency                  := CollectionUCNPCSD.AsCurrency;
      UnPBUpdateQuery.ParamByName('UCEC').AsCurrency                   := CollectionUCEC.AsCurrency;
      UnPBUpdateQuery.ParamByName('UCCSR').AsCurrency                  := CollectionUCCSR.AsCurrency;
      UnPBUpdateQuery.ParamByName('TransformerRental').AsCurrency      := UnpostMasterTransformerRental.AsCurrency;
      UnPBUpdateQuery.ParamByName('SystemLossCharge').AsCurrency       := CollectionSystemLossCharge.AsCurrency;
      //OverUnderSystemLoss=========================================
      UnPBUpdateQuery.ParamByName('OtherSystemLossCostAdj').AsCurrency := CollectionOtherSystemLossCostAdj.AsCurrency;
      //============================================================


      UnPBUpdateQuery.ParamByName('VATDiscAmt').AsCurrency             := CollectionVATDiscAmt.AsCurrency;
      UnPBUpdateQuery.ParamByName('VATDistDiscAmt').AsCurrency         := CollectionVATDistDiscAmt.AsCurrency;
      UnPBUpdateQuery.ParamByName('VATGenCODiscAmt').AsCurrency        := CollectionVATGenCoDiscAmt.AsCurrency;
      UnPBUpdateQuery.ParamByName('VATTransCODiscAmt').AsCurrency      := CollectionVATTransCoDiscAmt.AsCurrency;
      UnPBUpdateQuery.ParamByName('VATSystemLossDiscAmt').AsCurrency   := CollectionVATSystemLossDiscAmt.AsCurrency;

      UnPBUpdateQuery.ParamByName('VAT').AsCurrency                    := CollectionVAT.AsCurrency;
      UnPBUpdateQuery.ParamByName('VATDist').AsCurrency                := CollectionVATDist.AsCurrency;
      UnPBUpdateQuery.ParamByName('VATGenCO').AsCurrency               := CollectionVATGenCO.AsCurrency;
      UnPBUpdateQuery.ParamByName('VATTransCO').AsCurrency             := CollectionVATTransCO.AsCurrency;
      UnPBUpdateQuery.ParamByName('VATSystemLossGenCO').AsCurrency     := CollectionVATSystemLossGenCO.AsCurrency;
      UnPBUpdateQuery.ParamByName('VATSystemLossTransCO').AsCurrency   := CollectionVATSystemLossTransCO.AsCurrency;
      UnPBUpdateQuery.ParamByName('RPTax').AsCurrency                  := CollectionRPTax.AsCurrency;
      UnPBUpdateQuery.ParamByName('RateOrder').Text                    := CollectionRateOrder.Text;
      UnPBUpdateQuery.ParamByName('Fitall').AsCurrency                 := CollectionFitall.AsCurrency;
      UnPBUpdateQuery.ParamByName('VATparec').AsCurrency               := CollectionVATparec.AsCurrency;
      UnPBUpdateQuery.ParamByName('PARec').AsCurrency                  := CollectionPARec.AsCurrency;

      UnPBUpdateQuery.ParamByName('SCDisc').AsCurrency                    := CollectionSCDisc.AsCurrency;
      UnPBUpdateQuery.ParamByName('OtherGenRateAdj').AsCurrency           := CollectionOtherGenRateAdj.AsCurrency;
      UnPBUpdateQuery.ParamByName('OtherTransCostAdj').Text               := CollectionOtherTransCostAdj.Text;
      UnPBUpdateQuery.ParamByName('OtherTransDemandCostAdj').AsCurrency   := CollectionOtherTransDemandCostAdj.AsCurrency;
      UnPBUpdateQuery.ParamByName('OtherLifelineRateCostAdj').AsCurrency  := CollectionOtherLifelineRateCostAdj.AsCurrency;
      UnPBUpdateQuery.ParamByName('ICCrossSubsidyCharge').AsCurrency      := CollectionICCrossSubsidyCharge.AsCurrency;
      UnPBUpdateQuery.ParamByName('WRateCode').Text                       := CollectionWRateCode.Text;

        try
         UnPBUpdateQuery.Execute;
        except
          on E: Exception do
          begin
           MessageDlg('Error.. '+E.Message+#10+
                      'Error in inserting Unpaid bills', mtWarning, [mbOK], 0);
           exit;
          end;
        end;
    end;

   DeleteAR.Close;
   DeleteAR.ParamByName('Code').Text       := CollectionAccountCode.Text;
   DeleteAR.ParamByName('BillMonth').Text  := CollectionBillMonth.Text;
   DeleteAR.Execute;

   UnpostAR.Close;

   DeleteCollection.Close;
   DeleteCollection.ParamByName('TellerORNumber').Text := CancelTellerOR.Text;
   DeleteCollection.Execute;

   //======delete collection from user base=====================================
   //===========================================================================
   //===========================================================================
   BillingData.DeleteCollintegrated.Close;
   BillingData.DeleteCollintegrated.ParamByName('TellerORNumber').Text := CancelTellerOR.Text;
   BillingData.DeleteCollintegrated.Execute;
   //===========================================================================
   //===========================================================================
   //===========================================================================

   deleteFinalWithholdingQ.Close;
   deleteFinalWithholdingQ.ParamByName('tellerORNumber').Text  := CancelTellerOR.Text;
   deleteFinalWithholdingQ.Execute;

   Collection.Next;

   end;

  Collection.Close;
  UnpostMaster.Close;

  TmpQuery.Close;
  TmpQuery.SQL.Clear;
  TmpQuery.SQL.Add('Delete from spotbillcollection ');
  TmpQuery.SQL.Add('Where ORNumber = :ORNumber');
  TmpQuery.ParamByName('ORNumber').Text :=  CancelTellerOR.Text;
  try
    TmpQuery.Execute;
    //messagedlg('NAH ' + CancelTellerOR.Text+' AMBOT',mtInformation,[mbOK],0);
  except
  end;

  MessageDlg('Cancel done.', mtWarning, [mbOK], 0);
  CancelPanel.Visible := False;

  If (SetForm.usersUserType.Text = '5') then
  begin
   ConsumerDataBox.Enabled       := True;
   Name.SetFocus;
   PArray                        := 0;
   FillChar(PRecord,SizeOf(PRecord),#0);
   TotalPayment                  := 0;
   OR_finalVTotal                := 0;
   OR_withholdingTotal           := 0;
   if ReqCancel.Active = True then
     begin
       ReqCancel.Delete;
       CRDBGrid2.SetFocus;
     end;

  end
  else
  SearchAccount.SetFocus;

end;

procedure TTellerPOSForm.OtherPaymentsPanelExit(Sender: TObject);
begin
 OtherPaymentsPanel.Visible := False;
end;

procedure TTellerPOSForm.Button1Click(Sender: TObject);
Var MonT : Integer;
    YrT  : String;
begin
   compVatExt.Close;
   compVatExt.ParamByName('code').Text      := codeNum;
   compVatExt.ParamByName('BillMonth').Text := bMonth;
   compVatExt.Open;

   If not PFBill then
    begin
     MonT := StrToInt(Copy(UnPBbillmonth.Text,1,2));
     YrT  := Copy(UnPBbillmonth.Text,3,2);
    end else
    begin
     MonT := StrToInt(Copy(FirstBillMonth,1,2));
     YrT  := Copy(FirstBillMonth,3,2);
    end;


   AddtoPaymentArray(UnPBDocument.Text,
                     'PB '+Formatsettings.ShortMonthNames[MonT]+YrT,
                     'POWER BILL',
                     UnPBbillmonth.Text,
                     StrToCurr(AmountToBePaid.Text),
                     compVatExtfinalVat.AsFloat,
                     compVatExtextendedTax.AsFloat);

   //===================================================
   AddtoPaymentArray('','INTEREST '+Formatsettings.ShortMonthNames[MonT]+YrT+' '+IntToStr(ModMonth)+' mo(s)',
                        'INTEREST '+Formatsettings.ShortMonthNames[MonT]+YrT+' '+IntToStr(ModMonth)+' mo(s)','',ModInterest,0,0);
   //===================================================

   MainPanel.Enabled := True;
   DBGrid2.SetFocus;
   PayAllocPanel.Visible := False;

end;

procedure TTellerPOSForm.AmountToBePaidKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      TotalInt              := TotalInt - RoundOff((UnPBamount.AsCurrency * IntRate) * ModMonth);
      ModInterest           := RoundOff((StrToCurr(AmountToBePaid.Text) * IntRate) * ModMonth);
      TotalInt              := TotalInt + ModInterest;
      TotalInterest.Caption := Format(TotalInt,'#,###,###.##');
      StaticText22.Caption  := Format(ModInterest,'#,###,###.##');
      StaticText23.Caption  := Format(StrToCurr(AmountToBePaid.Text)+ModInterest,'#,###,###.##');
      Button1Click(Self);
    end;
end;

procedure TTellerPOSForm.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  MessageDlg('Runtime error '+E.Message, mtError, [mbOK], 0);
end;

procedure TTellerPOSForm.EVATKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #27 then
   begin
    Key := #0;
    OtherPaymentsPanel.Visible    := False;
    MainPanel.Enabled             := True;
    OPDesc.SetFocus;
   end;

  If Key = #13 then
   begin
    Key := #0;
    OtherPaymentsPanel.Visible    := False;
    MainPanel.Enabled             := True;
    If edit1.Text = '' then exit;
    AddtoPaymentArray('',OPDescription.Text,OPDescription.Text,'',StrToCurr(Edit1.Text),0,0);
    If EVAT.Text = '' then EVAT.Text := '0.00';
    If StrToCurr(EVAT.Text) > 0.00 then AddtoPaymentArray('','EVAT','EVAT','',StrToCurr(EVAT.Text),0,0);
    OPDesc.SetFocus;
   end;
end;

procedure TTellerPOSForm.PayAllocPanelExit(Sender: TObject);
begin
  PayAllocPanel.Visible := False;
end;

procedure TTellerPOSForm.Timer1Timer(Sender: TObject);
Var COHAudit : TMyQuery;
begin
  if TotalPayment > 0 then exit;

  COHAudit := TMyQuery.Create(self);
  COHAudit.Connection := BillingData.MyConnection1;
  COHAudit.SQL.Clear;
  COHAudit.SQL.Add('select * from zaneco.auditcoh where tellercode = :tellercode');
  COHAudit.ParamByName('tellercode').Text := SetForm.Collector.Text;
  COHAudit.Open;

  if not COHAudit.IsEmpty then
    begin
      MessageDlg('AUDIT HAS BEEN AUTHORIZED... Please redirect consumers assigned to next available telller... Audit personnel will be with you shortly....', mtInformation, [mbOK], 0);
      Halt;
    end;
  COHAudit.Close;
  FreeAndNil(COHAudit);
end;

procedure TTellerPOSForm.Timer2Timer(Sender: TObject);
begin
  StaticText28.Caption := DatetoStr(Now)+' '+TimeToStr(Now);
end;

procedure TTellerPOSForm.Timer3Timer(Sender: TObject);
Var CheckReceived : TMyQuery;
begin
  CheckReceived := TMyQuery.Create(Self);
  CheckReceived.Connection := SetForm.MyConnection1;
  CheckReceived.SQL.Clear;
  CheckReceived.SQL.Add('Select * from ReqCancel');
  CheckReceived.Open;

  if CheckReceived.IsEmpty then exit;

  NxAlertWindow2.Popup;
end;

procedure TTellerPOSForm.Timer4Timer(Sender: TObject);
begin
  if not assigned(caller_Frm) then
  caller_Frm := Tcaller_Frm.Create(Application);

  with caller_Frm do
  begin
    queCntrQ.Close;
    queCntrQ.ParamByName('user').Text := 'Teller '+SetForm.SpinEdit1.Text;
    queCntrQ.Open;

    regularCons_L.Caption       := queCntrQregularC.Text;
    seniorCons_L.Caption        := queCntrQseniorC.Text;
    cashier_L.Caption           := queCntrQcashier.Text;
  end;
end;

procedure TTellerPOSForm.BtnMulipleTorClick(Sender: TObject);
begin
  Panel1.Left    := 676;
  Panel1.Top     := 126;
  Panel1.BringToFront;
  Panel1.Visible := True;
  Memo4.Lines.Clear;
  Memo5.Lines.Clear;
  StaticText30.Caption := '';
  StaticText31.Caption := '';
  FillChar(MTor,SizeOf(MTOR),#0);
  MtorCount  := 0;
  MTorAmount := 0
end;

procedure TTellerPOSForm.DBGrid11CellClick(Column: TColumn);
begin
  nc_ocledgerQ.Close;
  nc_ocledgerQ.ParamByName('code').Text := nc_pilferageQentry.Text;
  nc_ocledgerQ.Open;
end;

procedure TTellerPOSForm.DBGrid1DblClick(Sender: TObject);
Var I : Integer;
begin
  If not Panel1.Visible then exit;

  Inc(MTorCount);

  For I := 1 to MTorCount do
   begin
    If MTor[I] = TORORNumber.Text then
     begin
       MessageDlg('That TOR has already been chosen......', mtError, [mbOK], 0);
       exit;
     end;
   end;

   MTor[MTorCount]    := TORORNumber.Text;
   MTorAmount         := MTorAmount + TORAmount.AsCurrency;

   Memo4.Lines.Add(TORORNumber.Text);
   Memo5.Lines.Add(Format(TORAmount.AsCurrency,'#,###,###.##'));

   StaticText30.Caption := Format(MTorAmount,'#,###,###.##');
   MTorAmountTendered.SetFocus;
end;

procedure TTellerPOSForm.ClearButtonClick(Sender: TObject);
begin
  Memo4.Lines.Clear;
  Memo5.Lines.Clear;
  StaticText30.Caption := '';
  StaticText31.Caption := '';
  FillChar(MTor,SizeOf(MTOR),#0);
  MtorCount  := 0;
  MTorAmount := 0
end;

procedure TTellerPOSForm.MTorAmountTenderedKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
  begin
    StaticText31.Caption := Format(StrToCurr(MTorAmountTendered.Text)-MTorAmount,'#,###,###.##');
    MTorAmountTendered.SetFocus;
  end;
end;

procedure TTellerPOSForm.CloseMultipleTorClick(Sender: TObject);
begin
  Panel1.Visible := False;
end;

procedure TTellerPOSForm.BtnConsumerCallerClick(Sender: TObject);
begin
{  CurrentCount.ParamByName('tellernumber').Text := SetForm.SpinEdit1.Text;
  CurrentCount.Open;

  ConsumerCallerPanel.Left             := 344;
  ConsumerCallerPanel.Top              := 265;
  ConsumerCallerPanel.BringToFront;
  ConsumerCallerTeller.Caption         := CurrentCountTellerNumber.Text;
  ConsumerCallerCustomerNumber.Caption := IntToStr(CurrentCountCustomerNumber.AsInteger);

  ConsumerCallerPanel.Visible          := True;    }


  if not assigned(caller_frm) then
  caller_frm := Tcaller_frm.Create(Application);

  caller_frm.ShowModal;

end;

procedure TTellerPOSForm.DsFancyButton5Click(Sender: TObject);
begin
  CountAll.Open;
  CountLimit.Open;

  If CountLimitLimitCount.AsInteger = CountAllidCustomerCount.AsInteger then
    begin
      MessageDlg('Please wait for Caller Module to Refresh ....', mtInformation, [mbOK], 0);
      ConsumerCallerPanel.Visible := False;
      CountAll.Close;
      CountLimit.Close;
      exit;
    end;

  StubColor.Caption := CountLimitcolorstr.Text;
  CountAll.Close;
  CountLimit.Close;

  Try
  InsertConsumerCount.ParamByName('tellernumber').Text := SetForm.SpinEdit1.Text;
  InsertConsumerCount.Execute;
  except
   MessageDlg('Wait for few seconds then try again...', mtInformation, [mbOK], 0);
   exit;
  end;

  GetCount.ParamByName('tellernumber').Text := SetForm.SpinEdit1.Text;
  GetCount.Open;

  PostCustomerCount.ParamByName('tellernumber').Text  := SetForm.SpinEdit1.Text;
  PostCustomerCount.ParamByName('customernumber').Text := GetCountidCustomerCount.Text;
  PostCustomerCount.Execute;

  NowServing.Caption := GetCountidCustomerCount.Text;

  GetCount.Close;
  CurrentCount.Close;
  ConsumerCallerPanel.Visible := False;
  SearchAccount.SetFocus;
end;

procedure TTellerPOSForm.BtnSelectPrinterClick(Sender: TObject);
begin
  if not(PrinterSetupDialog1.Execute) then Exit;

  PrinterName := '';

    Try
      Printer.GetPrinter(Device,Driver,Port,varHandle);
      I := 0;

      While Port[I] <> #0 do
        begin
         PrinterName := PrinterName + Port[I];
         Inc(I);
        end;

     MessageDlg('Pinter Name '+PrinterName, mtWarning, [mbOK], 0);

    except
      ShowMessage('Printer not Ready');
      Exit;
    end;

end;

procedure TTellerPOSForm.DsFancyButton7Click(Sender: TObject);
begin
  ConsumerCallerPanel.Visible := False;
end;

procedure TTellerPOSForm.MTotalAmountKeyPress(Sender: TObject;
  var Key: Char);
Var I : Integer;
begin

  If Key = #13 then
    begin

     Key := #0;
     MVNetTotal.Text := CurrToStr( StrToCurr(MVNetGenco.Text) +
                                   StrToCurr(MVNetTransco.Text) +
                                   StrToCurr(MVNetSystemLoss.Text) +
                                   StrToCurr(MVNetDistribution.Text) );

     MNetAmount.Text := CurrToStr( StrToCurr(MTotalAmount.Text) -
                                   (StrToCurr(MUCME.Text) +
                                    StrToCurr(MUCEC.Text) +
                                    StrToCurr(MPKVR.Text) +
                                    StrToCurr(MTransformer.Text) +
                                    StrToCurr(MVNetTotal.Text)) );

     ManTotalAmount       := StrToCurr(MTotalAmount.Text);
     ManUCEC              := StrToCurr(MUCEC.Text);
     ManUCME              := StrToCurr(MUCME.Text);
     ManVatNetGenco       := StrToCurr(MVNetGenco.Text);
     ManVatNetTransco     := StrToCurr(MVNetTransco.Text);
     ManVatNetSystemLoss  := StrToCurr(MVNetSystemLoss.Text);
     ManVatNetDist        := StrToCurr(MVNetDistribution.Text);
     ManTransformer       := StrToCurr(MTransformer.Text);
     ManPKVRAmount        := StrToCurr(MPKVR.Text);

     with PRecord do
       begin
        PRemittance[1]       := 'Net Power Sales';
        PRemittanceAmount[1] := StrToCurr(MNetAmount.Text);

        PRemittance[2]       := 'UC Enviroment';
        PRemittanceAmount[2] := StrToCurr(MUCEC.Text);

        PRemittance[3]       := 'UC Missionary';
        PRemittanceAmount[3] := StrToCurr(MUCME.Text);

        PRemittance[4]       := 'VAT Distribution';
        PRemittanceAmount[4] := StrToCurr(MVNetDistribution.Text);

        PRemittance[5]       := 'VAT GENCO';
        PRemittanceAmount[5] := StrToCurr(MVNetGenco.Text);

        PRemittance[6]       := 'VAT TRANSCO';
        PRemittanceAmount[6] := StrToCurr(MVNetTransco.Text);

        PRemittance[7]       := 'VAT SYSTEM LOSS';
        PRemittanceAmount[7] := StrToCurr(MVNetSystemLoss.Text);

        PRemittance[8]       := 'TRANSFORMER RENTAL';
        PRemittanceAmount[8] := StrToCurr(MTransformer.Text);

        PRemittance[9]       := 'PANTAWID RECOVERY';
        PRemittanceAmount[9] := StrToCurr(MPKVR.Text);
       end;

     Perform(CM_DIALOGKEY,VK_TAB,0);

    end;

  If key = #27 then
   begin
      AddtoPaymentArray('',OPDescription.Text,OPDescription.Text,'',StrToCurr(Edit1.Text),0,0);

      Key := #0;
      Remittance := True;
      Memo2.Lines.Add('Remittance Breakdown');
      Memo3.Lines.Add('---------------');

      With PRecord do
      For I := 1 to 9 do
       begin
        If PRemittanceAmount[I] > 0 then
         begin
          Memo2.Lines.Add(PRemittance[I]);
          Memo3.Lines.Add(Format(PRemittanceAmount[I],'##,###,###.##'));
         end;
       end;

     StaticText10.Caption       := Format(ManTotalAmount,'###,###.##');
     OtherPaymentsPanel.Visible := False;
     OtherPaymentsPanel.Visible := False;
     MainPanel.Enabled          := True;
     OPDesc.SetFocus;
   end;

end;

procedure TTellerPOSForm.nc_searchBtnClick(Sender: TObject);
begin
  nc_pilferageQ.Close;
  nc_pilferageQ.FilterSQL := ' Accountnumber like '+quotedstr('%'+Edit2.Text+'%') +
                             ' or name like ' + quotedstr('%'+Edit2.Text+'%');
  nc_pilferageQ.Open;

  nc_ocledgerQ.Close;
  nc_ocledgerQ.ParamByName('code').Text := nc_pilferageQentry.Text;
  nc_ocledgerQ.Open;

end;

procedure TTellerPOSForm.noneConsmrPilBtnClick(Sender: TObject);
begin
  AccntNumberNonec :='';
  nc_pilferageQ.Close;
  nc_pilferageQ.Open;

  nc_ocledgerQ.Close;
  nc_ocledgerQ.ParamByName('code').Text := nc_pilferageQentry.Text;
  nc_ocledgerQ.Open;

  NxHeaderPanel2.Left := 35;
  NxHeaderPanel2.Top  := 129;
  NxHeaderPanel2.BringToFront;
  NxHeaderPanel2.Visible := True;
end;

procedure TTellerPOSForm.btnfindaccountClick(Sender: TObject);
begin
  OP.Close;
  OP.ParamByName('description').Text := '%'+OPDesc.Text+'%';
  OP.Open;

  If OP.IsEmpty then
    begin
      MessageDlg('No records match..', mtInformation, [mbOK], 0);
      OP.Close;
      exit;
    end;

      If (//(OPDescription.Text = 'BILL DEPOSIT') or
          (OPDescription.Text = 'CHARGES ON SERVICE DROP') or
          (OPDescription.Text = 'DISCO/RECO') or
          (OPDescription.Text = 'DISCO/RECO/TRANSFER') or
          (OPDescription.Text = 'DISCO/REMOVE') or
          (OPDescription.Text = 'DISCONNECTION FEE') or
          (OPDescription.Text = 'INSPECTION FEE') or
          (OPDescription.Text = 'MEMBERSHIP FEE') or
          (OPDescription.Text = 'METER BASE / BOX') or
          (OPDescription.Text = 'METER DEPOSIT') or
          (OPDescription.Text = 'METER TEST') or
          (OPDescription.Text = 'RECONNECTION FEE') or
          (OPDescription.Text = 'SERVICE FEE') or
          (OPDescription.Text = 'TRANS/BANKING FEE') or
          (OPDescription.Text = 'TRANSFORMER DISCO.') or
          (OPDescription.Text = 'TRANSFORMER RECON.') or
          (OPDescription.Text = 'TRANSFORMR DISCO/RECO')) then
         begin
           OP.Close;
           MessageDlg('You cannot accept payment for this account '+#13+#10+
                      'unless you select an entry from a button...', mtError, [mbOK], 0);
           OPDesc.SetFocus;
           exit;
         end;

  Panel2.Left := 314;
  Panel2.Top  := 214;
  Panel2.BringToFront;
  Panel2.Visible := True;
  DBGrid3.SetFocus;

end;

procedure TTellerPOSForm.DsFancyButton9Click(Sender: TObject);
begin
  If (//(OPDescription.Text <> 'BILL DEPOSIT') or
      (OPDescription.Text = 'CHARGES ON SERVICE DROP') or
      (OPDescription.Text = 'DISCO/RECO') or
      (OPDescription.Text = 'DISCO/RECO/TRANSFER') or
      (OPDescription.Text = 'DISCO/REMOVE') or
      (OPDescription.Text = 'DISCONNECTION FEE') or
      (OPDescription.Text = 'INSPECTION FEE') or
      (OPDescription.Text = 'MEMBERSHIP FEE') or
      (OPDescription.Text = 'METER BASE / BOX') or
      (OPDescription.Text = 'METER DEPOSIT') or
      (OPDescription.Text = 'METER TEST') or
      (OPDescription.Text = 'RECONNECTION FEE') or
      (OPDescription.Text = 'SERVICE FEE') or
      (OPDescription.Text = 'TRANS/BANKING FEE') or
      (OPDescription.Text = 'TRANSFORMER DISCO.') or
      (OPDescription.Text = 'TRANSFORMER RECON.') or
      (OPDescription.Text = 'TRANSFORMR DISCO/RECO')) then
     begin
       OP.Close;
       MessageDlg('You cannot accept payment for this account '+#13+#10+
                  'unless you select an entry from a button...', mtError, [mbOK], 0);
       OPDesc.SetFocus;
       Panel2.Visible := False;
       exit;
     end;

  OPDesc.Text    := OPDescription.Text;
  Panel2.Visible := False;
  If SetForm.FormOpt.ItemIndex = 1 then
  If PArray >= 20 then
   begin
    MessageDlg('An official receipt can only hold 20 payment items. Confirm this payment first.', mtError, [mbOK], 0);
    exit;
   end
   else
  If PArray >= 10 then
   begin
    MessageDlg('An acknowledgement receipt can only hold 10 payment items. Confirm this payment first.', mtError, [mbOK], 0);
    exit;
   end;

  OtherPaymentsPanel.Left        := 292;
  OtherPaymentsPanel.Top         := 109;
  OtherPaymentsPanel.Height      := 132;

  OtherPaymentsPanel.BringToFront;
  OtherPaymentsPanel.Visible     := True;
  MainPanel.Enabled              := False;
  OPText.Caption                 := OPDescription.Text;
  Edit1.Text                     := '';
  Edit1.SetFocus;
end;

procedure TTellerPOSForm.DsFancyButton10Click(Sender: TObject);
begin
  Panel2.Visible := False;
end;

procedure TTellerPOSForm.btnGetBatchClick(Sender: TObject);
begin
  groupselect.Close;
  GroupSelect.ParamByName('collectorcode').Text := '%';
  GroupSelect.ParamByName('dateminus7').AsDate  := Setform.PostDate.Date-3;
  GroupSelect.ParamByName('datenow').AsDate     := Setform.PostDate.Date;
  GroupSelect.Open;

  Panel3.Left        := 221;
  Panel3.Top         := 161;
  Panel3.BringToFront;
  Panel3.Visible     := True;
  CollectorCode.Text := Name.Text;
  CollectorCode.SetFocus;
  Name.Text          := groupselectname.Text;
end;

procedure TTellerPOSForm.DsFancyButton12Click(Sender: TObject);
begin
 Panel3.Visible := False;
 ConsumerDataBox.OnExit        := ConsumerDataBoxExit;
 GroupSelect.Close;
end;

procedure TTellerPOSForm.DsFancyButton8Click(Sender: TObject);
begin
  GroupSelect.Close;
  GroupSelect.ParamByName('collectorcode').Text := '%'+CollectorCode.Text+'%';
  GroupSelect.ParamByName('dateminus7').AsDate := Setform.PostDate.Date-30;
  GroupSelect.ParamByName('datenow').AsDate    := Setform.PostDate.Date;
  GroupSelect.Open;
  Name.Text := groupselectname.Text;
end;

procedure TTellerPOSForm.DsFancyButton11Click(Sender: TObject);
Var I,J : Integer;
    POC : TMyQuery;

begin
  if (CollectorCode.Text = '') or (groupselect.IsEmpty) then
  begin
    messagedlg('Please enter the collector code..',mtWarning,[mbOK],0);
    exit;
  end;

  if groupselectcollectorcode.Text <> CollectorCode.Text then
  begin
    messagedlg('Please select entered collector code only..',mtWarning,[mbOK],0);
    exit;
  end;

  TmpQuery.SQL.Clear;
  TmpQuery.SQL.Add(' Select substring(ornumber,1,6)as orn, tor.* from tor  ');
  TmpQuery.SQL.Add('  where tellercode=:collectorcode and ');
	TmpQuery.SQL.Add('  ordate = :ordate and  ');
  TmpQuery.SQL.Add('    batch = :batch  and    ');
  TmpQuery.SQL.Add('    substring(ornumber,1,6) = ''NCECCO'' and  ');
  TmpQuery.SQL.Add('    name <>''CANCELLED'' and amount <>0 ');
  TmpQuery.ParamByName('collectorcode').Text := groupselectcollectorcode.Text;
  TmpQuery.ParamByName('ordate').AsDate      := groupselectdatepaid.AsDateTime;
  TmpQuery.ParamByName('batch').Text         := groupselectencodercode.Text;
  TmpQuery.Open;
 
  if(Not TmpQuery.IsEmpty) then
  begin
    messagedlg('Please check NCECCO collection details. '+#13+'Printing NCECCO''s ORNo. not yet completed.',mtWarning,[mbOK],0);
    exit;
  end;


  SetForm.TellerTrans.Close;
  SetForm.TellerTrans.ParamByName('date').AsDate     := groupselectdatepaid.AsDateTime;
  SetForm.TellerTrans.ParamByName('tellercode').Text := groupselectcollectorcode.Text;
  SetForm.TellerTrans.ParamByName('batch').Text      := groupselectencodercode.Text;
  SetForm.TellerTrans.Open;

  If not SetForm.TellerTrans.IsEmpty then
   begin
    if (MessageDlg('This transaction batch is already remitted.. '+#13+#10+
                   'You may continue this remittance provided'+#13+#10+
                   'you cancel the previous receipt issued....'+#13+#10+
                   'You should have this unposted first if this'+#13+#10+
                   'is not a Teller Remittance....'+#13+#10+
                   'Do you wish to continue?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
      begin
       SetForm.TellerTrans.Close;
       exit;
      end;
   end;

  SetForm.TellerTrans.Close;

   If groupselectusertype.Text = '1' then AddtoPaymentArray('','COLLECTOR REMITTANCE','COLLECTOR REMITTANCE','',groupselecttotalbill.AsCurrency,0,0);
   If groupselectusertype.Text = '2' then
   begin
     AddtoPaymentArray('','TELLER REMITTANCE','TELLER REMITTANCE','',groupselecttotalbill.AsCurrency ,0,0);
     StaticText10.Caption := Format( groupselecttotalbill.AsCurrency + groupselectfinalVat.AsCurrency+groupselectwithholdingTax.AsCurrency,'##,###,###.##');
   end;
   If groupselectusertype.Text = '7' then AddtoPaymentArray('','BANK REMITTANCE','BANK REMITTANCE','',groupselecttotalbill.AsCurrency,0,0);
   If groupselectusertype.Text = '8' then AddtoPaymentArray('','MOBILE REMITTANCE','MOBILE REMITTANCE','',groupselecttotalbill.AsCurrency,0,0);
   with PRecord do
     begin
      PRemittance[1]       := 'Net Power Sales';
      PRemittanceAmount[1] := groupselectNetAmount.AsCurrency;

      PRemittance[2]       := 'UC Enviroment';
      PRemittanceAmount[2] := groupselectucec.AsCurrency;

      PRemittance[3]       := 'UC Missionary';
      PRemittanceAmount[3] := groupselectucme.AsCurrency;

      PRemittance[4]       := 'VAT Distribution';
      PRemittanceAmount[4] := groupselectvatdist.AsCurrency;

      PRemittance[5]       := 'VAT GENCO';
      PRemittanceAmount[5] := groupselectvatgenco.AsCurrency;

      PRemittance[6]       := 'VAT TRANSCO';
      PRemittanceAmount[6] := groupselectvattransco.AsCurrency;

      PRemittance[7]       := 'VAT SYSTEM LOSS';
      PRemittanceAmount[7] := groupselectvatsystemloss.AsCurrency;

      PRemittance[8]       := 'PKV RECOVERY';
      PRemittanceAmount[8] := groupselectPKVRAmount.AsCurrency;


      PRemittance[9]       := 'FINAL VAT';
      PRemittanceAmount[9] := groupselectfinalVat.AsCurrency;

      PRemittance[10]       := 'WITHHOLDING TAX';
      PRemittanceAmount[10] := groupselectwithholdingTax.AsCurrency;



      if (groupselectusertype.Text = '1') or (groupselectusertype.Text = '8') then
        begin
          POC := TMyQuery.Create(Self);
          POC.Connection := SetForm.MyConnection1;
          POC.SQL.Clear;
          POC.SQL.Add('SELECT m.OCCODE,');
          POC.SQL.Add('       m.description,');
          POC.SQL.Add('       SUM(L.AMOUNT) OCAmount');
          POC.SQL.Add('FROM zaneco.ocledger L');
          POC.SQL.Add('join zaneco.collection c on (l.billnumber = c.receiptnumber)');
          POC.SQL.Add('left join zaneco.ocdetail d on (l.idocdetail = d.idocdetail)');
          POC.SQL.Add('left join zaneco.ocmaster m on (m.idocmaster = d.idocmaster)');
          POC.SQL.Add('where c.collectorcode = :CollectorCode and');
          POC.SQL.Add('      date(c.datepaid) = date(:datepaid) and');
          POC.SQL.Add('      c.encodercode = :batch');
          POC.SQL.Add('group by m.occode');
          POC.ParamByName('CollectorCode').Text  := groupselectcollectorcode.Text;
          POC.ParamByName('DatePaid').AsDate     := groupselectdatepaid.AsDateTime;
          POC.ParamByName('Batch').Text          := groupselectencodercode.Text;
          POC.Open;

          if not POC.IsEmpty then
            begin
              J := 11;
              while not POC.Eof do
                begin
                  PRemittance[J]       := POC.FieldByName('Description').Text;
                  //PRemittanceAmount[K] := POC.FieldByName('OCAmount').AsCurrency;
                  PRemittanceAmount[J] := POC.FieldByName('OCAmount').AsCurrency;
                  Inc(J);
                  POC.Next;
                end;
            end;
          POC.Close;
        end;


      Memo2.Lines.Add('Remittance Breakdown');
      Memo3.Lines.Add('---------------');

      For I := 1 to 20 do
       begin
        If PRemittanceAmount[I] <> 0 then
         begin
          Memo2.Lines.Add(PRemittance[I]);
          Memo3.Lines.Add(Format(PRemittanceAmount[I],'##,###,###.##'));
         end;
       end;

     end;

   Remittance     := True;
   Panel3.Visible := False;

   If ORPrinted then Abort;
   If PaymentPanel.Visible then exit;
   If TotalPayment = 0 then Abort;
   StaticText15.Caption  := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
   MainPanel.Enabled     := False;
   StaticText14.Caption  := 'F4-CANCEL | F5-PRINT TELLER OR';
   PaymentPanel.Left     := 106;
   PaymentPanel.Top      := 133;
   PaymentPanel.BringToFront;
   PaymentPanel.Visible  := True;
   Cash.Text             := CurrToStr(groupselecttotalbill.AsCurrency+groupselectfinalVat.AsCurrency+groupselectwithholdingTax.AsCurrency);
   StaticText13.Caption  := '';
   ORPrinted             := False;
   Cash.SetFocus;

end;

procedure TTellerPOSForm.DonePostClick(Sender: TObject);
begin
 groupselect.Close;
 AutoPostPanel.Visible := False;
 If (SetForm.usersUserType.Text = '5') then
 begin
  ConsumerDataBox.Enabled       := True;
  btnGetBatch.Enabled           := True;
  Name.SetFocus;
  PArray                        := 0;
  FillChar(PRecord,SizeOf(PRecord),#0);
  TotalPayment                  := 0;
  OR_finalVTotal                := 0;
  OR_withholdingTotal           := 0;
 end
 else
  SearchAccount.SetFocus;
end;

procedure TTellerPOSForm.MTotalAmountEnter(Sender: TObject);
begin
  OtherPaymentsPanel.Height := 487;
  MTotalAmount.Text         := Edit1.Text;
  StaticText12.Visible      := True;
end;

procedure TTellerPOSForm.EVATEnter(Sender: TObject);
begin
  StaticText32.Visible := True;
end;

procedure TTellerPOSForm.btnSpotBillingClick(Sender: TObject);
begin
   AddRptF.SQL.Clear;
   AddRptF.SQL.Add('ALTER TABLE `zaneco`.`computebill`');
   AddRptF.SQL.Add(' ADD COLUMN `RateOrder` VARCHAR(6) default NULL;');
   try
    AddRptF.Execute;
   except
   end;

  SetForm.TellerTrans.Close;
  SetForm.TellerTrans.ParamByName('date').AsDate     := groupselectdatepaid.AsDateTime;
  SetForm.TellerTrans.ParamByName('tellercode').Text := groupselectcollectorcode.Text;
  SetForm.TellerTrans.ParamByName('batch').Text      := groupselectencodercode.Text;
  SetForm.TellerTrans.Open;

  If not SetForm.TellerTrans.IsEmpty then
   begin
    MessageDlg('You cannot accept payment for this batch'+#10+#13+
               'Batch is already remitted', mtError, [mbOK], 0);
    SetForm.TellerTrans.Close;
    exit;
   end;

  SetForm.TellerTrans.Close;

  MainPanel.Enabled        := True;
  bh.ParamByName('code').Text := MasterCode.Text;
  bh.Open;

  lbh.ParamByName('code').Text := MasterCode.Text;
  lbh.Open;

  SpotBillingPanel.Left    := 73;
  SpotBillingPanel.Top     := 108;
  SpotBillingPanel.Visible := True;
  SpotBillingPanel.BringToFront;

  masterCodeTField.Text    := MasterCode.Text;
  SBAccountNumber.Caption  := MasterAccountNumber.Text;
  SBConsumerName.Caption   := MasterName.Text;
  SBConsumerType.Caption   := MasterRateCode.Text;
  SBPresentReading.Text    := '0.00';
  SBReadingDate.Text       := '';

  SBKilowattHour.Text      := '0.00';
  SBAmount.Text            := '0.00';

  If MasterMultiplier.AsInteger > 0 then
  SBMult.Caption           := MasterMultiplier.Text else
  SBMult.Caption           := '1';

  If MasterCM.Text = '1' then
    begin
     If MasterCMMultiplier.AsInteger > 0 then
     SBCMMult.Caption      := MasterCMMultiplier.Text else
     SBCMMult.Caption      := '1';

     SBCMLastRead.Caption  := MasterCMPresentReadingKWH.Text;
     SBCMPrevRead.Caption  := MasterCMPreviousReadingKWH.Text;
   end else
   begin
     SBCMMult.Caption      := '0';
     SBCMLastRead.Caption  := '0';
     SBCMPrevRead.Caption  := '0';
   end;

   SBOC1.Caption           := MasterOCCode1.Text;
   SBOC1.Caption           := MasterOCAmount1.Text;
   SBOC2.Caption           := MasterOCCode2.Text;
   SBOC2.Caption           := MasterOCAmount2.Text;
   SBOC3.Caption           := MasterOCCode3.Text;
   SBOC3.Caption           := MasterOCAmount3.Text;

   if MasterisGram.AsBoolean then
   isGram_    := 1
   else
   isGram_    := 0;

  cbm.Open;
  SBBillMonth.Text         := CBMmbillmonth.Text;
  cbm.Close;
  SBPreviousReading.Text   := MasterPresentReadingKWH.Text;
  SpotBillingPanel.BringToFront;
  SBReadingDate.SetFocus;

  tempbill.ParamByName('billmonth').Text := SBBillMonth.Text;
  tempbill.Open;

  If not tempbill.IsEmpty then
     begin
      SBPresentReading.Text := tempbillpresentreadingkwh.Text;
      SBReadingDate.Date    := tempbillpresentreadingdate.AsDateTime;
     end;

  tempbill.Close;

  btnSpotBilling.Enabled   := False;
end;

procedure TTellerPOSForm.NxButton20Click(Sender: TObject);
begin
  RequestCancelPanel.Visible := False;
end;

procedure TTellerPOSForm.NxButton21Click(Sender: TObject);
begin
  if not assigned(taxWithheldForm) then
  taxWithheldForm := taxWithheldForm.Create(Application);

  if (bh_wratecode = 'R') or   (bh_ratecode <> 'P')then
  exit;

  taxWithheldForm.Caption           := 'Final Vat';
  taxWithheldForm.Label1.Caption    := 'FINAL VAT';

  taxWithheldForm.ShowModal;
end;

procedure TTellerPOSForm.NxButton22Click(Sender: TObject);
begin
 if not assigned(taxWithheldForm) then
 taxWithheldForm := taxWithheldForm.Create(Application);

 if Not ((bh_wratecode = 'H')  or (bh_wratecode = 'L'))  then
 exit;

  with taxWithheldForm do
    begin
      Caption           := 'Withholding Tax';
      Label1.Caption    := 'WITHHOLDING TAX';
      //DBEdit1.DataField := 'tinCreditable';
      //DBEdit2.DataField := 'PayorsNameCreditable';
    end;

  taxWithheldForm.ShowModal;
end;

procedure TTellerPOSForm.NxButton23Click(Sender: TObject);
begin
if MessageDlg('Remove Final Tax WithHeld.' +
               #13+#10+'Continue?',mtConfirmation,[mbYes,mbCancel],0)= mrCancel then
               exit;

with taxWithheldForm do
  begin
    cancelWheldTax.Close;
    cancelWheldTax.SQL.Clear;
    cancelWheldTax.SQL.Add('update collectiontaxwheld set ');
    cancelWheldTax.SQL.Add(' FinalTaxWithheld = 0,        ');
    cancelWheldTax.SQL.Add(' OC1FinalVat = 0,             ');
    cancelWheldTax.SQL.Add(' OC2FinalVat = 0,             ');
    cancelWheldTax.SQL.Add(' OC3FinalVat = 0              ');
    cancelWheldTax.SQL.Add('where accountcode = :code and billmonth=:billmonth ');
    cancelWheldTax.ParamByName('code').Text      := codeNum;
    cancelWheldTax.ParamByName('billmonth').Text := StaticText19.Caption;
    cancelWheldTax.Execute;
  end;

  finalTax_Load.Caption := '';
  AmountToBePaid.SetFocus;
  NxButton23.Enabled    := false;
end;

procedure TTellerPOSForm.NxButton24Click(Sender: TObject);
begin
if MessageDlg('Remove Extended Tax WithHeld.' +
               #13+#10+'Continue?',mtConfirmation,[mbYes,mbCancel],0)= mrCancel then
               exit;

with taxWithheldForm do
  begin
    cancelWheldTax.Close;
    cancelWheldTax.SQL.Clear;
    cancelWheldTax.SQL.Add('update collectiontaxwheld set ');
    cancelWheldTax.SQL.Add(' CreditableTaxWithheld = 0,   ');
    cancelWheldTax.SQL.Add(' OC1WithholdingTax = 0,       ');
    cancelWheldTax.SQL.Add(' OC2WithholdingTax = 0,       ');
    cancelWheldTax.SQL.Add(' OC3WithholdingTax = 0        ');
    cancelWheldTax.SQL.Add('where accountcode = :code and billmonth=:billmonth ');
    cancelWheldTax.ParamByName('code').Text      := codeNum;
    cancelWheldTax.ParamByName('billmonth').Text := StaticText19.Caption;
    cancelWheldTax.Execute;
  end;

  creditableTax_load.Caption := '';
  Perform(CM_DIALOGKEY,VK_TAB,0);
  NxButton24.Enabled    := false;

end;

procedure TTellerPOSForm.NxButton2Click(Sender: TObject);
begin
 SpotBillingPanel.Visible := False;
 MainPanel.Enabled        := True;
 btnSpotBilling.Enabled   := True;
 bh.Close;
 lbh.Close;
 SearchAccount.SetFocus;
end;

procedure TTellerPOSForm.SBBillMonthKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
   begin
    AddFieldRptax1.close;
    AddFieldRptax1.SQL.Clear;
    AddFieldRptax1.SQL.Add('alter table `zaneco`.`computebill` ');
    AddFieldRptax1.SQL.Add('add column `RPTax` double(12,2) default '+'0.00'+';');
    try
      AddFieldRptax1.Execute;
    except
    end;

    Key := #0;
    Perform(CM_DIALOGKEY,VK_TAB,0);
   end;
end;


Function TTellerPOSForm.ComputeBill;
Var
SCLD         : Currency;
DemandKW     : Real;
VATparecComp : Currency;
mccComp      : Currency;
//ouTotal      : Currency;
totalOU         : Currency   ;
lifelinerateOU  : Double     ;
seniorrateOU    : Double     ;
begin

  MRate.Close;
  MRate.ParamByName('BillMonth').Text := SBBillMonth.Text;
  MRate.Open;

  if MRateWRSw.Text = '0' then
  MRate.FilterSQL := 'RateCode = '+QuotedStr(MasterRateCode.Text) else
  MRate.FilterSQL := 'WRateCode = '+QuotedStr(MasterWRateCode.Text);

  FirstBillMonth := SBBillMonth.Text;
  FirstRate      := MasterWRateCode.Text;
  if MasterMultiplier.AsInteger = 0 then
  DemandKW       := MasterDemand.AsFloat else
  DemandKW       := MasterDemand.AsFloat * MasterMultiplier.AsInteger;

  If (MasterRateCode.Text = 'R') or
     (MasterRateCode.Text = 'X') then
  If KWHR <0 then KWHR := 0;

  WithDB := False;
  DBKwhr := 0;
  DBKW   := 0;

  If MRateDiffBillApply.AsInteger = 1 then
     begin
       DiffCons.ParamByName('Code').Text      := MasterCode.Text;
       DiffCons.ParamByName('BillMonth').Text := MRateDiffBillMonth.Text;
       DiffCons.Open;

       If not DiffCons.IsEmpty then
         begin
            WithDB := True;
            DBKwhr := DiffConskilowatthour.AsCurrency;
            DBKW   := DiffConskilowattused.AsCurrency;
         end;
       DiffCons.Close;
     end;

  CBill.Open;
  CBill.Append;

  CBillGenSysCharge.AsCurrency                := roundoff(KWHR * MRateGenSysRate.AsCurrency);
  CBillOtherGenRateAdj.AsCurrency             := roundoff(KWHR * MRateOtherGenRateAdj.AsCurrency);
  CBillHostCommCharge.AsCurrency              := roundoff(KWHR * MRateHostCommRate.AsCurrency);
  CBillForexCharge.AsCurrency                 := roundoff(KWHR * MRateForexRate.AsCurrency);
  CBillTCDemandCharge.AsCurrency              := RoundOff(DemandKW * MRateTCDemandRate.AsCurrency);
  CBillOtherTransDemandCostAdj.AsCurrency     := roundoff(DemandKW * MRateOtherTransDemandCostAdj.AsCurrency);
  CBillTCTransSystemCharge.AsCurrency         := roundoff(KWHR * MRateTCSystemRate.AsCurrency);
  CBillOtherTransCostAdj.AsCurrency           := roundoff(KWHR * MRateOtherTransCostAdj.AsCurrency);

  CBillSystemLossCharge.AsCurrency            := roundoff(KWHR * MRateSystemLossRate.AsCurrency);
  CBillOtherSystemLossCostAdj.AsCurrency      := roundoff(KWHR * MRateOtherSystemLossCostAdj.AsCurrency);
  CBillDCDistributionCharge.AsCurrency        := roundoff(KWHR * MRateDCSystemRate.AsCurrency);
  CBillDCDemandCharge.AsCurrency              := RoundOff(DemandKW * MRateDCDemandRate.AsCurrency);
  CBillSCRetCustCharge.AsCurrency             := roundoff(MRateSCRetailCustRate.AsCurrency);
  CBillSCSupplySysCharge.AsCurrency           := roundoff(KWHR * MRateSCSupplySysRate.AsCurrency);
  CBillMCRetailCustCharge.AsCurrency          := roundoff(MRateMCRetailCustRate.AsCurrency);
  CBillMCSystemCharge.AsCurrency              := roundoff(KWHR * MRateMCSysRate.AsCurrency);
  mccComp                                     := roundoff(KWHR * MRateMCC.AsCurrency);
  CBillMCC.AsCurrency                         := mccComp;

  CBillRPTax.AsCurrency := 0;
  CBillRateOrder.Text   := '';

  BillingData.RpTaxQuery.ParamByName('Area').Text      := MasterArea.Text;
  BillingData.RpTaxQuery.ParamByName('BillMonth').Text := SBBillMonth.Text;
  BillingData.RpTaxQuery.Open;

  if not BillingData.RpTaxQuery.IsEmpty then
  begin
   CBillRPTax.AsCurrency  := RoundOff(KWHR * BillingData.RpTaxQueryrateamnt.AsCurrency);
   CBillRateOrder.Text    := BillingData.RpTaxQueryrateorder.Text;
  end;

  BillingData.RpTaxQuery.Close;

  CBillDiffBillPerKwhr.AsCurrency        := 0;
  CBillDiffBillPerKW.AsCurrency          := 0;
  CBillDiffBillPerCust.AsCurrency        := 0;

  If WithDB then
    begin
      CBillDiffBillPerKwhr.AsCurrency         := roundoff(DBKwhr * MRateDiffBillPerKwhr.AsCurrency) / 10;
      CBillDiffBillPerKW.AsCurrency           := roundoff(DBKW * MRateDIffBillPerKW.AsCurrency) / 10;
      CBillDiffBillPerCust.AsCurrency         := roundoff(MRateDiffBillPerCust.AsCurrency) / 10;
    end;

  CBillUCNPCStrandedDebts.AsCurrency          := roundoff(KWHR * MRateUCNPCStrandedDebtsRate.AsCurrency);
  CBillUCNPCStrandedContCost.AsCurrency       := roundoff(KWHR * MRateUCNPCStrandedContCostRate.AsCurrency);
  CBillUCDUStrandedContCost.AsCurrency        := roundoff(KWHR * MRateUCDUStrandedContCostRate.AsCurrency);
  CBillUCME.AsCurrency                        := roundoff(KWHR * MRateUCMERate.AsCurrency);
  CBillUCEqTaxesAndRoyalties.AsCurrency       := roundoff(KWHR * MRateUCEqTaxesAndRoyaltiesRate.AsCurrency);
  CBillUCEC.AsCurrency                        := roundoff(KWHR * MRateUCECRate.AsCurrency);
  CBillUCCrossSubRemoval.AsCurrency           := roundoff(KWHR * MRateUCCrossSubsidyRemovalRate.AsCurrency);
  CBillICCrossSubsidyCharge.AsCurrency        := roundoff(KWHR * MRateICCrossSubsidyRate.AsCurrency);
  CBillPowerActRateRed.AsCurrency             := roundoff(KWHR * MRatePARARate.AsCurrency);
  CBillLifelineDiscSubs.AsCurrency            := roundoff(KWHR * MRateLifelineSubsidyRate.AsCurrency);
  CBillOtherLifelineRateCostAdj.AsCurrency    :=  roundoff(KWHR * MRateOtherLifelineRateCostAdj.AsCurrency);
  CBillSCDisc.AsCurrency                      := roundoff(KWHR * MRateSCDiscSubs.AsCurrency);
  CBillOtherSeniorCitizenRateAdj.AsCurrency   := roundoff(KWHR * MRateOtherSeniorCitizenRateAdj.AsCurrency);

  CBillLoanCondo.AsCurrency                   := roundoff(KWHR * MRateLoanCondo.AsCurrency);
  CBillLCCustMo.AsCurrency                    := roundoff(MRateLCCustMo.AsCurrency);
  CBillPrevYearAdjPowerCost.AsCurrency        := roundoff(KWHR * MRatePrevYearAdjPowerCost.AsCurrency);
  CBillSysLossUnderRecov.AsCurrency           := roundoff(KWHR * MRateSysLossUnderRecov.AsCurrency);

  CBillTransSysAncRefund.AsCurrency           := roundoff(KWHR * MRateTransSysAncRefund.AsCurrency);
  CBillTransDemAncRefund.AsCurrency           := RoundOff(DemandKW * MRateTransDemAncRefund.AsCurrency);
  CBillVATTransAncRefund.AsCurrency           := roundoff(KWHR * MRateVATTransAncRefund.AsCurrency);

  CBillVATGenCo.AsCurrency                    := roundoff(KWHR * MRateVATGenco.AsCurrency);
  CBillVATTransCo.AsCurrency                  := roundoff(KWHR * MRateVATTransco.AsCurrency);
  CBillVATSystemLossGenCO.AsCurrency          := roundoff(KWHR * MRateVATSystemLoss.AsCurrency);
  CBillFitall.AsCurrency                      := roundoff(KWHR * MRateFitallrate.AsCurrency);
  CBillPARec.AsCurrency                       := roundoff(KWHR * MRatePARec.AsCurrency);

  if isGram_=1 then
    CBillgram.AsCurrency                      := roundoff(KWHR * MRateGram.AsCurrency)
  else
    CBillgram.AsCurrency                      := 0;

  lifelinerateOU  := MRateOtherLifelineRateCostAdj.AsCurrency;
  seniorrateOU    := MRateOtherSeniorCitizenRateAdj.AsCurrency;

  TotalPower := CBillGenSysCharge.AsCurrency +
                CBillHostCommCharge.AsCurrency +
                CBillForexCharge.AsCurrency +
                CBillTCTransSystemCharge.AsCurrency +
                CBillTCDemandCharge.AsCurrency +
                CBillSystemLossCharge.AsCurrency +
                CBillDCDistributionCharge.AsCurrency +
                CBillDCDemandCharge.AsCurrency +
                CBillSCSupplySysCharge.AsCurrency +
                CBillMCSystemCharge.AsCurrency +
                CBillMCRetailCustCharge.AsCurrency +
                CBillTransSysAncRefund.AsCurrency +
                CBillTransDemAncRefund.AsCurrency;


  LifeLineStr := '';

  SCLD := 1;
  If (MasterRateCode.Text = 'R') then
   begin

     If KWHR <= 15                    then
       begin
         CBillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.50);
         CBillOtherLifelineRateCostAdj.AsCurrency := 0.0;
         SCLD := 0.50;
       end;

     If (KWHR >  15) and (KWHR <= 16) then
       begin
         CBillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.40);
         CBillOtherLifelineRateCostAdj.AsCurrency := 0.0;
         SCLD := 0.60;
       end;

     If (KWHR >  16) and (KWHR <= 17) then
       begin
         CBillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.30);
         CBillOtherLifelineRateCostAdj.AsCurrency := 0.0;
         SCLD := 0.70;
       end;

     If (KWHR >  17) and (KWHR <= 18) then
       begin
         CBillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.20);
         CBillOtherLifelineRateCostAdj.AsCurrency := 0.0;
         SCLD := 0.80;
       end;

     If (KWHR >  18) and (KWHR <= 19) then
       begin
         CBillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.10);
         CBillOtherLifelineRateCostAdj.AsCurrency := 0.0;
         SCLD := 0.90;
       end;

     If (KWHR >  19) and (KWHR <= 20) then
       begin
         CBillLifelineDiscSubs.AsCurrency := roundoff(TotalPower * -0.05);
         CBillOtherLifelineRateCostAdj.AsCurrency := 0.0;
         SCLD := 0.95
       end;

   end;

   If CBillLifelineDiscSubs.AsCurrency < 0 then
   begin
      CBillSCDisc.AsCurrency := 0;
      CBillOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
      lifelinerateOU := 0.00;
   end;

   If (MRateSCDiscApply.Text = '1') and (Kwhr <= MRateSCDiscKWHR.AsFloat) then
   begin

     SCRead.ParamByName('scode').Text                := MasterCode.Text;
     SCRead.ParamByName('presentreadingdate').AsDate := SBReadingDate.AsDateTime;
     SCRead.Open;

     If not SCRead.IsEmpty then
       begin
         CBillSCAmt4Disc.AsCurrency := roundoff((CBillGenSysCharge.AsCurrency +
                                        CBillHostCommCharge.AsCurrency +
                                        CBillForexCharge.AsCurrency +
                                        CBillTCDemandCharge.AsCurrency +
                                        CBillTCTransSystemCharge.AsCurrency +
                                        CBillSystemLossCharge.AsCurrency +
                                        CBillDCDemandCharge.AsCurrency +
                                        CBillDCDistributionCharge.AsCurrency +
                                        CBillSCRetCustCharge.AsCurrency +
                                        CBillSCSupplySysCharge.AsCurrency +
                                        CBillMCRetailCustCharge.AsCurrency +
                                        CBillMCSystemCharge.AsCurrency +
                                        CBillLoanCondo.AsCurrency ) * SCLD);

         CBillSCDisc.AsCurrency     := roundoff((CBillSCAmt4Disc.AsCurrency * (MRateSCDiscPercent.AsCurrency/100)) * -1);
         CBillOtherSeniorCitizenRateAdj.AsCurrency := 0.0;
         seniorrateOU := 0.00;
       end;

    SCRead.Close;
   end;

    CBillVAT.AsCurrency                   := 0;
    CBillVATDist.AsCurrency               := 0;
    CBillVATDistDiscAmt.AsCurrency        := 0;
    CBillVATGenCoDiscAmt.AsCurrency       := 0;
    CBillVATTransCoDiscAmt.AsCurrency     := 0;
    CBillVATSystemLossDiscAmt.AsCurrency  := 0;
    CBillVATDiscAmt.AsCurrency            := 0;


   VATparecComp             := 0;
   VATparecComp             := roundoff(CBillPARec.AsCurrency *( MRateVAT.AsCurrency / 100 ));
   CBillVATmcc.AsCurrency   := roundoff(mccComp *( MRateVAT.AsCurrency / 100 ));
   CBillVATparec.AsCurrency := VATparecComp;

   CBillVAT.AsCurrency := RoundOff((( CBillForexCharge.AsCurrency+
                                      CBillDCDemandCharge.AsCurrency+
                                      CBillDCDistributionCharge.AsCurrency+
                                      CBillSCRetCustCharge.AsCurrency+
                                      CBillSCSupplySysCharge.AsCurrency+
                                      CBillMCRetailCustCharge.AsCurrency+
                                      CBillMCSystemCharge.AsCurrency+
                                      CBillICCrossSubsidyCharge.AsCurrency+
                                      CBillSCDisc.AsCurrency+
                                      CBillLifelineDiscSubs.AsCurrency+
                                      CBillOtherSeniorCitizenRateAdj.AsCurrency+
                                      CBillOtherLifelineRateCostAdj.AsCurrency+
                                      CBillLoanCondo.AsCurrency +
                                      CBillLCCustMo.AsCurrency+
                                      mccComp) *
                                      (MRateVAT.AsCurrency / 100))  )  +
                                      CBillVATGenCO.AsCurrency +
                                      CBillVATTransCO.AsCurrency +
                                      CBillVATSystemLossGenCO.AsCurrency+
                                      VATparecComp;

   CBillVATDist.AsCurrency := roundoff(((CBillForexCharge.AsCurrency+
                                         CBillDCDemandCharge.AsCurrency+
                                         CBillDCDistributionCharge.AsCurrency+
                                         CBillSCRetCustCharge.AsCurrency+
                                         CBillSCSupplySysCharge.AsCurrency+
                                         CBillMCRetailCustCharge.AsCurrency+
                                         CBillMCSystemCharge.AsCurrency+
                                         CBillICCrossSubsidyCharge.AsCurrency+
                                         CBillSCDisc.AsCurrency+
                                         CBillOtherSeniorCitizenRateAdj.AsCurrency+
                                         CBillLifelineDiscSubs.AsCurrency+
                                         CBillOtherLifelineRateCostAdj.AsCurrency+
                                         CBillLoanCondo.AsCurrency+
                                         CBillLCCustMo.AsCurrency+
                                         mccComp) *
                                         (MRateVAT.AsCurrency / 100)) )+
                                         VATparecComp;

   //Temporary removed vat discount======================
   //====================================================
   {If MasterVatDisc.AsCurrency > 0 then
   begin
     CBillVATDistDiscAmt.AsCurrency          := (CBillVATDist.AsCurrency * (MasterVatDisc.AsCurrency / 100) * -1);
     CBillVATGenCoDiscAmt.AsCurrency         := 0;
     CBillVATTransCoDiscAmt.AsCurrency       := 0;
     CBillVATSystemLossDiscAmt.AsCurrency    := 0;
     CBillVATDiscAmt.AsCurrency              := CBillVATDistDiscAmt.AsCurrency+
                                                CBillVATGenCoDiscAmt.AsCurrency+
                                                CBillVATTransCoDiscAmt.AsCurrency+
                                                CBillVATSystemLossDiscAmt.AsCurrency;
   end; }
   //=====================================================
   //=====================================================

  CBillVATDistDiscAmt.AsCurrency            := 0;
  BillTransformerRental         := MasterTransformerRental.AsCurrency;
  BillOCCode1                   := MasterOCCode1.Text;
  BillOCAmount1                 := MasterOCAmount1.AsCurrency;
  BillOCCode2                   := MasterOCCode2.Text;
  BillOCAmount2                 := MasterOCAmount2.AsCurrency;
  BillOCCode3                   := MasterOCCode3.Text;
  BillOCAmount3                 := MasterOCAmount3.AsCurrency;

  CBillAdjAmountApplied.AsCurrency          := 0;
  CBillPKVROEBRNumber.Text                  := '';
  CBillPKVRBillMonth.Text                   := '';
  CBillPKVRAmount.AsCurrency                := 0;
  PKKVAmt                                   := 0;

  If MRatePantawidApply.AsInteger = 1 then
  begin
    PKVRIndex.ParamByName('code').Text   := MasterCode.Text;
    PKVRIndex.ParamByName('AN').Text     := MasterAccountNumber.Text;
    PKVRIndex.Open;

    If PKVRIndex.IsEmpty then
      begin
        GetPKV.ParamByName('code').Text      := MasterCode.Text;
        GetPKV.ParamByName('area').Text      := MasterArea.Text;
        GetPKV.ParamByName('book').Text      := MasterBook.Text;
        GetPKV.Open;

        If GetPKV.IsEmpty then
          PKKVAmt := 0 else
          PKKVAmt := GetPKVdebit.AsCurrency - GetPKVcredit.AsCurrency;
        GetPKV.Close;
      end;
  end;

  If MRatePantawidApply.AsInteger = 1 then
  begin
    PKVRIndex.ParamByName('code').Text   := MasterCode.Text;
    PKVRIndex.ParamByName('AN').Text     := MasterAccountNumber.Text;
    PKVRIndex.Open;

    If not PKVRIndex.IsEmpty then
      begin
        PKVR.ParamByName('code').Text      := MasterCode.Text;
        PKVR.ParamByName('area').Text      := MasterArea.Text;
        PKVR.ParamByName('book').Text      := MasterBook.Text;
        PKVR.Open;

        If not PKVR.IsEmpty then
          begin
            CBillPKVROebrNumber.Text       := PKVRbillnumber.Text;
            CBillPKVRBillMonth.Text        := PKVRBillMonth.Text;
            CBillPKVRAmount.AsCurrency     := PKVRcredit.AsCurrency;
          end;
        PKVR.Close;
      end;
      PKVRIndex.Close;
  end;

   {BillFlatRateWattage.AsCurrency + //31  //-----
   //===============================
   BillTransDemAncRefund.AsCurrency+ //------  }

   {totalOU := RoundOff(( MRateOtherGenRateAdj.AsCurrency+
                        MRateOtherTransCostAdj.AsCurrency+
                        MRateOtherSystemLossCostAdj.AsCurrency+
                        lifelinerateOU+
                        seniorrateOU) * KWHR); }

  CBillTotalBill.AsCurrency   := roundoff(CBillGenSysCharge.AsCurrency +
                                  CBillHostCommCharge.AsCurrency +
                                  CBillForexCharge.AsCurrency +
                                  CBillTCTransSystemCharge.AsCurrency +
                                  CBillTCDemandCharge.AsCurrency +
                                  CBillSystemLossCharge.AsCurrency +
                                  CBillDCDistributionCharge.AsCurrency +
                                  CBillDCDemandCharge.AsCurrency +
                                  CBillSCRetCustCharge.AsCurrency +
                                  CBillSCSupplySysCharge.AsCurrency +
                                  CBillMCRetailCustCharge.AsCurrency +
                                  CBillMCSystemCharge.AsCurrency +
                                  CBillUCNPCStrandedDebts.AsCurrency +
                                  CBillUCNPCStrandedContCost.AsCurrency +
                                  CBillUCDUStrandedContCost.AsCurrency +
                                  CBillUCME.AsCurrency +
                                  CBillUCEqTaxesAndRoyalties.AsCurrency +
                                  CBillUCEC.AsCurrency +
                                  CBillUCCrossSubRemoval.AsCurrency +
                                  CBillICCrossSubsidyCharge.AsCurrency +
                                  CBillPowerActRateRed.AsCurrency +
                                  CBillLifelineDiscSubs.AsCurrency +
                                  CBillLoanCondo.AsCurrency +
                                  CBillLCCustMo.AsCurrency +
                                  CBillVAT.AsCurrency +
                                  //CBillVATDiscAmt.AsCurrency + //=========

                                  CBillPrevYearAdjPowerCost.AsCurrency +
                                  CBillSysLossUnderRecov.AsCurrency+
                                  CBillMCC.AsCurrency +
                                  CBillRPTax.AsCurrency +

                                  CBillDiffBillPerKwhr.AsCurrency +
                                  CBillDiffBillPerKW.AsCurrency +
                                  CBillDiffBillPerCust.AsCurrency +
                                  MasterTransformerRental.AsCurrency +
                                  MasterOCAmount1.AsCurrency +
                                  MasterOCAmount2.AsCurrency +
                                  MasterOCAmount3.AsCurrency +
                                  CBillPKVRAmount.AsCurrency +
                                  CBillTransSysAncRefund.AsCurrency +
                                  CBillVATTransAncRefund.AsCurrency +
                                  CBillSCDisc.AsCurrency +

                                  CBillOtherGenRateAdj.AsCurrency +
                                  CBillOtherTransCostAdj.AsCurrency +
                                  CBillOtherTransDemandCostAdj.AsCurrency  +
                                  CBillOtherSystemLossCostAdj.AsCurrency  +
                                  CBillOtherLifelineRateCostAdj.AsCurrency  +
                                  CBillOtherSeniorCitizenRateAdj.AsCurrency  +

                                  CBillOtherTransDemandCostAdj.AsCurrency +
                                  CBillFitall.AsCurrency+
                                  CBillPARec.AsCurrency+
                                  CBillgram.AsCurrency);



  If PKKVAmt > 0 then
  begin
    CBillAdjAmountApplied.AsCurrency := PKKVAmt;

    If CBillTotalBill.AsCurrency <= PKKVAmt then
    CBillAdjAmountApplied.AsCurrency := CBillTotalBill.AsCurrency else
    CBillAdjAmountApplied.AsCurrency := PKKVAmt;
  end;

 BillGenSysCharge              := CBillGenSysCharge.AsCurrency                     ;
 //OverUnderGenerationSystem=====================
 BillOtherGenRateAdjV          := CBillOtherGenRateAdj.AsCurrency                  ;
 //==============================================
 BillHostCommCharge            := CBillHostCommCharge.AsCurrency                   ;
 BillForexCharge               := CBillForexCharge.AsCurrency                      ;
 BillTCDemandCharge            := CBillTCDemandCharge.AsCurrency                   ;
 //OverUnderTransmissionSystem===================
 BillOtherTransDemandCostAdjV  := CBillOtherTransDemandCostAdj.AsCurrency          ;
 //==============================================
 BillTCTransSystemCharge       := CBillTCTransSystemCharge.AsCurrency              ;
 //OverUnderTransmissionSystem===================
 BillOtherTransCostAdjV        := CBillOtherTransCostAdj.AsCurrency                ;
 //==============================================
 BillSystemLossCharge          := CBillSystemLossCharge.AsCurrency                 ;
 //OverUnderSystemLoss===========================
 BillOtherSystemLossCostAdjV   := CBillOtherSystemLossCostAdj.AsCurrency           ;
 //==============================================
 BillDCDemandCharge            := CBillDCDemandCharge.AsCurrency                   ;
 BillDCDistributionCharge      := CBillDCDistributionCharge.AsCurrency             ;
 BillSCRetCustCharge           := CBillSCRetCustCharge.AsCurrency                  ;
 BillSCSupplySysCharge         := CBillSCSupplySysCharge.AsCurrency                ;
 BillMCRetailCustCharge        := CBillMCRetailCustCharge.AsCurrency               ;
 BillMCSystemCharge            := CBillMCSystemCharge.AsCurrency                   ;
 BillMCC                       := CBillMCC.AsCurrency                              ;
 BillVATmcc                    := CBillVATmcc.AsCurrency                           ;
 BillRPTax                     := CBillRPTax.AsCurrency                            ;

 BillRateOrder                 := CBillRateOrder.Text                              ;

 BillMCC                       := CBillMCC.AsCurrency                              ;
 BillTransSysAncRefund         := CBillTransSysAncRefund.AsCurrency                ;
 BillTransDemAncRefund         := CBillTransDemAncRefund.AsCurrency                ;
 BillVATTransAncRefund         := CBillVATTransAncRefund.AsCurrency                ;
 BillUCNPCStrandedDebts        := CBillUCNPCStrandedDebts.AsCurrency               ;
 BillUCNPCStrandedContCost     := CBillUCNPCStrandedContCost.AsCurrency            ;
 BillUCDUStrandedContCost      := CBillUCDUStrandedContCost.AsCurrency             ;
 BillUCME                      := CBillUCME.AsCurrency                             ;
 BillUCEqTaxesAndRoyalties     := CBillUCEqTaxesAndRoyalties.AsCurrency            ;
 BillUCEC                      := CBillUCEC.AsCurrency                             ;
 BillUCCrossSubRemoval         := CBillUCCrossSubRemoval.AsCurrency                ;
 BillICCrossSubsidyCharge      := CBillICCrossSubsidyCharge.AsCurrency             ;
 BillPowerActRateRed           := CBillPowerActRateRed.AsCurrency                  ;
 BillLifelineDiscSubs          := CBillLifelineDiscSubs.AsCurrency                 ;
 //OverUnderLifeline=====================
 BillOtherLifelineRateCostAdjV := CBillOtherLifelineRateCostAdj.AsCurrency         ;
 //======================================
 BillLoanCondo                 := CBillLoanCondo.AsCurrency                        ;
 BillLCCustMo                  := CBillLCCustMo.AsCurrency                         ;
 BillVAT                       := CBillVAT.AsCurrency                              ;
 BillPrevYearAdjPowerCost      := CBillPrevYearAdjPowerCost.AsCurrency             ;
 BillSysLossUnderRecov         := CBillSysLossUnderRecov.AsCurrency                ;
 BillTotalBill                 := CBillTotalBill.AsCurrency                        ;
 VATGenCO                      := CBillVATGenCO.AsCurrency                         ;
 VATTransCO                    := CBillVATTransCO.AsCurrency                       ;
 VATSystemLoss                 := CBillVATSystemLossGenCO.AsCurrency               ;
 BillVATDist                   := CBillVATDist.AsCurrency                          ;
 BillVATDistDiscAmt            := CBillVATDistDiscAmt.AsCurrency                   ;
 BillVATGenCoDiscAmt           := CBillVATGenCoDiscAmt.AsCurrency                  ;
 BillVATTransCoDiscAmt         := CBillVATTransCoDiscAmt.AsCurrency                ;
 BillVATSystemLossDiscAmt      := CBillVATSystemLossDiscAmt.AsCurrency             ;
 BillVATDiscAmt                := CBillVATDiscAmt.AsCurrency                       ;
 BillAdjAmountApplied          := CBillAdjAmountApplied.AsCurrency                 ;
 BillTransformerRental         := CBillTransformerRental.AsCurrency                ;
 BillDiffBillPerKwhr           := CBillDiffBillPerKwhr.AsCurrency                  ;
 BillDiffBillPerKW             := CBillDiffBillPerKW.AsCurrency                    ;
 BillDiffBillPerCust           := CBillDiffBillPerCust.AsCurrency                  ;
 BillDiffBillVAT               := DiffBillVAT                                      ;
 BillPKVROEBRNumber            := CBillPKVROEBRNumber.Text                         ;
 BillPKVRBillMonth             := CBillPKVRBillMonth.Text                          ;
 BillPKVRAmount                := CBillPKVRAmount.AsCurrency                       ;
 BillSCDisc                    := CBillSCDisc.AsCurrency                           ;
 //OverUnderSeniorCitizen====================
 BillOtherSeniorCitizenRateAdjV:= CBillOtherSeniorCitizenRateAdj.AsCurrency        ;
 //==========================================
 BillSCAmt4Disc                := CBillSCAmt4Disc.AsCurrency                       ;
 BillFitall                    := CBillFitall.AsCurrency                           ;
 BillPARec                     := CBillPARec.AsCurrency                            ;
 BillVATparec                  := CBillVATparec.AsCurrency                         ;
 Billgram                      := CBillgram.AsCurrency                             ;

  ComputeBill := BillTotalBill - CBillAdjAmountApplied.AsCurrency;
  CBill.Post;
  CBill.Close;
end;


procedure TTellerPOSForm.SBPresentReadingExit(Sender: TObject);
begin
  if (SBPresentReading.AsFloat - SBPreviousReading.AsFloat) <0 then
  BEGIN
      messagedlg('Invalid reading entry..'+#13+
                 'Present reading must be greater than previouse reading..',mtError,[mbOk],0);
      exit;
  END;
  SBKilowattHour.AsFloat  := RoundOff(((SBPresentReading.AsFloat - SBPreviousReading.AsFloat) * StrToFloat(SBMult.Caption)) +
                                                 (StrToFloat(SBCMLastRead.Caption) - StrToFloat(SBCMPrevRead.Caption) * StrToFloat(SBCMMult.Caption))
                                     );
  SBAmountButtonClick(Self);
end;

procedure TTellerPOSForm.SBAmountButtonClick(Sender: TObject);
begin
  SBAmount.AsFloat := ComputeBill(SBKilowattHour.AsFloat);
end;

procedure TTellerPOSForm.NxButton1Click(Sender: TObject);
Var MonT : Integer;
    YrT  : String;
    diff : Double;
begin

  if ((SBPresentReading.AsFloat - SBPreviousReading.AsFloat) <0) OR  ( (StrToFloat(SBAmount.Text)) <=0) then
  BEGIN
      messagedlg('Invalid reading entry..'+#13+
                 'Present reading must be greater than previouse reading..',mtError,[mbOk],0);
      exit;
  END;

  FilterSpotBM.Close;
  FilterSpotBM.ParamByName('code').Text      := masterCodeTField.Text;
  FilterSpotBM.ParamByName('billmonth').Text := SBBillMonth.Text;
  FIlterSpotBM.Open;

  if not FilterSpotBM.IsEmpty then
  begin
     messagedlg('BillMonth already posted!',mtWarning,[mbOK],0);
     SBBillMonth.Text := '';
     exit;
  end;

  if SBBillMonth.Text = '' then
  begin
     messagedlg('Please enter Billmonth',mtWarning,[mbOK],0);
     exit;
  end;

  If FirstBill = False then
    begin
     MessageDlg('Cancel all transaction by pressing F4...'+#13+#10+
                'Spot bill should be the first selection '+#13+#10+
                'before selecting any arrears...', mtError, [mbOK], 0);
     exit;
    end
    else
    begin
     BillPresentDate  := SBReadingDate.AsDateTime;
     BillPreviousDate := MasterPresentReadingDate.AsDateTime;
     FirstKWHR        := SBKilowattHour.Text;
     FirstOEBRNumber  := '';
     FirstBill        := False;

     If SBPresentReading.Text = 'AVERAGE' then
       begin
         FirstPresentRead  := 'AVERAGE';
         FirstPreviousRead := SBPreviousReading.Text;
       end else
       begin
         FirstPresentRead  := SBPresentReading.Text;
         FirstPreviousRead := SBPreviousReading.Text;
       end;

    end;

  If RoundTo(BillTotalBill,-2) = 0.00 then
    begin
      MessageDlg('No amount to credit....', mtInformation, [mbOK], 0);
      SBPresentReading.SetFocus;
      exit;
    end;

   MonT := StrToInt(Copy(SBBillMonth.Text,1,2));
   YrT  := Copy(SBBillMonth.Text,3,2);

   AddtoPaymentArray(IntToStr(ORCount),
                     'PB '+Formatsettings.ShortMonthNames[MonT]+YrT,
                     'SPOT BILL','',
                     StrToCurr(SBAmount.Text),0,0);

   MainPanel.Enabled        := True;
   SpotBillingPanel.Visible := False;
   btnSpotBilling.Enabled   := False;
   bh.Close;
   lbh.Close;
   DBGrid2.SetFocus;

end;

procedure TTellerPOSForm.AreaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
   begin
    Key := #0;
    Perform(CM_DIALOGKEY,VK_TAB,0);
   end;
end;

procedure TTellerPOSForm.NxButton3Click(Sender: TObject);
begin
  Collector.Close;
  DiscoIssuePanel.Visible := False;
  SearchAccount.SetFocus;
end;

procedure TTellerPOSForm.BtnNewApplicantClick(Sender: TObject);
begin
  NewApplicant.Close;
  NewApp                    := False;
  NewAppDelete              := 0;
  NewApplicantPanel.Left    := 244;
  NewApplicantPanel.Top     := 149;
  NewApplicantPanel.Visible := True;
  NewApplicantPanel.BringToFront;
  FindApplicant.SetFocus;
  ConsumerDataBox.OnExit    := Nil;
end;

procedure TTellerPOSForm.FindApplicantButtonClick(Sender: TObject);
begin
  NewApplicant.Close;
  NewApplicant.ParamByName('Name').Text := '%'+FindApplicant.Text+'%';
  NewApplicant.Open;
  NextDBGrid1.SetFocus;
end;

procedure TTellerPOSForm.NxButton4Click(Sender: TObject);
begin
  If NewApplicant.IsEmpty then
    begin
      MessageDlg('Nothing to select....', mtError, [mbOK], 0);
      exit;
    end;

  Area.Text    := NewApplicantArea.Text;
  Book.Text    := NewApplicantDistrict.Text;
  book_ISD     := NewApplicantBook.Text;
  idnewApply_ISD := NewApplicantidNewApply.Text;
  Name.Text    := NewApplicantName.Text;
  Address.Text := NewApplicantAddress.Text;

  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;

  Memo1.Lines.Add('OR Number '+TellerOR.Caption);
  Memo1.Lines.Add('');
  Memo1.Lines.Add(Name.Text);
  Memo1.Lines.Add(Address.Text);

  NewApp             := True;
  NewAppDelete       := NewApplicantidNewApply.AsInteger;
  NewAppIdComplaints := NewApplicantidcomplaints.AsInteger;

  NewApplicantCharges.ParamByName('idnewapply').AsInteger := NewApplicantidNewApply.AsInteger;
  NewApplicantCharges.Open;

  NewApplicantCharges.First;

  While not NewApplicantCharges.Eof do
   begin
    AddtoPaymentArray('',NewApplicantChargesdescription.Text,NewApplicantChargesdescription.Text,'',NewApplicantChargesamount.AsCurrency,0,0);
    NewApplicantCharges.Next;
   end;

  NewApplicantCharges.Close;
  NewApplicantPanel.Visible := False;
end;

procedure TTellerPOSForm.NxButton7Click(Sender: TObject);
begin
 NewApplicantPanel.Visible := False;
 ConsumerDataBox.OnExit    := ConsumerDataBoxExit;
end;

procedure TTellerPOSForm.BtnReconnectClick(Sender: TObject);
begin

  Recon.Close;
  ReconPayment              := False;
  ReconPanel.Left           := 244;
  ReconPanel.Top            := 148;
  ReconPanel.BringToFront;
  ReconPanel.Visible        := True;
  FindRecon.SetFocus;
end;

procedure TTellerPOSForm.BtnRequestClick(Sender: TObject);
begin
  ReqCancel.Open;
  ViewCancelPanel.Left    := 46;
  ViewCancelPanel.Top     := 128;
  ViewCancelPanel.BringToFront;
  ViewCancelPanel.Visible := True;
end;

procedure TTellerPOSForm.NxButton6Click(Sender: TObject);
begin
  ReconPanel.Visible     := False;
  ConsumerDataBox.OnExit := ConsumerDataBoxExit;
end;

procedure TTellerPOSForm.FindReconButtonClick(Sender: TObject);
begin
  Recon.Close;
  Recon.ParamByName('Name').Text := '%'+FindRecon.Text+'%';
  Recon.Open;
  NextDBGrid2.SetFocus;
end;

procedure TTellerPOSForm.NxButton5Click(Sender: TObject);
begin
  If Recon.IsEmpty then
    begin
      MessageDlg('Nothing to select....', mtError, [mbOK], 0);
      exit;
    end;

  Area.Text    := ReconArea.Text;
  Book.Text    := ReconBook.Text;
  Name.Text    := ReconName.Text;
  Address.Text := ReconAddress.Text;

  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;

  Memo1.Lines.Add('OR Number '+TellerOR.Caption);
  Memo1.Lines.Add('');
  Memo1.Lines.Add(Name.Text);
  Memo1.Lines.Add(Address.Text);

  ReconPayment    := True;
  ReconID         := Reconidrecon.AsInteger;
  ReconMasterCode := Reconcode.AsInteger;

  AddtoPaymentArray('','RECONNECTION FEE','RECONNECTION FEE','',Reconreconnectionfee.AsCurrency,0,0);
  AddtoPaymentArray('','EVAT','EVAT','',Reconreconnectionfee.AsCurrency*0.12,0,0);

  If ReconBillDeposit.AsCurrency > 0 then
    AddtoPaymentArray('','BILL DEPOSIT','BILL DEPOSIT','',ReconBillDeposit.AsCurrency,0,0);

  ReconPanel.Visible := False;
end;

procedure TTellerPOSForm.CollectorCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
  begin
   GroupSelect.Close;
   GroupSelect.ParamByName('collectorcode').Text := CollectorCode.Text;//'%'+CollectorCode.Text+'%';
   GroupSelect.ParamByName('dateminus7').AsDate := Setform.PostDate.Date-30;
   GroupSelect.ParamByName('datenow').AsDate    := Setform.PostDate.Date;
   GroupSelect.Open;
   Name.Text := groupselectname.Text;
  end;
end;

procedure TTellerPOSForm.FindReconKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then FindReconButtonClick(self);
end;

procedure TTellerPOSForm.FindApplicantKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then FindApplicantButtonClick(self);
end;

procedure TTellerPOSForm.FindDiscoButtonClick(Sender: TObject);
begin
  Disco.Close;
  Disco.ParamByName('Name').Text := '%'+FindDisco.Text+'%';
  Disco.Open;
  NextDBGrid3.SetFocus;
end;

procedure TTellerPOSForm.FindDiscoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then FindDiscoButtonClick(self);
end;

procedure TTellerPOSForm.BtnDisconnectClick(Sender: TObject);
begin
  Disco.Close;
  DiscoPayment              := False;
  DiscoPanel.Left           := 244;
  DiscoPanel.Top            := 148;
  DiscoPanel.Visible        := True;
  DiscoPanel.BringToFront;
  FindDisco.SetFocus;
end;

procedure TTellerPOSForm.NxButton8Click(Sender: TObject);
begin
  If Disco.IsEmpty then
    begin
      MessageDlg('Nothing to select....', mtError, [mbOK], 0);
      exit;
    end;

  Area.Text    := DiscoArea.Text;
  Book.Text    := DiscoBook.Text;
  Name.Text    := DiscoName.Text;
  Address.Text := DiscoAddress.Text;

  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  Memo3.Lines.Clear;

  Memo1.Lines.Add('OR Number '+TellerOR.Caption);
  Memo1.Lines.Add('');
  Memo1.Lines.Add(Name.Text);
  Memo1.Lines.Add(Address.Text);

  DiscoPayment    := True;
  DiscoID         := Discoiddisco.AsInteger;
  DiscoMasterCode := Discocode.AsInteger;

  If Discodiscofee.AsCurrency > 0 then
     AddtoPaymentArray('','DISCONNECTION FEE','DISCONNECTION FEE','',Discodiscofee.AsCurrency,0,0);

  If Discoevat.AsCurrency > 0 then
     AddtoPaymentArray('','EVAT','EVAT','',Discoevat.AsCurrency,0,0);

  DiscoPanel.Visible := False;
end;

procedure TTellerPOSForm.NxButton9Click(Sender: TObject);
begin
  DiscoPanel.Visible     := False;
  ConsumerDataBox.OnExit := ConsumerDataBoxExit;
end;

procedure TTellerPOSForm.NxLinkLabel1Click(Sender: TObject);
begin
{  TellerH.Open;
  TellerH.Last;
  CallerHistoryPanel.Left := 705;
  CallerHistoryPanel.Top  := 14;
  CallerHistoryPanel.Visible := True;
  CallerHistoryPanel.BringToFront;    }

  if not assigned(quehistoryFrm) then
  quehistoryFrm := TquehistoryFrm.Create(Application);

  quehistoryFrm.ShowModal;

end;

procedure TTellerPOSForm.NxLinkLabel2Click(Sender: TObject);
begin
  CallerHistoryPanel.Visible := False;
  TellerH.Close;
end;

procedure TTellerPOSForm.NxLinkLabel3Click(Sender: TObject);
begin
  if setForm.usersmcashier.Value = true then
  begin
    BtnNewApplicant.Enabled  := false;
    BtnSubOffice.Enabled     := false;
    BtnDisconnect.Enabled    := false;
    btnGetBatch.Enabled      := false;
    noneConsmrPilBtn.Enabled := false;
    OtherPaymentsBox.Enabled := false;
  end;

  OptionsMenuPanel.Left    := 168;
  OptionsMenuPanel.Top     := 148;
  OptionsMenuPanel.BringToFront;
  OptionsMenuPanel.Visible := True;
end;

procedure TTellerPOSForm.NxLinkLabel4Click(Sender: TObject);
begin
  OptionsMenuPanel.Visible := False;
end;

procedure TTellerPOSForm.NxLinkLabel5Click(Sender: TObject);
begin
  CancelPanel.Left    := 336;
  CancelPanel.Top     := 263;
  CancelPanel.BringToFront;
  CancelPanel.Visible := True;
  CancelTellerOR.Text := ReqCancelORNumber.Text;
  Password.Text       := '';
  ComboBox2.Text      := ReqCancelRemarks.Text;
  Password.SetFocus;
end;

procedure TTellerPOSForm.NxLinkLabel6Click(Sender: TObject);
begin
  ViewCancelPanel.Visible := False;
  ReqCancel.Close;
end;

procedure TTellerPOSForm.NxLinkLabel7Click(Sender: TObject);
begin
  if not assigned(proceedCallerFrm) then
  proceedCallerFrm := TproceedCallerFrm.Create(Application);

  proceedCallerFrm.ShowModal;
end;

procedure TTellerPOSForm.NxLinkLabel8Click(Sender: TObject);
begin
  if ReqCancel.IsEmpty then
    begin
      MessageDlg('No request to delete...', mtError, [mbOK], 0);
      exit;
    end;

  if (MessageDlg('Confirm Cancel Request..', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;
  ReqCancel.Delete;

end;

procedure TTellerPOSForm.BtnSubOfficeClick(Sender: TObject);
begin
  Try
   FixAccount.Execute;
  except
  end;

  ConsumerDataBox.OnExit := Nil;
  SORemitPanel.Left      := 291;
  SORemitPanel.Top       := 168;
  SORemitPanel.Visible   := True;
  SORemitPanel.BringToFront;
  SOAcro.SetFocus;
end;

procedure TTellerPOSForm.NxButton11Click(Sender: TObject);
begin
  AccountCode.Close;
  SORemitPanel.Visible   := False;
  ConsumerDataBox.OnExit := ConsumerDataBoxExit;
end;

procedure TTellerPOSForm.NxButton10Click(Sender: TObject);
begin
  AccountCode.Close;
  AccountCode.ParamByName('Description').Text := SOAcro.Text+'%';
  AccountCode.Open;

  If AccountCode.IsEmpty then
    begin
      MessageDlg('No Match found....', mtError, [mbOK], 0);
      AccountCode.Close;
      SOAcro.SetFocus;
      exit;
    end;

 AccountCode.First;
 While not AccountCode.Eof do
 begin
   AccountCode.Edit;
   AccountCodeAmount.AsCurrency := 0.00;
   AccountCode.Post;
   AccountCode.Next;
  end;

 AccountCode.First;
 NextDBGrid4.SetFocus;

end;

procedure TTellerPOSForm.SOAcroKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then NxButton10Click(self);
end;

procedure TTellerPOSForm.SpeedButton1Click(Sender: TObject);
begin
    NxHeaderPanel2.Visible    := False;
    OptionsMenuPanel.Visible  := False;
    FilterNoneConsumerMode    := False;
end;

procedure TTellerPOSForm.SpeedButton2Click(Sender: TObject);
begin
  FilterNoneConsumerMode := False;

  If SetForm.FormOpt.ItemIndex = 1 then
  If PArray >= 20 then
   begin
    MessageDlg('An official receipt can only hold 20 payment items. Confirm this payment first.', mtError, [mbOK], 0);
    exit;
   end
   else
  If PArray >= 10 then
   begin
    MessageDlg('An acknowledgement receipt can only hold 10 payment items. Confirm this payment first.', mtError, [mbOK], 0);
    exit;
   end;

  Name.Text         := nc_pilferageQName.Text;
  Address.Text      := nc_pilferageQAddress.Text;
  AccntNumberNonec  := nc_pilferageQAccountNumber.Text;

  NCtmpQ.Close;
  NCtmpQ.SQL.Clear;
  NCtmpQ.SQL.Add('Select * from collector where collectorcode = :collectorcode');
  NCtmpQ.ParamByName('collectorcode').Text := setForm.usersCollectorCode.Text;
  NCtmpQ.Open;

  ORCount := NCtmpQ.FieldByName('ORCount').AsInteger;
  if nc_ocledgerQAmount.AsFloat>0 then
  begin
    AddtoPaymentArray('',nc_ocledgerQdescription.Text,nc_ocledgerQdescription.Text,'',nc_ocledgerQAmount.AsCurrency,0,0);
    FilterNoneConsumerMode := True;
  end;

  NxHeaderPanel2.Visible   := False;
  OptionsMenuPanel.Visible := False;
end;

procedure TTellerPOSForm.NxButton12Click(Sender: TObject);
begin
 If AccountCode.Active = False then exit;

 Memo1.Lines.Clear;
 Memo2.Lines.Clear;
 Memo3.Lines.Clear;

 Name.Text    := SOAcro.Text+' REMITTANCE';
 Address.Text := '';

 Memo1.Lines.Add('OR Number '+TellerOR.Caption);
 Memo1.Lines.Add('');
 Memo1.Lines.Add(Name.Text);
 Memo1.Lines.Add(Address.Text);

 AccountCode.First;

 While not AccountCode.Eof do
 begin
  If AccountCodeAmount.AsCurrency > 0 then
    begin
    AddtoPaymentArray('',AccountCodeDescription.Text,AccountCodeDescription.Text,'',AccountCodeAmount.AsCurrency,0,0);
    end;
   AccountCode.Next;
  end;

 SORemitPanel.Visible := False;
 AccountCode.Close;
 ConsumerDataBox.OnExit := ConsumerDataBoxExit;
end;

procedure TTellerPOSForm.DBGrid5KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #27 then
    begin
      CheckMaster.Close;
      MoreAccountPanel.Visible := False;
      SearchAccount.SetFocus;
      exit;
    end;

  If key = #13 then
    begin



        Master.Close;
        Master.ParamByName('AccountNumber').Text := CheckMasterAccountNumber.Text;
        Master.Open;

        CheckMaster.Close;

         If MasterConnCode.Text <> '1' then
          begin
           If not assigned(DiscoWarningForm) then DiscoWarningForm := TDiscoWarningForm.Create(Application);
           DiscoWarningForm.ShowModal;
          end;

        Area.Text     := MasterArea.Text     ;
        Book.Text     := MasterBook.Text     ;
        ConnCode.Text := MasterConnCode.Text ;
        Name.Text     := MasterName.Text     ;
        Address.Text  := MasterAddress.Text  ;
        Memo1.Lines.Add(MasterAccountNumber.Text);
        Memo1.Lines.Add(Name.Text);
        Memo1.Lines.Add('');
        Memo1.Lines.Add(Address.Text);

        TellerPOSForm.Width := MaxW;

        UnPB.Close;
        UnPB.ParamByName('Code').Text := MasterCode.Text;
        UnPB.Open;

        FillChar(PRecord,SizeOf(PRecord),#0);
        PArray                         := 0;
        TotalPayment                   := 0;
        OR_finalVTotal                := 0;
        OR_withholdingTotal           := 0;
        OutstandingAccountBox.Enabled  := True;
        ORPrinted                      := False;

        CBM.Open;
        SBQ.ParamByName('code').Text      := MasterCode.Text;
        SBQ.ParamByName('billmonth').Text := CBMmbillmonth.Text;
        SBQ.Open;

        If SBQ.IsEmpty then
        btnSpotBilling.Enabled         := True else
        btnSpotBilling.Enabled         := False;
        CBM.Close;
        SBQ.Close;

        MoreAccountPanel.Visible := False;

        DBGrid2.SetFocus;
    end;
end;

procedure TTellerPOSForm.AveConsKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TTellerPOSForm.NxButton15Click(Sender: TObject);
begin
  AverageConsumptionPanel.Visible := False;
end;

procedure TTellerPOSForm.NxButton14Click(Sender: TObject);
begin
  users.Close;
  users.ParamByName('pass').Text := AvePassword.Text;
  users.Open;

  If users.IsEmpty then
   begin
    MessageDlg('that user password is not on file.... try again', mtInformation, [mbOK], 0);
    users.Close;
    AvePassword.SetFocus;
    exit;
   end;

  If usersUserRestriction.Text <> 'ADMINISTRATOR' then
    begin
      MessageDlg('you are not allowed to perform this function.... ', mtWarning, [mbOK], 0);
      users.Close;
      AvePassword.SetFocus;
      exit;
    end;

  users.Close;

  SBPresentReading.Text := 'AVERAGE';
  SBKilowattHour.Text   := AveCons.Text;
  SBKilowattHour.AsInteger := SBKilowattHour.AsInteger+
                              (StrToInt(SBCMLastRead.Caption) - StrToInt(SBCMPrevRead.Caption) * StrToInt(SBCMMult.Caption));

   If billhistoryFeedBackCode.Text = 'A' then
     begin
       FirstPresentRead  := billhistoryPreviousReadingKWH.Text;
       FirstPreviousRead := 'AVERAGE';
     end else
     begin
       FirstPresentRead  := billhistoryPreviousReadingKWH.Text;
       FirstPreviousRead := billhistoryPresentReadingKWH.Text;
     end;

  SBAmountButtonClick(Self);
  AverageConsumptionPanel.Visible := False;
  SBReadingDate.SetFocus;
end;

procedure TTellerPOSForm.NxButton13Click(Sender: TObject);
begin
  AverageConsumptionPanel.Left    := 359;
  AverageConsumptionPanel.Top     := 273;
  AverageConsumptionPanel.Visible := True;
  AverageConsumptionPanel.BringToFront;

  AveCons.SetFocus;
end;

procedure TTellerPOSForm.NxButton16Click(Sender: TObject);
begin
 If not assigned(SetColorForm) then SetColorForm := TSetColorForm.Create(Application);
 SetColorForm.ShowModal;
 CountLimit.Open;
 StubColor.Caption := CountLimitcolorstr.Text;
 CountLimit.Close;
end;

procedure TTellerPOSForm.NxButton18Click(Sender: TObject);
begin
 CashierCancelPanel.Visible := False;
end;

procedure TTellerPOSForm.NxButton19Click(Sender: TObject);
Var SendRequest : TMyQuery;
begin
  SendRequest := TMyQuery.Create(self);
  SendRequest.Connection := SetForm.MyConnection1;
  SendRequest.SQL.Clear;
  SendRequest.SQL.Add('Insert ignore into reqcancel');
  SendRequest.SQL.Add('(CancelDate,');
  SendRequest.SQL.Add(' TellerCode,');
  SendRequest.SQL.Add(' ORNumber,');
  SendRequest.SQL.Add(' Remarks) values');
  SendRequest.SQL.Add('(:CancelDate,');
  SendRequest.SQL.Add(' :TellerCode,');
  SendRequest.SQL.Add(' :ORNumber,');
  SendRequest.SQL.Add(' :Remarks)');
  SendRequest.ParamByName('CancelDate').AsDateTime := Now;
  SendRequest.ParamByName('TellerCode').Text       := TORTellerCode.Text;
  SendRequest.ParamByName('ORNumber').Text         := TORORNumber.Text;
  SendRequest.ParamByName('Remarks').Text          := ComboBox1.Text;
  SendRequest.Execute;

  MessageDlg('Your request has been sent. Please proceed to the cashier or teller supervisor and present the complete original copy of the OR for cancellation..', mtConfirmation, [mbOK], 0);
  RequestCancelPanel.Visible := False;
end;

procedure TTellerPOSForm.NxButton17Click(Sender: TObject);
begin
  users.Close;
  users.ParamByName('userID').Text   := useridTF.Text;
  users.ParamByName('pass').Text := CancelCashierORPassword.Text;
  users.Open;

  If users.IsEmpty then
   begin
    MessageDlg('that user password is not on file.... try again', mtInformation, [mbOK], 0);
    users.Close;
    CancelCashierORPassword.SetFocus;
    exit;
   end;

  If usersUserRestriction.Text <> 'TELLER SUPERVISOR' then
    begin
      MessageDlg('you are not allowed to perform this function.... ', mtWarning, [mbOK], 0);
      users.Close;
      CancelCashierORPassword.SetFocus;
      exit;
    end;

  If not TOR.Locate('ORNumber',CancelCashierOR.Text,[]) then
    begin
     MessageDlg('Can find that teller OR. Try again.', mtError, [mbOK], 0);
     exit;
    end;

  if MessageDlg('Cancel Teller OR.  Once a teller OR is cancelled it can never '+
                 #13+#10+'be rolled back. Continue?', mtConfirmation, [mbYes,mbCancel], 0) = mrCancel
                 then exit;

  insertcancelledtor.ParamByName('ORNUMBER').Text               := TORORNumber.Text;
  insertcancelledtor.ParamByName('ORDATE').AsDate               := SetForm.PostDate.Date;
  insertcancelledtor.ParamByName('ACCOUNTNUMBER').Text          := Copy(TORORNumber.Text,1,10);
  insertcancelledtor.ParamByName('NAME').Text                   := TORName.Text;
  insertcancelledtor.ParamByName('ADDRESS').Text                := TORAddress.Text;
  insertcancelledtor.ParamByName('AMOUNT').AsCurrency           := TORAmount.AsCurrency;
  insertcancelledtor.ParamByName('TELLERCODE').Text             := TORTellerCode.Text;;
  insertcancelledtor.ParamByName('TELLERNAME').Text             := TORTellerName.Text;
  insertcancelledtor.ParamByName('CHECKNUMBER').Text            := TORCheckNumber.Text;
  insertcancelledtor.ParamByName('CHECKDATE').AsDateTime        := Now;
  insertcancelledtor.ParamByName('BANK').Text                   := TORBank.Text;
  insertcancelledtor.ParamByName('CHECKAMOUNT').AsCurrency      := TORCheckAmount.AsCurrency;
  insertcancelledtor.ParamByName('CASHTENDERED').AsCurrency     := TORCashTendered.AsCurrency;
  insertcancelledtor.ParamByName('ORSTATUS').Text               := TORORStatus.Text;
  insertcancelledtor.ParamByName('CANCELLEDBY').Text            := usersUserName.Text;
  insertcancelledtor.ParamByName('CANCELDATE').AsDateTime       := Now;

  try
  insertcancelledtor.Execute;
  except
    on E: Exception do
    begin
     MessageDlg('Error.. '+E.Message+#10+
                'Error in inserting Cancelled TOR', mtWarning, [mbOK], 0);
     exit;
    end;
  end;

  users.Close;

  TmpQuery.SQL.Clear;
  TmpQuery.SQL.Add('update tor t,collection c set  t.transStat=1 ');
  TmpQuery.SQL.Add('Where c.Sundries = :ORNumber and c.TellerORNumber = t.ORNumber');
  TmpQuery.ParamByName('ORNumber').Text :=  CancelCashierOR.Text;
  try
    TmpQuery.Execute;
  except
  end;

  CancelTOR.Close;
  CancelTOR.ParamByName('ORNumber').Text := CancelCashierOR.Text;
  CancelTOR.Execute;

  TOR.Refresh;

  DeleteCollection.Close;
  DeleteCollection.ParamByName('TellerORNumber').Text := CancelCashierOR.Text;
  DeleteCollection.Execute;

  try

  RestoreNewApp.ParamByName('ORNumber').Text := CancelCashierOR.Text;
  RestoreNewApp.execute;

  ClearReconDsco.ParamByName('ORNumber').Text := CancelCashierOR.Text;
  ClearReconDsco.Execute;

  CancelOR.ParamByName('TellerOR').Text := CancelCashierOR.Text;
  CancelOR.Execute;

  DeleteNewConnection.ParamByName('ORNumber').Text := CancelCashierOR.Text;
  DeleteNewConnection.Execute;

  DeleteNewMember.ParamByName('ORNumber').Text := CancelCashierOR.Text;
  DeleteNewMember.Execute;

  CancelComplaints.ParamByName('ORNumber').Text := CancelCashierOR.Text;
  CancelComplaints.Execute;

  except
    on E: Exception do
    begin
     MessageDlg('Error.. '+E.Message, mtWarning, [mbOK], 0);
     exit;
    end;
  end;

  TmpQuery.SQL.Clear;
  TmpQuery.SQL.Add('Delete * from spotbillcollection ');
  TmpQuery.SQL.Add('Where ORNumber = :ORNumber');
  TmpQuery.ParamByName('ORNumber').Text :=  CancelCashierOR.Text;
  try
    TmpQuery.Execute;
  except
  end;


  If DeleteNewConnection.RowsAffected > 0 then
  MessageDlg('Cancel done....'+#13+#10+
              'New Connection deleted...'+IntToStr(DeleteNewConnection.RowsAffected)+#13+#10+
              'New Member deleted........'+IntToStr(DeleteNewMember.RowsAffected), mtInformation, [mbOK], 0) else
  MessageDlg('Cancel done.', mtWarning, [mbOK], 0);
  CashierCancelPanel.Visible := False;

  If (SetForm.usersUserType.Text = '5') then
  begin
   ConsumerDataBox.Enabled       := True;
   Name.SetFocus;
   PArray                        := 0;
   FillChar(PRecord,SizeOf(PRecord),#0);
   TotalPayment                  := 0;
   OR_finalVTotal                := 0;
   OR_withholdingTotal           := 0;
  end
  else
  SearchAccount.SetFocus;

end;

procedure TTellerPOSForm.MainPanelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AlphaBlend := True;
  AlphaBlendValue := 100;
end;

procedure TTellerPOSForm.MainPanelMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AlphaBlend := False;
  AlphaBlendValue := 255;

end;

procedure TTellerPOSForm.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DBGrid1.OptionsEx := DBGrid1.OptionsEx - [dgeSummary];
  DBGrid1.OptionsEx := DBGrid1.OptionsEx + [dgeRecordCount];
end;

procedure TTellerPOSForm.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DBGrid1.OptionsEx := DBGrid1.OptionsEx - [dgeRecordCount];
  DBGrid1.OptionsEx := DBGrid1.OptionsEx + [dgeSummary];
end;

//========================================================================
//========================================================================
//Print NCECCO============================================================

  Procedure TTellerPOSForm.LoadNceccoOEBRPrinting();
  Var I : Integer;
      isSpot : Boolean;
      tBill : Double;
      codeAccnt : String;
  Begin
    
        //Start NCECCO Statement===============
        if(Copy(TORORNumber.Text,1,6)='NCECCO') then
        Begin
          //===============================================
          //===============================================
         if(TORName.Text = 'CANCELLED') then
         begin
            MessageDlg('Unable to print cancelled NCECCO collection...', mtError, [mbOK], 0);
            TOR.Next;
            exit;
         end;

         Memo1.Lines.Clear;
         Memo2.Lines.Clear;
         Memo3.Lines.Clear;
         FillChar(PRecord,SizeOf(PRecord),#0);

         Area.Text                     := '';
         Book.Text                     := '';
         Sequence.Text                 := '';
         Name.Text                     := '';
         Address.Text                  := '';
         StaticText10.Caption          := '';
         StaticText10.Caption          := '';
         TotalInterest.Caption         := '';
         ConsumerDataBox.Enabled       := False;
         OutstandingAccountBox.Enabled := False;
         OtherPaymentsBox.Enabled      := False;
         PaymentPanel.Visible          := False;
         SearchAccount.Text            := '';
         MainPanel.Enabled             := True;
         OR_finalVTotal                := 0;
         OR_withholdingTotal           := 0;
         SureTOR_fcTax                 := '';
         TotalInt                      := 0;
         codeAccnt                     := '';

         Remittance                    := False;
         PFBill                        := False;
         isSpot                        := false;
          //==============================================


          ManTotalAmount       := 0.00;
          ManUCEC              := 0.00;
          ManUCME              := 0.00;
          ManPKVRAmount        := 0.00;
          ManVatNetGenco       := 0.00;
          ManVatNetTransco     := 0.00;
          ManVatNetSystemLoss  := 0.00;
          ManVatNetDist        := 0.00;
          ManTransformer       := 0.00;
          BillTotalBill        := 0.00;

          FillChar(ArrearBillMonth,SizeOf(ArrearBillMonth),#0);
          FillChar(ArrearOebrNumber,SizeOf(ArrearOebrNumber),#0);
          FillChar(ArrearAmount,SizeOf(ArrearAmount),#0);
          ArrearsCount := 0;

          Memo1.Lines.Clear;
          Memo2.Lines.Clear;
          Memo3.Lines.Clear;
          StaticText10.Caption := '';
          Remittance := False;
          FirstBill  := True;

          Master.Close;
          Master.ParamByName('AccountNumber').Text := TORAccountNumber.Text;
          Master.Open;
          SureTOR_fcTax := TORORNumber.Text;

          Area.Text     := MasterArea.Text     ;
          Book.Text     := MasterBook.Text     ;
          ConnCode.Text := MasterConnCode.Text ;
          Name.Text     := MasterName.Text     ;
          Address.Text  := MasterAddress.Text  ;

          Memo1.Lines.Add(MasterAccountNumber.Text);
          Memo1.Lines.Add('');
          Memo1.Lines.Add(Name.Text);
          Memo1.Lines.Add(Address.Text);

          FillChar(PRecord,SizeOf(PRecord),#0);
          PArray                         := 0;
          TotalPayment                   := 0;
          OR_finalVTotal                 := 0;
          OR_withholdingTotal            := 0;
          OutstandingAccountBox.Enabled  := True;
          ORPrinted                      := False;
          //====================================================
          //====================================================

          if (Not(MessageDlg('AccountNumber: '+MasterAccountNumber.Text+#13+
                        'Name: '+MasterName.Text+#13+
                        'Amount: '+Format(TORAmount.AsCurrency,'###,###,###.##')+#13+
                        #13+#10+'Print payment '+copy(TORORNumber.Text,1,10)+'?',mtConfirmation,[mbYes,mbNo],0)= mrYes)) then
                        exit;

          collNceccoQ.Close;
          collNceccoQ.ParamByName('datepaid').AsDate    := SetForm.PostDate.Date;
          collNceccoQ.ParamByName('collectorcode').Text := SetForm.Collector.Text;
          collNceccoQ.ParamByName('batch').Text         := SetForm.Batch.Text;
          collNceccoQ.ParamByName('ornumber').Text      := TORORNumber.Text;
          collNceccoQ.Open;

          collNceccoQ.First;
          While not collNceccoQ.Eof do
          begin
            BillHistory.Close;
            BillHistory.SQL.Clear;
            BillHistory.SQL.Add('select * from billhistory where code = :code and billmonth = :billmonth');
            BillHistory.ParamByName('code').Text      := collNceccoQ.FieldByName('AccountCode').Text;
            BillHistory.ParamByName('billmonth').Text := collNceccoQ.FieldByName('billmonth').Text;
            BillHistory.Open;

            If BillHistory.IsEmpty then
              begin
                BillHistory.Close;
                BillHistory.SQL.Clear;
                BillHistory.SQL.Add('select * from latebillhistory where code = :code and billmonth = :billmonth');
                BillHistory.ParamByName('code').Text      := collNceccoQ.FieldByName('AccountCode').Text;
                BillHistory.ParamByName('billmonth').Text := collNceccoQ.FieldByName('billmonth').Text;
                BillHistory.Open;

                If BillHistory.IsEmpty then
                  begin

                    TmpQuery.Close;
                    TmpQuery.SQL.Clear;
                    TmpQuery.SQL.Add('SELECT ');
                    TmpQuery.SQL.Add('   str_to_date(concat(:monthstr-1,''/'',date_format(b.PresentReadingDate,''%d''),''/'',:yearstr),''%m/%d/%Y'') datefrom, ');
                    TmpQuery.SQL.Add('   str_to_date(concat(:monthstr,''/'',date_format(b.PresentReadingDate,''%d''),''/'',:yearstr),''%m/%d/%Y'') dateto ');
                    TmpQuery.SQL.Add(' FROM zaneco.billhistory b where b.AccountNumber= :accountnumber order by entry desc limit 1 ');
                    TmpQuery.ParamByName('monthstr').AsInteger := StrToInt(copy(collNceccoQ.FieldByName('billmonth').Text,1,2));
                    TmpQuery.ParamByName('yearstr').AsInteger := StrToInt('20'+copy(collNceccoQ.FieldByName('billmonth').Text,3,2));
                    TmpQuery.ParamByName('accountnumber').Text := MasterAccountNumber.Text;
                    TmpQuery.Open;

                    BillPresentDate               := TmpQuery.FieldByName('dateto').AsDateTime;
                    BillPreviousDate              := TmpQuery.FieldByName('datefrom').AsDateTime;
                    isSpot := true;

                  end;
              end;

              //=========================================
              //=========================================
              SBBillMonth.Text :=  collNceccoQ.FieldByName('billmonth').Text;
              If FirstBill = true then
              begin
                FirstBillMonth := collNceccoQ.FieldByName('billmonth').Text;

                FillChar(ArrearBillMonth,SizeOf(ArrearBillMonth),#0);
                FillChar(ArrearOebrNumber,SizeOf(ArrearOebrNumber),#0);
                FillChar(ArrearAmount,SizeOf(ArrearAmount),#0);

                ArrearsCount := 0;

                if(Not(isSpot)) then
                begin
                  BillPresentDate               := billhistoryPresentReadingDate.AsDateTime;
                  BillPreviousDate              := billhistoryPreviousReadingDate.AsDateTime;

                  BillGenSysCharge              := billhistoryGenSysCharge.AsCurrency;
                  //OverUnderGenerationSystem==============
                  BillOtherGenRateAdjV          := billhistoryOtherGenRateAdj.AsCurrency;
                  //=======================================
                  BillHostCommCharge            := billhistoryHostCommCharge.AsCurrency;
                  BillForexCharge               := billhistoryForexCharge.AsCurrency;
                  BillTCDemandCharge            := billhistoryTCDemandCharge.AsCurrency;
                  //OverUnderDemand========================
                  BillOtherTransDemandCostAdjV  := billhistoryOtherTransDemandCostAdj.AsCurrency;
                  //=======================================
                  BillTCTransSystemCharge       := billhistoryTCTransSystemCharge.AsCurrency;
                  //OverUnderTransmissionSystem============
                  BillOtherTransCostAdjV        := billhistoryOtherTransCostAdj.AsCurrency;
                  //=======================================
                  BillSystemLossCharge          := billhistorySystemLossCharge.AsCurrency;
                  //OverUnderSystemLoss====================
                  BillOtherSystemLossCostAdjV   := billhistoryOtherSystemLossCostAdj.AsCurrency;
                  //=======================================
                  BillDCDemandCharge            := billhistoryDCDemandCharge.AsCurrency;
                  BillDCDistributionCharge      := billhistoryDCDistributionCharge.AsCurrency;
                  BillSCRetCustCharge           := billhistorySCRetCustCharge.AsCurrency;
                  BillSCSupplySysCharge         := billhistorySCSupplySysCharge.AsCurrency;
                  BillMCRetailCustCharge        := billhistoryMCRetailCustCharge.AsCurrency;
                  BillMCSystemCharge            := billhistoryMCSystemCharge.AsCurrency;
                  BillMCC                       := billhistoryMCC.AsCurrency;
                  BillDiffBillPerKwhr           := billhistoryDiffBillPerKwhr.AsCurrency;
                  BillDiffBillPerKW             := billhistoryDiffBillPerKW.AsCurrency;
                  BillDiffBillPerCust           := billhistoryDiffBillPerCust.AsCurrency;

                  BillUCNPCStrandedDebts        := billhistoryUCNPCStrandedDebts.AsCurrency;
                  BillUCNPCStrandedContCost     := billhistoryUCNPCStrandedContCost.AsCurrency;
                  BillUCDUStrandedContCost      := billhistoryUCDUStrandedContCost.AsCurrency;
                  BillUCME                      := billhistoryUCME.AsCurrency;
                  BillUCEqTaxesAndRoyalties     := billhistoryUCEqTaxesAndRoyalties.AsCurrency;
                  BillUCEC                      := billhistoryUCEC.AsCurrency;
                  BillUCCrossSubRemoval         := billhistoryUCCrossSubRemoval.AsCurrency;
                  BillICCrossSubsidyCharge      := billhistoryICCrossSubsidyCharge.AsCurrency;
                  BillPowerActRateRed           := billhistoryPowerActRateRed.AsCurrency;
                  BillLifelineDiscSubs          := billhistoryLifelineDiscSubs.AsCurrency;
                  //OverUnderLifeline=======================
                  BillOtherLifelineRateCostAdjV := billhistoryOtherLifelineRateCostAdj.AsCurrency;
                  //=========================================


                  BillLoanCondo                 := billhistoryLoanCondo.AsCurrency;
                  BillLCCustMo                  := billhistoryLCCustMo.AsCurrency;
                  BillVAT                       := billhistoryVAT.AsCurrency;
                  BillPrevYearAdjPowerCost      := billhistoryPrevYearAdjPowerCost.AsCurrency;
                  BillSysLossUnderRecov         := billhistorySysLossUnderRecov.AsCurrency;
                  BillTotalBill                 := billhistoryTotalBill.AsCurrency;
                  VATGenCO                      := billhistoryVATGenCO.AsCurrency;
                  VATTransCO                    := billhistoryVATTransCO.AsCurrency;
                  VATSystemLoss                 := billhistoryVATSystemLossGenCO.AsCurrency;
                  BillVATDist                   := billhistoryVATDist.AsCurrency;
                  BillVATDistDiscAmt            := billhistoryVATDistDiscAmt.AsCurrency;
                  BillVATGenCoDiscAmt           := billhistoryVATGenCoDiscAmt.AsCurrency;
                  BillVATTransCoDiscAmt         := billhistoryVATTransCoDiscAmt.AsCurrency;
                  BillVATSystemLossDiscAmt      := billhistoryVATSystemLossDiscAmt.AsCurrency;
                  BillVATDiscAmt                := billhistoryVATDiscAmt.AsCurrency;
                  BillAdjAmountApplied          := billhistoryAdjAmountApplied.AsCurrency;
                  BillOCCode1                   := billhistoryOCCode1.Text;
                  BillOCAmount1                 := billhistoryOCAmount1.AsCurrency;
                  BillOCCode2                   := billhistoryOCCode2.Text;
                  BillOCAmount2                 := billhistoryOCAmount2.AsCurrency;
                  BillOCCode3                   := billhistoryOCCode3.Text;
                  BillOCAmount3                 := billhistoryOCAmount3.AsCurrency;
                  BillPKVROEBRNumber            := billhistoryPKVROebrNumber.Text;
                  BillPKVRBillMonth             := billhistoryPKVRBillMonth.Text;
                  BillPKVRAmount                := billhistoryPKVRAmount.AsCurrency;
                  BillTransSysAncRefund         := billhistoryTransSysAncRefund.AsCurrency;
                  BillTransDemAncRefund         := billhistoryTransDemAncRefund.AsCurrency;
                  BillVATTransAncRefund         := billhistoryVATTransAncRefund.AsCurrency;
                  BillSCDisc                    := billhistorySCDisc.AsCurrency;
                  //OverUnderSeniorCitizen============
                  BillOtherSeniorCitizenRateAdjV:= billhistoryOtherSeniorCitizenRateAdj.AsCurrency;
                  //==================================
                  BillSCAmt4Disc                := billhistorySCAmt4Disc.AsCurrency;
                  BillAmountPaid                := 0;
                  BillRPTax                     := billhistoryRPTax.AsCurrency;
                  BillRateOrder                 := billhistoryRateOrder.Text;
                  BillFitall                    := billhistoryFitall.AsCurrency;
                  BillPARec                     := billhistoryPARec.AsCurrency;
                  BillVATmcc                    := billhistoryVATmcc.AsCurrency;
                  Billgram                      := billhistorygram.AsCurrency;
                  BillAmountPaid                := 0;
                end
                else
                begin
                  tBill := 0.00;
                  tBill := ComputeBill(collNceccoQ.FieldByName('KilowattHour').AsFloat);
                end;

                BillHistory.Close;
                FirstBill := False;

              end
              else
              begin

                for i := 1 to 6 do
                 if trim(ArrearOebrNumber[I]) = trim(collNceccoQ.FieldByName('receiptnumber').Text) then exit;

                Inc(ArrearsCount);

                If ArrearsCount > 12 then
                  begin
                    MessageDlg('Only 12 Arrears are allowed for each OEBR...', mtError, [mbOK], 0);
                    DBGrid2.SetFocus;
                    exit;
                  end;

                   ArrearBillMonth[ArrearsCount]  := FormatDateTime('mmm, yy',
                                                                    StrToDate(Copy(collNceccoQ.FieldByName('billmonth').Text,1,2)+'/01/'+
                                                                              Copy(collNceccoQ.FieldByName('billmonth').Text,3,2)));
                   ArrearOebrNumber[ArrearsCount] := JustStr( collNceccoQ.FieldByName('receiptnumber').Text,' ',15,0);
                   ArrearAmount[ArrearsCount]     := collNceccoQ.FieldByName('TotalBill').AsCurrency;
              end;

              codeAccnt := collNceccoQ.FieldByName('Accountcode').Text;
              collNceccoQ.Next;
          End;

          //End NCECCO Statement===============
          //===================================

          //update collection ORNumber===================
          //=============================================
          try
            TmpQuery.Close;
            TmpQuery.SQL.Clear;
            TmpQuery.SQL.Add('update arledger set ');
            TmpQuery.SQL.Add('collectorcode = :ornumber ');
            TmpQuery.SQL.Add('where date = :date and ');
            TmpQuery.SQL.Add('      code = :code and ');
            TmpQuery.SQL.Add('      collectorcode = :collectorcode ');
            TmpQuery.ParamByName('ornumber').Text      := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
            TmpQuery.ParamByName('date').AsDate        := SetForm.PostDate.Date;
            TmpQuery.ParamByName('code').Text          := codeAccnt;
            TmpQuery.ParamByName('collectorcode').Text := TORORNumber.Text;
            TmpQuery.Execute;

            TmpQuery.Close;
            TmpQuery.SQL.Clear;
            TmpQuery.SQL.Add('update ocledger set ');
            TmpQuery.SQL.Add('TORNumber = :ornumber ');
            TmpQuery.SQL.Add('where dateentered = :date and ');
            TmpQuery.SQL.Add('      TORNumber = :tornumber ');
            TmpQuery.ParamByName('ornumber').Text      := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
            TmpQuery.ParamByName('date').AsDate        := SetForm.PostDate.Date;
            TmpQuery.ParamByName('tornumber').Text     := TORORNumber.Text;
            TmpQuery.Execute;

            TmpQuery.Close;
            TmpQuery.SQL.Clear;
            TmpQuery.SQL.Add('update Collection set ');
            TmpQuery.SQL.Add('TellerORNumber = :ornumber, ');
            TmpQuery.SQL.Add('Sundries = :ornumber        ');
            TmpQuery.SQL.Add('where datepaid = :datepaid and ');
            TmpQuery.SQL.Add('      accountnumber = :accountnumber and ');
            TmpQuery.SQL.Add('      collectorcode = :collectorcode ');
            TmpQuery.ParamByName('ornumber').Text      := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
            TmpQuery.ParamByName('datepaid').AsDate    := SetForm.PostDate.Date;
            TmpQuery.ParamByName('accountnumber').Text := TORAccountNumber.Text;
            TmpQuery.ParamByName('collectorcode').Text := TORTellerCode.Text;
            TmpQuery.Execute;

            TmpQuery.Close;
            TmpQuery.SQL.Clear;
            TmpQuery.SQL.Add('update collectiontaxwheld set ');
            TmpQuery.SQL.Add('  TellerORNumber = :ornumber ');
            TmpQuery.SQL.Add('where datepaid = :datepaid and ');
            TmpQuery.SQL.Add('      accountnumber = :accountnumber and ');
            TmpQuery.SQL.Add('      TellerORNumber = :telleror ');
            TmpQuery.ParamByName('ornumber').Text      := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
            TmpQuery.ParamByName('datepaid').AsDate    := SetForm.PostDate.Date;
            TmpQuery.ParamByName('accountnumber').Text := TORAccountNumber.Text;
            TmpQuery.ParamByName('telleror').Text      := TORORNumber.Text;
            TmpQuery.Execute;

            TmpQuery.Close;
            TmpQuery.SQL.Clear;
            TmpQuery.SQL.Add('update integratedcollection set ');
            TmpQuery.SQL.Add('TellerORNumber = :ornumber, ');
            TmpQuery.SQL.Add('Sundries = :ornumber        ');
            TmpQuery.SQL.Add('where datepaid = :datepaid and ');
            TmpQuery.SQL.Add('      accountnumber = :accountnumber and ');
            TmpQuery.SQL.Add('      collectorcode = :collectorcode ');
            TmpQuery.ParamByName('ornumber').Text      := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
            TmpQuery.ParamByName('datepaid').AsDate    := SetForm.PostDate.Date;
            TmpQuery.ParamByName('accountnumber').Text := TORAccountNumber.Text;
            TmpQuery.ParamByName('collectorcode').Text := TORTellerCode.Text;
            TmpQuery.Execute;

            TmpQuery.Close;
            TmpQuery.SQL.Clear;
            TmpQuery.SQL.Add('update collectiontaxwheldintegrated set ');
            TmpQuery.SQL.Add('  TellerORNumber = :ornumber ');
            TmpQuery.SQL.Add('where datepaid = :datepaid and ');
            TmpQuery.SQL.Add('      accountnumber = :accountnumber and ');
            TmpQuery.SQL.Add('      TellerORNumber = :telleror ');
            TmpQuery.ParamByName('ornumber').Text      := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
            TmpQuery.ParamByName('datepaid').AsDate    := SetForm.PostDate.Date;
            TmpQuery.ParamByName('accountnumber').Text := TORAccountNumber.Text;
            TmpQuery.ParamByName('telleror').Text      := TORORNumber.Text;
            TmpQuery.Execute;

            UpdateORCount.ParamByName('collectorcode').Text := TORTellerCode.Text;
            UpdateORCount.ParamByName('orcount').AsInteger  := ORCount+1;
            UpdateORCount.Execute;

            TmpQuery.Close;
            TmpQuery.SQL.Clear;
            TmpQuery.SQL.Add('update tor set ');
            TmpQuery.SQL.Add('  ornumber = :ornumber ');
            TmpQuery.SQL.Add('where ordate = :ordate and ');
            TmpQuery.SQL.Add('      accountnumber = :accountnumber and ');
            TmpQuery.SQL.Add('      ornumber = :tornumber ');
            TmpQuery.ParamByName('ornumber').Text      := JustStr(IntToStr(ORCount),'0',9,1)+'-'+SetForm.usersCollectorCode.Text;
            TmpQuery.ParamByName('ordate').AsDate      := SetForm.PostDate.Date;
            TmpQuery.ParamByName('accountnumber').Text := TORAccountNumber.Text;
            TmpQuery.ParamByName('tornumber').Text     := TORORNumber.Text;
            TmpQuery.Execute;

            Inc(ORCount);
            TellerOR.Caption  := JustStr(IntToStr(ORCount),'0',9,1);
            PrintOEBRNew;
          except
           on E: Exception do
           begin
            MessageDlg(E.Message, mtWarning, [mbOK], 0);
            exit;
           end;
          end;
          //End of Update ORNumber=======================
          //=============================================

        End;

        TOR.Next;
        TOR.Refresh;

  End;
 //End Print NCECOO========================================================
 //========================================================================
 //========================================================================

end.



