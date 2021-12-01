object FrmCadCargos: TFrmCadCargos
  Left = 0
  Top = 0
  Caption = 'Cargos'
  ClientHeight = 230
  ClientWidth = 345
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
    345
    230)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 8
    Top = 8
    Width = 328
    Height = 214
    ActivePage = TsLista
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChange = PageControlChange
    ExplicitWidth = 337
    ExplicitHeight = 215
    object TsLista: TTabSheet
      Caption = 'Lista'
      DesignSize = (
        320
        186)
      object DBGrid1: TDBGrid
        Left = 0
        Top = 3
        Width = 215
        Height = 174
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
        Left = 233
        Top = 30
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = BtnAdicionarClick
        ExplicitLeft = 251
        ExplicitTop = 24
      end
      object BtnEditar: TButton
        Left = 233
        Top = 78
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Editar'
        TabOrder = 2
        OnClick = BtnEditarClick
        ExplicitLeft = 251
        ExplicitTop = 72
      end
      object BtnRemover: TButton
        Left = 233
        Top = 126
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Remover'
        TabOrder = 3
        OnClick = BtnRemoverClick
        ExplicitLeft = 251
        ExplicitTop = 120
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
      object LblNome: TLabel
        Left = 16
        Top = 62
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = EdtNome
      end
      object TxtCodigo: TDBText
        Left = 16
        Top = 35
        Width = 65
        Height = 17
        DataField = 'CODIGO'
        DataSource = DataSource
      end
      object EdtNome: TDBEdit
        Left = 16
        Top = 81
        Width = 171
        Height = 21
        DataField = 'NOME'
        DataSource = DataSource
        TabOrder = 0
      end
      object BtnConfirmar: TButton
        Left = 16
        Top = 144
        Width = 75
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 1
        OnClick = BtnConfirmarClick
      end
      object BtnCancelar: TButton
        Left = 112
        Top = 144
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = BtnCancelarClick
      end
    end
  end
  object QueryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM CARGOS'
      'ORDER BY NOME ASC')
    Left = 304
    Top = 8
    object QueryCargosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryCargosNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 20
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object DataSource: TDataSource
    DataSet = QueryCargos
    Left = 224
    Top = 8
  end
end
