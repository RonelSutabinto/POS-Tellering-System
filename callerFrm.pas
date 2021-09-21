unit callerFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothButton, AdvSmoothLabel,
  Vcl.ExtCtrls, AdvPanel, Data.DB, MemDS, DBAccess, MyAccess, Vcl.StdCtrls,
  AdvEdit, advlued, NxCollection;

type
  Tcaller_frm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    cntrServe_lb: TAdvSmoothLabel;
    numberServe_lb: TAdvSmoothLabel;
    AdvPanel2: TAdvPanel;
    AdvSmoothButton13: TAdvSmoothButton;
    AdvSmoothButton25: TAdvSmoothButton;
    AdvSmoothButton24: TAdvSmoothButton;
    AdvSmoothButton23: TAdvSmoothButton;
    cntr_RC_lb: TAdvSmoothLabel;
    cntr_SC_lb: TAdvSmoothLabel;
    cntr_C_lb: TAdvSmoothLabel;
    queCntrQ: TMyQuery;
    queCntrQregularC: TLargeintField;
    queCntrQseniorC: TLargeintField;
    queCntrQcashier: TLargeintField;
    queCntrQflg: TStringField;
    manageOutQ: TMyQuery;
    manageOutQentry: TIntegerField;
    manageOutQtype: TStringField;
    manageOutQnumber: TIntegerField;
    manageOutQdate: TDateField;
    manageOutQtime: TTimeField;
    manageOutQcode: TStringField;
    manageOutQqueid: TIntegerField;
    manageOutQgroupno: TIntegerField;
    manageOutQexecutedby: TStringField;
    manageOutQDepartment: TStringField;
    manageOutQuserid: TStringField;
    manageOutQcounter: TStringField;
    manageOutQnumber_c: TStringField;
    insertMngoutQ: TMyQuery;
    queCall_Q: TMyQuery;
    queCall_QqueID: TIntegerField;
    queCall_Qtype: TStringField;
    queCall_Qnumber: TIntegerField;
    queCall_Qdate: TDateField;
    queCall_Qtime: TTimeField;
    queCall_Qcode: TStringField;
    queCall_Qgroupno: TIntegerField;
    deleteQueQ: TMyQuery;
    AdvSmoothButton26: TAdvSmoothButton;
    updateCallBeepQ: TMyQuery;
    queCall_Qpri: TLargeintField;
    queCall_Quser: TStringField;
    number_lb2: TAdvSmoothLabel;
    beepCall_Q: TMyQuery;
    beepCall_Qentry: TIntegerField;
    beepCall_Qtype: TStringField;
    beepCall_Qnumber: TIntegerField;
    beepCall_Qdate: TDateField;
    beepCall_Qtime: TTimeField;
    beepCall_Qcode: TStringField;
    beepCall_Qqueid: TIntegerField;
    beepCall_Qgroupno: TIntegerField;
    beepCall_Qexecutedby: TStringField;
    beepCall_QDepartment: TStringField;
    beepCall_Quserid: TStringField;
    beepCall_Qcounter: TStringField;
    beepCall_Qisbeep: TBooleanField;
    beepCall_Qnumber_c: TStringField;
    queCall_QidIn: TIntegerField;
    AdvPanel3: TAdvPanel;
    Label1: TLabel;
    Timer1: TTimer;
    AdvSmoothButton3: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    manageinQ: TMyQuery;
    AdvPanel4: TAdvPanel;
    AdvSmoothLabel3: TAdvSmoothLabel;
    AdvSmoothLabel4: TAdvSmoothLabel;
    payorsName_TF: TAdvLUEdit;
    contact_TF: TAdvLUEdit;
    AdvSmoothButton4: TAdvSmoothButton;
    cnter_TF: TAdvLUEdit;
    quedate_TF: TAdvLUEdit;
    insertqueregQ: TMyQuery;
    manageOutQidIn: TIntegerField;
    idin_tf: TAdvLUEdit;
    ifregQ: TMyQuery;
    checkdateQ: TMyQuery;
    Label2: TLabel;
    Label3: TLabel;
    NxLinkLabel5: TNxLinkLabel;
    AdvSmoothLabel5: TAdvSmoothLabel;
    address_tf: TAdvLUEdit;
    priorityno_lbl: TAdvSmoothLabel;
    updateContacttracingQ: TMyQuery;
    NxLinkLabel1: TNxLinkLabel;
    insertctracingnopriorityQ: TMyQuery;
    procedure AdvSmoothButton13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure callNumber(grpNo:Integer;priType : String);
    procedure AdvSmoothButton23Click(Sender: TObject);
    procedure AdvSmoothButton24Click(Sender: TObject);
    procedure AdvSmoothButton25Click(Sender: TObject);
    procedure AdvSmoothButton26Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
    procedure AdvSmoothButton4Click(Sender: TObject);
    procedure payorsName_TFKeyPress(Sender: TObject; var Key: Char);
    procedure contact_TFKeyPress(Sender: TObject; var Key: Char);
    procedure address_tfKeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    addContact   : Boolean;
    idquedetails : Integer;
    nopriority   : Boolean;
  end;

