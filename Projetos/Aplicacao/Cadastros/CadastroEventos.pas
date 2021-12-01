unit CadastroEventos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Conexao, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls;

type
  TFrmCadEventos = class(TForm)
    PageControl: TPageControl;
    TsLista: TTabSheet;
    DBGrid1: TDBGrid;
    BtnAdicionar: TButton;
    BtnEditar: TButton;
    BtnRemover: TButton;
    TsRegistro: TTabSheet;
    LblCodigo: TLabel;
    LblTipo: TLabel;
    TxtCodigo: TDBText;
    EdtDesc: TDBEdit;
    BtnConfirmar: TButton;
    BtnCancelar: TButton;
    QueryEventos: TFDQuery;
    DataSource: TDataSource;
    QueryEventosCODIGO: TIntegerField;
    QueryEventosTIPO: TIntegerField;
    QueryEventosDESCRICAO: TStringField;
    RgTipo: TDBRadioGroup;
    LblDesc: TLabel;
    QueryEventosTipoDesc: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QueryEventosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadEventos: TFrmCadEventos;

implementation

{$R *.dfm}
procedure TFrmCadEventos.FormCreate(Sender: TObject);
begin
  QueryEventos.Open;
  PageControl.ActivePage := TsLista;
end;

procedure TFrmCadEventos.FormDestroy(Sender: TObject);
begin
  QueryEventos.Close;
end;

procedure TFrmCadEventos.PageControlChange(Sender: TObject);
begin
  if (PageControl.ActivePage = TsLista) and (QueryEventos.State in [dsInsert,dsEdit]) then
  begin
    QueryEventos.Cancel;
    QueryEventos.Refresh;
  end;
end;

procedure TFrmCadEventos.QueryEventosCalcFields(DataSet: TDataSet);
begin
  QueryEventosTipoDesc.Value := 'Desconto';
  if QueryEventosTIPO.AsInteger = 1 then
    QueryEventosTipoDesc.Value  := 'Acrescimo';
end;

procedure TFrmCadEventos.BtnAdicionarClick(Sender: TObject);
begin
  QueryEventos.Append;
  QueryEventosTIPO.Value := 1;
  PageControl.ActivePage := TsRegistro;
end;

procedure TFrmCadEventos.BtnEditarClick(Sender: TObject);
begin
  if not QueryEventos.IsEmpty then
  begin
    QueryEventos.Edit;
    PageControl.ActivePage := TsRegistro;
  end;
end;

procedure TFrmCadEventos.BtnRemoverClick(Sender: TObject);
begin
  if not QueryEventos.IsEmpty then
    QueryEventos.Delete;
end;

procedure TFrmCadEventos.BtnConfirmarClick(Sender: TObject);
begin
  if QueryEventos.State = dsInsert then
    QueryEventosCODIGO.Value := 0;

  if QueryEventos.State in [dsInsert,dsEdit] then
    QueryEventos.Post;

  QueryEventos.Refresh;
  PageControl.ActivePage := TsLista;
end;

procedure TFrmCadEventos.BtnCancelarClick(Sender: TObject);
begin
  if QueryEventos.State in [dsInsert,dsEdit] then
    QueryEventos.Cancel;
  PageControl.ActivePage := TsLista;
end;

end.
