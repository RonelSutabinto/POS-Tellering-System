
program Teller;
uses
  Forms,
  SetTeller in 'SetTeller.pas' {SetForm},
  OtherPayments in 'OtherPayments.pas' {OtherPaymentsForm},
  LedgerInterface in 'LedgerInterface.pas' {LedgerInterfaceForm},
  TellerPOS in 'TellerPOS.pas' {TellerPOSForm},
  Modtools in 'Modtools.PAS',
  setcolor in 'setcolor.pas',
  AckrTor in 'AckrTor.pas' {AckrTORForm},
  depositslip in 'depositslip.pas' {DepositSlipForm},
  ChartList in 'ChartList.pas' {AccountChartForm},
  DCPR in 'DCPR.pas' {DCPRForm},
  DiscoWarning in 'DiscoWarning.pas' {DiscoWarningForm},
  TellerMenu in 'TellerMenu.pas' {MenuForm},
  Data in 'Data.pas' {BillingData: TDataModule},
  taxWithheldFrm in 'taxWithheldFrm.pas' {taxWithheldForm},
  queHistoryForm in 'queHistoryForm.pas' {quehistoryFrm},
  callerFrm in 'callerFrm.pas' {caller_frm},
  proceedCallerForm in 'proceedCallerForm.pas' {proceedCallerFrm},
  contacttracinghistoryFrm in 'contacttracinghistoryFrm.pas' {contacttracingFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Teller System';
  Application.CreateForm(TSetForm, SetForm);
  Application.CreateForm(TBillingData, BillingData);
  Application.CreateForm(TMenuForm, MenuForm);
  Application.CreateForm(TtaxWithheldForm, taxWithheldForm);
  Application.CreateForm(TquehistoryFrm, quehistoryFrm);
  Application.CreateForm(Tcaller_frm, caller_frm);
  Application.CreateForm(TproceedCallerFrm, proceedCallerFrm);
  Application.CreateForm(TcontacttracingFrm, contacttracingFrm);
  Application.Run;
end.
