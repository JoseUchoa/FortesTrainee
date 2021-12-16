unit RelFolhaDePagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, Vcl.StdCtrls,Conexao;

type
  TFrmRelFolhaDePagamentos = class(TForm)
    DtsLista: TDataSource;
    QryLista: TFDQuery;
    RLFolhaDePagamentos: TRLReport;
    RLBand1: TRLBand;
    LblFuncionarios: TRLLabel;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLBand3: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirRelatorio(MesAno: string);
  end;

var
  FrmRelFolhaDePagamentos: TFrmRelFolhaDePagamentos;

implementation

{$R *.dfm}


procedure TFrmRelFolhaDePagamentos.AbrirRelatorio(MesAno: string);
begin
  QryLista.Close;
  QryLista.SQL.Text :=
    'SELECT F.NOME, FP.DESCONTO_INSS, FP.DESCONTO_IRRF, FP.SALDO_EVENTOS, FP.SALARIO_BRUTO, FP.SALARIO_LIQUIDO FROM FOLHAS FP ' +
    'INNER JOIN FUNCIONARIOS F ON F.CODIGO = FP.COD_FUNCIONARIO ' +
    'WHERE MES_ANO = ' + QuotedStr(MesAno);
  QryLista.Open;

  if not QryLista.IsEmpty then
    RLFolhaDePagamentos.PreviewModal
  else
    ShowMessage('Nenhum dado encontrado.');
end;

procedure TFrmRelFolhaDePagamentos.FormCreate(Sender: TObject);
begin
  QryLista.Open;
end;

procedure TFrmRelFolhaDePagamentos.FormDestroy(Sender: TObject);
begin
  QryLista.Close;
end;

end.
