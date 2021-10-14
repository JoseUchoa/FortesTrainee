unit ValidaTriangulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function validarTriangulo(var A, B, C: Integer) : Bool;
begin
  Result := True;
  if A+B <= C then
    Result := False;
  if A+C <= B then
    Result := False;
  if B+C <= A then
    Result := False;
end;

procedure TForm1.Button1Click(Sender: TObject);
var ladoA, ladoB, ladoC: Integer;

begin
  TryStrToInt(Edit1.Text, ladoA);
  TryStrToInt(Edit2.Text, ladoB);
  TryStrToInt(Edit3.Text, ladoC);
  if validarTriangulo(ladoA,ladoB,ladoC) = False then
    showMessage('Triangulo Inválido')
  else if (ladoA = ladoB) and (ladoB = ladoC) then
    showMessage('Triangulo Equilatero')
  else if (ladoA = ladoB) or (ladoB = ladoC) or (ladoC = ladoA) then
    showMessage('Triangulo Isósceles')
  else
    showMessage('Triangulo Escaleno')


end;

end.
