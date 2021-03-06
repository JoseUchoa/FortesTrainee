unit Saque;

interface

function Sacar(Valor: Integer): string;

implementation

uses
  SysUtils;

function Sacar(Valor: Integer): string;
const
  Notas: array of Integer = [100, 50, 20, 10, 5, 2];
var
  I: Integer;

begin
  Result := '';
  if (Valor <= 3) then
    Exit;

  for I in Notas do
  begin
    while Valor >= I do
    begin
      if (Valor - I = 1) or (Valor - I = 3) then
        break;
      Valor := Valor - I;
      Result := Result + IntToStr(I) + ',';
    end;
  end;
  delete(Result,length(Result),1);
end;

end.
