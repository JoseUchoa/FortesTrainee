object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 517
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
  object Button1: TButton
    Left = 424
    Top = 198
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 0
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 400
    Height = 215
    ColCount = 2
    DefaultColWidth = 100
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
  end
  object Button2: TButton
    Left = 424
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 424
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 424
    Top = 140
    Width = 71
    Height = 21
    TabOrder = 4
    TextHint = 'ID'
  end
end
