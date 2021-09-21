object DepositSlipForm: TDepositSlipForm
  Left = 463
  Top = 101
  BorderStyle = bsSizeToolWin
  Caption = 'Deposit Slip'
  ClientHeight = 378
  ClientWidth = 602
  Color = 15395562
  Constraints.MaxHeight = 417
  Constraints.MaxWidth = 618
  Constraints.MinHeight = 417
  Constraints.MinWidth = 618
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 10
    Top = 14
    Width = 70
    Height = 13
    Caption = 'Date Selection'
  end
  object CRDBGrid1: TCRDBGrid1
    Left = 144
    Top = 8
    Width = 449
    Height = 361
    OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeSummary]
    Ctl3D = False
    DataSource = dsDeposit
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 16579836
        Expanded = False
        FieldName = 'depositdate'
        Title.Caption = 'Dep. Date'
        Width = 57
        Visible = True
      end
      item
        Color = 16579836
        Expanded = False
        FieldName = 'CDCRDate'
        Title.Caption = 'DCPR Date'
        Width = 61
        Visible = True
      end
      item
        Color = 16579836
        Expanded = False
        FieldName = 'AccountCode'
        Title.Alignment = taCenter
        Title.Caption = 'Account Code'
        Width = 71
        Visible = True
      end
      item
        Color = 16579836
        Expanded = False
        FieldName = 'AccountDescription'
        Title.Alignment = taCenter
        Title.Caption = 'Account Description'
        Width = 103
        Visible = True
      end
      item
        Color = 16579836
        Expanded = False
        FieldName = 'Amount'
        Title.Alignment = taRightJustify
        Width = 113
        Visible = True
        SummaryMode = smSum
        FloatFormat = ffCurrency
        FloatPrecision = 12
        FloatDigits = 2
      end>
  end
  object NxButton1: TNxButton
    Left = 8
    Top = 200
    Width = 129
    Caption = 'New'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 8
    Top = 223
    Width = 129
    Height = 25
    Caption = 'Edit '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = NxButton2Click
  end
  object NxButton3: TNxButton
    Left = 8
    Top = 248
    Width = 129
    Caption = 'Delete'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = NxButton3Click
  end
  object NxButton4: TNxButton
    Left = 8
    Top = 350
    Width = 129
    Caption = 'Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = NxButton4Click
  end
  object DateFrom: TNxDatePicker
    Left = 9
    Top = 32
    Width = 127
    Height = 21
    Color = 16759739
    TabOrder = 6
    Text = '8/16/2010'
    HideFocus = False
    Date = 40406.000000000000000000
    NoneCaption = 'None'
    TodayCaption = 'Today'
  end
  object DateTo: TNxDatePicker
    Left = 9
    Top = 57
    Width = 127
    Height = 21
    Color = 16759739
    TabOrder = 7
    Text = '8/16/2010'
    HideFocus = False
    Date = 40406.000000000000000000
    NoneCaption = 'None'
    TodayCaption = 'Today'
  end
  object NxButton8: TNxButton
    Left = 8
    Top = 144
    Width = 129
    Caption = 'Select'
    Color = 15395562
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 8
    OnClick = NxButton8Click
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 81
    Width = 127
    Height = 57
    Caption = 'Search Option'
    ItemIndex = 0
    Items.Strings = (
      'Deposit Date'
      'DCPR Date')
    TabOrder = 9
    OnClick = RadioGroup1Click
  end
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 180
    Top = 57
    Width = 354
    Height = 280
    Caption = 'Deposit Slip Panel'
    Color = 16759739
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = [fsBold]
    ParentFont = False
    ParentHeaderFont = False
    TabOrder = 5
    Visible = False
    DesignSize = (
      352
      278)
    FullWidth = 354
    object Label1: TLabel
      Left = 98
      Top = 47
      Width = 23
      Height = 13
      Caption = 'Date'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 68
      Top = 70
      Width = 53
      Height = 13
      Caption = 'Description'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 25
      Top = 118
      Width = 96
      Height = 13
      Caption = 'Account Description'
      FocusControl = DBEdit4
    end
    object Label12: TLabel
      Left = 85
      Top = 142
      Width = 36
      Height = 13
      Caption = 'Amount'
      FocusControl = DBEdit12
    end
    object Label3: TLabel
      Left = 64
      Top = 167
      Width = 56
      Height = 13
      Caption = 'DCPR Date'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 127
      Top = 43
      Width = 200
      Height = 21
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'depositdate'
      DataSource = dsDeposit
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 127
      Top = 67
      Width = 200
      Height = 21
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'Description'
      DataSource = dsDeposit
      TabOrder = 1
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 127
      Top = 91
      Width = 200
      Height = 21
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'AccountCode'
      DataSource = dsDeposit
      TabOrder = 2
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 127
      Top = 115
      Width = 200
      Height = 21
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'AccountDescription'
      DataSource = dsDeposit
      TabOrder = 3
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit12: TDBEdit
      Left = 127
      Top = 139
      Width = 200
      Height = 21
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'Amount'
      DataSource = dsDeposit
      TabOrder = 4
      OnKeyPress = DBEdit12KeyPress
    end
    object NxLinkLabel1: TNxLinkLabel
      Left = 262
      Top = 6
      Width = 29
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HoverColor = clNavy
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel1Click
    end
    object NxLinkLabel2: TNxLinkLabel
      Left = 298
      Top = 6
      Width = 38
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HoverColor = clNavy
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel2Click
    end
    object NxLinkLabel3: TNxLinkLabel
      Left = 52
      Top = 94
      Width = 69
      Height = 15
      Caption = 'Account Code'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel3Click
    end
    object DBEdit5: TDBEdit
      Left = 127
      Top = 163
      Width = 200
      Height = 21
      BevelKind = bkTile
      BorderStyle = bsNone
      DataField = 'CDCRDate'
      DataSource = dsDeposit
      TabOrder = 5
      OnKeyPress = DBEdit1KeyPress
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 48
      Top = 197
      Width = 257
      Height = 63
      Caption = 'Deposit Classification'
      Columns = 2
      DataField = 'BankRemit'
      DataSource = dsDeposit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Collection Deposit'
        'Bank Remittance'
        'Returned Checks'
        'Partial Deposit')
      ParentFont = False
      TabOrder = 9
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
    end
  end
  object NxButton5: TNxButton
    Left = 8
    Top = 323
    Width = 129
    Caption = 'Export Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = NxButton5Click
  end
  object Deposit: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from deposit'
      '&depositdate'
      '&dcprdate'
      'order by depositdate')
    OnCalcFields = DepositCalcFields
    Left = 16
    Top = 288
    MacroData = <
      item
        Name = 'depositdate'
        Value = 'where depositdate between :datefrom and :dateto'#13#10
        Active = False
      end
      item
        Name = 'dcprdate'
        Value = 'where cdcrdate between :datefrom and :dateto'
        Active = False
      end>
    object DepositCDCRDate: TDateField
      FieldName = 'CDCRDate'
      EditMask = '!99/99/0000;1;_'
    end
    object Depositdepositdate: TDateField
      FieldName = 'depositdate'
      EditMask = '!99/99/0000;1;_'
    end
    object DepositDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object DepositAccountCode: TStringField
      FieldName = 'AccountCode'
      Size = 15
    end
    object DepositAccountDescription: TStringField
      FieldName = 'AccountDescription'
      Size = 50
    end
    object Depositcoins: TFloatField
      FieldName = 'coins'
    end
    object DepositAmount: TFloatField
      FieldName = 'Amount'
      currency = True
    end
    object DepositAmt1000: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Amt1000'
      Calculated = True
    end
    object DepositAmt500: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Amt500'
      Calculated = True
    end
    object DepositAmt200: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Amt200'
      Calculated = True
    end
    object DepositAmt100: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Amt100'
      Calculated = True
    end
    object DepositAmt50: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Amt50'
      Calculated = True
    end
    object DepositAmt20: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Amt20'
      Calculated = True
    end
    object DepositBankRemit: TStringField
      FieldName = 'BankRemit'
      Size = 1
    end
    object Depositiddeposit: TLongWordField
      FieldName = 'iddeposit'
    end
    object DepositD1000: TLongWordField
      FieldName = 'D1000'
    end
    object DepositD500: TLongWordField
      FieldName = 'D500'
    end
    object DepositD200: TLongWordField
      FieldName = 'D200'
    end
    object DepositD100: TLongWordField
      FieldName = 'D100'
    end
    object DepositD50: TLongWordField
      FieldName = 'D50'
    end
    object DepositD20: TLongWordField
      FieldName = 'D20'
    end
    object DepositCollectorCode: TStringField
      FieldName = 'CollectorCode'
      Size = 10
    end
  end
  object dsDeposit: TMyDataSource
    DataSet = Deposit
    Left = 8
    Top = 320
  end
  object Deposit2: TMyQuery
    Connection = BillingData.MyConnection1
    SQL.Strings = (
      'select * from deposit'
      '&depositdate'
      '&dcprdate'
      'order by depositdate'
      '/*union'
      '(select '
      '  iddeposit,'
      '   CDCRDate,'
      '   depositdate,'
      '  Description,'
      '  '#39#39' as AccountCode,'
      '  '#39'Total '#39' as AccountDescription,'
      '  D1000,'
      '  D500,'
      '  D200,'
      '  D100,'
      '  D50,'
      '  D20,'
      '  coins,'
      '  sum(ifnull(Amount,0)) as Amount,'
      '  BankRemit,'
      '  '#39#39' as CollectorCode'
      ''
      ' from deposit'
      '&depositdate'
      '&dcprdate'
      ')*/')
    OnCalcFields = DepositCalcFields
    Left = 88
    Top = 280
    MacroData = <
      item
        Name = 'depositdate'
        Value = 'where depositdate between :datefrom and :dateto'#13#10
        Active = False
      end
      item
        Name = 'dcprdate'
        Value = 'where cdcrdate between :datefrom and :dateto'
        Active = False
      end>
    object StringField5: TStringField
      FieldName = 'CollectorCode'
      Size = 10
    end
    object DateField2: TDateField
      FieldName = 'depositdate'
    end
    object DateField1: TDateField
      FieldName = 'CDCRDate'
    end
    object StringField2: TStringField
      FieldName = 'AccountCode'
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'AccountDescription'
      Size = 50
    end
    object FloatField2: TFloatField
      FieldName = 'Amount'
      currency = True
    end
  end
  object QExport4XLS1: TQExport4XLS
    DataSet = Deposit2
    About = '(About EMS QuickExport)'
    _Version = '3.00'
    ShowFile = True
    Formats.DecimalSeparator = '.'
    Formats.ThousandSeparator = ','
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'M/d/yyyy'
    Formats.TimeFormat = 'h:mm AMPM'
    Formats.DateTimeFormat = 'M/d/yyyy h:mm:ss AMPM'
    Formats.CurrencyFormat = '$#,###,##0.00'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.HeaderFormat.Fill.Background = clrGray25Percent
    Options.HeaderFormat.Fill.Pattern = ptSolid
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.FooterFormat.Fill.Background = clrGray25Percent
    Options.FooterFormat.Fill.Pattern = ptSolid
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    Aggregates = <>
    MergedCells = <>
    DefRowHeight = 12.750000000000000000
    Left = 44
    Top = 288
  end
end
