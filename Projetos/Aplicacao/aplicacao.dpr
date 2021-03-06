program aplicacao;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Conexao in 'Conexao.pas' {DM: TDataModule},
  CadastroCargos in 'Cadastros\CadastroCargos.pas' {FrmCadCargos},
  CadastroEventos in 'Cadastros\CadastroEventos.pas' {FrmCadEventos},
  CadastroFuncionarios in 'Cadastros\CadastroFuncionarios.pas' {FrmCadFuncionarios},
  ProcLancarEventos in 'Processos\ProcLancarEventos.pas' {FrmLancarEventos},
  ProcMudarSalarios in 'Processos\ProcMudarSalarios.pas' {FrmMudarSalarios},
  ProcFolhaDePagamentos in 'Processos\ProcFolhaDePagamentos.pas' {FrmFolhaDePagamentos},
  CalcINSS in 'Calculos\CalcINSS.pas',
  RelFuncionarios in 'Relatorios\RelFuncionarios.pas' {FrmRelFuncionarios},
  RelFuncionariosCfg in 'Relatorios\RelFuncionariosCfg.pas' {FrmRelFuncionariosCFG},
  CalcIRRF in 'Calculos\CalcIRRF.pas',
  RelFolhaDePagamentos in 'Relatorios\RelFolhaDePagamentos.pas' {FrmRelFolhaDePagamentos},
  RelFolhaDePagamentosCfg in 'Relatorios\RelFolhaDePagamentosCfg.pas' {FrmFolhaDePagamentosCfg};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFrmCadCargos, FrmCadCargos);
  Application.Run;
end.
