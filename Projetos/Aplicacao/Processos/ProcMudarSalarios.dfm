object FrmMudarSalarios: TFrmMudarSalarios
  Left = 0
  Top = 0
  Caption = 'Mudan'#231'a de Sal'#225'rio(s)'
  ClientHeight = 223
  ClientWidth = 366
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
  object LblFuncionarios: TLabel
    Left = 8
    Top = 77
    Width = 60
    Height = 13
    Caption = 'Funcionarios'
  end
  object LblCargos: TLabel
    Left = 8
    Top = 14
    Width = 34
    Height = 13
    Caption = 'Cargos'
  end
  object LblPercentual: TLabel
    Left = 8
    Top = 132
    Width = 51
    Height = 13
    Caption = 'Percentual'
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
    OnClick = LcbCargosClick
  end
  object LcbFuncionarios: TDBLookupComboBox
    Left = 8
    Top = 96
    Width = 297
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = DtsFuncionarios
    NullValueKey = 16462
    TabOrder = 1
    OnClick = LcbFuncionariosClick
  end
  object BtnConfirmar: TButton
    Left = 8
    Top = 178
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TButton
    Left = 89
    Top = 178
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BtnCancelarClick
  end
  object EdtPercentual: TEdit
    Left = 8
    Top = 151
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object BtnDesfazer: TButton
    Left = 170
    Top = 178
    Width = 75
    Height = 25
    Caption = 'Desfazer'
    TabOrder = 5
    OnClick = BtnDesfazerClick
  end
  object DtsFuncionarios: TDataSource
    DataSet = QryFuncionarios
    Left = 248
    Top = 72
  end
  object DtsCargos: TDataSource
    DataSet = QryCargos
    Left = 248
    Top = 16
  end
  object QryFuncionarios: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT CODIGO, NOME FROM FUNCIONARIOS'
      'WHERE ATIVO = 1')
    Left = 160
    Top = 72
    object QryFuncionariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFuncionariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object QryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM CARGOS')
    Left = 160
    Top = 16
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
  object QryFuncionariosSelecionados: TFDQuery
    Connection = DM.Connection
    Left = 208
    Top = 136
  end
  object QryAux: TFDQuery
    Connection = DM.Connection
    Left = 312
    Top = 136
  end
end
