object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 329
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Limpa: TButton
    Left = 287
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Limpa'
    TabOrder = 0
    OnClick = LimpaClick
  end
  object RadioGroup1: TRadioGroup
    Left = 287
    Top = 8
    Width = 113
    Height = 105
    Caption = 'Conta'
    ItemIndex = 0
    Items.Strings = (
      'Conta'
      'Conta Corrente'
      'Conta Poupanca')
    TabOrder = 1
  end
  object Memo: TMemo
    Left = 8
    Top = 8
    Width = 273
    Height = 305
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 287
    Top = 165
    Width = 199
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Saque: TButton
    Left = 287
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Saque'
    TabOrder = 4
    OnClick = SaqueClick
  end
  object Deposito: TButton
    Left = 411
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Deposito'
    TabOrder = 5
    OnClick = DepositoClick
  end
  object Consulta: TButton
    Left = 411
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Consulta'
    TabOrder = 6
    OnClick = ConsultaClick
  end
end
