unit RelFuncionariosCfg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Conexao , RelFuncionarios;

type
  TFrmRelFuncionariosCFG = class(TForm)
    QryCargos: TFDQuery;
    QryCargosCODIGO: TIntegerField;
    QryCargosNOME: TStringField;
    DtsCargos: TDataSource;
    LcbCargos: TDBLookupComboBox;
    LblCargos: TLabel;
    BtnVisualizar: TButton;
    BtnCancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  FrmRelFuncionariosCFG: TFrmRelFuncionariosCFG;

implementation

{$R *.dfm}

procedure TFrmRelFuncionariosCFG.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelFuncionariosCFG.BtnVisualizarClick(Sender: TObject);
var
  CodCargo: Integer;
begin
  CodCargo := StrToIntDef(VarToStr(LcbCargos.KeyValue),-1);
  FrmRelFuncionarios := TFrmRelFuncionarios.Create(Self);
  FrmRelFuncionarios.AbrirRelatorio(CodCargo);
  FrmRelFuncionarios.Free;
end;

procedure TFrmRelFuncionariosCFG.FormCreate(Sender: TObject);
begin
  QryCargos.Open;
end;

procedure TFrmRelFuncionariosCFG.FormDestroy(Sender: TObject);
begin
  QryCargos.Close;
end;

end.
