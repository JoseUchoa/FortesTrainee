object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 291
  ClientWidth = 527
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
    Left = 415
    Top = 68
    Width = 105
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 415
    Top = 184
    Width = 105
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 415
    Top = 126
    Width = 105
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object StaticText1: TStaticText
    Left = 414
    Top = 41
    Width = 87
    Height = 17
    Caption = 'Nome do Produto'
    TabOrder = 3
  end
  object StaticText2: TStaticText
    Left = 414
    Top = 103
    Width = 60
    Height = 17
    Caption = 'Quantidade'
    TabOrder = 4
  end
  object StaticText3: TStaticText
    Left = 414
    Top = 161
    Width = 68
    Height = 17
    Caption = 'Valor Unit'#225'rio'
    TabOrder = 5
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 41
    Width = 400
    Height = 226
    ColCount = 4
    DefaultColWidth = 100
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    GridLineWidth = 2
    TabOrder = 6
  end
  object Button1: TButton
    Left = 414
    Top = 211
    Width = 106
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 7
    OnClick = Button1Click
  end
  object StaticText4: TStaticText
    Left = 8
    Top = 18
    Width = 101
    Height = 17
    Caption = 'Total de Vendas: R$'
    TabOrder = 8
  end
  object StaticText5: TStaticText
    Left = 115
    Top = 18
    Width = 26
    Height = 17
    Caption = '0,00'
    TabOrder = 9
  end
  object Button2: TButton
    Left = 414
    Top = 242
    Width = 105
    Height = 25
    Caption = 'Remover (Nome)'
    TabOrder = 10
    OnClick = Button2Click
  end
end
