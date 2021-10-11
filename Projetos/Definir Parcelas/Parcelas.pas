unit Parcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Math, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    StaticText2: TStaticText;
    Edit1: TEdit;
    Memo1: TMemo;
    Edit2: TEdit;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function ValidaTEdit(Edit1,Edit2: TEdit) : Byte;
begin
  Result := 1;
  if Edit1.Text = '' then
    begin
      ShowMessage('Campo de valor não pode estar vazio');
      Result := 0;
    end;
  if Edit2.Text = '' then
    begin
      ShowMessage('Campo de parcelas não pode estar vazio');
      Result := 0;
    end;
end;

procedure TForm2.Button1Click(Sender: TObject);
var Val,Res,Dif: Currency;
var Parc: Integer;
begin
  if ValidaTEdit(Edit1, Edit2) = 0 then
    Exit;

  Val := StrToCurr(Edit1.Text);
  Val := RoundTo(Val, -2);
  Parc := StrToInt(Edit2.Text);
  Res := RoundTo(Val / Parc, -2);

  Memo1.Clear;
  if Parc * Res = Val then
    begin
      Memo1.Lines.Add(IntToStr(Parc) + ' Parcelas de ' + CurrToStr(Res));
    end
  else
    begin
      Dif := Val - Res*Parc;
      Memo1.Lines.Add(IntToStr(Parc-1) + ' Parcelas de ' + CurrToStr(Res));
      Memo1.Lines.Add('1 Parcelas de ' + CurrToStr(Res + Dif));
    end;


end;

end.
