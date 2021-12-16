object FrmRelFuncionariosCFG: TFrmRelFuncionariosCFG
  Left = 0
  Top = 0
  Caption = 'Funcionarios'
  ClientHeight = 121
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object LblCargos: TLabel
    Left = 8
    Top = 14
    Width = 34
    Height = 13
    Caption = 'Cargos'
  end
  object LcbCargos: TDBLookupComboBox
    Left = 8
    Top = 33
    Width = 297
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = DtsCargos
    NullValueKey = 16462
    TabOrder = 0
  end
  object BtnVisualizar: TButton
    Left = 8
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 1
    OnClick = BtnVisualizarClick
  end
  object BtnCancelar: TButton
    Left = 89
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BtnCancelarClick
  end
  object QryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM CARGOS')
    Left = 312
    Top = 24
    object QryCargosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCargosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object DtsCargos: TDataSource
    DataSet = QryCargos
    Left = 368
    Top = 24
  end
end
