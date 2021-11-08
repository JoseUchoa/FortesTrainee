object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Editar'
  ClientHeight = 160
  ClientWidth = 164
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 24
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Nome'
  end
  object Edit2: TEdit
    Left = 24
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'CPF'
  end
  object Edit3: TEdit
    Left = 24
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Telefone'
  end
  object Button1: TButton
    Left = 24
    Top = 89
    Width = 121
    Height = 25
    Caption = 'Concluir'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 120
    Width = 121
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = Button2Click
  end
end
