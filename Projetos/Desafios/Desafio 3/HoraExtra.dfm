object HorasExtras: THorasExtras
  Left = 0
  Top = 0
  Caption = 'HorasExtras'
  ClientHeight = 238
  ClientWidth = 493
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
    493
    238)
  PixelsPerInch = 96
  TextHeight = 13
  object PgControl: TPageControl
    Left = 8
    Top = 8
    Width = 477
    Height = 222
    ActivePage = Registro
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChange = PgControlChange
    ExplicitWidth = 509
    object Registro: TTabSheet
      Caption = 'Registro'
      object LblData: TLabel
        Left = 16
        Top = 71
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object LblFeriado: TLabel
        Left = 16
        Top = 132
        Width = 50
        Height = 13
        Caption = #201' Feriado?'
      end
      object LblCodigo1: TLabel
        Left = 16
        Top = 13
        Width = 106
        Height = 13
        Caption = 'C'#243'digo do Funcionario'
      end
      object LblHoras: TLabel
        Left = 179
        Top = 13
        Width = 110
        Height = 13
        Caption = 'Horas Extras (Minutos)'
      end
      object DtPicker: TDateTimePicker
        Left = 16
        Top = 90
        Width = 121
        Height = 21
        Date = 44567.000000000000000000
        Time = 0.719767349539324600
        TabOrder = 0
      end
      object RgFeriado: TRadioGroup
        Left = 16
        Top = 151
        Width = 121
        Height = 33
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 1
      end
      object EdtCodigo: TEdit
        Left = 16
        Top = 32
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 2
      end
      object EdtHoras: TEdit
        Left = 179
        Top = 32
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 3
      end
      object BtnRegistrar: TButton
        Left = 179
        Top = 151
        Width = 121
        Height = 25
        Caption = 'Registrar'
        TabOrder = 4
        OnClick = BtnRegistrarClick
      end
    end
    object Consulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      DesignSize = (
        469
        194)
      object LblCodigo2: TLabel
        Left = 335
        Top = 5
        Width = 106
        Height = 13
        Caption = 'C'#243'digo do Funcionario'
      end
      object MemoConsulta: TMemo
        Left = 6
        Top = 3
        Width = 309
        Height = 189
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          '')
        ScrollBars = ssVertical
        TabOrder = 0
        ExplicitWidth = 312
      end
      object CbCodigo: TComboBox
        Left = 335
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'CbCodigo'
      end
      object BtnConsulta: TButton
        Left = 335
        Top = 166
        Width = 121
        Height = 25
        Caption = 'Consultar'
        TabOrder = 2
        OnClick = BtnConsultaClick
      end
    end
  end
end
