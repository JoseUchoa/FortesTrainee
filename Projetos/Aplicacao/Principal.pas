unit Principal;
{
Requisitos: Criar um sistema para calcular a folha de pagamentos de uma empresa.
	- Cadastro de cargos: c�digo e nome.
	- Cadastro de eventos: c�digo, descri��o, tipo (desconto/acr�scimo).
	- Tabela de INSS.
	- Tabela de IRRF.
	- Cadastro de funcion�rios: c�digo, nome, data de nascimento, cargo, contato, e-mail, ativo.
	  * O cadastro de funcion�rios deve manter o hist�rico de sal�rios do empredado.
	- Registrar mudan�a de sal�rio
	- Lan�ar evento para funcion�rio(s)
	- Tela de processamento de folha: calcular/recalcular folha de pagamentos para um m�s informado.
		* Consultar dados dos funcion�rios ativos
		* Calcular INSS
		* Calcular IRRF
		* Verificar Eventos para o m�s
	- Relat�rio de folha de pagamento.
	- Relat�rio de empregados.
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    as1: TMenuItem;
    Cargos: TMenuItem;
    Eventos: TMenuItem;
    Funcionarios: TMenuItem;
    Funcionrios2: TMenuItem;
    Processos1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    abeladeINSS1: TMenuItem;
    abeladeIRRF1: TMenuItem;
    N1: TMenuItem;
    Sair2: TMenuItem;
    MudanadeSalrios1: TMenuItem;
    MudanadeSalrios2: TMenuItem;
    Folhadepagamento1: TMenuItem;
    Folhadepagamento2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CargosClick(Sender: TObject);
    procedure EventosClick(Sender: TObject);
    procedure FuncionariosClick(Sender: TObject);
    procedure MudanadeSalrios2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  Conexao, CadastroCargos, CadastroEventos, CadastroFuncionarios,
  ProcLancarEventos;

{$R *.dfm}

procedure TFormPrincipal.CargosClick(Sender: TObject);
begin
  FrmCadCargos := TFrmCadCargos.Create(Self);
  FrmCadCargos.ShowModal;
  FrmCadCargos.Free;
end;

procedure TFormPrincipal.EventosClick(Sender: TObject);
begin
  FrmCadEventos := TFrmCadEventos.Create(Self);
  FrmCadEventos.ShowModal;
  FrmCadEventos.Free;

end;

procedure TFormPrincipal.FuncionariosClick(Sender: TObject);
begin
  FrmCadFuncionarios := TFrmCadFuncionarios.Create(Self);
  FrmCadFuncionarios.ShowModal;
  FrmCadFuncionarios.Free;

end;

procedure TFormPrincipal.MudanadeSalrios2Click(Sender: TObject);
begin
  FrmLancarEventos := TFrmLancarEventos.Create(Self);
  FrmLancarEventos.ShowModal;
  FrmLancarEventos.Free;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(Self);
end;

procedure TFormPrincipal.FormDestroy(Sender: TObject);
begin
  DM.Free;
end;


end.