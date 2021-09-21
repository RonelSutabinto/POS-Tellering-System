unit TellerMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PDJSillyLabel, PDJRotoLabel, ExtCtrls, StdCtrls, DB,
  MemDS, DBAccess, MyAccess, Gauges, ComCtrls, Grids, DBGrids,
  DsFancyButton, Printers, NxCollection, jpeg, NxEdit, QuickRpt, QRCtrls, math,
  DBGrid1, pngimage, frxClass, frxDBSet, Mask, DBCtrls, QExport4, QExport4XLS,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, AdvGroupBox;

type
  TMenuForm = class(TForm)
    Panel1: TNxHeaderPanel;
    PDJSillyLabel1: TNxButton;
    PDJSillyLabel2: TNxButton;
    Gauge1: TGauge;
    Recap: TMyQuery;
    Label1: TLabel;
    TransactionDateFrom: TDateTimePicker;
    PTOR: TMyQuery;
    Panel2: TNxHeaderPanel;
    PClass: TMyTable;
    PClassID: TIntegerField;
    PClassCode: TStringField;
    PClassDescription: TStringField;
    DSPClass: TDataSource;
    StaticText3: TStaticText;
    Label2: TLabel;
    DateFrom: TDateTimePicker;
    DateTo: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TNxButton;
    Button2: TNxButton;
    Bevel2: TBevel;
    Gauge2: TGauge;
    Coll: TMyQuery;
    CollEntry: TIntegerField;
    CollReceiptNumber: TStringField;
    CollAccountCode: TFloatField;
    CollArea: TStringField;
    CollBook: TStringField;
    CollSequence: TStringField;
    CollAccountNumber: TStringField;
    CollName: TStringField;
    CollBillMonth: TStringField;
    CollTotalBill: TFloatField;
    CollMembership: TFloatField;
    CollPenalty: TFloatField;
    CollSecurity: TFloatField;
    CollMeterDeposit: TFloatField;
    CollTransformerRental: TFloatField;
    CollSundries: TStringField;
    CollSundriesAmount: TFloatField;
    CollUCNPCSD: TFloatField;
    CollUCNPCSCC: TFloatField;
    CollUCDUSCC: TFloatField;
    CollUCME: TFloatField;
    CollUCETR: TFloatField;
    CollUCEC: TFloatField;
    CollUCCSR: TFloatField;
    CollLoanCondo: TFloatField;
    CollTotal: TFloatField;
    CollCollectorCode: TStringField;
    CollDatePaid: TDateField;
    CollDateRemitted: TDateField;
    CollEncoderCode: TStringField;
    CollPosted: TStringField;
    CollKilowattHour: TFloatField;
    CollAddress: TStringField;
    CollOPDescription: TStringField;
    CollOPAmount: TFloatField;
    CollTellerORNumber: TStringField;
    CDCR: TNxButton;
    Summary: TNxButton;
    OtherPayment: TNxButton;
    P4: TNxButton;
    Recap1: TMyQuery;
    PDJSillyLabel4: TNxButton;
    PTORID: TIntegerField;
    PTORORNumber: TStringField;
    PTORORDate: TDateField;
    PTORAccountNumber: TStringField;
    PTORName: TStringField;
    PTORAddress: TStringField;
    PTORAmount: TFloatField;
    PTORTellerCode: TStringField;
    PTORTellerName: TStringField;
    PTORCheckNumber: TStringField;
    PTORCheckDate: TDateTimeField;
    PTORBank: TStringField;
    PTORCheckAmount: TFloatField;
    PTORCashTendered: TFloatField;
    PTORbackupor: TStringField;
    PTORbatch: TStringField;
    PTORTransStat: TStringField;
    PTORORStatus: TStringField;
    Recap2: TMyQuery;
    RecapOPDescription: TStringField;
    RecapTAmount: TFloatField;
    Recapcode: TStringField;
    PrinterSetupDialog1: TPrinterSetupDialog;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    PreparedName: TEdit;
    PreparedPos: TEdit;
    CheckedName: TEdit;
    CheckPos: TEdit;
    ReviewedName: TEdit;
    ReviewedPos: TEdit;
    AuditedName: TEdit;
    AuditedPos: TEdit;
    AttestedName: TEdit;
    AttestedPos: TEdit;
    Recaptellerornumber: TStringField;
    TransactionDateTo: TDateTimePicker;
    Label6: TLabel;
    ReportOption: TRadioGroup;
    Image2: TImage;
    groupselect: TMyQuery;
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
    groupselecttransformerrental: TFloatField;
    groupselectNetAmount: TFloatField;
    groupselecttotalaccount: TLargeintField;
    groupselectposted: TStringField;
    groupselectPKVRAmount: TFloatField;
    ReceiptPrinting: TNxButton;
    CreateDeposit: TMyQuery;
    DepositBtn: TNxButton;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxLabel1: TNxLabel;
    COHAccount: TNxButtonEdit;
    Deposit: TMyQuery;
    CreateSigntory: TMyQuery;
    NxButton3: TNxButton;
    signatory: TMyQuery;
    signatoryPreparedByName: TStringField;
    signatoryPreparedByPosition: TStringField;
    signatoryCheckedByName: TStringField;
    signatoryCheckedByPosition: TStringField;
    signatoryReviewedByName: TStringField;
    signatoryReviewedByPosition: TStringField;
    signatoryAuditedByName: TStringField;
    signatoryAuditedByPostion: TStringField;
    signatoryAttestedByName: TStringField;
    signatoryAttestedByPosition: TStringField;
    OpenDialog1: TOpenDialog;
    NxMemo1: TNxMemo;
    CRRecap: TMyQuery;
    CRRecapcode: TStringField;
    CRRecapTAmount: TFloatField;
    Depositaccountcode: TStringField;
    Depositaccountdescription: TStringField;
    Depositamount: TFloatField;
    InsertAccountCode: TMyQuery;
    signatoryCOHAccountcoce: TStringField;
    signatoryARAccountCode: TStringField;
    NxEdit1: TNxEdit;
    SC: TMyQuery;
    SCConsAR: TStringField;
    SCConsARPilfer: TStringField;
    SCConsARMCC: TStringField;
    SCConsARPilferPen: TStringField;
    SCARVatDist: TStringField;
    SCARVatTransCo: TStringField;
    SCARVatGenCo: TStringField;
    SCARVatSystemLoss: TStringField;
    SCARUCEC: TStringField;
    SCARUCME: TStringField;
    SCFinaVat: TStringField;
    SCSalesRes: TStringField;
    SCSalesComm: TStringField;
    SCSalesInd: TStringField;
    SCSalesSL: TStringField;
    SCSalesPub: TStringField;
    SCSalesPilfer: TStringField;
    SCSalesPen: TStringField;
    SCSalesMCC: TStringField;
    SCSalesVatDist: TStringField;
    SCSalesVatTransco: TStringField;
    SCSalesVatGenco: TStringField;
    SCSalesVatSystemLoss: TStringField;
    SCSalesUCEC: TStringField;
    SCSalesUCME: TStringField;
    DCPR: TNxButton;
    SCTransformerAR: TStringField;
    DepositBankRemit: TMyQuery;
    DepositBankRemitaccountcode: TStringField;
    DepositBankRemitaccountdescription: TStringField;
    DepositBankRemitamount: TFloatField;
    ReturnCheck: TMyQuery;
    ReturnCheckiddeposit: TLargeintField;
    ReturnCheckCDCRDate: TDateField;
    ReturnCheckdepositdate: TDateField;
    ReturnCheckDescription: TStringField;
    ReturnCheckAccountCode: TStringField;
    ReturnCheckAccountDescription: TStringField;
    ReturnCheckAmount: TFloatField;
    ReturnCheckBankRemit: TStringField;
    NoCash: TMyQuery;
    NoCashTAmount: TFloatField;
    PartialDeposit: TMyQuery;
    PartialDepositaccountcode: TStringField;
    PartialDepositaccountdescription: TStringField;
    PartialDepositdepositdate: TDateField;
    PartialDepositamount: TFloatField;
    TellerEff: TNxButton;
    TellerEfficiencyPanel: TNxHeaderPanel;
    EffDateFrom: TDateTimePicker;
    EffDateTo: TDateTimePicker;
    Label5: TLabel;
    NxButton4: TNxButton;
    TEff: TMyQuery;
    TEffCollectorCode: TStringField;
    TEffusertype: TStringField;
    TEffTellerName: TStringField;
    TEffTotalOR: TFloatField;
    TEffTotalOebr: TFloatField;
    TEfftamount: TFloatField;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRGroup1: TQRGroup;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    ReportDate: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    TEffTotalCancelledOR: TFloatField;
    QRDBText6: TQRDBText;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    Depositcdcrdate: TDateField;
    DepositBankRemitcdcrdate: TDateField;
    CancelledTOR: TMyQuery;
    CancelledTORIdcancelledtor: TIntegerField;
    CancelledTORORNumber: TStringField;
    CancelledTORORDate: TDateTimeField;
    CancelledTORAccountNumber: TStringField;
    CancelledTORName: TStringField;
    CancelledTORAddress: TStringField;
    CancelledTORAmount: TFloatField;
    CancelledTORTellerCode: TStringField;
    CancelledTORTellerName: TStringField;
    CancelledTORCheckNumber: TStringField;
    CancelledTORCheckDate: TDateTimeField;
    CancelledTORBank: TStringField;
    CancelledTORCheckAmount: TFloatField;
    CancelledTORCashTendered: TFloatField;
    CancelledTORbackupor: TStringField;
    CancelledTORTransStat: TStringField;
    CancelledTORORStatus: TStringField;
    CancelledTORcancelledby: TStringField;
    CancelledTORcanceldate: TDateTimeField;
    CancelledTORremarks: TStringField;
    Recap1opdescription: TStringField;
    Recap1code: TStringField;
    Recap1tamount: TFloatField;
    TransferOption: TRadioGroup;
    GetAccount: TMyQuery;
    GetAccountidchart: TLargeintField;
    GetAccountaccountcode: TStringField;
    GetAccountaccountname: TStringField;
    GetAccountaccounttype: TStringField;
    GetAccountaccountledgertype: TStringField;
    GetAccountBalAsOf: TFloatField;
    GetAccountBalPeriodCovered: TFloatField;
    GetAccountIndent: TLargeintField;
    CDUpdate: TMyQuery;
    CDUpdateidCashDeposit: TLargeintField;
    CDUpdatecdDate: TDateField;
    CDUpdatecdDescription: TStringField;
    CDUpdatecdNumber: TStringField;
    CDUpdatecdAmount: TFloatField;
    CDUpdatecashstatus: TBooleanField;
    CDUpdatepassword: TStringField;
    CDcheck: TMyQuery;
    MyQuery1: TMyQuery;
    LargeintField1: TLargeintField;
    DateField1: TDateField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    CRCheck: TMyQuery;
    JournalUpdate: TMyQuery;
    CRUpdate: TMyQuery;
    CRUpdateidCashReceipt: TLargeintField;
    CRUpdatecrDate: TDateField;
    CRUpdatecrNumber: TStringField;
    CRUpdatecrAmount: TFloatField;
    CRUpdatecrDescription: TStringField;
    MyConnection1: TMyConnection;
    signatoryidcdcrsign: TLargeintField;
    SCidsaleschart: TLongWordField;
    DBGrid1: TDBGrid1;
    SCARUCSCC: TStringField;
    SCSalesUCSCC: TStringField;
    CDCRsummary1: TTabSheet;
    CDCRSumRpt: TQuickRep;
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    RecapTmp: TMyQuery;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRBand2: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    CDCRsummary2: TTabSheet;
    QuickRep2: TQuickRep;
    QRBand4: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRBand5: TQRBand;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    RecapTmp2: TMyQuery;
    QRLabel30: TQRLabel;
    QRDBText28: TQRDBText;
    QRCompositeReport1: TQRCompositeReport;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    Cashreceipts: TTabSheet;
    QuickRep3: TQuickRep;
    QRBand6: TQRBand;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape16: TQRShape;
    QRBand7: TQRBand;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRBand8: TQRBand;
    QRDBText33: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText39: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText32: TQRDBText;
    CashReceiptTmp: TMyQuery;
    CashReceiptTmpcode: TStringField;
    CashReceiptTmpdescription: TStringField;
    CashReceiptTmpdebit: TStringField;
    CashReceiptTmpcredit: TStringField;
    QRDBText43: TQRDBText;
    CDCRDetail: TTabSheet;
    QuickRep4: TQuickRep;
    QRBand9: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRShape15: TQRShape;
    QRLabel56: TQRLabel;
    QRBand10: TQRBand;
    QRDBText44: TQRDBText;
    QRDBText46: TQRDBText;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRDBText47: TQRDBText;
    CDCRdetailTmp: TMyQuery;
    CDCRdetailTmpORNumber: TStringField;
    CDCRdetailTmpName: TStringField;
    CDCRdetailTmptmp: TFloatField;
    CDCRdetailTmptmp2: TStringField;
    QRShape30: TQRShape;
    QRShape11: TQRShape;
    QRLabel55: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape3: TQRShape;
    RecapDS: TfrxDBDataset;
    Recap2DS: TfrxDBDataset;
    frxReport1: TfrxReport;
    SignatoryDS: TfrxDBDataset;
    CashReceiptDS: TfrxDBDataset;
    CashReceiptReport: TfrxReport;
    CashReceiptTmpdateR: TStringField;
    SCFitall: TStringField;
    SCRPTax: TStringField;
    P1: TNxButton;
    Image1: TImage;
    Image3: TImage;
    CDCRdetailTmpamount: TStringField;
    RecapTmpOPDescription: TStringField;
    RecapTmptellerornumber: TStringField;
    RecapTmpcode: TStringField;
    RecapTmpTAmount: TStringField;
    RecapTmpline: TStringField;
    Recap2TotalBill: TFloatField;
    Recap2ucec: TFloatField;
    Recap2ucme: TFloatField;
    Recap2ucnpcscc: TFloatField;
    Recap2VAT: TFloatField;
    Recap2VATDist: TFloatField;
    Recap2VATGenCO: TFloatField;
    Recap2VATTransCO: TFloatField;
    Recap2VATSystemLoss: TFloatField;
    Recap2SystemLossCharge: TFloatField;
    Recap2PKVRAmount: TFloatField;
    Recap2mcc: TFloatField;
    Recap2fitall: TFloatField;
    Recap2rptax: TFloatField;
    Recap2totalnet: TFloatField;
    RecapTmp2Idcancelledtor: TIntegerField;
    RecapTmp2ORNumber: TStringField;
    RecapTmp2ORDate: TDateTimeField;
    RecapTmp2AccountNumber: TStringField;
    RecapTmp2Name: TStringField;
    RecapTmp2Address: TStringField;
    RecapTmp2amount: TStringField;
    RecapTmp2TellerCode: TStringField;
    RecapTmp2TellerName: TStringField;
    RecapTmp2CheckNumber: TStringField;
    RecapTmp2CheckDate: TDateTimeField;
    RecapTmp2Bank: TStringField;
    RecapTmp2CheckAmount: TFloatField;
    RecapTmp2CashTendered: TFloatField;
    RecapTmp2backupor: TStringField;
    RecapTmp2TransStat: TStringField;
    RecapTmp2ORStatus: TStringField;
    RecapTmp2cancelledby: TStringField;
    RecapTmp2canceldate: TDateTimeField;
    RecapTmp2remarks: TStringField;
    QRLabel77: TQRLabel;
    Label7: TLabel;
    NxLinkLabel1: TNxLinkLabel;
    NxHeaderPanel2: TNxHeaderPanel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    NxButton6: TNxButton;
    NxButton7: TNxButton;
    DBEdit1: TDBEdit;
    Edit3: TEdit;
    updateMd5: TMyQuery;
    SCPARec: TStringField;
    Recap2parec: TFloatField;
    Recap2ucsd: TFloatField;
    TEffEx: TMyQuery;
    QExport4XLS2: TQExport4XLS;
    TEffExTeller: TStringField;
    TEffExCode: TStringField;
    TEffExName: TStringField;
    TEffExTORIssued: TFloatField;
    TEffExCancelledOR: TFloatField;
    TEffExNumberOfBills: TFloatField;
    TEffExAmount: TFloatField;
    NxButton8: TNxButton;
    NxLinkLabel4: TNxLinkLabel;
    areaRadio: TRadioGroup;
    NxHeaderPanel1: TNxHeaderPanel;
    Label8: TLabel;
    Label9: TLabel;
    BatchNumber: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    area_m: TNxEdit;
    Collector_m: TNxEdit;
    TellerName_m: TNxEdit;
    PostDate_m: TNxDatePicker;
    NxButton5: TNxButton;
    Bevel1: TBevel;
    NxLinkLabel2: TNxLinkLabel;
    logCaption: TLabel;
    usersORupdate: TMyQuery;
    tmpBaseQ: TMyQuery;
    StartTellerOR_m: TNxNumberEdit;
    Batch_m: TNxNumberEdit;
    NxButton9: TNxButton;
    NxHeaderPanel3: TNxHeaderPanel;
    AdvSmoothDatePicker1: TAdvSmoothDatePicker;
    userIDbase_tf: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    areaBase_tf: TEdit;
    Label19: TLabel;
    NxButton10: TNxButton;
    NxLinkLabel3: TNxLinkLabel;
    Label20: TLabel;
    AdvSmoothDatePicker2: TAdvSmoothDatePicker;
    Panel4: TPanel;
    Bevel3: TBevel;
    collintegratedQ: TMyQuery;
    collintegratedReport: TfrxReport;
    collingrtd: TfrxDBDataset;
    connectionCollAll: TMyConnection;
    tmpIntgdQ: TMyQuery;
    usersIntgrdQ: TMyQuery;
    usersIntgrdQEntry: TIntegerField;
    usersIntgrdQCollectorCode: TStringField;
    usersIntgrdQPassword: TStringField;
    usersIntgrdQUserType: TStringField;
    usersIntgrdQPicture: TBlobField;
    usersIntgrdQName: TStringField;
    usersIntgrdQORCount: TLongWordField;
    usersIntgrdQAccountCode: TStringField;
    usersIntgrdQEnrolled: TStringField;
    usersIntgrdQEnrollDate: TDateField;
    usersIntgrdQIsActive: TBooleanField;
    usersIntgrdQarea: TStringField;
    usersIntgrdQIsWAN: TBooleanField;
    usersIntgrdQAreacode: TStringField;
    usersIntgrdQmcashier: TBooleanField;
    usersIntgrdQmatchCode: TStringField;
    collintegratedQNo: TStringField;
    collintegratedQEntry: TIntegerField;
    collintegratedQReceiptNumber: TStringField;
    collintegratedQAccountCode: TFloatField;
    collintegratedQArea: TStringField;
    collintegratedQBook: TStringField;
    collintegratedQSequence: TStringField;
    collintegratedQAccountNumber: TStringField;
    collintegratedQAccntNumberNC: TStringField;
    collintegratedQName: TStringField;
    collintegratedQBillMonth: TStringField;
    collintegratedQTotalBill: TFloatField;
    collintegratedQSundries: TStringField;
    collintegratedQTotal: TFloatField;
    collintegratedQCollectorCode: TStringField;
    collintegratedQDatePaid: TDateField;
    collintegratedQDateRemitted: TDateField;
    collintegratedQEncoderCode: TStringField;
    collintegratedQPosted: TStringField;
    collintegratedQKilowattHour: TFloatField;
    collintegratedQAddress: TStringField;
    collintegratedQOPDescription: TStringField;
    collintegratedQOPAmount: TFloatField;
    collintegratedQTellerORNumber: TStringField;
    collintegratedQWRateCode: TStringField;
    collintegratedQAreaCollector: TStringField;
    collintegratedQcollectorBase: TStringField;
    collintegratedQTotalF: TStringField;
    collintegratedQTotalCurr: TFloatField;
    collintegratedQorderNo: TLargeintField;
    userBase: TfrxDBDataset;
    recapCollIntegrated: TMyQuery;
    recapIntgrdColl: TfrxDBDataset;
    recapCollIntegratedarea: TStringField;
    recapCollIntegratedTotalF: TFloatField;
    recapCollIntegratedtotal: TFloatField;
    recapCollIntegratedfinalV: TFloatField;
    recapCollIntegratedwithholding: TFloatField;
    Recap2gram: TFloatField;
    ocQ: TMyQuery;
    isoQuery: TMyQuery;
    isoNumDS: TfrxDBDataset;
    isoQueryidisofmnumber: TIntegerField;
    isoQueryisoNumber: TStringField;
    isoQueryrevision: TStringField;
    isoQuerydatestarted: TDateField;
    isoQueryreportType: TStringField;
    isoQueryDepartment: TStringField;
    isoQuerydateF: TStringField;
    withholdingQ: TMyQuery;
    withholdingTfrxDS: TfrxDBDataset;
    nceccoCB: TCheckBox;
    nceccono: TLabel;
    NxLinkLabel5: TNxLinkLabel;
    ncecconoQuery: TMyQuery;
    checkORQ: TMyQuery;
    checkORQcnt: TStringField;
    checkORQTellerCode: TStringField;
    procedure P4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OtherPaymentClick(Sender: TObject);
    procedure PDJSillyLabel2Click(Sender: TObject);
    procedure CDCRClick(Sender: TObject);
    procedure PDJSillyLabel1Click(Sender: TObject);
    procedure DSPClassDataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure SummaryClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PDJSillyLabel4Click(Sender: TObject);
    procedure Recap2CalcFields(DataSet: TDataSet);
    procedure ReportOptionClick(Sender: TObject);
    procedure ReceiptPrintingClick(Sender: TObject);
    procedure DepositBtnClick(Sender: TObject);
    procedure COHAccountButtonClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxEdit1Change(Sender: TObject);
    procedure DCPRClick(Sender: TObject);
    procedure TellerEffClick(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure NxButton4Click(Sender: TObject);
    procedure TransferOptionClick(Sender: TObject);
    procedure QRDBText8Print(sender: TObject; var Value: string);
    procedure QRDBText9Print(sender: TObject; var Value: string);
    procedure QRDBText10Print(sender: TObject; var Value: string);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure QRDBText29Print(sender: TObject; var Value: string);
    procedure QRDBText46Print(sender: TObject; var Value: string);
    procedure RecapDSCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure P1Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure dbConnect();
    procedure areaRadioClick(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure NxLinkLabel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Procedure SelectAccountFromForm(AccountString : String);
  end;

var
  MenuForm: TMenuForm;
  pointL : Boolean;
  userlog: Boolean;
implementation

uses SetTeller,
     TellerPOS,
     OtherPayments,
     ModTools,
     DateUtils,
     Data,
     AckrTor,
     depositslip,
     ChartList, DCPR;

var
 PageCount      : Integer         ;
 LineCount      : Integer         ;
 HeadSW         : Boolean         ;
 GrandTotal     : Currency        ;
 TotalORS       : Integer         ;
 PrinterName    : String          ;
 Device,
 Driver, Port: array[0..1023] of char;
 varhandle : THandle;


{$R *.dfm}

Procedure TMenuForm.SelectAccountFromForm;
begin

    If not Assigned(AccountChartForm) then
    AccountChartForm := TAccountChartForm.Create(Application);

    With AccountChartForm do
     begin
      MyChart.Close;
      MyChart.ParamByName('code').Text        := '%'+AccountString+'%';
      MyChart.ParamByName('description').Text := '%'+AccountString+'%';
      MyChart.Open;
     end;

    AccountChartForm.ShowModal;
end;

procedure TMenuForm.P1Click(Sender: TObject);
var areaCode_Str : String;
begin
 if not userlog then
 begin
   messagedlg('Unable to access user code '''+Collector_m.Text+'''..',mtError,[mbOK],0);
   exit;
 end;

 areaCode_Str := UpperCase(copy(MyConnection1.Server,7,3));
 if(Length(MyConnection1.Server)=6) then
 areaCode_Str := 'DMO';


 If not assigned(TellerPOSForm) then
 TellerPOSForm := TTellerPOSForm.Create(Application);

 //====================================
 //====================================
 if BillingData.MyConnection1.Server = 'server' then
     begin
       TellerPOSForm.MyConnection1.Connected := false;
       TellerPOSForm.MyConnection1.Server    := 'server';
       TellerPOSForm.MyConnection1.Database  := 'zanecoisd';
       TellerPOSForm.MyConnection1.Connected := true;
     end
   else if  BillingData.MyConnection1.Server = 'serverpao' then
     Begin
       TellerPOSForm.MyConnection1.Connected := false;
       TellerPOSForm.MyConnection1.Server    := 'serverpao';
       TellerPOSForm.MyConnection1.Database  := 'zanecoisd';
       TellerPOSForm.MyConnection1.Connected := true;
     End
   else if  BillingData.MyConnection1.Server = 'serversao' then
     Begin
       TellerPOSForm.MyConnection1.Connected := false;
       TellerPOSForm.MyConnection1.Server    := 'serversao';
       TellerPOSForm.MyConnection1.Database  := 'zanecoisd';
       TellerPOSForm.MyConnection1.Connected := true;
     End
   else if  BillingData.MyConnection1.Server = 'serverlao' then
     Begin
       TellerPOSForm.MyConnection1.Connected := false;
       TellerPOSForm.MyConnection1.Server    := 'serverlao';
       TellerPOSForm.MyConnection1.Database  := 'zanecoisd';
       TellerPOSForm.MyConnection1.Connected := true;
   end;
  //========================================
  //========================================

 If SetForm.usersUserType.Text = '5' then
   begin
     TellerPosForm.btnGetBatch.Enabled           := True;
     TellerPosForm.BtnNewApplicant.Enabled       := True;
     TellerPosForm.BtnDisconnect.Enabled         := True;
     TellerPosForm.BtnReconnect.Enabled          := True;
     TellerPosForm.BtnSubOffice.Enabled          := True;
     TellerPosForm.BtnRequest.Enabled            := True;
     TellerPosForm.noneConsmrPilBtn.Enabled      := True;
     TellerPOSForm.ConsumerDataBox.Left          := 46;
     TellerPOSForm.ConsumerDataBox.Top           := 128;
     TellerPOSForm.OutstandingAccountBox.Visible := False;
     TellerPOSForm.OtherPaymentsBox.Left         := 46;
     TellerPOSForm.OtherPaymentsBox.Top          := 317;
     TellerPOSForm.Caption                       := 'ON-LINE Cashier Interface';
     TellerPOSForm.Label44.Caption               := areaCode_Str+' Cashier''s Interface';
     TellerPOSForm.AdvSmoothLabel1.Caption.Text  := areaCode_Str+' Cashier''s Interface';
     TellerPOSForm.ConsumerDataBox.Enabled       := True;
   end;

 If SetForm.usersUserType.Text = '2' then
   begin
      TellerPOSForm.Label44.Caption := areaCode_Str+' '+TellerPOSForm.Label44.Caption ;
      TellerPOSForm.AdvSmoothLabel1.Caption.Text := areaCode_Str+' '+TellerPOSForm.AdvSmoothLabel1.Caption.Text;
   end
 else If SetForm.usersUserType.Text = '8' then
   begin
     TellerPOSForm.Caption                       := 'MOBILE TELLER INTERFACE';
     TellerPOSForm.Label44.Caption               := areaCode_Str+' Mobile Tellering System';
     TellerPOSForm.AdvSmoothLabel1.Caption.Text  := areaCode_Str+' Mobile Tellering System';

     //============NCecco Counter====================
     //==============================================
     if(SetForm.usersncecco.AsBoolean) then
      begin
        checkORQ.Close;
        checkORQ.ParamByName('collectorcode').Text := SetForm.usersCollectorCode.Text;
        checkORQ.Open;
        if not checkORQ.IsEmpty then
          TellerPOSForm.nceccoCnt  := checkORQcnt.AsInteger+1
        else
          TellerPOSForm.nceccoCnt  := 1;
      end;

      //showmessage(IntToStr(TellerPOSForm.nceccoCnt));

   end
 else If SetForm.usersUserType.Text = '7' then
   begin
      TellerPOSForm.Caption                       := 'BANK COLLECTION INTERFACE';
      TellerPOSForm.Label44.Caption               := areaCode_Str+' BANK Collection';
      TellerPOSForm.AdvSmoothLabel1.Caption.Text  := areaCode_Str+' BANK Collection';
   end;

 case SetForm.FormOpt.ItemIndex of
 0 : TellerPOSForm.FormType.Caption := 'Acknowledgement Receipt';
 1 : TellerPOSForm.FormType.Caption := 'Teller OEBR Old';
 2 : TellerPOSForm.FormType.Caption := 'Teller OEBR New';
 3 : TellerPOSForm.FormType.Caption := 'Cashier''s Official Receipt';
 end;

 case SetForm.PrintOpt.ItemIndex of
 0 : TellerPOSForm.PrintOption.Caption := 'Printer Option : Default';
 1 : TellerPOSForm.PrintOption.Caption := 'Printer Option : EPSON LX-II';
 end;

 TellerPOSForm.TOR.FilterSQL   := 'TellerCode = '+QuotedStr(SetForm.usersCollectorCode.Text)+' and '+
                                  'batch = '+QuotedStr(SetForm.Batch.Text)+' and '+
                                  'ORDate = '+QuotedStr(FormatDateTime('YYYY-MM-DD',SetForm.PostDate.Date));
 TellerPOSForm.TOR.OrderFields := 'ORNumber';
 TellerPOSForm.TOR.Open;

 TellerPOSForm.AdvSmoothLabel1.Caption.Text := TellerPOSForm.AdvSmoothLabel1.Caption.Text+' (Teller '+ SetForm.SpinEdit1.Text+')';

 if ((nceccoCB.Checked) AND (SetForm.usersncecco.AsBoolean)AND(SetForm.usersUserType.Text = '8')) then
    TellerPOSForm.printOEBRlabel.Visible := true
  else
    TellerPOSForm.printOEBRlabel.Visible := false;

 TellerPOSForm.Show;

end;

procedure TMenuForm.P4Click(Sender: TObject);
begin
  Close;
end;

procedure TMenuForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  MenuForm := Nil;
  SetForm.Close;
end;

procedure TMenuForm.OtherPaymentClick(Sender: TObject);
begin
if not userlog then
 begin
   messagedlg('Unable to access user code '+Collector_m.Text+'..',mtError,[mbOK],0);
   exit;
 end;

If not assigned(OtherPaymentsForm) then
 OtherPaymentsForm := TOtherPaymentsForm.Create(Application);
 OtherPaymentsForm.Show;
end;

procedure TMenuForm.PDJSillyLabel2Click(Sender: TObject);
begin
  Panel1.Visible := False;
  sc.Close;
  signatory.Close;
end;

procedure TMenuForm.CDCRClick(Sender: TObject);
begin
 if not userlog then
 begin
   messagedlg('Unable to access user code '''+Collector_m.Text+'''..',mtError,[mbOK],0);
   exit;
 end;

  try
   CreateSigntory.Execute;
  except
  end;

  try       
   InsertAccountCode.Execute;
  except
  end;

  signatory.open;

  If signatory.IsEmpty then
    begin
     Signatory.Append;
     signatoryPreparedByName.Text     := 'ISIDRA E. PAGENTE';
     signatoryPreparedByPosition.Text := 'Chief, Treasury Div.';

     signatoryCheckedByName.Text      := 'LEPHYN G. VILLARINO, CPA';
     signatoryCheckedByPosition.Text  := 'Chief, Finance Dept.';

     signatoryReviewedByName.Text     := 'LEONORA I. TIMTIM, MBA';
     signatoryReviewedByPosition.Text := 'FSD Manager';

     signatoryAuditedByName.Text      := 'FLORDELIZ H. FLORIDA, CPA';
     signatoryAuditedByPostion.Text   := 'Internal Auditor';

     signatoryAttestedByName.Text     := 'ADELMO P. LAPUT';
     signatoryAttestedByPosition.Text := 'General Manager';
     signatory.Post;
    end else
    begin
     PreparedName.Text                := signatoryPreparedByName.Text;
     PreparedPos.Text                 := signatoryPreparedByPosition.Text;

     CheckedName.Text                 := signatoryCheckedByName.Text;
     CheckPos.Text                    := signatoryCheckedByPosition.Text;

     ReviewedName.Text                := signatoryReviewedByName.Text;
     ReviewedPos.Text                 := signatoryReviewedByPosition.Text;

     AuditedName.Text                 := signatoryAuditedByName.Text;
     AuditedPos.Text                  := signatoryAuditedByPostion.Text;

     AttestedName.Text                := signatoryAttestedByName.Text;
     AttestedPos.Text                 := signatoryAttestedByPosition.Text;

     COHAccount.Text                  := signatoryCOHAccountcoce.Text;
    end;

  SC.Open;
  
  Panel1.Left          := 27;
  Panel1.Top           := 16;
  Panel1.Visible       := True;
  Panel1.BringToFront;
  TransactionDateFrom.Date := Now;
end;

procedure TMenuForm.PDJSillyLabel1Click(Sender: TObject);

{Procedure TellerReportHeadingOR;
begin
 Write(Lst,#18,#27+'P');
 Writeln(Lst,'Page ',PageCount);
 Writeln(Lst,#27+'E','CASHIER''S DAILY COLLECTION REPORT',#27+'F');
 Writeln(Lst,'Cashier Name      : ',SetForm.TellerName.Text);
 Writeln(Lst,'Collection Date   : ',DateToStr(TransactionDateFrom.DateTime));
 Writeln(Lst,'-----------------------------------------------------------------------');
 Writeln(Lst,'|  Teller OR  Name                                             Amount |');
 Writeln(Lst,'-----------------------------------------------------------------------');
end;

label LPTnext;
label LPTcontinue;}
var
 areaStr : String;
begin
  QRLabel52.Caption := SetForm.TellerName.Text;
  If ReportOption.ItemIndex = 0 then
  begin
    QRLabel50.Caption :='Collection Date   : '+DateToStr(TransactionDateFrom.Date);
    QRLabel51.Caption := 'CASHIER''S DAILY COLLECTION REPORT';
  end else begin
    QRLabel51.Caption := 'CASHIER''S MONTHLY COLLECTION REPORT';
    QRLabel50.Caption :='Period Covered    : '+DateToStr(TransactionDateFrom.Date)+' - '+DateToStr(TransactionDateTo.Date);
  end;
 CDCRdetailTmp.Close;
 CDCRdetailTmp.ParamByName('tellercode').text := SetForm.usersCollectorCode.Text;
 CDCRdetailTmp.ParamByName('ORDate').AsDate   := TransactionDateFrom.Date;
 CDCRdetailTmp.Open;

 areaStr := UpperCase(copy(BillingData.MyConnection1.Server,7,3));
 if(Length(BillingData.MyConnection1.Server)=6) then
 areaStr := 'DMO';

 QRLabel77.Caption := '(Area: '+areaStr+')';
 QuickRep4.Preview;

 {if MessageDlg('Set Printer on ..... Proceed?', mtConfirmation, [mbOK,mbCancel], 0) = mrCancel then
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

 PTOR.ParamByName('tellercode').text := SetForm.usersCollectorCode.Text;CDCRdetailTmp
 PTOR.ParamByName('ORDate').AsDate   := TransactionDateFrom.Date;
 PTOR.Open;

 If PTOR.IsEmpty then
   begin
    MessageDlg('No data to print.  Please check.', mtInformation, [mbOK], 0);
    Ptor.Close;
    exit;
   end;

 PageCount           := 1;
 LineCount           := 0;
 HeadSW              := True;
 GrandTotal          := 0;
 TotalORS            := 0;

 Gauge1.Visible      := False;
 Gauge1.Progress     := 0;
 Gauge1.MinValue     := 0;
 Gauge1.MaxValue     := PTOR.RecordCount;
 Application.ProcessMessages;

 Gauge1.Visible      := True;

 PTOR.First;

 While not PTOR.Eof do
  begin

  Gauge1.AddProgress(1);
  Application.ProcessMessages;

  If HeadSW then
   begin
    HeadSW := False;
    TellerReportHeadingOR;
   end;

   Writeln(Lst,' ',JustStr(PTORORNumber.Text,' ',12,0),
               ' ',JustStr(PTORName.Text,' ',40,0),
               Format (PTORAmount.AsCurrency,'#,###,###.##'));

   GrandTotal := GrandTotal + PTORAmount.AsCurrency;
   Inc(TotalORS);

   Inc(LineCount);
   If LineCount = 50 then
    begin
     Inc(PageCount);
     LineCount := 0;
     Writeln(Lst,'-----------------------------------------------------------------------------------------------');
     Write(Lst,#12);
     TellerReportHeadingOR;
    end;

   PTOR.Next;
  end;
 Writeln(Lst,'-----------------------------------------------------------------------');
 Writeln(Lst,'|  Teller OR  Name                                             Amount |');
 Writeln(Lst,'-----------------------------------------------------------------------');

 Writeln(Lst,'-----------------------------------------------------------------------');
 Writeln(Lst,'|                                         TOTAL  ',TotalORS:5,' ',
              Format (GrandTotal,'##,###,###.##'),'|');
 Writeln(Lst,'-----------------------------------------------------------------------');

 If LineCount > 0 then Write(Lst,#12);

 PTOR.Close;

 CloseFile(Lst);
 MessageDlg('Detail Printing done.', mtInformation, [mbOK], 0);}
end;

procedure TMenuForm.DSPClassDataChange(Sender: TObject; Field: TField);
begin
  StaticText3.Caption := PClassDescription.Text;
end;

procedure TMenuForm.Button2Click(Sender: TObject);
begin
  PClass.Close;
  Panel2.Visible := False;
end;

procedure TMenuForm.SummaryClick(Sender: TObject);
begin
 if not userlog then
 begin
   messagedlg('Unable to access user code '+Collector_m.Text+'..',mtError,[mbOK],0);
   exit;
 end;
  Panel2.Left    := 6;
  Panel2.Top     := 22;
  DateFrom.Date  := StartOfTheMonth(Now);
  DateTo.Date    := EndOfTheMonth(Now);
  Panel2.Visible := True;
  Panel2.BringToFront;
  PClass.Open;
end;

procedure TMenuForm.TellerEffClick(Sender: TObject);
begin
 if not userlog then
 begin
   messagedlg('Unable to access user code '''+Collector_m.Text+'''..',mtError,[mbOK],0);
   exit;
 end;

  TellerEfficiencyPanel.Left    := 103;
  TellerEfficiencyPanel.Top     := 135;
  TellerEfficiencyPanel.Visible := True;
  TellerEfficiencyPanel.BringToFront;
  EffDateFrom.Date              := StartOfTheMonth(Now);
  EffDateTo.Date                := EndOfTheMonth(Now);
end;

procedure TMenuForm.TransferOptionClick(Sender: TObject);
begin
  if TransferOption.ItemIndex = 1 then
    begin
      try
       MyConnection1.Connected := True;
      except
      on E: Exception do
        begin
          NxMemo1.Lines.Add(E.Message);
          TransferOption.ItemIndex := 0;
          exit;
        end;
      end;
    end;
end;

procedure TMenuForm.areaRadioClick(Sender: TObject);
begin
  logCaption.Caption := 'User log: ';

  if SetForm.OnShowPOS then
  begin
    SetForm.OnShowPOS := false;
    exit;
  end;

  with SetForm do
  begin
     PostDate_m.Date := PostDate.Date;

     case areaRadio.ItemIndex of
       0:area_m.Text := 'DIPOLOG MAIN';
       1:area_m.Text := 'PI�AN';
       2:area_m.Text := 'SINDANGAN';
       3:area_m.Text := 'LILOY';
     end;
  end;


  //=====================================
  //=====================================
 userlog := false;
 dbConnect;

 with SetForm do
  begin
      tmpusers.Close;
      tmpusers.SQL.Clear;
      tmpusers.SQL.Add('select * from collector ');
      tmpusers.SQL.Add('    where matchcode = :collectorcode and ');
      tmpusers.SQL.Add('          userType = :userType and ');
      tmpusers.SQL.Add('          enrolldate = current_date');

      tmpusers.ParamByName('collectorcode').Text := BillingData.userBaseQCollectorCode.Text;
      tmpusers.ParamByName('userType').AsInteger := BillingData.userBaseQUserType.AsInteger;
      tmpusers.Open;

      If tmpUsers.IsEmpty then
       begin
         ShowMessage('Invalid User and UserType or Enroll Date invalid');
         Collector.SetFocus;
         tmpusers.Close;
         exit;
       end;

      if(tmpusersIsActive.AsBoolean = false) then
      begin
         ShowMessage('Inactive user account..');
         Collector.SetFocus;
         tmpusers.Close;
         exit;
      end;

      tmpBaseQ.Close;
      tmpBaseQ.SQL.Clear;
      tmpBaseQ.SQL.Add('Select * from collector where collectorcode = :collectorcode');
      tmpBaseQ.ParamByName('collectorcode').Text := BillingData.userBaseQCollectorCode.Text;
      tmpBaseQ.Open;

      area_m.Text          := SetForm.area_String;
      collector_m.Text     := tmpUsersCollectorcode.Text;
      TellerName_m.Text    := tmpUsersName.Text;
      StartTellerOR_m.Text := IntToStr(tmpBaseQ.FieldByName('ORCount').AsInteger );
      Batch_m.Text         := setForm.Batch.Text;
      PostDate_m.date      := setForm.PostDate.Date;

  end;


  //=====================================
  //=====================================
  areaRadio.Enabled      := false;

  NxHeaderPanel1.Top     := 91;
  NxHeaderPanel1.Left    := 100;
  NxHeaderPanel1.BringToFront;
  NxHeaderPanel1.Visible := true;

end;

procedure TMenuForm.Button1Click(Sender: TObject);

Procedure SummaryHeading;
begin
 Write(Lst,#18,#27+'P');
 Writeln(Lst,'Page ',PageCount);
 Writeln(Lst,#27+'E','SUMMARY OF COLLECTION PER PAYMENT DESCRIPTION',#27+'F');
 Writeln(Lst,'PAYMENT DESCRIPTION : '+PClassDescription.Text);
 Writeln(Lst,'PERIOD COVERED      : ',DateToStr(Datefrom.DateTime)+' - '+DateToStr(DateTo.DateTime));
 Write(Lst,#15);
 Writeln(Lst,'----------------------------------------------------------------------------------------------------------');
 Writeln(Lst,'| Account# |             Name             |       Address      |   Date   |   OR Number   |        Amount|');
 Writeln(Lst,'----------------------------------------------------------------------------------------------------------');
end;

begin
 if MessageDlg('Set Printer on ..... Proceed?', mtConfirmation, [mbOK,mbCancel], 0) = mrCancel then
 exit;

 AssignFile(Lst,'LPT1');
 Rewrite(Lst);
 If IOResult <> 0 then
   begin
    MessageDlg('Printer error ... cannot open LPT1.', mtError, [mbOK], 0);
    exit;
   end;

 Coll.Close;
 Coll.ParamByName('datefrom').AsDate    := DateFrom.Date;
 Coll.ParamByName('dateto').AsDate      := Dateto.Date;
 Coll.ParamByName('opdescription').text := PClassDescription.Text;
 Coll.Open;

 If Coll.IsEmpty then
   begin
    MessageDlg('No data to print.  Please check.', mtInformation, [mbOK], 0);
    Coll.Close;
    exit;
   end;

 PageCount           := 1;
 LineCount           := 0;
 HeadSW              := True;
 GrandTotal          := 0;
 TotalORS            := 0;

 Gauge2.Visible      := False;
 Gauge2.Progress     := 0;
 Gauge2.MinValue     := 0;
 Gauge2.MaxValue     := Coll.RecordCount;
 Application.ProcessMessages;

 Gauge2.Visible      := True;

 Coll.First;

 While not Coll.Eof do
  begin

  Gauge2.AddProgress(1);
  Application.ProcessMessages;

  If HeadSW then
   begin
    HeadSW := False;
    SummaryHeading;
   end;

   Writeln(Lst,'|',JustStr(CollAccountNumber.Text,' ',10,0),
               '|',JustStr(CollName.Text,' ',30,0),
               '|',JustStr(CollAddress.Text,' ',20,0),
               '|',JustStr(CollDatePaid.Text,' ',10,0),
               '|',JustStr(CollTellerORNumber.Text,' ',15,0),
               '|',Format (CollTotal.AsCurrency,'#,###,###.##'),
               '|');

   GrandTotal := GrandTotal + CollTotal.AsCurrency;
   Inc(TotalORS);

   Inc(LineCount);
   If LineCount = 50 then
    begin
     Inc(PageCount);
     LineCount := 0;
     Writeln(Lst,'----------------------------------------------------------------------------------------------------------');
     Write(Lst,#12);
     SummaryHeading;
    end;

   Coll.Next;
  end;

 Writeln(Lst,'----------------------------------------------------------------------------------------------------------');
 Writeln(Lst,'|                                                                           TOTAL  ',TotalORs:5,'  |',
              Format (GrandTotal,'#,###,###.##'),'|');
 Writeln(Lst,'----------------------------------------------------------------------------------------------------------');

 If LineCount > 0 then Write(Lst,#12);

 Coll.Close;

 CloseFile(Lst);
 MessageDlg('Printing done.', mtInformation, [mbOK], 0);
end;

procedure TMenuForm.FormShow(Sender: TObject);
Var Restructure : TMyQuery;

begin

  nceccono.Caption := SetForm.usersnceccocnt.Text;
  isoQuery.Close;
  isoQuery.Open;

  if SetForm.usersPass.Text ='5f4dcc3b5aa765d61d8327deb882cf99' then
  begin
    Label7.Visible:=true;
    NxLinkLabel1.Visible := true;
  end;

  Restructure := TMyQuery.Create(self);
  Restructure.Connection := BillingData.MyConnection1;
  Restructure.SQL.Clear;
  Restructure.SQL.Add('ALTER TABLE `zaneco`.`deposit` ADD COLUMN `BankRemit` VARCHAR(1) DEFAULT 0 AFTER `Amount`');

  Try
  Restructure.Execute;
  except
  end;

  Restructure.SQL.Clear;
  Restructure.SQL.Add('CREATE TABLE  `zaneco`.`dcprcoh` (');
  Restructure.SQL.Add('  `iddcprCOH` int(10) unsigned NOT NULL auto_increment,');
  Restructure.SQL.Add('  `COHDate` date default NULL,');
  Restructure.SQL.Add('  `FB` double(12,2) default "0.00",');
  Restructure.SQL.Add('  `Collection` double(12,2) default "0.00",');
  Restructure.SQL.Add('  `Redeposit` double(12,2) default "0.00",');
  Restructure.SQL.Add('  `Total` double(12,2) default "0.00",');
  Restructure.SQL.Add('  `Deposit` double(12,2) default "0.00",');
  Restructure.SQL.Add('  `Balance` double(12,2) default "0.00",');
  Restructure.SQL.Add('  `CollectionDate` date default NULL,');
  Restructure.SQL.Add('  PRIMARY KEY  (`iddcprCOH`)');
  Restructure.SQL.Add(') ENGINE=InnoDB DEFAULT CHARSET=latin1;');

  Try
  Restructure.Execute;
  except
  end;

  DoubleBuffered := True;
  TransactionDateFrom.Date := Now;

  areaRadio.ItemIndex    := setForm.AreaCode.ItemIndex;
  areaRadio.Enabled      := true;
  userlog                := true;
  logCaption.Caption     := 'User log: '+ UpperCase(SetForm.Collector.Text)+' - '+SetForm.TellerName.Text;

  NxHeaderPanel1.Visible := false;

end;

procedure TMenuForm.PDJSillyLabel4Click(Sender: TObject);
Var TotalRemit, TotalOthers : Currency;
    recap3 : TMyQuery ;
    recap2net : Currency ;
    memo,memo2,memo14: TfrxMemoView;
    memo7,memo21,Memo36,Memo37 : TfrxMemoView;
    areaStr : String;
    titleStr : String;
label LPTnext;
label LPTcontinue;
begin


 memo   := frxReport1.FindComponent('Memo1') as TfrxMemoView;
 memo2  := frxReport1.FindComponent('Memo2') as TfrxMemoView;
 memo7  := frxReport1.FindComponent('Memo7') as TfrxMemoView;
 memo14 := frxReport1.FindComponent('Memo14') as TfrxMemoView;
 memo21 := frxReport1.FindComponent('Memo21') as TfrxMemoView;
 Memo36 := frxReport1.FindComponent('Memo36') as TfrxMemoView;

 //Memo39 := frxReport1.FindComponent('Memo39') as TfrxMemoView;
 Memo37  := frxReport1.FindComponent('Memo37') as TfrxMemoView;

 RecapTmp.Close;
 RecapTmp.ParamByName('DatePaidFrom').AsDate     := TransactionDateFrom.Date;

 RecapTmp2.Close;
 RecapTmp2.ParamByName('fromcanceldate').AsDate  := TransactionDateFrom.Date;

 withholdingQ.Close;
 withholdingQ.ParamByName('datefrom').AsDate := TransactionDateFrom.Date;

 If ReportOption.ItemIndex = 0 then
 begin
    RecapTmp.ParamByName('DatePaidTo').AsDate     := TransactionDateFrom.Date;
    RecapTmp2.ParamByName('tocanceldate').AsDate  := TransactionDateFrom.Date;
    withholdingQ.ParamByName('dateto').AsDate := TransactionDateFrom.Date;

    isoQuery.Close;
    isoQuery.ParamByName('reporttype').Text := 'CDCR';
    isoQuery.Open;

 end else begin
    RecapTmp.ParamByName('DatePaidTo').AsDate     := TransactionDateTo.Date;
    RecapTmp2.ParamByName('tocanceldate').AsDate  := TransactionDateTo.Date;
    withholdingQ.ParamByName('dateto').AsDate := TransactionDateTo.Date;

    isoQuery.Close;
    isoQuery.ParamByName('reporttype').Text := 'CMR';
    isoQuery.Open;

 end;
 RecapTmp.Open;
 RecapTmp2.Open;
 withholdingQ.Open;

 memo2.Text := 'Cashier Name : ' + SetForm.TellerName.Text;

 If ReportOption.ItemIndex = 0 then
 begin
    titleStr          := 'DAILY COLLECTION REPORT RECAP - ';
    memo14.Text       := 'Collection Date : '+ DateToStr(TransactionDateFrom.Date);
    memo21.Text       := 'Cancellation Date : ' +DateToStr(TransactionDateFrom.Date);

    memo37.Text       := 'Date Covered: ' +DateToStr(TransactionDateFrom.Date)+' - '+DateToStr(TransactionDateFrom.Date);

 end else begin
    titleStr          := 'MONTHLY COLLECTION REPORT RECAP - ';
    memo14.Text       := 'Period Covered : '+ DateToStr(TransactionDateFrom.Date)+' - '+DateToStr(TransactionDateTo.Date);
    memo21.Text       :=  'Cancellation Covered Date : '+ DateToStr(TransactionDateFrom.Date)+' - '+DateToStr(TransactionDateTo.Date);

    memo37.Text       := 'Date Covered: ' +DateToStr(TransactionDateFrom.Date)+' - '+DateToStr(TransactionDateTo.Date);
 end;

 QRLabel24.Caption := 'Printed Date/Time     : ' + FormatDateTime('MM/DD/YYYY hh:mm:ss ', now);

 

 {

 Writeln(Lst,'    ',JustStr(PreparedName.Text,' ',30,0),'    ',
                    JustStr(CheckedName.Text,' ',30,0));
 Writeln(Lst,'    ',JustStr(PreparedPos.Text,' ',30,0),'    ',
                    JustStr(CheckPos.Text,' ',30,0));
 Writeln(Lst);
 Writeln(Lst,'        Reviewed by:                      Audited by:');
 Writeln(Lst);
 Writeln(Lst,'        ',JustStr(ReviewedName.Text,' ',30,0),'    ',
                        JustStr(AuditedName.Text,' ',30,0));
 Writeln(Lst,'        ',JustStr(ReviewedPos.Text,' ',30,0),'    ',
                        JustStr(AuditedPos.Text,' ',30,0));
 Writeln(Lst);
 Writeln(Lst,' ':20,'Attested by:');
 Writeln(Lst);
 Writeln(Lst,' ':20,JustStr(AttestedName.Text,' ',30,2));
 Writeln(Lst,' ':20,JustStr(AttestedPos.Text,' ',30,2));

 }
 //'      TOTAL POWER SALES'
 areaStr := UpperCase(copy(BillingData.MyConnection1.Server,7,3));
 if(Length(BillingData.MyConnection1.Server)=6) then
 areaStr := 'DMO';

 if(areaStr='PAO') then
    areaStr := 'PAS'
 else if (areaStr='LAO') then
    areaStr := 'LAS'
 else if (areaStr='SAO') then
    areaStr := 'SAS';

 Memo36.Text := '(Area: '+areaStr+')';
 memo.Text := titleStr + '(Area: '+areaStr+')';

 pointL := False;
 frxReport1.ShowReport;
 //CDCRSumRpt.Preview;
 //QRCompositeReport1.Preview;
 //=========================================
{ if MessageDlg('Set Printer on ..... Proceed?', mtConfirmation, [mbOK,mbCancel], 0) = mrCancel then
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

 Recap.Close;
 Recap.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Recap.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date else
 Recap.ParamByName('DatePaidTo').AsDate    := TransactionDateTo.Date;
 Recap.Open;

 If Recap.IsEmpty then
   begin
    MessageDlg('No data to print. Please enter correct date.', mtInformation, [mbOK], 0);
    Recap.Close;
    exit;
   end;

 Recap1.Close;
 Recap1.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Recap1.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date else
 Recap1.ParamByName('DatePaidTo').AsDate    := TransactionDateTo.Date;
 Recap1.Open;

 Recap2.Close;
 Recap2.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Recap2.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date else
 Recap2.ParamByName('DatePaidTo').AsDate    := TransactionDateTo.Date;
 Recap2.Open;

 recap2net := Recap2totalnet.AsCurrency;

 Recap3            := TMyQuery.Create(Self);
 Recap3.Connection := SetForm.MyConnection1;
 Recap3.SQL.Clear;
 Recap3.SQL.Add('SELECT ocm.description as description,');
 Recap3.SQL.Add('       sum(ocl.amount) toc');
 Recap3.SQL.Add('FROM zaneco.ocledger ocl');
 Recap3.SQL.Add('left join zaneco.ocdetail ocd on (ocl.idocdetail = ocd.idocdetail)');
 Recap3.SQL.Add('left join zaneco.ocmaster ocm on (ocd.idocmaster = ocm.idocmaster)');
 Recap3.SQL.Add('left join zaneco.collection cl on (cl.tellerornumber = ocl.tornumber)');
 Recap3.SQL.Add('left join zaneco.collector clr on (cl.collectorcode = clr.collectorcode)');
 Recap3.SQL.Add('  where ocl.datepaid between :datefrom and :dateto and clr.usertype <> ''5''');
 Recap3.SQL.Add('group by ocm.description');
 Recap3.ParamByName('DateFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Recap3.ParamByName('DateTo').AsDate    := TransactionDateFrom.Date else
 Recap3.ParamByName('DateTo').AsDate    := TransactionDateTo.Date;
 recap3.Open;

 if not recap3.IsEmpty then
 while not recap3.eof do
   begin
     recap2net := recap2net - recap3.FieldByName('TOC').AsCurrency;
     recap3.Next;
   end;

 LineCount := 0;
 Write(Lst,#18,#27+'P');

 If ReportOption.ItemIndex = 0 then
 Writeln(Lst,#27+'E','CASHIER''S DAILY COLLECTION REPORT RECAP',#27+'F') else
 Writeln(Lst,#27+'E','CASHIER''S MONTHLY COLLECTION REPORT RECAP',#27+'F');
 Writeln(Lst,'Cashier Name      : ',SetForm.TellerName.Text);
 If ReportOption.ItemIndex = 0 then
 Writeln(Lst,'Collection Date   : ',DateToStr(TransactionDateFrom.Date)) else
 Writeln(Lst,'Period Covered    : ',DateToStr(TransactionDateFrom.Date),'-',DateToStr(TransactionDateTo.Date));
 Writeln(Lst,'----------------------------------------------------------------');
 Writeln(Lst,'| Account Code  |      Payment Description     |        Amount |');
 Writeln(Lst,'----------------------------------------------------------------');
 Recap.First;
 GrandTotal  := 0;
 TotalRemit  := 0;
 TotalOthers := 0;

 While not Recap.Eof do
  begin

  Writeln(Lst,'|',JustStr(Recapcode.Text,' ',15,0),
              '|',JustStr(RecapOPDescription.Text,' ',30,0),
              '|',Format(RecapTAmount.AsCurrency,'##,###,###.##'),'|');

  GrandTotal := GrandTotal + RecapTAmount.AsCurrency;
  TotalRemit := TotalRemit + RecapTAmount.AsCurrency;

  Inc(LineCount);
  If LineCount = 50 then
   begin
      Writeln(Lst,'----------------------------------------------------------------');
      LineCount := 0;
      Write(Lst,#12);
      If ReportOption.ItemIndex = 0 then
      Writeln(Lst,#27+'E','CASHIER''S DAILY COLLECTION REPORT RECAP',#27+'F') else
      Writeln(Lst,#27+'E','CASHIER''S MONTHLY COLLECTION REPORT RECAP',#27+'F');
      Writeln(Lst,'Cashier Name      : ',SetForm.TellerName.Text);
      If ReportOption.ItemIndex = 0 then
      Writeln(Lst,'Collection Date   : ',DateToStr(TransactionDateFrom.Date)) else
      Writeln(Lst,'Period Covered    : ',DateToStr(TransactionDateFrom.Date),'-',DateToStr(TransactionDateTo.Date));
      Writeln(Lst,'----------------------------------------------------------------');
      Writeln(Lst,'| Account Code  |      Payment Description     |        Amount |');
      Writeln(Lst,'----------------------------------------------------------------');
   end;

  Recap.Next;
  end;

 Writeln(Lst,'----------------------------------------------------------------');
 Writeln(Lst,'|Total Remittance                              |',
              Format(TotalRemit,'##,###,###.##'),'|');
 Writeln(Lst,'----------------------------------------------------------------');

 While not Recap1.Eof do
  begin

  Writeln(Lst,'|',JustStr(Recap1code.Text,' ',15,0),
              '|',JustStr(Recap1OPDescription.Text,' ',30,0),
              '|',Format(Recap1TAmount.AsCurrency,'##,###,###.##'),'|');

  GrandTotal  := GrandTotal + Recap1TAmount.AsCurrency;
  TotalOthers := TotalOthers + Recap1TAmount.AsCurrency;

  Inc(LineCount);
  If LineCount = 50 then
   begin
      Writeln(Lst,'----------------------------------------------------------------');
      LineCount := 0;
      Write(Lst,#12);
      If ReportOption.ItemIndex = 0 then
      Writeln(Lst,#27+'E','CASHIER''S DAILY COLLECTION REPORT RECAP',#27+'F') else
      Writeln(Lst,#27+'E','CASHIER''S MONTHLY COLLECTION REPORT RECAP',#27+'F');
      Writeln(Lst,'Cashier Name      : ',SetForm.TellerName.Text);
      If ReportOption.ItemIndex = 0 then
      Writeln(Lst,'Collection Date   : ',DateToStr(TransactionDateFrom.Date)) else
      Writeln(Lst,'Period Covered    : ',DateToStr(TransactionDateFrom.Date),'-',DateToStr(TransactionDateTo.Date));
      Writeln(Lst,'----------------------------------------------------------------');
      Writeln(Lst,'| Account Code  |      Payment Description     |        Amount |');
      Writeln(Lst,'----------------------------------------------------------------');
   end;

  Recap1.Next;
  end;

 Writeln(Lst,'----------------------------------------------------------------');
 Writeln(Lst,'|Total Other Income                            |',
              Format(TotalOthers,'##,###,###.##'),'|');
 Writeln(Lst,'----------------------------------------------------------------');
 Writeln(Lst,'|Grand Total                                   |',
              Format(GrandTotal,'##,###,###.##'),'|');
 Writeln(Lst,'----------------------------------------------------------------');

 If LineCount > 30 then Write(Lst,#12);

 Write(Lst,#18,#27+'P');
 Writeln(Lst,'------------------------------------------------------');
 Writeln(Lst,'|  TOTAL POWER SALES |               |',Format(Recap2TotalBill.AsCurrency,'##,###,###.##'),'|');
 Writeln(Lst,'------------------------------------------------------');
 Writeln(Lst,'|   UC ENVIRONMENTAL |',Format(Recap2ucec.AsCurrency,'##,###,###.##'),'|               |');
 Writeln(Lst,'|      UC MISSIONARY |',Format(Recap2ucme.AsCurrency,'##,###,###.##'),'|               |');
 Writeln(Lst,'|             UC SCC |',Format(Recap2ucnpcscc.AsCurrency,'##,###,###.##'),'|               |');
 Writeln(Lst,'|            FIT-ALL |',Format(Recap2fitall.AsCurrency,'##,###,###.##'),'|',Format(Recap2ucme.AsCurrency+
                                                                                                   Recap2ucec.AsCurrency+
                                                                                                   Recap2fitall.AsCurrency+
                                                                                                   Recap2ucnpcscc.AsCurrency,'##,###,###.##'),'|');
 Writeln(Lst,'------------------------------------------------------');
 Writeln(Lst,'|          VAT GENCO |',Format(Recap2VATGenCO.AsCurrency,'##,###,###.##'),'|               |');
 Writeln(Lst,'|        VAT TRANSCO |',Format(Recap2VATTransCO.AsCurrency,'##,###,###.##'),'|               |');
 Writeln(Lst,'|    VAT SYSTEM LOSS |',Format(Recap2VATSystemLoss.AsCurrency,'##,###,###.##'),'|               |');
 Writeln(Lst,'|   VAT DISTRIBUTION |',Format(Recap2VATDist.AsCurrency,'##,###,###.##'),'|');
 Writeln(Lst,'|                    |               |',Format(Recap2VATGenCO.AsCurrency+
                                                             Recap2VATTransCO.AsCurrency+
                                                             Recap2VATSystemLoss.AsCurrency+
                                                             Recap2VATDist.AsCurrency,'##,###,###.##'),'|');
 Writeln(Lst,'------------------------------------------------------');
 Writeln(Lst,'| RFSC               |               |',Format(Recap2mcc.AsCurrency,'##,###,###.##'),'|               |');
 Writeln(Lst,'| SYSTEM LOSS CHARGE |               |',Format(Recap2SystemLossCharge.AsCurrency,'##,###,###.##'),'|');
 Writeln(Lst,'| PANTAWID RECOVERY  |               |',Format(Recap2PKVRAmount.AsCurrency,'##,###,###.##'),'|');

 Recap3.First;
 while not recap3.eof do
 begin
   Writeln(Lst,'| ',JustStr(Recap3.FieldByName('Description').Text,' ',19,0),
               '|               |',Format(recap3.FieldByName('TOC').AsCurrency,'##,###,###.##'),'|');
   Recap3.Next;
 end;

 Writeln(Lst,'------------------------------------------------------');
 Writeln(Lst,'| NET POWER SALES    |               |',Format(Recap2net,'##,###,###.##'),'|');
 Writeln(Lst,'------------------------------------------------------');
 Write(Lst,#18,#27+'P');
 Writeln(Lst,'    Prepared by:                      Checked by:');
 Writeln(Lst);
 Writeln(Lst,'    ',JustStr(PreparedName.Text,' ',30,0),'    ',
                    JustStr(CheckedName.Text,' ',30,0));
 Writeln(Lst,'    ',JustStr(PreparedPos.Text,' ',30,0),'    ',
                    JustStr(CheckPos.Text,' ',30,0));
 Writeln(Lst);
 Writeln(Lst,'        Reviewed by:                      Audited by:');
 Writeln(Lst);
 Writeln(Lst,'        ',JustStr(ReviewedName.Text,' ',30,0),'    ',
                        JustStr(AuditedName.Text,' ',30,0));
 Writeln(Lst,'        ',JustStr(ReviewedPos.Text,' ',30,0),'    ',
                        JustStr(AuditedPos.Text,' ',30,0));
 Writeln(Lst);
 Writeln(Lst,' ':20,'Attested by:');
 Writeln(Lst);
 Writeln(Lst,' ':20,JustStr(AttestedName.Text,' ',30,2));
 Writeln(Lst,' ':20,JustStr(AttestedPos.Text,' ',30,2));
 Write(Lst,#12);

 CancelledTOR.Close;
 CancelledTOR.ParamByName('CancelDate').AsDate := TransactionDateFrom.Date;
 CancelledTOR.Open;

 if not CancelledTOR.IsEmpty then
   begin
     Write(Lst,#18,#27+'P');
     Writeln(Lst,#27+'E','CANCELLED TELLER OFFICIAL RECEIPT',#27+'F');
     Writeln(Lst,'Cancellation Date : ',DateToStr(TransactionDateFrom.Date));
     Writeln(Lst,'Time              : ',DateToStr(Now));
     Writeln(Lst,#15);
     Writeln(Lst,'--------------------------------------------------------------------------------------------------------------------------');
     Writeln(Lst,'|  Teller OR  Account #        Consumer Name              Amount  TC  Remarks                   Cancelled by             |');
     Writeln(Lst,'--------------------------------------------------------------------------------------------------------------------------');

     while not CancelledTOR.Eof do
       begin
          Writeln(Lst,' ',JustStr(CancelledTORORNumber.Text,' ',12,0),
             ' ',JustStr(CancelledTORAccountNumber.Text,' ',10,2),
             ' ',JustStr(CancelledTORName.Text,' ',25,0),
             ' ',Format (CancelledTORAmount.AsCurrency,'#,###,###.##'),
             ' ',JustStr(CancelledTORTellerCode.Text,' ',3,2),
             ' ',JustStr(CancelledTORremarks.Text,' ',25,0),
             ' ',JustStr(CancelledTORcancelledby.Text,' ',25,0),'|');
           CancelledTOR.Next;
       end;
    CancelledTOR.Close;
   end;

 Recap.Close;
 Recap1.Close;
 Recap2.Close;

 CloseFile(Lst);
 MessageDlg('Printing done.', mtInformation, [mbOK], 0);     }

end;

procedure TMenuForm.QRDBText9Print(sender: TObject; var Value: string);
var
  trimStr : String;
begin
 { trimStr := StringReplace(value, ',', '',
                          [rfReplaceAll, rfIgnoreCase]);

  if StrToFloat(trimStr)=0 then
  begin
    QRDBText9.Mask := '###,###,###.##';
    QRDBText9.Visible := False;
  end else begin
    QRDBText9.Mask := '###,###,###.#0';
    QRDBText9.Visible := True;
  end; }
end;

procedure TMenuForm.QRCompositeReport1AddReports(Sender: TObject);
begin
  QRCompositeReport1.Reports.Add(CDCRSumRpt);
  QRCompositeReport1.Reports.Add(QuickRep2);
end;

procedure TMenuForm.QRDBText10Print(sender: TObject; var Value: string);
begin
 if (Value = '!')then
  begin
    QRShape10.Width   := 590;
    QRShape9.Width    := 590;
    QRLabel57.Left     := 588;
    QRDBText10.Width  := 173;
    QRDBText7.Left    := 437;
    QRDBText9.Left    := 439;

    QRDBText8.Alignment := taLeftJustify;
  end;

end;

procedure TMenuForm.QRDBText29Print(sender: TObject; var Value: string);
begin
if (copy(value,1,18)='Collection Entries') or
   (copy(value,1,15)='Deposit Entries') or
   (copy(value,1,11)='~321-423-00')then
begin
   QRLabel46.Font.Color := clWhite;
   QRLabel47.Font.Color := clWhite;
   QRLabel48.Font.Color := clWhite;
   QRShape27.Pen.Color  := clBlack;
   QRShape26.Pen.Color  := clBlack;

   if (copy(value,1,11)='~321-423-00') then
   begin
     value := copy(value,2,11);
     QRShape27.Pen.Color  := clWhite;
     QRShape26.Pen.Color  := clBlack;
   end;
end else begin
   QRLabel46.Font.Color := clBlack;
   QRLabel47.Font.Color := clBlack;
   QRLabel48.Font.Color := clBlack;
   QRShape27.Pen.Color  := clWhite;
   QRShape26.Pen.Color  := clWhite;
end;
end;

procedure TMenuForm.QRDBText46Print(sender: TObject; var Value: string);
begin
if(copy(value,1,5)='TOTAL') then
begin
  QRShape37.Pen.Color  := clBlack;
  QRShape36.Pen.Color  := clBlack;
  QRDBText46.Alignment := taRightJustify;
end else begin
  QRShape37.Pen.Color  := clWhite;
  QRShape36.Pen.Color  := clWhite;
  QRDBText46.Alignment := taLeftJustify;
end;
end;

procedure TMenuForm.QRDBText8Print(sender: TObject; var Value: string);
begin
  QRShape10.Pen.Color := clWhite;
  if (Copy(Value,7,16) = 'TOTAL REMITTANCE') OR
     (Copy(Value,7,18) = 'TOTAL OTHER INCOME') OR
     (Copy(Value,7,11) = 'GRAND TOTAL') OR
     (Copy(Value,7,17) = 'TOTAL POWER SALES') OR
     (Copy(Value,7,15) = 'NET POWER SALES') then
  begin
    QRShape9.Pen.Color := clBlack;
    QRShape10.Pen.Color := clBlack;
    //  QRDBText11.Font.Style := [FsBold];
    pointL := True;
  end else begin
    QRShape9.Pen.Color := clWhite;
    QRShape10.Pen.Color := clWhite;
    //  QRDBText11.Font.Style := [];

    if pointL = True then
    begin
      QRShape10.Pen.Color := clBlack;
      pointL := False;
    end;
  end;

  if (Copy(Value,7,17) = 'TOTAL POWER SALES') or
     (Copy(Value,1,16) = 'UC ENVIRONMENTAL') or
     (Copy(Value,1,13) = 'UC MISSIONARY') or
     (Copy(Value,1,6)  = 'UC SCC') or
     (Copy(Value,1,7)  = 'FIT-ALL') or
     (Copy(Value,1,9)  = 'VAT GENCO') or
     (Copy(Value,1,11) = 'VAT TRANSCO') or
     (Copy(Value,1,15) = 'VAT SYSTEM LOSS') or
     (Copy(Value,1,16) = 'VAT DISTRIBUTION') or
     (Copy(Value,7,4)  = 'RFSC') or
     (Copy(Value,7,18) = 'SYSTEM LOSS CHARGE') or
     (Copy(Value,7,17) = 'PANTAWID RECOVERY') or
     (Copy(Value,7,15) = 'NET POWER SALES') or
     (Copy(Value,1,1) = '~') then
  begin
    QRShape10.Width   := 590;
    QRShape9.Width    := 590;
    QRLabel57.Left     := 588;
    QRDBText10.Width  := 173;
    QRDBText7.Left    := 437;
    QRDBText9.Left    := 439;

    if (Copy(Value,7,17) = 'TOTAL POWER SALES') or
     (Copy(Value,7,4)  = 'RFSC') or
     (Copy(Value,7,18) = 'SYSTEM LOSS CHARGE') or
     (Copy(Value,7,17) = 'PANTAWID RECOVERY') or
     (Copy(Value,7,15) = 'NET POWER SALES') or
     (Copy(Value,1,1)  = '~')then
     begin
      QRDBText8.Alignment := taLeftJustify;
      if (Copy(Value,1,1)  = '~') then Value := '      '+Copy(Value,2,30);
     end else QRDBText8.Alignment := taRightJustify;

  end else begin
    QRShape10.Width   := 739;
    QRShape9.Width    := 739;
    QRLabel57.Left     := 737;
    QRDBText10.Width  := 311;
    QRDBText7.Left    := 590;
    QRDBText9.Left    := 597;

    QRDBText8.Alignment := taLeftJustify;
    //QRDBText10Print(Sender,);
  end;

  if (Copy(Value,1,9)  = 'VAT GENCO') or (Copy(Value,7,4)  = 'RFSC') then
  QRShape10.Pen.Color := clBlack;
end;

procedure TMenuForm.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if TEffusertype.Text = '2' then
    QRLabel9.Caption := 'ONLINE TELLER'
  else  if TEffusertype.Text = '8' then
    QRLabel9.Caption := 'MOBILE TELLER'
  else
    QRLabel9.Caption := 'Cashier'
end;

procedure TMenuForm.Recap2CalcFields(DataSet: TDataSet);
begin
  Recap2totalnet.AsCurrency := Recap2TotalBill.AsCurrency -
                               (Recap2ucec.AsCurrency +
                                Recap2ucme.AsCurrency +
                                Recap2ucnpcscc.AsCurrency +
                                Recap2VATDist.AsCurrency +
                                Recap2VATGenCO.AsCurrency +
                                Recap2VATTransCO.AsCurrency +
                                Recap2VATSystemLoss.AsCurrency +
                                Recap2SystemLossCharge.AsCurrency +
                                Recap2fitall.AsCurrency +
                                Recap2mcc.AsCurrency);
end;

procedure TMenuForm.RecapDSCheckEOF(Sender: TObject; var Eof: Boolean);
var
  memo8,memo9,memo10,memo19,memo7 :TfrxMemoView;
  memo3,memo4,memo5 :TfrxMemoView;
  line8 : TfrxLineView;

begin
  {memo3  := frxReport1.FindComponent('Memo3') as TfrxMemoView;
  memo4  := frxReport1.FindComponent('Memo4') as TfrxMemoView;
  memo5  := frxReport1.FindComponent('Memo5') as TfrxMemoView;
  memo7  := frxReport1.FindComponent('Memo7') as TfrxMemoView;
  memo8  := frxReport1.FindComponent('Memo8') as TfrxMemoView;
  memo9  := frxReport1.FindComponent('Memo9') as TfrxMemoView;
  memo10 := frxReport1.FindComponent('Memo10') as TfrxMemoView;
  memo19 := frxReport1.FindComponent('Memo19') as TfrxMemoView;
  line8  := frxReport1.FindComponent('line8') as TfrxLineView;

 //if(copy(memo7.Text,7,23) = 'TOTAL POWER COLLECTIONS') then
 if(memo10.Text = '') and (memo7.Text ='') and (memo8.Text = '') then
 begin
    memo8.Width := 150;
    memo8.HAlign:= haRight;
    memo9.Left  := 450;
    memo10.Left := 570;
    memo19.Left := 430;
    line8.Width := 565;

    memo3.Visible := false;
    memo4.Visible := false;
    memo5.Visible := false;
 end;  }

end;

procedure TMenuForm.ReportOptionClick(Sender: TObject);
begin
  If ReportOption.ItemIndex = 0 then
    begin
      TransactionDateTo.Enabled := False;
      TransactionDateFrom.Date  := Now;
      TransactionDateFrom.SetFocus;
    end
    else
    begin
      TransactionDateTo.Enabled := True;
      TransactionDateFrom.Date  := StartOfTheMonth(Now);
      TransactionDateTo.Date    := EndOfTheMonth(Now);
      TransactionDateFrom.SetFocus;
    end;
end;

procedure TMenuForm.ReceiptPrintingClick(Sender: TObject);
begin
if not userlog then
 begin
   messagedlg('Unable to access user code '+Collector_m.Text+'..',mtError,[mbOK],0);
   exit;
 end;

If not assigned(AckrTORForm) then
 AckrTORForm := TAckrTORForm.Create(Application);
 AckrTORForm.Show;
end;

procedure TMenuForm.DepositBtnClick(Sender: TObject);
begin

if not userlog then
 begin
   messagedlg('Unable to access user code '''+Collector_m.Text+'''..',mtError,[mbOK],0);
   exit;
 end;

  Try
    CreateDeposit.Execute;
  except
  end;
 If not assigned(DepositSlipForm) then
 DepositSlipForm := TDepositSlipForm.Create(Application);
 DepositSlipForm.ShowModal;
end;

procedure TMenuForm.COHAccountButtonClick(Sender: TObject);
begin
   SelectAccountFromForm(COHAccount.Text);
   COHAccount.Text := AccountChartForm.MyChartCode.Text;
   AccountChartForm.MyChart.Close;
   COHAccount.SetFocus;
end;

procedure TMenuForm.NxButton10Click(Sender: TObject);
var
  Memo14   : TfrxMemoView;
  memo_DMO : TfrxMemoView;
begin
  collintegratedQ.Close;
  collintegratedQ.ParamByName('dateFrom').Text      := FormatDateTime('yyyy-mm-dd',AdvSmoothDatePicker1.Date);
  collintegratedQ.ParamByName('dateTo').Text        := FormatDateTime('yyyy-mm-dd',AdvSmoothDatePicker2.Date);
  collintegratedQ.ParamByName('collectorBase').Text := BillingData.userBaseQCollectorCode.Text;
  collintegratedQ.Open;

  recapCollIntegrated.Close;
  recapCollIntegrated.ParamByName('dateFrom').Text      := FormatDateTime('yyyy-mm-dd',AdvSmoothDatePicker1.Date);
  recapCollIntegrated.ParamByName('dateTo').Text        := FormatDateTime('yyyy-mm-dd',AdvSmoothDatePicker2.Date);
  recapCollIntegrated.ParamByName('collectorBase').Text := BillingData.userBaseQCollectorCode.Text;
  recapCollIntegrated.Open;

  Memo14        := collintegratedReport.FindComponent('Memo14') as TfrxMemoView;
  Memo14.Text   := 'Covered Date: '+ FormatDateTime('m/d/yyyy',AdvSmoothDatePicker1.Date)+'-'+FormatDateTime('m/d/yyyy',AdvSmoothDatePicker2.Date);

  memo_DMO      := collintegratedReport.FindComponent('memo_DMO') as TfrxMemoView;
 { memo_DMO.Text := '------------------------------------------------------------------'                    + #13+
                   '| DMO - TOTAL COLLECTIONS  |'                + JustStr('47,880.32',' ',18,1)     +'|'  + #13+
                   '| FINAL VAT                                |'+ JustStr('140.39',' ',18,1)        +'|'  + #13+
                   '| WITHHOLDING TAX                  |'        + JustStr('1,132.29',' ',18,1)        +'|'  + #13+
                   '------------------------------------------------------------------'                    + #13+
                   '| NET COLLECTIONS                 |'         + JustStr('47,607.64',' ',18,1)     +'|'  + #13+
                   '------------------------------------------------------------------';
   }
  {
   ------------------------------------------------------------------
| DMO - TOTAL COLLECTIONS  |       47,880.32 |
| FINAL VAT                                |(            140.39)|
| WITHHOLDING TAX                 |(           132.29)|
------------------------------------------------------------------
| NET COLLECTIONS                 |        47,607.64 |
------------------------------------------------------------------

  }
  collintegratedReport.ShowReport;

  areaRadio.Enabled := true;
  P1.Enabled        := true;
end;

procedure TMenuForm.NxButton1Click(Sender: TObject);
Var GrandTotalAR      : Currency ;
    GrandTotalOthers  : Currency ;
    GrandTotalDeposit : Currency ;
    ShortOverCredit   : Currency ;
    ShortOverDebit    : Currency ;
    CashOnHand        : Currency ;
    recap3            : TMyQuery ;
    OCTeller          : Currency ;
    memo1,memo2,memo14,Memo21: TfrxMemoView;
    areaStr :String;
    titleStr:String;
 label LPTnext;
 label LPTcontinue;
{Procedure Heading;
begin
 If ReportOption.ItemIndex = 0 then
 Writeln(Lst,#27+'E','DAILY CASH RECEIPTS RECAP',#27+'F') else
 Writeln(Lst,#27+'E','MONTHLY CASH RECEIPTS RECAP',#27+'F');
 Writeln(Lst,'Cashier Name      : ',SetForm.TellerName.Text);
 If ReportOption.ItemIndex = 0 then
 Writeln(Lst,'Collection Date   : ',DateToStr(TransactionDateFrom.Date)) else
 Writeln(Lst,'Period Covered    : ',DateToStr(TransactionDateFrom.Date),'-',DateToStr(TransactionDateTo.Date));
 Writeln(Lst,#27+'E','ACCOUNTING ENTRIES',#27+'F');
 Writeln(Lst,#27+'M');
 Writeln(Lst,'--------------------------------------------------------------------------------');
 Writeln(Lst,'| Account Code  |         Description          |         Debit |        Credit |');
 Writeln(Lst,'--------------------------------------------------------------------------------');
end;

Procedure CountLine;
begin

    Inc(LineCount);
    If LineCount = 45 then
     begin
       LineCount := 0;
       Write(Lst,#12);
       Heading;
     end;

end;
  }
begin

 isoQuery.Close;
 isoQuery.ParamByName('reporttype').Text := 'DCRR';
 isoQuery.Open;

 memo1  := CashReceiptReport.FindComponent('Memo1') as TfrxMemoView;
 memo2  := CashReceiptReport.FindComponent('Memo2') as TfrxMemoView;
 memo14 := CashReceiptReport.FindComponent('Memo14') as TfrxMemoView;
 Memo21 := CashReceiptReport.FindComponent('Memo21') as TfrxMemoView;
  If COHAccount.Text = '' then
  begin
   MessageDlg('No Cash on Hand Account....', mtError, [mbOK], 0);
   exit;
  end;

 Recap.Close;
 Recap.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Recap.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date else
 Recap.ParamByName('DatePaidTo').AsDate    := TransactionDateTo.Date;
 Recap.Open;

 If Recap.IsEmpty then
   begin
    MessageDlg('No data to print. Please enter correct date.', mtInformation, [mbOK], 0);
    Recap.Close;
    exit;
   end;

 Recap1.Close;
 Recap1.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Recap1.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date else
 Recap1.ParamByName('DatePaidTo').AsDate    := TransactionDateTo.Date;
 Recap1.Open;

 Recap2.Close;
 Recap2.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Recap2.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date else
 Recap2.ParamByName('DatePaidTo').AsDate    := TransactionDateTo.Date;
 Recap2.Open;

   Recap3            := TMyQuery.Create(Self);
   Recap3.Connection := SetForm.MyConnection1;
   Recap3.SQL.Clear;
   {Recap3.SQL.Add('SELECT ocm.debitaccountcode, ocm.description as description,');
   Recap3.SQL.Add('       sum(ocl.amount) toc');
   Recap3.SQL.Add('FROM zaneco.ocledger ocl');
   Recap3.SQL.Add('left join zaneco.ocdetail ocd on (ocl.idocdetail = ocd.idocdetail)');
   Recap3.SQL.Add('left join zaneco.ocmaster ocm on (ocd.idocmaster = ocm.idocmaster)');
   Recap3.SQL.Add('left join zaneco.collection cl on (cl.tellerornumber = ocl.tornumber)');
   Recap3.SQL.Add('left join zaneco.collector clr on (cl.collectorcode = clr.collectorcode)');
   Recap3.SQL.Add('  where ocl.datepaid between :datefrom and :dateto and clr.usertype <> ''5''');
   Recap3.SQL.Add('group by ocm.description');
   Recap3.ParamByName('DateFrom').AsDate  := TransactionDateFrom.Date;
   If ReportOption.ItemIndex = 0 then
   Recap3.ParamByName('DateTo').AsDate    := TransactionDateFrom.Date else
   Recap3.ParamByName('DateTo').AsDate    := TransactionDateTo.Date;
   recap3.Open;     }
   Recap3.SQL.Add('Select ');
   Recap3.SQL.Add('ocm.debitaccountcode,  ');
   Recap3.SQL.Add('ocm.description as description, ');
   Recap3.SQL.Add('sum(ifnull(ocl.amount,0)) as toc ');

   Recap3.SQL.Add('from collection cl ');
   Recap3.SQL.Add('left join ocledger ocl on ocl.code = cl.accountcode and ');
   Recap3.SQL.Add('                          ocl.datepaid = cl.datepaid and  ');
   Recap3.SQL.Add('                          ocl.billmonth = cl.billmonth ');
   Recap3.SQL.Add('left join zaneco.ocdetail ocd on (ocl.idocdetail = ocd.idocdetail)   ');
   Recap3.SQL.Add('left join zaneco.ocmaster ocm on (ocd.idocmaster = ocm.idocmaster)    ');
   Recap3.SQL.Add('left join zaneco.collector clr on (cl.collectorcode = clr.collectorcode) ');
   Recap3.SQL.Add('where cl.datepaid between :Datefrom and :Dateto   and clr.usertype <> ''5''  and  ');
   Recap3.SQL.Add('     ocl.billmonth is not null  ');
   Recap3.SQL.Add('  group by ocm.description  ');
   Recap3.ParamByName('DateFrom').AsDate  := TransactionDateFrom.Date;
   If ReportOption.ItemIndex = 0 then
   Recap3.ParamByName('DateTo').AsDate    := TransactionDateFrom.Date else
   Recap3.ParamByName('DateTo').AsDate    := TransactionDateTo.Date;
   recap3.Open;

 OCTeller := 0;

 if not recap3.IsEmpty then
 while not recap3.eof do
   begin
     OCTeller := OCTeller + recap3.FieldByName('TOC').AsCurrency;
     recap3.Next;
   end;

 Deposit.Close;

 Deposit.ParamByName('DateFrom').AsDate := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Deposit.ParamByName('DateTo').AsDate   := TransactionDateFrom.Date else
 Deposit.ParamByName('DateTo').AsDate   := TransactionDateTo.Date;
 Deposit.Open;

 DepositBankRemit.Close;
 DepositBankRemit.ParamByName('DateFrom').AsDate := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 DepositBankRemit.ParamByName('DateTo').AsDate   := TransactionDateFrom.Date else
 DepositBankRemit.ParamByName('DateTo').AsDate   := TransactionDateTo.Date;
 DepositBankRemit.Open;

 ReturnCheck.Open;

 Recap.First;

 GrandTotalAR      := 0;
 GrandTotalOthers  := 0;
 GrandTotalDeposit := 0;
 CashOnHand        := 0;

 While not Recap.Eof do
  begin

  //If TRIM(RecapOPDescription.Text) <> 'BANK REMITTANCE' then CashOnHand := CashOnHand + RecapTAmount.AsCurrency;
  If TRIM(RecapOPDescription.Text) <> 'BANK REMITTANCE' then CashOnHand := CashOnHand + RecapTAmount.AsCurrency;
  GrandTotalAR := GrandTotalAR + RecapTAmount.AsCurrency;

  Recap.Next;
  end;

 NoCash.Close;
 NoCash.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 NoCash.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date else
 NoCash.ParamByName('DatePaidTo').AsDate    := TransactionDateTo.Date;
 NoCash.Open;

 If not NoCash.IsEmpty then CashOnHand := CashOnHand - NoCashTAmount.AsCurrency;

 PartialDeposit.Close;

 PartialDeposit.Close;
 PartialDeposit.ParamByName('DateFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 PartialDeposit.ParamByName('DateTo').AsDate    := TransactionDateFrom.Date else
 PartialDeposit.ParamByName('DateTo').AsDate    := TransactionDateTo.Date;
 PartialDeposit.Open;

 If not PartialDeposit.IsEmpty then
   while not PartialDeposit.Eof do
     begin
      CashOnHand := CashOnHand - PartialDepositamount.AsCurrency;
      PartialDeposit.Next;
     end;

 While not Recap1.Eof do
  begin
    GrandTotalOthers := GrandTotalOthers + Recap1TAmount.AsCurrency;
    Recap1.Next;
  end;


 //====================================================
 //==generate report preview===========================

  memo2.Text    :='Cashier''s Name   : ' + SetForm.TellerName.Text;
  If ReportOption.ItemIndex = 0 then
  begin
    memo14.Text :='Collection Date   : '+DateToStr(TransactionDateFrom.Date);
    titleStr :='DAILY COLLECTION RECEIPTS RECAP - '; //memo1.Text
  end else begin
    memo14.Text :='Period Covered    : '+DateToStr(TransactionDateFrom.Date)+' - '+DateToStr(TransactionDateTo.Date);
    titleStr  :='MONTHLY COLLECTION RECEIPTS RECAP - ';
  end;

  CashReceiptTmp.Close;
  CashReceiptTmp.ParamByName('COHcode').Text     := COHAccount.Text;
  CashReceiptTmp.ParamByName('CashHand').AsFloat := CashOnHand+GrandTotalOthers;

  CashReceiptTmp.ParamByName('SCConsAR').Text    := SCConsAR.Text;
  CashReceiptTmp.ParamByName('accountreceivable').AsFloat := GrandTotalAR-(Recap2ucec.AsCurrency+
                                                                           Recap2ucme.AsCurrency+
                                                                           Recap2ucnpcscc.AsCurrency+
                                                                           Recap2ucsd.AsFloat+
                                                                           Recap2fitall.AsFloat+
                                                                           Recap2VATGenCO.AsCurrency+
                                                                           Recap2VATTransCO.AsCurrency+
                                                                           Recap2VATSystemLoss.AsCurrency+
                                                                           Recap2VATDist.AsCurrency+
                                                                           Recap2mcc.AsCurrency+
                                                                           Recap2parec.AsFloat+
                                                                           Recap2rptax.AsFloat+
                                                                           Recap2gram.AsFloat+
                                                                           OCTeller);


  CashReceiptTmp.ParamByName('SCARUCEC').Text           := SCARUCEC.Text;
  CashReceiptTmp.ParamByName('ucec').AsFloat            := Recap2ucec.AsFloat;

  CashReceiptTmp.ParamByName('SCARUCME').Text           := SCARUCME.Text;
  CashReceiptTmp.ParamByName('ucme').AsFloat            := Recap2ucme.AsFloat;

  CashReceiptTmp.ParamByName('SCARUCSCC').Text          := SCARUCSCC.Text;
  CashReceiptTmp.ParamByName('ucnpcscc').AsFloat        := Recap2ucnpcscc.AsFloat;


  CashReceiptTmp.ParamByName('ucsd').AsFloat            := Recap2ucsd.AsFloat;

  CashReceiptTmp.ParamByName('SCfitall').Text           := SCFitall.Text;
  CashReceiptTmp.ParamByName('fitall').AsFloat          := Recap2fitall.AsFloat;

  CashReceiptTmp.ParamByName('total1').AsFloat          := Recap2ucme.AsFloat+
                                                           Recap2ucec.AsFloat+
                                                           Recap2ucnpcscc.AsFloat+
                                                           Recap2fitall.AsFloat+
                                                           Recap2ucsd.AsFloat;

  CashReceiptTmp.ParamByName('SCARVatGenCo').Text       := SCARVatGenCo.Text;
  CashReceiptTmp.ParamByName('VATGenCO').AsFloat        := Recap2VATGenCO.AsFloat;

  CashReceiptTmp.ParamByName('SCARVatTransCo').Text     := SCARVatTransCo.Text;
  CashReceiptTmp.ParamByName('VATTransCO').AsFloat      := Recap2VATTransCO.AsFloat;

  CashReceiptTmp.ParamByName('SCARVatSystemLoss').Text  := SCARVatSystemLoss.Text;
  CashReceiptTmp.ParamByName('VATSystemLoss').AsFloat   := Recap2VATSystemLoss.AsFloat;

  CashReceiptTmp.ParamByName('SCARVatDist').Text        := SCARVatDist.Text;
  CashReceiptTmp.ParamByName('VATDist').AsFloat         := Recap2VATDist.AsFloat;
  CashReceiptTmp.ParamByName('VAT').AsFloat             := Recap2VAT.AsFloat;

  CashReceiptTmp.ParamByName('SCConsARMCC').Text        := SCConsARMCC.Text;
  CashReceiptTmp.ParamByName('mcc').AsFloat             := Recap2mcc.AsFloat;

  CashReceiptTmp.ParamByName('SCRPTax').Text            := SCRPTax.Text;
  CashReceiptTmp.ParamByName('rptax').AsFloat           := Recap2rptax.AsFloat;

  CashReceiptTmp.ParamByName('SCPARec').Text            := SCPARec.Text;
  CashReceiptTmp.ParamByName('parec').AsFloat           := Recap2parec.AsFloat;
  CashReceiptTmp.ParamByName('gram').AsFloat            := Recap2gram.AsFloat;

  CashReceiptTmp.ParamByName('GrandTotalOthers').AsFloat:= GrandTotalOthers;

  Deposit.First;
  While not Deposit.Eof do
  begin
    GrandTotalDeposit := GrandTotalDeposit + Depositamount.AsCurrency;
    Deposit.Next;
  end;

 If GrandTotalDeposit > CashOnHand+GrandTotalOthers then ShortOverCredit := GrandTotalDeposit - (CashOnHand+GrandTotalOthers);
 If GrandTotalDeposit < CashOnHand+GrandTotalOthers then ShortOverDebit  := (CashOnHand+GrandTotalOthers) - GrandTotalDeposit;


  CashReceiptTmp.ParamByName('ShortOverCredit').AsFloat := ShortOverCredit;
  CashReceiptTmp.ParamByName('ShortOverDebit').AsFloat  := ShortOverDebit;

 ReturnCheck.Open;
 If not ReturnCheck.IsEmpty then
 begin
  CashReceiptTmp.SQL.Add('Union(Select ''Returned Checks'' as code,'+
                                        'null as description,'+
                                        'null as debit,'+
                                        'null as credit,'+
                                        ' null as dateR, null as Tmp)');

 // While not ReturnCheck.Eof do
 //   begin
     CashReceiptTmp.SQL.Add('Union(Select d.AccountCode as code,'+
                                   'd.AccountDescription as description,'+
                                   'd.Description as debit,'+
                                   'FORMAT(ifnull(d.Amount,0),2) as credit,'+
                                   'null dateR,null Tmp from deposit d where d.bankremit = 2)');
      {
      CashReceiptTmp.SQL.Add('Union(Select :code,'+
                                  ':description,'+
                                   ':debit,'+
                                   ':credit,'+
                                   'null dateR,null Tmp)');

      CashReceiptTmp.ParamByName('code').Text         := ReturnCheckAccountCode.Text;
      CashReceiptTmp.ParamByName('description').Text  := ReturnCheckAccountDescription.Text;
      CashReceiptTmp.ParamByName('debit').Text        := ReturnCheckDescription.Text;
      CashReceiptTmp.ParamByName('credit').Text       := Format(ReturnCheckAmount.AsCurrency,'##,###,###.##');

      messagedlg(ReturnCheckAccountCode.Text +#13+
                 ReturnCheckAccountDescription.Text +#13+
                 ReturnCheckDescription.Text+#13+
                 Format(ReturnCheckAmount.AsCurrency,'##,###,###.##')
                 ,mtInformation,[mbOK],0);
      ReturnCheck.Next;
    end;     }
 end;

  CashReceiptTmp.ParamByName('DateFrom').AsDate  := TransactionDateFrom.Date;
  If ReportOption.ItemIndex = 0 then
  CashReceiptTmp.ParamByName('DateTo').AsDate    := TransactionDateFrom.Date else
  CashReceiptTmp.ParamByName('DateTo').AsDate    := TransactionDateTo.Date;

  CashReceiptTmp.Open;

  areaStr := UpperCase(copy(BillingData.MyConnection1.Server,7,3));
  if(Length(BillingData.MyConnection1.Server)=6) then
  areaStr := 'DMO';

  if(areaStr='PAO') then
    areaStr := 'PAS'
  else if (areaStr='LAO') then
    areaStr := 'LAS'
  else if (areaStr='SAO') then
    areaStr := 'SAS';

  Memo21.Text := '(Area: '+areaStr+')';
  memo1.Text  := titleStr + '(Area: '+areaStr+')';
  CashReceiptReport.ShowReport();

 Recap.Close;
 Recap1.Close;
 Recap2.Close;
 Deposit.Close;
 DepositBankRemit.Close;
 ReturnCheck.Close;
 PartialDeposit.Close;
 CashReceiptTmp.Close;

//QuickRep3.Preview; ====================================
{ If COHAccount.Text = '' then
  begin
   MessageDlg('No Cash on Hand Account....', mtError, [mbOK], 0);
   exit;
  end;

 If SCConsAR.Text = '' then
  begin
   MessageDlg('No A/R Account....', mtError, [mbOK], 0);
   exit;
  end;

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
 Recap.Close;
 Recap.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Recap.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date else
 Recap.ParamByName('DatePaidTo').AsDate    := TransactionDateTo.Date;
 Recap.Open;

 If Recap.IsEmpty then
   begin
    MessageDlg('No data to print. Please enter correct date.', mtInformation, [mbOK], 0);
    Recap.Close;
    exit;
   end;

 Recap1.Close;
 Recap1.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Recap1.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date else
 Recap1.ParamByName('DatePaidTo').AsDate    := TransactionDateTo.Date;
 Recap1.Open;

 Recap2.Close;
 Recap2.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Recap2.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date else
 Recap2.ParamByName('DatePaidTo').AsDate    := TransactionDateTo.Date;
 Recap2.Open;

 Recap3            := TMyQuery.Create(Self);
 Recap3.Connection := SetForm.MyConnection1;
 Recap3.SQL.Clear;
 Recap3.SQL.Add('SELECT ocm.debitaccountcode, ocm.description as description,');
 Recap3.SQL.Add('       sum(ocl.amount) toc');
 Recap3.SQL.Add('FROM zaneco.ocledger ocl');
 Recap3.SQL.Add('left join zaneco.ocdetail ocd on (ocl.idocdetail = ocd.idocdetail)');
 Recap3.SQL.Add('left join zaneco.ocmaster ocm on (ocd.idocmaster = ocm.idocmaster)');
 Recap3.SQL.Add('left join zaneco.collection cl on (cl.tellerornumber = ocl.tornumber)');
 Recap3.SQL.Add('left join zaneco.collector clr on (cl.collectorcode = clr.collectorcode)');
 Recap3.SQL.Add('  where ocl.datepaid between :datefrom and :dateto and clr.usertype <> ''5''');
 Recap3.SQL.Add('group by ocm.description');
 Recap3.ParamByName('DateFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Recap3.ParamByName('DateTo').AsDate    := TransactionDateFrom.Date else
 Recap3.ParamByName('DateTo').AsDate    := TransactionDateTo.Date;
 recap3.Open;

 OCTeller := 0;

 if not recap3.IsEmpty then
 while not recap3.eof do
   begin
     OCTeller := OCTeller + recap3.FieldByName('TOC').AsCurrency;
     recap3.Next;
   end;

 Deposit.Close;

 Deposit.ParamByName('DateFrom').AsDate := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 Deposit.ParamByName('DateTo').AsDate   := TransactionDateFrom.Date else
 Deposit.ParamByName('DateTo').AsDate   := TransactionDateTo.Date;
 Deposit.Open;

 DepositBankRemit.Close;
 DepositBankRemit.ParamByName('DateFrom').AsDate := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 DepositBankRemit.ParamByName('DateTo').AsDate   := TransactionDateFrom.Date else
 DepositBankRemit.ParamByName('DateTo').AsDate   := TransactionDateTo.Date;
 DepositBankRemit.Open;

 ReturnCheck.Open;

 LineCount := 0;
 Write(Lst,#18,#27+'P');

 Heading;

 Recap.First;

 GrandTotalAR      := 0;
 GrandTotalOthers  := 0;
 GrandTotalDeposit := 0;
 CashOnHand        := 0;

 While not Recap.Eof do
  begin

  //If TRIM(RecapOPDescription.Text) <> 'BANK REMITTANCE' then CashOnHand := CashOnHand + RecapTAmount.AsCurrency;
  If TRIM(RecapOPDescription.Text) <> 'BANK REMITTANCE' then CashOnHand := CashOnHand + RecapTAmount.AsCurrency;
  GrandTotalAR := GrandTotalAR + RecapTAmount.AsCurrency;

  Recap.Next;
  end;

 NoCash.Close;
 NoCash.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 NoCash.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date else
 NoCash.ParamByName('DatePaidTo').AsDate    := TransactionDateTo.Date;
 NoCash.Open;

 If not NoCash.IsEmpty then CashOnHand := CashOnHand - NoCashTAmount.AsCurrency;

 PartialDeposit.Close;

 PartialDeposit.Close;
 PartialDeposit.ParamByName('DateFrom').AsDate  := TransactionDateFrom.Date;
 If ReportOption.ItemIndex = 0 then
 PartialDeposit.ParamByName('DateTo').AsDate    := TransactionDateFrom.Date else
 PartialDeposit.ParamByName('DateTo').AsDate    := TransactionDateTo.Date;
 PartialDeposit.Open;

 If not PartialDeposit.IsEmpty then
   while not PartialDeposit.Eof do
     begin
      CashOnHand := CashOnHand - PartialDepositamount.AsCurrency;
      PartialDeposit.Next;
     end;

 While not Recap1.Eof do
  begin
    GrandTotalOthers := GrandTotalOthers + Recap1TAmount.AsCurrency;
    Recap1.Next;
  end;

 ShortOverCredit := 0;
 ShortOverDebit  := 0;

 Writeln(Lst,#27+'E','Collection Entries',#27+'F');
 CountLine;
 Writeln(Lst,'|',JustStr(COHAccount.Text,' ',15,0),
             //'|',Format(CashOnHand,'##,###,###.##'),
             //'|',Format(GrandTotalOthers,'##,###,###.##'));
             '|',JustStr('CASH ON HAND',' ',30,0),
             '|',Format(CashOnHand+GrandTotalOthers,'##,###,###.##'),'|               |');

 CountLine;

 If not DepositBankRemit.IsEmpty then
 begin
   While not DepositBankRemit.Eof do
    begin
      Writeln(Lst,'|',JustStr(DepositBankRemitaccountcode.Text,' ',15,0),
                  '|',JustStr(DepositBankRemitaccountdescription.Text,' ',30,0),
                  '|',Format(DepositBankRemitamount.AsCurrency,'##,###,###.##'),'|               |');
      CountLine;
      DepositBankRemit.Next;
    end;
 end;

 PartialDeposit.First;
 If not PartialDeposit.IsEmpty then
 begin
   While not PartialDeposit.Eof do
    begin
      Writeln(Lst,'|',JustStr(PartialDepositaccountcode.Text,' ',15,0),
                  '|',JustStr(PartialDepositaccountdescription.Text,' ',30,0),
                  '|',Format(PartialDepositamount.AsCurrency,'##,###,###.##'),'|               |');
      CountLine;
      PartialDeposit.Next;
    end;
 end;

 Writeln(Lst,'|',JustStr(SCConsAR.Text,' ',15,0),
             '|',JustStr('ACCOUNTS RECEIVABLE',' ',30,0),
             '|               |',Format(GrandTotalAR-(Recap2ucec.AsCurrency+
                                                      Recap2ucme.AsCurrency+
                                                      Recap2ucnpcscc.AsCurrency+
                                                      Recap2VATGenCO.AsCurrency+
                                                      Recap2VATTransCO.AsCurrency+
                                                      Recap2VATSystemLoss.AsCurrency+
                                                      Recap2VATDist.AsCurrency+
                                                      Recap2mcc.AsCurrency+
                                                      OCTeller),'##,###,###.##'),'|');
 CountLine;
 Writeln(Lst,'|',JustStr(SCARUCEC.Text,' ',15,0),
             '|',JustStr('UC ENVIRONMENTAL',' ',30,0),
             '|               |',Format(Recap2ucec.AsCurrency,'##,###,###.##'),'|');
 CountLine;

 Writeln(Lst,'|',JustStr(SCARUCME.Text,' ',15,0),
             '|',JustStr('UC MISSIONARY',' ',30,0),
             '|               |',Format(Recap2ucme.AsCurrency,'##,###,###.##'),'|');
 CountLine;
 Writeln(Lst,'|',JustStr(SCARUCSCC.Text,' ',15,0),
             '|',JustStr('UC SCC',' ',30,0),
             '|               |',Format(Recap2ucnpcscc.AsCurrency,'##,###,###.##'),'|');
 CountLine;

 Writeln(Lst,'|',JustStr(' ',' ',15,0),
             '|',JustStr(' ',' ',30,0),
             '|               |',Format(Recap2ucme.AsCurrency+Recap2ucec.AsCurrency+Recap2ucnpcscc.AsCurrency,'##,###,###.##'),'|');
 //Writeln(Lst,'|',JustStr(Format(Recap2ucme.AsCurrency+Recap2ucec.AsCurrency+Recap2ucnpcscc.AsCurrency,'##,###,###.##'),' ',15,0),
 //            '|',JustStr(' ',' ',30,0),
 //            '|               |               |');
 CountLine;

 Writeln(Lst,'|',JustStr(SCARVatGenCo.Text,' ',15,0),
             '|',JustStr('VAT GENCO',' ',30,0),
             '|               |',Format(Recap2VATGenCO.AsCurrency,'##,###,###.##'),'|');

 CountLine;
 Writeln(Lst,'|',JustStr(SCARVatTransCo.Text,' ',15,0),
             '|',JustStr('VAT TRANSCO',' ',30,0),
             '|               |',Format(Recap2VATTransCO.AsCurrency,'##,###,###.##'),'|');

 CountLine;
 Writeln(Lst,'|',JustStr(SCARVatSystemLoss.Text,' ',15,0),
             '|',JustStr('VAT SYSTEM LOSS',' ',30,0),
             '|               |',Format(Recap2VATSystemLoss.AsCurrency,'##,###,###.##'),'|');

 CountLine;
 Writeln(Lst,'|',JustStr(SCARVatDist.Text,' ',15,0),
             '|',JustStr('VAT DISTRIBUTION',' ',30,0),
             '|               |',Format(Recap2VATDist.AsCurrency,'##,###,###.##'),'|');

 CountLine;
 Writeln(Lst,'|',JustStr(' ',' ',15,0),
             '|',JustStr(' ',' ',30,0),
             '|               |',Format(Recap2VAT.AsCurrency,'##,###,###.##'),'|');

 //Writeln(Lst,'|',JustStr(Format(Recap2VAT.AsCurrency,'##,###,###.##'),' ',15,0),
 //            '|',JustStr(' ',' ',30,0),
 //            '|               |               |');
 CountLine;
 Writeln(Lst,'|',JustStr(SCConsARMCC.Text,' ',15,0),
             '|',JustStr('REINVESTMENT FOR SUST. CAPEX',' ',30,0),
             '|               |',Format(Recap2mcc.AsCurrency,'##,###,###.##'),'|');

 Recap3.First;
 while not recap3.eof do
 begin
   CountLine;
   Writeln(Lst,'|',JustStr(Recap3.FieldByName('DebitAccountCode').Text,' ',15,0),
               '|',JustStr(Recap3.FieldByName('Description').Text,' ',30,0),
               '|               |',Format(recap3.FieldByName('TOC').AsCurrency,'##,###,###.##'),'|');
   Recap3.Next;
 end;

 CountLine;
 Writeln(Lst,'|',JustStr(' ',' ',15,0),
             '|',JustStr('OTHER INCOME',' ',30,0),
             '|               |',Format(GrandTotalOthers,'##,###,###.##'),'|');
 CountLine;
 Writeln(Lst,'--------------------------------------------------------------------------------');

 CountLine;
 Writeln(Lst,#27+'E','Deposit Entries',#27+'F');

 If not Deposit.IsEmpty then
 begin

   While not Deposit.Eof do
    begin

    Writeln(Lst,'|',JustStr(Depositaccountcode.Text,' ',15,0),
                '|',JustStr(Depositaccountdescription.Text,' ',30,0),
                '|',Format(Depositamount.AsCurrency,'##,###,###.##'),'|               |',
                FormatDateTime('MM/DD/YY',Depositcdcrdate.AsDateTime),'|');

    GrandTotalDeposit := GrandTotalDeposit + Depositamount.AsCurrency;
    CountLine;

    Deposit.Next;
    end;
 end;

 If GrandTotalDeposit > CashOnHand+GrandTotalOthers then ShortOverCredit := GrandTotalDeposit - (CashOnHand+GrandTotalOthers);
 If GrandTotalDeposit < CashOnHand+GrandTotalOthers then ShortOverDebit  := (CashOnHand+GrandTotalOthers) - GrandTotalDeposit;

 Writeln(Lst,'|',JustStr(COHAccount.Text,' ',15,0),
             '|',JustStr('CASH ON HAND',' ',30,0),
             '|               |',Format(CashOnHand+GrandTotalOthers,'##,###,###.##'),'|');
 CountLine;
 If ShortOverCredit+ShortOverDebit <> 0 then
 Writeln(Lst,'|',JustStr('321-423-00',' ',15,0),
             '|',JustStr('INCOME FROM OVERAGES',' ',30,0),
             '|',Format(ShortOverDebit,'##,###,###.##'),'|',Format(ShortOverCredit,'##,###,###.##'),'|');
 CountLine;
 Writeln(Lst,'--------------------------------------------------------------------------------');
 CountLine;

 If not ReturnCheck.IsEmpty then
 begin
   Writeln(Lst,#27+'E','Returned Checks',#27+'F');
   CountLine;

   While not ReturnCheck.Eof do
    begin

    Writeln(Lst,'|',JustStr(ReturnCheckAccountCode.Text,' ',15,0),
                '|',JustStr(ReturnCheckAccountDescription.Text,' ',15,0),
                '|',JustStr(ReturnCheckDescription.Text,' ',15,0),
                '|',Format(ReturnCheckAmount.AsCurrency,'##,###,###.##'),'|');

    CountLine;

    ReturnCheck.Next;
    end;
 end;
 Writeln(Lst,'--------------------------------------------------------------------------------');
 CountLine;

 Write(Lst,#18,#27+'P');
 Writeln(Lst);
 Writeln(Lst,'    Prepared by:                      Checked by:');
 Writeln(Lst);
 Writeln(Lst,'    ',JustStr(PreparedName.Text,' ',30,0),'    ',
                    JustStr(CheckedName.Text,' ',30,0));
 Writeln(Lst,'    ',JustStr(PreparedPos.Text,' ',30,0),'    ',
                    JustStr(CheckPos.Text,' ',30,0));
 Writeln(Lst);
 Writeln(Lst,'        Reviewed by:                      Audited by:');
 Writeln(Lst);
 Writeln(Lst,'        ',JustStr(ReviewedName.Text,' ',30,0),'    ',
                        JustStr(AuditedName.Text,' ',30,0));
 Writeln(Lst,'        ',JustStr(ReviewedPos.Text,' ',30,0),'    ',
                        JustStr(AuditedPos.Text,' ',30,0));
 Writeln(Lst);
 Writeln(Lst,' ':20,'Attested by:');
 Writeln(Lst);
 Writeln(Lst,' ':20,JustStr(AttestedName.Text,' ',30,2));
 Writeln(Lst,' ':20,JustStr(AttestedPos.Text,' ',30,2));
 Write(Lst,#12);

 Recap.Close;
 Recap1.Close;
 Recap2.Close;
 Deposit.Close;
 DepositBankRemit.Close;
 ReturnCheck.Close;
 PartialDeposit.Close;

 CloseFile(Lst);
 MessageDlg('Printing done.', mtInformation, [mbOK], 0);
 }
end;

procedure TMenuForm.NxButton3Click(Sender: TObject);
begin
  Signatory.edit;
  signatoryPreparedByName.Text     := PreparedName.Text;
  signatoryPreparedByPosition.Text := PreparedPos.Text ;

  signatoryCheckedByName.Text      := CheckedName.Text ;
  signatoryCheckedByPosition.Text  := CheckPos.Text    ;

  signatoryReviewedByName.Text     := ReviewedName.Text;
  signatoryReviewedByPosition.Text := ReviewedPos.Text ;

  signatoryAuditedByName.Text      := AuditedName.Text ;
  signatoryAuditedByPostion.Text   := AuditedPos.Text  ;

  signatoryAttestedByName.Text     := AttestedName.Text;
  signatoryAttestedByPosition.Text := AttestedPos.Text ;

  signatoryCOHAccountcoce.Text     := COHAccount.Text;

  signatory.Post;
end;

procedure TMenuForm.NxButton4Click(Sender: TObject);
begin
   TEff.ParamByName('DateFrom').AsDate := EffDateFrom.Date;
   TEff.ParamByName('Dateto').AsDate   := EffDateTo.Date;
   TEff.Open;

   ReportDate.Caption := 'Period Covered '+DateToStr(EffDateFrom.Date)+' - '+DateToStr(EffDateTo.Date);
   QuickRep1.Preview;
   TEff.Close;
end;

procedure TMenuForm.NxButton5Click(Sender: TObject);
Var COHAudit : TMyQuery;
    areaTmp  : String;
begin
  with setForm do
  begin

    Collector.Text     := Collector_m.Text;
    TellerName.Text    := TellerName_m.Text;
    StartTellerOR.Text := StartTellerOR_m.Text;
    Batch.Text         := Batch_m.Text;
    AreaCode.ItemIndex := areaRadio.ItemIndex;

    usersORupdate.ParamByName('ORCount').AsInteger  := strtoInt(StartTellerOR_m.Text);
    usersORupdate.ParamByName('collectorcode').Text := Collector_m.Text;
    usersORupdate.Execute;

    COHAudit := TMyQuery.Create(Self);
    COHAudit.Connection := MyConnection1;
    COHAudit.SQL.Clear;
    COHAudit.SQL.Add('select * from zaneco.auditcoh where tellercode = :tellercode');
    COHAudit.ParamByName('tellercode').Text := Collector.Text;
    COHAudit.Open;

    if not COHAudit.IsEmpty then
      begin
        MessageDlg('You are currently being audited.. please request audit '+#13+#10+
                   'to remove your name from the Audit List once audit is'+#13+#10+
                   'complete.. ', mtError, [mbOK], 0);
        FreeAndNil(COHAudit);
        close;
        exit;
      end;

    If FormOpt.ItemIndex = -1 then
    begin
     MessageDlg('Select a valid form.....', mtError, [mbOK], 0);
     abort;
    end;

    CheckTOR.Close;
    CheckTOR.FilterSql := 'trim(ORNumber) = '+QuotedStr(JustStr(StartTellerOR.Text,'0',9,1)+'-'+UpperCase(Collector.Text));
    CheckTOR.Open;

    If not CheckTOR.IsEmpty then
     begin
      MessageDlg('That OR number has already been used. Please check.', mtError, [mbOK], 0);
      //StartTellerOR.SetFocus;
      //CheckTOR.Close;
      exit;
     end;

    CheckTOR.Close;


    tmpBaseQ.Close;
    tmpBaseQ.SQL.Clear;
    tmpBaseQ.SQL.Add('Select * from collector where collectorcode = :collectorcode');
    tmpBaseQ.ParamByName('collectorcode').Text := BillingData.userBaseQCollectorCode.Text;
    tmpBaseQ.Open;

    if tmpBaseQ.FieldByName('ORCount').AsInteger > strtoint(StartTellerOR_m.Text) then
    begin
      MessageDlg('That OR number has already been used. Please check.', mtError, [mbOK], 0);
      exit;
    end;

    TellerTrans.Close;
    TellerTrans.ParamByName('date').AsDate     := PostDate.Date;
    TellerTrans.ParamByName('tellercode').Text := Collector.Text;
    TellerTrans.ParamByName('batch').Text      := Batch.Text;
    TellerTrans.Open;

    If not TellerTrans.IsEmpty then
     begin
      MessageDlg('That transaction batch is already close....', mtError, [mbOK], 0);
      //Collector.SetFocus;
      TellerTrans.Close;
      exit;
     end;

    TellerTrans.Close;

    users.Close;
    users.SQL.Clear;
    users.SQL.Add('select * from collector ');
    users.SQL.Add('    where matchcode = :collectorcode and ');
    users.SQL.Add('          userType = :userType and ');
    users.SQL.Add('          enrolldate = current_date');

    users.ParamByName('collectorcode').Text := BillingData.userBaseQCollectorCode.Text;
    users.ParamByName('userType').AsInteger := BillingData.userBaseQUserType.AsInteger;
    users.Open;

    If Users.IsEmpty then
     begin
       ShowMessage('Invalid User and UserType or Enroll Date invalid');
       //Collector.SetFocus;
       users.Close;
       exit;
     end;

    if(usersIsActive.AsBoolean = false) then
    begin
       ShowMessage('Inactive user account..');
       //Collector.SetFocus;
       users.Close;
       exit;
    end;

    Collector.ReadOnly  := TRUE;
    TellerName.ReadOnly := TRUE;

    //InsertTellerLogin.ParamByName('tellernumber').Text := SpinEdit1.Text;
    //InsertTellerLogin.ParamByName('tellername').Text   := usersName.Text;
    //InsertTellerLogIn.Execute;

       Case AreaCode.ItemIndex of
       0 : AreaCodeStr := '001';
       1 : AreaCodeStr := '002';
       2 : AreaCodeStr := '003';
       3 : AreaCodeStr := '004';
       end;

       {If not assigned(MenuForm) then MenuForm := TMenuForm.Create(Application);

       //Hide;
       If (usersUserType.Text = '5') and (usersmcashier.Value = false) then
        begin
         MenuForm.CDCR.Visible            := True;
         MenuForm.DCPR.Visible            := True;
         MenuForm.Summary.Visible         := True;
         MenuForm.OtherPayment.Visible    := True;
         MenuForm.ReceiptPrinting.Visible := True;
         MenuForm.DepositBtn.Visible      := True;
         MenuForm.TellerEff.Visible       := True;
        end;

        If (usersUserType.Text = '5') and (usersmcashier.Value = true) then
        MenuForm.CDCR.Visible            := True;  }
  end;

   Case setForm.AreaCode.ItemIndex of
       0 : areaTmp := 'DMO';
       1 : areaTmp := 'PAO';
       2 : areaTmp := 'SAO';
       3 : areaTmp := 'LAO';
   end;

  userlog := true;
  logCaption.Caption := 'User log: '+ Collector_m.Text+' - '+TellerName_m.Text;

  messagedlg('User Code '''+setForm.Collector.Text+''' successfully set to area '+areaTmp+'.. ',mtInformation,[mbOK],0);
  NxHeaderPanel1.Visible := false;
  areaRadio.Enabled      := true;
end;

procedure TMenuForm.NxButton6Click(Sender: TObject);
begin
  if DBEdit1.text <> Edit3.Text then
  begin
    MessageDlg('Confirm password invalid....', mtError, [mbOK], 0);
    exit;
  end;

  SetForm.users.Post;
  updateMd5.ParamByName('collectorCode').Text := SetForm.usersCollectorCode.Text;
  updateMd5.Execute;

  if SetForm.usersPass.Text ='5f4dcc3b5aa765d61d8327deb882cf99' then
  begin
    Label7.Visible:=true;
    NxLinkLabel1.Visible := true;
  end
  else
  begin
    Label7.Visible:=false;
    NxLinkLabel1.Visible := false;
  end;

  NxHeaderPanel2.Visible := false;
end;

procedure TMenuForm.NxButton7Click(Sender: TObject);
begin
   SetForm.users.Cancel;
   NxHeaderPanel2.Visible := false;
end;

procedure TMenuForm.NxButton8Click(Sender: TObject);
begin
    TEffex.ParamByName('DateFrom').AsDate := EffDateFrom.Date;
    TEffex.ParamByName('Dateto').AsDate   := EffDateTo.Date;
    TEffex.Open;

    QExport4XLS2.Header.Clear;
    QExport4XLS2.Header.Add('ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.');
    QExport4XLS2.Header.Add('(ZANECO)');
    QExport4XLS2.Header.Add('Teller Efficiency Report');
    QExport4XLS2.Header.Add('Period Covered :'+FormatDateTime('m/d/yyyy',EffDateFrom.Date)+' - '+FormatDateTime('m/d/yyyy',EffDateTo.Date));
    QExport4XLS2.FileName := ExtractFilePath(Application.ExeName) + 'EfficiencyReport.xls';
    QExport4XLS2.Execute;
end;

procedure TMenuForm.NxButton9Click(Sender: TObject);
begin
  areaRadio.Enabled := False;
  P1.Enabled        := False;

  NxHeaderPanel3.Top   := 161;
  NxHeaderPanel3.Left  := 138;
  NxHeaderPanel3.BringToFront;
  NxHeaderPanel3.Visible := true;

  areaBase_tf.Text   := '';
  userIDbase_tf.Text := '';


  AdvSmoothDatePicker1.Date := Now;
  AdvSmoothDatePicker2.Date := Now;
  areaBase_tf.Text          := BillingData.userBaseQarea.Text;
  userIDbase_tf.Text        := BillingData.userBaseQCollectorCode.Text;

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

procedure TMenuForm.NxButton2Click(Sender: TObject);
type
cashreceipt = record
crdate          : TDate                       ;
crdescription   : String[50]                  ;
cramount        : Currency                    ;
craccountdate   : Array[1..300] of TDate      ;
craccountcode   : Array[1..300] of string[20] ;
crdebit         : Array[1..300] of Real       ;
crcredit        : Array[1..300] of Real       ;
doctype         : Array[1..300] of Integer    ;
Document        : string[50]                  ;
end;

Var GrandTotalAR      : Currency    ;
    GrandTotalOthers  : Currency    ;
    GrandTotalDeposit : Currency    ;
    ShortOverCredit   : Currency    ;
    ShortOverDebit    : Currency    ;
    CashOnHand        : Currency    ;
    I,J,K             : Word        ;
    CRRecord          : CashReceipt ;
    CRFile            : File        ;
    Days              : Word        ;
    OICount           : Word        ;
    recap3            : TMyQuery    ;
    OCTeller          : Currency    ;

begin

 If COHAccount.Text = '' then
  begin
   MessageDlg('No Cash on Hand Account....', mtError, [mbOK], 0);
   exit;
  end;

 If SCConsAR.Text = '' then
  begin
   MessageDlg('No A/R Account....', mtError, [mbOK], 0);
   exit;
  end;

 If ReportOption.ItemIndex = 0 then
    Days := 1 else Days := DaysBetween(TransactionDateFrom.Date,TransactionDateTo.Date)+1;

 if TransferOption.ItemIndex = 0 then
 begin
   if not(OpenDialog1.Execute) then Exit;

   AssignFile(CRFile,OpenDialog1.FileName);
   Rewrite(CRFile,SizeOf(CashReceipt));
 end;

 NxMemo1.Lines.Clear;
 NxMemo1.Left := 228;
 NxMemo1.Top  := 48;
 NxMemo1.Visible := True;
 NxMemo1.BringToFront;

 For I := 1 to Days do
  begin

    FillChar(CRRecord,SizeOf(CRRecord),#0);

    With CRRecord do
    begin

        crdate          := TransactionDateFrom.Date+(I-1);
        crdescription   := OpenDialog1.FileName + ' CASH RECEIPT';
        Document        :=  '1';

        Recap.Close;
        Recap.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date+(I-1);
        Recap.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date+(I-1);
        Recap.Open;

        If Recap.IsEmpty then
          begin
           Recap.Close;
           Continue;
          end;

        Recap1.Close;
        Recap1.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date+(I-1);
        Recap1.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date+(I-1);
        Recap1.Open;

        Recap2.Close;
        Recap2.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date+(I-1);
        Recap2.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date+(I-1);
        Recap2.Open;

        Recap3            := TMyQuery.Create(Self);
        Recap3.Connection := SetForm.MyConnection1;
        Recap3.SQL.Clear;
        Recap3.SQL.Add('SELECT ocm.debitaccountcode, ocm.description as description,');
        Recap3.SQL.Add('       sum(ocl.amount) toc');
        Recap3.SQL.Add('FROM zaneco.ocledger ocl');
        Recap3.SQL.Add('left join zaneco.ocdetail ocd on (ocl.idocdetail = ocd.idocdetail)');
        Recap3.SQL.Add('left join zaneco.ocmaster ocm on (ocd.idocmaster = ocm.idocmaster)');
        Recap3.SQL.Add('left join zaneco.collection cl on (cl.tellerornumber = ocl.tornumber)');
        Recap3.SQL.Add('left join zaneco.collector clr on (cl.collectorcode = clr.collectorcode)');
        Recap3.SQL.Add('  where ocl.datepaid between :datefrom and :dateto and clr.usertype <> ''5''');
        Recap3.SQL.Add('group by ocm.description');
        Recap3.ParamByName('DateFrom').AsDate  := TransactionDateFrom.Date+(I-1);
        Recap3.ParamByName('DateTo').AsDate    := TransactionDateFrom.Date+(I-1);
        recap3.Open;

        OCTeller := 0;

        if not recap3.IsEmpty then
        while not recap3.eof do
          begin
            OCTeller := OCTeller + recap3.FieldByName('TOC').AsCurrency;
            recap3.Next;
          end;

        Deposit.Close;
        Deposit.ParamByName('DateFrom').AsDate := TransactionDateFrom.Date+(I-1);
        Deposit.ParamByName('DateTo').AsDate   := TransactionDateFrom.Date+(I-1);
        Deposit.Open;

        DepositBankRemit.Close;
        DepositBankRemit.ParamByName('DateFrom').AsDate := TransactionDateFrom.Date+(I-1);
        DepositBankRemit.ParamByName('DateTo').AsDate   := TransactionDateFrom.Date+(I-1);
        DepositBankRemit.Open;

        ReturnCheck.Open;

        LineCount := 0;
        Recap.First;

        GrandTotalAR      := 0;
        GrandTotalOthers  := 0;
        GrandTotalDeposit := 0;
        CashOnHand        := 0;

        While not Recap.Eof do
         begin

         If TRIM(RecapOPDescription.Text) <> 'BANK REMITTANCE' then CashOnHand := CashOnHand + RecapTAmount.AsCurrency;
         GrandTotalAR := GrandTotalAR + RecapTAmount.AsCurrency;

         Recap.Next;
         end;

        NoCash.Close;
        NoCash.ParamByName('DatePaidFrom').AsDate  := TransactionDateFrom.Date+(I-1);
        NoCash.ParamByName('DatePaidTo').AsDate    := TransactionDateFrom.Date+(I-1);
        NoCash.Open;

        If not NoCash.IsEmpty then CashOnHand := CashOnHand - NoCashTAmount.AsCurrency;

        PartialDeposit.Close;

        PartialDeposit.Close;
        PartialDeposit.ParamByName('DateFrom').AsDate  := TransactionDateFrom.Date+(I-1);
        PartialDeposit.ParamByName('DateTo').AsDate    := TransactionDateFrom.Date+(I-1);
        PartialDeposit.Open;

        If not PartialDeposit.IsEmpty then
          while not PartialDeposit.Eof do
            begin
             CashOnHand := CashOnHand - PartialDepositamount.AsCurrency;
             PartialDeposit.Next;
            end;

        While not Recap1.Eof do
         begin
           GrandTotalOthers := GrandTotalOthers + Recap1TAmount.AsCurrency;
           Recap1.Next;
         end;

        ShortOverCredit := 0;
        ShortOverDebit  := 0;

        J := 1;

        craccountdate[J] := TransactionDateFrom.Date+(I-1);
        craccountcode[J] := COHAccount.Text;
        crdebit[J]       := CashOnHand+GrandTotalOthers;
        crcredit[J]      := 0;

        Inc(J);

        If not DepositBankRemit.IsEmpty then
        begin
          While not DepositBankRemit.Eof do
           begin
              craccountdate[J] := TransactionDateFrom.Date+(I-1);
              craccountcode[J] := JustStr(DepositBankRemitaccountcode.Text,' ',10,0);
              crdebit[J]       := DepositBankRemitamount.AsCurrency;
              crcredit[J]      := 0;
              Inc(J);
              DepositBankRemit.Next;
           end;
        end;

        PartialDeposit.First;
        If not PartialDeposit.IsEmpty then
        begin
          While not PartialDeposit.Eof do
           begin
              craccountdate[J] := TransactionDateFrom.Date+(I-1);
              craccountcode[J] := JustStr(PartialDepositaccountcode.Text,' ',10,0);
              crdebit[J]       := PartialDepositamount.AsCurrency;
              crcredit[J]      := 0;
              Inc(J);
              PartialDeposit.Next;
           end;
        end;

        craccountdate[J] := TransactionDateFrom.Date+(I-1);
        craccountcode[J] := JustStr(SCConsAR.Text,' ',10,0);
        crdebit[J]       := 0;
        crcredit[J]      := GrandTotalAR-(Recap2ucec.AsCurrency+
                                          Recap2ucme.AsCurrency+
                                          Recap2ucnpcscc.AsCurrency+
                                          Recap2VATGenCO.AsCurrency+
                                          Recap2VATTransCO.AsCurrency+
                                          Recap2VATSystemLoss.AsCurrency+
                                          Recap2VATDist.AsCurrency+
                                          Recap2mcc.AsCurrency+
                                          OCTeller);
        Inc(J);

        craccountdate[J] := TransactionDateFrom.Date+(I-1);
        craccountcode[J] := JustStr(SCARUCEC.Text,' ',10,0);
        crdebit[J]       := 0;
        crcredit[J]      := Recap2ucec.AsCurrency;
        Inc(J);

        craccountdate[J] := TransactionDateFrom.Date+(I-1);
        craccountcode[J] := JustStr(SCARUCME.Text,' ',10,0);
        crdebit[J]       := 0;
        crcredit[J]      := Recap2ucme.AsCurrency;
        Inc(J);

        craccountdate[J] := TransactionDateFrom.Date+(I-1);
        craccountcode[J] := JustStr(SCARUCSCC.Text,' ',10,0);
        crdebit[J]       := 0;
        crcredit[J]      := Recap2ucnpcscc.AsCurrency;
        Inc(J);

        craccountdate[J] := TransactionDateFrom.Date+(I-1);
        craccountcode[J] := JustStr(SCARVatGenCo.Text,' ',10,0);
        crdebit[J]       := 0;
        crcredit[J]      := Recap2VATGenCO.AsCurrency;
        Inc(J);

        craccountdate[J] := TransactionDateFrom.Date+(I-1);
        craccountcode[J] := JustStr(SCARVatTransCo.Text,' ',10,0);
        crdebit[J]       := 0;
        crcredit[J]      := Recap2VATTransCO.AsCurrency;
        Inc(J);

        craccountdate[J] := TransactionDateFrom.Date+(I-1);
        craccountcode[J] := JustStr(SCARVatSystemLoss.Text,' ',10,0);
        crdebit[J]       := 0;
        crcredit[J]      := Recap2VATSystemLoss.AsCurrency;
        Inc(J);

        craccountdate[J] := TransactionDateFrom.Date+(I-1);
        craccountcode[J] := JustStr(SCARVatDist.Text,' ',10,0);
        crdebit[J]       := 0;
        crcredit[J]      := Recap2VATDist.AsCurrency;
        Inc(J);

        craccountdate[J] := TransactionDateFrom.Date+(I-1);
        craccountcode[J] := JustStr(SCConsARMCC.Text,' ',10,0);
        crdebit[J]       := 0;
        crcredit[J]      := Recap2mcc.AsCurrency;
        Inc(J);

        Recap1.First;
        While not Recap1.Eof do
         begin
            craccountdate[J] := TransactionDateFrom.Date+(I-1);
            craccountcode[J] := JustStr(Recap1code.Text,' ',10,0);
            crdebit[J]       := 0;
            crcredit[J]      := Recap1TAmount.AsCurrency;
            Inc(J);
            Recap1.Next;
         end;

        Recap3.First;
        While not Recap3.Eof do
         begin
            craccountdate[J] := TransactionDateFrom.Date+(I-1);
            craccountcode[J] := JustStr(Recap3.FieldByName('DebitAccountCode').Text,' ',10,0);
            crdebit[J]       := 0;
            crcredit[J]      := Recap3.FieldByName('TOC').AsCurrency;
            Inc(J);
            Recap3.Next;
         end;

        Deposit.First;
        If not Deposit.IsEmpty then
        begin

          While not Deposit.Eof do
           begin

            craccountdate[J] := TransactionDateFrom.Date+(I-1);
            craccountcode[J] := JustStr(Depositaccountcode.Text,' ',10,0);
            crdebit[J]       := Depositamount.AsCurrency;
            crcredit[J]      := 0;
            Inc(J);

            GrandTotalDeposit := GrandTotalDeposit + Depositamount.AsCurrency;
            Deposit.Next;
           end;
        end;

        If GrandTotalDeposit > CashOnHand+GrandTotalOthers then ShortOverCredit := GrandTotalDeposit - (CashOnHand+GrandTotalOthers);
        If GrandTotalDeposit < CashOnHand+GrandTotalOthers then ShortOverDebit  := (CashOnHand+GrandTotalOthers) - GrandTotalDeposit;

        craccountdate[J] := TransactionDateFrom.Date+(I-1);
        craccountcode[J] := JustStr(COHAccount.Text,' ',10,0);
        crdebit[J]       := 0;
        crcredit[J]      := CashOnHand+GrandTotalOthers;
        Inc(J);

        If ShortOverCredit+ShortOverDebit <> 0 then
        begin
          craccountdate[J] := TransactionDateFrom.Date+(I-1);
          craccountcode[J] := JustStr('321-423-00',' ',10,0);
          crdebit[J]       := ShortOverDebit;
          crcredit[J]      := ShortOverCredit;
          Inc(J);
        end;

        If TransferOption.ItemIndex = 0 then
        begin
          Seek(CRFile,FileSize(CRFile));
          BlockWrite(CRFile,CRRecord,1);

          NxMemo1.Lines.Add('Total Entries '+IntToStr(J));
          NxMemo1.Lines.Add('Data Transfer for '+DateToStr(TransactionDateFrom.Date+(I-1))+' created');
          NxMemo1.Lines.Add('Number of Cash Data Transfer created '+IntToStr(FileSize(CRFile)));
        end else
    With CRRecord do
      begin
        CRCheck.Close;
        CRCheck.ParamByName('crdescription').Text := 'DIPOLOG CASH RECEIPT '+DateToStr(CRRecord.crdate);
        CRCheck.Open;

        If not CRCheck.IsEmpty then
          begin
            case MessageDlg('Cash Receipt DIPOLOG CASH RECEIPT '+DateToStr(CRRecord.crdate)+
                            'is already on file.. Continue anyway?',
                            mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
              mrNo     : continue;
              mrCancel : begin
                           CRCheck.Close;
                           CRUpdate.Close;
                           exit;
                         end;

            end;
           CRCheck.Close;

          end;

        CRUpdate.Open;

        CRUpdate.AppendRecord([]);
        CRUpdate.Edit;
        CRUpdatecrDate.AsDateTime   := CRRecord.crdate;
        CRUpdatecrDescription.Text  := 'DIPOLOG CASH RECEIPT '+DateToStr(CRRecord.crdate);
        CRUpdatecrNumber.Text       := 'CRR-'+JustStr(CRUpdateidCashReceipt.Text,'0',5,1);
        CRUpdatecrAmount.AsCurrency := CRRecord.crAmount;

        NxMemo1.Lines.Add(CRUpdatecrDescription.Text+' added');

        CRUpdate.Post;

        For K := 1 to 300 do
          begin
            If RoundTo(CRRecord.crdebit[k]+CRRecord.crcredit[k],-2) <> 0 then
              begin
                GetAccount.ParamByName('accountcode').Text        := CRRecord.craccountcode[k];
                GetAccount.Open;

                If not GetAccount.IsEmpty then
                begin
                JournalUpdate.ParamByName('accountcode').Text     := GetAccountaccountcode.Text;
                JournalUpdate.ParamByName('accountname').Text     := GetAccountaccountname.Text;
                JournalUpdate.ParamByName('documentdate').AsDate  := CRRecord.craccountdate[k];
                JournalUpdate.ParamByName('documenttype').Text    := 'CRR';
                JournalUpdate.ParamByName('documentnumber').Text  := CRUpdatecrNumber.Text;
                JournalUpdate.ParamByName('debit').AsCurrency     := RoundOff(CRRecord.crdebit[k]);
                JournalUpdate.ParamByName('credit').AsCurrency    := RoundOff(CRRecord.crcredit[k]);
                JournalUpdate.Execute;
                end;

                GetAccount.Close;
              end;
          end;
        CRUpdate.Close;
         MyQuery1.SQL.Clear;
         MyQuery1.sql.Add('Update journal j inner join chart c on c.accountcode = j.accountcode set j.idchart = c.idchart');
         MyQuery1.Execute;
         NxMemo1.Lines.Add('Update Complete');
      end; // end with
    end;
  end;

 if TransferOption.ItemIndex = 0 then CloseFile(CRFile);

 MessageDlg('Data Transfer done.', mtInformation, [mbOK], 0);
 NxMemo1.Visible := False;
end;

procedure TMenuForm.NxEdit1Change(Sender: TObject);
begin
  PClass.FilterSQL := 'DESCRIPTION LIKE '+QuotedStr('%'+NxEdit1.Text+'%') +
                      ' OR code like ' +QuotedStr('%'+NxEdit1.Text+'%');
end;

procedure TMenuForm.NxLinkLabel1Click(Sender: TObject);
begin
  SetForm.users.Edit;
  NxHeaderPanel2.Top := 180;
  NxHeaderPanel2.Left := 174;
  NxHeaderPanel2.BringToFront;
  NxHeaderPanel2.Visible := true;
end;

procedure TMenuForm.NxLinkLabel2Click(Sender: TObject);
begin
  NxHeaderPanel1.Visible := false;
  areaRadio.Enabled      := true;
end;

procedure TMenuForm.NxLinkLabel3Click(Sender: TObject);
begin
  NxHeaderPanel3.Visible := false;
  areaRadio.Enabled      := True;
  P1.Enabled             := True;
end;

procedure TMenuForm.NxLinkLabel4Click(Sender: TObject);
begin
  TellerEfficiencyPanel.Visible := False;
end;

procedure TMenuForm.NxLinkLabel5Click(Sender: TObject);
begin
  ncecconoQuery.Close;
  ncecconoQuery.ParamByName('collectorcode').Text := SetForm.Collector.Text;
  ncecconoQuery.Open;
  if(Not ncecconoQuery.IsEmpty) then
  begin
    nceccono.Caption :=  IntToStr(ncecconoQuery.FieldByName('notmp').AsInteger+1);
  end;

end;

procedure TMenuForm.DCPRClick(Sender: TObject);
begin
if not userlog then
 begin
   messagedlg('Unable to access user code '''+Collector_m.Text+'''..',mtError,[mbOK],0);
   exit;
 end;

If not assigned(DCPRForm) then
 DCPRForm := TDCPRForm.Create(Application);
 DCPRForm.Show;
end;

procedure TMenuForm.dbConnect();
begin
  If not assigned(TellerPOSForm) then
   TellerPOSForm := TTellerPOSForm.Create(Application);

   if not assigned(MenuForm) then
   MenuForm := TMenuForm.Create(Application);

   case areaRadio.ItemIndex of
     0:begin
       SetForm.area_String := 'DMO';
       setform.MyConnection1.Connected := false;
       setform.MyConnection1.Server    := 'server';
       setform.MyConnection1.Database  := 'zaneco';
       setform.MyConnection1.Connected := true;

       BillingData.MyConnection1.Connected := false;
       BillingData.MyConnection1.Server    := 'server';
       BillingData.MyConnection1.Database  := 'zaneco';
       BillingData.MyConnection1.Connected := true;

       MenuForm.MyConnection1.Connected := false;
       MenuForm.MyConnection1.Server    := 'server';
       MenuForm.MyConnection1.Database  := 'zanecoacctg';
       MenuForm.MyConnection1.Connected := true;

       TellerPOSForm.MyConnection1.Connected := false;
       TellerPOSForm.MyConnection1.Server    := 'server';
       TellerPOSForm.MyConnection1.Database  := 'zanecoisd';
       TellerPOSForm.MyConnection1.Connected := true;

     end;
     1:Begin
       SetForm.area_String := 'PAO';
       setform.MyConnection1.Connected := false;
       setform.MyConnection1.Server    := 'serverpao';
       setform.MyConnection1.Database  := 'zaneco';
       setform.MyConnection1.Connected := true;

       BillingData.MyConnection1.Connected := false;
       BillingData.MyConnection1.Server    := 'serverpao';
       BillingData.MyConnection1.Database  := 'zaneco';
       BillingData.MyConnection1.Connected := true;

       MenuForm.MyConnection1.Connected := false;
       MenuForm.MyConnection1.Server    := 'serverpao';
       MenuForm.MyConnection1.Database  := 'zanecoacctg';
       MenuForm.MyConnection1.Connected := true;

       TellerPOSForm.MyConnection1.Connected := false;
       TellerPOSForm.MyConnection1.Server    := 'serverpao';
       TellerPOSForm.MyConnection1.Database  := 'zanecoisd';
       TellerPOSForm.MyConnection1.Connected := true;

     End;
     2:Begin
       SetForm.area_String := 'SAO';
       setform.MyConnection1.Connected := false;
       setform.MyConnection1.Server    := 'serversao';
       setform.MyConnection1.Database  := 'zaneco';
       setform.MyConnection1.Connected := true;

       BillingData.MyConnection1.Connected := false;
       BillingData.MyConnection1.Server    := 'serversao';
       BillingData.MyConnection1.Database  := 'zaneco';
       BillingData.MyConnection1.Connected := true;

       TellerPOSForm.MyConnection1.Connected := false;
       TellerPOSForm.MyConnection1.Server    := 'serversao';
       TellerPOSForm.MyConnection1.Database  := 'zanecoisd';
       TellerPOSForm.MyConnection1.Connected := true;

       MenuForm.MyConnection1.Connected := false;
       MenuForm.MyConnection1.Server    := 'serversao';
       MenuForm.MyConnection1.Database  := 'zanecoacctg';
       MenuForm.MyConnection1.Connected := true;

     End;
     3:Begin
       SetForm.area_String := 'LAO';
       setform.MyConnection1.Connected := false;
       setform.MyConnection1.Server    := 'serverlao';
       setform.MyConnection1.Database  := 'zaneco';
       setform.MyConnection1.Connected := true;

       BillingData.MyConnection1.Connected := false;
       BillingData.MyConnection1.Server    := 'serverlao';
       BillingData.MyConnection1.Database  := 'zaneco';
       BillingData.MyConnection1.Connected := true;

       TellerPOSForm.MyConnection1.Connected := false;
       TellerPOSForm.MyConnection1.Server    := 'serverlao';
       TellerPOSForm.MyConnection1.Database  := 'zanecoisd';
       TellerPOSForm.MyConnection1.Connected := true;

       MenuForm.MyConnection1.Connected := false;
       MenuForm.MyConnection1.Server    := 'serverlao';
       MenuForm.MyConnection1.Database  := 'zanecoacctg';
       MenuForm.MyConnection1.Connected := true;

     End;
   end;
end;
end.


