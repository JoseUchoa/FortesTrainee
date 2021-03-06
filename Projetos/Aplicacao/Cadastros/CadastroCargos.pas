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
    TsLista: TTabSheet;
    TsRegistro: TTabSheet;
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    QueryCargosCODIGO: TIntegerField;
    QueryCargosNOME: TStringField;
    LblCodigo: TLabel;
    LblNome: TLabel;
    EdtNome: TDBEdit;
    BtnConfirmar: TButton;
    BtnCancelar: TButton;
    BtnAdicionar: TButton;
    BtnEditar: TButton;
    BtnRemover: TButton;
    TxtCodigo: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
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
  PageControl.ActivePage := TsLista;
end;

procedure TFrmCadCargos.FormDestroy(Sender: TObject);
begin
  QueryCargos.Close;
end;

procedure TFrmCadCargos.PageControlChange(Sender: TObject);
begin
  if (PageControl.ActivePage = TsLista) and (QueryCargos.State in [dsInsert,dsEdit]) then
  begin
    QueryCargos.Cancel;
    QueryCargos.Refresh;
  end;
end;

procedure TFrmCadCargos.BtnAdicionarClick(Sender: TObject);
begin
  QueryCargos.Append;
  PageControl.ActivePage := TsRegistro;
end;

procedure TFrmCadCargos.BtnEditarClick(Sender: TObject);
begin
  if not QueryCargos.IsEmpty then
  begin
    QueryCargos.Edit;
    PageControl.ActivePage := TsRegistro;
  end;
end;

procedure TFrmCadCargos.BtnRemoverClick(Sender: TObject);
begin
  if not QueryCargos.IsEmpty then
    QueryCargos.Delete;
end;

procedure TFrmCadCargos.BtnConfirmarClick(Sender: TObject);
begin
  if QueryCargos.State = dsInsert then
    QueryCargosCODIGO.Value := 0;
  if QueryCargos.State in [dsInsert,dsEdit] then
  begin
    if EdtNome.Text = '' then
      raise Exception.Create('O cargo deve possuir um nome.');
    QueryCargos.Post;
  end;

  QueryCargos.Refresh;
  PageControl.ActivePage := TsLista;
end;

procedure TFrmCadCargos.BtnCancelarClick(Sender: TObject);
begin
  if QueryCargos.State in [dsInsert,dsEdit] then
    QueryCargos.Cancel;
  PageControl.ActivePage := TsLista;
end;

end.
