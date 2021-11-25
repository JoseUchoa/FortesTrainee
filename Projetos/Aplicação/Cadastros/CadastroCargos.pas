unit CadastroCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, Conexao, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmCadCargos = class(TForm)
    QueryCargos: TFDQuery;
    PageControl: TPageControl;
    Lista: TTabSheet;
    Registro: TTabSheet;
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    QueryCargosCODIGO: TIntegerField;
    QueryCargosNOME: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Confirmar: TButton;
    Cancelar: TButton;
    Adicionar: TButton;
    Editar: TButton;
    Remover: TButton;
    DBText1: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure AdicionarClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure RemoverClick(Sender: TObject);
    procedure ConfirmarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCargos: TFrmCadCargos;

implementation

{$R *.dfm}
procedure TFrmCadCargos.FormCreate(Sender: TObject);
begin
  QueryCargos.Open;
end;

procedure TFrmCadCargos.FormDestroy(Sender: TObject);
begin
  QueryCargos.Close;
end;

procedure TFrmCadCargos.PageControlChange(Sender: TObject);
begin
  if (PageControl.ActivePage = Lista) and (QueryCargos.State in [dsInsert,dsEdit]) then
  begin
    QueryCargos.Cancel;
    QueryCargos.Refresh;
  end;
end;

procedure TFrmCadCargos.AdicionarClick(Sender: TObject);
begin
  QueryCargos.Append;
  PageControl.ActivePage := Registro;
end;

procedure TFrmCadCargos.EditarClick(Sender: TObject);
begin
  if not QueryCargos.IsEmpty then
  begin
    QueryCargos.Edit;
    PageControl.ActivePage := Registro;
  end;
end;

procedure TFrmCadCargos.RemoverClick(Sender: TObject);
begin
  if not QueryCargos.IsEmpty then
    QueryCargos.Delete;
end;

procedure TFrmCadCargos.ConfirmarClick(Sender: TObject);
begin
  if QueryCargos.State = dsInsert then
    QueryCargosCODIGO.Value := 0;
  if QueryCargos.State in [dsInsert,dsEdit] then
    QueryCargos.Post;

  QueryCargos.Refresh;
  PageControl.ActivePage := Lista;
end;

procedure TFrmCadCargos.CancelarClick(Sender: TObject);
begin
  if QueryCargos.State in [dsInsert,dsEdit] then
    QueryCargos.Cancel;
  PageControl.ActivePage := Lista;
end;

end.
