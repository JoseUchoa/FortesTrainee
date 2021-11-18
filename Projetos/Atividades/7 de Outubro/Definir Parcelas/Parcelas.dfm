object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Define Parcelas'
  ClientHeight = 231
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StaticText2: TStaticText
    Left = 8
    Top = 62
    Width = 48
    Height = 17
    Alignment = taCenter
    Caption = 'Parcelas:'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 31
    Width = 121
    Height = 25
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 220
    Top = 31
    Width = 185
    Height = 192
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 8
    Top = 85
    Width = 121
    Height = 25
    TabOrder = 3
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 48
    Height = 17
    Alignment = taCenter
    Caption = 'Valor: R$'
    TabOrder = 4
  end
  object StaticText3: TStaticText
    Left = 220
    Top = 8
    Width = 84
    Height = 17
    Alignment = taCenter
    Caption = 'Parcelas a Pagar'
    TabOrder = 5
  end
  object Button1: TButton
    Left = 8
    Top = 132
    Width = 100
    Height = 25
    Caption = 'Definir Parcelas'
    TabOrder = 6
    OnClick = Button1Click
  end
end