var
  caller_frm: Tcaller_frm;

implementation

{$R *.dfm}

uses Data, SetTeller, TellerPOS, queHistoryForm, contacttracinghistoryFrm;

procedure Tcaller_frm.address_tfKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
   Begin
     AdvSmoothButton4.SetFocus;
   end;
end;

procedure Tcaller_frm.AdvSmoothButton13Click(Sender: TObject);
begin
  close;
end;

procedure Tcaller_frm.AdvSmoothButton1Click(Sender: TObject);
begin
  queCntrQ.Close;
  queCntrQ.ParamByName('user').Text := 'Teller '+SetForm.SpinEdit1.Text;
  queCntrQ.Open;

  manageOutQ.Close;
  manageOutQ.Open;

  cntrServe_lb.Caption.Text   := manageOutQcounter.Text;
  numberServe_lb.Caption.Text := manageOutQnumber_c.Text;

  cntr_RC_lb.Caption.Text     := queCntrQregularC.Text;
  cntr_SC_lb.Caption.Text     := queCntrQseniorC.Text;
  cntr_C_lb.Caption.Text      := queCntrQcashier.Text;
end;

procedure Tcaller_frm.AdvSmoothButton23Click(Sender: TObject);
begin
  callNumber(3,'RP');

end;

procedure Tcaller_frm.AdvSmoothButton24Click(Sender: TObject);
begin
  callNumber(4,'SP');
end;

procedure Tcaller_frm.AdvSmoothButton25Click(Sender: TObject);
begin
  callNumber(2,'CAS');
end;

procedure Tcaller_frm.AdvSmoothButton26Click(Sender: TObject);
begin
  updateCallBeepQ.Execute;

  beepCall_Q.Close;
  beepCall_Q.ParamByName('userid').Text   := SetForm.Collector.Text;
  beepCall_Q.ParamByName('name').Text     := SetForm.TellerName.Text;
  beepCall_Q.ParamByName('counter').Text  := 'Teller '+SetForm.SpinEdit1.Text;
  beepCall_Q.Open;

  updateCallBeepQ.ParamByName('type').Text        := beepCall_Qtype.Text;
  updateCallBeepQ.ParamByName('number').AsInteger := beepCall_Qnumber.AsInteger;
  updateCallBeepQ.ParamByName('counter').Text     := 'Teller '+SetForm.SpinEdit1.Text;
  updateCallBeepQ.Execute;
end;

procedure Tcaller_frm.AdvSmoothButton2Click(Sender: TObject);
begin
  Close;
end;

procedure Tcaller_frm.AdvSmoothButton3Click(Sender: TObject);
begin
  Close;
end;

