unit RelFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,Conexao, Vcl.StdCtrls;

type
  TFrmRelFuncionarios = class(TForm)
    RLFuncionarios1: TRLReport;
    DtsLista: TDataSource;
    QryLista: TFDQuery;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    LblCodigo: TRLLabel;
    LblNome: TRLLabel;
    LblCargo: TRLLabel;
    LblFuncionarios: TRLLabel;
    LblContato: TLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLFuncionarios2: TRLReport;
    RLBand4: TRLBand;
    RLLabel4: TRLLabel;
    RLBand6: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand7: TRLBand;
    RLBand8: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirRelatorio(CodCargo: Integer = 0);
  end;

var
  FrmRelFuncionarios: TFrmRelFuncionarios;

implementation

uses
  StrUtils;
{$R *.dfm}

procedure TFrmRelFuncionarios.AbrirRelatorio(CodCargo: Integer);
begin
  QryLista.Close;
  QryLista.SQL.Text :=
    'SELECT F.CODIGO, F.NOME, F.CONTATO, C.NOME AS CARGO ' +
    'FROM FUNCIONARIOS F ' +
    'LEFT JOIN CARGOS C ON(C.CODIGO = F.CARGO) ' +
    IfThen(CodCargo >= 0, 'WHERE F.CARGO = ' + IntToStr(CodCargo)) + ' ' +
    'ORDER BY C.NOME, F.CODIGO';
  QryLista.Open;

  if not QryLista.IsEmpty then
    RLFuncionarios1.PreviewModal
  else
    ShowMessage('Nenhum dado encontrado.');
end;

procedure TFrmRelFuncionarios.FormCreate(Sender: TObject);
begin
  QryLista.Open;
end;

procedure TFrmRelFuncionarios.FormDestroy(Sender: TObject);
begin
  QryLista.Close;
end;

end.
