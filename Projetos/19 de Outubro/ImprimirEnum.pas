unit ImprimirEnum;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
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

type
  TCores = (Azul, Amarelo, Vermelho, Verde, Ciano, Magenta, Marrom, Roxo);


procedure TForm1.Button1Click(Sender: TObject);
const
  TCoresNomes: array[TCores] of string = ('Azul','Amarelo','Vermelho','Verde','Ciano','Magenta','Marrom', 'Roxo');

var
  SCores: set of TCores;
  SCor: TCores;

begin
  SCores := [Ciano, Verde, Roxo, Vermelho, Amarelo];
  Memo1.clear;
  for SCor in SCores do
    Memo1.Lines.Add(TCoresNomes[SCor]);



end;

end.