procedure Tcaller_frm.AdvSmoothButton4Click(Sender: TObject);
begin

  if((uppercase(payorsName_TF.Text)<>'N/A') OR (uppercase(contact_TF.Text)<>'N/A') ) then
  begin
    if((Length(payorsName_TF.Text)<6 ) AND (uppercase(payorsName_TF.Text)<>'N/A')) then
    begin
      MessageDlg('Invalid payor''s name entry..', mtError, [mbOK], 0);
      payorsName_TF.SetFocus;
      exit;
    end;

    if((Length(contact_TF.Text)<6 ) AND (uppercase(contact_TF.Text)<>'N/A')) then
    begin
      MessageDlg('Invalid contact number entry..', mtError, [mbOK], 0);
      contact_TF.SetFocus;
      exit;
    end;

    try
      if((StrToInt64(contact_TF.Text)<0 ) AND  (uppercase(contact_TF.Text)<>'N/A'))then
      begin
        MessageDlg('Invalid contact number entry..', mtError, [mbOK], 0);
        contact_TF.SetFocus;
        exit;
      end;
    except
      if (uppercase(contact_TF.Text)<>'N/A') then
      begin
        MessageDlg('Invalid contact number entry..', mtError, [mbOK], 0);
        contact_TF.SetFocus;
        exit;
      end;
    end;

  end;

  if(addContact) then
  begin
    if(nopriority) then
    begin
      insertctracingnopriorityQ.ParamByName('userid').Text      := SetForm.Collector.Text;
      insertctracingnopriorityQ.ParamByName('callername').Text  := SetForm.TellerName.Text;
      insertctracingnopriorityQ.ParamByName('clientsname').Text := payorsName_TF.Text;
      insertctracingnopriorityQ.ParamByName('contactno').Text   := contact_TF.Text;
      insertctracingnopriorityQ.ParamByName('address').Text     := address_tf.Text;
      insertctracingnopriorityQ.Execute;
    end
    else
    begin
      insertqueregQ.ParamByName('userid').Text      := SetForm.Collector.Text;
      insertqueregQ.ParamByName('callername').Text  := SetForm.TellerName.Text;
      insertqueregQ.ParamByName('quedate').Text     := quedate_TF.Text;
      insertqueregQ.ParamByName('clientsname').Text := payorsName_TF.Text;
      insertqueregQ.ParamByName('contactno').Text   := contact_TF.Text;
      insertqueregQ.ParamByName('queno').Text       := cnter_TF.Text;
      insertqueregQ.ParamByName('idin').Text        := idin_tf.Text;
      insertqueregQ.ParamByName('address').Text     := address_tf.Text;
      insertqueregQ.Execute;
    end;
  end
  else
  begin
    updateContacttracingQ.ParamByName('name').Text              := payorsName_TF.Text;
    updateContacttracingQ.ParamByName('contactno').Text         := contact_TF.Text;
    updateContacttracingQ.ParamByName('address').Text           := address_tf.Text;
    updateContacttracingQ.ParamByName('idquedetails').AsInteger := idquedetails;
    updateContacttracingQ.ParamByName('userid').Text            := SetForm.Collector.Text;
    updateContacttracingQ.Execute;
  end;

  AdvPanel4.Visible := false;
  AdvPanel1.Enabled := true;
end;

procedure Tcaller_frm.callNumber(grpNo:Integer;priType : String);
begin
 queCall_Q.Close;
 queCall_Q.ParamByName('groupno').AsInteger := grpNo;
 queCall_Q.ParamByName('typePrimary').Text  := priType;
 queCall_Q.ParamByName('user').Text         := 'Teller '+BillingData.userBaseQCollectorCode.Text;
 queCall_Q.Open;

 if not queCall_Q.IsEmpty then
 begin
   if not assigned(SetForm) then
   SetForm := TSetForm.Create(Application);

   insertMngoutQ.ParamByName('type').Text              := queCall_Qtype.text;
   insertMngoutQ.ParamByName('number').AsInteger       := queCall_Qnumber.AsInteger;
   insertMngoutQ.ParamByName('date').AsDate            := queCall_Qdate.AsDateTime;
   insertMngoutQ.ParamByName('time').AsDateTime        := now;//queCall_Qtime.AsDateTime;
   insertMngoutQ.ParamByName('code').Text              := queCall_Qcode.Text;
   insertMngoutQ.ParamByName('queid').AsInteger        := queCall_QqueID.AsInteger;
   insertMngoutQ.ParamByName('groupno').AsInteger      := queCall_Qgroupno.AsInteger;
   insertMngoutQ.ParamByName('executedby').Text        := SetForm.TellerName.Text;
   insertMngoutQ.ParamByName('Department').Text        := 'FSD';
   insertMngoutQ.ParamByName('userid').Text            := SetForm.Collector.Text;
   insertMngoutQ.ParamByName('counter').Text           := 'Teller '+SetForm.SpinEdit1.Text;
   insertMngoutQ.ParamByName('idIn').AsInteger         := queCall_QidIn.AsInteger;
   insertMngoutQ.Execute;

   deleteQueQ.ParamByName('queID').Text := queCall_QqueID.Text;
   deleteQueQ.Execute;


    queCntrQ.Close;
    queCntrQ.ParamByName('user').Text := 'Teller '+SetForm.SpinEdit1.Text;
    queCntrQ.Open;

    manageOutQ.Close;
    manageOutQ.Open;

    cntrServe_lb.Caption.Text   := manageOutQcounter.Text;
    numberServe_lb.Caption.Text := manageOutQnumber_c.Text;

    cntr_RC_lb.Caption.Text     := queCntrQregularC.Text;
    cntr_SC_lb.Caption.Text     := queCntrQseniorC.Text;
    cntr_C_lb.Caption.Text      := queCntrQcashier.Text;

    AdvPanel1.Enabled           := false;
    cnter_TF.Text               := manageOutQnumber_c.Text;
    idin_tf.Text                := manageOutQidIn.Text;
    priorityno_lbl.Caption.Text := manageOutQnumber_c.Text;
    nopriority                  := false;

    manageinQ.Close;
    manageinQ.ParamByName('cntr').Text := cnter_TF.Text;
    manageinQ.ParamByName('idin').Text :=  manageOutQidIn.Text;
    manageinQ.Open;

    if not (manageinQ.IsEmpty) then
    begin
      quedate_TF.Text := FormatDateTime('YYYY-MM-DD',manageinQ.FieldByName('date').AsDateTime)+ ' '+
                         FormatDateTime('hh:mm:ss', manageinQ.FieldByName('time').AsDateTime);
    end;

    checkdateQ.Close;
    checkdateQ.Open;

    AdvPanel3.Left    := 49;
    AdvPanel3.Top     := 162;
    AdvPanel3.Visible := true;
    Timer1.Enabled    := true;
    addContact        := true;

 end;
