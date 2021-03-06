unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    StringGrid1: TStringGrid;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Adicionar, Editar;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I,J: Integer;
begin
  for I := 1 to StringGrid1.RowCount do
    if StringGrid1.Cells[0,I] = Edit1.Text then
      break;

  if StringGrid1.Cells[0,I] <> Edit1.Text then
    Exit;

  for J := I+1 to StringGrid1.RowCount do
  begin
    StringGrid1.Cells[0,J-1] := StringGrid1.Cells[0,J];
    StringGrid1.Cells[1,J-1] := StringGrid1.Cells[1,J];
    StringGrid1.Cells[2,J-1] := StringGrid1.Cells[2,J];
    StringGrid1.Cells[3,J-1] := StringGrid1.Cells[3,J];
  end;
  StringGrid1.RowCount := StringGrid1.RowCount-1;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Pos,ID: Integer;
  Nome,CPF,Tel: string;
begin
  Form2 := TForm2.Create(Nil);
  Form2.ShowModal;

  Nome := Form2.Edit1.Text;
  CPF := Form2.Edit2.Text;
  Tel := Form2.Edit3.Text;
  if (Nome = '') or (CPF = '') or (Tel = '') then
    raise Exception.Create('Preencha todos os campos.');

  Pos := StringGrid1.RowCount;
  StringGrid1.RowCount := StringGrid1.RowCount + 1;

  if Pos = 1 then
    ID := 1
  else
    ID := StrToInt(StringGrid1.Cells[0,Pos-1]) + 1;

  StringGrid1.Cells[0,Pos] := IntToStr(ID);
  StringGrid1.Cells[1,Pos] := Nome;
  StringGrid1.Cells[2,Pos] := CPF;
  StringGrid1.Cells[3,Pos] := Tel;

  Form2.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to StringGrid1.RowCount do
    if StringGrid1.Cells[0,I] = Edit1.Text then
      break;

  if StringGrid1.Cells[0,I] <> Edit1.Text then
    Exit;

  Form3 := TForm3.Create(Nil);
  Form3.Edit1.Text := StringGrid1.Cells[1,I];
  Form3.Edit2.Text := StringGrid1.Cells[2,I];
  Form3.Edit3.Text := StringGrid1.Cells[3,I];
  Form3.ShowModal;

  if Form3.Flag = True then
  begin
    StringGrid1.Cells[1,I] := Form3.Edit1.Text;
    StringGrid1.Cells[2,I] := Form3.Edit2.Text;
    StringGrid1.Cells[3,I] := Form3.Edit3.Text;
  end;

  Form3.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  StringGrid1.ColCount := 4;
  StringGrid1.Cells[0,0] := 'ID';
  StringGrid1.Cells[1,0] := 'Nome';
  StringGrid1.Cells[2,0] := 'CPF';
  StringGrid1.Cells[3,0] := 'Telefone';
end;

end.
