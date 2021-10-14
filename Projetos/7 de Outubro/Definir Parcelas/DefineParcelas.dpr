program DefineParcelas;

uses
  Vcl.Forms,
  Parcelas in 'Parcelas.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
