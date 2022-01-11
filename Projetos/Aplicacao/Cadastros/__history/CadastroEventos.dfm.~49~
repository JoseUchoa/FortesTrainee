object FrmCadEventos: TFrmCadEventos
  Left = 0
  Top = 0
  Caption = 'Eventos'
  ClientHeight = 276
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    305
    276)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 8
    Top = 8
    Width = 289
    Height = 261
    ActivePage = TsRegistro
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChange = PageControlChange
    object TsLista: TTabSheet
      Caption = 'Lista'
      DesignSize = (
        281
        233)
      object DBGrid1: TDBGrid
        Left = 3
        Top = 0
        Width = 275
        Height = 194
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object BtnAdicionar: TButton
        Left = 16
        Top = 200
        Width = 75
        Height = 25
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = BtnAdicionarClick
      end
      object BtnEditar: TButton
        Left = 97
        Top = 200
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
        OnClick = BtnEditarClick
      end
      object BtnRemover: TButton
        Left = 178
        Top = 200
        Width = 75
        Height = 25
        Caption = 'Remover'
        TabOrder = 3
        OnClick = BtnRemoverClick
      end
    end
    object TsRegistro: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object LblCodigo: TLabel
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object LblTipo: TLabel
        Left = 16
        Top = 119
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = EdtDesc
      end
      object TxtCodigo: TDBText
        Left = 16
        Top = 35
        Width = 65
        Height = 17
        DataField = 'CODIGO'
        DataSource = DataSource
      end
      object LblDesc: TLabel
        Left = 16
        Top = 66
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = EdtDesc
      end
      object EdtDesc: TDBEdit
        Left = 16
        Top = 85
        Width = 185
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DataSource
        TabOrder = 0
      end
      object BtnConfirmar: TButton
        Left = 16
        Top = 197
        Width = 75
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 1
        OnClick = BtnConfirmarClick
      end
      object BtnCancelar: TButton
        Left = 126
        Top = 197
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = BtnCancelarClick
      end
      object RgTipo: TDBRadioGroup
        Left = 16
        Top = 138
        Width = 185
        Height = 38
        Columns = 2
        DataField = 'TIPO'
        DataSource = DataSource
        Items.Strings = (
          'Acrescimo'
          'Desconto')
        TabOrder = 3
        Values.Strings = (
          '1'
          '0')
      end
    end
  end
  object QueryEventos: TFDQuery
    OnCalcFields = QueryEventosCalcFields
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT *  FROM EVENTOS'
      '')
    Left = 232
    Top = 40
    object QueryEventosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryEventosTipoDesc: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'TipoDesc'
      Size = 15
      Calculated = True
    end
    object QueryEventosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object QueryEventosTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Visible = False
    end
  end
  object DataSource: TDataSource
    DataSet = QueryEventos
    Left = 232
    Top = 104
  end
end
