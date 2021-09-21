unit SetTeller;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DB, //DBTables,
  ExtCtrls, DBAccess,
  MyAccess, MemDS, PDJSillyLabel, MyDacVcl, DsFancyButton,
  PJSysInfo, Spin, NxEdit, NxFocus, NxCollection, jpeg, pngimage, AdvSmoothLabel,
  AdvSmoothButton, AdvEdit, advlued;

type
  TSetForm = class(TForm)
    MyConnection1: TMyConnection;
    TellerTrans: TMyQuery;
    DSUSers: TDataSource;
    users: TMyQuery;
    TellerTransTELLERCODE: TStringField;
    TellerTransORDATE: TDateTimeField;
    TellerTransTRANSSTAT: TStringField;
    InsertGrpColl: TMyQuery;
    CheckTOR: TMyQuery;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Collector: TNxEdit;
    Password: TNxEdit;
    TellerName: TNxEdit;
    PostDate: TNxDatePicker;
    StartTellerOR: TNxEdit;
    InterestRate: TNxEdit;
    VATRate: TNxEdit;
    AreaCode: TNxComboBox;
    FormOpt: TRadioGroup;
    Image1: TImage;
    OkBtn: TNxButton;
    CloseBtn: TNxButton;
    Image2: TImage;
    BatchNumber: TLabel;
    Batch: TNxEdit;
    CreateTellerLogIn: TMyQuery;
    Label11: TLabel;
    Bevel3: TBevel;
    CreateCustomerCount: TMyQuery;
    CheckTeller: TMyQuery;
    InsertTellerLogin: TMyQuery;
    DeleteTellerLogIn: TMyQuery;
    usersEntry: TIntegerField;
    usersCollectorCode: TStringField;
    usersUserType: TStringField;
    usersPicture: TBlobField;
    usersName: TStringField;
    AddColumn: TMyQuery;
    usersORCount: TLargeintField;
    SpinEdit1: TNxSpinEdit;
    NxFocus1: TNxFocus;
    PrintOpt: TRadioGroup;
    usersAccountCode: TStringField;
    usersEnrolled: TStringField;
    usersEnrollDate: TDateField;
    SpotBillTemp: TMyQuery;
    alterTable: TMyQuery;
    usersIsActive: TBooleanField;
    AdvSmoothLabel1: TAdvSmoothLabel;
    usersmcashier: TBooleanField;
    usersarea: TStringField;
    usersmatchCode: TStringField;
    tmpUsers: TMyQuery;
    tmpUsersEntry: TIntegerField;
    tmpUsersCollectorCode: TStringField;
    tmpUsersUserType: TStringField;
    tmpUsersPicture: TBlobField;
    tmpUsersName: TStringField;
    tmpUsersORCount: TLargeintField;
    tmpUsersAccountCode: TStringField;
    tmpUsersEnrolled: TStringField;
    tmpUsersEnrollDate: TDateField;
    tmpUsersIsActive: TBooleanField;
    tmpUsersarea: TStringField;
    tmpUsersmcashier: TBooleanField;
    tmpUsersmatchCode: TStringField;
    checkTellerLogQ: TMyQuery;
    insertUserlogQ: TMyQuery;
    AdvSmoothButton1: TAdvSmoothButton;
    noLogQ: TMyQuery;
    noLogQentry: TIntegerField;
    noLogQuserID: TStringField;
    noLogQname: TStringField;
    noLogQnumber: TIntegerField;
    noLogQuserType: TStringField;
    noLogQDate: TDateTimeField;
    updateLogQ: TMyQuery;
    islogUpdateQ: TMyQuery;
    usersncecco: TBooleanField;
    userCheckUpdateQ: TMyQuery;
    tmpUserspass: TStringField;
    userspass: TStringField;
    usersnceccocnt: TIntegerField;
    userCheckUpdateQEntry: TIntegerField;
    userCheckUpdateQCollectorCode: TStringField;
    userCheckUpdateQpass: TStringField;
    userCheckUpdateQUserType: TStringField;
    userCheckUpdateQPicture: TBlobField;
    userCheckUpdateQName: TStringField;
    userCheckUpdateQORCount: TLargeintField;
    userCheckUpdateQAccountCode: TStringField;
    userCheckUpdateQEnrolled: TStringField;
    userCheckUpdateQEnrollDate: TDateField;
    userCheckUpdateQIsActive: TBooleanField;
    userCheckUpdateQarea: TStringField;
    userCheckUpdateQIsWAN: TBooleanField;
    userCheckUpdateQAreacode: TStringField;
    userCheckUpdateQmcashier: TBooleanField;
    userCheckUpdateQmatchCode: TStringField;
    MyConnection2: TMyConnection;
    appverQ: TMyQuery;
    insertversionQ: TMyQuery;
    checkIfexistsQ: TMyQuery;
    userCheckUpdateQupdate20201221: TBooleanField;
    procedure CloseBtnClick(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CollectorKeyPress(Sender: TObject; var Key: Char);
    procedure TellerNameKeyPress(Sender: TObject; var Key: Char);
    procedure PasswordKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StartTellerORKeyPress(Sender: TObject; var Key: Char);
    procedure InterestRateKeyPress(Sender: TObject; var Key: Char);
    procedure VATRateKeyPress(Sender: TObject; var Key: Char);
    procedure AreaCodeKeyPress(Sender: TObject; var Key: Char);
    procedure AreaCodeExit(Sender: TObject);
    procedure BatchKeyPress(Sender: TObject; var Key: Char);
    procedure DBConnector();
    procedure AdvSmoothButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AreaCodeStr  : String[3] ;
    AllowPartial : Boolean   ;
    area_String  :String     ;
    OnShowPOS    : Boolean   ;
  end;

var
  SetForm: TSetForm;

implementation

uses TellerMenu, ModTools, Data, TellerPOS;

{$R *.dfm}

procedure TSetForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSetForm.OkBtnClick(Sender: TObject);
Var COHAudit : TMyQuery;
    areaCode_Str :String;
begin
  DBConnector;

  //======================================================
  //This statement enable the latest application update===
  try
    appverQ.Execute;
  except
  end;

  checkIfexistsQ.Close;
  checkIfexistsQ.ParamByName('appdate').Text := '2020-12-21';
  checkIfexistsQ.Open;

  if checkIfexistsQ.IsEmpty then
  begin
    insertversionQ.ParamByName('appdate').Text := '2020-12-21';
    insertversionQ.Execute;

    try
     alterTable.Execute;
    except
    end;

  end;
  //=======================================================


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

   //===========================================
   //===========================================
   checkTellerLogQ.Close;
   checkTellerLogQ.ParamByName('ID').Text     := Collector.Text;
   checkTellerLogQ.ParamByName('type').Text   := 'Teller';
   checkTellerLogQ.ParamByName('number').Text := SpinEdit1.Text;
   checkTellerLogQ.Open;

   if not checkTellerLogQ.IsEmpty then
   begin
     MessageDlg('That Teller Number is already in use...'+#13+#10+'Please select another teller number', mtError, [mbOK], 0);
     SpinEdit1.SetFocus;
     exit;
   end;
   //===========================================
   //===========================================

  CheckTOR.Close;
  CheckTOR.FilterSql := 'trim(ORNumber) = '+QuotedStr(JustStr(StartTellerOR.Text,'0',9,1)+'-'+UpperCase(Collector.Text));
  CheckTOR.Open;

  If not CheckTOR.IsEmpty then
   begin
    MessageDlg('That OR number has already been used. Please check.', mtError, [mbOK], 0);
    StartTellerOR.SetFocus;
    //CheckTOR.Close;
    exit;
   end;

  CheckTOR.Close;

  TellerTrans.Close;
  TellerTrans.ParamByName('date').AsDate     := PostDate.Date;
  TellerTrans.ParamByName('tellercode').Text := Collector.Text;
  TellerTrans.ParamByName('batch').Text      := Batch.Text;
  TellerTrans.Open;

  If not TellerTrans.IsEmpty then
   begin
    MessageDlg('That transaction batch is already close....', mtError, [mbOK], 0);
    Collector.SetFocus;
    TellerTrans.Close;
    exit;
   end;

  TellerTrans.Close;

  Try
  CreateTellerLogIn.Execute;
  CreateCustomerCount.Execute;
  except
  end;

  tmpUsers.Close;
  tmpUsers.SQL.Clear;
  tmpUsers.SQL.Add('Update collector set ORCount = :ORCount Where collectorcode = :collectorcode');
  tmpUsers.ParamByName('collectorcode').Text := Collector.Text;
  tmpUsers.ParamByName('ORCount').AsInteger  := StrToInt(StartTellerOR.Text);
  tmpUsers.Execute;

  users.Close;
  users.SQL.Clear;
  users.SQL.Add('select * from collector ');
  users.SQL.Add('    where collectorcode = :collectorcode and ');
  users.SQL.Add('          pass = md5(:pass) and');
  users.SQL.Add('          enrolldate = :date');
  Users.ParamByName('collectorcode').Text := Collector.Text;
  Users.ParamByName('pass').Text      := Password.Text;
  Users.ParamByName('date').Text          := FormatDateTime('yyyy-mm-dd',PostDate.Date);
  Users.Open;

  If Users.IsEmpty then
   begin
     ShowMessage('Invalid User and Password or Enroll Date invalid');
     Collector.SetFocus;
     users.Close;
     exit;
   end;

  if(usersIsActive.AsBoolean = false) then
  begin
     ShowMessage('Inactive user account..');
     Collector.SetFocus;
     users.Close;
     exit;
  end;

  if((usersncecco.AsBoolean) AND (usersUserType.Text ='8')) then
    TellerPOSForm.printOEBRlabel.Visible := true
  else
    TellerPOSForm.printOEBRlabel.Visible := false;

  Collector.ReadOnly  := TRUE;
  TellerName.ReadOnly := TRUE;

  //========================
  //========================

  islogUpdateQ.Close;
  islogUpdateQ.ParamByName('ID').Text := usersCollectorCode.Text;
  islogUpdateQ.Open;

  if islogUpdateQ.IsEmpty then
  begin
    insertUserlogQ.ParamByName('userID').Text      := Collector.Text;
    insertUserlogQ.ParamByName('name').Text        := TellerName.Text;
    insertUserlogQ.ParamByName('number').Text      := SpinEdit1.Text;
    insertUserlogQ.ParamByName('userType').Text    := 'Teller';
    insertUserlogQ.ParamByName('Date').AsDateTime  := now;
    insertUserlogQ.Execute;
  end
  else
  begin
    updateLogQ.ParamByName('userID').Text          := Collector.Text;
    updateLogQ.ParamByName('name').Text            := TellerName.Text;
    updateLogQ.ParamByName('number').Text          := SpinEdit1.Text;
    updateLogQ.ParamByName('Date').AsDateTime      := now;
    updateLogQ.Execute;
  end;
  //=========================
  //=========================

     Case AreaCode.ItemIndex of
     0 : AreaCodeStr := '001';
     1 : AreaCodeStr := '002';
     2 : AreaCodeStr := '003';
     3 : AreaCodeStr := '004';
     end;

     If not assigned(MenuForm) then MenuForm := TMenuForm.Create(Application);

     MenuForm.NxButton9.BringToFront;
     MenuForm.NxButton9.Top      := 135;
     MenuForm.NxButton9.Left     := 296;
     MenuForm.NxButton9.Visible  := True;

     Hide;
     If (usersUserType.Text = '5') and (usersmcashier.Value = false) then
      begin
       MenuForm.CDCR.Visible            := True;
       MenuForm.DCPR.Visible            := True;
       MenuForm.Summary.Visible         := True;
       MenuForm.OtherPayment.Visible    := True;
       MenuForm.ReceiptPrinting.Visible := True;
       MenuForm.DepositBtn.Visible      := True;
       MenuForm.TellerEff.Visible       := True;
       MenuForm.NxButton9.Visible       := False;
      end;

      If (usersUserType.Text = '5') and (usersmcashier.Value = true) then
      MenuForm.CDCR.Visible            := True;

      //Check flexipack update=====================
      try
        userCheckUpdateQ.Close;
        userCheckUpdateQ.ParamByName('collectorcode').Text := Collector.Text;
        userCheckUpdateQ.Open;
        if (Not userCheckUpdateQ.IsEmpty) AND (userCheckUpdateQupdate20201221.AsBoolean) then
        begin
           MessageDlg('Please use updated teller flexipack ...', mtError, [mbOK], 0);
           Close;
        end;
      Except
      on E: Exception do
      begin
        MessageDlg(E.Message+ ' Invalid table field used.'+#13+'Please use updated teller flexipack application...', mtError, [mbOK], 0);
        Close;
      end;
      end;
      //============================================

     OnShowPOS := true;
     MenuForm.Show;

end;

procedure TSetForm.FormShow(Sender: TObject);
Var
  AddTable : TMyQuery;
begin

 //FreeAndNil(AddTable);
 PostDate.Date := Now;
 Collector.SetFocus;
end;

procedure TSetForm.CollectorKeyPress(Sender: TObject; var Key: Char);
begin

  If Key = #13 then
  begin

  try
   DBConnector;
  except
    on E: Exception do
    begin
      showmessage('Server '+area_String+' not found..');
      exit;
   end;
  end;

   users.Close;
   users.SQL.Clear;
   users.SQL.Add('select * from collector where collectorcode = :collectorcode');
   users.ParamByName('collectorcode').Text := Collector.Text;
   users.Open;

   If not users.IsEmpty then
    begin
      If (usersUserType.Text <> '2') and
         (usersUserType.Text <> '5') and
         (usersUserType.Text <> '8') and
         (usersUserType.Text <> '7') then
        begin
         MessageDlg('You are not authorized to access this program.....', mtWarning, [mbOK], 0);
         Collector.SetFocus;
         exit;
        end;

      If (usersUserType.Text = '5') or (usersUserType.Text = '2') then AllowPartial := True else AllowPartial := False;
      If (usersUserType.Text = '5') then PostDate.Enabled  := True;


     //================================================
     //=====identified user area base code=============
    if usersarea.Text = 'DMO' then
     begin
       BillingData.userBaseMyConnection.Connected := false;
       BillingData.userBaseMyConnection.Server    := 'server';
       BillingData.userBaseMyConnection.Database  := 'zaneco';
       BillingData.userBaseMyConnection.Connected := true;

       BillingData.quedb.Connected                := false;
       BillingData.quedb.Server                   := 'server';
       BillingData.quedb.Connected                := true;
     end
     else if usersarea.Text = 'LAO' then
     begin
       BillingData.userBaseMyConnection.Connected := false;
       BillingData.userBaseMyConnection.Server    := 'serverlao';
       BillingData.userBaseMyConnection.Database  := 'zaneco';
       BillingData.userBaseMyConnection.Connected := true;

       BillingData.quedb.Connected                := false;
       BillingData.quedb.Server                   := 'serverlao';
       BillingData.quedb.Connected                := true;
     end
     else if usersarea.Text = 'PAO' then
     begin
       BillingData.userBaseMyConnection.Connected := false;
       BillingData.userBaseMyConnection.Server    := 'serverpao';
       BillingData.userBaseMyConnection.Database  := 'zaneco';
       BillingData.userBaseMyConnection.Connected := true;

       BillingData.quedb.Connected                := false;
       BillingData.quedb.Server                   := 'serverpao';
       BillingData.quedb.Connected                := true;
     end
     else if usersarea.Text = 'SAO' then
     begin
       BillingData.userBaseMyConnection.Connected := false;
       BillingData.userBaseMyConnection.Server    := 'serversao';
       BillingData.userBaseMyConnection.Database  := 'zaneco';
       BillingData.userBaseMyConnection.Connected := true;

       BillingData.quedb.Connected                := false;
       BillingData.quedb.Server                   := 'serversao';
       BillingData.quedb.Connected                := true;
     end;


     BillingData.userBaseQ.Close;
     BillingData.userBaseQ.SQL.Clear;
     BillingData.userBaseQ.SQL.Add('select * from collector where collectorcode = :collectorcode');
     BillingData.userBaseQ.ParamByName('collectorcode').Text := usersmatchCode.Text;
     BillingData.userBaseQ.Open;
     //================================================
     //================================================

     if not BillingData.userBaseQ.IsEmpty then
      StartTellerOR.Text := IntToStr(BillingData.userBaseQORCount.AsInteger)
     else
      StartTellerOR.Text := '';

     TellerName.Text    := usersName.Text;
     PassWord.SetFocus;
     exit;
    end
    else
    begin
    MessageDlg('User not found.', mtError, [mbOK], 0);
    Collector.SetFocus;
    end;
  end;
end;

procedure TSetForm.TellerNameKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then PassWord.SetFocus;
end;

procedure TSetForm.PasswordKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then StartTellerOR.SetFocus;
end;

procedure TSetForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DeleteTellerLogIn.ParamByName('tellernumber').Text := SpinEdit1.Text;
  DeleteTellerLogIn.Execute;
  users.Close;
  Action  := caFree;
  SetForm := Nil;
end;

procedure TSetForm.StartTellerORKeyPress(Sender: TObject; var Key: Char);
begin

  If key = #13 then
   begin
    If StartTellerOR.Text = '' then
     begin
      MessageDlg('Please enter a valid number...', mtError, [mbOK], 0);
      StartTellerOR.SetFocus;
     end;
    CheckTOR.Close;
    CheckTOR.FilterSQL := 'ORNumber = '+QuotedStr(JustStr(StartTellerOR.Text,'0',9,1)+Collector.Text);
    CheckTOR.Open;
    If not CheckTOR.IsEmpty then
     begin
      MessageDlg('That OR number has alrready been used. Please check.', mtInformation, [mbOK], 0);
      StartTellerOR.SetFocus;
      CheckTOR.Close;
      exit;
     end;
    CheckTOR.Close;
    Batch.SetFocus; 
   end;
end;

procedure TSetForm.InterestRateKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then VatRate.SetFocus;
end;


procedure TSetForm.VATRateKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then OkBtnClick(Self);
end;

procedure TSetForm.AreaCodeKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    If AreaCode.ItemIndex < 0 then
      begin
        MessageDlg('Area Invalid.... ', mtError, [mbOK], 0);
        AreaCode.SetFocus;
        exit;
      end;

    // If AreaCode.ItemIndex > 0 then PostDate.Enabled := True else PostDate.Enabled := False;

    Collector.SetFocus;

  end;
end;

procedure TSetForm.AdvSmoothButton1Click(Sender: TObject);
begin
  noLogQ.Close;
  noLogQ.ParamByName('id').Text := Collector.Text;
  noLogQ.Open;

  SpinEdit1.Text :=   noLogQnumber.Text;
end;

procedure TSetForm.AreaCodeExit(Sender: TObject);
begin
    If AreaCode.ItemIndex < 0 then
      begin
        MessageDlg('Area Invalid.... ', mtError, [mbOK], 0);
        AreaCode.SetFocus;
        exit;
      end;

    // If AreaCode.ItemIndex > 0 then PostDate.Enabled := True else PostDate.Enabled := False;
end;

procedure TSetForm.BatchKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then InterestRate.SetFocus;
end;

procedure TSetForm.DBConnector();
begin

   If not assigned(TellerPOSForm) then
   TellerPOSForm := TTellerPOSForm.Create(Application);


   case AreaCode.ItemIndex of
     0:begin
       area_String := 'DMO';
       MyConnection1.Connected := false;
       MyConnection1.Server    := 'server';
       MyConnection1.Database  := 'zaneco';
       MyConnection1.Connected := true;

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
       area_String := 'PAO';
       MyConnection1.Connected := false;
       MyConnection1.Server    := 'serverpao';
       MyConnection1.Database  := 'zaneco';
       MyConnection1.Connected := true;

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
       area_String := 'SAO';
       MyConnection1.Connected := false;
       MyConnection1.Server    := 'serversao';
       MyConnection1.Database  := 'zaneco';
       MyConnection1.Connected := true;

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
       area_String := 'LAO';
       MyConnection1.Connected := false;
       MyConnection1.Server    := 'serverlao';
       MyConnection1.Database  := 'zaneco';
       MyConnection1.Connected := true;

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

