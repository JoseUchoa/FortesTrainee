unit classeConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Conta = class
    private
      FSaldo: Currency;
    public
      constructor Create;
      function Saque(var Valor: Currency): Currency; virtual;
      function Deposito(var Valor: Currency): Bool; virtual;
      function Consulta: Currency; virtual;
  end;

  ContaCorrente = class(Conta)
    public
      function Saque(var Valor: Currency): Currency; override;
  end;

  ContaPoupanca = class(Conta)
    public
      function Saque(var Valor: Currency): Currency; override;
      function Deposito(var Valor: Currency): Bool; override;
  end;

  TForm1 = class(TForm)
    Limpa: TButton;
    RadioGroup1: TRadioGroup;
    Memo: TMemo;
    Edit1: TEdit;
    Saque: TButton;
    Deposito: TButton;
    Consulta: TButton;
    procedure LimpaClick(Sender: TObject);
    procedure ConsultaClick(Sender: TObject);
    procedure SaqueClick(Sender: TObject);
    procedure DepositoClick(Sender: TObject);
  private
    FConta: Conta;
    FContaCorrente: ContaCorrente;
    FContaPoupanca: ContaPoupanca;
  public
    procedure CriaContas;
  end;
var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Conta }
constructor Conta.Create;
begin
  FSaldo := 0;
end;

function Conta.Saque(var Valor: Currency): Currency;
begin
  if FSaldo >= Valor then
  begin
    FSaldo := FSaldo - Valor;
    Result := Valor;
  end
  else
    Result := 0;
end;

function Conta.Deposito(var Valor: Currency): Bool;
begin
  FSaldo := FSaldo + Valor;
  Result := True;
end;

function Conta.Consulta: Currency;

begin
  Result := FSaldo;
end;

{ ContaCorrente }

function ContaCorrente.Saque(var Valor: Currency): Currency;
begin
   Result := inherited;
   if Valor > 1000 then
    Result := 0;

   Result := Result - (Result / 100);
end;

{ ContaPoupanca }

function ContaPoupanca.Saque(var Valor: Currency): Currency;
begin
  Result := inherited;
  if Valor >= 500 then
    Result := 0;
end;

function ContaPoupanca.Deposito(var Valor: Currency): Bool;
begin
   if Valor < 200 then
    Result := False
   else
    Result := inherited;
end;

{ TForm1 }
procedure TForm1.LimpaClick(Sender: TObject);
begin
  CriaContas;
  Memo.Clear;
end;

procedure TForm1.SaqueClick(Sender: TObject);
var Valor: Currency;
begin
  CriaContas;
  Valor := StrToCurr(Edit1.Text);
  if RadioGroup1.ItemIndex = 0 then
    Memo.Lines.Add( 'Conta: Saque retornou =' + FloatToStr( FConta.Saque(Valor) ) );
  if RadioGroup1.ItemIndex = 1 then
    Memo.Lines.Add( 'Conta Corrente: Saque retornou =' + FloatToStr( FContaCorrente.Saque(Valor) ) );
  if RadioGroup1.ItemIndex = 2 then
    Memo.Lines.Add( 'Conta Poupanca: Saque retornou =' + FloatToStr( FContaPoupanca.Saque(Valor) ) );
end;

procedure TForm1.ConsultaClick(Sender: TObject);
begin
  CriaContas;
  if RadioGroup1.ItemIndex = 0 then
    Memo.Lines.Add('Conta: ' + FloatToStr(FConta.Consulta));
  if RadioGroup1.ItemIndex = 1 then
    Memo.Lines.Add('Conta Corrente: ' + FloatToStr(FContaCorrente.Consulta));
  if RadioGroup1.ItemIndex = 2 then
    Memo.Lines.Add('Conta Poupanca: ' + FloatToStr(FContaPoupanca.Consulta));
end;

procedure TForm1.CriaContas;
begin
  if not Assigned(FConta) then
    FConta := Conta.Create;
  if not Assigned(FContaCorrente) then
    FContaCorrente := ContaCorrente.Create;
  if not Assigned(FContaPoupanca) then
    FContaPoupanca := ContaPoupanca.Create;
end;

procedure TForm1.DepositoClick(Sender: TObject);
var Valor: Currency;
begin
  CriaContas;
  Valor := StrToCurr(Edit1.Text);
  if RadioGroup1.ItemIndex = 0 then
  begin
    if FConta.Deposito(Valor) then
      Memo.Lines.Add('Conta: Deposito de '+ CurrToStr(Valor))
    else
      Memo.Lines.Add('Conta: Deposito falhou');
  end;

  if RadioGroup1.ItemIndex = 1 then
  begin
    if FContaCorrente.Deposito(Valor) then
      Memo.Lines.Add('Conta Corrente: Deposito de '+ CurrToStr(Valor))
    else
      Memo.Lines.Add('Conta Corrente: Deposito falhou');
  end;

  if RadioGroup1.ItemIndex = 2 then
  begin
    if FContaPoupanca.Deposito(Valor) then
      Memo.Lines.Add('Conta Poupanca: Deposito de '+ CurrToStr(Valor))
    else
      Memo.Lines.Add('Conta Poupanca: Deposito falhou, deposito minimo de 200 reais');
  end;

end;

end.
