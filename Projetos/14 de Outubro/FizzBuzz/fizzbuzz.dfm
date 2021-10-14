object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 64
    Width = 218
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 112
    Width = 218
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 248
    Top = 8
    Width = 249
    Height = 215
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 41
    Width = 81
    Height = 17
    Caption = 'Digite um inteiro'
    TabOrder = 3
  end
end
