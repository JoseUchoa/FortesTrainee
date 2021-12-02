unit ProcMudarSalarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask;

type
  TFrmMudarSalarios = class(TForm)
    LblMesAno: TLabel;
    LblFuncionarios: TLabel;
    LblCargos: TLabel;
    LblPercentual: TLabel;
    EdtMesAno: TMaskEdit;
    LcbCargos: TDBLookupComboBox;
    LcbFuncionarios: TDBLookupComboBox;
    BtnConfirmar: TButton;
    BtnCancelar: TButton;
    EdtValor: TEdit;
    DtsFuncionarios: TDataSource;
    DtsCargos: TDataSource;
    QryFuncionarios: TFDQuery;
    QryFuncionariosCODIGO: TIntegerField;
    QryFuncionariosNOME: TStringField;
    QryCargos: TFDQuery;
    QryCargosCODIGO: TIntegerField;
    QryCargosNOME: TStringField;
    QryFuncionariosSelecionados: TFDQuery;
    QryAux: TFDQuery;
    procedure LcbCargosClick(Sender: TObject);
    procedure LcbFuncionariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMudarSalarios: TFrmMudarSalarios;

implementation

{$R *.dfm}

procedure TFrmMudarSalarios.FormCreate(Sender: TObject);
begin
  QryCargos.Open;
  QryFuncionarios.Open;
end;

procedure TFrmMudarSalarios.FormDestroy(Sender: TObject);
begin
  QryCargos.Close;
  QryFuncionarios.Close;
end;

procedure TFrmMudarSalarios.LcbCargosClick(Sender: TObject);
begin
  LcbFuncionarios.KeyValue := Null;
end;

procedure TFrmMudarSalarios.LcbFuncionariosClick(Sender: TObject);
begin
  LcbCargos.KeyValue := Null;
end;

end.
