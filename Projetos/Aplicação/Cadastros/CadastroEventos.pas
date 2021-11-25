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
    Lista: TTabSheet;
    DBGrid1: TDBGrid;
    Adicionar: TButton;
    Editar: TButton;
    Remover: TButton;
    Registro: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBEdit2: TDBEdit;
    Confirmar: TButton;
    Cancelar: TButton;
    QueryEventos: TFDQuery;
    DataSource: TDataSource;
    QueryEventosCODIGO: TIntegerField;
    QueryEventosTIPO: TIntegerField;
    QueryEventosDESCRICAO: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    Label3: TLabel;
    QueryEventosTipoDesc: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdicionarClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure RemoverClick(Sender: TObject);
    procedure ConfirmarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
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
end;

procedure TFrmCadEventos.FormDestroy(Sender: TObject);
begin
  QueryEventos.Close;
end;

procedure TFrmCadEventos.PageControlChange(Sender: TObject);
begin
  if (PageControl.ActivePage = Lista) and (QueryEventos.State in [dsInsert,dsEdit]) then
  begin
    QueryEventos.Cancel;
    QueryEventos.Refresh;
  end;
end;

procedure TFrmCadEventos.QueryEventosCalcFields(DataSet: TDataSet);
begin
  QueryEventosTipoDesc.Value := 'Decrescimo';
  if QueryEventosTIPO.AsInteger = 1 then
    QueryEventosTipoDesc.Value  := 'Acrescimo';
end;

procedure TFrmCadEventos.AdicionarClick(Sender: TObject);
begin
  QueryEventos.Append;
  QueryEventosTIPO.Value := 1;
  PageControl.ActivePage := Registro;
end;

procedure TFrmCadEventos.EditarClick(Sender: TObject);
begin
  if not QueryEventos.IsEmpty then
  begin
    QueryEventos.Edit;
    PageControl.ActivePage := Registro;
  end;
end;

procedure TFrmCadEventos.RemoverClick(Sender: TObject);
begin
  if not QueryEventos.IsEmpty then
    QueryEventos.Delete;
end;

procedure TFrmCadEventos.ConfirmarClick(Sender: TObject);
begin
  if QueryEventos.State = dsInsert then
    QueryEventosCODIGO.Value := 0;

  if QueryEventos.State in [dsInsert,dsEdit] then
    QueryEventos.Post;

  QueryEventos.Refresh;
  PageControl.ActivePage := Lista;
end;

procedure TFrmCadEventos.CancelarClick(Sender: TObject);
begin
  if QueryEventos.State in [dsInsert,dsEdit] then
    QueryEventos.Cancel;
  PageControl.ActivePage := Lista;
end;

end.
