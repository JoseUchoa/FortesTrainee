unit Criptografia;

interface

implementation

uses
  System.Character;

function Criptografar(const Texto: string): string;
var
  Str: string;
  C: Char;
  I,J: Integer;
begin
  Str := '';
  for C in Texto do
    if C.IsSeparator then
      Str := Str + '@'
    else
      Str := Str + C;

  while (length(Str) <= 12) or (length(Str) mod 8 <> 0) do
    Str := Str + '@';

  Result := '';
  for I := 1 to 8 do
  begin
    J := 0;
    while I+J <= length(Str) do
    begin
      Result := Result + Str[J+I];
      J := J + 8;
    end;
  end;
end;

end.
