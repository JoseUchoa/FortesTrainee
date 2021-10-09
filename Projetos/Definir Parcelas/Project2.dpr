program Project2;

uses
  Vcl.Forms,
  Parcelas in 'H:\Projetos\Parcelas.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
