object taxWithheldForm: TtaxWithheldForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 293
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label37: TLabel
    Left = 70
    Top = 57
    Width = 54
    Height = 18
    Caption = 'TIN No.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label45: TLabel
    Left = 8
    Top = 85
    Width = 116
    Height = 18
    Alignment = taRightJustify
    Caption = 'Withholding Agent'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 465
    Height = 29
    Align = alTop
    Alignment = taCenter
    Caption = 'CREDITABLE TAX'
    Color = 3632896
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15400917
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitWidth = 208
  end
  object Bevel1: TBevel
    Left = -163
    Top = 233
    Width = 686
    Height = 2
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 216
    Top = 207
    Width = 76
    Height = 18
    Alignment = taRightJustify
    Caption = 'Vat Change'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 130
    Top = 113
    Width = 319
    Height = 88
    DataSource = taxS
    Options = [dgEditing, dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Description'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TaxBase'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TaxRate'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Visible = True
      end>
  end
  object NxButton23: TNxButton
    Left = 260
    Top = 245
    Width = 92
    Height = 32
    Caption = 'Ok'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      7A010000424D7A0100000000000036000000280000000C000000090000000100
      1800000000004401000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFF004400004400004400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF0049000CA6130CA5130CA513004900FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00500016AF2116AE2115AE2116AF2115AE21005000FFFFFFFFFFFF
      FFFFFFFFFFFF00590021B93121B93121B93100590020B93120BA3120B9310059
      00FFFFFFFFFFFFFFFFFF006200CCFFFFCCFFFF006200FFFFFF0062002CC5422C
      C5422BC542006200FFFFFFFFFFFFFFFFFF006B00006B00FFFFFFFFFFFFFFFFFF
      006B0037CF5237CF5237D052006A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF0072003FD85F40D95F40D95F007200FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF007700CCFFFFCCFFFF007700FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007700007700FFFFFF}
    ParentFont = False
    TabOrder = 3
    Transparent = True
    OnClick = NxButton23Click
  end
  object NxButton24: TNxButton
    Left = 358
    Top = 246
    Width = 92
    Height = 31
    Caption = 'Cancel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      32010000424D3201000000000000360000002800000009000000090000000100
      180000000000FC00000000000000000000000000000000000000FFFFFF000086
      000086FFFFFFFFFFFFFFFFFF000086000086FFFFFF0000008D2727CE2727CE00
      008DFFFFFF00008D2726CE2727CE00008D000000973130D63031D53130D50000
      963030D53030D53030D500009700FFFFFF0000A23F3FE03F3FE03E3EE03F3FE1
      3F3EE00000A2FFFFFF00FFFFFFFFFFFF0000AF4E4EED4E4FEC4E4EEC0000AFFF
      FFFFFFFFFF00FFFFFF0000BB5C5DF85C5CF75C5DF85D5DF85D5DF70000BBFFFF
      FF000000C56666FF6666FF6666FF0000C56666FF6666FF6666FF0000C4000000
      CBE8E8E8E8E8E80000CBFFFFFF0000CBE8E8E8E8E8E80000CB00FFFFFF0000CB
      0000CBFFFFFFFFFFFFFFFFFF0000CB0000CBFFFFFF00}
    ParentFont = False
    TabOrder = 4
    Transparent = True
    OnClick = NxButton24Click
  end
  object name_tf: TEdit
    Left = 130
    Top = 85
    Width = 320
    Height = 21
    TabOrder = 1
    OnKeyPress = name_tfKeyPress
  end
  object tin_tf: TMaskEdit
    Left = 130
    Top = 58
    Width = 318
    Height = 21
    EditMask = '000\-000\-000\-000;1;_'
    MaxLength = 15
    TabOrder = 0
    Text = '   -   -   -   '
    OnKeyPress = tin_tfKeyPress
  end
  object txtvatchange: TNxNumberEdit
    Left = 327
    Top = 207
    Width = 121
    Height = 21
    Alignment = taRightJustify
    TabOrder = 5
    Text = '0.00'
    Visible = False
  end
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 70
    Top = 58
    Width = 345
    Height = 150
    Caption = ''
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 6
    Visible = False
    FullWidth = 345
    object Label3: TLabel
      Left = 59
      Top = 49
      Width = 61
      Height = 18
      Alignment = taRightJustify
      Caption = 'Password'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txtpass: TNxEdit
      Left = 126
      Top = 50
      Width = 193
      Height = 21
      TabOrder = 0
      Text = 'txtpass'
      PasswordChar = '*'
    end
    object NxButton1: TNxButton
      Left = 129
      Top = 91
      Width = 93
      Height = 32
      Caption = 'Confirm'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFE4E4E4DDDDDDD1DAD7D8DFDDE9E9E9EFEFEFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6B4C4BF299C779B
        C3B6CACACACCCCCCD3D3D3DDDDDDE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE6F3EF30A27D2DCCA02AA881B3DDCFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF5F232A37F2ACB9F20D2A628
        D0A42DA07DE7F4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EDF7F435A48129D1A520D2A6FFFFFF1FD1A627BE944FB192FEFFFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF1F8F638A68329D0A520D2A62EDAB029AA832E
        DAB021D2A72AAD8699D1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FAF837A581
        2AD1A61FD1A642E1BB2FAC837BCAB22CAA812EDAB022CFA42BA27EDAEEE8FFFF
        FFFFFFFFFFFFFFFFFFFF32A5822EDAB021D0A57CF2D631B387CDECE2FFFFFFB3
        E2D22CAC822EDAB021C4993FAC89FAFDFCFFFFFFFFFFFFFFFFFFD2EBE432A582
        8DF8E033B68DC6ECDFFFFFFFFFFFFFFFFFFFBDE6D92DAD841FCB9F2AB78F81CB
        B3FFFFFFFFFFFFFFFFFFFFFFFFD2EBE432A582CEEFE4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC5E9DD2FB1871FC89C2DAE86C8E8DEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEECE232B28820C1
        9538B28AF2FAF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFD5EFE734B68B25B68B6AC5A7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCF2
        EA37B58C25AC7FB3E1D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2F4EE38B68C2EAF84FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE7F6F13EB890FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF8F4}
      ParentFont = False
      TabOrder = 1
      Transparent = True
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 228
      Top = 91
      Width = 93
      Height = 32
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFE3E3F28181C433339F11118F11118F30309D7B7BC1DDDDEFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7FC31215961120AA1128B911
        2CC0112CC01129BA1120AB1216977B7CC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7274BF111DA41430C11431C31431C31431C31431C31431C31431C31430C1121E
        A67274BFFFFFFFFFFFFFFFFFFF7E7FC61420A71736C61736C61736C61736C617
        36C61736C61736C61736C61736C61736C61421A97879C4FFFFFFE6E6F4171CA0
        1A3AC81A3CCA5F77DAFFFFFF5F77DA1A3CCA1A3CCA5F77DAFFFFFF5F77DA1A3C
        CA1A3BC9161C9FD8D8EE8385CC2235B81E43CE1E43CEFFFFFFFFFFFFFFFFFF62
        7CDD627CDDFFFFFFFFFFFFFFFFFF1E43CE1E43CE2136BB7577C63C40B22242C9
        2249D22249D24448B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4448B72249
        D22249D22243CC3135AD1A1FA72950D42751D62751D62751D64448B7FFFFFFFF
        FFFFFFFFFFFFFFFF4448B72751D62751D62751D62952D5151AA5141AA83E66DD
        2B58DB2B58DB2B58DB6B8AE6FFFFFFFFFFFFFFFFFFFFFFFF6B8AE62B58DB2B58
        DB2B58DB3B64DD141AA83B41BA5270DC2F5EDF2F5EDF6E8FE9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF6E8FE92F5EDF2F5EDF5473DD363CB88286D55264D0
        3A6AE43365E3FFFFFFFFFFFFFFFFFF4448B74448B7FFFFFFFFFFFFFFFFFF3365
        E33869E45062D08286D5E5E6F71721B57495EB386CE74448B7FFFFFF4448B736
        6BE7366BE74448B7FFFFFF4448B7366BE77396EC1C27B7E5E6F7FFFFFF8286D8
        3948C77FA2F13F74EB151AA53970EA3970EA3970EA3970EA151AA53E73EA7CA0
        F13E4DCA7C81D6FFFFFFFFFFFFFFFFFF7379D43545C78FACF1709AF25B8BF047
        7DEE477DEE5A8AF06E98F28FADF23C4DCA7077D3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF7E84D91623BC5165D57088E38EA9EF8FABF0728AE35569D71825BC7B81
        D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEFFA8D92DE5961CF29
        32C12630C0565ECE878CDCEBECF9FFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 2
      Transparent = True
      OnClick = NxButton2Click
    end
  end
  object taxWheldS: TMyDataSource
    DataSet = taxWheldQ
    Left = 140
    Top = 232
  end
  object taxWheldQ: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'Select * from collectiontaxwheld')
    Left = 81
    Top = 223
    object taxWheldQEntry: TIntegerField
      FieldName = 'Entry'
    end
    object taxWheldQReceiptNumber: TStringField
      FieldName = 'ReceiptNumber'
      Size = 10
    end
    object taxWheldQAccountCode: TFloatField
      FieldName = 'AccountCode'
    end
    object taxWheldQArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object taxWheldQBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object taxWheldQSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object taxWheldQAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object taxWheldQName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object taxWheldQAddress: TStringField
      FieldName = 'Address'
      Size = 15
    end
    object taxWheldQBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object taxWheldQKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object taxWheldQTotalBill: TFloatField
      FieldName = 'TotalBill'
    end
    object taxWheldQCollectorCode: TStringField
      FieldName = 'CollectorCode'
      FixedChar = True
      Size = 3
    end
    object taxWheldQDatePaid: TDateField
      FieldName = 'DatePaid'
    end
    object taxWheldQOPDescription: TStringField
      FieldName = 'OPDescription'
      Size = 50
    end
    object taxWheldQTellerORNumber: TStringField
      FieldName = 'TellerORNumber'
      Size = 15
    end
    object taxWheldQOCCode1: TStringField
      FieldName = 'OCCode1'
      Size = 45
    end
    object taxWheldQOCCode2: TStringField
      FieldName = 'OCCode2'
      Size = 45
    end
    object taxWheldQOCCode3: TStringField
      FieldName = 'OCCode3'
      Size = 45
    end
    object taxWheldQTaxBaseAmnt: TFloatField
      FieldName = 'TaxBaseAmnt'
    end
    object taxWheldQFinalTaxRate: TFloatField
      FieldName = 'FinalTaxRate'
    end
    object taxWheldQFinalTaxWithheld: TFloatField
      FieldName = 'FinalTaxWithheld'
    end
    object taxWheldQCreditableTaxRate: TFloatField
      FieldName = 'CreditableTaxRate'
    end
    object taxWheldQCreditableTaxWithheld: TFloatField
      FieldName = 'CreditableTaxWithheld'
    end
    object taxWheldQtinFinal: TStringField
      FieldName = 'tinFinal'
      Size = 45
    end
    object taxWheldQPayorsNameFinal: TStringField
      FieldName = 'PayorsNameFinal'
      Size = 45
    end
    object taxWheldQtinCreditable: TStringField
      FieldName = 'tinCreditable'
      Size = 45
    end
    object taxWheldQPayorsNameCreditable: TStringField
      FieldName = 'PayorsNameCreditable'
      Size = 45
    end
    object taxWheldQOCAmount1: TFloatField
      FieldName = 'OCAmount1'
    end
    object taxWheldQOC1FinalVat: TFloatField
      FieldName = 'OC1FinalVat'
    end
    object taxWheldQOC1WithholdingTax: TFloatField
      FieldName = 'OC1WithholdingTax'
    end
    object taxWheldQOCAmount2: TFloatField
      FieldName = 'OCAmount2'
    end
    object taxWheldQOC2FinalVat: TFloatField
      FieldName = 'OC2FinalVat'
    end
    object taxWheldQOC2WithholdingTax: TFloatField
      FieldName = 'OC2WithholdingTax'
    end
    object taxWheldQOCAmount3: TFloatField
      FieldName = 'OCAmount3'
    end
    object taxWheldQOC3FinalVat: TFloatField
      FieldName = 'OC3FinalVat'
    end
    object taxWheldQOC3WithholdingTax: TFloatField
      FieldName = 'OC3WithholdingTax'
    end
  end
  object taxS: TMyDataSource
    DataSet = taxQ
    Left = 49
    Top = 144
  end
  object taxQ: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      '&Final'
      '&Creditable')
    Left = 16
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'taxbase'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TaxRate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'taxbase'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TaxRate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'taxbase'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TaxRate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCCode1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rentalTaxRate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rentalTaxRate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCCode2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rentalTaxRate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rentalTaxRate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCCode3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rentalTaxRate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rentalTaxRate'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Final'
        Value = 
          'set @a:=0;'#13#10'(Select '#39'Power Bill'#39' as Description,'#13#10'           con' +
          'vert( :taxbase,decimal(12,2)) as taxbase,'#13#10'           convert( :' +
          'TaxRate,decimal(12,2)) as taxrate,'#13#10'           convert( :taxbase' +
          ' *(-:TaxRate/100),decimal(12,2)) as amount,     '#13#10'           '#39'PB' +
          'ill'#39' as occode,'#13#10'           '#39'final'#39' as Codepost,'#13#10'           @a ' +
          ':= convert( :taxbase *(-:TaxRate/100),decimal(12,2)) as total,'#13#10 +
          '           0.0 as vat)'#13#10'union'#13#10'(Select  oc1.Description,'#13#10'      ' +
          '      oc1.taxbase,'#13#10'            oc1.taxrate,'#13#10'            oc1.am' +
          'ount amount,'#13#10'            oc1.occode,'#13#10'            oc1.Codepost,' +
          #13#10'            @a:=@a+oc1.amount as total, '#13#10'            oc1.vat'#13 +
          #10'        from (select  '#13#10'           :OCCode1 as Description,'#13#10'  ' +
          '         convert( (:OCamount1 - :OCamount1/(1+:vat/100)*(:vat/10' +
          '0) ),'#13#10'                          decimal(12,2)) as taxbase,'#13#10'   ' +
          '        convert( :TaxRate,decimal(12,2)) as taxrate,'#13#10'          ' +
          ' convert(- (:OCamount1 - :OCamount1/(1+:vat/100)*(:vat/100) )*( ' +
          ':TaxRate/100),'#13#10'                       decimal(12,2)) as amount,' +
          '     '#13#10'       '#13#10'           '#39'PBill'#39' as occode,'#13#10'           '#39'final' +
          #39' as Codepost,'#13#10'          /* @a := @a+                          ' +
          '           '#13#10'                       convert( - (:OCamount1 - :OC' +
          'amount1/(1+:vat/100)*(:vat/100) )*( :TaxRate/100),'#13#10'            ' +
          '          decimal(12,2)) as total,*/'#13#10'           0.0 as total,'#13#10 +
          '           0.0 as vat) oc1'#13#10'         where oc1.amount<>0'#13#10')'#13#10'uni' +
          'on'#13#10'(Select oc2.Description,'#13#10'            oc2.taxbase,'#13#10'        ' +
          '    oc2.taxrate,'#13#10'            oc2.amount amount,'#13#10'            oc' +
          '2.occode,'#13#10'            oc2.Codepost,'#13#10'            @a:=@a+oc2.amo' +
          'unt as total, '#13#10'            oc2.vat'#13#10'        from (select  '#13#10'   ' +
          '        :OCCode2 as Description,'#13#10'            convert( (:OCamoun' +
          't2 - :OCamount2/(1+:vat/100)*(:vat/100) ),'#13#10'                    ' +
          '      decimal(12,2)) as taxbase,'#13#10'           convert( :TaxRate,d' +
          'ecimal(12,2)) as taxrate,'#13#10'           convert(- (:OCamount2 - :O' +
          'Camount2/(1+:vat/100)*(:vat/100) )*( :TaxRate/100),'#13#10'           ' +
          '            decimal(12,2)) as amount,     '#13#10'       '#13#10'           ' +
          #39'PBill'#39' as occode,'#13#10'           '#39'final'#39' as Codepost,'#13#10'           ' +
          '0.0 as total,'#13#10'           0.0 as vat) oc2'#13#10'         where oc2.am' +
          'ount<>0'#13#10')'#13#10'union'#13#10'(Select oc3.Description,'#13#10'            oc3.tax' +
          'base,'#13#10'            oc3.taxrate,'#13#10'            oc3.amount amount,'#13 +
          #10'            oc3.occode,'#13#10'            oc3.Codepost,'#13#10'           ' +
          ' @a:=@a+oc3.amount as total, '#13#10'            oc3.vat'#13#10'        from' +
          ' (select  '#13#10'           :OCCode3 as Description,'#13#10'             co' +
          'nvert( (:OCamount3 - :OCamount3/(1+:vat/100)*(:vat/100) ),'#13#10'    ' +
          '                      decimal(12,2)) as taxbase,'#13#10'           con' +
          'vert( :TaxRate,decimal(12,2)) as taxrate,'#13#10'           convert(- ' +
          '(:OCamount3 - :OCamount3/(1+:vat/100)*(:vat/100) )*( :TaxRate/10' +
          '0),'#13#10'                       decimal(12,2)) as amount,     '#13#10'    ' +
          '   '#13#10'           '#39'PBill'#39' as occode,'#13#10'           '#39'final'#39' as Codepo' +
          'st,'#13#10'           0.0 as total,'#13#10'           0.0 as vat) oc3'#13#10'     ' +
          '    where oc3.amount<>0'#13#10')'#13#10'union'#13#10'(select  '#39'     TOTAL'#39' as Desc' +
          'ription,'#13#10'             null as TaxBase,'#13#10'             null as Ta' +
          'xRate,'#13#10'            convert( @a,decimal(12,2)) as amount, '#13#10'    ' +
          '         '#39'total'#39' as occode,'#13#10'             '#39'total'#39' as Codepost,'#13#10 +
          '              0 as total,'#13#10'              0 as vat)'#13#10#13#10
        Active = False
      end
      item
        Name = 'Creditable'
        Value = 
          'set @a:=0.0;'#13#10'(Select '#39'Power Bill'#39' as Description,'#13#10'           c' +
          'onvert( :taxbase *(:vat/100),decimal(12,2)) as taxbase,'#13#10'       ' +
          '    convert( :TaxRate,decimal(12,2)) as taxrate,'#13#10'           con' +
          'vert( :taxbase *(-:TaxRate/100),decimal(12,2)) as amount,     '#13#10 +
          '           '#39'PBill'#39' as occode,'#13#10'           '#39'Withheld'#39' as Codepost' +
          ','#13#10'           @a := convert( :taxbase *(-:TaxRate/100),decimal(1' +
          '2,2)) as total,          '#13#10'           0.0 as vat)'#13#10'union'#13#10#13#10'(Sel' +
          'ect oc1.Description,'#13#10'            oc1.taxbase,'#13#10'            oc1.' +
          'taxrate,'#13#10'            oc1.amount amount,'#13#10'            oc1.occode' +
          ','#13#10'            oc1.Codepost,'#13#10'            @a:=@a+oc1.amount as t' +
          'otal, '#13#10'            oc1.vat'#13#10'        from (select  '#13#10'           ' +
          ':OCCode1 as Description,'#13#10'           convert( (:OCamount1 - :OCa' +
          'mount1/(1+:vat/100)*(:vat/100) ),'#13#10'                          dec' +
          'imal(12,2)) as taxbase,'#13#10'           convert( :rentalTaxRate,deci' +
          'mal(12,2)) as taxrate,'#13#10'           convert(- (:OCamount1 - :OCam' +
          'ount1/(1+:vat/100)*(:vat/100) )*( :rentalTaxRate/100),'#13#10'        ' +
          '               decimal(12,2)) as amount,     '#13#10'       '#13#10'        ' +
          '   '#39'PBill'#39' as occode,'#13#10'           '#39'final'#39' as Codepost,'#13#10'        ' +
          '--   @a  :=  5.0     '#13#10'                   --      ( -(:OCamount1' +
          ' - :OCamount1/(1+:vat/100)*(:vat/100) )   )*( :TaxRate/100)'#13#10'   ' +
          '           0.0       as total,         '#13#10'                    -- ' +
          '  convert(  -(:OCamount1 - :OCamount1/(1+:vat/100)*(:vat/100) )*' +
          '( :TaxRate/100),'#13#10'                    --   decimal(12,2))as tota' +
          'l,'#13#10'           0.0 as vat) oc1'#13#10'         where oc1.amount<>0'#13#10')'#13 +
          #10'union'#13#10'(Select  oc2.Description,'#13#10'            oc2.taxbase,'#13#10'   ' +
          '         oc2.taxrate,'#13#10'            oc2.amount amount,'#13#10'         ' +
          '   oc2.occode,'#13#10'            oc2.Codepost,'#13#10'            @a:=@a+oc' +
          '2.amount as total, '#13#10'            oc2.vat'#13#10'        from (select  ' +
          #13#10'           :OCCode2 as Description,'#13#10'          convert( (:OCam' +
          'ount2 - :OCamount2/(1+:vat/100)*(:vat/100) ),'#13#10'                 ' +
          '         decimal(12,2)) as taxbase,'#13#10'           convert( :rental' +
          'TaxRate,decimal(12,2)) as taxrate,'#13#10'           convert(- (:OCamo' +
          'unt2 - :OCamount2/(1+:vat/100)*(:vat/100) )*( :rentalTaxRate/100' +
          '),'#13#10'                       decimal(12,2)) as amount,     '#13#10'     ' +
          '  '#13#10'           '#39'PBill'#39' as occode,'#13#10'           '#39'final'#39' as Codepos' +
          't,'#13#10'          --  @a := @a+                 '#13#10'         --       ' +
          '       convert(  -(:OCamount2 - :OCamount2/(1+:vat/100)*(:vat/10' +
          '0) )*( :TaxRate/100),'#13#10'         --              decimal(12,2)) a' +
          's total,'#13#10'          0.0 as total,'#13#10'           0.0 as vat) oc2'#13#10' ' +
          '        where oc2.amount<>0'#13#10')'#13#10'union'#13#10'(Select  oc3.Description,' +
          #13#10'            oc3.taxbase,'#13#10'            oc3.taxrate,'#13#10'          ' +
          '  oc3.amount amount,'#13#10'            oc3.occode,'#13#10'            oc3.C' +
          'odepost,'#13#10'            @a:=@a+oc3.amount as total, '#13#10'            ' +
          'oc3.vat'#13#10'        from (select  '#13#10'           :OCCode3 as Descript' +
          'ion,'#13#10'           convert( (:OCamount3 - :OCamount3/(1+:vat/100)*' +
          '(:vat/100) ),'#13#10'                          decimal(12,2)) as taxba' +
          'se,'#13#10'           convert( :rentalTaxRate,decimal(12,2)) as taxrat' +
          'e,'#13#10'           convert(- (:OCamount3 - :OCamount3/(1+:vat/100)*(' +
          ':vat/100) )*( :rentalTaxRate/100),'#13#10'                       decim' +
          'al(12,2)) as amount,     '#13#10'       '#13#10'           '#39'PBill'#39' as occode' +
          ','#13#10'           '#39'final'#39' as Codepost,'#13#10'         --  @a := @a+      ' +
          '                '#13#10'         --              convert( - (:OCamount' +
          '3 - :OCamount3/(1+:vat/100)*(:vat/100) )*( :TaxRate/100),'#13#10'     ' +
          '    --              decimal(12,2)) as total,'#13#10'           0.0 as ' +
          'total,'#13#10'           0.0 as vat) oc3'#13#10'         where oc3.amount<>0' +
          #13#10')'#13#10'union'#13#10'(select  '#39'     TOTAL'#39' as Description,'#13#10'             ' +
          'null as TaxBase,'#13#10'             null as TaxRate,'#13#10'            con' +
          'vert( @a,decimal(12,2)) as amount, '#13#10'             '#39'total'#39' as occ' +
          'ode,'#13#10'             '#39'total'#39' as Codepost,'#13#10'              0 as tota' +
          'l,'#13#10'              0 as vat)'#13#10#13#10'/*'#13#10' CONVERT( ((ifnull(t.DCDemand' +
          'Charge,0)+'#13#10'                  t.DCDistributionCharge+'#13#10'         ' +
          '         t.SCRetCustCharge+'#13#10'                  t.SCSupplySysChar' +
          'ge+'#13#10'                  t.MCRetailCustCharge+'#13#10'                  ' +
          't.MCSystemCharge+'#13#10'                  t.ICCrossSubsidyCharge+'#13#10'  ' +
          '                t.LifelineDiscSubs+'#13#10'                  t.SCDisc+' +
          #13#10'                  t.OtherLifelineRateCostAdj+'#13#10'               ' +
          '   t.OtherSeniorCitizenRateAdj)*(m.creditableTaxWithheld/100)) +' +
          '        '#13#10'                  CONVERT(  (if(t.occode1 = '#39'XRR'#39' or t' +
          '.OCCode1='#39'P.RENTAL'#39', '#13#10'                     (ifnull(t.OCAmount1,' +
          '0)-(ifnull(t.OCAmount1,0) * m.vat)) * (m.creditableTaxWithheld/1' +
          '00),'#13#10'                     0'#13#10#9#9#9#9#9')), decimal(12,2) ) +'#13#10'*/'
      end>
    object taxQTaxBase: TFloatField
      FieldName = 'TaxBase'
    end
    object taxQTaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object taxQAmount: TFloatField
      FieldName = 'Amount'
    end
    object taxQoccode: TStringField
      FieldName = 'occode'
      Size = 10
    end
    object taxQvat: TFloatField
      FieldName = 'vat'
    end
    object taxQCodepost: TStringField
      FieldName = 'Codepost'
      Size = 5
    end
    object taxQDescription: TStringField
      FieldName = 'Description'
      Size = 10
    end
  end
  object mrateQ: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      
        'SELECT * FROM zaneco.meterrate where mbillmonth = :billMonth and' +
        ' wratecode = :wratecode')
    Left = 16
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'billMonth'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'wratecode'
        Value = nil
      end>
    object mrateQEntry: TIntegerField
      FieldName = 'Entry'
    end
    object mrateQMBillMonth: TStringField
      FieldName = 'MBillMonth'
      Size = 4
    end
    object mrateQRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object mrateQWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object mrateQRemarks: TStringField
      FieldName = 'Remarks'
      Size = 40
    end
    object mrateQGenSysRate: TFloatField
      FieldName = 'GenSysRate'
    end
    object mrateQHostCommRate: TFloatField
      FieldName = 'HostCommRate'
    end
    object mrateQFOREXRate: TFloatField
      FieldName = 'FOREXRate'
    end
    object mrateQTCDemandRate: TFloatField
      FieldName = 'TCDemandRate'
    end
    object mrateQTCSystemRate: TFloatField
      FieldName = 'TCSystemRate'
    end
    object mrateQSystemLossRate: TFloatField
      FieldName = 'SystemLossRate'
    end
    object mrateQDCDemandRate: TFloatField
      FieldName = 'DCDemandRate'
    end
    object mrateQDCSystemRate: TFloatField
      FieldName = 'DCSystemRate'
    end
    object mrateQSCRetailCustRate: TFloatField
      FieldName = 'SCRetailCustRate'
    end
    object mrateQSCSupplySysRate: TFloatField
      FieldName = 'SCSupplySysRate'
    end
    object mrateQMCRetailCustRate: TFloatField
      FieldName = 'MCRetailCustRate'
    end
    object mrateQMCSysRate: TFloatField
      FieldName = 'MCSysRate'
    end
    object mrateQUCNPCStrandedDebtsRate: TFloatField
      FieldName = 'UCNPCStrandedDebtsRate'
    end
    object mrateQUCNPCStrandedContCostRate: TFloatField
      FieldName = 'UCNPCStrandedContCostRate'
    end
    object mrateQUCDUStrandedContCostRate: TFloatField
      FieldName = 'UCDUStrandedContCostRate'
    end
    object mrateQUCMERate: TFloatField
      FieldName = 'UCMERate'
    end
    object mrateQUCEqTaxesAndRoyaltiesRate: TFloatField
      FieldName = 'UCEqTaxesAndRoyaltiesRate'
    end
    object mrateQUCECRate: TFloatField
      FieldName = 'UCECRate'
    end
    object mrateQUCCrossSubsidyRemovalRate: TFloatField
      FieldName = 'UCCrossSubsidyRemovalRate'
    end
    object mrateQICCrossSubsidyRate: TFloatField
      FieldName = 'ICCrossSubsidyRate'
    end
    object mrateQPARARate: TFloatField
      FieldName = 'PARARate'
    end
    object mrateQLifelineSubsidyRate: TFloatField
      FieldName = 'LifelineSubsidyRate'
    end
    object mrateQLoanCondo: TFloatField
      FieldName = 'LoanCondo'
    end
    object mrateQGram: TFloatField
      FieldName = 'Gram'
    end
    object mrateQLCcustmo: TFloatField
      FieldName = 'LCcustmo'
    end
    object mrateQPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
    end
    object mrateQSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
    end
    object mrateQVAT: TFloatField
      FieldName = 'VAT'
    end
    object mrateQVATGenCo: TFloatField
      FieldName = 'VATGenCo'
    end
    object mrateQVATTransCo: TFloatField
      FieldName = 'VATTransCo'
    end
    object mrateQVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
    end
    object mrateQVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
    end
    object mrateQVATSystemLoss: TFloatField
      FieldName = 'VATSystemLoss'
    end
    object mrateQDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
    end
    object mrateQDIffBillPerKW: TFloatField
      FieldName = 'DIffBillPerKW'
    end
    object mrateQDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
    end
    object mrateQMCC: TFloatField
      FieldName = 'MCC'
    end
    object mrateQDiffBillMonth: TStringField
      FieldName = 'DiffBillMonth'
      Size = 4
    end
    object mrateQDiffBillApply: TStringField
      FieldName = 'DiffBillApply'
      Size = 1
    end
    object mrateQPantawidApply: TStringField
      FieldName = 'PantawidApply'
      Size = 1
    end
    object mrateQTransSysAncRefundTitle: TStringField
      FieldName = 'TransSysAncRefundTitle'
      Size = 30
    end
    object mrateQTransSysAncRefund: TFloatField
      FieldName = 'TransSysAncRefund'
    end
    object mrateQTransDemAncRefundTitle: TStringField
      FieldName = 'TransDemAncRefundTitle'
      Size = 30
    end
    object mrateQTransDemAncRefund: TFloatField
      FieldName = 'TransDemAncRefund'
    end
    object mrateQVATTransAncRefundTitle: TStringField
      FieldName = 'VATTransAncRefundTitle'
      Size = 30
    end
    object mrateQVATTransAncRefund: TFloatField
      FieldName = 'VATTransAncRefund'
    end
    object mrateQSCDiscApply: TStringField
      FieldName = 'SCDiscApply'
      Size = 1
    end
    object mrateQSCDiscKWHR: TLongWordField
      FieldName = 'SCDiscKWHR'
    end
    object mrateQSCDiscPercent: TFloatField
      FieldName = 'SCDiscPercent'
    end
    object mrateQSCDiscSubs: TFloatField
      FieldName = 'SCDiscSubs'
    end
    object mrateQPantawidRecovApply: TStringField
      FieldName = 'PantawidRecovApply'
      Size = 1
    end
    object mrateQWRSw: TStringField
      FieldName = 'WRSw'
      Size = 1
    end
    object mrateQRateOrderNo: TIntegerField
      FieldName = 'RateOrderNo'
    end
    object mrateQOtherGenRateAdj: TFloatField
      FieldName = 'OtherGenRateAdj'
    end
    object mrateQOtherTransCostAdj: TFloatField
      FieldName = 'OtherTransCostAdj'
    end
    object mrateQOtherTransDemandCostAdj: TFloatField
      FieldName = 'OtherTransDemandCostAdj'
    end
    object mrateQOtherSystemLossCostAdj: TFloatField
      FieldName = 'OtherSystemLossCostAdj'
    end
    object mrateQOtherLifelineRateCostAdj: TFloatField
      FieldName = 'OtherLifelineRateCostAdj'
    end
    object mrateQOtherSeniorCitizenRateAdj: TFloatField
      FieldName = 'OtherSeniorCitizenRateAdj'
    end
    object mrateQFitallrate: TFloatField
      FieldName = 'Fitallrate'
    end
    object mrateQPARec: TFloatField
      FieldName = 'PARec'
    end
    object mrateQCreditableTaxWithheld: TFloatField
      FieldName = 'CreditableTaxWithheld'
    end
    object mrateQfinalVat: TFloatField
      FieldName = 'finalVat'
    end
    object mrateQrentalTaxWithheld: TFloatField
      FieldName = 'rentalTaxWithheld'
    end
  end
  object cancelWheldTax: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'update collectiontaxwheld set  '
      '   FinalTaxWithheld = 0      '
      'where accountcode = :code and billmonth=:billmonth')
    Left = 160
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'billmonth'
        Value = nil
      end>
  end
  object ComputeVat: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      '&Final'
      '&Creditable')
    Left = 80
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'taxbase'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TaxRate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rentalTaxRate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rentalTaxRate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'OCamount3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vat'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rentalTaxRate'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'Final'
        Value = 
          'Select'#13#10'           convert( :taxbase *(-:TaxRate/100),decimal(12' +
          ',2)) as amount,   '#13#10'           convert(- (:OCamount1 - :OCamount' +
          '1/(1+:vat/100)*(:vat/100) )*( :TaxRate/100),'#13#10'                  ' +
          '     decimal(12,2)) as OC1,   '#13#10'           convert(-(:OCamount2 ' +
          '- :OCamount2/(1+:vat/100)*(:vat/100) )*( :TaxRate/100),'#13#10'       ' +
          '                decimal(12,2)) as OC2,  '#13#10'           convert(-(:' +
          'OCamount3 - :OCamount3/(1+:vat/100)*(:vat/100) )*( :TaxRate/100)' +
          ','#13#10'                       decimal(12,2)) as OC3'#13#10'           '#13#10#13#10
        Active = False
      end
      item
        Name = 'Creditable'
        Value = 
          'Select'#13#10'           convert( :taxbase *(-:TaxRate/100),decimal(12' +
          ',2)) as amount,     '#13#10'           convert(- (:OCamount1 - :OCamou' +
          'nt1/(1+:vat/100)*(:vat/100) )*( :rentalTaxRate/100),'#13#10'          ' +
          '               decimal(12,2)) as OC1,'#13#10'          convert( - (:OC' +
          'amount2 - :OCamount2/(1+:vat/100)*(:vat/100) )*( :rentalTaxRate/' +
          '100),'#13#10'                         decimal(12,2)) as OC2,'#13#10'        ' +
          ' convert( - (:OCamount3 - :OCamount3/(1+:vat/100)*(:vat/100) )*(' +
          ' :rentalTaxRate/100),'#13#10'                         decimal(12,2)) a' +
          's OC3'#13#10#13#10#13#10'/*'#13#10'  :OCCode1 as Description,'#13#10'           convert( (' +
          ':OCamount1 - :OCamount1/(1+:vat/100)*(:vat/100) ),'#13#10'            ' +
          '              decimal(12,2)) as taxbase,'#13#10'           convert( :T' +
          'axRate,decimal(12,2)) as taxrate,'#13#10'           convert( (:OCamoun' +
          't1 - :OCamount1/(1+:vat/100)*(:vat/100) )*( :TaxRate/100),'#13#10'    ' +
          '                   decimal(12,2)) as amount,     '#13#10'*/'#13#10
      end>
    object ComputeVatamount: TFloatField
      FieldName = 'amount'
    end
    object ComputeVatOC1: TFloatField
      FieldName = 'OC1'
    end
    object ComputeVatOC2: TFloatField
      FieldName = 'OC2'
    end
    object ComputeVatOC3: TFloatField
      FieldName = 'OC3'
    end
  end
  object updateTaxWheld: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'update collectiontaxwheld set  '
      '   TellerORNumber = :TellerORNumber,'
      '   CollectorCode =  :CollectorCode,   '
      '   DatePaid = :DatePaid'
      'where accountcode = :code and '
      '      billmonth=:billmonth and     '
      '      ifnull(FinalTaxWithheld,0) <> 0 or'
      '      accountcode = :code and '
      '      billmonth=:billmonth and     '
      '      ifnull(CreditableTaxWithheld,0) <> 0')
    Left = 104
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TellerORNumber'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CollectorCode'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DatePaid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'billmonth'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'code'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'billmonth'
        Value = nil
      end>
  end
  object taxWithheldRec: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'Select * from'
      'taxwitheld'
      '  ')
    Left = 376
    Top = 8
    object taxWithheldRecidtaxwitheld: TIntegerField
      FieldName = 'idtaxwitheld'
    end
    object taxWithheldRecaccountcode: TFloatField
      FieldName = 'accountcode'
    end
    object taxWithheldRectinFinal: TStringField
      FieldName = 'tinFinal'
      Size = 15
    end
    object taxWithheldRectinWithheld: TStringField
      FieldName = 'tinWithheld'
      Size = 15
    end
    object taxWithheldRecagent: TStringField
      FieldName = 'agent'
      Size = 50
    end
  end
  object updateRec: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'update taxwitheld'
      '  set'
      '  &tinfinal'
      '  &tinwithheld  '
      '  agent = :agent)'
      'where accountcode = :accountcode')
    Left = 408
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tin'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'agent'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'accountcode'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'tinfinal'
        Value = 'tinFinal = :tin, '#13#10' '
      end
      item
        Name = 'tinwithheld'
        Value = ' tinWithheld = :tinWithheld,'#13#10
        Active = False
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 264
    object EditVatComputation1: TMenuItem
      Caption = 'Edit Vat Computation'
      OnClick = EditVatComputation1Click
    end
    object CancelVatEdit1: TMenuItem
      Caption = 'Cancel Vat Edit'
      OnClick = CancelVatEdit1Click
    end
  end
end
