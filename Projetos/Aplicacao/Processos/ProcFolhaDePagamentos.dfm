object FrmFolhaDePagamentos: TFrmFolhaDePagamentos
  Left = 0
  Top = 0
  Caption = 'Folha de Pagamentos'
  ClientHeight = 306
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    375
    306)
  PixelsPerInch = 96
  TextHeight = 13
  object LblMesAno: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 13
    Caption = 'M'#234's / Ano'
  end
  object EdtMesAno: TMaskEdit
    Left = 8
    Top = 27
    Width = 97
    Height = 21
    EditMask = '!99/0000;1;_'
    MaxLength = 7
    TabOrder = 0
    Text = '  /    '
  end
  object BtnProcessar: TButton
    Left = 111
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 1
    OnClick = BtnProcessarClick
  end
  object MemoLog: TMemo
    Left = 8
    Top = 56
    Width = 359
    Height = 242
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object QryFolha: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM FOLHAS WHERE MES_ANO = :MES_ANO')
    Left = 216
    Top = 24
    ParamData = <
      item
        Name = 'MES_ANO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object QryFolhaMES_ANO: TStringField
      FieldName = 'MES_ANO'
      Origin = 'MES_ANO'
      Required = True
      Size = 10
    end
    object QryFolhaCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COD_FUNCIONARIO'
      Required = True
    end
    object QryFolhaDESCONTO_INSS: TFloatField
      FieldName = 'DESCONTO_INSS'
      Origin = 'DESCONTO_INSS'
      Required = True
    end
    object QryFolhaDESCONTO_IRRF: TFloatField
      FieldName = 'DESCONTO_IRRF'
      Origin = 'DESCONTO_IRRF'
      Required = True
    end
    object QryFolhaSALDO_EVENTOS: TFloatField
      FieldName = 'SALDO_EVENTOS'
      Origin = 'SALDO_EVENTOS'
      Required = True
    end
    object QryFolhaSALARIO_BRUTO: TFloatField
      FieldName = 'SALARIO_BRUTO'
      Origin = 'SALARIO_BRUTO'
      Required = True
    end
    object QryFolhaSALARIO_LIQUIDO: TFloatField
      FieldName = 'SALARIO_LIQUIDO'
      Origin = 'SALARIO_LIQUIDO'
      Required = True
    end
  end
  object QryFuncionarios: TFDQuery
    Connection = DM.Connection
    Left = 288
    Top = 24
  end
end
