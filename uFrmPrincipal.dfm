object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente'
  ClientHeight = 382
  ClientWidth = 665
  Color = clInactiveCaption
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Microsoft New Tai Lue'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 34
    Top = 108
    Width = 115
    Height = 21
    Caption = 'Nome Completo'
  end
  object Label2: TLabel
    Left = 408
    Top = 109
    Width = 122
    Height = 21
    Caption = 'Data Nascimento:'
  end
  object Label3: TLabel
    Left = 461
    Top = 171
    Width = 51
    Height = 21
    Caption = 'Sal'#225'rio:'
  end
  object Label4: TLabel
    Left = 34
    Top = 172
    Width = 30
    Height = 21
    Caption = 'CPF:'
  end
  object Label5: TLabel
    Left = 34
    Top = 236
    Width = 86
    Height = 21
    Caption = 'Horas Extras'
  end
  object Label6: TLabel
    Left = 223
    Top = 236
    Width = 42
    Height = 21
    Caption = 'Cargo'
  end
  object Label7: TLabel
    Left = 480
    Top = 232
    Width = 86
    Height = 21
    Caption = 'Sal'#225'rio Total'
  end
  object Label8: TLabel
    Left = 440
    Top = 193
    Width = 19
    Height = 21
    Caption = 'R$'
  end
  object Label9: TLabel
    Left = 459
    Top = 259
    Width = 28
    Height = 24
    Caption = 'R$'
  end
  object BtnAcao: TButton
    Left = 34
    Top = 313
    Width = 612
    Height = 61
    Caption = 'Cadastrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Microsoft New Tai Lue'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BtnAcaoClick
  end
  object EdtNome: TEdit
    Left = 34
    Top = 128
    Width = 351
    Height = 29
    TabOrder = 1
  end
  object EdtDataNasc: TEdit
    Left = 408
    Top = 128
    Width = 238
    Height = 29
    TabOrder = 2
  end
  object EdtSal: TEdit
    Left = 461
    Top = 190
    Width = 185
    Height = 29
    TabOrder = 3
  end
  object EdtCpf: TEdit
    Left = 34
    Top = 190
    Width = 351
    Height = 29
    TabOrder = 4
  end
  object EdtHoras: TEdit
    Left = 34
    Top = 255
    Width = 159
    Height = 29
    TabOrder = 5
  end
  object CBoxCargo: TComboBox
    Left = 223
    Top = 255
    Width = 162
    Height = 29
    TabOrder = 6
    Text = 'Escolher...'
    OnChange = CBoxCargoChange
    Items.Strings = (
      'Gestor'
      'Vendedor')
  end
  object EdtTotal: TEdit
    Left = 480
    Top = 253
    Width = 166
    Height = 29
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 0
    Top = -4
    Width = 673
    Height = 69
    Caption = 'CADASTRO DE CLIENTES'
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Microsoft New Tai Lue'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 8
  end
end
