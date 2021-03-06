object FrmCadFuncionarios: TFrmCadFuncionarios
  Left = 0
  Top = 0
  Caption = 'Funcionarios'
  ClientHeight = 435
  ClientWidth = 662
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
    662
    435)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 8
    Top = 8
    Width = 646
    Height = 419
    ActivePage = TsRegistro
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChange = PageControlChange
    object TsLista: TTabSheet
      Caption = 'Lista'
      DesignSize = (
        638
        391)
      object DBGrid1: TDBGrid
        Left = 6
        Top = 0
        Width = 629
        Height = 357
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DtsFuncionarios
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Adicionar: TButton
        Left = 6
        Top = 363
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = AdicionarClick
      end
      object BtnEditar: TButton
        Left = 87
        Top = 363
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Editar'
        TabOrder = 2
        OnClick = BtnEditarClick
      end
      object BtnRemover: TButton
        Left = 168
        Top = 363
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Remover'
        TabOrder = 3
        OnClick = BtnRemoverClick
      end
    end
    object TsRegistro: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object LblCodigo: TLabel
        Left = 3
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object LblNome: TLabel
        Left = 3
        Top = 50
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = EdtNome
      end
      object LblNasc: TLabel
        Left = 432
        Top = 48
        Width = 55
        Height = 13
        Caption = 'Nascimento'
      end
      object LblCargo: TLabel
        Left = 432
        Top = 114
        Width = 29
        Height = 13
        Caption = 'Cargo'
      end
      object Label5: TLabel
        Left = 3
        Top = 114
        Width = 39
        Height = 13
        Caption = 'Contato'
        FocusControl = EdtContato
      end
      object LblEmail: TLabel
        Left = 3
        Top = 184
        Width = 24
        Height = 13
        Caption = 'Email'
        FocusControl = EdtEmail
      end
      object TxtCodigo: TDBText
        Left = 3
        Top = 27
        Width = 65
        Height = 17
        DataField = 'CODIGO'
        DataSource = DtsFuncionarios
      end
      object LblSalarios: TLabel
        Left = 3
        Top = 244
        Width = 37
        Height = 13
        Caption = 'Sal'#225'rios'
        FocusControl = EdtEmail
      end
      object BtnConfirmar: TButton
        Left = 431
        Top = 352
        Width = 75
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 0
        OnClick = BtnConfirmarClick
      end
      object BtnCancelar: TButton
        Left = 533
        Top = 352
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = BtnCancelarClick
      end
      object EdtNome: TDBEdit
        Left = 2
        Top = 69
        Width = 334
        Height = 21
        DataField = 'NOME'
        DataSource = DtsFuncionarios
        TabOrder = 4
      end
      object EdtContato: TDBEdit
        Left = 3
        Top = 133
        Width = 334
        Height = 21
        DataField = 'CONTATO'
        DataSource = DtsFuncionarios
        TabOrder = 2
      end
      object EdtEmail: TDBEdit
        Left = 2
        Top = 203
        Width = 334
        Height = 21
        DataField = 'EMAIL'
        DataSource = DtsFuncionarios
        TabOrder = 5
      end
      object DtpNasc: TDateTimePicker
        Left = 430
        Top = 67
        Width = 187
        Height = 21
        Date = 44519.000000000000000000
        Time = 0.982635381944419400
        TabOrder = 1
      end
      object LcbCargo: TDBLookupComboBox
        Left = 430
        Top = 133
        Width = 187
        Height = 21
        DataField = 'CARGO'
        DataSource = DtsFuncionarios
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = DtsCargos
        TabOrder = 6
      end
      object DbgSalarios: TDBGrid
        Left = 3
        Top = 263
        Width = 334
        Height = 120
        DataSource = DtsSalarios
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object PnlSalario: TPanel
        Left = 431
        Top = 244
        Width = 204
        Height = 42
        BevelOuter = bvNone
        TabOrder = 8
        Visible = False
        object LblSalario: TLabel
          Left = 0
          Top = 0
          Width = 32
          Height = 13
          Caption = 'Salario'
        end
        object EdtSalario: TEdit
          Left = 0
          Top = 19
          Width = 193
          Height = 21
          TabOrder = 0
        end
      end
      object PnlAtivo: TPanel
        Left = 430
        Top = 170
        Width = 195
        Height = 54
        BevelOuter = bvNone
        TabOrder = 9
        Visible = False
        object Label1: TLabel
          Left = 1
          Top = 4
          Width = 25
          Height = 13
          Caption = 'Ativo'
        end
        object RgAtivo: TDBRadioGroup
          Left = 0
          Top = 23
          Width = 193
          Height = 30
          Columns = 2
          DataField = 'ATIVO'
          DataSource = DtsFuncionarios
          Items.Strings = (
            'Ativo'
            'Inativo')
          TabOrder = 0
          Values.Strings = (
            '1'
            '0')
        end
      end
    end
  end
  object QueryFuncionarios: TFDQuery
    OnCalcFields = QueryFuncionariosCalcFields
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIOS'
      'ORDER BY NOME ASC')
    Left = 132
    object QueryFuncionariosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryFuncionariosNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QueryFuncionariosAtivoDesc: TStringField
      DisplayLabel = 'Ativo'
      FieldKind = fkCalculated
      FieldName = 'AtivoDesc'
      Size = 10
      Calculated = True
    end
    object QueryFuncionariosEMAIL: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 20
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object QueryFuncionariosCONTATO: TStringField
      DisplayLabel = 'Contato'
      DisplayWidth = 15
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      EditMask = '!\(99\) 0 0000-0000;0;_'
      Size = 100
    end
    object QueryFuncionariosNASCIMENTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Nascimento'
      FieldName = 'NASCIMENTO'
      Origin = 'NASCIMENTO'
      Required = True
    end
    object QueryFuncionariosCARGO: TIntegerField
      DisplayLabel = 'Cargo'
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Required = True
      Visible = False
    end
    object QueryFuncionariosATIVO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      Visible = False
    end
  end
  object DtsFuncionarios: TDataSource
    DataSet = QueryFuncionarios
    Left = 132
    Top = 56
  end
  object QueryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM CARGOS')
    Left = 224
    object QueryCargosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryCargosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object DtsCargos: TDataSource
    DataSet = QueryCargos
    Left = 224
    Top = 56
  end
  object QuerySalarios: TFDQuery
    IndexFieldNames = 'COD_FUNCIONARIO'
    MasterSource = DtsFuncionarios
    MasterFields = 'CODIGO'
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIOS_SALARIOS'
      'ORDER BY DATA_HORA DESC')
    Left = 296
    object QuerySalariosDATA_HORA: TDateField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
      Required = True
    end
    object QuerySalariosCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COD_FUNCIONARIO'
      Required = True
    end
    object QuerySalariosSALARIO: TFMTBCDField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object DtsSalarios: TDataSource
    DataSet = QuerySalarios
    Left = 300
    Top = 56
  end
  object QueryAux: TFDQuery
    Connection = DM.Connection
    Left = 384
  end
end
