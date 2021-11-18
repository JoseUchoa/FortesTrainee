program AtividadeOnibus;

uses
  Vcl.Forms,
  Onibus in 'Onibus.pas' {Form1},
  PneuClass in 'PneuClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
