unit CalcIRRF;

interface

type TIrrf = class
  class function Calc(Salario: Currency): Currency;
end;

implementation

uses
  SysUtils;

class function TIrrf.Calc(Salario: Currency): Currency;
begin
  Result := 0;
  if Salario <= 0 then
    raise Exception.Create('Salários deve ser maior que zero.');

  if Salario > 4664.69 then
    Result := Salario * 0.275
  else if Salario > 3751.06 then
    Result := Salario * 0.225
  else if Salario > 2826.66 then
    Result := Salario * 0.15
  else if Salario > 1903.98 then
    Result := Salario * 0.075
end;

end.
