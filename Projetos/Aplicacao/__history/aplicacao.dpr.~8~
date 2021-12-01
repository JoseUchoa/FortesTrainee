program aplicacao;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Conexao in 'Conexao.pas' {DM: TDataModule},
  CadastroCargos in 'Cadastros\CadastroCargos.pas' {FrmCadCargos},
  CadastroEventos in 'Cadastros\CadastroEventos.pas' {FrmCadEventos},
  CadastroFuncionarios in 'Cadastros\CadastroFuncionarios.pas' {FrmCadFuncionarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFrmCadCargos, FrmCadCargos);
  Application.Run;
end.