end;
procedure Tcaller_frm.contact_TFKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
   Begin
     address_tf.SetFocus;
   end;
end;

procedure Tcaller_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TellerPOSForm.SearchAccount.SetFocus;
end;

procedure Tcaller_frm.FormShow(Sender: TObject);
begin
  queCntrQ.Close;
  queCntrQ.ParamByName('user').Text := 'Teller '+SetForm.SpinEdit1.Text;
  queCntrQ.Open;

  manageOutQ.Close;
  manageOutQ.Open;

  cntrServe_lb.Caption.Text   := manageOutQcounter.Text;
  numberServe_lb.Caption.Text := manageOutQnumber_c.Text;

  cntr_RC_lb.Caption.Text     := queCntrQregularC.Text;
  cntr_SC_lb.Caption.Text     := queCntrQseniorC.Text;
  cntr_C_lb.Caption.Text      := queCntrQcashier.Text;

  if (TellerPOSForm.Caption  <> 'ON-LINE Cashier Interface') then
  begin
     AdvSmoothButton25.Enabled := false;
  end;
end;

procedure Tcaller_frm.NxLinkLabel1Click(Sender: TObject);
begin
  payorsName_TF.Text          := '';
  contact_TF.Text             := '';
  address_tf.Text             := '';
  priorityno_lbl.Caption.Text := '0';
  nopriority                  := true;
  AdvPanel4.Left              := 24;
  AdvPanel4.top               := 49;
  AdvPanel1.Enabled           := false;
  AdvPanel4.Visible           := true;
  addContact                  := true;
  payorsName_TF.SetFocus;
end;

procedure Tcaller_frm.NxLinkLabel5Click(Sender: TObject);
begin
if not assigned(contacttracingFrm) then
  contacttracingFrm := TcontacttracingFrm.Create(Application);

  with contacttracingFrm do
  begin
      cntcthistoryQ.Close;
      cntcthistoryQ.ParamByName('userid').Text   :=  SetForm.Collector.Text;
      cntcthistoryQ.ParamByName('queno').Text    := '%';
      cntcthistoryQ.ParamByName('name').Text     := '%';
      cntcthistoryQ.ParamByName('fromdate').Text := FormatDateTime('YYYY-MM-DD', now);
      cntcthistoryQ.ParamByName('todate').Text   := FormatDateTime('YYYY-MM-DD', now);
      cntcthistoryQ.Open;

      userid := SetForm.Collector.Text;
      showModal;
  end;

end;

procedure Tcaller_frm.payorsName_TFKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
 Begin
   contact_TF.SetFocus;
 end;
end;

procedure Tcaller_frm.Timer1Timer(Sender: TObject);
begin
    AdvPanel3.Visible := false;

    if (Not checkdateQ.IsEmpty) then
    begin

      AdvPanel4.Left := 24;
      AdvPanel4.top  := 49;
      AdvPanel4.Visible := true;

      ifregQ.Close;
      ifregQ.ParamByName('idin').Text := idin_tf.Text;
      ifregQ.ParamByName('date').Text := FormatDateTime('YYYY-MM-DD',now);
      ifregQ.Open;
      if (Not ifregQ.IsEmpty) then
      begin
        payorsName_TF.Text := ifregQ.FieldByName('clientsName').Text;
        contact_TF.Text    := ifregQ.FieldByName('contactno').Text;
      end
      else
      begin
        payorsName_TF.Text := '';
        contact_TF.Text    := '';
        address_tf.Text    := '';
      end;

      payorsName_TF.SetFocus;

    end
    else
    begin
       AdvPanel4.Visible := false;
       AdvPanel1.Enabled := true;
    end;

    timer1.Enabled := false;
end;

end.
