program aplicacaoHoraExtra;

uses
  Vcl.Forms,
  HoraExtra in 'HoraExtra.pas' {HorasExtras};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(THorasExtras, HorasExtras);
  Application.Run;
end.
