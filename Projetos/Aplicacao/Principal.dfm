object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 231
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 88
    Top = 40
    object as1: TMenuItem
      Caption = 'Cadastros'
      object Cargos: TMenuItem
        Caption = 'Cargos'
        OnClick = CargosClick
      end
      object Eventos: TMenuItem
        Caption = 'Eventos'
        OnClick = EventosClick
      end
      object Funcionarios: TMenuItem
        Caption = 'Funcion'#225'rios'
        OnClick = FuncionariosClick
      end
      object Funcionrios2: TMenuItem
        Caption = '-'
      end
      object abeladeINSS1: TMenuItem
        Caption = 'Tabela de INSS'
      end
      object abeladeIRRF1: TMenuItem
        Caption = 'Tabela de IRRF'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair2: TMenuItem
        Caption = 'Sair'
      end
    end
    object Processos1: TMenuItem
      Caption = 'Processos'
      object MudanadeSalrios1: TMenuItem
        Caption = 'Mudan'#231'a de sal'#225'rio(s)'
      end
      object MudanadeSalrios2: TMenuItem
        Caption = 'Lan'#231'ar evento para funcionario(s)'
        OnClick = MudanadeSalrios2Click
      end
      object Folhadepagamento1: TMenuItem
        Caption = 'Folha de pagamento'
      end
      object Folhadepagamento2: TMenuItem
        Caption = 'Folha de pagamento'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end