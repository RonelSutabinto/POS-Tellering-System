unit OtherPayments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, Mask, DBCtrls, Grids, DBGrids, CRGrid,
  QRCtrls, QuickRpt, PDJSillyLabel, DBAccess, MyAccess, MemDS,
  NxCollection, CRDBGrid1, AdvPanel, AdvGroupBox, AdvOfficeButtons,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, Menus,
  ComObj,Math,OleDlg,OleConst, QExport4, QExport4XLS, QExport4CustomSource;

type
  TOtherPaymentsForm = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Search: TLabeledEdit;
    Button6: TNxButton;
    OP: TMyTable;
    DSOP: TDataSource;
    OPCode: TStringField;
    OPDescription: TStringField;
    OPAmount: TFloatField;
    putevatcol: TMyQuery;
    OPWithEVAT: TStringField;
    EditorPanel: TNxHeaderPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    NxLinkLabel1: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    Button1: TNxButton;
    Button2: TNxButton;
    Button3: TNxButton;
    Button5: TNxButton;
    NxButton1: TNxButton;
    Panel2: TPanel;
    OPExcludeCOH: TStringField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    OPID: TIntegerField;
    CRDBGrid1: TCRDBGrid1;
    Deposit: TMyQuery;
    Depositdepositdate: TDateField;
    DepositAccountCode: TStringField;
    DepositAccountDescription: TStringField;
    DepositAmount: TFloatField;
    dsDeposit: TMyDataSource;
    Panel3: TPanel;
    AdvPanel1: TAdvPanel;
    Label3: TLabel;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    DateFrom: TAdvSmoothDatePicker;
    DateTo: TAdvSmoothDatePicker;
    NxButton2: TNxButton;
    CRDBGrid11: TCRDBGrid1;
    NxButton3: TNxButton;
    NxLinkLabel3: TNxLinkLabel;
    NxLinkLabel4: TNxLinkLabel;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    Panel4: TPanel;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand4: TQRBand;
    QRLabel13: TQRLabel;
    PopupMenu1: TPopupMenu;
    DepositSlip1: TMenuItem;
    DepositCollectorCode: TStringField;
    QRExpr1: TQRExpr;
    QExport4XLS1: TQExport4XLS;
    Depositdate: TDateField;
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxButton3Click(Sender: TObject);
    procedure DepositSlip1Click(Sender: TObject);
    procedure AdvOfficeRadioGroup1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure qeCustomSource1GetColumnValue(Sender: TObject; RecNo: Integer;
      Column: TqeCustomColumn; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OtherPaymentsForm: TOtherPaymentsForm;
  codeTmp :String;

implementation

uses SetTeller;

{$R *.dfm}

procedure TOtherPaymentsForm.Button5Click(Sender: TObject);
begin
 Close;
end;

procedure TOtherPaymentsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action            := caFree;
  OtherPaymentsForm := Nil;
  OP.Close;
end;

procedure TOtherPaymentsForm.AdvOfficeRadioGroup1Click(Sender: TObject);
begin
  If RadioGroup1.ItemIndex = 0 then
    begin
      Deposit.MacroByName('depositdate').Active := True;
      DEposit.MacroByName('deposit').Active     := True;
      Deposit.MacroByName('dcprdate').Active    := False;
      Deposit.MacroByName('dcpr').Active        := False;
    end else
    begin
      Deposit.MacroByName('depositdate').Active := False;
      DEposit.MacroByName('deposit').Active     := False;
      Deposit.MacroByName('dcprdate').Active    := True;
      Deposit.MacroByName('dcpr').Active        := True;
    end;

end;

procedure TOtherPaymentsForm.Button1Click(Sender: TObject);
begin
 Button1.Enabled   := False;
 Button2.Enabled   := False;
 Button3.Enabled   := False;
 Button5.Enabled   := False;

 EditorPanel.Left := 210;
 EditorPanel.Top  := 112;
 EditorPanel.Visible := True;
 EditorPanel.BringToFront;
 DBEdit1.SetFocus;
 OP.Append;
end;

procedure TOtherPaymentsForm.Button2Click(Sender: TObject);
begin
 Button1.Enabled := False;
 Button2.Enabled := False;
 Button3.Enabled := False;
 Button5.Enabled := False;

 EditorPanel.Left := 210;
 EditorPanel.Top  := 112;
 EditorPanel.Visible := True;
 EditorPanel.BringToFront;
 DBEdit1.SetFocus;
 OP.Edit;
end;

procedure TOtherPaymentsForm.Button3Click(Sender: TObject);
begin
 if (MessageDlg('Delete this record. Please confirm.', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;
 OP.Delete;
end;

procedure TOtherPaymentsForm.Button6Click(Sender: TObject);
begin
  Case RadioGroup1.ItemIndex  of
  //0 : OP.Locate('Code',Search.Text,[LoPartialKey]);
  //1 : OP.Locate('Description',Search.Text,[LoPartialKey]);
    0:begin
       OP.FilterSQL := 'Code like '+quotedstr('%'+Search.text+'%');
       OP.Open;
    end;
    1:begin
       OP.FilterSQL := 'Description like '+quotedstr('%'+Search.text+'%');
       OP.Open;
    end;
  end;
end;

procedure TOtherPaymentsForm.FormCreate(Sender: TObject);
begin
  try
    putevatcol.Execute;
  except
  end;
  Op.Open;
end;


procedure TOtherPaymentsForm.NxLinkLabel1Click(Sender: TObject);
begin
 OP.Post;
 Button1.Enabled   := True;
 Button2.Enabled   := True;
 Button3.Enabled   := True;
 Button5.Enabled   := True;

 EditorPanel.Visible := False;
end;

procedure TOtherPaymentsForm.NxLinkLabel2Click(Sender: TObject);
begin
 OP.Cancel;
 Button1.Enabled   := True;
 Button2.Enabled   := True;
 Button3.Enabled   := True;
 Button5.Enabled   := True;

 EditorPanel.Visible := False;
end;

procedure TOtherPaymentsForm.NxLinkLabel3Click(Sender: TObject);
begin
  QRLabel8.Caption := 'Covered Date: '+FormatDateTime('MM/DD/YYYY',dateFrom.Date) +
                      ' - '+FormatDateTime('MM/DD/YYYY',DateTo.Date);
  QuickRep2.Preview;
end;

procedure TOtherPaymentsForm.NxLinkLabel4Click(Sender: TObject);
begin
 // QExport4XLS1.
  QExport4XLS1.FileName := ExtractFilePath(Application.ExeName) + 'Deposit.xls';
 //Deposit.Eof := false;
 QExport4XLS1.Execute;
end;

procedure TOtherPaymentsForm.qeCustomSource1GetColumnValue(Sender: TObject;
  RecNo: Integer; Column: TqeCustomColumn; var Value: Variant);
begin
 // Deposit.First;
 // while not Deposit.Eof do
 // begin
 //   Value :=
//  end;
end;

procedure TOtherPaymentsForm.NxButton1Click(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TOtherPaymentsForm.NxButton2Click(Sender: TObject);
begin
  Deposit.Close;
  Deposit.ParamByName('DateFrom').AsDate  := DateFrom.Date;
  Deposit.ParamByName('DateTo').AsDate    := DateTo.Date;
  Deposit.ParamByName('accountcode').Text := codeTmp;
  Deposit.Open;
end;

procedure TOtherPaymentsForm.NxButton3Click(Sender: TObject);
begin
  Panel3.Visible := False;
end;

procedure TOtherPaymentsForm.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     Key := #0;
    end;
end;

procedure TOtherPaymentsForm.DepositSlip1Click(Sender: TObject);
begin
  codeTmp := OPCode.Text;

  Panel3.Top  := 0;
  Panel3.Left := 0;
  Panel3.BringToFront;
  Panel3.Visible := True;

  Deposit.Close;
  Deposit.ParamByName('DateFrom').AsDate  := DateFrom.Date;
  Deposit.ParamByName('DateTo').AsDate    := DateTo.Date;
  Deposit.ParamByName('accountcode').Text := codeTmp;
  Deposit.Open;

end;

end.
