program GerenciaCliente;

uses
  Vcl.Forms,
  FormPrincipal in 'FormPrincipal.pas' {Form1},
  Adicionar in 'Adicionar.pas' {Form2},
  Editar in 'Editar.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
