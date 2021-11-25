object FrmCadCargos: TFrmCadCargos
  Left = 0
  Top = 0
  Caption = 'Cargos'
  ClientHeight = 231
  ClientWidth = 354
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
  object PageControl: TPageControl
    Left = 8
    Top = 8
    Width = 337
    Height = 215
    ActivePage = Lista
    TabOrder = 0
    OnChange = PageControlChange
    object Lista: TTabSheet
      Caption = 'Lista'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 3
        Width = 231
        Height = 166
        DataSource = DataSource
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Adicionar: TButton
        Left = 251
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = AdicionarClick
      end
      object Editar: TButton
        Left = 251
        Top = 72
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
        OnClick = EditarClick
      end
      object Remover: TButton
        Left = 251
        Top = 120
        Width = 75
        Height = 25
        Caption = 'Remover'
        TabOrder = 3
        OnClick = RemoverClick
      end
    end
    object Registro: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 41
        Height = 13
        Caption = 'CODIGO'
      end
      object Label2: TLabel
        Left = 16
        Top = 62
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = DBEdit2
      end
      object DBText1: TDBText
        Left = 16
        Top = 35
        Width = 65
        Height = 17
        DataField = 'CODIGO'
        DataSource = DataSource
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 81
        Width = 171
        Height = 21
        DataField = 'NOME'
        DataSource = DataSource
        TabOrder = 0
      end
      object Confirmar: TButton
        Left = 16
        Top = 144
        Width = 75
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 1
        OnClick = ConfirmarClick
      end
      object Cancelar: TButton
        Left = 112
        Top = 144
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = CancelarClick
      end
    end
  end
  object QueryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM CARGOS')
    Left = 304
    Top = 8
    object QueryCargosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryCargosNOME: TStringField
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
