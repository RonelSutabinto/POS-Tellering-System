unit proceedCallerForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvGroupBox,
  AdvOfficeButtons, AdvSmoothButton, AdvSmoothLabel, Vcl.ExtCtrls, AdvPanel,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, Data.DB, DBAccess, MyAccess,
  MemDS;

type
  TproceedCallerFrm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    AdvPanel2: TAdvPanel;
    number_lb2: TAdvSmoothLabel;
    AdvSmoothButton13: TAdvSmoothButton;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    DBAdvGrid2: TDBAdvGrid;
    DBAdvGrid1: TDBAdvGrid;
    AdvSmoothButton29: TAdvSmoothButton;
    manageoutQ: TMyQuery;
    manageoutQentry: TIntegerField;
    manageoutQtype: TStringField;
    manageoutQnumber: TIntegerField;
    manageoutQdate: TDateField;
    manageoutQtime: TTimeField;
    manageoutQcode: TStringField;
    manageoutQqueid: TIntegerField;
    manageoutQgroupno: TIntegerField;
    manageoutQexecutedby: TStringField;
    manageoutQDepartment: TStringField;
    manageoutQuserid: TStringField;
    manageoutQcounter: TStringField;
    manageoutQisbeep: TBooleanField;
    manageoutQnumberC: TStringField;
    manageoutDS: TMyDataSource;
    insertQueQ: TMyQuery;
    queQ: TMyQuery;
    queQqueID: TIntegerField;
    queQtype: TStringField;
    queQnumber: TIntegerField;
    queQdate: TDateField;
    queQtime: TTimeField;
    queQcode: TStringField;
    queQgroupno: TIntegerField;
    queQuser: TStringField;
    queQnumberC: TStringField;
    queDS: TMyDataSource;
    proccedHistoryQ: TMyQuery;
    updateManageoutQ: TMyQuery;
    manageoutQidIn: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure AdvSmoothButton29Click(Sender: TObject);
    procedure proceedto(grpNo : Integer;optn,typePri :String);
    procedure AdvOfficeRadioGroup1Click(Sender: TObject);
    procedure AdvSmoothButton13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  proceedCallerFrm: TproceedCallerFrm;

implementation

{$R *.dfm}

uses Data, SetTeller;



procedure TproceedCallerFrm.AdvOfficeRadioGroup1Click(Sender: TObject);
var
 typeP :String;
begin
  case AdvOfficeRadioGroup1.ItemIndex of
    0:typeP := 'BI';
    1:typeP := 'BC';
    2:typeP := 'RD';
    3:typeP := 'NA';
    4:typeP := 'CC';
  end;

  {queQ.Close;
  queQ.ParamByName('user').Text         := 'Teller '+BillingData.userBaseQCollectorCode.Text;
  queQ.ParamByName('groupno').AsInteger := grpNo;
  queQ.Open; }

  queQ.Close;
  queQ.ParamByName('user').Text             := 'Teller '+BillingData.userBaseQCollectorCode.Text;
  queQ.ParamByName('typePrimary').Text      := typeP;
  queQ.Open;
end;

procedure TproceedCallerFrm.AdvSmoothButton13Click(Sender: TObject);
begin
  close;
end;

procedure TproceedCallerFrm.AdvSmoothButton29Click(Sender: TObject);
var
 grpNo :integer;
 optn  : String;
 typeP : String;
begin

   case AdvOfficeRadioGroup1.ItemIndex of
    0:begin
      grpNo := 5;
      optn  := 'Billling Inquiry';
      typeP := 'BI';
    end;
    1:begin
      grpNo := 6;
      optn  := 'Billing Complaint';
      typeP := 'BC';
    end;
    2:begin
      grpNo := 1;
      optn  := 'Reco/Desco';
      typeP := 'RD';
    end;
    3:begin
      grpNo := 1;
      optn  := 'New Applicant';
      typeP := 'NA';
    end;
    4:begin
      grpNo := 1;
      optn  := 'Consumer Complaint ISD';
      typeP := 'CC';
    end;
  end;
  proceedto(grpNo,optn,typeP);

  {Billing Inquiry
Billing Complaint
Reco/Disco ISD
New Applicant ISD
Consumer Complaint ISD
}
end;

procedure TproceedCallerFrm.FormShow(Sender: TObject);
var
 typeP : String;
begin
  manageoutQ.Close;
  manageoutQ.ParamByName('depart').Text  := 'FSD';
  manageoutQ.ParamByName('id').Text      := BillingData.userBaseQCollectorCode.Text;
  // manageoutQ.ParamByName('counter').Text := 'Teller '+SetForm.SpinEdit1.Text;
  manageoutQ.Open;

  case AdvOfficeRadioGroup1.ItemIndex of
    0:typeP := 'BI';
    1:typeP := 'BC';
    2:typeP := 'RD';
    3:typeP := 'NA';
    4:typeP := 'CC';
  end;

  queQ.Close;
  queQ.ParamByName('user').Text             := 'Teller '+BillingData.userBaseQCollectorCode.Text;
  queQ.ParamByName('typePrimary').Text      := typeP;
  queQ.Open;
end;
procedure TproceedCallerFrm.proceedto(grpNo : Integer;optn,typePri :String);
begin
   if (MessageDlg('Consumer''s number: '+manageoutQtype.Text+ manageoutQnumber.Text+#13
      +'Area you sure, you want to proceed this number to the '+optn+'?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

  proccedHistoryQ.ParamByName('type').Text          := manageoutQtype.Text;
  proccedHistoryQ.ParamByName('number').Text        := manageoutQnumber.Text;
  proccedHistoryQ.ParamByName('date').AsDate        := manageoutQdate.AsDateTime;
  proccedHistoryQ.ParamByName('time').AsDateTime    := now; //manageoutQtime.AsDateTime;
  proccedHistoryQ.ParamByName('code').Text          := manageoutQcode.Text;
  proccedHistoryQ.ParamByName('groupno').AsInteger  := grpNo;
  proccedHistoryQ.ParamByName('user').Text          := 'Teller '+BillingData.userBaseQCollectorCode.Text;
  proccedHistoryQ.ParamByName('typePrimary').Text   := typePri;
  proccedHistoryQ.Execute;

  insertQueQ.ParamByName('type').Text          := manageoutQtype.Text;
  insertQueQ.ParamByName('number').Text        := manageoutQnumber.Text;
  insertQueQ.ParamByName('date').AsDate        := manageoutQdate.AsDateTime;
  insertQueQ.ParamByName('time').AsDateTime    := now; //manageoutQtime.AsDateTime;
  insertQueQ.ParamByName('code').Text          := manageoutQcode.Text;
  insertQueQ.ParamByName('groupno').AsInteger  := grpNo;
  insertQueQ.ParamByName('user').Text          := 'Teller '+BillingData.userBaseQCollectorCode.Text;
  insertQueQ.ParamByName('typePrimary').Text   := typePri;
  insertQueQ.ParamByName('idIn').AsInteger     := manageoutQidIn.AsInteger;
  insertQueQ.Execute;


  updateManageoutQ.ParamByName('Department').Text := typePri;
  updateManageoutQ.ParamByName('entry').Text      := manageoutQentry.Text;
  updateManageoutQ.Execute;
  manageoutQ.Refresh;

  queQ.Close;
  queQ.ParamByName('user').Text         := 'Teller '+BillingData.userBaseQCollectorCode.Text;
  queQ.ParamByName('typePrimary').Text  := typePri;
  queQ.Open;
end;
end.
