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

  if Salario >= 4664.69 then
  begin
    Result := Salario * 0.275;
    Result := Abs(Result - 869.36);
  end
  else if Salario >= 3751.06 then
  begin
    Result := Salario * 0.225;
    Result := Abs(Result - 636.13);
  end
  else if Salario >= 2826.66 then
  begin
    Result := Salario * 0.15;
    Result := Abs(Result - 354.80);
  end
  else if Salario >= 1903.99 then
  begin
    Result := Salario * 0.075;
    Result := Abs(Result - 142.80);
  end
end;

end.
